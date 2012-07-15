package net.christopherbaker.utils.filesystem;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Date;
import java.util.Timer;

public class PlainTextFileListWatcher implements FileWatcher.FileChangedListener {

    File file;
    FileWatcher fw;
    Timer timer;

    public PlainTextFileListWatcher(String filename) throws FileNotFoundException {
        file = new File(filename);
        if (!file.canRead()) { throw new FileNotFoundException(filename); }
        fw = new FileWatcher(this, file);

        timer = new Timer();
        startWatching();
    }

    public void stopWatching() {
        timer.cancel();
    }

    public void startWatching() {
        timer.schedule(fw, new Date(), 1000);
    }

    public void fileChanged(File file) {
        System.out.println("FILE " + file + " was modified.");

    }
}