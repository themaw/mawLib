package net.christopherbaker.utils.filesystem;

import java.io.File;

import net.christopherbaker.utils.filesystem.DirWatcher.WatcherAction;


public interface DirWatcherListener {
    public void onChange(File file, WatcherAction action);

}