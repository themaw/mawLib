package maw.util;

import java.io.File;
import java.io.IOException;

import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxSystem;

public class showfolder extends MaxObject {

    Runtime runtime = Runtime.getRuntime();

    public showfolder() {

        declareInlets(new int[] { DataTypes.ANYTHING });
        declareOutlets(new int[] { DataTypes.ANYTHING });

        setInletAssist(new String[] { "Folder to Show" });
        setOutletAssist(new String[] { "Output" });

    }

    public void show(String folder) {

        File f = new File(folder);
        if (!f.isDirectory()) {
            error("ShowFolder needs a valid directory.");
            return;
        }

        StringBuffer sb = new StringBuffer();

        if (MaxSystem.isOsMacOsX()) {
            sb.append("open");
        } else if (MaxSystem.isOsWindows()) {
            sb.append("explorer");
        } else {
            error("Unknown OS");
            return;
        }

        sb.append(" ");
        sb.append(f.getAbsolutePath());

        try {
            runtime.exec(sb.toString());
        } catch (IOException e) {
            error("Problem executing command : " + sb.toString());
            e.printStackTrace();
        }

    }

}