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

package org.smslib.helper;

import java.io.File;
import org.smslib.Settings;

public class Logger
{
    private static final String LOG4J_CONF_1 = "smslib-log4j.properties";

    private static final String LOG4J_CONF_2 = "log4j.properties";

    org.apache.log4j.Logger logger;

    private boolean debugFlag = false;

    private Settings S;

    public Logger(Settings myS)
    {
        setSettings(myS);
        this.logger = org.apache.log4j.Logger.getLogger("org.smslib");
        this.logger.setLevel(getSettings().DEBUG ? org.apache.log4j.Level.ALL : org.apache.log4j.Level.WARN);
        if (new File(LOG4J_CONF_1).exists()) org.apache.log4j.PropertyConfigurator.configure(LOG4J_CONF_1);
        else if (new File(LOG4J_CONF_2).exists()) org.apache.log4j.PropertyConfigurator.configure(LOG4J_CONF_2);
        else org.apache.log4j.BasicConfigurator.configure();
    }

    public Logger(org.apache.log4j.Logger myLogger)
    {
        this.logger = myLogger;
    }

    public org.apache.log4j.Logger getLogger()
    {
        return this.logger;
    }

    public void logInfo(String message, Exception e, String gatewayId)
    {
        checkDebugFlag();
        if (e == null) getLogger().info(formatMessage(message, gatewayId));
        else getLogger().info(formatMessage(message, gatewayId), e);
    }

    public void logWarn(String message, Exception e, String gatewayId)
    {
        checkDebugFlag();
        if (e == null) getLogger().warn(formatMessage(message, gatewayId));
        else getLogger().warn(formatMessage(message, gatewayId), e);
    }

    public void logDebug(String message, Exception e, String gatewayId)
    {
        checkDebugFlag();
        if (e == null) getLogger().debug(formatMessage(message, gatewayId));
        else getLogger().debug(formatMessage(message, gatewayId), e);
    }

    public void logError(String message, Exception e, String gatewayId)
    {
        checkDebugFlag();
        if (e == null) getLogger().error(formatMessage(message, gatewayId));
        else getLogger().error(formatMessage(message, gatewayId), e);
    }

    private String formatMessage(String message, String gatewayId)
    {
        return ((gatewayId == null) ? message : "GTW: " + gatewayId + ": " + message);
    }

    private void checkDebugFlag()
    {
        if (getSettings()!=null && getDebugFlag() != getSettings().DEBUG)
        {
            this.logger.setLevel(getSettings().DEBUG ? org.apache.log4j.Level.ALL : org.apache.log4j.Level.WARN);
            setDebugFlag(getSettings().DEBUG);
        }
    }

    boolean getDebugFlag()
    {
        return this.debugFlag;
    }

    void setDebugFlag(boolean myDebugFlag)
    {
        this.debugFlag = myDebugFlag;
    }

    Settings getSettings()
    {
        return this.S;
    }

    void setSettings(Settings myS)
    {
        this.S = myS;
    }
}
