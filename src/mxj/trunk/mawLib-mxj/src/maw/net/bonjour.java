package maw.net;

import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;

import com.apple.dnssd.BrowseListener;
import com.apple.dnssd.DNSRecord;
import com.apple.dnssd.DNSSD;
import com.apple.dnssd.DNSSDException;
import com.apple.dnssd.DNSSDRegistration;
import com.apple.dnssd.DNSSDService;
import com.apple.dnssd.RegisterListener;
import com.apple.dnssd.ResolveListener;
import com.apple.dnssd.TXTRecord;
import com.cycling74.max.Atom;
import com.cycling74.max.DataTypes;
import com.cycling74.max.MaxObject;

public class bonjour extends MaxObject implements RegisterListener,
		BrowseListener, ResolveListener {

	// References to ongoing asynchronous operations
	private DNSSDRegistration serviceRecord = null;
	private DNSSDService browser = null;
	private DNSSDService resolver = null;
	private DNSRecord dnsRecord = null;
	private TXTRecord txtRecord = null;

	private int ttl = 100;
	private boolean noautorename = true; // true!
	// private boolean registered = false;
	//
	String serviceType = "_maw._tcp";
	String networkinterface = "en1"; // usually wifi

	HashMap<String, String> serviceNames = new HashMap<String, String>();
	String currentSelected = null;

	public bonjour(Atom[] args) { // service type should always be in here ...

		declareAttribute("networkinterface");
		declareAttribute("noautorename", null, "setNetworkInterface"); // make
																		// this
																		// an
																		// attribute
		declareAttribute("ttl", null, "setTTL");

		declareInlets(new int[] { DataTypes.LIST });
		declareOutlets(new int[] { DataTypes.LIST, DataTypes.LIST,
				DataTypes.LIST, });

		setInletAssist(new String[] { "browse, resolve, register, unregister" });
		setOutletAssist(new String[] {
				"resolved host and port for given service name/type",
				"resolved text record for given service name/type",
				"available services for given service type (connect to menu)" });

		// check the init args
		if (args.length == 2) {
			String serviceName = args[0].getString();
			String serviceProtocol = args[1].getString();

			// this tcp/udp thing will throw an error during registration anyway
			// if it isn't right
			if (serviceProtocol.compareTo("tcp") == 0
					|| serviceProtocol.compareTo("udp") == 0) {
				// should double check valid service name?
				serviceType = "_" + serviceName + "._" + serviceProtocol;
			} else {
				error("Please set the protocol to tcp or udp.");
			}
		} else {
			error("Please initialize with service type and name e.g. \"mxj maw.net.bonjour maw tcp\"");
		}

		// refreshNetworkInterfaces();

	}

	public void setNetworkInterface(String s) {
		this.networkinterface = s;
		// do other stuff here if a NI is changed?
		// post("setting network interface to : " + networkinterface);
	}

	public void refreshNetworkInterfaces() {
		Enumeration<NetworkInterface> ifs = null;
		try {
			ifs = NetworkInterface.getNetworkInterfaces();
		} catch (SocketException e) {
			error("Network interface enumeration failed.");
			// TODO Auto-generated catch block
			e.printStackTrace();
			return;
		}

		// post("posting net interfaces ...);");

		// clear the list
		outlet(getNumOutlets(), new Atom[] { Atom.newAtom("networkinterfaces"),
				Atom.newAtom("clear") });

		while (ifs.hasMoreElements()) {
			NetworkInterface ni = ifs.nextElement();
			outlet(getNumOutlets(), new Atom[] {
					Atom.newAtom("networkinterfaces"), Atom.newAtom("append"),
					Atom.newAtom(ni.getDisplayName()) });
		}

		// set current
		outlet(getNumOutlets(), new Atom[] { Atom.newAtom("networkinterfaces"),
				Atom.newAtom("set"), Atom.newAtom(networkinterface) });

	}

	public void setTTL(int ttl) {
		if (ttl >= 0) {
			this.ttl = ttl;
		} else {
			error("TTL must be greater than or equal to zero.");
		}

	}

	public void unregister() { // unregister unregisters
		unregisterService();
	}

	// this doesn't work
	/*
	 * public void removerecords() { try { dnsRecord =
	 * serviceRecord.getTXTRecord(); // should be // txtRecord? } catch
	 * (DNSSDException e) { error("Error getting TXTRecord.");
	 * e.printStackTrace(); }
	 * 
	 * try { dnsRecord.remove(); } catch (DNSSDException e) { error("Error
	 * removing DNSRecord"); e.printStackTrace(); } }
	 */

	/*
	 * public void addrecord(Atom[] atoms) {
	 * 
	 * if (serviceRecord != null) { if (atoms.length % 2 == 0) {
	 * 
	 * String[] atomsAsStrings = Atom.toString(atoms); TXTRecord txtRecord = new
	 * TXTRecord(); // fill the records for (int i = 0; i < atoms.length; i +=
	 * 2) { txtRecord.set(atomsAsStrings[i], atomsAsStrings[i + 1]); }
	 * 
	 * int flags = 0; // there are currently none byte[] rData =
	 * txtRecord.getRawBytes(); // get txt Record bytes // assume it has been
	 * acquired ... try {
	 * 
	 * int ns_t_txt = 107; //Text strings. from nameser.h
	 * serviceRecord.addRecord(0, ns_t_txt, rData, ttl); } catch (DNSSDException
	 * e) { error("Error adding record."); e.printStackTrace(); } } else {
	 * error("Add record must be in the form: \"addrecord key0 value0 key1
	 * value1 ... keyN valueN\""); } } else { error("No service currently
	 * registered."); return; } }
	 */

	// doesn't work well
	/*
	 * public void updaterecord(Atom[] atoms) {
	 * 
	 * if (serviceRecord != null) { if (atoms.length % 2 == 0) {
	 * 
	 * try { dnsRecord = serviceRecord.getTXTRecord(); // should be //
	 * txtRecord? } catch (DNSSDException e) { error("Error getting
	 * TXTRecord."); e.printStackTrace(); }
	 * 
	 * String[] atomsAsStrings = Atom.toString(atoms); TXTRecord txtRecord = new
	 * TXTRecord(); // fill the records for (int i = 0; i < atoms.length; i +=
	 * 2) { txtRecord.set(atomsAsStrings[i], atomsAsStrings[i + 1]); }
	 * 
	 * int flags = 0; // there are currently none byte[] rData =
	 * txtRecord.getRawBytes(); // get txt Record bytes // assume it has been
	 * acquired ... try { dnsRecord.update(flags, rData, ttl); } catch
	 * (DNSSDException e) { error("Error updating record.");
	 * e.printStackTrace(); } } else { error("Update record must be in the form:
	 * \"updaterecord key0 value0 key1 value1 ... keyN valueN\""); } } else {
	 * error("No service currently registered."); return; } }
	 */

	public void register(Atom[] atoms) {

		if (atoms.length == 0) { // sent an empty register command
			unregisterService();
			return;
		}

		if (serviceRecord != null) {
			error("Error: Service already registered with this object.  Unregister first.");
			return;
		}

		if (atoms.length == 2) { // no txtRecord
			String serviceName = atoms[0].getString();
			int port = atoms[1].getInt();

			// post("registering: " + serviceName + " " + port);

			try {
				serviceRecord = DNSSD.register(serviceName, serviceType, port,
						this);
			} catch (DNSSDException e) {
				error("ERROR registering service");
				e.printStackTrace();
			}
		} else if (atoms.length > 2 && atoms.length % 2 == 0) { // greater than
			// 2 and even!

			String serviceName = atoms[0].getString();
			int port = atoms[1].getInt();

			String[] atomAsString = Atom.toString(atoms);

			TXTRecord txtRecord = new TXTRecord();

			// fill the records
			for (int i = 2; i < atoms.length; i += 2) {
				txtRecord.set(atomAsString[i], atomAsString[i + 1]);
			}

			int flags = (noautorename == true) ? DNSSD.NO_AUTO_RENAME : 0;
			int ifIndex = DNSSD.getIfIndexForName(networkinterface);
			// this could be expanded to register only one specific interface
			String domain = null; // set it automatically
			String host = null; // set it automatically

			try {
				serviceRecord = DNSSD.register(flags, ifIndex, serviceName,
						serviceType, domain, host, port, txtRecord, this);
			} catch (DNSSDException e) {
				error("ERROR registering service");
				e.printStackTrace();
			}

		} else {
			error("Registration must be in form: \"register servicename port key0 value0 key1 value1 ... keyN valueN\"");
		}
	}

	public void browse() {

		serviceNames.clear();
		outlet(2, "clear"); // clear the list

		try {
			browser = DNSSD.browse(serviceType, this); // browselistener here!
			// browser = DNSSD.browse(0,
			// DNSSD.getIfIndexForName(networkinterface), serviceType, null,
			// this);
			// DNSSD.browse(arg0, arg1, arg2, arg3, arg4)
		} catch (DNSSDException e) {
			error("ERROR browsing service: " + serviceType);
			e.printStackTrace();
		}
	}

	public void resolve(String serviceName) {

		currentSelected = serviceName;

		try {
			resolver = DNSSD.resolve(0, 0, serviceName, serviceType, "local.",
					this);
			// resolver = DNSSD.resolve(0,
			// DNSSD.getIfIndexForName(networkinterface), serviceName,
			// serviceType, "local.",this);
		} catch (DNSSDException e) {
			error("ERROR resolving serviceame: " + serviceName);
			e.printStackTrace();
		}

	}

	private void unregisterService() {
		if (serviceRecord != null) {

			// removerecords(); // needed?

			serviceRecord.stop();
			serviceRecord = null;
			txtRecord = null; // null it
			dnsRecord = null; // null it
		} else {
			// error("No service currently registered.");
		}
	}

	public void serviceRegistered(DNSSDRegistration serviceRecord, int flags,
			String serviceName, String regType, String domain) {

	// post("Service registered: [" + serviceName + "] [" + regType + "] ["
	// + domain + "]");

	}

	public void serviceLost(DNSSDService browser, int flags, int ifIndex,
			String serviceName, String regType, String domain) {

		if (flags == DNSSD.MORE_COMING) {
			// post("loser got one, more coming");

		} else {
			// post("loser the last one");
		}

		// post("serviceNames contains [" + serviceName + "] = " +
		// serviceNames.containsKey(serviceName));

		/*
		 * TODO some other signal should be sent out here ... to alert the
		 * program that the service is dead and it should no longer send stuff
		 */

		if (serviceNames.containsKey(serviceName)) {
			serviceNames.remove(serviceName);
			refreshServiceNames();
		}

		// // this is called when a service is lost
		// post("service Lost: " + browser + " [" + serviceName + "] [" +
		// regType
		// + "] [" + domain + "]");

	}

	private void refreshServiceNames() {

		outlet(2, new Atom[] { Atom.newAtom("clear") });

		// post("refresshing service names ...");
		Iterator<String> iter = serviceNames.keySet().iterator();

		while (iter.hasNext()) {
			String serviceName = iter.next();

			// post("\tserviceName="+serviceName);

			outlet(2, new Atom[] { Atom.newAtom("append"),
					Atom.newAtom(serviceName) });

		}

		if (serviceNames.containsKey(currentSelected)) {

			outlet(2, new Atom[] { Atom.newAtom("set"),
					Atom.newAtom(currentSelected) });
		}
	}

	public void serviceFound(DNSSDService browser, int flags, int ifIndex,
			String serviceName, String regType, String domain) {

		if (!serviceNames.containsKey(serviceName)) {
			serviceNames.put(serviceName, null);
			refreshServiceNames();

		} else {
			// already have a record of it

		}

		/*
		 * if (flags == DNSSD.MORE_COMING) { post("finder got one, more
		 * coming"); } else { post("finder the last one"); } // / this is called
		 * each time a service is found upong DNSSD.browse() post("service
		 * Found: " + browser + " [" + serviceName + "] [" + regType + "] [" +
		 * domain + "]");
		 */

	}

	public void serviceResolved(DNSSDService resolver, int flags, int ifIndex,
			String fullname, String hostname, int port, TXTRecord txtRecord) {

		if (flags == DNSSD.MORE_COMING) {
			// post("resolver got one, more coming");

		} else {
			// post("resolver the last one");

			outlet(0,
					new Atom[] { Atom.newAtom("host"), Atom.newAtom(hostname) });
			outlet(0, new Atom[] { Atom.newAtom("port"), Atom.newAtom(port) });

			int i = 0;
			while (txtRecord.getKey(i) != null) {
				String key = txtRecord.getKey(i);
				String value = txtRecord.getValueAsString(key);
				if (key != null && value != null)
					outlet(1, new Atom[] { Atom.newAtom(key),
							Atom.newAtom(value) });
				i++;
			}

		}

		/*
		 * InetAddress theAddress = null;
		 * 
		 * try { theAddress = InetAddress.getByName(hostname); } catch
		 * (UnknownHostException e) { error("ERROR resolving service: " +
		 * resolver); e.printStackTrace(); }
		 * 
		 * 
		 */
		/*
		 * post(resolver + " " + flags + " " + DNSSD.getNameForIfIndex(ifIndex) + " " +
		 * fullname + " " + hostname + "(" + theAddress + ")" + ":" + port + " " +
		 * txtRecord);
		 */

	}

	/* this is shared by two objects ... so ... how do we differentiate */
	public void operationFailed(DNSSDService browser, int errorCode) {
		error("OPERATION FAILED: " + errorCode);

		switch (errorCode) {
		case DNSSDException.ALREADY_REGISTERED:
			error("OPERATION FAILED: Already Registered: " + errorCode);
			break;
		case DNSSDException.BAD_FLAGS:
			error("OPERATION FAILED: Bad Flags: " + errorCode);
			break;
		case DNSSDException.BAD_INTERFACE_INDEX:
			error("OPERATION FAILED: Bad Interface Index: " + errorCode);
			break;
		case DNSSDException.BAD_PARAM:
			error("OPERATION FAILED: Bad Param: " + errorCode);
			break;
		case DNSSDException.BAD_REFERENCE:
			error("OPERATION FAILED: Bad Reference: " + errorCode);
			break;
		case DNSSDException.BAD_STATE:
			error("OPERATION FAILED: Bad State: " + errorCode);
			break;
		case DNSSDException.BADKEY:
			error("OPERATION FAILED: Bad Key: " + errorCode);
			break;
		case DNSSDException.BADSIG:
			error("OPERATION FAILED: Bad Sig: " + errorCode);
			break;
		case DNSSDException.BADTIME:
			error("OPERATION FAILED: Bad Time: " + errorCode);
			break;
		case DNSSDException.INCOMPATIBLE:
			error("OPERATION FAILED: Incompatable: " + errorCode);
			break;
		case DNSSDException.INVALID:
			error("OPERATION FAILED: Invalid: " + errorCode);
			break;
		case DNSSDException.NAME_CONFLICT:
			error("OPERATION FAILED: Name Conflict (Check a \"noAutoRename\"): "
					+ errorCode);
			break;
		case DNSSDException.NO_ERROR:
			error("OPERATION FAILED: No Error: " + errorCode);
			break;
		case DNSSDException.NO_MEMORY:
			error("OPERATION FAILED: No Memory: " + errorCode);
			break;
		case DNSSDException.NO_SUCH_NAME:
			error("OPERATION FAILED: No Such Name: " + errorCode);
			break;
		case DNSSDException.NOT_INITIALIZED:
			error("OPERATION FAILED: Not Initialized: " + errorCode);
			break;
		case DNSSDException.UNKNOWN:
			error("OPERATION FAILED: Unknown Error: " + errorCode);
			break;
		case DNSSDException.UNSUPPORTED:
			error("OPERATION FAILED: Unsupported Operation " + errorCode);
			break;
		default:
			error("Unknown Error: " + errorCode);
		}

	}

	protected void notifyDeleted() { // clean up!
		if (browser != null)
			browser.stop();
		unregisterService();
		refreshServiceNames(); // clear out the list so it doesn't get saved
	}
}