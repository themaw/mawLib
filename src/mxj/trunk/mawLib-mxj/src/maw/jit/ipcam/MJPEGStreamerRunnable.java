package maw.jit.ipcam;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.Authenticator;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;

import javax.imageio.ImageIO;

import com.cycling74.jitter.JitterMatrix;

public class MJPEGStreamerRunnable implements Runnable {

    MJpegInputStream stream;

    boolean isConnected = false;

    URI url;
    HttpURLConnection hurlc;

    BasicHTTPAuthenticator auth = null;

    BufferedImage buffImage = new BufferedImage(320, 240, BufferedImage.TYPE_INT_ARGB);
    boolean isNewImage = true;

    int streamContentLength = -1;
    String streamContentType = null;
    String streamContentEncoding = null;
    String streamBoundaryMarker = null;

    public MJPEGStreamerRunnable(URI url) {
        this(url, null);
    }

    public MJPEGStreamerRunnable(URI url, BasicHTTPAuthenticator auth) {
        this.url = url;
        this.auth = auth;
    }

    public void run() {

        connectToSite();

        while (isConnected) {
            try {
                writeImage(stream.readJpegAsByteArray());
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

        disconnectFromSite();

    }

    public boolean isConnected() {
        return isConnected;
    }

    public void disconnect() {
        isConnected = false;
    }

    public boolean isNewImage() {
        return isNewImage;
    }

    // will fill a jitter matrix
    public void fillMatrix(JitterMatrix mat) {

        synchronized (buffImage) {
            mat.copyBufferedImage(buffImage);
            isNewImage = false;
        }

    }

    private void writeImage(byte[] b) {
        try {
            synchronized (buffImage) {
                buffImage = ImageIO.read(new ByteArrayInputStream(b));
                isNewImage = true;
            }
        } catch (IOException e) {
            System.err.println("Unable to write image.");
            e.printStackTrace();
        }
    }

    private void disconnectFromSite() {

        System.out.print("Disconnecting from " + url + " ... ");

        try {
            stream.close();
        } catch (IOException e) {
            System.err.println("Error closing video stream.");
            e.printStackTrace();
        }

        System.out.println("done.");
    }

    private void connectToSite() {

        System.out.print("Connecting to " + url + " ... ");

        if (auth != null) {
            Authenticator.setDefault(auth);
        }

        try {

            hurlc = (HttpURLConnection) url.toURL().openConnection();
            hurlc.connect();

            streamContentLength = hurlc.getContentLength();
            streamContentType = hurlc.getContentType();
            streamContentEncoding = hurlc.getContentEncoding();

            // get the boundary marker
            streamBoundaryMarker = streamContentType.substring(streamContentType
                    .indexOf("boundary=") + 9);

            stream = new MJpegInputStream(hurlc.getInputStream(), streamBoundaryMarker);

            //System.out.println("SCL=" + streamContentLength + " SCT=" + streamContentType
            //        + " streamCotnentEncoding=" + streamContentEncoding + " streamBoundaryMarker="
            //        + streamBoundaryMarker);

            isConnected = true;

        } catch (MalformedURLException e) {
            System.err.println("Malformed URL.");
            e.printStackTrace();
        } catch (IOException e) {
            System.err.println("IO Exception.");
            e.printStackTrace();
        }

        System.out.println("done.");
    }
}
