package maw.util;

import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxSystem;

public class locate extends MaxObject {

    public locate() {

        declareInlets(new int[] { DataTypes.ANYTHING });
        declareOutlets(new int[] { DataTypes.ANYTHING });

        setInletAssist(new String[] { "input" });
        setOutletAssist(new String[] { "output" });
    }

    public void locate(String s) {
        String location = null;
        try {
            location = MaxSystem.locateFile(s);
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (location == null) {
            error("Unable to locate " + s + " on the Max search path.");
            outletBang(this.getNumOutlets());
            // outlet(0, s);
        } else {
            outlet(0, location);
        }
    }

    public static String find(String url) {

        String loadPath = url;

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

        return loadPath;
    }

}