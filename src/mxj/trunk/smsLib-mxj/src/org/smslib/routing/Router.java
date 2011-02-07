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

package org.smslib.routing;

import java.util.ArrayList;

import org.smslib.AGateway;
import org.smslib.OutboundMessage;
import org.smslib.Service;
import org.smslib.AGateway.GatewayStatuses;
import org.smslib.OutboundMessage.FailureCauses;
import org.smslib.OutboundMessage.MessageStatuses;

/**
 * Base message routing class. Service owns instance of Router (or its
 * subclass), and uses its member functions to designate gateway(s) to send
 * particular outgoing message. It is allowed that router designates more than
 * modem to send message. It is responsibility of Router to decide which gateway
 * will send the message. Custom routing rules are possible by creating
 * subclass.
 * 
 * @author Tomek Cejner
 */
public class Router
{
	/** List of candidate gateways */
	private ArrayList<AGateway> candidates;

	/** List of gateways that are allowed to send message */
	private ArrayList<AGateway> allowed;

	private Service srv;

	public Router(Service mySrv)
	{
		this.candidates = new ArrayList<AGateway>();
		this.allowed = new ArrayList<AGateway>();
		this.srv = mySrv;
	}

	protected Service getService()
	{
		return this.srv;
	}

	protected ArrayList<AGateway> getCandidates()
	{
		return this.candidates;
	}

	protected ArrayList<AGateway> getAllowed()
	{
		return this.allowed;
	}

	/**
	 * Perform early-stage routing, pick gateways that meet minimal requirements
	 * to send message (for example are set to handle outbound messages).
	 * 
	 * @param msg
	 *            Message to be routed
	 */
	protected void preroute(OutboundMessage msg)
	{
		for (AGateway gtw : getService().getGateways())
			if ((gtw.isOutbound()) && (gtw.getStatus() == GatewayStatuses.RUNNING))
				{
					if (msg.getGatewayId().length() != 0)
					{
						if (msg.getGatewayId().equalsIgnoreCase("*") || msg.getGatewayId().equalsIgnoreCase(gtw.getGatewayId())) getCandidates().add(gtw);
					}
					else getCandidates().add(gtw);
				}
	}

	/**
	 * Heart of routing & load balancing mechanism
	 * 
	 * @param msg
	 */
	public AGateway route(OutboundMessage msg)
	{
		AGateway gw = null;
		beginRouting();
		preroute(msg);
		// perform custom routing
		customRouting(msg);
		// check if there are any gateways designated to send?
		if (getAllowed().size() > 0) 	gw = getService().getLoadBalancer().balance(msg, getAllowed());
		else
		{
			msg.setMessageStatus(MessageStatuses.FAILED);
			msg.setFailureCause(FailureCauses.NO_ROUTE);
		}
		// finish
		finishRouting();
		return gw;
	}

	/**
	 * Place for custom routing performed by specialized subclass. A "positive"
	 * approach is taken. Method has to copy references to gateways from
	 * <code>candidates</code> list to <code>allowed</code>. So, default
	 * behavior is to copy all references. Another possibility is to take
	 * "negative" approach, where method should delete unwanted gateways from
	 * list. This approach was found difficult to use at this time.
	 * 
	 * @param msg
	 *            Message to be routed
	 */
	public void customRouting(OutboundMessage msg)
	{
		getAllowed().addAll(getCandidates());
	}

	/**
	 * Prepare internal data for routing (clean internal data structures). Must
	 * be called when new message is routed.
	 */
	protected final void beginRouting()
	{
		getCandidates().clear();
		getAllowed().clear();
	}

	/**
	 * Cleanup after routing
	 */
	protected final void finishRouting()
	{
		getCandidates().clear();
		getAllowed().clear();
	}
}
