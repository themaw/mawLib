package maw.jit;

import com.cycling74.jitter.JitterMatrix;
import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxSystem;

public class ImageLoader extends MaxObject {

    JitterMatrix matrix;
    String url;

    /* clean up stuff here */
    protected void notifyDeleted() { // clean up!
        matrix.freePeer();
    }

    public ImageLoader(Atom[] args) {

        declareInlets(new int[] { DataTypes.ANYTHING });
        declareOutlets(new int[] { DataTypes.ANYTHING });

        setInletAssist(new String[] { "input" });
        setOutletAssist(new String[] { "output" });

        // create jitter objects

        matrix = new JitterMatrix();
        matrix.setAdapt(true);

    }

    public void load(String url) {

        String loadPath = url;

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

        String importMovie = matrix.importmovie(loadPath);

        // Atom[] a = matrix.bang();

        // for (Atom aa : a) {
        // post(aa.toString());
        // }

        if (importMovie != null) {

            post("Loaded " + importMovie);
            post("Size=" + matrix.getDim()[0] + " " + matrix.getDim()[1]);

            post(">>" + matrix.getName());
            post(">>" + matrix.getRegisteredName());

        } else {
            error("Error loading: " + url);
        }

    }

}