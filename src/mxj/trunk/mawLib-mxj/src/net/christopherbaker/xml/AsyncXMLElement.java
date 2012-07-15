package net.christopherbaker.xml;

public class AsyncXMLElement implements Runnable {

    XMLElement xml;
    String url;
    AsyncXMLLoadedListener listener;

    public AsyncXMLElement(String url, AsyncXMLLoadedListener listener) {
        this.url = url;
        this.listener = listener;
        Thread t = new Thread(this);
        t.start();
    }

    public void run() {
        xml = new XMLElement(url);
        listener.xmlLoaded(url, xml);
    }

    public interface AsyncXMLLoadedListener {
        public void xmlLoaded(String url, XMLElement xml);
    }

}
