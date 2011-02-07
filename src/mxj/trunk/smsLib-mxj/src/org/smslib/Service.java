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

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Queue;

import org.smslib.AGateway.GatewayStatuses;
import org.smslib.InboundMessage.MessageClasses;
import org.smslib.OutboundMessage.FailureCauses;
import org.smslib.OutboundMessage.MessageStatuses;
import org.smslib.balancing.LoadBalancer;
import org.smslib.balancing.RoundRobinLoadBalancer;
import org.smslib.helper.Logger;
import org.smslib.routing.Router;

/**
 * This is main library class. Your primary interface with SMSLib is via methods
 * defined in this class.
 */
public class Service
{
	private Logger logger;

	private List<AGateway> gatewayList;

	private Router router;

	private LoadBalancer loadBalancer;

	private WatchDog watchDog;

	private IInboundMessageNotification inboundNotification;

	private IOutboundMessageNotification outboundNotification;

	private ICallNotification callNotification;

	private IGatewayStatusNotification gatewayStatusNotification;

	private Queue<OutboundMessage> reorderMessageQueue;

	private long startMillis;

	/**
	 * Configuration settings.
	 * 
	 * @see Settings
	 */
	public Settings S;

	/**
	 * Default Service constructor. Will set SMSLib to use its own logger.
	 */
	public Service()
	{
		this.S = new Settings();
		this.logger = new Logger(this.S);
		initializeService();
	}

	/**
	 * Service constructor. Will set SMSLib to use the provided log4j logger.
	 * 
	 * @param myLogger
	 *            A ready Apache log4j object to use.
	 */
	public Service(org.apache.log4j.Logger myLogger)
	{
		this.S = new Settings();
		this.logger = new Logger(myLogger);
		initializeService();
	}

	protected void initializeService()
	{
		this.startMillis = System.currentTimeMillis();
		listSystemInformation();
		this.gatewayList = new ArrayList<AGateway>();
		this.reorderMessageQueue = new PriorityQueue<OutboundMessage>(50, new Comparator<OutboundMessage>()
		{
			public int compare(OutboundMessage x, OutboundMessage y)
			{
				int comp = x.getPriority() - y.getPriority();
				if (comp == 0) comp = x.getDate().compareTo(y.getDate());
				return comp;
			}
		});
		setRouter(new Router(this));
		setLoadBalancer(new RoundRobinLoadBalancer(this));
	}

	private void listSystemInformation()
	{
		getLogger().logInfo(Library.getLibraryDescription(), null, null);
		getLogger().logInfo("Version: " + Library.getLibraryVersion(), null, null);
		getLogger().logInfo("JRE Version: " + System.getProperty("java.version"), null, null);
		getLogger().logInfo("JRE Impl Version: " + System.getProperty("java.vm.version"), null, null);
		getLogger().logInfo("O/S: " + System.getProperty("os.name") + " / " + System.getProperty("os.arch") + " / " + System.getProperty("os.version"), null, null);
	}

	/**
	 * Returns the logger used by SMSLib.
	 * 
	 * @return The logger in use.
	 */
	public Logger getLogger()
	{
		return this.logger;
	}

	/**
	 * Adds a gateway to the list of gateways managed by the Service class.
	 * 
	 * @param gateway
	 *            The gateway to be added.
	 * @see #getGateways()
	 */
	public void addGateway(AGateway gateway)
	{
		synchronized (getGateways())
		{
			gateway.setService(this);
			getGateways().add(gateway);
		}
	}

	/**
	 * Initializes all gateways. This should be the first call before you use
	 * the Service class for sending/receiving messages. The call will try to
	 * start all defined gateways.
	 * 
	 * @throws SMSLibException
	 *             No Gateways are defined.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 * @see #stopService()
	 */
	public synchronized void startService() throws SMSLibException, TimeoutException, GatewayException, IOException, InterruptedException
	{
		startService(true);
	}

	/**
	 * Initializes all gateways. This should be the first call before you use
	 * the Service class for sending/receiving messages. The call will try to
	 * start all or some of the defined gateways, depending on the parameter.
	 * 
	 * @param startAll
	 *            True if it is imperative that all defined gateways start
	 *            without errors. False if some gateways are allowed to fail
	 *            during startup.
	 * @throws SMSLibException
	 *             No Gateways are defined.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 * @see #stopService()
	 */
	public synchronized void startService(boolean startAll) throws SMSLibException, TimeoutException, GatewayException, IOException, InterruptedException
	{
		class ExceptionPair
		{
			public Throwable e;

			public AGateway src;
		}
		class Starter extends Thread
		{
			AGateway gateway;

			List<ExceptionPair> eList;

			List<AGateway> gList;

			public Starter(AGateway myGateway, List<ExceptionPair> myEList, List<AGateway> myGList)
			{
				this.gateway = myGateway;
				this.eList = myEList;
				this.gList = myGList;
			}

			@Override
			public void run()
			{
				try
				{
					this.gateway.startGateway();
					this.gList.add(this.gateway);
				}
				catch (Exception e)
				{
					ExceptionPair exc = new ExceptionPair();
					exc.e = e;
					exc.src = this.gateway;
					this.eList.add(exc);
				}
			}
		}
		this.watchDog = new WatchDog();
		if (this.S.CONCURRENT_GATEWAY_START)
		{
			List<ExceptionPair> eList;
			List<AGateway> gList;
			eList = new LinkedList<ExceptionPair>();
			gList = new LinkedList<AGateway>();
			synchronized (getGateways())
			{
				if (getGateways().size() == 0) throw new SMSLibException("No gateways are defined.");
				for (AGateway gateway : getGateways())
					new Starter(gateway, eList, gList).start();
				while ((gList.size() != getGateways().size()) && (eList.size() == 0))
					Thread.sleep(1000);
				for (ExceptionPair e : eList)
					e.src.setStatus(GatewayStatuses.RESTART);
				if (startAll)
				{
					if (eList.size() != 0)
					{
						ExceptionPair e = eList.get(0);
						if (e.e instanceof TimeoutException) throw (TimeoutException) e.e;
						if (e.e instanceof GatewayException) throw (GatewayException) e.e;
						if (e.e instanceof SMSLibException) throw (SMSLibException) e.e;
						if (e.e instanceof IOException) throw (IOException) e.e;
						if (e.e instanceof InterruptedException) throw (InterruptedException) e.e;
					}
					else
					{
						eList.clear();
						gList.clear();
					}
				}
			}
		}
		else
		{
			synchronized (getGateways())
			{
				if (getGateways().size() == 0) throw new SMSLibException("No gateways are defined.");
				for (AGateway gateway : getGateways())
					gateway.startGateway();
			}
		}
	}

	/**
	 * Stops all gateways - does not remove them from Service's internal list.
	 * Once stopped, all SMSLib operations will fail. You need to start the
	 * gateways again before proceeding.
	 * 
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 * @see #startService()
	 */
	public synchronized void stopService() throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		if (this.watchDog != null)
		{
			this.watchDog.interrupt();
			this.watchDog.join(30000);
		}
		synchronized (getGateways())
		{
			for (AGateway gateway : getGateways())
				gateway.stopGateway();
		}
	}

	/**
	 * Reads inbound messages from ALL gateways with the Inbound attribute set.
	 * When successful, the message list will contain all messages read.
	 * 
	 * @param msgList
	 *            A (probably empty) list that will be populated with Inbound
	 *            messages read.
	 * @param msgClass
	 *            Filtering: Class of messages that need to be read.
	 * @return The number of messages read.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 * @see MessageClasses
	 */
	public int readMessages(Collection<InboundMessage> msgList, MessageClasses msgClass) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		synchronized (getGateways())
		{
			for (AGateway gateway : getGateways())
			{
				if (gateway.isInbound())
				{
					try
					{
						readMessages(msgList, msgClass, gateway);
					}
					catch (TimeoutException e)
					{
						getLogger().logWarn("readMessages(): Gateway " + gateway.getGatewayId() + " does not respond, marking for restart.", null, null);
						gateway.setStatus(GatewayStatuses.RESTART);
					}
					catch (IOException e)
					{
						getLogger().logWarn("readMessages(): Gateway " + gateway.getGatewayId() + " throws IO errors, marking for restart.", null, null);
						gateway.setStatus(GatewayStatuses.RESTART);
					}
				}
			}
		}
		return msgList.size();
	}

	/**
	 * Reads inbound messages from the SPECIFIC gateway. When successful, the
	 * message list will contain all messages read.
	 * 
	 * @param msgList
	 *            A (probably empty) list that will be populated with Inbound
	 *            messages read.
	 * @param msgClass
	 *            Filtering: Class of messages that need to be read.
	 * @param gatewayId
	 *            The identifier of the gateway from which to read messages.
	 * @return The number of messages read.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 * @see MessageClasses
	 * @see AGateway
	 */
	public int readMessages(Collection<InboundMessage> msgList, MessageClasses msgClass, String gatewayId) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		synchronized (getGateways())
		{
			AGateway gateway = findGateway(gatewayId);
			if ((gateway != null) && (gateway.isInbound()))
			{
				try
				{
					readMessages(msgList, msgClass, gateway);
				}
				catch (TimeoutException e)
				{
					getLogger().logWarn("readMessages(): Gateway " + gateway.getGatewayId() + " does not respond, marking for restart.", null, null);
					gateway.setStatus(GatewayStatuses.RESTART);
				}
				catch (IOException e)
				{
					getLogger().logWarn("readMessages(): Gateway " + gateway.getGatewayId() + " throws IO errors, marking for restart.", null, null);
					gateway.setStatus(GatewayStatuses.RESTART);
				}
			}
		}
		return msgList.size();
	}

	/**
	 * Reads inbound messages from the SPECIFIC gateway. When successful, the
	 * message list will contain all messages read.
	 * 
	 * @param msgList
	 *            A (probably empty) list that will be populated with inbound
	 *            messages read.
	 * @param msgClass
	 *            Filtering: Class of messages that need to be read.
	 * @param gateway
	 *            The gateway object from which to read messages.
	 * @return The number of messages read.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 * @see MessageClasses
	 * @see AGateway
	 */
	public int readMessages(Collection<InboundMessage> msgList, MessageClasses msgClass, AGateway gateway) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		synchronized (getGateways())
		{
			try
			{
				gateway.readMessages(msgList, msgClass);
			}
			catch (TimeoutException e)
			{
				getLogger().logWarn("readMessages(): Gateway " + gateway.getGatewayId() + " does not respond, marking for restart.", null, null);
				gateway.setStatus(GatewayStatuses.RESTART);
			}
			catch (IOException e)
			{
				getLogger().logWarn("readMessages(): Gateway " + gateway.getGatewayId() + " throws IO errors, marking for restart.", null, null);
				gateway.setStatus(GatewayStatuses.RESTART);
			}
		}
		return msgList.size();
	}

	/**
	 * Reads a specific gateway for a message matching the given Memory Location
	 * and Memory Index.
	 * <p>
	 * This is a "dummy" approach. It does not implement the CGMR command,
	 * rather it reads all messages and searches for a match.
	 * 
	 * @param gatewayId
	 *            The Gateway ID of the gateway to read from.
	 * @param memLoc
	 *            The memory location string.
	 * @param memIndex
	 *            The memory index.
	 * @return The message read. Null if no relevant message is found or if the
	 *         Gateway ID given is invalid.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 */
	public InboundMessage readMessage(String gatewayId, String memLoc, int memIndex) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		InboundMessage msg = null;
		synchronized (getGateways())
		{
			AGateway gateway = findGateway(gatewayId);
			if ((gateway != null) && (gateway.isInbound()))
			{
				try
				{
					msg = gateway.readMessage(memLoc, memIndex);
				}
				catch (TimeoutException e)
				{
					getLogger().logWarn("readMessages(): Gateway " + gateway.getGatewayId() + " does not respond, marking for restart.", null, null);
					gateway.setStatus(GatewayStatuses.RESTART);
				}
				catch (IOException e)
				{
					getLogger().logWarn("readMessages(): Gateway " + gateway.getGatewayId() + " throws IO errors, marking for restart.", null, null);
					gateway.setStatus(GatewayStatuses.RESTART);
				}
			}
		}
		return msg;
	}

	/**
	 * Sends a single message. The following logic is applied in order for
	 * SMSLib to decide from which gateway it will send the message:<br>
	 * 1. If the message holds gateway information (member field "gatewayId"),
	 * SMSLib will try to send it from that gateway.<br>
	 * 2. If the message does not hold gateway information (member field
	 * "gatewayId" is empty or "*") then if router and load balancer is defined,
	 * then message is processed by these classes.<br>
	 * 3. Otherwise the method selects the first outbound-capable gateway
	 * defined and sends the message from it.<br>
	 * The method blocks until the message is actually sent (synchronous
	 * operation).
	 * 
	 * @param msg
	 *            An OutboundMessage object.
	 * @return True if the message is sent.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 * @see #queueMessage(OutboundMessage)
	 */
	public boolean sendMessage(OutboundMessage msg) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		synchronized (getGateways())
		{
			AGateway gateway = routeMessage(msg);
			if (gateway != null)
			{
				try
				{
					return gateway.sendMessage(msg);
				}
				catch (TimeoutException e)
				{
					getLogger().logWarn("sendMessage(): Gateway " + gateway.getGatewayId() + " does not respond, marking for restart.", null, null);
					gateway.setStatus(GatewayStatuses.RESTART);
					msg.setMessageStatus(MessageStatuses.FAILED);
					msg.setFailureCause(FailureCauses.GATEWAY_FAILURE);
					return false;
				}
				catch (IOException e)
				{
					getLogger().logWarn("sendMessage(): Gateway " + gateway.getGatewayId() + " throws IO errors, marking for restart.", null, null);
					gateway.setStatus(GatewayStatuses.RESTART);
					msg.setMessageStatus(MessageStatuses.FAILED);
					msg.setFailureCause(FailureCauses.GATEWAY_FAILURE);
					return false;
				}
			}
			return false;
		}
	}

	/**
	 * Sends a single message from the specified gateway.
	 * 
	 * @param msg
	 *            An OutboundMessage object.
	 * @param gatewayId
	 *            The id of the gateway that will be used for sending.
	 * @return True if the message is sent.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 * @see #sendMessage(OutboundMessage)
	 */
	public boolean sendMessage(OutboundMessage msg, String gatewayId) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		msg.setGatewayId(gatewayId);
		return sendMessage(msg);
	}

	/**
	 * Sends a list of messages.
	 * 
	 * @param msgList
	 *            A list of OutboundMessage objects.
	 * @return The number of messages sent.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 * @see #sendMessage(OutboundMessage)
	 */
	public int sendMessages(Collection<OutboundMessage> msgList) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		int counter = 0;
		for (OutboundMessage msg : msgList)
			if (sendMessage(msg)) counter++;
		return counter;
	}

	/**
	 * Sends a list of messages from the specified gateway.
	 * 
	 * @param msgList
	 *            A list of OutboundMessage objects.
	 * @param gatewayId
	 *            The id of the gateway that will be used for sending.
	 * @return The number of messages sent.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 * @see #sendMessage(OutboundMessage)
	 */
	public int sendMessages(Collection<OutboundMessage> msgList, String gatewayId) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		int counter = 0;
		for (OutboundMessage msg : msgList)
		{
			msg.setGatewayId(gatewayId);
			if (sendMessage(msg)) counter++;
		}
		return counter;
	}

	/**
	 * Queues a message for sending. The gateway selection logic is the same as
	 * for sendMessage(). The method does not block - returns immediately. If
	 * you wish to be alerted about the fate of the message, you may implement a
	 * IOutboundMessageNotification listener.
	 * 
	 * @param msg
	 *            Message to be sent
	 * @return True if the message is accepted in the Queue.
	 * @see #sendMessage(OutboundMessage)
	 * @see IOutboundMessageNotification
	 */
	public boolean queueMessage(OutboundMessage msg)
	{
		synchronized (getGateways())
		{
			AGateway gateway = routeMessage(msg);
			if (gateway != null) return gateway.queueMessage(msg);
			return false;
		}
	}

	/**
	 * Queues a message for sending from the specific gateway.
	 * 
	 * @param msg
	 *            A OutboundMessage object.
	 * @param gatewayId
	 *            The id of the gateway that will be used for sending.
	 * @return True if the message is accepted in the Queue.
	 * @see #queueMessage(OutboundMessage)
	 */
	public boolean queueMessage(OutboundMessage msg, String gatewayId)
	{
		synchronized (getGateways())
		{
			msg.setGatewayId(gatewayId);
			return queueMessage(msg);
		}
	}

	/**
	 * Queues a list of messages for sending.
	 * 
	 * @param msgList
	 *            A list of OutboundMessage objects.
	 * @return The number of messages accepted in the Queue.
	 * @see #queueMessage(OutboundMessage)
	 */
	public int queueMessages(Collection<OutboundMessage> msgList)
	{
		int counter = 0;
		for (OutboundMessage msg : msgList)
			if (queueMessage(msg)) counter++;
		return counter;
	}

	/**
	 * Queues a list of messages for sending from the specific gateway.
	 * 
	 * @param msgList
	 *            A list of OutboundMessage objects.
	 * @param gatewayId
	 *            The id of the gateway to be used for sending.
	 * @return The number of messages accepted in the Queue.
	 * @see #queueMessage(OutboundMessage)
	 */
	public int queueMessages(Collection<OutboundMessage> msgList, String gatewayId)
	{
		int counter = 0;
		for (OutboundMessage msg : msgList)
		{
			msg.setGatewayId(gatewayId);
			if (queueMessage(msg)) counter++;
		}
		return counter;
	}

	/**
	 * Attempts to remove the specified message from the background sending
	 * queue. Can only be used for messages previously queued up with the
	 * queueMessage() calls.
	 * 
	 * @param msg
	 *            The outbound message to be unqueued.
	 * @return true if the message is indeed removed from the respective
	 *         background queue.
	 */
	public boolean unqueueMessage(OutboundMessage msg)
	{
		AGateway gtw;
		if (msg.getGatewayId() != null) gtw = findGateway(msg.getGatewayId());
		else gtw = null;
		if (gtw != null) return gtw.unqueueMessage(msg);
		for (AGateway g : getGateways())
			if (g.unqueueMessage(msg)) return true;
		return false;
	}

	/**
	 * Deletes the specified message. The operation is not supported by all
	 * gateways.
	 * 
	 * @param msg
	 *            The message to be deleted. It must be a valid InboundMessage
	 *            object. <b>DO NOT PASS invalid objects to the method!</b>
	 * @return True if the message is deleted.
	 * @throws TimeoutException
	 *             The gateway did not respond in a timely manner.
	 * @throws GatewayException
	 *             A Gateway error occurred.
	 * @throws IOException
	 *             An IO error occurred.
	 * @throws InterruptedException
	 *             The call was interrupted.
	 */
	public boolean deleteMessage(InboundMessage msg) throws TimeoutException, GatewayException, IOException, InterruptedException
	{
		synchronized (getGateways())
		{
			AGateway gateway = findGateway(msg.getGatewayId());
			if (gateway != null)
			{
				try
				{
					return gateway.deleteMessage(msg);
				}
				catch (TimeoutException e)
				{
					getLogger().logWarn("deleteMessage(): Gateway " + gateway.getGatewayId() + " does not respond, marking for restart.", null, null);
					gateway.setStatus(GatewayStatuses.RESTART);
					return false;
				}
				catch (IOException e)
				{
					getLogger().logWarn("deleteMessage(): Gateway " + gateway.getGatewayId() + " throws IO errors, marking for restart.", null, null);
					gateway.setStatus(GatewayStatuses.RESTART);
					return false;
				}
			}
			return false;
		}
	}

	/**
	 * Returns the total number of messages received by the specified gateway.
	 * 
	 * @param gatewayId
	 *            The id of the gateway to query.
	 * @return The number of received messages or -1 on error.
	 */
	public int getInboundMessageCount(String gatewayId)
	{
		return getInboundMessageCount(findGateway(gatewayId));
	}

	/**
	 * Returns the total number of messages received by the specified gateway.
	 * 
	 * @param gateway
	 *            The AGateway object to query.
	 * @return The number of received messages or -1 on error.
	 */
	public int getInboundMessageCount(AGateway gateway)
	{
		return (gateway != null ? gateway.getInboundMessageCount() : -1);
	}

	/**
	 * Returns the total number of messages sent via the specified gateway.
	 * 
	 * @param gatewayId
	 *            The id of the gateway to query.
	 * @return The number of sent messages or -1 on error.
	 */
	public int getOutboundMessageCount(String gatewayId)
	{
		return getOutboundMessageCount(findGateway(gatewayId));
	}

	/**
	 * Returns the total number of messages sent via the specified gateway.
	 * 
	 * @param gateway
	 *            The AGateway object to query.
	 * @return The number of sent messages or -1 on error.
	 */
	public int getOutboundMessageCount(AGateway gateway)
	{
		return (gateway != null ? gateway.getOutboundMessageCount() : -1);
	}

	/**
	 * Returns the total number of messages received by all gateways.
	 * 
	 * @return The number of received messages.
	 */
	public int getInboundMessageCount()
	{
		int total = 0;
		for (AGateway gateway : getGateways())
			total += gateway.getInboundMessageCount();
		return total;
	}

	/**
	 * Returns the total number of messages sent via all gateways.
	 * 
	 * @return The number of sent messages.
	 */
	public int getOutboundMessageCount()
	{
		int total = 0;
		for (AGateway gateway : getGateways())
			total += gateway.getOutboundMessageCount();
		return total;
	}

	/**
	 * Find and return a gateway by its ID.
	 * 
	 * @param gatewayId
	 *            The ID of gateway to find.
	 * @return Gateway object bearing given name, or NULL if not found.
	 */
	public AGateway findGateway(String gatewayId)
	{
		for (AGateway gateway : getGateways())
			if (gateway.getGatewayId().equals(gatewayId)) return gateway;
		return null;
	}

	/**
	 * Returns the list of defined gateways.
	 * 
	 * @return The list of gateways.
	 */
	public Collection<AGateway> getGateways()
	{
		return this.gatewayList;
	}

	/**
	 * Retrieves the Queue load (i.e. pending messages) from all gateways and
	 * for all priorities.
	 * 
	 * @return The number of pending messages to be send.
	 * @see #getGatewayQueueLoad(int)
	 * @see #getGatewayQueueLoad(String)
	 * @see #getGatewayQueueLoad(String, int)
	 */
	public int getGatewayQueueLoad()
	{
		int total = 0;
		for (AGateway gateway : getGateways())
			total += gateway.getQueueLoad();
		return total;
	}

	/**
	 * Retrieves the Queue load (i.e. pending messages) from all gateways and
	 * for a specific priority.
	 * 
	 * @param priority
	 *            The priority looked for.
	 * @return The number of pending messages to be send.
	 * @see #getGatewayQueueLoad()
	 * @see #getGatewayQueueLoad(String)
	 * @see #getGatewayQueueLoad(String, int)
	 */
	public int getGatewayQueueLoad(int priority)
	{
		int total = 0;
		for (AGateway gateway : getGateways())
			total += gateway.getQueueLoad(priority);
		return total;
	}

	/**
	 * Retrieves the Queue load (i.e. pending messages) from a specific gateway
	 * and for all priorities.
	 * 
	 * @param gatewayId
	 *            The Gateway ID for which information is to be retrieved.
	 * @return The number of pending messages to be send.
	 * @see #getGatewayQueueLoad()
	 * @see #getGatewayQueueLoad(int)
	 * @see #getGatewayQueueLoad(String, int)
	 */
	public int getGatewayQueueLoad(String gatewayId)
	{
		AGateway gateway = findGateway(gatewayId);
		return (gateway == null ? 0 : gateway.getQueueLoad());
	}

	/**
	 * Retrieves the Queue load (i.e. pending messages) from a specific gateway
	 * and for a specific priority.
	 * 
	 * @param gatewayId
	 *            The Gateway ID for which information is to be retrieved.
	 * @param priority
	 *            The priority looked for.
	 * @return The number of pending messages to be send.
	 * @see #getGatewayQueueLoad()
	 * @see #getGatewayQueueLoad(int)
	 * @see #getGatewayQueueLoad(String)
	 */
	public int getGatewayQueueLoad(String gatewayId, int priority)
	{
		AGateway gateway = findGateway(gatewayId);
		return (gateway == null ? 0 : gateway.getQueueLoad(priority));
	}

	/**
	 * Returns the active Load Balancer class.
	 * 
	 * @return The active LoadBalancer class.
	 * @see LoadBalancer
	 */
	public LoadBalancer getLoadBalancer()
	{
		return this.loadBalancer;
	}

	/**
	 * Sets a new Load Balancer.
	 * 
	 * @param myLoadBalancer
	 *            The Load Balancer that will take effect.
	 * @see LoadBalancer
	 */
	public void setLoadBalancer(LoadBalancer myLoadBalancer)
	{
		this.loadBalancer = myLoadBalancer;
	}

	/**
	 * Returns the active Router class.
	 * 
	 * @return The active Router class.
	 * @see Router
	 */
	public Router getRouter()
	{
		return this.router;
	}

	/**
	 * Sets a new Router.
	 * 
	 * @param myRouter
	 *            The Router that will take effect.
	 * @see Router
	 */
	public void setRouter(Router myRouter)
	{
		this.router = myRouter;
	}

	/**
	 * Find best suitable gateway to send specific message through Router and
	 * Load Balancer.
	 * 
	 * @param msg
	 *            Message to be routed
	 * @return Reference to gateway or <code>null</code> if no suitable gateway
	 *         is found.
	 */
	AGateway routeMessage(OutboundMessage msg)
	{
		synchronized (getGateways())
		{
			return getRouter().route(msg);
		}
	}

	public Queue<OutboundMessage> getReorderMessageQueue()
	{
		return this.reorderMessageQueue;
	}

	/**
	 * Returns the notification method set for inbound messages. Returns null if
	 * no such method is set.
	 * 
	 * @return The notification method.
	 * @see #setInboundNotification(IInboundMessageNotification)
	 */
	public IInboundMessageNotification getInboundNotification()
	{
		return this.inboundNotification;
	}

	/**
	 * Sets the inbound message notification method. The method must adhere to
	 * the IInboundMessageNotification interface. If set, SMSLib will call this
	 * method upon arrival of a new inbound message.
	 * 
	 * @param myInboundNotification
	 *            The method to be called.
	 * @see #getInboundNotification()
	 * @see IInboundMessageNotification
	 */
	public void setInboundNotification(IInboundMessageNotification myInboundNotification)
	{
		this.inboundNotification = myInboundNotification;
	}

	/**
	 * Returns the notification method set for outbound messages. Returns null
	 * if no such method is set.
	 * 
	 * @return The notification method.
	 * @see #setOutboundNotification(IOutboundMessageNotification)
	 */
	public IOutboundMessageNotification getOutboundNotification()
	{
		return this.outboundNotification;
	}

	/**
	 * Sets the outbound notification method. The method must adhere to the
	 * IOutboundMessageNotification interface. If set, SMSLib will call this
	 * method upon dispatch of a message through the queueing (asyncronous)
	 * calls.
	 * 
	 * @param myOutboundNotification
	 * @see #getOutboundNotification()
	 * @see IOutboundMessageNotification
	 */
	public void setOutboundNotification(IOutboundMessageNotification myOutboundNotification)
	{
		this.outboundNotification = myOutboundNotification;
	}

	/**
	 * Returns the call notification method. Returns null if no such method is
	 * set.
	 * 
	 * @return The notification method.
	 * @see #setCallNotification(ICallNotification)
	 */
	public ICallNotification getCallNotification()
	{
		return this.callNotification;
	}

	/**
	 * Sets the call notification method. The method must adhere to the
	 * ICallNotification interface. If set, SMSLib will call this method upon
	 * detection of an inbound call.
	 * 
	 * @param myCallNotification
	 * @see #getCallNotification()
	 * @see ICallNotification
	 */
	public void setCallNotification(ICallNotification myCallNotification)
	{
		this.callNotification = myCallNotification;
	}

	/**
	 * Returns the gateway status notification method. Returns null if no such
	 * method has been set.
	 * 
	 * @return The notification method.
	 * @see #setGatewayStatusNotification(IGatewayStatusNotification)
	 */
	public IGatewayStatusNotification getGatewayStatusNotification()
	{
		return this.gatewayStatusNotification;
	}

	/**
	 * Sets the gateway status notification method. The method must adhere to
	 * the IGatewayStatusNotification interface. If set, SMSLib will call this
	 * method upon every gateway status change.
	 * 
	 * @param myGatewayStatusNotification
	 * @see #getGatewayStatusNotification()
	 * @see IGatewayStatusNotification
	 */
	public void setGatewayStatusNotification(IGatewayStatusNotification myGatewayStatusNotification)
	{
		this.gatewayStatusNotification = myGatewayStatusNotification;
	}

	public long getStartMillis()
	{
		return this.startMillis;
	}

	private class WatchDog extends Thread
	{
		public WatchDog()
		{
			setName("SMSLib-WatchDog");
			setDaemon(true);
			start();
		}

		@Override
		public void run()
		{
			boolean needShaking = false;
			boolean drainAll = false;
			getLogger().logDebug("WatchDog started.", null, null);
			//while (true)
			while (!Thread.currentThread().isInterrupted())
			{
				try
				{
					getLogger().logInfo("WatchDog running...", null, null);
					for (AGateway gateway : getGateways())
					{
						if (gateway.getStatus() == GatewayStatuses.RESTART)
						{
							if (gateway.getQueueLoad() != 0)
							{
								getLogger().logDebug("Draining messages: Gateway: " + gateway.getGatewayId() + " restarting...", null, null);
								synchronized (getReorderMessageQueue())
								{
									synchronized (gateway.messageQueue)
									{
										gateway.messageQueue.drainTo(getReorderMessageQueue());
									}
								}
								needShaking = true;
							}
							getLogger().logWarn("WatchDog: Gateway: " + gateway.getGatewayId() + " restarting.", null, null);
							try
							{
								gateway.stopGateway();
								gateway.setStatus(GatewayStatuses.RESTART);
							}
							catch (Exception e)
							{
								getLogger().logWarn("WatchDog: error while shutting down Gateway: " + gateway.getGatewayId(), e, null);
							}
							try
							{
								gateway.startGateway();
							}
							catch (Exception e)
							{
								getLogger().logError("WatchDog: error while starting Gateway: " + gateway.getGatewayId(), e, null);
							}
							if (gateway.getStatus() == GatewayStatuses.RUNNING)
							{
								needShaking = true;
								drainAll = true;
							}
						}
					}
					if (needShaking == true)
					{
						shakeMessages(drainAll);
						needShaking = false;
						drainAll = false;
					}
					Thread.sleep(Service.this.S.WATCHDOG_INTERVAL);
				}
				catch (InterruptedException e)
				{
					break;
				}
				catch (Exception e)
				{
					getLogger().logError("WatchDog error. ", e, null);
				}
			}
			getLogger().logDebug("WatchDog stopped.", null, null);
		}

		/**
		 * Queues all pending messages again
		 * 
		 * @param drainAll
		 *            if <b>true</b> then prior to queueing pending messages all
		 *            message queues of all gateways will be drained to pending
		 *            messages list
		 */
		private void shakeMessages(boolean drainAll)
		{
			if (drainAll)
			{
				for (AGateway gtw : getGateways())
				{
					synchronized (gtw.messageQueue)
					{
						gtw.messageQueue.drainTo(getReorderMessageQueue());
					}
				}
			}
			for (OutboundMessage msg : getReorderMessageQueue())
			{
				if (!queueMessage(msg)) if (getOutboundNotification() != null) getOutboundNotification().process(null, msg);
			}
			getReorderMessageQueue().clear();
		}
	}

	public static void main(String[] args)
	{
		System.out.println(Library.getLibraryDescription());
		System.out.println("\nSMSLib API Version: " + Library.getLibraryVersion());
	}
}
