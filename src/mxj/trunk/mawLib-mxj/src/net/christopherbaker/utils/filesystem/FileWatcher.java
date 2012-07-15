package net.christopherbaker.utils.filesystem;

/* http://www.rgagnon.com/javadetails/java-0490.html */

import java.io.File;
import java.util.TimerTask;

public class FileWatcher extends TimerTask {
    private long timeStamp;
    private File file;
    private FileChangedListener callback;

    public FileWatcher(FileChangedListener callback, File file) {
        this.callback = callback;
        this.file = file;
        this.timeStamp = file.lastModified();
    }

    public final void run() {
        long timeStamp = file.lastModified();

        if (this.timeStamp != timeStamp) {
            this.timeStamp = timeStamp;
            callback.fileChanged(file);
        }
    }

    public interface FileChangedListener {
        void fileChanged(File file);
        
    }

}