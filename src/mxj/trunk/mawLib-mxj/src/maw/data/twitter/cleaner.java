package maw.data.twitter;

import net.christopherbaker.data.Twitter.TwitterFormatFilter;

import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxSystem;

public class cleaner extends MaxObject {

    boolean debug = true;

    boolean newlines = false;
    boolean directmessages = false;
    boolean hashtags = false;
    boolean urls = false;
    boolean retweets = false;

    String replacementText = "";

    public cleaner() {

        post(">>"+MaxSystem.locateFile("/"));
        
        declareAttribute("debug");

        declareAttribute("newlines");
        declareAttribute("directmessages");
        declareAttribute("hashtags");
        declareAttribute("urls");
        declareAttribute("retweets");
        declareAttribute("replacementText");

        declareInlets(new int[] { DataTypes.LIST });
        declareOutlets(new int[] { DataTypes.LIST });

        setInletAssist(new String[] { "input" });
        setOutletAssist(new String[] { "Cleaned Messages" });
    }

    public void clean(String s) {
        TwitterFormatFilter tff = new TwitterFormatFilter();
        tff.setStripNewLines(newlines);
        tff.setStripDirectMessagePattern(directmessages);
        tff.setStripHashMessagePattern(hashtags);
        tff.setStripRetweetPattern(retweets);
        tff.setStripUrlPattern(urls);
        tff.setReplacementText(replacementText);
        s = tff.filter(s);
        outlet(0, s);
    }

}