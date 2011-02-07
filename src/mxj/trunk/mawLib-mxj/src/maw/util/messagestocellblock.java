package maw.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class messagestocellblock extends MaxObject {

    static final Logger logger = LoggerFactory.getLogger(messagestocellblock.class);

    long currentrow = 0;
    boolean showwarnings = true;
    boolean clearonreset = true;

    public messagestocellblock() {

        declareInlets(new int[] { DataTypes.ANYTHING, DataTypes.MESSAGE });
        declareOutlets(new int[] { DataTypes.ANYTHING });

        setInletAssist(new String[] { "Lists of things.", "Bang to reset." });
        setOutletAssist(new String[] { "Data formatted for jit.cellblock." });

        declareAttribute("currentrow");
        declareAttribute("showwarnings");
        declareAttribute("clearonreset");

    }

    public void reset() {
        currentrow = 0;
        if (clearonreset) outlet(0, "clear", "all");

    }

    public void bang() {
        if (getInlet() == 1) reset();
    }

    public void anything(String msg, Atom[] args) {
        Atom[] newArgs = new Atom[args.length + 1];
        newArgs[0] = Atom.newAtom(msg);
        System.arraycopy(args, 0, newArgs, 1, args.length);
        Atom[] outputAtomArray = new Atom[3];
        for (int currentCol = 0; currentCol < 8 /* newArgs.length */; currentCol++) {
            outputAtomArray[0] = Atom.newAtom(currentCol);
            outputAtomArray[1] = Atom.newAtom(currentrow);
            if (newArgs[currentCol].isString() && newArgs[currentCol].getString().length() > 127) {
                String displayString = newArgs[currentCol].getString().substring(0, 127);
                outputAtomArray[2] = Atom.newAtom(displayString);
                if (showwarnings)
                    error("The string [" + displayString.substring(0, 20)
                            + " ...] was too long for jit.cellblock to display. Shortening ...");
            } else {
                outputAtomArray[2] = newArgs[currentCol];
            }

            outlet(0, "set", outputAtomArray);
        }
        currentrow++;
    }
}