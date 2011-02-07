package org.smslib.modem;

import maw.mobile.sms;

import org.smslib.modem.ModemGateway;

/**
 * Gateway representing a Phone connected via a Max serial port.
 */
public class MaxSerialModemGateway extends ModemGateway {

    public MaxSerialModemGateway(sms parent) {
        super(parent.getGatewayName(), "", -1, parent.getPhoneMake(), parent.getPhoneModel(),
                new MaxSerialModemDriver(null, (new StringBuilder()).append("").append(":").append(
                        -1).toString(), parent));
        MaxSerialModemDriver msmd = (MaxSerialModemDriver) getDriver();
        msmd.setGateway(this);
    }
}
