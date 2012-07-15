package net.christopherbaker.utils.filesystem;

import java.awt.FileDialog;
import java.awt.Frame;
import java.io.File;

//http://www.java-forums.org/java-tips/6330-example-file-dialog.html

public final class EasyFileDialog {

    public static File loadFolder(Frame f, String title, String defDir) {
        return loadFile(f, title, defDir, null, new String[] {}, true);
    }

    public static File loadFile(Frame f, String title, String defDir, String defFile) {
        return loadFile(f, title, defDir, defFile, null, false);
    }

    public static File loadFile(Frame f, String title, String defDir, String defFile,
            String[] fileExtensions) {
        return loadFile(f, title, defDir, defFile, fileExtensions, false);
    }

    public static File loadFile(Frame f, String title, String defDir, String defFile,
            String[] fileExtensions, boolean allowDirectories) {
        FileDialog fd = new FileDialog(f, title, FileDialog.LOAD);
        fd.setFile(defFile);
        fd.setFilenameFilter(new EasyFilenameFilter(fileExtensions, allowDirectories));
        fd.setDirectory(defFile);
        fd.setLocation(50, 50);
        fd.setVisible(true);
        if (fd.getDirectory() != null && fd.getFile() != null) { return new File(fd.getDirectory(),
                fd.getFile()); }
        
        return null;

    }

    public static File saveFolder(Frame f, String title, String defDir) {
        return saveFile(f, title, defDir, null, new String[] {}, true);
    }

    public static File saveFile(Frame f, String title, String defDir, String defFile) {
        return saveFile(f, title, defDir, defFile, null, false);
    }

    public static File saveFile(Frame f, String title, String defDir, String defFile,
            String[] fileExtensions) {
        return saveFile(f, title, defDir, defFile, fileExtensions, false);
    }

    public static File saveFile(Frame f, String title, String defDir, String defFile,
            String[] fileExtensions, boolean allowDirectories) {
        FileDialog fd = new FileDialog(f, title, FileDialog.SAVE);
        fd.setFile(defFile);
        fd.setFilenameFilter(new EasyFilenameFilter(fileExtensions, allowDirectories));
        fd.setDirectory(defDir);
        fd.setLocation(50, 50);
        fd.setVisible(true);
        if (fd.getDirectory() != null && fd.getFile() != null) { return new File(fd.getDirectory(),
                fd.getFile()); }

        return null;

    }

    // testing
    public static void main(String s[]) {
        System.out.println("Loading : "
                + EasyFileDialog.loadFile(new Frame(), "Open...", ".\\", "*.java", new String[] {
                        ".java", ".txt" }));
        System.out.println("Saving : "
                + EasyFileDialog.saveFile(new Frame(), "Save...", ".\\", "*.java"));
        System.exit(0);
    }
}