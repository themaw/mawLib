package org.smslib.modem;


import java.io.IOException;

import maw.mobile.sms;

import org.smslib.AGateway;
import org.smslib.GatewayException;

class MaxSerialModemDriver extends AModemDriver {

    private sms parent;
    private MaxSerialInputStream in;
    private MaxSerialOutputStream out;
    private ThreadReader threadReader;

    protected MaxSerialModemDriver(ModemGateway myGateway, String deviceParms, sms parent) {
        super(myGateway, deviceParms);
        this.parent = parent;
    }

    @Override
    protected void connectPort() throws GatewayException, IOException, InterruptedException {
        try {

            setIn(parent.getInputStream());
            setOut(parent.getOutputStream());

            if (getGateway().getService().getSettings().SERIAL_POLLING)
                setThreadReader(new ThreadReader(getGateway()));

        } catch (Exception e) {
            throw new GatewayException("Max Serial Input Stream exception: " + e.getMessage());
        }

    }

    @Override
    protected void disconnectPort() throws IOException, InterruptedException {
        synchronized (getSYNCReader()) {
            if (getGateway().getService().getSettings().SERIAL_POLLING) {
                if (getThreadReader() != null) {
                    getThreadReader().interrupt();
                    getThreadReader().join();
                    setThreadReader(null);
                }
            }
        }
    }

    @Override
    protected void clear() throws IOException {
        while (portHasData())
            read();
    }

    @Override
    protected boolean portHasData() throws IOException {
        return (getIn().available() > 0);
    }

    @Override
    public void write(char c) throws IOException {
        getOut().write(c);
        if (!getGateway().getService().getSettings().SERIAL_NOFLUSH) getOut().flush();
    }

    @Override
    public void write(byte[] s) throws IOException {
        getOut().write(s);
        if (!getGateway().getService().getSettings().SERIAL_NOFLUSH) getOut().flush();
    }

    @Override
    protected int read() throws IOException {
        return getIn().read();
    }

    ThreadReader getThreadReader() {
        return this.threadReader;
    }

    void setThreadReader(ThreadReader myThreadReader) {
        this.threadReader = myThreadReader;
    }

    private class ThreadReader extends Thread {
        private AGateway gtw;

        public ThreadReader(AGateway myGtw) {
            this.gtw = myGtw;
            start();
        }

        @Override
        public void run() {
            this.gtw.getService().getLogger().logDebug("ThreadReader started.", null,
                    getGateway().getGatewayId());
            while (true) {
                try {
                    parent.readSerialIn();
                    sleep(getGateway().getService().getSettings().SERIAL_POLLING_INTERVAL);
                    if (portHasData()) {
                        synchronized (getSYNCReader()) {
                            setDataReceived(true);
                            getSYNCReader().notifyAll();
                        }
                    }
                } catch (InterruptedException e) {
                    break;
                } catch (Exception e) {
                    this.gtw.getService().getLogger().logError("ThreadReader error. ", e,
                            getGateway().getGatewayId());
                }
            }
            this.gtw.getService().getLogger().logDebug("ThreadReader stopped.", null,
                    getGateway().getGatewayId());
        }
    }

    MaxSerialInputStream getIn() {
        return this.in;
    }

    void setIn(MaxSerialInputStream myIn) {
        this.in = myIn;
    }

    MaxSerialOutputStream getOut() {
        return this.out;
    }

    void setOut(MaxSerialOutputStream myOut) {
        this.out = myOut;
    }

}
