package maw.data.twitter;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import twitter4j.AccountSettings;
import twitter4j.AccountTotals;
import twitter4j.AsyncTwitter;
import twitter4j.AsyncTwitterFactory;
import twitter4j.Category;
import twitter4j.DirectMessage;
import twitter4j.Friendship;
import twitter4j.IDs;
import twitter4j.Location;
import twitter4j.OEmbed;
import twitter4j.PagableResponseList;
import twitter4j.Place;
import twitter4j.QueryResult;
import twitter4j.RateLimitStatus;
import twitter4j.RelatedResults;
import twitter4j.Relationship;
import twitter4j.ResponseList;
import twitter4j.SavedSearch;
import twitter4j.SimilarPlaces;
import twitter4j.Status;
import twitter4j.StatusUpdate;
import twitter4j.Trends;
import twitter4j.TwitterAPIConfiguration;
import twitter4j.TwitterException;
import twitter4j.TwitterListener;
import twitter4j.TwitterMethod;
import twitter4j.User;
import twitter4j.UserList;
import twitter4j.api.HelpResources.Language;
import twitter4j.auth.AccessToken;
import twitter4j.auth.OAuthAuthorization;
import twitter4j.auth.RequestToken;
import twitter4j.conf.ConfigurationBuilder;

import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

/*
 * This object combines searching and 
 */

public class client extends MaxObject implements TwitterListener {

    boolean debug = false;

    String twitterClientVersion = "1.1";
    String twitterClientURL = "http://dev.minneapolisartonwheels.org/maw.data.twitter.xml";
    String twitterUserAgent = "maw.data.twitter /2.0";
    String twitterSource = "maw.data.twitter";

    String oAuthConsumerKey = null;
    String oAuthConsumerSecret = null;
    String oAuthAccessToken = null;
    String oAuthAccessTokenSecret = null;

    // queries
    String query = "MAW";
    String lang = "";
    int resultsperquery = 100;
    long lastid = -1;

    User user = null;

    AsyncTwitterFactory asyncFactory = asyncFactory = new AsyncTwitterFactory();

    public client() {

        declareAttribute("debug");

        // poster
        declareAttribute("consumerKey", "getOAuthConsumerKey", "setOAuthConsumerKey");
        declareAttribute("consumerSecret", "getOAuthConsumerSecret", "setOAuthConsumerSecret");
        declareAttribute("accessToken", "getOAuthAccessToken", "setOAuthAccessToken");
        declareAttribute("accessTokenSecret", "getOAuthAccessTokenSecret",
                "setOAuthAccessTokenSecret");

        // query
        declareAttribute("query");
        declareAttribute("lang");
        declareAttribute("resultsperquery");
        declareAttribute("lastid");

        // max stuff
        declareInlets(new int[] { DataTypes.LIST });
        declareOutlets(new int[] { DataTypes.LIST });

        setInletAssist(new String[] { "input" });
        setOutletAssist(new String[] { "Twitter output" });

    }

    public String getScreenName() {
        if (user == null) {
            error("You must be authorized first.");
            return null;
        }

        return user.getScreenName();
    }

    public String getName() {
        if (user == null) {
            error("You must be authorized first.");
            return null;
        }

        return user.getName();
    }

    public long getId() {
        if (user == null) {
            error("You must be authorized first.");
            return -1;
        }

        return user.getId();
    }

    public String getOAuthConsumerKey() {
        return oAuthConsumerKey;
    }

    public void setOAuthConsumerKey(String oAuthConsumerKey) {
        this.oAuthConsumerKey = oAuthConsumerKey;
    }

    public String getOAuthConsumerSecret() {
        return oAuthConsumerSecret;
    }

    public void setOAuthConsumerSecret(String oAuthConsumerSecret) {
        this.oAuthConsumerSecret = oAuthConsumerSecret;

    }

    public String getOAuthAccessToken() {
        return oAuthAccessToken;
    }

    public void setOAuthAccessToken(String oAuthAccessToken) {
        this.oAuthAccessToken = oAuthAccessToken;
    }

    public String getOAuthAccessTokenSecret() {
        return oAuthAccessTokenSecret;
    }

    public void setOAuthAccessTokenSecret(String oAuthAccessTokenSecret) {
        this.oAuthAccessTokenSecret = oAuthAccessTokenSecret;
    }

    private AsyncTwitter client() {
        ConfigurationBuilder config = new ConfigurationBuilder();
        config.setOAuthConsumerKey(oAuthConsumerKey);
        config.setOAuthConsumerSecret(oAuthConsumerSecret);
        config.setOAuthAccessToken(oAuthAccessToken);
        config.setOAuthAccessTokenSecret(oAuthAccessTokenSecret);

        OAuthAuthorization oauth = new OAuthAuthorization(config.build());
        AsyncTwitter client = asyncFactory.getInstance(oauth);
        client.addListener(this);
        return client;
    }

    public void tweet(String tweet) {
        client().updateStatus(new StatusUpdate(tweet));
    }

    public void screenname() {
        String screenName = null;
        
        try {
            screenName = client().getScreenName();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (TwitterException e) {
            e.printStackTrace();
        }
        
        
        outlet(getInfoIdx(), "screenname", Atom.newAtom(screenName));
    }

    // // do search
    // public void search() {
    // if (twitterClient != null) {
    // Query q = new Query();
    // q.setLang(this.lang);
    // q.setQuery(this.query);
    // q.setRpp(this.resultsperquery);
    // q.setSinceId(this.lastid);
    // twitterClient.search(q);
    // } else {
    // error("Please connect to Twitter.");
    // }
    //
    // }

    // public void directmessage(Atom[] input) {
    // if (twitterClient != null) {
    // twitterClient.sendDirectMessage(input[0].getString(), input[1].getString());
    // } else {
    // error("Please connect to Twitter.");
    // }
    // }

    /*
     * // twitter search public void start() { if (!tl.isRunning()) { tl.startSearch(); } else {
     * error("Twitter listener is already running."); } } public void stop() { if (tl.isRunning()) {
     * if (debug) post("Twitter listener stoping."); tl.stopSearch(); } else {
     * error("Twitter listener is not running."); } }
     */

    /*
     * public void registerDispose(Disposable o) { // nothing to do uses notify delete }
     */

    /*
     * public void twitterListenerState(int i) { if (debug) post("State=" + tl.getStateString(i));
     * // outlet(this.getNumOutlets() + 1, new Atom[] { Atom.newAtom("status"), //
     * Atom.newAtom(tl.getStateString(i)) }); }
     */

    /*
     * public void newTwitterMessage(TwitterListener listener) { if (debug) post("got a listener " +
     * listener.getName() + "   " + listener.getNewTwitters().size() + " new TWTIS");
     * ArrayList<Twit> twits = listener.getNewTwitters(); Iterator<Twit> twitIterator =
     * twits.iterator(); while (twitIterator.hasNext()) { Twit twit = twitIterator.next(); if
     * (debug) System.out.println(twit); Atom[] outputArray = new Atom[] {
     * Atom.newAtom(twit.getId()), Atom.newAtom(twit.getUsername()), Atom.newAtom(twit.getAuthor()),
     * Atom.newAtom(twit.getMessage()), Atom.newAtom(twit.getPublished().toString()),
     * Atom.newAtom(twit.getUpdated().toString()) }; outlet(0, outputArray); } }
     */

    protected void notifyDeleted() { // clean up!
        // post("Object deleted.");
        // if (twitterClient != null) {
        // twitterClient.shutdown();
        // }

    }

    public void addedUserListMember(UserList userList) {
        if (debug) post("addedUserListMember: " + userList);
    }

    public void addedUserListMembers(UserList userList) {
        if (debug) post("TBI-0");

    }

    public void checkedUserListMembership(User user) {
        if (debug) post("checkedUserListMembership not implemented");
    }

    public void checkedUserListSubscription(User user) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void createdBlock(User user) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void createdFavorite(Status status) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void createdFriendship(User user) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void createdPlace(Place place) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void createdUserList(UserList userList) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void deletedUserListMember(UserList userList) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void destroyedBlock(User user) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void destroyedDirectMessage(DirectMessage directMessage) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void destroyedFavorite(Status status) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void destroyedFriendship(User user) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void destroyedStatus(Status status) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void destroyedUserList(UserList userList) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void disabledNotification(User user) {
        if (debug) post("TBI-13");

    }

    public void enabledNotification(User user) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotAPIConfiguration(TwitterAPIConfiguration arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotAccountSettings(AccountSettings arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotAccountTotals(AccountTotals accountTotals) {
        if (debug) {
            post("Get Account Totals: level:" + accountTotals.getAccessLevel());
            post("Get Account Totals: favs:" + accountTotals.getFavorites());
            post("Get Account Totals: level:" + accountTotals.getFollowers());
            post("Get Account Totals: follows:" + accountTotals.getFriends());
            post("Get Account Totals: updates:" + accountTotals.getUpdates());
        }
    }

    public void gotAllUserLists(ResponseList<UserList> userLists) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotAvailableTrends(ResponseList<Location> locations) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotBlockingUsers(ResponseList<User> responses) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotBlockingUsersIDs(IDs ids) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotCurrentTrends(Trends trends) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotDailyTrends(ResponseList<Trends> trends) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotDirectMessage(DirectMessage directMessage) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotDirectMessages(ResponseList<DirectMessage> directMessages) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotExistsBlock(boolean blockExists) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotExistsFriendship(boolean friendshipExists) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotFavorites(ResponseList<Status> tweets) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotFollowersIDs(IDs arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotFriendsIDs(IDs arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotGeoDetails(Place arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotHomeTimeline(ResponseList<Status> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotIncomingFriendships(IDs arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

//    public void gotLanguages(ResponseList<Language> arg0) {
//        if (debug) post("checkedUserListMembership not implemented");
//
//    }

    public void gotLocationTrends(Trends arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotMemberSuggestions(ResponseList<User> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotMentions(ResponseList<Status> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotNoRetweetIds(IDs arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotOutgoingFriendships(IDs arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotPrivacyPolicy(String arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

//    public void gotProfileImage(ProfileImage arg0) {
//        if (debug) post("checkedUserListMembership not implemented");
//
//    }

    public void gotRateLimitStatus(RateLimitStatus arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotRelatedResults(RelatedResults arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotRetweetedBy(ResponseList<User> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotRetweetedByIDs(IDs arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotRetweetedByMe(ResponseList<Status> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotRetweetedByUser(ResponseList<Status> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotRetweetedToMe(ResponseList<Status> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotRetweetedToUser(ResponseList<Status> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotRetweets(ResponseList<Status> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotRetweetsOfMe(ResponseList<Status> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotReverseGeoCode(ResponseList<Place> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotSentDirectMessages(ResponseList<DirectMessage> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotShowFriendship(Relationship arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotShowStatus(Status arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotShowUserList(UserList arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotSimilarPlaces(SimilarPlaces arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotSuggestedUserCategories(ResponseList<Category> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotTermsOfService(String arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotUserDetail(User arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotUserListMembers(PagableResponseList<User> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotUserListMemberships(PagableResponseList<UserList> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotUserListStatuses(ResponseList<Status> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotUserListSubscribers(PagableResponseList<User> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotUserListSubscriptions(PagableResponseList<UserList> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotUserLists(PagableResponseList<UserList> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotUserSuggestions(ResponseList<User> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotUserTimeline(ResponseList<Status> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void gotWeeklyTrends(ResponseList<Trends> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void lookedUpFriendships(ResponseList<Friendship> arg0) {
        if (debug) post("checkedUserListMembership not implemented");

    }

    public void lookedupUsers(ResponseList<User> arg0) {
        if (debug) post("lookedupUsers not implemented");

    }

    public void onException(TwitterException arg0, TwitterMethod arg1) {
        error("Exception: " + arg0 + " method:" + arg1.toString());
    }

    public void reportedSpam(User arg0) {
        if (debug) post("Reported spam: " + arg0);
    }

    public void retweetedStatus(Status arg0) {
        if (debug) post("Retweeted status: " + arg0);
    }

    public void searched(QueryResult results) {
        List<Status> tweets = results.getTweets();
        Iterator<Status> tweetIterator = tweets.iterator();
        lastid = Math.max(results.getMaxId(), lastid);

        while (tweetIterator.hasNext()) {
            Status t = tweetIterator.next();

            Atom[] outputArray = new Atom[] { Atom.newAtom(Long.toString(t.getId())),
                    Atom.newAtom(t.getUser().getId()), 
                    Atom.newAtom(t.getUser().getScreenName()),
                    Atom.newAtom(t.getUser().getName()),
                    Atom.newAtom(t.getText()),
                    Atom.newAtom(Long.toString(t.getCreatedAt().getTime())) };

            outlet(0, outputArray);

        }

    }

    public void searchedPlaces(ResponseList<Place> places) {
        if (debug) {

            for (Place place : places) {
                post("Searched place: " + place);
            }
        }

    }

    public void searchedUser(ResponseList<User> users) {
        if (debug) {
            for (User user : users) {
                post("Searched place: " + users);
            }
        }

    }

    public void sentDirectMessage(DirectMessage message) {
        if (debug) post("Sent direct message: " + message);

    }

    public void subscribedUserList(UserList userList) {
        if (debug) post("Subscribed to user list: " + userList);

    }

    public void tested(boolean tested) {
        if (debug) post("Tested: " + tested);

    }

    public void unsubscribedUserList(UserList userList) {
        if (debug) post("Unsubscribed to user list: " + userList);

    }

    public void updatedAccountSettings(AccountSettings accountSettings) {
        if (debug) post("Updated account settings: " + accountSettings);

    }

    public void updatedFriendship(Relationship friendship) {
        if (debug) post("Updated friendship: " + friendship);

    }

    public void updatedProfile(User user) {
        if (debug) post("Updated profile: " + user);

    }

    public void updatedProfileBackgroundImage(User user) {
        if (debug) post("Updated profile background image: " + user);
    }

    public void updatedProfileColors(User user) {
        if (debug) post("Updated profile colors: " + user);
    }

    public void updatedProfileImage(User user) {
        if (debug) post("Updated profile image: " + user);

    }

    public void updatedStatus(Status status) {
        if (debug) post("Status updated: " + status.getText());

        Atom[] outputArray = new Atom[] { Atom.newAtom("updatedstatus"),
                Atom.newAtom(Long.toString(status.getId())),
                Atom.newAtom(Long.toString(status.getCreatedAt().getTime())),
                Atom.newAtom(status.getText()) };

        outlet(getInfoIdx(), outputArray);

    }

    public void updatedUserList(UserList userList) {
        if (debug) post("Updated user list: " + userList);

    }

    public void verifiedCredentials(User user) {
        if (debug) post("Verified creds called for:" + user.getName());
    }

    public void createdSavedSearch(SavedSearch arg0) {
        if (debug) post("Created Saved Search: " + arg0);
        
    }

    public void createdUserListMember(UserList arg0) {
        // TODO Auto-generated method stub
        
    }

    public void createdUserListMembers(UserList arg0) {
        // TODO Auto-generated method stub
        
    }

    public void destroyedSavedSearch(SavedSearch arg0) {
        // TODO Auto-generated method stub
        
    }

    public void destroyedUserListMember(UserList arg0) {
        // TODO Auto-generated method stub
        
    }

    public void gotBlockIDs(IDs arg0) {
        // TODO Auto-generated method stub
        
    }

    public void gotBlocksList(ResponseList<User> arg0) {
        // TODO Auto-generated method stub
        
    }

    public void gotClosestTrends(ResponseList<Location> arg0) {
        // TODO Auto-generated method stub
        
    }

    public void gotContributees(ResponseList<User> arg0) {
        // TODO Auto-generated method stub
        
    }

    public void gotContributors(ResponseList<User> arg0) {
        // TODO Auto-generated method stub
        
    }

    public void gotFollowersList(PagableResponseList<User> arg0) {
        // TODO Auto-generated method stub
        
    }

    public void gotFriendsList(PagableResponseList<User> arg0) {
        // TODO Auto-generated method stub
        
    }

    public void gotLanguages(ResponseList<Language> arg0) {
        // TODO Auto-generated method stub
        
    }

    public void gotOAuthAccessToken(AccessToken arg0) {
        
        Atom[] outputArray = new Atom[] { Atom.newAtom("oauthaccesstoken"),
                Atom.newAtom(arg0.toString())};

        outlet(getInfoIdx(), outputArray);

    }

    public void gotOAuthRequestToken(RequestToken arg0) {
        
        Atom[] outputArray = new Atom[] { Atom.newAtom("oauthrequesttoken"),
                Atom.newAtom(arg0.toString())};

        outlet(getInfoIdx(), outputArray);
        
    }

    public void gotOEmbed(OEmbed arg0) {
        Atom[] outputArray = new Atom[] { Atom.newAtom("oembed"),
                Atom.newAtom(arg0.toString())};

        outlet(getInfoIdx(), outputArray);
        
    }

    public void gotPlaceTrends(Trends arg0) {
        // TODO Auto-generated method stub
        
    }

    public void gotRateLimitStatus(Map<String, RateLimitStatus> arg0) {
        // TODO Auto-generated method stub
        
    }

    public void gotSavedSearch(SavedSearch arg0) {
        // TODO Auto-generated method stub
        
    }

    public void gotSavedSearches(ResponseList<SavedSearch> arg0) {
        // TODO Auto-generated method stub
        
    }

    public void gotUserLists(ResponseList<UserList> arg0) {
        // TODO Auto-generated method stub
        
    }

    public void removedProfileBanner() {
        // TODO Auto-generated method stub
        
    }

    public void updatedProfileBanner() {
        // TODO Auto-generated method stub
        
    }

}