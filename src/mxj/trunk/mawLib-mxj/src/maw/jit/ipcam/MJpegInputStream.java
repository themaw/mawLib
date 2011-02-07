package maw.jit.ipcam;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.Authenticator;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.imageio.ImageIO;


public class MJpegInputStream extends DataInputStream {

    public static int MAX_HEADER_SIZE = 1920 * 1800 * 3;

    String boundary = null;

    public MJpegInputStream(java.io.InputStream in, String boundary) {
        super(in);
        this.boundary = boundary;
    }

    protected int advanceToSequence(byte[] sq) throws IOException {

        byte b = -1;
        int sqPos = 0; // which byte in the SOI or EOI are we at?
        int len = 0;

        for (int i = 0; i < MAX_HEADER_SIZE; i++) {
            b = readByte();
            if (b == sq[sqPos]) {
                /* advance in sq */
                sqPos++;
                if (sqPos == sq.length) { // if we just looked at the last one then return
                    return ++len;
                }
            } else {
                sqPos = 0;
            }
            len++;
        }

        return -1;
    }

    public BufferedImage readJpegAsBufferedImage() throws IOException {
        byte[] b = readJpegAsByteArray();
        return ImageIO.read(new ByteArrayInputStream(b));
    }

    public String readMyLine() throws IOException {
        StringBuffer sb = new StringBuffer();

        boolean foundEnd = false;
        boolean gotR = false;
        while (!foundEnd) {

            char c;
            c = (char) read();

            // System.out.println(c);

            if (c == '\n') {
                foundEnd = true;
            } else if (c == '\r') {
                gotR = true;
            } else {
                sb.append(c);
            }

        }

        return sb.toString();

    }

    public byte[] readJpegAsByteArray() throws IOException {

        
        byte[] buf = null;

        byte[] BOUNDARY_MARKER = (boundary + "\r\n").getBytes();

        advanceToSequence(BOUNDARY_MARKER);

        String line = null;

        String contentTypeLine = null;
        String contentLengthLine = null;

        while ((line = readMyLine()) != null) {
            if (line.length() != 0) {
                if (line.toLowerCase().startsWith("content-type")) {
                    contentTypeLine = line;
                } else if (line.toLowerCase().startsWith("content-length")) {
                    contentLengthLine = line;
                } else {

                    System.err.println("Unknown Line: " + line);
                }

            } else {
                break;
            }
        }

        if (contentTypeLine == null || contentLengthLine == null) {

            System.err.println("ERROR READING ... the header was corrupt.");
        }

        String[] contentTypePieces = contentTypeLine.split(": ");
        String[] contentLengthPieces = contentLengthLine.split(": ");

        if (contentTypePieces.length != 2 || contentLengthPieces.length != 2) {
            System.err.println("Error Reading .... ");
        }

        // String contentType = contentTypePieces[1];
        int contentLength = Integer.parseInt(contentLengthPieces[1]);

        buf = new byte[contentLength];
        readFully(buf); // block until full

        return buf;
    }

    /**
     * Test function. NOTE: If you compile and decide do use this, please check that the set of
     * links are still valid.
     * 
     * @param args
     * @throws InterruptedException
     */

    /*
    public static void main(String[] args) throws InterruptedException {

        String[] cams = { "http://134.84.229.45:8002/videostream.cgi" };
        int k = 0;
        String path = "/tmp/";

        try {

            Authenticator.setDefault(new BasicHTTPAuthenticator("admin", ""));

            for (String stringUrl : cams) {
                URL url = new URL(stringUrl);
                HttpURLConnection hurlc = (HttpURLConnection) url.openConnection();
                hurlc.connect();
                System.out.println();
                System.out.println(stringUrl);
                System.out.println("Content-Length " + hurlc.getContentLength());
                System.out.println("Content-Type " + hurlc.getContentType());

                System.out.println("Content-Encoding " + hurlc.getContentEncoding());

                String contentType = hurlc.getContentType();
                String boundary = contentType.substring(contentType.indexOf("boundary=") + 9);
                System.out.println(">>" + boundary + "<<");

                MJpegInputStream dis = new MJpegInputStream(hurlc.getInputStream(), boundary);

                // BufferedReader br = new BufferedReader(new InputStreamReader(dis));

                // String line;
                // while((line = br.readLine()) != null ) {
                // System.out.println(line);
                // }

                while (true) {
                    byte[] b = dis.readJpegAsByteArray();
                    // System.out.println("Read/Content-Length: " + b.length);
                    (new FileOutputStream(path + (++k) + ".jpg")).write(b);

                }

                
            }
            // DataInputStream dis = new DataInputStream();
        } catch (java.net.MalformedURLException ex) {
            Logger.getLogger(MJpegInputStream.class.getName()).log(Level.SEVERE, null, ex);
        } catch (java.io.IOException ex) {
            Logger.getLogger(MJpegInputStream.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    */
}