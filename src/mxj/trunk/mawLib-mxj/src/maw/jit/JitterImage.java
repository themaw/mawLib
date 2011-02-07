package maw.jit;

import maw.util.locate;

import com.cycling74.jitter.JitterMatrix;
import com.cycling74.jitter.JitterObject;
import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;

public class JitterImage {

    String openGLContext;

    String filename;
    float x, y;
    float screenWidth, screenHeight;
    String id;

    JitterMatrix matrix;
    JitterObject texture;

    public void freePeer() {
        if (matrix != null) matrix.freePeer();
        if (texture != null) texture.freePeer();
    }

    public JitterImage(String filename, String id, float x, float y, float screenWidth,
            float screenHeight, String openGLContext) {
        this.filename = filename;
        this.id = id;
        this.x = x;
        this.y = y;
        this.screenWidth = screenWidth;
        this.screenHeight = screenHeight;
        this.openGLContext = openGLContext;

        // load the image and texture
        loadImage();
        loadTexture();
    }
    
    

    private void loadImage() {
        matrix = new JitterMatrix();
        matrix.setAttr("adapt", 1);
        matrix.setAttr("name", id);
        if (matrix.importmovie(locate.find(filename)) == null)
            MaxObject.error("Error loading image: " + filename);
    }

    public void loadTexture() {
        texture = new JitterObject("jit.gl.texture", openGLContext);
        texture.setAttr("adapt", 1);
        texture.setAttr("name", id + "_tex");
        texture.call("jit_matrix", matrix.getName());
    }

    public float scaleX() {
        return screenWidth / getWidth();
    }

    public float scaleY() {
        return screenHeight / getHeight();
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public float getX() {
        return x;
    }

    public void setX(float x) {
        this.x = x;
    }

    public float getY() {
        return y;
    }

    public void setY(float y) {
        this.y = y;
    }

    public float getScreenWidth() {
        return screenWidth;
    }

    public void setScreenWidth(float screenWidth) {
        this.screenWidth = screenWidth;
    }

    public float getScreenHeight() {
        return screenHeight;
    }

    public void setScreenHeight(float screenHeight) {
        this.screenHeight = screenHeight;
    }

    public float getWidth() {
        return matrix.getDim()[0];
    }

    public float getHeight() {
        return matrix.getDim()[1];
    }

    public int getTexWidth() {
        Atom[] dim = texture.getAttr("dim");
        return dim[0].getInt();
    }

    public float getTexHeight() {
        Atom[] dim = texture.getAttr("dim");
        return dim[1].getInt();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append(" id:" + id);
        sb.append(" matrixName:" + matrix.getName());
        // sb.append(" filename:" + filename);
        sb.append(" scalex/y:" + scaleX() + "/" + scaleY());

        sb.append(" x/y:" + x + "/" + y);
        sb.append(" sW/sH:" + screenWidth + "/" + screenHeight);
        sb.append(" w/h:" + getWidth() + "/" + getHeight());
        sb.append(" texName=" + texture.getAttrString("name"));
        sb.append(" texw/h=" + getTexWidth() + "/" + getTexHeight());
        return sb.toString();
    }

}