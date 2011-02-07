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

import maw.mobile.sms;

import org.smslib.AGateway;
import org.smslib.GatewayException;

import com.cycling74.max.MaxObject;

class MaxSerialModemDriver extends AModemDriver {

	private sms parent;
	private MaxSerialInputStream in;
	private MaxSerialOutputStream out;
	private ThreadReader threadReader;

	protected MaxSerialModemDriver(ModemGateway myGateway, String deviceParms) {
		super(myGateway, deviceParms);
		//StringTokenizer tokens = new StringTokenizer(deviceParms, ":"); // don't
	}

	@Override
	protected void connectPort() throws GatewayException, IOException,
			InterruptedException {
		try {

			MaxObject mo = MaxObject.getContext().getMaxObject("maw.mobile.sms");
			parent = (sms) mo; // setting parent

			setIn(parent.getInputStream());
			setOut(parent.getOutputStream());

			if (getGateway().getService().S.SERIAL_POLLING)
				setThreadReader(new ThreadReader(getGateway()));

		} catch (Exception e) {
			throw new GatewayException("Max Serial Input Stream exception: "
					+ e.getMessage());
		}

	}

	@Override
	protected void disconnectPort() throws IOException, InterruptedException {
		synchronized (getSYNCReader()) {
			if (getGateway().getService().S.SERIAL_POLLING) {
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
		if (!getGateway().getService().S.SERIAL_NOFLUSH)
			getOut().flush();
	}

	@Override
	public void write(byte[] s) throws IOException {
		getOut().write(s);
		if (!getGateway().getService().S.SERIAL_NOFLUSH)
			getOut().flush();
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
			this.gtw.getService().getLogger().logDebug("ThreadReader started.",
					null, getGateway().getGatewayId());
			while (true) {
				try {
					parent.readSerialIn();
					sleep(getGateway().getService().S.SERIAL_POLLING_INTERVAL);
					if (portHasData()) {
						synchronized (getSYNCReader()) {
							setDataReceived(true);
							getSYNCReader().notifyAll();
						}
					}
				} catch (InterruptedException e) {
					break;
				} catch (Exception e) {
					this.gtw.getService().getLogger().logError(
							"ThreadReader error. ", e,
							getGateway().getGatewayId());
				}
			}
			this.gtw.getService().getLogger().logDebug("ThreadReader stopped.",
					null, getGateway().getGatewayId());
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
