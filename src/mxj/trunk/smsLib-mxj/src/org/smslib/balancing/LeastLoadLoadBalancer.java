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

package org.smslib.balancing;

import java.util.ArrayList;

import org.smslib.AGateway;
import org.smslib.OutboundMessage;
import org.smslib.Service;

/**
 * LeastLoadLoadBalancer is trying to forward messages via the gateway with the
 * least load in its queues.
 */
public final class LeastLoadLoadBalancer extends LoadBalancer
{
	public LeastLoadLoadBalancer(Service myService)
	{
		super(myService);
	}

	/**
	 * This Load Balancing implementation takes in mind the load of all
	 * candidates' queues and selects the gateway with the lowest load.
	 */
	@Override
	public AGateway balance(OutboundMessage msg, ArrayList<AGateway> candidates)
	{
		AGateway gateway;
		int load = Integer.MAX_VALUE;

		gateway = candidates.get(0);
		for (AGateway g : candidates)
		{
			if (g.getQueueLoad() < load)
			{
				gateway = g;
				load = g.getQueueLoad();
			}
		}
		return gateway;
	}
}
