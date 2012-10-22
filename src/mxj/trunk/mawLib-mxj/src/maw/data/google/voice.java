package maw.data.google;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import net.christopherbaker.google.voice.async.GVException;
import net.christopherbaker.google.voice.async.GVMethod;
import net.christopherbaker.google.voice.enums.GVCallType;
import net.christopherbaker.google.voice.enums.GVLabel;
import net.christopherbaker.google.voice.json.GVAccountSettings;
import net.christopherbaker.google.voice.json.GVAccountStatus;
import net.christopherbaker.google.voice.json.GVContact;
import net.christopherbaker.google.voice.json.GVConversation;
import net.christopherbaker.google.voice.json.GVMailBox;
import net.christopherbaker.google.voice.json.GVPhoneCall;
import net.christopherbaker.google.voice.manager.GVManager;
import net.christopherbaker.google.voice.manager.GVManagerListener;

import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

/*
 * This object combines searching and 
 */

public class voice extends MaxObject implements GVManagerListener {

    // not sure

    GVManager gvm;

    int OUTLET_CALL = 0;
    int OUTLET_CONTACTS = 1;
    int OUTLET_STATUS = 2;
    int OUTLET_SETTINGS = 3;

    public voice(Atom[] args) {

        gvm = new GVManager(this);

        // user information
        declareAttribute("username", "getUsername", "setUsername");
        declareAttribute("password", "getPassword", "setPassword");

        declareAttribute("voicemailsavedirectory", "getVoicemailSaveDirectory",
                "setVoicemailSaveDirectory");

        declareAttribute("autodownloadvoicemail", "getAutoLoadVoicemail", "setAutoLoadVoicemail");

        // max stuff
        declareInlets(new int[] { DataTypes.LIST });
        declareOutlets(new int[] { DataTypes.LIST, DataTypes.LIST, DataTypes.LIST, DataTypes.LIST });

        setInletAssist(new String[] { "input" });
        setOutletAssist(new String[] { "Calls", "Contacts", "Account Status", "Account Settings" });

        if (args.length > 0) {
            if (args.length == 2) {
                setUsername(args[0].getString());
                setPassword(args[1].getString());
            } else {
                error("Arguments must be <username> <password>");
            }
        }

    }

    /* interacting with the mailboxes */

    private void outputdisplaylist(Collection<GVPhoneCall> phoneCalls) {

        outlet(OUTLET_CALL, "call_list",
                new Atom[] { Atom.newAtom("rows"), Atom.newAtom(phoneCalls.size()) });

        Iterator<GVPhoneCall> pci = phoneCalls.iterator();
        int i = 0;
        while (pci.hasNext()) {
            GVPhoneCall c = pci.next();

            if (c == null) error("Call was null.");

            Atom[] a = new Atom[9];

            for (int j = 0; j < a.length; j++)
                a[j] = Atom.newAtom("-");

            a[0] = Atom.newAtom("call");

            if (c.getId() != null) a[1] = Atom.newAtom(c.getId());
            if (c.getConversationID() != null) a[2] = Atom.newAtom(c.getConversationID());
            if (c.getGVCallType() != null) a[3] = Atom.newAtom(c.getGVCallType().toString());
            if (c.getStartTime() != -1) a[4] = Atom.newAtom(Long.toString(c.getStartTime()));
            if (c.getDuration() != -1) a[5] = Atom.newAtom(Long.toString(c.getDuration()));
            if (c.getDid() != null) a[6] = Atom.newAtom(c.getDid());
            if (c.getContact() != null && c.getContact().getPhoneNumberFormatted() != null)
                a[7] = Atom.newAtom(c.getContact().getPhoneNumberFormatted());
            if (c.getAnyText() != null) a[8] = Atom.newAtom(c.getAnyText());

            post(Atom.toOneString(a));

            outlet(OUTLET_CALL, "call_list", a);
            i++;
        }

    }

    public void displaymessages(Atom[] atom) {

        if (atom.length < 2) {
            error("display messages needs at least two arguments <method> <type> <etc>");
            return;
        }

        Atom method = atom[0];

        if (method.isString()) {
            String ms = method.getString();
            if (ms.compareTo("label") == 0) {
                if (atom.length == 2 && atom[1].isString()) {
                    if (GVLabel.isValid(atom[1].getString())) {
                        outputdisplaylist(gvm.getPhoneCallsByLabel(GVLabel.valueOf(atom[1]
                                .getString())));
                    } else {
                        error("\"" + atom[1] + "\" is not a valid label.");
                        return;
                    }
                } else {
                    error("display messages needs a label name.");
                    return;
                }

            } else if (ms.compareTo("contact") == 0) {

                if (atom.length == 2 && atom[1].isString()) {
                    if (gvm.contacts.containsKey(atom[1].getString())) {
                        outputdisplaylist(gvm.getPhoneCallsByContact(atom[1].getString()));
                    } else {
                        error("unknown contact id.");
                        return;
                    }
                } else {
                    error("display messages needs a contact id string.");
                    return;
                }
            } else if (ms.compareTo("daterange") == 0) {
                if (atom.length == 3 && atom[1].isString() && atom[2].isString()) {
                    long startTime = Long.parseLong(atom[1].getString());
                    long endTime = Long.parseLong(atom[2].getString());
                    outputdisplaylist(gvm.getPhoneCallsByTimeRange(startTime, endTime));
                } else {
                    error("display messages date range must have two string arguments.");
                    return;
                }
            } else if (ms.compareTo("beforedate") == 0) {
                if (atom.length == 2 && atom[1].isString()) {
                    long time = Long.parseLong(atom[1].getString());
                    outputdisplaylist(gvm.getPhoneCallsBeforeDate(time));
                } else {
                    error("display messages before date must have a one string argument.");
                    return;
                }
            } else if (ms.compareTo("afterdate") == 0) {
                if (atom.length == 2 && atom[1].isString()) {
                    long time = Long.parseLong(atom[1].getString());
                    outputdisplaylist(gvm.getPhoneCallsAfterDate(time));
                } else {
                    error("display messages after date must have a one string argument.");
                    return;
                }
            } else {
                error("Unknown displaymessages method.");
                return;
            }

        } else {
            error("display message method must be a string.");
            return;
        }

    }

    /* login / logout */

    public void login() {
        if (gvm.isLoggedIn()) {
            error("Already logged in.");
            return;
        }

        gvm.login();
    }

    public void logout() {
        if (!gvm.isLoggedIn()) {
            error("Not logged in.");
            return;
        }
        gvm.logout();
    }

    public void notifyDeleted() {
        // clean up
        gvm.shutdown();
    }

    /* GVListener Methods */

    private void accountsettingsoutlet(String key, Atom[] values) {
        outlet(OUTLET_SETTINGS, key, values);
    }

    private void accountsettingsoutlet(String key, Atom value) {
        accountsettingsoutlet(key, new Atom[] { value });
    }

    public void retrieveallmessages() {
        if (!gvm.isLoggedIn()) {
            error("Not logged in.");
            return;
        }

        gvm.retrieveAllMessages();
    }

    public void refresh() {
        if (!gvm.isLoggedIn()) {
            error("Not logged in.");
            return;
        }
        gvm.refresh();
    }

    public void getaccountsettings() {

        if (!gvm.isLoggedIn()) {
            error("Not logged in.");
            return;
        }

        GVAccountSettings s = gvm.getSettings();

        accountsettingsoutlet("call_presentation_enabled",
                Atom.newAtom(s.isCallPresentationEnabled()));
        accountsettingsoutlet("default_greeting_id", Atom.newAtom(s.getDefaultGreetingId()));
        accountsettingsoutlet("do_not_disturb", Atom.newAtom(s.isDoNotDisturb()));

        for (int i = 0; i < s.getEmailNotificationAddress().length; i++) {
            accountsettingsoutlet(
                    "email_notification_address",
                    new Atom[] { Atom.newAtom(i), Atom.newAtom(s.getEmailNotificationAddress()[i]) });
        }

        accountsettingsoutlet("email_notification_enabled",
                Atom.newAtom(s.isEmailNotificationEnabled()));

        for (int i = 0; i < s.getForwardingPhone().length; i++) {
            accountsettingsoutlet(
                    "forwarding_phone",
                    new Atom[] { Atom.newAtom(i),
                            Atom.newAtom(s.getForwardingPhone()[i].getNumberFormatted()) });
        }

        for (int i = 0; i < s.getForwardingPhoneName().length; i++) {
            accountsettingsoutlet("forwarding_phone_name",
                    new Atom[] { Atom.newAtom(i), Atom.newAtom(s.getForwardingPhoneName()[i]) });
        }

        for (int i = 0; i < s.getGaiaEmailAddress().length; i++) {
            accountsettingsoutlet("gaia_email_address",
                    new Atom[] { Atom.newAtom(i), Atom.newAtom(s.getGaiaEmailAddress()[i]) });
        }

        accountsettingsoutlet("screen_behavior", Atom.newAtom(s.getScreenBehavior()));

        accountsettingsoutlet("sms_in_subject_of_notification_enabled",
                Atom.newAtom(s.isSmsInSubjectOfNotificationEnabled()));
        accountsettingsoutlet("use_did_as_caller_id", Atom.newAtom(s.isUseDidAsCallerId()));

    }

    public void loggedIn(boolean success) {
        if (success) {
            outlet(getInfoIdx(), "logged_in", 1);
        } else {
            error("Error logging in.");
        }
    }

    public void loggedOut(boolean success) {
        if (success) {
            outlet(getInfoIdx(), "logged_in", 0);
        } else {
            error("Error logging out.");
        }
    }

    /* getters and setters */

    public void setVoicemailSaveDirectory(String dir) {
        try {
            gvm.setVoicemailSaveDirectory(dir);
            if (gvm.isLoggedIn()) {
                post("Setting a new save directory will not move previously downloaded files.");
            }
        } catch (GVException e) {
            error("Error setting the voicemail save directory " + e.getMessage());
        }
    }

    public Atom[] getVoicemailSaveDirectory() {
        return new Atom[] { Atom.newAtom(gvm.getVoicemailSaveDirectory().toString()) };
    }

    public void setUsername(String username) {
        gvm.setUsername(username);
        if (gvm.isLoggedIn()) {
            error("Currently logged in -- Logout and login again with new username.");
        }
    }

    public Atom[] getUsername() {
        return new Atom[] { Atom.newAtom(gvm.getUsername()) };
    }

    public void setPassword(String password) {
        gvm.setPassword(password);
        if (gvm.isLoggedIn()) {
            error("Currently logged in -- Logout and login again with new password.");
        }
    }

    public Atom[] getPassword() {
        return new Atom[] { Atom.newAtom(gvm.getPassword()) };
    }

    public Atom[] getAutoLoadVoicemail() {
        return new Atom[] { Atom.newAtom(gvm.isAutoDownloadVoicemailFiles()) };
    }

    public void setAutoLoadVoicemail(boolean auto) {
        gvm.setAutoDownloadVoicemailFiles(auto);
    }

    /* callbacks */

    public void callPlaced(String callId, String destPhoneNumber, String srcPhoneNumber) {
        post("CALL PLACED" + callId + " " + destPhoneNumber + " " + srcPhoneNumber);
    }

    public void contactListUpdated(Collection<GVContact> c) {
        outlet(OUTLET_CONTACTS, "rows", c.size());

        for (GVContact cc : c) {
            outlet(OUTLET_CONTACTS, "contact",
                    new String[] { cc.getId(), cc.getName(), cc.getPhoneNumberFormatted() });
        }

    }

    public void conversationListUpdated(Collection<GVConversation> c) {
        // post("conversation updated with  " + c.size() + " incoming.");
    }

    public void newPhoneCall(GVPhoneCall p) {
        error("new phone call! " + p);

        gvm.markRead(p.getId());
        gvm.markArchived(p.getConversationID());

        if (p.getGVCallType() == GVCallType.SMS_RECEIVED) {

            URLUTF8Encoder.encode("hi");
            
            outlet(OUTLET_CALL,
                    "new",
                    new Atom[] { Atom.newAtom(Long.toString(p.getStartTime())),
                            Atom.newAtom(URLUTF8Encoder.encode(p.getContact().getPhoneNumberFormatted())),
                            Atom.newAtom(URLUTF8Encoder.encode(p.getMessageText())) });
        }

    }

    public void phoneCallsUpdated(Collection<GVPhoneCall> c) {
        post("phone calls updated with " + c.size() + " incoming.");
    }

    public void settingsUpdated(GVAccountSettings as) {
        getaccountsettings();
    }

    public void smsSent(String conversationId, String destPhoneNumber, String text) {
        outlet(getInfoIdx(), "smssent", new String[] { conversationId, destPhoneNumber, text });
    }

    public void statusUpdated(GVAccountStatus as) {

        List<GVMailBox> mb = as.getLabel();

        for (GVMailBox mbl : mb) {
            String label = mbl.getLabel().toUpperCase();
            int totalCount = mbl.getTotalCount();
            int unreadCount = mbl.getUnreadCount();
            long getModTime = mbl.getLastModifiedTimestamp();

            Atom[] array = new Atom[4];

            array[0] = Atom.newAtom(label);
            array[1] = Atom.newAtom(totalCount);
            array[2] = Atom.newAtom(unreadCount);
            array[3] = Atom.newAtom(Long.toString(getModTime));

            outlet(OUTLET_STATUS, "status", array);
        }

        outlet(OUTLET_STATUS, "account_balance", as.getAccountBalance());
        outlet(OUTLET_STATUS, "displayable_account_balance", as.getDisplayableAccountBalance());
        outlet(OUTLET_STATUS, "free_minutes_remaining", as.getFreeMinutesRemaining());

        outlet(OUTLET_STATUS, "free_sms_remaining", as.getFreeMinutesRemaining());
        outlet(OUTLET_STATUS, "max_balance", as.getMaxBalance());
        outlet(OUTLET_STATUS, "paid_credit", as.getPaidCredit());
        outlet(OUTLET_STATUS, "rate_id", as.getRateId());
        outlet(OUTLET_STATUS, "sip_forward_enabled", as.isSipForwardingEnabled());

        if (as.getValidAmount() != null) {
            for (int i = 0; i < as.getValidAmount().length; i++) {
                outlet(OUTLET_STATUS, "valid_amount",
                        new Atom[] { Atom.newAtom(i), Atom.newAtom(as.getValidAmount()[i]) });
            }
        }

        if (as.getLabel() != null) {

            for (int i = 0; i < as.getLabel().size(); i++) {
                outlet(OUTLET_STATUS,
                        "label",
                        new Atom[] { Atom.newAtom(i), Atom.newAtom(as.getLabel().get(i).getLabel()) });
            }
        }

        outlet(OUTLET_STATUS, "primary_did", as.getPrimaryDid());
        outlet(OUTLET_STATUS, "response", as.getStatus().getStatus());
        outlet(OUTLET_STATUS, "type", as.getType());

    }

    /* utility callbacks */
    public void progress(String task, float percentComplete) {
        outlet(getInfoIdx(), task, percentComplete);
    }

    public void gvException(GVException te, GVMethod method) {
        error(te.getMessage() + "[in method " + method + "]");
    }

}