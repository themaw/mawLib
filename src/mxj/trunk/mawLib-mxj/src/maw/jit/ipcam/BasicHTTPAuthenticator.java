package maw.jit.ipcam;

import java.net.Authenticator;
import java.net.PasswordAuthentication;

public class BasicHTTPAuthenticator extends Authenticator {
    private String username, password;

    public BasicHTTPAuthenticator(String user, String pass) {
        username = user;
        password = pass;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    protected PasswordAuthentication getPasswordAuthentication() {
        /*
        System.out.println("Requesting Host  : " + getRequestingHost());
        System.out.println("Requesting Port  : " + getRequestingPort());
        System.out.println("Requesting Prompt : " + getRequestingPrompt());
        System.out.println("Requesting Protocol: " + getRequestingProtocol());
        System.out.println("Requesting Scheme : " + getRequestingScheme());
        System.out.println("Requesting Site  : " + getRequestingSite());
        */
        return new PasswordAuthentication(username, password.toCharArray());
    }
}