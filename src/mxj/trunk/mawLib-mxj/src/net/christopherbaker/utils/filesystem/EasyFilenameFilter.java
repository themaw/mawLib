package net.christopherbaker.utils.filesystem;

import java.io.File;
import java.io.FilenameFilter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class EasyFilenameFilter implements FilenameFilter {

    public enum MatchType {
        BEGINNING, END, ANYWHERE
    }

    MatchType matchType = MatchType.END;

    static final Logger logger = LoggerFactory.getLogger(EasyFilenameFilter.class);

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
        logger.debug("EXT={} allowDirs={} matchType={}", new Object[] { filters, allowDirectories,
                matchType });

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
        logger.error("FOLDER={} is not a directory", folder);
        return null;

    }

}
