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

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.smslib.GatewayException;
import org.smslib.InboundMessage;
import org.smslib.TimeoutException;
import org.smslib.AGateway.AsyncEvents;
import org.smslib.AGateway.GatewayStatuses;
import org.smslib.AGateway.Protocols;
import org.smslib.InboundMessage.MessageClasses;

import com.cycling74.max.MaxObject;

/**
 * Abstract implementation of a generic GSM modem driver.
 */
public abstract class AModemDriver// extends MaxObject // bakercp
{
	private static final String rxErrorWithCode = "\\s*[\\p{ASCII}]*\\s*\\+(CM[ES])\\s+ERROR: (\\d+)\\s";

	private static final String rxPlainError = "\\s*[\\p{ASCII}]*\\s*(ERROR|NO CARRIER|NO DIALTONE)\\s";

	private Object SYNC_Reader, SYNC_Commander, SYNC_InboundReader;

	private ModemGateway gateway;

	private boolean dataReceived;

	private volatile boolean connected;

	private boolean cnmiActivated;

	private CharQueue charQueue;

	private ModemReader modemReader;

	private KeepAlive keepAlive;

	private AsyncNotifier asyncNotifier;

	private AsyncMessageProcessor asyncMessageProcessor;

	private CNMIEmulatorProcessor cnmiEmulationProcessor;

	/**
	 * Code of last error
	 * 
	 * <pre>
	 *   -1 = empty or invalid response
	 *    0 = OK
	 * 5xxx = CME error xxx
	 * 6xxx = CMS error xxx
	 * 9000 = ERROR
	 * </pre>
	 */
	private int lastError;

	static int OK = 0;

	protected AModemDriver(ModemGateway myGateway, String deviceParms)
	{
		
		// bakercp
		//setName(myGateway.getGatewayId()); // name it

		setSYNCReader(new Object());
		setSYNCCommander(new Object());
		setSYNCInboundReader(new Object());
		setGateway(myGateway);
		setConnected(false);
		setDataReceived(false);
		setCnmiActivated(false);
		setCharQueue(new CharQueue());
	}

	protected abstract void connectPort() throws GatewayException, IOException, InterruptedException;

	protected abstract void disconnectPort() throws IOException, InterruptedException;

	protected abstract void clear() throws IOException;

	protected void connect() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		
		String response;
		synchronized (getSYNCCommander())
		{
			try
			{
				connectPort();
				setConnected(true);
				setKeepAlive(new KeepAlive());
				setModemReader(new ModemReader());
				setAsyncNotifier(new AsyncNotifier());
				setAsyncMessageProcessor(new AsyncMessageProcessor());
				clearBuffer();
				getGateway().getATHandler().reset();
				getGateway().getATHandler().sync();
				getGateway().getATHandler().echoOff();
				if ((getGateway().getCustomInitString() != null) && (getGateway().getCustomInitString().length() > 0))
				{
					write(getGateway().getCustomInitString() + "\r");
					getGateway().getATHandler().echoOff();
				}
				while (true)
				{
					response = getGateway().getATHandler().getSimStatus();
					while (response.indexOf("BUSY") >= 0)
					{
						getGateway().getService().getLogger().logDebug("SIM found busy, waiting...", null, getGateway().getGatewayId());
						Thread.sleep(getGateway().getService().S.AT_WAIT_SIMPIN);
						response = getGateway().getATHandler().getSimStatus();
					}
					if (response.indexOf("SIM PIN2") >= 0)
					{
						getGateway().getService().getLogger().logDebug("SIM requesting PIN2.", null, getGateway().getGatewayId());
						if ((getGateway().getSimPin2() == null) || (getGateway().getSimPin2().length() == 0)) throw new GatewayException("The GSM modem requires SIM PIN2 to operate.");
						if (!getGateway().getATHandler().enterPin(getGateway().getSimPin2())) throw new GatewayException("SIM PIN2 provided is not accepted by the GSM modem.");
						Thread.sleep(getGateway().getService().S.AT_WAIT_SIMPIN);
						continue;
					}
					else if (response.indexOf("SIM PIN") >= 0)
					{
						getGateway().getService().getLogger().logDebug("SIM requesting PIN.", null, getGateway().getGatewayId());
						if ((getGateway().getSimPin() == null) || (getGateway().getSimPin().length() == 0)) throw new GatewayException("The GSM modem requires SIM PIN to operate.");
						if (!getGateway().getATHandler().enterPin(getGateway().getSimPin())) throw new GatewayException("SIM PIN provided is not accepted by the GSM modem.");
						Thread.sleep(getGateway().getService().S.AT_WAIT_SIMPIN);
						continue;
					}
					else if (response.indexOf("READY") >= 0) break;
					else if (response.indexOf("OK") >= 0) break;
					else if (response.indexOf("ERROR") >= 0)
					{
						getGateway().getService().getLogger().logWarn("Erroneous CPIN response, proceeding with defaults.", null, getGateway().getGatewayId());
						break;
					}
					getGateway().getService().getLogger().logWarn("Cannot understand SIMPIN response: " + response + ", will wait for a while...", null, getGateway().getGatewayId());
					Thread.sleep(getGateway().getService().S.AT_WAIT_SIMPIN);
				}
				getGateway().getATHandler().echoOff();
				getGateway().getATHandler().init();
				getGateway().getATHandler().echoOff();
				waitForNetworkRegistration();
				getGateway().getATHandler().setVerboseErrors();
				if (getGateway().getATHandler().getStorageLocations().length() == 0)
				{
					try
					{
						getGateway().getATHandler().readStorageLocations();
						getGateway().getService().getLogger().logInfo("MEM: Storage Locations Found: " + getGateway().getATHandler().getStorageLocations(), null, getGateway().getGatewayId());
					}
					catch (Exception e)
					{
						getGateway().getATHandler().setStorageLocations("--");
						getGateway().getService().getLogger().logWarn("Storage locations could *not* be retrieved, will proceed with defaults.", e, getGateway().getGatewayId());
					}
				}
				if (!getGateway().getATHandler().setIndications())
				{
					getGateway().getService().getLogger().logWarn("Callback indications were *not* set succesfully!", null, getGateway().getGatewayId());
				}
				else
				{
					if (!"0".equals(getGateway().getATHandler().getIndications().getMode())) setCnmiActivated(true);
				}
				if (getGateway().getProtocol() == Protocols.PDU)
				{
					if (!getGateway().getATHandler().setPduProtocol()) throw new GatewayException("The GSM modem does not support the PDU protocol.");
				}
				else if (getGateway().getProtocol() == Protocols.TEXT)
				{
					if (!getGateway().getATHandler().setTextProtocol()) throw new GatewayException("The GSM modem does not support the TEXT protocol.");
				}
				setCnmiEmulationProcessor(new CNMIEmulatorProcessor());
			}
			catch (TimeoutException t)
			{
				// this is to prevent serial port from being held
				// when a timeout during initialization occurs
				try
				{
					disconnect();
				}
				catch (Exception e)
				{
					// Discard all here.
				}
				throw t;
			}
		}
	}

	protected void disconnect() throws IOException, InterruptedException
	{
		//deadlocking is still possible in this method
		//however it is nearly impossible, since keepAlive will
		//give other threads opportunity to either exit global "while"
		//or enter waiting state
		if (getKeepAlive() != null)
		{
			getGateway().getService().getLogger().logDebug("Trying to shutdown keepAlive thread...", null, getGateway().getGatewayId());
		}
		if (getAsyncNotifier() != null)
		{
			getGateway().getService().getLogger().logDebug("Trying to shutdown asyncNotifier thread...", null, getGateway().getGatewayId());
		}
		if (getAsyncMessageProcessor() != null)
		{
			getGateway().getService().getLogger().logDebug("Trying to shutdown asyncMessageProcessor thread...", null, getGateway().getGatewayId());
		}
		if (getModemReader() != null)
		{
			getGateway().getService().getLogger().logDebug("Trying to shutdown modemReader thread...", null, getGateway().getGatewayId());
		}
		if (getCnmiEmulationProcessor() != null)
		{
			getGateway().getService().getLogger().logDebug("Trying to shutdown syncMessageProcessor thread...", null, getGateway().getGatewayId());
		}
		setConnected(false);
		if (getKeepAlive() != null)
		{
			getKeepAlive().interrupt();
			getKeepAlive().join();
			setKeepAlive(null);
		}
		if (getAsyncNotifier() != null)
		{
			getAsyncNotifier().interrupt();
			getAsyncNotifier().join();
			setAsyncNotifier(null);
		}
		if (getAsyncMessageProcessor() != null)
		{
			getAsyncMessageProcessor().interrupt();
			getAsyncMessageProcessor().join();
			setAsyncMessageProcessor(null);
		}
		if (getCnmiEmulationProcessor() != null)
		{
			getCnmiEmulationProcessor().interrupt();
			getCnmiEmulationProcessor().join();
			setCnmiEmulationProcessor(null);
		}
		if (getModemReader() != null)
		{
			getModemReader().interrupt();
			getModemReader().join();
			setModemReader(null);
		}
		disconnectPort();
	}

	public abstract void write(char c) throws IOException;

	public abstract void write(byte[] s) throws IOException;

	protected abstract int read() throws IOException;

	protected abstract boolean portHasData() throws IOException;

	public boolean dataAvailable() throws InterruptedException
	{
		return (getCharQueue().peek() == -1 ? false : true);
	}

	public void write(String s) throws IOException
	{
		getGateway().getService().getLogger().logDebug("SEND :" + formatLog(new StringBuffer(s)), null, getGateway().getGatewayId());
		write(s.getBytes());
	}

	public void AddToQueue(String s)
	{
		for (int i = 0; i < s.length(); i++)
			getCharQueue().put((byte) s.charAt(i));
	}

	public String getResponse() throws GatewayException, TimeoutException, IOException
	{
		StringBuffer buffer;
		String response;
		byte c;
		boolean terminate;
		int i;
		String terminators[];
		setLastError(-1);
		terminators = getGateway().getATHandler().getTerminators();
		buffer = new StringBuffer(getGateway().getService().S.SERIAL_BUFFER_SIZE);
		try
		{
			while (true)
			{
				while ((getCharQueue().peek() == 0x0a) || (getCharQueue().peek() == 0x0d))
					getCharQueue().get();
				while (true)
				{
					c = getCharQueue().get();
					if (getGateway().getService().S.DEBUG_QUEUE) getGateway().getService().getLogger().logDebug("OUT READER QUEUE : " + (int) c + " / " + (char) c, null, getGateway().getGatewayId());
					if (c != 0x0a) buffer.append((char) c);
					else break;
				}
				if (buffer.charAt(buffer.length() - 1) != 0x0d) buffer.append((char) 0x0d);
				response = buffer.toString();
				terminate = false;
				for (i = 0; i < terminators.length; i++)
					if (response.matches(terminators[i]))
					{
						terminate = true;
						break;
					}
				if (terminate) break;
			}
			getGateway().getService().getLogger().logDebug("BUFFER: " + buffer, null, getGateway().getGatewayId());
			if (i >= terminators.length - 4)
			{
				AsyncEvents event = getGateway().getATHandler().processUnsolicitedEvents(buffer.toString());
				if ((event == AsyncEvents.INBOUNDMESSAGE) || (event == AsyncEvents.INBOUNDSTATUSREPORTMESSAGE) || (event == AsyncEvents.INBOUNDCALL)) getAsyncNotifier().setEvent(event, buffer.toString());
				return getResponse();
			}
			// Try to interpret error code
			if (response.matches(rxErrorWithCode))
			{
				Pattern p = Pattern.compile(rxErrorWithCode);
				Matcher m = p.matcher(response);
				if (m.find())
				{
					try
					{
						if (m.group(1).equals("CME"))
						{
							int code = Integer.parseInt(m.group(2));
							setLastError(5000 + code);
						}
						else if (m.group(1).equals("CMS"))
						{
							int code = Integer.parseInt(m.group(2));
							setLastError(6000 + code);
						}
						else throw new GatewayException("Invalid error response: " + m.group(1));
					}
					catch (NumberFormatException e)
					{
						getGateway().getService().getLogger().logDebug("Error on number conversion while interpreting response: ", null, getGateway().getGatewayId());
						throw new GatewayException("Cannot convert error code number.");
					}
				}
				else throw new GatewayException("Cannot match error code. Should never happen!");
			}
			else if (response.matches(rxPlainError)) setLastError(9000);
			else if (response.indexOf("OK") >= 0) setLastError(0);
			else setLastError(10000);
			getGateway().getService().getLogger().logDebug("RECV :" + formatLog(buffer), null, getGateway().getGatewayId());
		}
		catch (InterruptedException e)
		{
			getGateway().getService().getLogger().logWarn("GetResponse() Interrupted.", e, getGateway().getGatewayId());
		}
		catch (TimeoutException e)
		{
			getGateway().getService().getLogger().logDebug("Buffer contents on timeout: " + buffer, null, getGateway().getGatewayId());
			throw e;
		}
		return buffer.toString();
	}

	public void clearBuffer() throws IOException, InterruptedException
	{
		synchronized (getSYNCCommander())
		{
			getGateway().getService().getLogger().logDebug("clearBuffer() called.", null, getGateway().getGatewayId());
			Thread.sleep(getGateway().getService().S.SERIAL_CLEAR_WAIT);
			clear();
			getCharQueue().clear();
		}
	}

	protected boolean waitForNetworkRegistration() throws GatewayException, TimeoutException, IOException, InterruptedException
	{
		StringTokenizer tokens;
		String response;
		int answer;
		while (true)
		{
			response = getGateway().getATHandler().getNetworkRegistration();
			if (response.indexOf("ERROR") > 0) return false;
			response = response.replaceAll("\\s+OK\\s+", "");
			response = response.replaceAll("\\s+", "");
			response = response.replaceAll("\\+CREG:", "");
			tokens = new StringTokenizer(response, ",");
			tokens.nextToken();
			try
			{
				answer = Integer.parseInt(tokens.nextToken());
			}
			catch (Exception e)
			{
				answer = -1;
			}
			switch (answer)
			{
				case 0:
					getGateway().getService().getLogger().logError("GSM: Auto-registration disabled!", null, getGateway().getGatewayId());
					throw new GatewayException("GSM Network Auto-Registration disabled!");
				case 1:
					getGateway().getService().getLogger().logInfo("GSM: Registered to home network.", null, getGateway().getGatewayId());
					return true;
				case 2:
					getGateway().getService().getLogger().logWarn("GSM: Not registered, searching for network...", null, getGateway().getGatewayId());
					break;
				case 3:
					getGateway().getService().getLogger().logError("GSM: Network registration denied!", null, getGateway().getGatewayId());
					throw new GatewayException("GSM Network Registration denied!");
				case 4:
					getGateway().getService().getLogger().logError("GSM: Unknown registration error!", null, getGateway().getGatewayId());
					throw new GatewayException("GSM Network Registration error!");
				case 5:
					getGateway().getService().getLogger().logInfo("GSM: Registered to foreign network (roaming).", null, getGateway().getGatewayId());
					return true;
				case -1:
					getGateway().getService().getLogger().logInfo("GSM: Invalid CREG response.", null, getGateway().getGatewayId());
					throw new GatewayException("GSM: Invalid CREG response.");
			}
			Thread.sleep(getGateway().getService().S.AT_WAIT_NETWORK);
		}
	}

	private String formatLog(StringBuffer s)
	{
		StringBuffer response = new StringBuffer();
		int i;
		char c;
		for (i = 0; i < s.length(); i++)
		{
			c = s.charAt(i);
			switch (c)
			{
				case 13:
					response.append("(cr)");
					break;
				case 10:
					response.append("(lf)");
					break;
				case 9:
					response.append("(tab)");
					break;
				default:
					if ((c >= 32) && (c < 128))
					{
						response.append(c);
					}
					else
					{
						response.append("(" + (int) c + ")");
					}
					break;
			}
		}
		return response.toString();
	}

	private class CharQueue
	{
		byte[] buffer;

		int bufferStart, bufferEnd;

		public CharQueue()
		{
			this.buffer = null;
			this.bufferStart = 0;
			this.bufferEnd = 0;
		}

		public synchronized void put(byte c)
		{
			if (this.buffer == null) this.buffer = new byte[getGateway().getService().S.SERIAL_BUFFER_SIZE];
			this.buffer[this.bufferEnd] = c;
			this.bufferEnd++;
			if (this.bufferEnd == getGateway().getService().S.SERIAL_BUFFER_SIZE) this.bufferEnd = 0;
			if (getGateway().getService().S.DEBUG_QUEUE) getGateway().getService().getLogger().logDebug("IN READER QUEUE : " + (int) c + " / " + (char) c, null, getGateway().getGatewayId());
			notifyAll();
		}

		public synchronized void put(String s)
		{
			for (int i = 0; i < s.length(); i++)
				put((byte) s.charAt(i));
		}

		public synchronized byte get() throws TimeoutException, InterruptedException
		{
			byte c;
			if (this.buffer == null) this.buffer = new byte[getGateway().getService().S.SERIAL_BUFFER_SIZE];
			while (true)
			{
				try
				{
					if (this.bufferStart == this.bufferEnd) wait(getGateway().getService().S.SERIAL_TIMEOUT);
					if (this.bufferStart == this.bufferEnd) throw new TimeoutException("No response from device.");
					c = this.buffer[this.bufferStart];
					this.bufferStart++;
					if (this.bufferStart == getGateway().getService().S.SERIAL_BUFFER_SIZE) this.bufferStart = 0;
					return c;
				}
				catch (InterruptedException e)
				{
					if (getGateway().getStatus() == GatewayStatuses.RUNNING) getGateway().getService().getLogger().logWarn("Ignoring InterruptedException in Queue.get().", null, getGateway().getGatewayId());
					else
					{
						getGateway().getService().getLogger().logWarn("Re-throwing InterruptedException in Queue.get() - should be during shutdown...", null, getGateway().getGatewayId());
						throw new InterruptedException();
					}
				}
			}
		}

		public synchronized byte peek() throws InterruptedException
		{
			if (this.buffer == null) this.buffer = new byte[getGateway().getService().S.SERIAL_BUFFER_SIZE];
			while (true)
			{
				try
				{
					if (this.bufferStart == this.bufferEnd) wait(getGateway().getService().S.SERIAL_TIMEOUT);
					if (this.bufferStart == this.bufferEnd) return -1;
					return this.buffer[this.bufferStart];
				}
				catch (InterruptedException e)
				{
					if (getGateway().getStatus() == GatewayStatuses.RUNNING) getGateway().getService().getLogger().logWarn("Ignoring InterruptedException in Queue.peek().", e, getGateway().getGatewayId());
					else
					{
						getGateway().getService().getLogger().logWarn("Re-throwing InterruptedException in Queue.peek() - should be during shutdown...", e, getGateway().getGatewayId());
						throw new InterruptedException();
					}
				}
			}
		}

		public synchronized String peek(int sizeToRead)
		{
			int i, size;
			StringBuffer result;
			if (this.buffer == null) this.buffer = new byte[getGateway().getService().S.SERIAL_BUFFER_SIZE];
			size = sizeToRead;
			if (this.bufferStart == this.bufferEnd) return "";
			result = new StringBuffer(size);
			i = this.bufferStart;
			while (size > 0)
			{
				if ((this.buffer[i] != 0x0a) && (this.buffer[i] != 0x0d))
				{
					result.append((char) this.buffer[i]);
					size--;
				}
				i++;
				if (i == getGateway().getService().S.SERIAL_BUFFER_SIZE) i = 0;
				if (i == this.bufferEnd) break;
			}
			return result.toString();
		}

		public synchronized void clear()
		{
			this.bufferStart = 0;
			this.bufferEnd = 0;
		}

		public void dump()
		{
			int i;
			i = this.bufferStart;
			while (i < this.bufferEnd)
			{
				System.out.println(this.buffer[i] + " -> " + (char) this.buffer[i]);
				i++;
			}
		}
	}

	private class ModemReader extends Thread
	{
		public ModemReader()
		{
			setName("SMSlib-ModemReader-" + getGateway().getGatewayId());
			setDaemon(true);
			start();
			getGateway().getService().getLogger().logDebug("ModemReader thread started.", null, getGateway().getGatewayId());
		}

		@Override
		public void run()
		{
			int c;
			String data;
			while (isConnected())
			{
				try
				{
					synchronized (getSYNCReader())
					{
						if (!isDataReceived()) getSYNCReader().wait();
						if (!isConnected()) break;
						c = read();
						while (c != -1)
						{
							getCharQueue().put((byte) c);
							if (!portHasData()) break;
							c = read();
						}
						setDataReceived(false);
					}
					data = getCharQueue().peek(6);
					for (int i = 0; i < getGateway().getATHandler().getUnsolicitedResponses().length; i++)
						if (data.indexOf(getGateway().getATHandler().getUnsolicitedResponse(i)) >= 0)
						{
							getKeepAlive().interrupt();
							break;
						}
				}
				catch (InterruptedException e)
				{
					if (!isConnected()) break;
				}
				catch (Exception e)
				{
					e.printStackTrace();
				}
			}
			getGateway().getService().getLogger().logDebug("ModemReader thread ended.", null, getGateway().getGatewayId());
		}
	}

	private class KeepAlive extends Thread
	{
		public KeepAlive()
		{
			setPriority(MIN_PRIORITY);
			setName("SMSlib-KeepAlive : " + getGateway().getGatewayId());
			setDaemon(true);
			start();
			getGateway().getService().getLogger().logDebug("ModemDriver: KeepAlive thread started.", null, getGateway().getGatewayId());
		}

		@Override
		public void run()
		{
			while (true)
			{
				try
				{
					try
					{
						sleep(getGateway().getService().S.SERIAL_KEEPALIVE_INTERVAL);
					}
					catch (InterruptedException e)
					{
						// Swallow this...
					}
					if (!isConnected()) break;
					if (getGateway().getStatus() == GatewayStatuses.RUNNING)
					{
						synchronized (getSYNCCommander())
						{
							if (!isConnected()) break;
							getGateway().getService().getLogger().logDebug("** KeepAlive START **", null, getGateway().getGatewayId());
							try
							{
								if (!getGateway().getATHandler().isAlive()) getGateway().setStatus(GatewayStatuses.RESTART);
							}
							catch (Exception e)
							{
								getGateway().setStatus(GatewayStatuses.RESTART);
							}
							getGateway().getService().getLogger().logDebug("** KeepAlive END **", null, getGateway().getGatewayId());
						}
					}
				}
				catch (Exception e)
				{
					getGateway().getService().getLogger().logError("ModemDriver: KeepAlive Error.", e, getGateway().getGatewayId());
					getGateway().setStatus(GatewayStatuses.RESTART);
				}
			}
			getGateway().getService().getLogger().logDebug("ModemDriver: KeepAlive thread ended.", null, getGateway().getGatewayId());
		}
	}

	private class AsyncNotifier extends Thread
	{
		class Event
		{
			AsyncEvents event;

			String response;

			public Event(AsyncEvents myEvent, String myResponse)
			{
				this.event = myEvent;
				this.response = myResponse;
			}

			@Override
			public String toString()
			{
				return "Event: " + this.event + " / Response: " + this.response;
			}
		}

		private BlockingQueue<Event> eventQueue;

		private Object SYNC;

		public AsyncNotifier()
		{
			this.SYNC = new Object();
			this.eventQueue = new LinkedBlockingQueue<Event>();
			setPriority(MIN_PRIORITY);
			setName("SMSLib-AsyncNotifier : " + getGateway().getGatewayId());
			setDaemon(true);
			start();
			getGateway().getService().getLogger().logDebug("AsyncNotifier thread started.", null, getGateway().getGatewayId());
		}

		protected void setEvent(AsyncEvents event, String response)
		{
			synchronized (this.SYNC)
			{
				Event ev = new Event(event, response);
				getGateway().getService().getLogger().logDebug("Storing AsyncEvent: " + ev, null, getGateway().getGatewayId());
				this.eventQueue.add(ev);
				this.SYNC.notify();
			}
		}

		protected String getMemLoc(String indication)
		{
			Pattern p = Pattern.compile("\\+?\"\\S+\"");
			Matcher m = p.matcher(indication);
			if (m.find()) return indication.substring(m.start(), m.end()).replaceAll("\"", "");
			return "";
		}

		protected int getMemIndex(String indication)
		{
			Pattern p = Pattern.compile("\\+?\\d+");
			Matcher m = p.matcher(indication);
			if (m.find()) return Integer.parseInt(indication.substring(m.start(), m.end()).replaceAll("\"", ""));
			return -1;
		}

		protected String getOriginator(String indication)
		{
			Pattern p = Pattern.compile("\\+?\"\\S+\"");
			Matcher m = p.matcher(indication);
			if (m.find()) return indication.substring(m.start(), m.end()).replaceAll("\"", "");
			return "";
		}

		@SuppressWarnings("deprecation")
		@Override
		public void run()
		{
			String response;
			Event event;
			while (isConnected())
			{
				try
				{
					event = this.eventQueue.take();
					getGateway().getService().getLogger().logDebug("Processing AsyncEvent: " + event, null, getGateway().getGatewayId());
					if (event.event == AsyncEvents.INBOUNDMESSAGE)
					{
						getGateway().getService().getLogger().logDebug("Inbound message detected!", null, getGateway().getGatewayId());
						event.event = AsyncEvents.NOTHING;
						response = event.response;
						getAsyncMessageProcessor().setProcess();
						//If SMS indication happened even it wasn't set before - set it to 'true' to
						//prevent collision of processing inbound messages by syncMessageProcessor
						if (!isCnmiActivated()) setCnmiActivated(true);
					}
					else if (event.event == AsyncEvents.INBOUNDSTATUSREPORTMESSAGE)
					{
						getGateway().getService().getLogger().logDebug("Inbound status report message detected!", null, getGateway().getGatewayId());
						event.event = AsyncEvents.NOTHING;
						response = event.response;
						getAsyncMessageProcessor().setProcess();
					}
					else if (event.event == AsyncEvents.INBOUNDCALL)
					{
						getGateway().getService().getLogger().logDebug("Inbound call detected!", null, getGateway().getGatewayId());
						event.event = AsyncEvents.NOTHING;
						synchronized (getSYNCCommander())
						{
							getGateway().getATHandler().switchToCmdMode();
							getGateway().getModemDriver().write("ATH\r");
							getGateway().getModemDriver().getResponse();
							response = event.response;
						}
						if (getGateway().getCallNotification() != null) getGateway().getCallNotification().process(getGateway().getGatewayId(), getOriginator(response));
						if (getGateway().getService().getCallNotification() != null) getGateway().getService().getCallNotification().process(getGateway().getGatewayId(), getOriginator(response));
					}
				}
				catch (InterruptedException e)
				{
					if (!isConnected()) break;
				}
				catch (GatewayException e)
				{
					// Swallow this...
				}
				catch (IOException e)
				{
					// Swallow this...
				}
				catch (TimeoutException e)
				{
					// Swallow this...
				}
			}
			getGateway().getService().getLogger().logDebug("AsyncNotifier thread ended.", null, getGateway().getGatewayId());
		}
	}

	private class AsyncMessageProcessor extends Thread
	{
		private List<InboundMessage> msgList;

		private Object SYNC;

		private boolean process;

		public AsyncMessageProcessor()
		{
			this.msgList = new ArrayList<InboundMessage>();
			this.SYNC = new Object();
			this.process = false;
			setPriority(MAX_PRIORITY);
			setName("SMSLib-AsyncMessageProcessor : " + getGateway().getGatewayId());
			setDaemon(true);
			start();
			getGateway().getService().getLogger().logDebug("AsyncMessageProcessor thread started.", null, getGateway().getGatewayId());
		}

		public void setProcess()
		{
			synchronized (this.SYNC)
			{
				if (this.process) return;
				this.process = true;
				this.SYNC.notify();
			}
		}

		@SuppressWarnings("deprecation")
		@Override
		public void run()
		{
			while (isConnected())
			{
				try
				{
					synchronized (this.SYNC)
					{
						if (!this.process)
						{
							this.SYNC.wait();
							if (!isConnected()) break;
						}
					}
					if ((getGateway().getInboundNotification() != null) || (getGateway().getService().getInboundNotification() != null))
					{
						synchronized (getSYNCInboundReader())
						{
							getGateway().readMessages(this.msgList, MessageClasses.ALL);
							for (InboundMessage msg : this.msgList)
							{
								switch (msg.getType())
								{
									case INBOUND:
									case STATUSREPORT:
										if (getGateway().getInboundNotification() != null) getGateway().getInboundNotification().process(getGateway().getGatewayId(), msg.getType(), msg);
										if (getGateway().getService().getInboundNotification() != null) getGateway().getService().getInboundNotification().process(getGateway().getGatewayId(), msg.getType(), msg);
										break;
									default:
										break;
								}
							}
						}
					}
					this.msgList.clear();
					this.process = false;
				}
				catch (InterruptedException e)
				{
					if (!isConnected()) break;
				}
				catch (GatewayException e)
				{
					// Swallow this...
				}
				catch (IOException e)
				{
					// Swallow this...
				}
				catch (TimeoutException e)
				{
					// Swallow this...
				}
			}
			getGateway().getService().getLogger().logDebug("AsyncMessageProcessor thread ended.", null, getGateway().getGatewayId());
		}
	}

	private class CNMIEmulatorProcessor extends Thread
	{
		private List<InboundMessage> msgList;

		public CNMIEmulatorProcessor()
		{
			this.msgList = new ArrayList<InboundMessage>();
			setName("SMSLib-CNMIEmulator : " + getGateway().getGatewayId());
			start();
			getGateway().getService().getLogger().logDebug("CNMIEmulatorProcessor thread started.", null, getGateway().getGatewayId());
		}

		@Override
		public void run()
		{
			//messages are forced to be read at least once during startup. After that messages are processed
			//by async or sync threads depending on smsIndications value
			boolean firstRun = true;
			//Wait a bit until gateway is up and running...
			while (getGateway().getStatus() != GatewayStatuses.RUNNING)
			{
				try
				{
					Thread.sleep(getGateway().getService().S.SYNC_MSG_PROC_INTERVAL / 10);
				}
				catch (InterruptedException e)
				{
					break;
				}
			}
			while (isConnected())
			{
				try
				{
					if (firstRun || !isCnmiActivated())
					{
						firstRun = false;
						if ((getGateway().getInboundNotification() != null) || (getGateway().getService().getInboundNotification() != null))
						{
							synchronized (getSYNCInboundReader())
							{
								getGateway().readMessages(this.msgList, MessageClasses.ALL);
								for (InboundMessage msg : this.msgList)
								{
									switch (msg.getType())
									{
										case INBOUND:
										case STATUSREPORT:
											if (getGateway().getInboundNotification() != null) getGateway().getInboundNotification().process(getGateway().getGatewayId(), msg.getType(), msg);
											if (getGateway().getService().getInboundNotification() != null) getGateway().getService().getInboundNotification().process(getGateway().getGatewayId(), msg.getType(), msg);
											break;
										default:
											break;
									}
								}
							}
						}
					}
					this.msgList.clear();
					Thread.sleep(getGateway().getService().S.SYNC_MSG_PROC_INTERVAL);
					if (!isConnected()) break;
				}
				catch (InterruptedException e)
				{
					if (!isConnected()) break;
				}
				catch (GatewayException e)
				{
					// Swallow this...
				}
				catch (IOException e)
				{
					// Swallow this...
				}
				catch (TimeoutException e)
				{
					// Swallow this...
				}
			}
			getGateway().getService().getLogger().logDebug("CNMIEmulatorProcessor thread ended.", null, getGateway().getGatewayId());
		}
	}

	void setLastError(int myLastError)
	{
		this.lastError = myLastError;
	}

	public int getLastError()
	{
		return this.lastError;
	}

	public String getLastErrorText()
	{
		if (getLastError() == 0) return "OK";
		else if (getLastError() == -1) return "Invalid or empty response";
		else if ((getLastError() / 1000) == 5) return "CME Error " + (getLastError() % 1000);
		else if ((getLastError() / 1000) == 6) return "CMS Error " + (getLastError() % 1000);
		else return "Error: unknown";
	}

	public boolean isOk()
	{
		return (getLastError() == OK);
	}

	protected ModemGateway getGateway()
	{
		return this.gateway;
	}

	protected void setGateway(ModemGateway myGateway)
	{
		this.gateway = myGateway;
	}

	protected boolean isConnected()
	{
		return this.connected;
	}

	protected void setConnected(boolean myConnected)
	{
		this.connected = myConnected;
	}

	protected boolean isDataReceived()
	{
		return this.dataReceived;
	}

	protected void setDataReceived(boolean myDataReceived)
	{
		this.dataReceived = myDataReceived;
	}

	protected boolean isCnmiActivated()
	{
		return this.cnmiActivated;
	}

	protected void setCnmiActivated(boolean myCnmiActivated)
	{
		this.cnmiActivated = myCnmiActivated;
	}

	protected CharQueue getCharQueue()
	{
		return this.charQueue;
	}

	protected void setCharQueue(CharQueue myCharQueue)
	{
		this.charQueue = myCharQueue;
	}

	protected Object getSYNCReader()
	{
		return this.SYNC_Reader;
	}

	protected void setSYNCReader(Object reader)
	{
		this.SYNC_Reader = reader;
	}

	protected Object getSYNCCommander()
	{
		return this.SYNC_Commander;
	}

	protected void setSYNCCommander(Object commander)
	{
		this.SYNC_Commander = commander;
	}

	protected Object getSYNCInboundReader()
	{
		return this.SYNC_InboundReader;
	}

	protected void setSYNCInboundReader(Object inbMessage)
	{
		this.SYNC_InboundReader = inbMessage;
	}

	protected KeepAlive getKeepAlive()
	{
		return this.keepAlive;
	}

	protected void setKeepAlive(KeepAlive myKeepAlive)
	{
		this.keepAlive = myKeepAlive;
	}

	protected AsyncNotifier getAsyncNotifier()
	{
		return this.asyncNotifier;
	}

	protected void setAsyncNotifier(AsyncNotifier myAsyncNotifier)
	{
		this.asyncNotifier = myAsyncNotifier;
	}

	protected AsyncMessageProcessor getAsyncMessageProcessor()
	{
		return this.asyncMessageProcessor;
	}

	protected void setAsyncMessageProcessor(AsyncMessageProcessor myAsyncMessageProcessor)
	{
		this.asyncMessageProcessor = myAsyncMessageProcessor;
	}

	protected CNMIEmulatorProcessor getCnmiEmulationProcessor()
	{
		return this.cnmiEmulationProcessor;
	}

	protected void setCnmiEmulationProcessor(CNMIEmulatorProcessor myCnmiEmulationProcessor)
	{
		this.cnmiEmulationProcessor = myCnmiEmulationProcessor;
	}

	protected ModemReader getModemReader()
	{
		return this.modemReader;
	}

	protected void setModemReader(ModemReader myModemReader)
	{
		this.modemReader = myModemReader;
	}
}
