package maw.util;

import java.util.prefs.NodeChangeEvent;
import java.util.prefs.NodeChangeListener;
import java.util.prefs.Preferences;

import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class sharedpreferences extends MaxObject implements NodeChangeListener {

    // some random shizzle (not random enough?)
    final static String DELIMITER = "\t\n\t\n\t\n\t\n\t\n";

    private Preferences prefs;

    String namespace = null;

    public sharedpreferences(Atom[] args) {

        // Stores preferences in the user's home directory
        // http://java.sun.com/j2se/1.4.2/docs/guide/lang/preferences.html

        declareAttribute("namespace", null, "setnamespace");

        declareInlets(new int[] { DataTypes.ANYTHING });
        declareOutlets(new int[] { DataTypes.ANYTHING });

        setInletAssist(new String[] { "Get and Put Preferences" });
        setOutletAssist(new String[] { "Preference" });

        // see if it was initialized
        if (args.length == 1 && args[0].isString()) {
            setnamespace(args[0].getString());
        }
    }

    public void setpreference(Atom[] args) {
        if (args.length < 2) {
            error("Input must be in the form KEY VALUE(S)");
        } else {
            StringBuffer sb = new StringBuffer();
            for (int i = 1; i < args.length; i++) {
                Atom a = args[i];
                if (a.isFloat()) {
                    sb.append("f");
                    sb.append(a.getFloat());
                } else if (a.isInt()) {
                    sb.append("i");
                    sb.append(a.getInt());
                } else if (a.isString()) {
                    sb.append("s");
                    sb.append(a.getString());
                }
                sb.append(DELIMITER);
            }
            prefs.put(args[0].getString(), sb.toString());
        }
    }

    public void getpreference(Atom[] args) {

        if (args.length != 1) {
            error("Input must a single KEY");
        } else {
            String name = args[0].getString();
            String result = prefs.get(name, null);

            if (result == null) {
                error("Preference \"" + name + "\" not found.");
                return;
            }

            String[] results = result.split(DELIMITER);
            
            Atom[] atom = new Atom[results.length + 1];

            atom[0] = args[0];

            for (int i = 0; i < results.length; i++) {
                String s = results[i];
                String rest = s.substring(1);
                char c = s.charAt(0);

                switch (c) {
                case 'f':
                    atom[i + 1] = Atom.newAtom(Float.parseFloat(rest));
                    break;
                case 'i':
                    atom[i + 1] = Atom.newAtom(Integer.parseInt(rest));
                    break;
                case 's':
                    atom[i + 1] = Atom.newAtom(rest);
                    break;
                }
            }

            outlet(0, atom);

        }

    }

    public void setnamespace(String namespace) {
        this.namespace = namespace;
        prefs = Preferences.userRoot().node(namespace);
    }

    public void childAdded(NodeChangeEvent evt) {
        post("Child Added =" + evt.toString());
    }

    public void childRemoved(NodeChangeEvent evt) {
        post("Child Removed =" + evt.toString());
    }

}