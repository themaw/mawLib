package org.smslib.modem.athandler;


import org.smslib.modem.ModemGateway;

public class ATHandler_Teltonika_ModemUSB extends ATHandler
{

    public ATHandler_Teltonika_ModemUSB(ModemGateway myGateway)
    {
        super(myGateway);
        setStorageLocations("SMME");
    }
}
