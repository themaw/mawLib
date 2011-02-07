// SMSLib for Java v3
// A Java API library for sending and receiving SMS via a GSM modem
// or other supported gateways.
// Web Site: http://www.smslib.org
//
// Copyright (C) 2002-2008, Thanasis Delenikas, Athens/GREECE.
// SMSLib is distributed under the terms of the Apache License version 2.0
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package org.smslib.modem.athandler;

import java.io.IOException;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.smslib.GatewayException;
import org.smslib.TimeoutException;
import org.smslib.AGateway.AsyncEvents;
import org.smslib.AGateway.Protocols;
import org.smslib.InboundMessage.MessageClasses;
import org.smslib.modem.AModemDriver;
import org.smslib.modem.CNMIDetector;
import org.smslib.modem.ModemGateway;

/**
 * Generic modem AT handler.
 */
public class ATHandler extends AATHandler
{
	protected AModemDriver modemDriver;

	protected CNMIDetector cnmiDetector;

	public AModemDriver getModemDriver()
	{
		return this.modemDriver;
	}

	public ATHandler(ModemGateway myGateway)
	{
		super(myGateway);
		this.modemDriver = myGateway.getModemDriver();
		this.cnmiDetector = null;
		this.terminators = new String[13];
		this.terminators[0] = "OK\\s";
		this.terminators[1] = "\\s*[\\p{ASCII}]*\\s+OK\\s";
		this.terminators[2] = "(ERROR|NO CARRIER|NO DIALTONE)\\s";
		this.terminators[3] = "ERROR:\\s*\\d+\\s";
		this.terminators[4] = "\\+CM[ES]\\s+ERROR:\\s*\\d+\\s";
		this.terminators[5] = "\\+CPIN:\\s*READY\\s";
		this.terminators[6] = "\\+CPIN:\\s*SIM\\s*BUSY\\s";
		this.terminators[7] = "\\+CPIN:\\s*SIM\\s*PIN\\s";
		this.terminators[8] = "\\+CPIN:\\s*SIM\\s*PIN2\\s";
		this.terminators[9] = "\\+CMTI:\\s*\\p{Punct}[\\p{ASCII}]+\\p{Punct}\\p{Punct}\\s*\\d+\\s";
		this.terminators[10] = "\\+CDSI:\\s*\\p{Punct}[\\p{ASCII}]+\\p{Punct}\\p{Punct}\\s*\\d+\\s";
		this.terminators[11] = "RING\\s";
		this.terminators[12] = "\\+CLIP:\\s*\\p{Punct}[\\p{ASCII}]*\\p{Punct}\\p{Punct}\\s*\\d+[\\p{ASCII}]*\\s";
		this.unsolicitedResponses = new String[4];
		this.unsolicitedResponses[0] = "+CMTI";
		this.unsolicitedResponses[1] = "+CDSI";
		this.unsolicitedResponses[2] = "RING";
		this.unsolicitedResponses[3] = "+CLIP";
	}

	@Override
	public void sync() throws IOException, InterruptedException
	{
		getModemDriver().write("ATZ\r");
		Thread.sleep(getGateway().getService().S.AT_WAIT);
	}

	@Override
	public void reset() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("\u001b");
		Thread.sleep(getGateway().getService().S.AT_WAIT);
		getModemDriver().write("+++");
		Thread.sleep(getGateway().getService().S.AT_WAIT);
		getModemDriver().write("ATZ");
		Thread.sleep(getGateway().getService().S.AT_WAIT);
		getModemDriver().clearBuffer();
	}

	@Override
	public void echoOff() throws IOException, InterruptedException
	{
		getModemDriver().write("ATE0\r");
		Thread.sleep(getGateway().getService().S.AT_WAIT);
		getModemDriver().clearBuffer();
	}

	@Override
	public void init() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("AT+CLIP=1\r");
		getModemDriver().getResponse();
		getModemDriver().write("AT+COPS=0\r");
		getModemDriver().getResponse();
	}

	@Override
	public void done() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		// No default behavior.
	}

	@Override
	public boolean isAlive() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("AT\r");
		getModemDriver().getResponse();
		return (getModemDriver().isOk());
	}

	@Override
	public String getSimStatus() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("AT+CPIN?\r");
		return (getModemDriver().getResponse());
	}

	@Override
	public boolean enterPin(String pin) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("AT+CPIN=\"_1_\"\r".replaceAll("_1_", pin));
		getModemDriver().getResponse();
		return (getModemDriver().isOk());
	}

	@Override
	public boolean setVerboseErrors() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("AT+CMEE=1\r");
		getModemDriver().getResponse();
		return (getModemDriver().isOk());
	}

	@Override
	public boolean setPduProtocol() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("AT+CMGF=0\r");
		getModemDriver().getResponse();
		return (getModemDriver().isOk());
	}

	@Override
	public boolean setTextProtocol() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("AT+CMGF=1\r");
		getModemDriver().getResponse();
		if (getModemDriver().isOk())
		{
			getModemDriver().write("AT+CSCS=\"8859-1\"\r");
			getModemDriver().getResponse();
			return (getModemDriver().isOk());
		}
		return false;
	}

	@Override
	public boolean setIndications() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		int RETRIES = 3;
		int count = 0;
		while (count < RETRIES)
		{
			getModemDriver().write("AT+CNMI=?\r");
			try
			{
				this.cnmiDetector = new CNMIDetector(getModemDriver().getResponse(), getGateway());
				getModemDriver().write(this.cnmiDetector.getATCommand());
				getModemDriver().getResponse();
				return (getModemDriver().isOk());
			}
			catch (Exception e)
			{
				count++;
				getGateway().getService().getLogger().logWarn("Retrying the detection of CNMI, modem busy?", null, getGateway().getGatewayId());
				Thread.sleep(getGateway().getService().S.AT_WAIT_CNMI);
			}
		}
		getGateway().getService().getLogger().logWarn("CNMI detection failed, proceeding with defaults.", null, getGateway().getGatewayId());
		return false;
	}

	@Override
	public CNMIDetector getIndications()
	{
		return this.cnmiDetector;
	}

	@Override
	public String getManufacturer() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("AT+CGMI\r");
		return (getModemDriver().getResponse());
	}

	@Override
	public String getModel() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("AT+CGMM\r");
		return (getModemDriver().getResponse());
	}

	@Override
	public String getSerialNo() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("AT+CGSN\r");
		return (getModemDriver().getResponse());
	}

	@Override
	public String getImsi() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("AT+CIMI\r");
		return (getModemDriver().getResponse());
	}

	@Override
	public String getSwVersion() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("AT+CGMR\r");
		return (getModemDriver().getResponse());
	}

	@Override
	public String getBatteryLevel() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("AT+CBC\r");
		return (getModemDriver().getResponse());
	}

	@Override
	public String getSignalLevel() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("AT+CSQ\r");
		return (getModemDriver().getResponse());
	}

	@Override
	public boolean switchStorageLocation(String mem) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		if (mem.equalsIgnoreCase("--")) return true;
		getModemDriver().write("AT+CPMS=\"" + mem + "\"\r");
		getModemDriver().getResponse();
		return (getModemDriver().isOk());
	}

	@Override
	public void switchToCmdMode() throws IOException
	{
		getModemDriver().write("+++");
		java.util.Date start = new java.util.Date();
		while (new java.util.Date().getTime() - start.getTime() <= getGateway().getService().S.AT_WAIT_CMD)
		{
			try
			{
				Thread.sleep(100);
			}
			catch (InterruptedException e)
			{
				//Swallow this...
			}
		}
	}

	@Override
	public int sendMessage(int size, String pdu, String phone, String text) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		int responseRetries, errorRetries;
		String response;
		int refNo = -1;
		if (getGateway().getProtocol() == Protocols.PDU)
		{
			errorRetries = 0;
			while (true)
			{
				responseRetries = 0;
				getModemDriver().write("AT+CMGS=\"_1_\"\r".replaceAll("\"_1_\"", "" + size));
				Thread.sleep(getGateway().getService().S.AT_WAIT_CGMS);
				while (!getModemDriver().dataAvailable())
				{
					responseRetries++;
					if (responseRetries == getGateway().getService().S.OUTBOUND_RETRIES) throw new GatewayException("Gateway is not responding, max number of retries reached.");
					getGateway().getService().getLogger().logWarn("ATHandler().SendMessage(): Still waiting for response (I) (" + responseRetries + ")...", null, getGateway().getGatewayId());
					Thread.sleep(getGateway().getService().S.OUTBOUND_RETRY_WAIT);
				}
				responseRetries = 0;
				getModemDriver().clearBuffer();
				getModemDriver().write(pdu);
				getModemDriver().write((char) 26);
				response = getModemDriver().getResponse();
				while (response.length() == 0)
				{
					responseRetries++;
					if (responseRetries == getGateway().getService().S.OUTBOUND_RETRIES) throw new GatewayException("Gateway is not responding, max number of retries reached.");
					getGateway().getService().getLogger().logWarn("ATHandler().SendMessage(): Still waiting for response (II) (" + responseRetries + ")...", null, getGateway().getGatewayId());
					Thread.sleep(getGateway().getService().S.OUTBOUND_RETRY_WAIT);
					response = getModemDriver().getResponse();
				}
				if (getModemDriver().getLastError() == 0)
				{
					Matcher m = Pattern.compile("\\s*\\+CMGS: *(\\d+)").matcher(response);
					if (m.find())
					{
						refNo = Integer.parseInt(m.group(1));
					}
					else
					{
						// Message-Reference ID not returned
						refNo = -1;
					}
					break;
				}
				else if (getModemDriver().getLastError() > 0)
				{
					// CMS or CME error could happen here
					errorRetries++;
					if (errorRetries == getGateway().getService().S.OUTBOUND_RETRIES)
					{
						getGateway().getService().getLogger().logError(getModemDriver().getLastErrorText() + ": Quit retrying, message lost...", null, getGateway().getGatewayId());
						refNo = -1;
						break;
					}
					getGateway().getService().getLogger().logWarn(getModemDriver().getLastErrorText() + ": Retrying...", null, getGateway().getGatewayId());
					Thread.sleep(getGateway().getService().S.OUTBOUND_RETRY_WAIT);
				}
				else refNo = -1;
			}
		}
		else if (getGateway().getProtocol() == Protocols.TEXT)
		{
			getModemDriver().write("AT+CMGS=\"_1_\"\r".replaceAll("_1_", phone));
			getModemDriver().clearBuffer();
			getModemDriver().write(text);
			Thread.sleep(getGateway().getService().S.AT_WAIT_CGMS);
			getModemDriver().write((char) 26);
			response = getModemDriver().getResponse();
			if (response.indexOf("OK\r") >= 0)
			{
				int i;
				String tmp = "";
				i = response.indexOf(":");
				while (!Character.isDigit(response.charAt(i)))
					i++;
				while (Character.isDigit(response.charAt(i)))
				{
					tmp += response.charAt(i);
					i++;
				}
				refNo = Integer.parseInt(tmp);
			}
			else refNo = -1;
		}
		return refNo;
	}

	@Override
	public String listMessages(MessageClasses messageClass) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		if (getGateway().getProtocol() == Protocols.PDU)
		{
			if (messageClass == MessageClasses.ALL) getModemDriver().write("AT+CMGL=4\r");
			else if (messageClass == MessageClasses.UNREAD) getModemDriver().write("AT+CMGL=0\r");
			else if (messageClass == MessageClasses.READ) getModemDriver().write("AT+CMGL=1\r");
		}
		else if (getGateway().getProtocol() == Protocols.TEXT)
		{
			if (messageClass == MessageClasses.ALL) getModemDriver().write("AT+CMGL=\"ALL\"\r");
			else if (messageClass == MessageClasses.UNREAD) getModemDriver().write("AT+CMGL=\"REC UNREAD\"\r");
			else if (messageClass == MessageClasses.READ) getModemDriver().write("AT+CMGL=\"REC READ\"\r");
		}
		return getModemDriver().getResponse();
	}

	@Override
	public String getMessageByIndex(int msgIndex) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("AT+CMGR=" + msgIndex + "\r");
		return (getModemDriver().getResponse());
	}

	@Override
	public boolean deleteMessage(int memIndex, String memLocation) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		if (!switchStorageLocation(memLocation)) return false;
		Thread.sleep(getGateway().getService().S.AT_WAIT);
		getModemDriver().write("AT+CMGD=_1_\r".replaceAll("_1_", "" + memIndex));
		getModemDriver().getResponse();
		return (getModemDriver().isOk());
	}

	@Override
	public String getGprsStatus() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write("AT+CGATT?\r");
		return (getModemDriver().getResponse());
	}

	@Override
	public String send(String s) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getModemDriver().write(s);
		return (getModemDriver().getResponse());
	}

	@Override
	public String getNetworkRegistration() throws GatewayException, TimeoutException, IOException
	{
		getModemDriver().write("AT+CREG?\r");
		return (getModemDriver().getResponse());
	}

	@Override
	public void readStorageLocations() throws Exception
	{
		String response, loc;
		StringTokenizer tokens;
		getModemDriver().write("AT+CPMS?\r");
		response = getModemDriver().getResponse();
		try
		{
			if (response.indexOf("+CPMS:") >= 0)
			{
				response = response.replaceAll("\\s*\\+CPMS:\\s*", "");
				tokens = new StringTokenizer(response, ",");
				while (tokens.hasMoreTokens())
				{
					loc = tokens.nextToken().replaceAll("\"", "");
					if (getStorageLocations().indexOf(loc) < 0) addStorageLocation(loc);
					tokens.nextToken();
					tokens.nextToken();
				}
			}
			else
			{
				addStorageLocation("MT");
				getGateway().getService().getLogger().logWarn("CPMS detection failed, proceeding with default storage 'MT'.", null, getGateway().getGatewayId());
			}
		}
		catch (Exception e)
		{
			addStorageLocation("MT");
			getGateway().getService().getLogger().logWarn("CPMS detection failed, proceeding with default storage 'MT'.", null, getGateway().getGatewayId());
		}
	}

	@Override
	public AsyncEvents processUnsolicitedEvents(String response) throws IOException
	{
		AsyncEvents event = AsyncEvents.NOTHING;
		if (response.indexOf(getUnsolicitedResponse(0)) >= 0) event = AsyncEvents.INBOUNDMESSAGE;
		else if (response.indexOf(getUnsolicitedResponse(1)) >= 0) event = AsyncEvents.INBOUNDSTATUSREPORTMESSAGE;
		else if (response.indexOf(getUnsolicitedResponse(2)) >= 0) event = AsyncEvents.NOTHING;
		else if (response.indexOf(getUnsolicitedResponse(3)) >= 0) event = AsyncEvents.INBOUNDCALL;
		return event;
	}
}
