package net.christopherbaker.utils.filesystem;

import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DirWatcher extends TimerTask {

    static final Logger logger = LoggerFactory.getLogger(DirWatcher.class);

    Timer t = null;

    long interval;
    private File path;
    private HashMap<String, Long> dir = new HashMap<String, Long>();
    private EasyFilenameFilter eff;

    public DirWatcherListener listener;

    public DirWatcher(DirWatcherListener listener, File path) {
        this(listener, path, new EasyFilenameFilter());
    }

    public DirWatcher(DirWatcherListener listener, File path, EasyFilenameFilter eff) {
        this(listener, path, eff, 10 * 1000);
    }

    public DirWatcher(DirWatcherListener listener, File path, EasyFilenameFilter eff, long interval) {

        this.listener = listener;
        this.path = path;
        this.eff = eff;
        this.interval = interval;

        setInterval(interval);
    }

    public void setInterval(long interval) {
        this.interval = interval;
        if (t != null) {
            t.cancel();
            t.purge();
        }

        t = new Timer();
        t.scheduleAtFixedRate(this, 0, interval);
    }

    public void printFiles() {
        // now check for deleted files
        @SuppressWarnings("unchecked")
        Set<String> ref = ((HashMap<String, Long>) (dir.clone())).keySet();

        for (String ss : ref) {
            System.out.println(ss);
        }
        System.out.println("---");
    }

    public final void run() {

        Set<File> filesFound = new HashSet<File>();

        // get the current list of files
        File[] thisfilesArray = eff.filter(path);

        // scan the files and check for modification/addition
        for (File f : thisfilesArray) {
            filesFound.add(f);
            Long current = dir.get(f.toString());

            if (current == null) {
                // new file
                dir.put(f.toString(), new Long(f.lastModified()));
                listener.onChange(f, WatcherAction.ADDED);

            } else if (current.longValue() != f.lastModified()) {
                // modified file
                dir.put(f.toString(), new Long(f.lastModified()));
                listener.onChange(f, WatcherAction.MODIFIED);
            }
        }

        // now check for deleted files
        @SuppressWarnings("unchecked")
        Set<String> ref = ((HashMap<String, Long>) (dir.clone())).keySet();

        for (File s : filesFound) {
            ref.remove(s.toString());
        }

        ref.removeAll(filesFound); // remove all good files

        Iterator<String> it = ref.iterator();
        while (it.hasNext()) {
            String deletedFile = it.next();
            dir.remove(deletedFile);
            listener.onChange(new File(deletedFile), WatcherAction.DELETED);
        }
    }

    public enum WatcherAction {
        ADDED, MODIFIED, DELETED;
    }

}
