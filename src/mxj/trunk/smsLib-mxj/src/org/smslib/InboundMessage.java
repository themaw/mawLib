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

package org.smslib;

import java.io.UnsupportedEncodingException;
import java.util.Date;

import org.ajwcc.pduUtils.gsm3040.PduUtils;
import org.ajwcc.pduUtils.gsm3040.SmsDeliveryPdu;

/**
 * Class representing an inbound sms message.
 */
public class InboundMessage extends Message
{
	private static final long serialVersionUID = 5506740746605374709L;

	/**
	 * Enumeration representing various message classes.
	 */
	public enum MessageClasses
	{
		/**
		 * Already-read messages.
		 */
		READ,
		/**
		 * Not-read messages.
		 */
		UNREAD,
		/**
		 * All messages, whether read or unread.
		 */
		ALL
	}

	private String originator;

	private int memIndex;

	private String memLocation;

	private int mpRefNo;

	private int mpMaxNo;

	private int mpSeqNo;

	private String mpMemIndex;

	protected String ud;

	protected String udh;

	public InboundMessage(Date date, String myOriginator, String text, int myMemIndex, String myMemLocation)
	{
		super(MessageTypes.INBOUND, date, text);
		this.originator = myOriginator;
		this.memIndex = myMemIndex;
		this.memLocation = myMemLocation;
		this.mpRefNo = 0;
		this.mpMaxNo = 0;
		this.mpSeqNo = 0;
		this.mpMemIndex = "";
	}

	public InboundMessage(MessageTypes type, int myMemIndex, String myMemLocation)
	{
		super(type, null, null);
		this.originator = "";
		this.memIndex = myMemIndex;
		this.memLocation = myMemLocation;
		this.mpRefNo = 0;
		this.mpMaxNo = 0;
		this.mpSeqNo = 0;
		this.mpMemIndex = "";
	}

	public InboundMessage(SmsDeliveryPdu pdu, int myMemIndex, String myMemLocation)
	{
		super(MessageTypes.INBOUND, null, null);
		this.memIndex = myMemIndex;
		this.memLocation = myMemLocation;
		this.mpRefNo = 0;
		this.mpMaxNo = 0;
		this.mpSeqNo = 0;
		this.mpMemIndex = "";
		int dcsEncoding = PduUtils.extractDcsEncoding(pdu.getDataCodingScheme());
		switch (dcsEncoding)
		{
			case PduUtils.DCS_ENCODING_7BIT:
				setEncoding(MessageEncodings.ENC7BIT);
				break;
			case PduUtils.DCS_ENCODING_8BIT:
				setEncoding(MessageEncodings.ENC8BIT);
				break;
			case PduUtils.DCS_ENCODING_UCS2:
				setEncoding(MessageEncodings.ENCUCS2);
				break;
			default:
				throw new RuntimeException("Unknown encoding value: " + dcsEncoding);
		}
		this.setOriginator(pdu.getAddress());
		this.setDate(pdu.getTimestamp());
		extractData(pdu);
		if (pdu.isConcatMessage())
		{
			this.setMpRefNo(pdu.getMpRefNo());
			this.setMpMaxNo(pdu.getMpMaxNo());
			this.setMpSeqNo(pdu.getMpSeqNo());
		}
		if (pdu.isPortedMessage())
		{
			this.setDstPort(pdu.getDestPort());
			this.setSrcPort(pdu.getSrcPort());
		}
		if (pdu.hasTpUdhi())
		{
			this.udh = PduUtils.bytesToPdu(pdu.getUDHData());
		}
		this.ud = PduUtils.bytesToPdu(pdu.getUserDataAsBytes());
		
	    // NEW
		if (getEncoding()==MessageEncodings.ENC7BIT)
		{
		    // check if the last byte of the udData is 1b
		        // but the septets need to be expanded
		    byte[] temp = PduUtils.encodedSeptetsToUnencodedSeptets(pdu.getUDData());
		    if (temp[temp.length-1]==0x1b)
		    {
		        endsWithMultiChar = true;
		    }
		}
	}

	// NEW
	private boolean endsWithMultiChar;
	
	public void setEndsWithMultiChar(boolean b)
	{
	    endsWithMultiChar = b;
	}
	
	public boolean getEndsWithMultiChar()
	{
	    return endsWithMultiChar;
	}

	/**
	 * Returns the originator of this message.
	 * 
	 * @return The originator of this message.
	 */
	public String getOriginator()
	{
		return this.originator;
	}

	void setOriginator(String myOriginator)
	{
		this.originator = myOriginator;
	}

	/**
	 * Returns the GSM Modem/Phone memory index from which this message was
	 * read.
	 * 
	 * @return The memory index.
	 * @see #getMemLocation()
	 */
	public int getMemIndex()
	{
		return this.memIndex;
	}

	public void setMemIndex(int myMemIndex)
	{
		this.memIndex = myMemIndex;
	}

	/**
	 * Returns the GSM Modem/Phone memory location from which this message was
	 * read.
	 * 
	 * @return The memory location identifier.
	 * @see #getMemIndex()
	 */
	public String getMemLocation()
	{
		return this.memLocation;
	}

	public void setMemLocation(String myMemLocation)
	{
		this.memLocation = myMemLocation;
	}

	public int getMpMaxNo()
	{
		return this.mpMaxNo;
	}

	public void setMpMaxNo(int myMpMaxNo)
	{
		this.mpMaxNo = myMpMaxNo;
	}

	public String getMpMemIndex()
	{
		return this.mpMemIndex;
	}

	public void setMpMemIndex(int myMpMemIndex)
	{
		this.mpMemIndex += (this.mpMemIndex.length() == 0 ? "" : ",") + myMpMemIndex;
	}

	public int getMpRefNo()
	{
		return this.mpRefNo;
	}

	public void setMpRefNo(int myMpRefNo)
	{
		this.mpRefNo = myMpRefNo;
	}

	public int getMpSeqNo()
	{
		return this.mpSeqNo;
	}

	public void setMpSeqNo(int myMpSeqNo)
	{
		this.mpSeqNo = myMpSeqNo;
	}

	@Override
	public String toString()
	{
		String str = "";
		str += "===============================================================================";
		str += "\n";
		str += "<< " + getClass().getSimpleName() + " >>";
		str += "\n";
		str += "-------------------------------------------------------------------------------";
		str += "\n";
		str += " Gateway Id: " + getGatewayId();
		str += "\n";
		str += " Encoding: " + (getEncoding() == MessageEncodings.ENC7BIT ? "7-bit" : (getEncoding() == MessageEncodings.ENC8BIT ? "8-bit" : "UCS2 (Unicode)"));
		str += "\n";
		str += " Date: " + getDate();
		str += "\n";
		if (this instanceof InboundBinaryMessage)
		{
			InboundBinaryMessage binaryMessage = (InboundBinaryMessage) this;
			if (binaryMessage.getDataBytes() != null)
			{
				String binaryString = PduUtils.bytesToPdu((binaryMessage).getDataBytes());
				str += " Binary: " + binaryString;
				str += "\n";
			}
			else
			{
				str += " Binary: null";
				str += "\n";
			}
		}
		else
		{
			str += " Text: " + getText();
			str += "\n";
			try
			{
				str += " PDU data: " + getPduUserData();
				str += "\n";
			}
			catch (Exception e)
			{
				str += " PDU data: <cannot extract properly, udh present>";
				str += "\n";
			}
		}
		str += " Originator: " + this.originator;
		str += "\n";
		if (this instanceof StatusReportMessage)
		{
			str += " Original Recipient: " + ((StatusReportMessage) this).getRecipient();
			str += "\n";
			str += " Delivery Status: " + ((StatusReportMessage) this).getStatus();
			str += "\n";
			str += " SMSC Ref No: " + ((StatusReportMessage) this).getRefNo();
			str += "\n";
		}
		str += " Memory Index: " + getMemIndex();
		str += "\n";
		str += " Multi-part Memory Index: " + getMpMemIndex();
		str += "\n";
		str += " Memory Location: " + getMemLocation();
		str += "\n";
		str += " Source / Destination Ports: " + getSrcPort() + " / " + getDstPort();
		str += "\n";
		str += "===============================================================================";
		str += "\n";
		return str;
	}

	protected void extractData(SmsDeliveryPdu pdu)
	{
		// binary messages belong in the InboundBinaryMessage subclass not here
		if (pdu.isBinary()) throw new RuntimeException("Trying to apply a binary pdu to an InboundMessage");
		this.setText(pdu.getDecodedText());
	}

	@Override
	public String getPduUserData()
	{
		if ((this.udh != null) && (getEncoding() == MessageEncodings.ENC7BIT)) { throw new RuntimeException("getPduUserData() not supported for 7-bit messages with UDH"); }
		return this.ud;
	}

	@Override
	public String getPduUserDataHeader()
	{
		// NOTE: when for a concat message
		// this will only return the UDH of the FIRST part of the
		// multi-part message since subsequent parts are added
		// via addText() or addDataBytes()
		return this.udh;
	}

	@Override
	public void addText(String s) throws UnsupportedEncodingException
	{
		super.addText(s);
		// NOTE: adjust stored ud data
		// only for UCS2 since multi-part 7-bit is not supported 
		// for the getPduUserData() and 8-bit encodings are handled 
		// in a different class
		if (getEncoding() == MessageEncodings.ENCUCS2)
		{
			this.ud = this.ud + PduUtils.bytesToPdu(s.getBytes("UTF-16BE"));
		}
	}
}
