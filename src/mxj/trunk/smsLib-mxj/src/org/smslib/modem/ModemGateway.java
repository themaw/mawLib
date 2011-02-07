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

package org.smslib.modem;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.ajwcc.pduUtils.gsm3040.Pdu;
import org.ajwcc.pduUtils.gsm3040.PduParser;
import org.ajwcc.pduUtils.gsm3040.PduUtils;
import org.ajwcc.pduUtils.gsm3040.SmsDeliveryPdu;
import org.ajwcc.pduUtils.gsm3040.SmsStatusReportPdu;
import org.smslib.AGateway;
import org.smslib.GatewayException;
import org.smslib.InboundBinaryMessage;
import org.smslib.InboundMessage;
import org.smslib.OutboundMessage;
import org.smslib.StatusReportMessage;
import org.smslib.TimeoutException;
import org.smslib.UnknownMessage;
import org.smslib.InboundMessage.MessageClasses;
import org.smslib.OutboundMessage.MessageStatuses;
import org.smslib.modem.athandler.AATHandler;

/**
 * Class representing GSM modems or phones. Extends AGateway with modem specific
 * operations.
 */
public class ModemGateway extends AGateway
{
	/**
	 * Class representing different types of GSM modems / phones.
	 */
	public enum ModemTypes
	{
		/**
		 * Serially connected modem. These modems are connected via a serial
		 * port, either physical or emulated (i.e. USB, IrDA, etc).
		 */
		SERIAL,
		/**
		 * IP connected modem.
		 */
		IP,
		MAX_SERIAL // bakercp
	}

	private AModemDriver driver;

	private AATHandler atHandler;

	private String modemDevice;

	private int modemParms;

	private String manufacturer;

	private String model;

	private String simPin, simPin2;

	private String customInitString;

	private String smscNumber;

	private int outMpRefNo;

	private List<List<InboundMessage>> mpMsgList;

	public ModemGateway(ModemTypes myType, String id, String myModemDevice, int myModemParms, String myManufacturer, String myModel)
	{
		super(id);
		init(myType, myModemDevice, myModemParms, myManufacturer, myModel, null);
	}

	public ModemGateway(String id, String myModemDevice, int myModemParms, String myManufacturer, String myModel, AModemDriver myDriver)
	{
		super(id);
		init(null, myModemDevice, myModemParms, myManufacturer, myModel, myDriver);
	}

	private void init(ModemTypes myType, String myModemDevice, int myModemParms, String myManufacturer, String myModel, AModemDriver myDriver)
	{
		setModemDevice(myModemDevice);
		setModemParms(myModemParms);
		this.manufacturer = myManufacturer;
		this.model = myModel;
		setAttributes(AGateway.GatewayAttributes.SEND | AGateway.GatewayAttributes.RECEIVE | AGateway.GatewayAttributes.BIGMESSAGES | AGateway.GatewayAttributes.WAPSI | AGateway.GatewayAttributes.PORTADDRESSING | AGateway.GatewayAttributes.FLASHSMS | AGateway.GatewayAttributes.DELIVERYREPORTS);
		if (myDriver != null) setDriver(myDriver);
		else
		{
			// bakercp
			if (myType == ModemTypes.SERIAL) {
				setDriver(new SerialModemDriver(this, getModemDevice() + ":" + getModemParms()));
			} else if (myType == ModemTypes.MAX_SERIAL) {
				// bakercp
				setDriver(new MaxSerialModemDriver(this, getModemDevice() + ":" + getModemParms()));
			} else {
				setDriver(new IPModemDriver(this, getModemDevice() + ":" + getModemParms()));
			}
		}
		setAtHandler(AATHandler.load(this, this.manufacturer, this.model));
		setSimPin("");
		setSimPin2("");
		setSmscNumber("");
		setCustomInitString("");
		this.outMpRefNo = new Random().nextInt();
		if (this.outMpRefNo < 0) this.outMpRefNo *= -1;
		this.outMpRefNo %= 65536;
		this.mpMsgList = new ArrayList<List<InboundMessage>>();
	}

	@Override
	public void startGateway() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getService().getLogger().logInfo("Starting gateway, using " + getATHandler().getDescription() + " AT Handler.", null, getGatewayId());
		getDriver().connect();
		super.startGateway();
		getService().getLogger().logInfo("Gateway started.", null, getGatewayId());
	}

	@Override
	public void stopGateway() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		getService().getLogger().logInfo("Stopping gateway...", null, getGatewayId());
		getATHandler().done();
		super.stopGateway();
		getDriver().disconnect();
		getService().getLogger().logInfo("Gateway stopped.", null, getGatewayId());
	}

	@Override
	public void readMessages(Collection<InboundMessage> msgList, MessageClasses msgClass) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		if (getStatus() != GatewayStatuses.RUNNING) return;
		synchronized (getDriver().getSYNCCommander())
		{
			if (getProtocol() == Protocols.PDU) readMessagesPDU(msgList, msgClass, 0);
			else if (getProtocol() == Protocols.TEXT) readMessagesTEXT(msgList, msgClass, 0);
		}
	}

	@Override
	public InboundMessage readMessage(String memLoc, int memIndex) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		Collection<InboundMessage> msgList;
		if (getStatus() != GatewayStatuses.RUNNING) return null;
		synchronized (getDriver().getSYNCCommander())
		{
			msgList = new ArrayList<InboundMessage>();
			readMessages(msgList, MessageClasses.ALL);
			for (InboundMessage msg : msgList)
				if ((msg.getMemIndex() == memIndex) && (msg.getMemLocation().equals(memLoc))) return msg;
			return null;
		}
	}

	@Override
	public boolean sendMessage(OutboundMessage msg) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		if (getStatus() != GatewayStatuses.RUNNING) return false;
		synchronized (getDriver().getSYNCCommander())
		{
			if (getProtocol() == Protocols.PDU) return sendMessagePDU(msg);
			else if (getProtocol() == Protocols.TEXT) return sendMessageTEXT(msg);
			else return false;
		}
	}

	@Override
	public boolean deleteMessage(InboundMessage msg) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		if (getStatus() != GatewayStatuses.RUNNING) return false;
		synchronized (getDriver().getSYNCCommander())
		{
			if (msg.getMemIndex() >= 0) return deleteMessage(msg.getMemIndex(), msg.getMemLocation());
			else if ((msg.getMemIndex() == -1) && (msg.getMpMemIndex().length() != 0))
			{
				StringTokenizer tokens = new StringTokenizer(msg.getMpMemIndex(), ",");
				while (tokens.hasMoreTokens())
					deleteMessage(Integer.parseInt(tokens.nextToken()), msg.getMemLocation());
			}
			return true;
		}
	}

	private boolean deleteMessage(int memIndex, String memLocation) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		return getATHandler().deleteMessage(memIndex, memLocation);
	}

	private boolean sendMessageTEXT(OutboundMessage msg) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		int refNo;
		boolean ok = false;
		refNo = getATHandler().sendMessage(0, "", msg.getRecipient(), msg.getText());
		if (refNo >= 0)
		{
			msg.setGatewayId(getGatewayId());
			msg.setRefNo("" + refNo);
			msg.setDispatchDate(new Date());
			msg.setMessageStatus(MessageStatuses.SENT);
			incOutboundMessageCount();
			ok = true;
		}
		else
		{
			msg.setRefNo(null);
			msg.setDispatchDate(null);
			msg.setMessageStatus(MessageStatuses.FAILED);
		}
		return ok;
	}

	private void readMessagesTEXT(Collection<InboundMessage> msgList, MessageClasses msgClass, int myLimit) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		int i, j, memIndex;
		int limit = (myLimit < 0 ? 0 : myLimit);
		String response, line, msgText, originator, dateStr, refNo;
		BufferedReader reader;
		StringTokenizer tokens;
		InboundMessage msg;
		Calendar cal1 = Calendar.getInstance();
		Calendar cal2 = Calendar.getInstance();
		for (int ml = 0; ml < (getATHandler().getStorageLocations().length() / 2); ml++)
		{
			if (getATHandler().switchStorageLocation(getATHandler().getStorageLocations().substring((ml * 2), (ml * 2) + 2)))
			{
				response = getATHandler().listMessages(msgClass);
				response = response.replaceAll("\\s+OK\\s+", "\nOK");
				reader = new BufferedReader(new StringReader(response));
				for (;;)
				{
					line = reader.readLine().trim();
					if (line == null) break;
					line = line.trim();
					if (line.length() > 0) break;
				}
				while (true)
				{
					if (line == null) break;
					line = line.trim();
					if (line.length() <= 0 || line.equalsIgnoreCase("OK")) break;
					i = line.indexOf(':');
					j = line.indexOf(',');
					memIndex = Integer.parseInt(line.substring(i + 1, j).trim());
					tokens = new StringTokenizer(line, ",");
					tokens.nextToken();
					tokens.nextToken();
					if (Character.isDigit(tokens.nextToken().trim().charAt(0)))
					{
						line = line.replaceAll(",,", ", ,");
						tokens = new StringTokenizer(line, ",");
						tokens.nextToken();
						tokens.nextToken();
						tokens.nextToken();
						refNo = tokens.nextToken();
						tokens.nextToken();
						dateStr = tokens.nextToken().replaceAll("\"", "");
						cal1.set(Calendar.YEAR, 2000 + Integer.parseInt(dateStr.substring(0, 2)));
						cal1.set(Calendar.MONTH, Integer.parseInt(dateStr.substring(3, 5)) - 1);
						cal1.set(Calendar.DAY_OF_MONTH, Integer.parseInt(dateStr.substring(6, 8)));
						dateStr = tokens.nextToken().replaceAll("\"", "");
						cal1.set(Calendar.HOUR_OF_DAY, Integer.parseInt(dateStr.substring(0, 2)));
						cal1.set(Calendar.MINUTE, Integer.parseInt(dateStr.substring(3, 5)));
						cal1.set(Calendar.SECOND, Integer.parseInt(dateStr.substring(6, 8)));
						dateStr = tokens.nextToken().replaceAll("\"", "");
						cal2.set(Calendar.YEAR, 2000 + Integer.parseInt(dateStr.substring(0, 2)));
						cal2.set(Calendar.MONTH, Integer.parseInt(dateStr.substring(3, 5)) - 1);
						cal2.set(Calendar.DAY_OF_MONTH, Integer.parseInt(dateStr.substring(6, 8)));
						dateStr = tokens.nextToken().replaceAll("\"", "");
						cal2.set(Calendar.HOUR_OF_DAY, Integer.parseInt(dateStr.substring(0, 2)));
						cal2.set(Calendar.MINUTE, Integer.parseInt(dateStr.substring(3, 5)));
						cal2.set(Calendar.SECOND, Integer.parseInt(dateStr.substring(6, 8)));
						
						
						msg = new StatusReportMessage(refNo, memIndex, getATHandler().getStorageLocations().substring((ml * 2), (ml * 2) + 2), cal1.getTime(), cal2.getTime());
						msg.setGatewayId(getGatewayId());
						getService().getLogger().logDebug("IN-DTLS: MI:" + msg.getMemIndex(), null, getGatewayId());
						msgList.add(msg);
						incInboundMessageCount();
					}
					else
					{
						line = line.replaceAll(",,", ", ,");
						
						tokens = new StringTokenizer(line, ",");
						tokens.nextToken();
						tokens.nextToken();
						originator = tokens.nextToken().replaceAll("\"", "");
						tokens.nextToken();
						dateStr = tokens.nextToken().replaceAll("\"", "");
						cal1.set(Calendar.YEAR, 2000 + Integer.parseInt(dateStr.substring(0, 2)));
						cal1.set(Calendar.MONTH, Integer.parseInt(dateStr.substring(3, 5)) - 1);
						cal1.set(Calendar.DAY_OF_MONTH, Integer.parseInt(dateStr.substring(6, 8)));
						dateStr = tokens.nextToken().replaceAll("\"", "");
						cal1.set(Calendar.HOUR_OF_DAY, Integer.parseInt(dateStr.substring(0, 2)));
						cal1.set(Calendar.MINUTE, Integer.parseInt(dateStr.substring(3, 5)));
						cal1.set(Calendar.SECOND, Integer.parseInt(dateStr.substring(6, 8)));
						msgText = reader.readLine().trim();
						
						msg = new InboundMessage(cal1.getTime(), originator, msgText, memIndex, getATHandler().getStorageLocations().substring((ml * 2), (ml * 2) + 2));
						msg.setGatewayId(getGatewayId());
						getService().getLogger().logDebug("IN-DTLS: MI:" + msg.getMemIndex(), null, getGatewayId());
						msgList.add(msg);
						incInboundMessageCount();
					}
					line = reader.readLine().trim();
					while (line.length() == 0)
						line = reader.readLine().trim();
					if ((limit > 0) && (msgList.size() == limit)) break;
				}
				reader.close();
			}
		}
	}

	private boolean sendMessagePDU(OutboundMessage msg) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		boolean ok = false;
		List<String> pdus = msg.getPdus(getSmscNumber(), this.outMpRefNo);
		for (String pdu : pdus)
		{
			Pdu newPdu = new PduParser().parsePdu(pdu);
			getService().getLogger().logDebug(newPdu.toString(), null, getGatewayId());
			int j = pdu.length() / 2;
			if (getSmscNumber() == null)
			{
				// Do nothing on purpose!
			}
			else if (getSmscNumber().length() == 0) j--;
			else
			{
				int smscNumberLen = getSmscNumber().length();
				if (getSmscNumber().charAt(0) == '+') smscNumberLen--;
				if (smscNumberLen % 2 != 0) smscNumberLen++;
				int smscLen = (2 + smscNumberLen) / 2;
				j = j - smscLen - 1;
			}
			getService().getLogger().logDebug("Sending Pdu: " + pdu, null, getGatewayId());
			int refNo = getATHandler().sendMessage(j, pdu, null, null);
			if (refNo >= 0)
			{
				msg.setGatewayId(getGatewayId());
				msg.setRefNo(String.valueOf(refNo));
				msg.setDispatchDate(new Date());
				msg.setMessageStatus(MessageStatuses.SENT);
				incOutboundMessageCount();
				ok = true;
			}
			else
			{
				msg.setRefNo(null);
				msg.setDispatchDate(null);
				msg.setMessageStatus(MessageStatuses.FAILED);
				ok = false;
			}
		}
		if (pdus.size() > 1)
		{
			this.outMpRefNo = (this.outMpRefNo + 1) % 65536;
		}
		return ok;
	}

	private void readMessagesPDU(Collection<InboundMessage> msgList, MessageClasses messageClass, int myLimit) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		int i, j, memIndex;
		String response, line, pduString;
		BufferedReader reader;
		int limit = (myLimit < 0 ? 0 : myLimit);
		for (int ml = 0; ml < (getATHandler().getStorageLocations().length() / 2); ml++)
		{
			if (getATHandler().switchStorageLocation(getATHandler().getStorageLocations().substring((ml * 2), (ml * 2) + 2)))
			{
				response = getATHandler().listMessages(messageClass);
				response = response.replaceAll("\\s+OK\\s+", "\nOK");
				reader = new BufferedReader(new StringReader(response));
				for (;;)
				{
					line = reader.readLine().trim();
					if (line == null) break;
					line = line.trim();
					if (line.length() > 0) break;
				}
				// use the parser to determine the message type
				PduParser parser = new PduParser();
				while (true)
				{

					if (line == null) break;
					line = line.trim();
					if (line.length() <= 0 || line.equalsIgnoreCase("OK")) break;
					getService().getLogger().logDebug("READ PDU THE LINE before Substring ...: " + line, null, getGatewayId());

					i = line.indexOf(':');
					j = line.indexOf(',');
					memIndex = Integer.parseInt(line.substring(i + 1, j).trim());
					pduString = reader.readLine().trim();
					try
					{
						getService().getLogger().logDebug("READ PDU: " + pduString, null, getGatewayId());
						// this will throw an exception for PDUs
						// it can't classify
						Pdu pdu = parser.parsePdu(pduString);
						
						// NOTE: maybe a message validity vs the current
						//       date should be put here.
						
						//       if the message is invalid, the message should
						//       be ignored and but logged
						
						
						if (pdu instanceof SmsDeliveryPdu)
						{
							getService().getLogger().logDebug(pdu.toString(), null, getGatewayId());
							InboundMessage msg;
							String memLocation = getATHandler().getStorageLocations().substring((ml * 2), (ml * 2) + 2);
							if (pdu.isBinary())
							{
								msg = new InboundBinaryMessage((SmsDeliveryPdu) pdu, memIndex, memLocation);
							}
							else
							{
								msg = new InboundMessage((SmsDeliveryPdu) pdu, memIndex, memLocation);
							}
							msg.setGatewayId(getGatewayId());
							getService().getLogger().logDebug("IN-DTLS: MI:" + msg.getMemIndex() + " REF:" + msg.getMpRefNo() + " MAX:" + msg.getMpMaxNo() + " SEQ:" + msg.getMpSeqNo(), null, getGatewayId());
							if (msg.getMpRefNo() == 0)
							{
								// single message
								msgList.add(msg);
								incInboundMessageCount();
							}
							else
							{							    
								// multi-part message
								int k, l;
								List<InboundMessage> tmpList;
								InboundMessage listMsg;
								boolean found, duplicate;
								found = false;
								for (k = 0; k < this.mpMsgList.size(); k++)
								{
									// List of List<InboundMessage>
									tmpList = this.mpMsgList.get(k);
									listMsg = tmpList.get(0);
									// check if current message list is for this message
									if (listMsg.getMpRefNo() == msg.getMpRefNo())
									{
										duplicate = false;
										// check if the message is already in the message list
										for (l = 0; l < tmpList.size(); l++)
										{
											listMsg = tmpList.get(l);
											if (listMsg.getMpSeqNo() == msg.getMpSeqNo())
											{
												duplicate = true;
												break;
											}
										}
										if (!duplicate) tmpList.add(msg);
										found = true;
										break;
									}
								}
								if (!found)
								{
									// no existing list present for this message
									// add one
									tmpList = new ArrayList<InboundMessage>();
									tmpList.add(msg);
									this.mpMsgList.add(tmpList);
								}
							}
						}
						else if (pdu instanceof SmsStatusReportPdu)
						{
							StatusReportMessage msg;
							msg = new StatusReportMessage((SmsStatusReportPdu) pdu, memIndex, getATHandler().getStorageLocations().substring((ml * 2), (ml * 2) + 2));
							msg.setGatewayId(getGatewayId());
							msgList.add(msg);
							incInboundMessageCount();
						}
						else
						{
							// this theoretically will never happen, but it occasionally does with phones 
						    // like some Sony Ericssons (e.g. Z610i, SENT messages are included in this list)
						    
						    // instead of throwing a RuntimeException, just ignore any messages that are not of type
						        // SmsDeliveryPdu
						        // SmsStatusReportPdu
	                        getService().getLogger().logError("Wrong type of PDU detected: " + pdu.getClass().getName(), null, getGatewayId());
	                        getService().getLogger().logError("ERROR PDU: " + pduString, null, getGatewayId());
						}
					}
					catch (Exception e)
					{
						// PduFactory will give an exception
						// for PDUs it can't understand
						UnknownMessage msg;
						msg = new UnknownMessage(pduString, memIndex, getATHandler().getStorageLocations().substring((ml * 2), (ml * 2) + 2));
						msg.setGatewayId(getGatewayId());
						msgList.add(msg);
						incInboundMessageCount();
						getService().getLogger().logError("Unhandled SMS in inbox, skipping...", e, getGatewayId());
						getService().getLogger().logError("ERROR PDU: " + pduString, null, getGatewayId());
					}
					line = reader.readLine().trim();
					while (line.length() == 0)
						line = reader.readLine().trim();
					if ((limit > 0) && (msgList.size() == limit)) break;
				}
				reader.close();
			}
		}
		checkMpMsgList(msgList);
	}

	public String getMessageByIndex(int msgIndex) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		synchronized (getDriver().getSYNCCommander())
		{
			return getATHandler().getMessageByIndex(msgIndex);
		}
	}

	private void checkMpMsgList(Collection<InboundMessage> msgList)
	{
		int k, l, m;
		List<InboundMessage> tmpList;
		InboundMessage listMsg, mpMsg;
		boolean found;
		mpMsg = null;
		getService().getLogger().logDebug("CheckMpMsgList(): MAINLIST: " + this.mpMsgList.size(), null, getGatewayId());
		for (k = 0; k < this.mpMsgList.size(); k++)
		{
			tmpList = this.mpMsgList.get(k);
			getService().getLogger().logDebug("CheckMpMsgList(): SUBLIST[" + k + "]: " + tmpList.size(), null, getGatewayId());
			listMsg = tmpList.get(0);
			found = false;
			if (listMsg.getMpMaxNo() == tmpList.size())
			{
				found = true;
				for (l = 0; l < tmpList.size(); l++)
					for (m = 0; m < tmpList.size(); m++)
					{
						listMsg = tmpList.get(m);
						if (listMsg.getMpSeqNo() == (l + 1))
						{
							if (listMsg.getMpSeqNo() == 1)
							{
								mpMsg = listMsg;
								mpMsg.setMpMemIndex(mpMsg.getMemIndex());
							}
							else
							{
								if (mpMsg != null)
								{
									if (mpMsg instanceof InboundBinaryMessage)
									{
										InboundBinaryMessage mpMsgBinary = (InboundBinaryMessage) mpMsg;
										InboundBinaryMessage listMsgBinary = (InboundBinaryMessage) listMsg;
										mpMsgBinary.addDataBytes(listMsgBinary.getDataBytes());
									}
									else
									{
                                        // NEW
                                        String textToAdd = listMsg.getText();
                                        if (mpMsg.getEndsWithMultiChar())
                                        {
                                            // adjust first char of textToAdd
                                            getService().getLogger().logDebug("Adjusting dangling multi-char: "+textToAdd.charAt(0)+" --> "+PduUtils.getMultiCharFor(textToAdd.charAt(0)), null, getGatewayId()); 
                                            textToAdd = PduUtils.getMultiCharFor(textToAdd.charAt(0)) + textToAdd.substring(1);
                                        }
                                        mpMsg.setEndsWithMultiChar(listMsg.getEndsWithMultiChar());

										try
										{
											mpMsg.addText(textToAdd);
										}
										catch (UnsupportedEncodingException e)
										{
											// TODO: What to do with this?
										}
									}
									mpMsg.setMpSeqNo(listMsg.getMpSeqNo());
									mpMsg.setMpMemIndex(listMsg.getMemIndex());
									if (listMsg.getMpSeqNo() == listMsg.getMpMaxNo())
									{
										mpMsg.setMemIndex(-1);
										msgList.add(mpMsg);
										incInboundMessageCount();
										mpMsg = null;
									}
								}
							}
							break;
						}
					}
				tmpList.clear();
				tmpList = null;
			}
			if (found)
			{
				this.mpMsgList.remove(k);
				k--;
			}
		}
	}

	/**
	 * Sets the SIM PIN.
	 * 
	 * @param mySimPin
	 *            The SIM PIN.
	 */
	public void setSimPin(String mySimPin)
	{
		this.simPin = mySimPin;
	}

	/**
	 * Sets the SIM PIN 2.
	 * 
	 * @param mySimPin2
	 *            The SIM PIN 2.
	 */
	public void setSimPin2(String mySimPin2)
	{
		this.simPin2 = mySimPin2;
	}

	/**
	 * Returns the SIM PIN.
	 * 
	 * @return The SIM PIN.
	 */
	public String getSimPin()
	{
		return this.simPin;
	}

	/**
	 * Returns the SIM PIN 2.
	 * 
	 * @return The SIM PIN 2.
	 */
	public String getSimPin2()
	{
		return this.simPin2;
	}

	public AModemDriver getModemDriver()
	{
		return this.driver;
	}

	protected AATHandler getATHandler()
	{
		return this.atHandler;
	}

	/**
	 * Returns the Manufacturer string of the modem or phone.
	 * 
	 * @return The Manufacturer string.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 */
	public String getManufacturer() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		String response;
		synchronized (getDriver().getSYNCCommander())
		{
			response = getATHandler().getManufacturer();
			if (response.indexOf("ERROR") >= 0) return "N/A";
			response = response.replaceAll("\\s+OK\\s+", "");
			return response;
		}
	}

	/**
	 * Returns the Model string.
	 * 
	 * @return The Model string.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 */
	public String getModel() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		String response;
		synchronized (getDriver().getSYNCCommander())
		{
			response = getATHandler().getModel();
			if (response.indexOf("ERROR") >= 0) return "N/A";
			response = response.replaceAll("\\s+OK\\s+", "");
			return response;
		}
	}

	/**
	 * Returns the Serial Number of the modem.
	 * 
	 * @return The Serial Number.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 */
	public String getSerialNo() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		String response;
		synchronized (getDriver().getSYNCCommander())
		{
			response = getATHandler().getSerialNo();
			if (response.indexOf("ERROR") >= 0) return "N/A";
			response = response.replaceAll("\\s+OK\\s+", "");
			return response;
		}
	}

	/**
	 * Returns the IMSI (International Mobile Subscriber Identity) number.
	 * <p>
	 * This number is stored in the SIM. Since this number may be used for
	 * several illegal activities, the method is remarked. If you wish to see
	 * your IMSI, just uncomment the method.
	 * 
	 * @return The IMSI.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 */
	public String getImsi() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		if (getService().S.MASK_IMSI) return "** MASKED **";
		synchronized (getDriver().getSYNCCommander())
		{
			String response;
			response = getATHandler().getImsi();
			if (response.indexOf("ERROR") >= 0) return "N/A";
			response = response.replaceAll("\\s+OK\\s+", "");
			return response;
		}
	}

	/**
	 * Returns the modem's firmware version.
	 * 
	 * @return The modem's firmware version.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 */
	public String getSwVersion() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		String response;
		synchronized (getDriver().getSYNCCommander())
		{
			response = getATHandler().getSwVersion();
			if (response.indexOf("ERROR") >= 0) return "N/A";
			response = response.replaceAll("\\s+OK\\s+", "");
			return response;
		}
	}

	boolean getGprsStatus() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		synchronized (getDriver().getSYNCCommander())
		{
			return (getATHandler().getGprsStatus().matches("\\+CGATT[\\p{ASCII}]*1\\sOK\\s"));
		}
	}

	/**
	 * Returns the battery level (0-100).
	 * 
	 * @return The battery level.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 */
	public int getBatteryLevel() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		String response;
		synchronized (getDriver().getSYNCCommander())
		{
			response = getATHandler().getBatteryLevel();
			if (response.indexOf("ERROR") >= 0) return 0;
			Matcher m = Pattern.compile("\\+CBC: (\\d+),\\s*(\\d+)").matcher(response);
			if (m.find()) return Integer.parseInt(m.group(2));
			return 0;
		}
	}

	/**
	 * Returns the signal level (0-100). Although the number returned is 0-100,
	 * the actual signal level is a logarithmic value.
	 * 
	 * @return The signal level.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 */
	public int getSignalLevel() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		String response;
		StringTokenizer tokens;
		synchronized (getDriver().getSYNCCommander())
		{
			response = getATHandler().getSignalLevel();
			if (response.indexOf("ERROR") >= 0) return 0;
			response = response.replaceAll("\\s+OK\\s+", "");
			tokens = new StringTokenizer(response, ":,");
			tokens.nextToken();
			return (Integer.parseInt(tokens.nextToken().trim()) * 100 / 31);
		}
	}

	/**
	 * Returns the SMSC number used by SMSLib. If no SMSC number has been set
	 * with setSmscNumber() call, this method returns nothing.
	 * 
	 * @return The SMSC number.
	 * @see #setSmscNumber(String)
	 */
	public String getSmscNumber()
	{
		return this.smscNumber;
	}

	/**
	 * Sets the SMSC number used by SMSLib.
	 * <p>
	 * Note that in most cases, you will <b>not</b> need to call this method, as
	 * the modem knows the SMSC it should use by reading the SIM card. In rare
	 * cases when the modem/phone cannot read the SMSC from the SIM card or you
	 * would like to set a different SMSC than the default, you can use this
	 * method.
	 * 
	 * @param mySmscNumber
	 *            The SMSC number used from now on.
	 */
	public void setSmscNumber(String mySmscNumber)
	{
		this.smscNumber = mySmscNumber;
	}

	/**
	 * Returns the custom modem init string (if any).
	 * 
	 * @return the custom init string.
	 * @see #setCustomInitString(String)
	 */
	public String getCustomInitString()
	{
		return this.customInitString;
	}

	/**
	 * Sets the custom modem init string. The init string (if defined) is sent
	 * to the modem right before the SIM PIN check.
	 * 
	 * @param myCustomInitString
	 *            The custom init string.
	 * @see #getCustomInitString()
	 */
	public void setCustomInitString(String myCustomInitString)
	{
		this.customInitString = myCustomInitString;
	}

	protected AModemDriver getDriver()
	{
		return this.driver;
	}

	protected void setDriver(AModemDriver myDriver)
	{
		this.driver = myDriver;
	}

	protected AATHandler getAtHandler()
	{
		return this.atHandler;
	}

	protected void setAtHandler(AATHandler myAtHandler)
	{
		this.atHandler = myAtHandler;
	}

	protected String getModemDevice()
	{
		return this.modemDevice;
	}

	protected void setModemDevice(String myModemDevice)
	{
		this.modemDevice = myModemDevice;
	}

	protected int getModemParms()
	{
		return this.modemParms;
	}

	protected void setModemParms(int myModemParms)
	{
		this.modemParms = myModemParms;
	}
}
