package maw.util;

import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class length extends MaxObject {

    public length(Atom[] args) { // service type should always be in here
        declareInlets(new int[] { DataTypes.MESSAGE });
        declareOutlets(new int[] { DataTypes.INT });

        setInletAssist(new String[] { "Anything" });
        setOutletAssist(new String[] { "Number of Characters (Length)" });

    }

    public void anything(String message, Atom[] args) {
        StringBuffer sb = new StringBuffer();
        if (args.length > 0) {
            for (int i = 0; i < args.length; i++) {
                sb.append(args[i] + " ");
            }
        } else {
            sb.append(message);
        }
        outlet(0, sb.toString().length());

    }

}