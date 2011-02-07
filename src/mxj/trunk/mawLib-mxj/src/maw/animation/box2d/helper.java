package maw.animation.box2d;

import java.io.File;
import java.util.HashMap;

import maw.jit.JitterImage;
import maw.util.locate;
import net.christopherbaker.xml.AsyncXMLElement;
import net.christopherbaker.xml.XMLElement;

import com.cycling74.jitter.JitterMatrix;
import com.cycling74.jitter.JitterObject;
import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class helper extends MaxObject implements AsyncXMLElement.AsyncXMLLoadedListener {

    enum State {
        PARSING, READY;
    }

    String openGL = null;

    State state = State.READY;

    HashMap<String, JitterObject> objects = new HashMap<String, JitterObject>();

    JitterMatrix contourOutput;
    JitterMatrix alphaPlane;

    JitterObject contours;

    HashMap<String, JitterImage> images = new HashMap<String, JitterImage>();

    String url = null;

    XMLElement svgXML;

    String documentRoot;

    /* clean up stuff here */
    protected void notifyDeleted() { // clean up!
        // free objects
        contours.freePeer();

        // / free matrices
        contourOutput.freePeer();
        alphaPlane.freePeer();

        // free all of the images
        for (JitterImage j : images.values()) {
            j.freePeer();
        }

    }

    public helper(Atom[] args) {
        declareInlets(new int[] { DataTypes.ANYTHING });
        declareOutlets(new int[] { DataTypes.ANYTHING });

        setInletAssist(new String[] { "input" });
        setOutletAssist(new String[] { "output" });

        // create jitter objects
        contours = new JitterObject("maw.jit.blobs.contours");
        contours.setAttr("findholes", 0); // don't find holes
        contours.setAttr("maxblobs", 1); // just find one big one
        contours.setAttr("minarea", 20); // min blob area
        contours.setAttr("maxarea", 1024 * 768); // max blob area
        contours.setAttr("approximationtolerance", 0.75f); // accuracy

        if (args.length != 1) {
            error("Must specify a valid OpenGL context. [mxj maw.animation.box2d.helper <OpenGL context>]");
        } else {
            openGL = args[0].getString();
        }

        contourOutput = new JitterMatrix(1, "char", new int[] { 320, 240 });
        contourOutput.setAdapt(true);

        // dim will be set as needed, no adapt, cause we always need one plane
        alphaPlane = new JitterMatrix(1, "char", new int[] { 320, 240 });
        alphaPlane.setAttr("planemap", 0);

    }

    public void loadSVG(String url) {

        String loadPath = url;

        if (state == State.PARSING) {
            error("Currently parsing ..." + this.url);
        } else {
            this.url = url;

            loadPath = locate.find(url);

            AsyncXMLElement s = new AsyncXMLElement(loadPath, this);// void the original

            state = State.PARSING;
        }

    }

    private void processGroupLayer(XMLElement g) {
        post(">>>>" + g.getAttributes().toString());

        XMLElement[] sublayers = g.getChildren("g");

        for (XMLElement sublayer : sublayers) {

            if (sublayer.getAttribute("inkscape:label").matches("O[0-9]+((_nc)|(_c))?")) {
                XMLElement[] svgImages = sublayer.getChildren("image");
                for (XMLElement img : svgImages) {
                    String path = img.getAttribute("xlink:href");
                    float x = img.getFloatAttribute("x");
                    float y = img.getFloatAttribute("y");
                    float screenWidth = img.getFloatAttribute("width");
                    float screenHeight = img.getFloatAttribute("height");
                    String fullPath = documentRoot + path;
                    String id = img.getAttribute("id");
                    JitterImage image = new JitterImage(fullPath, id, x, y, screenWidth,
                            screenHeight, openGL);

                    // add image to pile
                    images.put(id, image);

                }

            } else if (sublayer.getAttribute("inkscape:label").matches("C[0-9]+")) {
                XMLElement[] connections = sublayer.getChildren("path");
                for (XMLElement path : connections) {
                    post(">>>>>>>>>>>>>>>>>>>" + path.getAttributes().toString());

                }

            } else {
                error("Unrecognized sub layer : " + sublayer.getAttributes().toString());
            }

        }

    }

    public void dump() {
        for (JitterImage i : images.values()) {
            post(i.toString());
        }
    }

    public void dumpMatrices() {

    }

    public void xmlLoaded(String path, XMLElement xml) {
        this.svgXML = xml;
        state = State.READY;

        File f = new File(path);
        documentRoot = f.getParent() + "/"; // << MAY BOT BE WINDOWS COMPAT

        XMLElement[] g = xml.getChildren("g");

        // cycle through and find valid group laters (GXXXX)
        for (XMLElement x : g) {
            if (x.getAttribute("inkscape:label").matches("G[0-9]+")) {
                processGroupLayer(x);
            }
        }

        // tell the world we're finished
        outletBang(this.getNumOutlets());

    }

    public void contoursToBox2D(JitterMatrix contours) {

    }

    public void findExternalHull() {

    }

    public void initSnake(int imgWidth, int imgHeight) {
        initSnake(imgWidth, imgHeight, 100);
    }

    public void initSnake(int imgWidth, int imgHeight, int numPoints) {
        initSnake(imgWidth, imgHeight, numPoints, 0.5f, 0.5f, 0.5f);
    }

    public void initSnake(int imgWidth, int imgHeight, int numPoints, float contWeight,
            float curveWeight, float imageWeight) {

        int totalLength = imgWidth * 2 + imgHeight * 2;
        int pixelsPerPoint = totalLength / numPoints;

        // top

        // right

        // bottom

        // 

        // JitterMatrix jm = new JitterMatrix(5, "float32", )

    }

}