
package org.ajwcc.pduUtils.test.integration;

import org.smslib.ICallNotification;
import org.smslib.IInboundMessageNotification;
import org.smslib.IOutboundMessageNotification;
import org.smslib.InboundMessage;
import org.smslib.Library;
import org.smslib.OutboundMessage;
import org.smslib.Service;
import org.smslib.Message.MessageTypes;
import org.smslib.modem.SerialModemGateway;

public abstract class AbstractTester
{
	protected Service srv;

	protected static final String MODEM_NUMBER = "09183018888";

	protected static final String PHONE_NUMBER = "09063137023";

	protected void initModem() throws Exception
	{
		System.out.println(Library.getLibraryDescription());
		System.out.println("Version: " + Library.getLibraryVersion());
		srv = new Service();
		SerialModemGateway gateway = new SerialModemGateway("modem.com1", "COM10", 115200, "Wavecom", "");
		gateway.setSimPin("0000");
		gateway.setOutbound(true);
		OutboundNotification outboundNotification = new OutboundNotification();
		gateway.setOutboundNotification(outboundNotification);
		gateway.setInbound(true);
		InboundNotification inboundNotification = new InboundNotification();
		gateway.setInboundNotification(inboundNotification);
		srv.addGateway(gateway);
		srv.startService();
		System.out.println();
		System.out.println("Modem Information:");
		System.out.println("  Manufacturer: " + gateway.getManufacturer());
		System.out.println("  Model: " + gateway.getModel());
		System.out.println("  Serial No: " + gateway.getSerialNo());
		System.out.println("  SIM IMSI: " + gateway.getImsi());
		System.out.println("  Signal Level: " + gateway.getSignalLevel() + "%");
		System.out.println("  Battery Level: " + gateway.getBatteryLevel() + "%");
		System.out.println();
	}

	protected abstract void test() throws Exception;

	public class InboundNotification implements IInboundMessageNotification
	{
		public void process(String gatewayId, MessageTypes msgType, InboundMessage msg)
		{
			if (msgType == MessageTypes.INBOUND)
			{
				System.out.println(">>> New Inbound message detected from Gateway: " + gatewayId);
			}
			else if (msgType == MessageTypes.STATUSREPORT)
			{
				System.out.println(">>> New Inbound Status Report message detected from Gateway: " + gatewayId);
			}
			System.out.println(msg);
			try
			{
				// Uncomment following line if you wish to delete the message upon arrival.
				srv.deleteMessage(msg);
			}
			catch (Exception e)
			{
				System.out.println("Oops!!! Something gone bad...");
				e.printStackTrace();
			}
		}
	}

	public class CallNotification implements ICallNotification
	{
		public void process(String gatewayId, String callerId)
		{
			System.out.println(">>> New call detected from Gateway: " + gatewayId + " : " + callerId);
		}
	}

	public class OutboundNotification implements IOutboundMessageNotification
	{
		public void process(String gatewayId, OutboundMessage msg)
		{
			System.out.println("Outbound handler called from Gateway: " + gatewayId);
			System.out.println(msg);
		}
	}
}
