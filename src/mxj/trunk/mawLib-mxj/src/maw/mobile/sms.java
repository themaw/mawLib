package maw.mobile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.smslib.AGateway;
import org.smslib.AGateway.GatewayStatuses;
import org.smslib.AGateway.Protocols;
import org.smslib.GatewayException;
import org.smslib.ICallNotification;
import org.smslib.IGatewayStatusNotification;
import org.smslib.IInboundMessageNotification;
import org.smslib.InboundMessage;
import org.smslib.Message.MessageTypes;
import org.smslib.OutboundMessage;
import org.smslib.SMSLibException;
import org.smslib.Service;
import org.smslib.TimeoutException;
import org.smslib.modem.MaxSerialInputStream;
import org.smslib.modem.MaxSerialModemGateway;
import org.smslib.modem.MaxSerialOutputStream;
import org.smslib.modem.MaxSerialReadable;
import org.smslib.modem.MaxSerialWritable;

import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class sms extends MaxObject implements MaxSerialWritable, MaxSerialReadable,
        IInboundMessageNotification, ICallNotification, IGatewayStatusNotification {

    int ringId = 0; // arbitrary

    MaxSerialInputStream in;
    MaxSerialOutputStream out;

    // outgoing messages
    List<OutboundMessage> msgList = new ArrayList<OutboundMessage>();

    private String phoneMake = "Motorola";
    private String phoneModel = "L6i";

    private String gatewayName = "mobile";
    private String protocol = "PDU"; // PDU or TEXT
    private String pin = "0000";//

    private boolean deleteAfterProcessing = false;
    private boolean maskIMSI = true;
    private boolean updateBattery = true;
    private boolean updateSignal = true;

    ServerThread dit;

    // logging

    Logger logger;
    Level logLevel;

    MaxObject serial;

    public sms(Atom[] args) { // service type should always be in here ...
        setName("maw.mobile.sms"); // so the other objects can find

        logger = Logger.getLogger(this.getName());
        logger.setLevel(logLevel);

        declareInlets(new int[] { DataTypes.LIST, DataTypes.LIST });
        declareOutlets(new int[] { DataTypes.LIST, DataTypes.ANYTHING });

        setInletAssist(new String[] { "setup the sms object",
                "communication with the serial object" });
        setOutletAssist(new String[] { "incoming sms messages",
                "communication with the serial object" });

        declareAttribute("protocol");
        declareAttribute("pin");
        declareAttribute("phoneMake", "getPhoneMake", "setPhoneMake");
        declareAttribute("phoneModel", "getPhoneModel", "setPhoneModel");

        declareAttribute("loglevel", "getLogLevel", "setLogLevel");

        declareAttribute("deleteAfterProcessing");
        declareAttribute("maskIMSI");
        declareAttribute("updateBattery");
        declareAttribute("updateSignal");

        in = new MaxSerialInputStream(this);
        out = new MaxSerialOutputStream(this); // holla back
        dit = new ServerThread(this); // will capture logger from parent

        // serial = new MaxObject("serial");

        // readSerialIn();
    }

    public void send(String myRecipient, String text) {
        OutboundMessage ob = new OutboundMessage(myRecipient, text);
        msgList.add(ob);
    }

    protected void notifyDeleted() { // clean up!
        disconnect();
    }

    public void inlet(int i) {
        int inletNum = getInlet();

        if (inletNum == 1) {
            serialIn(i);
        } else {
            //
        }

    }

    /* serial comm stuff */
    public void serialIn(int b) {
        in.add(b); // write the input in
    }

    public void writeSerialOut(int b) {
        outlet(1, b); // write it to the serial object
        readSerialIn(); // always bang it ...?
    }

    public void readSerialIn() {
        outletBang(1);
    }

    public void disconnect() {
        if (dit.isAlive()) {

            outlet(getNumOutlets(), "status", new String[] { "DISCONNECTING" });

            // waiting for a thread to die
            try {

                logger.debug("Interrupting service thread.");

                dit.interrupt();

                logger.debug("Waiting for thread to die ...");
                dit.join(10000); // wait for the thread to die ...
            } catch (InterruptedException e) {
                logger.error("While waiting for thread to die, got an error ...", e);
                outlet(getNumOutlets(), "status", new String[] { "ERROR" });
            }

            outlet(getNumOutlets(), "status", new String[] { "DISCONNECTED" });

        }
    }

    public void connect() {
        if (!dit.isAlive()) {
            logger.debug("starting server thread");
            dit.start();
            outlet(getNumOutlets(), "status", new String[] { "CONNECTING" });
        } else {
            logger.debug("Thread already running.  Disconnect to restart.");
        }

    }

    public void process(AGateway agateway, MessageTypes msgType, InboundMessage msg) {

        if (msg != null)
            logger.debug("DATE=>>" + msg.getDate() + "<==>" + msg.getDate().getTime() + "<==");

        if (msgType == MessageTypes.INBOUND) {
            outlet(0,
                    "message",
                    new Atom[] {
                            Atom.newAtom("inbound"),
                            Atom.newAtom(msg.getMessageId()),
                            Atom.newAtom(msg.getDate().getTime() + ""), // too big for numbers, send
                                                                        // as
                            // text!
                            Atom.newAtom(msg.getOriginator()),
                            Atom.newAtom(msg.getEncoding().toString()), Atom.newAtom(msg.getText()) });
        } else if (msgType == MessageTypes.STATUSREPORT) {
            outlet(0,
                    "message",
                    new Atom[] {
                            Atom.newAtom("status"),
                            Atom.newAtom(msg.getMessageId()),
                            Atom.newAtom(msg.getDate().getTime() + ""),// too big for numbers, send
                                                                       // as text!
                            Atom.newAtom(msg.getOriginator()),
                            Atom.newAtom(msg.getEncoding().toString()), Atom.newAtom(msg.getText()) });
        }

        try {
            if (deleteAfterProcessing) {
                if (msg != null) {
                    dit.s.deleteMessage(msg);
                } else {
                    logger.error("Error deleted message was null ... ");
                }
            }
        } catch (Exception e) {
            logger.error("Error while deleting message: " + msg.getMessageId(), e);
        }

    }

    public void process(AGateway agateway, String callerId) {
        // add an arbitrary ring id and, java timestamp
        outlet(0, "ring",
                new Atom[] { Atom.newAtom(ringId++), Atom.newAtom(System.currentTimeMillis() + ""),
                        Atom.newAtom(callerId) });
    }

    public void process(AGateway agateway, GatewayStatuses oldStatus, GatewayStatuses newStatus) {
        // not useful ?
        outlet(getNumOutlets(), "status", new String[] { newStatus.toString() });
    }

    public MaxSerialInputStream getInputStream() {
        return in;
    }

    public MaxSerialOutputStream getOutputStream() {
        return out;
    }

    public class ServerThread extends Thread {

        // boolean running = false;
        sms p;
        Service s;
        MaxSerialModemGateway gateway;

        public ServerThread(sms p) {
            this.p = p;
        }

        public void run() {

            s = new Service(p.logger); // set up new service
            gateway = new MaxSerialModemGateway(p);

            long nextBatterySignalUpdate = -1;
            long updateInterval = 60000; // every minute
            try { // log4j style

                p.logger.debug("Initializing Gateway");

                s.getSettings().SERIAL_POLLING = true;
                s.getSettings().MASK_IMSI = p.maskIMSI;

                if (p.protocol.compareToIgnoreCase("PDU") == 0) {
                    gateway.setProtocol(Protocols.PDU);
                } else {
                    gateway.setProtocol(Protocols.TEXT);
                }

                gateway.setInbound(true);
                gateway.setOutbound(true);
                gateway.setSimPin(p.pin);

                p.logger.debug("Setting notification callbacks");

                // Set up the notification methods. s.setInboundMessageNotification(p);
                s.setCallNotification(p);
                s.setGatewayStatusNotification(p);
                // add the gateway to the service object
                p.logger.debug("Addding gateways");
                s.addGateway(gateway);

                // Start! (i.e. connect to all defined gateways)
                p.logger.debug("Starting service"); // Start!

                s.startService();

                p.logger.debug("Getting phone data");

                p.outlet(p.getNumOutlets(), "manufacturer", gateway.getManufacturer());
                p.outlet(p.getNumOutlets(), "model", gateway.getModel());
                p.outlet(p.getNumOutlets(), "serialnumber", gateway.getSerialNo());
                p.outlet(p.getNumOutlets(), "imsi", gateway.getImsi());
                p.outlet(p.getNumOutlets(), "signallevel", gateway.getSignalLevel());
                p.outlet(p.getNumOutlets(), "batterylevel", gateway.getBatteryLevel()); //

                p.logger.debug("Connected!");
                p.outlet(getNumOutlets(), "status", new String[] { "CONNECTED" });
                nextBatterySignalUpdate = System.currentTimeMillis() + updateInterval;

                while (true) {
                    Thread.sleep(1000);
                    long now = System.currentTimeMillis();
                    p.logger.debug("Updating battery and signal levels.");
                    if (now > nextBatterySignalUpdate) {
                        if (p.updateBattery)
                            p.outlet(p.getNumOutlets(), "batterylevel", gateway.getBatteryLevel());
                        if (p.updateSignal)
                            p.outlet(p.getNumOutlets(), "signallevel", gateway.getSignalLevel());
                        nextBatterySignalUpdate = now + updateInterval;
                    } // queue messages to be sent

                    s.queueMessages(p.msgList, gateway.getGatewayId());
                    p.msgList.clear();
                }
            } catch (InterruptedException e) {
                p.logger.debug("Thread interrupted, disconnecting.", e);

            } catch (GatewayException e) {
                p.logger.error("Some kind of gateway exception.", e);
            } catch (TimeoutException e) {
                p.logger.error("Gateway timeout exception.", e);
            } catch (IOException e) {
                p.logger.error("Gateway IO exception.", e);
            } catch (SMSLibException e) {
                p.logger.error("Error Starting smsLib.", e);
            } finally {

                try {
                    p.logger.debug("Stopping service.");
                    s.stopService();

                    p.logger.debug("Attempting to remove Gateway from service.");
                    s.removeGateway(gateway);

                } catch (TimeoutException e) {
                    p.logger.error("Stop Service Timeout Exception", e);
                } catch (GatewayException e) {
                    p.logger.error("Stop Service Gateway Exception", e);
                } catch (IOException e) {
                    p.logger.error("Stop Service IO Exception", e);
                } catch (InterruptedException e) {
                    p.logger.error("Stop Service Interrupted Exception", e);
                } catch (SMSLibException e) {
                    p.logger.error("Stop Service SMSLib Exception", e);
                }

            }

        }
    }

    public String getPhoneMake() {
        return phoneMake;
    }

    public void setPhoneMake(String phoneMake) {
        this.phoneMake = phoneMake;
    }

    public String getPhoneModel() {
        return phoneModel;
    }

    public void setPhoneModel(String phoneModel) {
        this.phoneModel = phoneModel;
    }

    public String getGatewayName() {
        return gatewayName;
    }

    public void setLogLevel(String ll) {
        logLevel = Level.toLevel(ll);
        logger.setLevel(logLevel);
    }

    public String getLogLevel() {
        return logLevel.toString();
    }

}
