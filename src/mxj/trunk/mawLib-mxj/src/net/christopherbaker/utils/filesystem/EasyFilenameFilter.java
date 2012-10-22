package net.christopherbaker.utils.filesystem;

import java.io.File;
import java.io.FilenameFilter;

public class EasyFilenameFilter implements FilenameFilter {

    public enum MatchType {
        BEGINNING, END, ANYWHERE
    }

    MatchType matchType = MatchType.END;

    String[] filters;
    boolean allowDirectories = false;

    public void setMatchType(MatchType type) {
        this.matchType = type;
    }

    public MatchType getMatchType() {
        return matchType;
    }

    public EasyFilenameFilter() {
        this(new String[] {});
    }

    public EasyFilenameFilter(String filter) {
        this(new String[] { filter });
    }

    public EasyFilenameFilter(String[] filters) {
        this(filters, false);
    }

    public EasyFilenameFilter(String[] filters, boolean allowDirectories) {
        this(filters, allowDirectories, MatchType.END);
    }

    public EasyFilenameFilter(String[] filters, boolean allowDirectories, MatchType matchType) {
        this.filters = filters;
        this.allowDirectories = allowDirectories;
        this.matchType = matchType;

    }

    public boolean accept(File dir, String name) {
        File thisFile = new File(dir + name);

        if (thisFile.isDirectory() && !allowDirectories) { return false; // reject the dir
        }

        if (filters != null && filters.length > 0) {
            for (String s : filters) {
                if (matchType == MatchType.BEGINNING && name.startsWith(s)) {
                    return true;
                } else if (matchType == MatchType.END && name.endsWith(s)) {
                    return true;
                } else if (matchType == MatchType.ANYWHERE && name.indexOf(s) > -1) { return true; }
            }
            return false;
        }

        return true; // accept all
    }

    public File[] filter(File folder) {
        if (folder.isDirectory()) { return folder.listFiles(this); }
        System.err.println("FOLDER=" + folder + " is not a directory");
        return null;

    }
}
