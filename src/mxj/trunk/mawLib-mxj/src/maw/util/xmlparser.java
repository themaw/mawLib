package maw.util;

import java.net.URL;

import net.christopherbaker.xml.AsyncXMLElement;
import net.christopherbaker.xml.XMLElement;

import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxSystem;

/* ali's mod */

public class xmlparser extends MaxObject implements AsyncXMLElement.AsyncXMLLoadedListener {

    enum State {
        PARSING, READY;
    }

    State state = State.READY;

    XMLElement rootNode = null;

    XMLElement workingNode = null;

    String url = null;

    boolean debug = false;

    public xmlparser() {

        declareInlets(new int[] { DataTypes.LIST });
        declareOutlets(new int[] { DataTypes.LIST });

        setInletAssist(new String[] { "Everything" });
        setOutletAssist(new String[] { "Output" });

        declareAttribute("debug");

    }

    public void reset() {
        workingNode = rootNode;
    }

    public void load(String url) {

        String loadPath = url;

        if (state == State.PARSING) {
            error("Currently parsing ..." + this.url);
        } else {
            this.url = url;

            // searches the max search path
            String location = null;
            try {
                location = MaxSystem.locateFile(url);

            } catch (Exception e) {
                e.printStackTrace();
            }

            if (location != null) {
                loadPath = location;
            }

            AsyncXMLElement s = new AsyncXMLElement(loadPath, this);// void the original

            state = State.PARSING;
        }

    }

    public void getChild(int index) {
    //

    }

    public void getChildren(String path) {

        XMLElement[] arrayOfElements = rootNode.getChildren(path);
        post(arrayOfElements.length + " elements found");

        for (int i = 0; i < arrayOfElements.length; i++) {
            System.out.println(arrayOfElements[i]);
        }

    }

    public void getChildren(int index) {
    //

    }

    public void xmlLoaded(String url, XMLElement xml) {
        this.rootNode = xml;
        state = State.READY;
//        outlet(this.getNumOutlets() - 1, "bang"); // bang when finished loading
        
        this.outletBang(this.getNumOutlets());
    
    }

}