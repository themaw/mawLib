package maw.jit.ipcam;

import java.net.URI;
import java.net.URISyntaxException;

import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class control extends MaxObject {

    BasicHTTPAuthenticator auth = null;

    String username;
    String password;

    PTZCameraControl ptz;// = new PTZCameraControl(uri, auth);

    String url;

    URI uri;

    public control(Atom[] args) {

        declareInlets(new int[] { DataTypes.ANYTHING });
        declareOutlets(new int[] { DataTypes.ANYTHING });

        setInletAssist(new String[] { "input" });
        setOutletAssist(new String[] { "output" });

        declareAttribute("username");
        declareAttribute("password");

        declareAttribute("url", null, "setUrl");

        declareAttribute("alias", "getAlias", "setAlias");

        declareAttribute("resolution", "getResolution", "setResolution");
        declareAttribute("brightness", "getBrightness", "setBrightness");
        declareAttribute("contrast", "getContrast", "setContrast");
        declareAttribute("refreshmode", "getRefreshMode", "setRefreshMode");

        declareAttribute("mirrorhorizontal", "getMirrorHorizontal", "setMirrorHorizontal");
        declareAttribute("mirrorvertical", "getMirrorVertical", "setMirrorVertical");

        declareAttribute("centeronstart", "getCenterOnStart", "setCenterOnStart");
        declareAttribute("disablepreset", "getDisablePreset", "setDisablePreset");

        declareAttribute("presetrate", "getPresetRate", "setPresetRate");

        declareAttribute("patroldownrate", "getPatrolDownRate", "setPatrolDownRate");
        declareAttribute("patroluprate", "getPatrolUpRate", "setPatrolUpRate");
        declareAttribute("patrolleftrate", "getPatrolLeftRate", "setPatrolLeftRate");
        declareAttribute("patrolrightrate", "getPatrolRightRate", "setPatrolRightRate");

        declareAttribute("patrolrate", "getPatrolRate", "setPatrolRate");

        declareAttribute("ledmode", "getLEDMode", "setLEDMode");

        declareAttribute("callpreset", "getCallPreset", "setCallPreset");
        declareAttribute("storepreset", "getStorePreset", "setStorePreset");

        declareAttribute("verticalpatrol", "getVerticalPatrol", "setVerticalPatrol");
        declareAttribute("horizontalpatrol", "getHorizontalPatrol", "setHorizontalPatrol");

        declareAttribute("moveup", "getMoveUp", "setMoveUp");
        declareAttribute("movedown", "getMoveDown", "setMoveDown");
        declareAttribute("moveleft", "getMoveLeft", "setMoveLeft");
        declareAttribute("moveright", "getMoveRight", "setMoveRight");

        declareAttribute("camerairon", "getCameraIROn", "setCameraIROn");

    }

    public void refresh() {

        outlet(getInfoIdx(), "alias", getAlias());
        outlet(getInfoIdx(), "resolution", getResolution());
        outlet(getInfoIdx(), "brightness", getBrightness());
        outlet(getInfoIdx(), "contrast", getContrast());
        outlet(getInfoIdx(), "refreshmode", getRefreshMode());
        outlet(getInfoIdx(), "mirrorhorizontal", getMirrorHorizontal());
        outlet(getInfoIdx(), "mirrorvertical", getMirrorVertical());

        outlet(getInfoIdx(), "centeronstart", getCenterOnStart());
        outlet(getInfoIdx(), "disablepreset", getDisablePreset());

        outlet(getInfoIdx(), "presetrate", getPresetRate());

        outlet(getInfoIdx(), "patroldownrate", getPatrolDownRate());
        outlet(getInfoIdx(), "patroluprate", getPatrolUpRate());
        outlet(getInfoIdx(), "patrolleftrate", getPatrolLeftRate());
        outlet(getInfoIdx(), "patrolrightrate", getPatrolRightRate());

        outlet(getInfoIdx(), "patrolrate", getPatrolRate());

        outlet(getInfoIdx(), "ledmode", getLEDMode());

        outlet(getInfoIdx(), "callpreset", getCallPreset());
        outlet(getInfoIdx(), "storepreset", getStorePreset());

        outlet(getInfoIdx(), "verticalpatrol", getVerticalPatrol());
        outlet(getInfoIdx(), "horizontalpatrol", getHorizontalPatrol());

        // center

        outlet(getInfoIdx(), "moveup", getMoveUp());
        outlet(getInfoIdx(), "movedown", getMoveDown());
        outlet(getInfoIdx(), "moveleft", getMoveLeft());
        outlet(getInfoIdx(), "moveright", getMoveRight());

        outlet(getInfoIdx(), "camerairon", getCameraIROn());

        // force refresh

    }

    public void forcerefresh() {
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    ptz.didInit = false;
                    ptz.didAuthorize = false;
                    ptz.init();
                    refresh();
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public void setCameraIROn(boolean value) {
        final boolean localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setIROn(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getCameraIROn() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.isOn) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setMoveRight(boolean value) {
        final boolean localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setMoveRight(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getMoveRight() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.isMovingRight) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setMoveLeft(boolean value) {
        final boolean localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setMoveLeft(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getMoveLeft() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.isMovingLeft) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setMoveDown(boolean value) {
        final boolean localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setMoveDown(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getMoveDown() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.isMovingDown) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setMoveUp(boolean value) {
        final boolean localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setMoveUp(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getMoveUp() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.isMovingUp) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void center() {
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.center()) {
                        error("Failed to issue command: " + "center");
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }

    }

    public void setHorizontalPatrol(boolean value) {
        final boolean localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setHorizontalPatrol(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getHorizontalPatrol() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.horizontalPatrol) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setVerticalPatrol(boolean value) {
        final boolean localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setVerticalPatrol(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getVerticalPatrol() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.verticalPatrol) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setCallPreset(int value) {
        final int localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.callPreset(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getCallPreset() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.currentPreset) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setStorePreset(int value) {
        final int localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.storePreset(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getStorePreset() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.lastStoredPreset) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setLEDMode(int value) {
        final int localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setLEDMode(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getLEDMode() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.led_mode) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setPatrolRate(int value) {
        final int localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setPatrolRate(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getPatrolRate() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.ptz_patrol_rate) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setPatrolRightRate(int value) {
        final int localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setPatrolRightRate(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getPatrolRightRate() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.ptz_patrol_right_rate) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setPatrolLeftRate(int value) {
        final int localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setPatrolLeftRate(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getPatrolLeftRate() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.ptz_patrol_left_rate) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setPatrolUpRate(int value) {
        final int localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setPatrolUpRate(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getPatrolUpRate() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.ptz_patrol_up_rate) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setPatrolDownRate(int value) {
        final int localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setPatrolDownRate(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getPatrolDownRate() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.ptz_patrol_down_rate) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setPresetRate(int value) {
        final int localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setPresetRate(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getPresetRate() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.ptz_preset_rate) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setDisablePreset(boolean value) {
        final boolean localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.disablePreset(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getDisablePreset() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.ptz_disable_preset) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setCenterOnStart(boolean value) {
        final boolean localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setCenterOnStart(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getCenterOnStart() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.ptz_center_onstart) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setMirrorHorizontal(boolean value) {
        final boolean localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setMirrorHorizontal(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getMirrorHorizontal() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.isMirroredHorizontally()) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setMirrorVertical(boolean value) {
        final boolean localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setMirrorVertical(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getMirrorVertical() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.isMirroredVertically()) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setRefreshMode(int value) {
        final int localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setRefreshMode(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getRefreshMode() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.refreshMode) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setResolution(int value) {
        final int localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setResolution(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getResolution() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.resolution) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setContrast(int value) {
        final int localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setContrast(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getContrast() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.contrast) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setBrightness(int value) {
        final int localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setBrightness(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getBrightness() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.brightness) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void setAlias(String value) {
        final String localValue = value;
        if (isConnected()) {
            (new Thread() {
                public void run() {
                    if (!ptz.setAlias(localValue)) {
                        error("Failed to set value: " + localValue);
                    }
                }
            }).start();
        } else {
            error("Not connected.");
        }
    }

    public Atom[] getAlias() {
        if (isConnected()) {
            return new Atom[] { Atom.newAtom(ptz.alias) };
        } else {
            error("Not connected.");
            return null;
        }
    }

    public void open() {
        if (ptz == null) {
            if (username != null)
                auth = new BasicHTTPAuthenticator(username, ((password == null) ? "" : password));

            try {
                uri = new URI(url);
                ptz = new PTZCameraControl(uri, auth);

                (new Thread() {
                    public void run() {
                        ptz.init();

                        refresh();

                    }
                }).start();
            } catch (URISyntaxException e) {
                error("Malformed URL.");
                e.printStackTrace();
            }

        } else {
            error("Already connected.");
        }
    }

    public boolean isConnected() {
        return ptz != null && ptz.isConnected();
    }

    public void close() {
        ptz = null;
    }

    public void setUrl(String value) {
        if (!value.endsWith("/")) value += "/";
        this.url = value;
    }

}