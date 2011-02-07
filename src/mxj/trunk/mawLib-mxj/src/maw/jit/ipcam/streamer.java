package maw.jit.ipcam;

import java.net.URI;
import java.net.URISyntaxException;


import com.cycling74.jitter.JitterMatrix;
import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class streamer extends MaxObject {

    MJPEGStreamerRunnable streamer;
    Thread thread;

    JitterMatrix currentFrame;

    BasicHTTPAuthenticator auth;
    String username;
    String password;

    String url;

    URI uri;

    int imageCount = 0;

    boolean unique = false;

    public streamer(Atom[] args) {

        currentFrame = new JitterMatrix(4, "char", new int[] { 320, 240 });

        declareInlets(new int[] { DataTypes.ANYTHING });
        declareOutlets(new int[] { DataTypes.ANYTHING });

        setInletAssist(new String[] { "input" });
        setOutletAssist(new String[] { "output" });

        declareAttribute("username");
        declareAttribute("password");

        declareAttribute("unique");

        declareAttribute("url");
    }

    public void bang() {
        

        if (streamer != null && streamer.isConnected()) {
            boolean gotOne = false;
            if (streamer.isNewImage()) {
                streamer.fillMatrix(currentFrame);
                gotOne = true;
            }

            if (gotOne || !unique) {
                outlet(0, "jit_matrix", currentFrame.getName());
            }

        } else {
            outlet(0, "jit_matrix", currentFrame.getName());
        }

    }

    public void close() {
        if (streamer != null && streamer.isConnected()) {
            streamer.disconnect();
            currentFrame.clear();
        }
    }

    public void open() {
        imageCount = 0;
        if (streamer == null || !streamer.isConnected()) {
            post("Creating stream.");

            if (username != null)
                auth = new BasicHTTPAuthenticator(username, ((password == null) ? "" : password));

            try {
                uri = new URI(url);
                streamer = new MJPEGStreamerRunnable(uri, auth);
                thread = new Thread(streamer);
                thread.start();
            } catch (URISyntaxException e) {
                error("Malformed URL.");
                e.printStackTrace();

            }

        } else if (streamer.isConnected()) {
            error("Stream already open.");
        } else {
            error("Unknown state ...");
        }

    }

    protected void notifyDeleted() { // clean up!
        close();
    }

}