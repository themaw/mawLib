package org.smslib.modem;



/**
 * Gateway representing a GSM Modem or Phone connected via a serial port.
 */
public class MaxSerialModemGateway extends ModemGateway {
	public MaxSerialModemGateway(String id,
			String manufacturer, String model) {
		super(ModemTypes.MAX_SERIAL, id, "COM1", 57600, manufacturer, model);
	}
}
