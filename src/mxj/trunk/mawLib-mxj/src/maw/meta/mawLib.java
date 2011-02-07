package maw.meta;

import java.io.File;
import java.util.prefs.Preferences;

import net.christopherbaker.utils.filesystem.EasyFilenameFilter;
import net.christopherbaker.xml.AsyncXMLElement;
import net.christopherbaker.xml.XMLElement;
import net.christopherbaker.xml.AsyncXMLElement.AsyncXMLLoadedListener;

import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxBox;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxPatcher;
import com.cycling74.max.MaxSystem;

public class mawLib extends MaxObject implements AsyncXMLLoadedListener {
    private Preferences prefs; // oooo sexy.

    static final String defaultMawLibXMLFile = "mawLib.xml";

    boolean objectGuideMode = false;

    private String mawLibXMLFile = null;
    private String mawLibObjectXMLFile = null;
    private String mawLibReleaseXMLFile = null;

    private String objectsXMLDirectory = null;

    XMLElement mawLibXML;
    XMLElement mawLibObjectXML;
    XMLElement mawLibReleaseXML;

    String patcherName = null;
    MaxPatcher p;

    mawLibObject mlo = null;
    // names
    public static final String MAWLIB_BODY_PANEL = "mawlib_body_panel";
    public static final String MAWLIB_HEADER_TITLE = "mawlib_header_title";
    public static final String MAWLIB_HEADER_META = "mawlib_header_meta";
    public static final String MAWLIB_HEADER_RELATED = "mawlib_header_related";
    public static final String MAWLIB_HEADER_EXAMPLES = "mawlib_header_examples";
    public static final String MAWLIB_FOOTER_LOGO = "mawlib_footer_logo";

    // colors
    public static final float[] transparentColor = new float[] { 1.0f, 1.0f, 1.0f, 0 };
    public static final float[] blackColor = new float[] { 0.0f, 0.0f, 0.0f, 1.0f };
    public static final float[] whiteColor = new float[] { 1.0f, 1.0f, 1.0f, 1.0f };

    public static final float[] lightBlueColor = new float[] { 0.26f, 0.29f, 0.35f, 1.0f };
    public static final float[] darkBlueColor = new float[] { 0.11f, 0.13f, 0.21f, 1.0f };

    public static final float[] lightGreenColor = new float[] { 0.47f, 0.55f, 0.24f, 1.0f };
    public static final float[] darkGreenColor = new float[] { 0.33f, 0.35f, 0.26f, 1.0f };

    public static final int[] darkBrownColor = new int[] { 38, 38, 33, 255 };

    public static final float[] grayColor = new float[] { 0.58f, 0.58f, 0.58f, 1.0f };

    // release
    float currentVersion = 0.0f;
    String updateURL = "http://dev.minneapolisartonwheels.org/mawLib/mawLib-release.xml";

    public mawLib(Atom[] args) {

        post("In here");

        declareInlets(new int[] { DataTypes.ANYTHING });
        declareOutlets(new int[] { DataTypes.ANYTHING });

        setInletAssist(new String[] { "Anything" });
        setOutletAssist(new String[] { "Anything" });

        // get system-wide default preferences for this class
        prefs = Preferences.userRoot().node(this.getClass().getName()); // give it the name of the
        // class

        mawLibXMLFile = MaxSystem.locateFile(defaultMawLibXMLFile);

        if (mawLibXMLFile == null) {
            error("Unable to locate mawLib configuration file: " + defaultMawLibXMLFile);
            return;
        } else {

            objectsXMLDirectory = mawLibXMLFile.substring(0, mawLibXMLFile.lastIndexOf("/") + 1)
                    + "objects/";
            post(objectsXMLDirectory);
            if (objectsXMLDirectory == null) {
                error("Unable to locate mawLib objects directory: " + defaultMawLibXMLFile);
                return;
            }

        }

        objectGuideMode = (args.length > 0 && args[0].getString().compareTo("object-guide") == 0);
        // get current patcher information
        p = getParentPatcher();
        patcherName = p.getName();
        // $ means end of line
        patcherName = patcherName.replaceAll(".maxpat$|.maxhelp$|.pat$|.binpat$|.help$", "");
        mawLibObjectXMLFile = MaxSystem.locateFile(patcherName + ".xml");
        loadXML(mawLibXMLFile); // will callback and execute the rest when finished

    }

    public void checkforupdates(boolean checkForUpdates) {
        prefs.putBoolean("checkforupdates", checkForUpdates);
    }

    public void checkforupdatesnow() {
        loadXML(mawLibReleaseXMLFile);
    }

    /*
     * public boolean getCheckForUpdates() { return prefs.getBoolean("mawLibCheckForUpdates", true);
     * }
     */

    private void finishedLoadingMawLibXMLFile() {
        currentVersion = Float.parseFloat(mawLibXML.getAttribute("version"));
        mawLibReleaseXMLFile = mawLibXML.getAttribute("updateurl");

        if (prefs.getBoolean("checkforupdates", true)
                && prefs.getLong("nextscheduledcheck", -1) < System.currentTimeMillis())
            checkforupdatesnow();
        // load release information

        if (mawLibObjectXMLFile == null) {
            if (!objectGuideMode) error("No information found for \"" + patcherName + "\"");
            return;
        } else {
            // post("found=" + mawLibObjectXMLFile);
            loadXML(mawLibObjectXMLFile); // load object preferences
        }
    }

    private void finishedLoadingMawLibObjectXMLFile() {
        mlo = new mawLibObject(mawLibObjectXML);
    }

    public void autoupdateinterval(long days) {
        if (days >= 1) {
            prefs.putLong("autoupdateinterval", days * 24 * 60 * 60 * 1);
        } else {
            error("Can only automatically check once per day.");
        }
    }

    private void finishedCheckingForUpdate() {
        float newestVersion = mawLibReleaseXML.getFloatAttribute("current-version");
        float lastVersion = mawLibReleaseXML.getFloatAttribute("last-version");
        String releaseDate = mawLibReleaseXML.getAttribute("release-date");
        String notes = mawLibReleaseXML.getChild("notes").getContent();
        String changes = mawLibReleaseXML.getChild("changes").getContent();
        String url = mawLibReleaseXML.getAttribute("url");

        prefs.putLong("lastcheckedforupdate", System.currentTimeMillis());
        prefs.putLong("nextscheduledcheck", System.currentTimeMillis()
                + prefs.getLong("autoupdateinterval", 1000 * 60 * 60 * 24 * 1)); // check every day
        // by
        // default

        if (currentVersion < newestVersion) {
            String message = "New Version (" + newestVersion + ") of mawLib available.\n\n"
                    + "You have Version (" + currentVersion + ")\n\n"
                    + "Get the newest version here:\n\n" + url;
            ouch(message);
        }

    }

    public void dblclick() {
        if (!objectGuideMode) {
            if (mlo != null) loadHelpObjects(); // TODO: this could lead to annoying user
        } else {
            // output xml info and files
            loadObjectGuide();
        }

    }

    private void loadObjectGuide() {

        if (mawLibXML == null) {
            error("Wait for mawLib XML to load.  Try again in a second.");
            return;
        }

        // reset the coll
        outlet(0, "clear");

        File[] fnames = (new File(objectsXMLDirectory)).listFiles(new EasyFilenameFilter("xml"));

        for (int i = 0; i < fnames.length; i++) {
            mawLibObject ml = new mawLibObject(new XMLElement(fnames[i].getAbsolutePath()));
            outlet(0, "insert",

            new String[] { Integer.toString(i), ml.name, ml.group, ml.type, ml.digest });
        }

        // save the coll with the patcher
        outlet(0, "flags", new int[] { 1, 0 });

    }

    private void loadHelpObjects() {
        if (mawLibXML == null) {
            error("Wait for mawLib XML to load.  Try again in a second.");
            return;
        }

        // p.send("background", new Atom[] { Atom.newAtom(1) }); // send it to the
        p.setBackgroundColor(darkBrownColor[0], darkBrownColor[1], darkBrownColor[2]);
        p.setLocked(true);

        getMaxBox().hide();// hide self
        getMaxBox().toBackground(true); // send it to bg
        getMaxBox().setRect(15, 662, 133 + 15, 662 + 21);

        p.getWindow().setLocation(0, 44, 1024, 768); // move the window

        MaxBox footerLogo = p.getNamedBox(MAWLIB_FOOTER_LOGO);
        if (footerLogo == null) {
            footerLogo = p.newDefault(696, 666, "bpatcher", null);
            footerLogo.toBackground(true);
            footerLogo.setName(MAWLIB_FOOTER_LOGO);
            footerLogo.send("size", Atom.newAtom(new int[] { 315, 16 }));
            footerLogo.send("name", new Atom[] { Atom.newAtom("maw-footer-logo.maxpat") });
        }

        MaxBox bodyPanel = p.getNamedBox(MAWLIB_BODY_PANEL);
        // if it exists do nothing, otherwise, make it!
        if (bodyPanel == null) {
            bodyPanel = p.newDefault(10, 105, "panel", null);
            bodyPanel.setName(MAWLIB_BODY_PANEL);
            bodyPanel.send("size", Atom.newAtom(new int[] { 1004, 583 }));
            bodyPanel.send("bgcolor", Atom.newAtom(lightGreenColor));
            bodyPanel.send("rounded", new Atom[] { Atom.newAtom(15) }); // set the corners
            bodyPanel.toBackground(true);
            // background
        }

        MaxBox headerTitle = p.getNamedBox(MAWLIB_HEADER_TITLE);
        if (headerTitle == null) {
            headerTitle = p.newDefault(10, 10, "bpatcher", null);
            headerTitle.send("args", Atom.newAtom(mlo.getHeaderTitle()));
            headerTitle.toBackground(true);
            headerTitle.setName(MAWLIB_HEADER_TITLE);
            headerTitle.send("size", Atom.newAtom(new int[] { 400, 90 }));
            headerTitle.send("name", new Atom[] { Atom.newAtom("maw-header-title.maxpat") });
        }

        MaxBox headerMeta = p.getNamedBox(MAWLIB_HEADER_META);
        if (headerMeta == null) {
            headerMeta = p.newDefault(415, 10, "bpatcher", null);
            headerMeta.send("args", Atom.newAtom(mlo.getHeaderMeta()));
            headerMeta.toBackground(true);
            headerMeta.setName(MAWLIB_HEADER_META);
            headerMeta.send("size", Atom.newAtom(new int[] { 400, 90 }));
            headerMeta.send("name", new Atom[] { Atom.newAtom("maw-header-meta.maxpat") });
        }

        MaxBox headerExamples = p.getNamedBox(MAWLIB_HEADER_EXAMPLES);
        if (headerExamples == null) {
            headerExamples = p.newDefault(876, 13, "bpatcher", null);
            headerExamples.send("args", Atom.newAtom(mlo.getExamples()));
            headerExamples.toBackground(true);
            headerExamples.setName(MAWLIB_HEADER_EXAMPLES);
            headerExamples.send("size", Atom.newAtom(new int[] { 131, 40 }));
            headerExamples.send("name", new Atom[] { Atom.newAtom("maw-header-examples.maxpat") });
        }

        MaxBox headerRelated = p.getNamedBox(MAWLIB_HEADER_RELATED);
        if (headerRelated == null) {
            headerRelated = p.newDefault(876, 57, "bpatcher", null);
            headerRelated.send("args", Atom.newAtom(mlo.getRelated()));
            headerRelated.toBackground(true);
            headerRelated.setName(MAWLIB_HEADER_RELATED);
            headerRelated.send("size", Atom.newAtom(new int[] { 131, 40 }));
            headerRelated.send("name", new Atom[] { Atom
                    .newAtom("maw-header-related-objects.maxpat") });
        }

        // 696. 669. 315. 16.

        /*
         * MaxBox bgcolor = p.getNamedBox("mawlib_help_bgcolor"); if (bgcolor == null) { bgcolor =
         * p.newDefault(20, 20, "bgcolor", null); bgcolor.setName("mawlib_help_bgcolor");
         * bgcolor.send("list", Atom.newAtom(darkBrownColor)); bgcolor.hide(); } else {
         * post("mawlib_help_bgcolor was already there"); }
         */

        /*
         * MaxBox b11 = p.newDefault(20,20,"toggle",null); b11.setName("the name of this is b11");
         * b11.getName(); MaxBox b21 = p.newDefault(50,20,"toggle",null);
         * b21.setName("the name of this is b21"); MaxBox b31 = p.newDefault(80,20,"toggle",null);
         * b31.setName("the name of this is b31"); //p.getWindow().setVisible(true);
         * //p.getWindow().setTitle("TEST PATCH");
         */

    }

    private void loadXML(String file) {
        new AsyncXMLElement(file, this);
    }

    public void xmlLoaded(String path, XMLElement xml) {
        if (path.equalsIgnoreCase(mawLibXMLFile)) {
            mawLibXML = xml;
            if (mawLibXML == null) {
                error("Unable to load " + mawLibXMLFile + ".");
                return;
            }
            finishedLoadingMawLibXMLFile();
        } else if (path.equalsIgnoreCase(mawLibObjectXMLFile)) {
            mawLibObjectXML = xml;
            if (mawLibObjectXML == null) {
                error("Unable to load " + mawLibObjectXMLFile + ".");
                return;
            }
            finishedLoadingMawLibObjectXMLFile();
        } else if (path.equalsIgnoreCase(mawLibReleaseXMLFile)) {
            mawLibReleaseXML = xml;
            if (mawLibReleaseXML == null) {
                error("Unable to load " + mawLibReleaseXMLFile + ".");
                return;
            }
            finishedCheckingForUpdate();
        }

    }

    public void getInfo(String object) {

    }

}