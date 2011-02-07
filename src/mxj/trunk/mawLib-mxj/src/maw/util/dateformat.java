package maw.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

/* more info here 
 * http://java.sun.com/j2se/1.4.2/docs/api/java/text/SimpleDateFormat.html
 */

public class dateformat extends MaxObject {

    boolean debug = false;
    String pattern = "MM/dd/yyyy";

    SimpleDateFormat sdf = new SimpleDateFormat();

    public dateformat(Atom[] args) { // service type should always be in here

        declareInlets(new int[] { DataTypes.LIST });
        declareOutlets(new int[] { DataTypes.LIST });

        setInletAssist(new String[] { "Everything" });
        setOutletAssist(new String[] { "Formatted Date", "Parsed Date" });

        declareAttribute("debug");
        declareAttribute("pattern", null, "setPattern");

        if (args.length == 1) {
            setPattern(args[0].getString());
        }

    }

    public void now() {
        Date d = new Date();
        outlet(0, sdf.format(d));
    }

    public void parse(String s) {
        Date date = null;
        try {
            date = sdf.parse(s);
        } catch (ParseException e) {
            error("Can't parse date \"" + s + "\" with pattern \"" + pattern + "\"");
            return;
        }
        outlet(getNumOutlets(), date.getTime() + "");
    }

    public void format(String s) {
        Date d = new Date(Long.parseLong(s));
        outlet(0, sdf.format(d));
    }

    public void setPattern(String p) {

        try {
            sdf.applyPattern(p);
        } catch (Exception e) {
            error("Invalid parse pattern \"" + p + "\"");
            return;
        }

        this.pattern = p;
        if (debug) post("Pattern \"" + p + "\" set.");

    }

}