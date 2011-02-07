// SendMessage.java - Sample application.
//
// This application shows you the basic procedure for sending messages.
// You will find how to send synchronous and asynchronous messages.
//
// For asynchronous dispatch, the example application sets a callback
// notification, to see what's happened with messages.

package org.ajwcc.pduUtils.test.integration;

import java.net.URL;

import org.smslib.OutboundWapSIMessage;

public class SendWapSIMessage extends AbstractTester
{
	@Override
	public void test() throws Exception
	{
		// send out a WAP SI message.
		OutboundWapSIMessage wapMsg = new OutboundWapSIMessage(MODEM_NUMBER, new URL("https://mail.google.com/"), "Visit GMail now!");
		srv.sendMessage(wapMsg);
		System.out.println(wapMsg);
		System.out.println("Now Sleeping - Hit <enter> to terminate.");
		System.in.read();
		srv.stopService();
	}

	public static void main(String args[])
	{
		SendWapSIMessage app = new SendWapSIMessage();
		try
		{
			app.initModem();
			app.test();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}
