/* XMLElement.java                                                 NanoXML/Java
 *
 * This file is part of NanoXML 2 for Java.
 * Copyright (C) 2000-2002 Marc De Scheemaecker, All Rights Reserved.
 *
 * This software is provided 'as-is', without any express or implied warranty.
 * In no event will the authors be held liable for any damages arising from the
 * use of this software.
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 *  1. The origin of this software must not be misrepresented; you must not
 *     claim that you wrote the original software. If you use this software in
 *     a product, an acknowledgment in the product documentation would be
 *     appreciated but is not required.
 *
 *  2. Altered source versions must be plainly marked as such, and must not be
 *     misrepresented as being the original software.
 *
 *  3. This notice may not be removed or altered from any source distribution.
 */

package net.christopherbaker.xml;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Properties;
import java.util.Vector;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/**
 * XMLElement is an XML element. This is the base class used for the Processing
 * XML library, representing a single node of an XML tree.
 * 
 * This code is based on a modified version of NanoXML by Marc De Scheemaecker.
 * 
 * @author Marc De Scheemaecker
 * @author processing.org
 * @author Christopher Baker
 */
public class XMLElement implements Serializable {

	/**
	 * No line number defined.
	 */
	public static final int NO_LINE = -1;

	/**
	 * The parent element.
	 */
	private XMLElement parent;

	/**
	 * The attributes of the element.
	 */
	private Vector<XMLAttribute> attributes;

	/**
	 * The child elements.
	 */
	private Vector<XMLElement> children;

	/**
	 * The name of the element.
	 */
	private String name;

	/**
	 * The full name of the element.
	 */
	private String fullName;

	/**
	 * The namespace URI.
	 */
	private String namespace;

	/**
	 * The content of the element.
	 */
	private String content;

	/**
	 * The system ID of the source data where this element is located.
	 */
	private String systemID;

	/**
	 * The line in the source data where this element starts.
	 */
	private int lineNr;

	/**
	 * Creates an empty element to be used for #PCDATA content.
	 */
	public XMLElement() {
		this(null, null, null, NO_LINE);
	}

	protected void set(String fullName, String namespace, String systemID,
			int lineNr) {
		this.fullName = fullName;
		if (namespace == null) {
			this.name = fullName;
		} else {
			int index = fullName.indexOf(':');
			if (index >= 0) {
				this.name = fullName.substring(index + 1);
			} else {
				this.name = fullName;
			}
		}
		this.namespace = namespace;
		this.lineNr = lineNr;
		this.systemID = systemID;
	}

	/**
	 * Creates an empty element.
	 * 
	 * @param fullName
	 *            the name of the element.
	 */
	// public XMLElement(String fullName) {
	// this(fullName, null, null, NO_LINE);
	// }

	/**
	 * Creates an empty element.
	 * 
	 * @param fullName
	 *            the name of the element.
	 * @param systemID
	 *            the system ID of the XML data where the element starts.
	 * @param lineNr
	 *            the line in the XML data where the element starts.
	 */
	// public XMLElement(String fullName,
	// String systemID,
	// int lineNr) {
	// this(fullName, null, systemID, lineNr);
	// }

	/**
	 * Creates an empty element.
	 * 
	 * @param fullName
	 *            the full name of the element
	 * @param namespace
	 *            the namespace URI.
	 */
	// public XMLElement(String fullName,
	// String namespace) {
	// this(fullName, namespace, null, NO_LINE);
	// }

	/**
	 * Creates an empty element.
	 * 
	 * @param fullName
	 *            the full name of the element
	 * @param namespace
	 *            the namespace URI.
	 * @param systemID
	 *            the system ID of the XML data where the element starts.
	 * @param lineNr
	 *            the line in the XML data where the element starts.
	 */
	public XMLElement(String fullName, String namespace, String systemID,
			int lineNr) {
		this.attributes = new Vector<XMLAttribute>();
		this.children = new Vector<XMLElement>(8);
		this.fullName = fullName;
		if (namespace == null) {
			this.name = fullName;
		} else {
			int index = fullName.indexOf(':');
			if (index >= 0) {
				this.name = fullName.substring(index + 1);
			} else {
				this.name = fullName;
			}
		}
		this.namespace = namespace;
		this.content = null;
		this.lineNr = lineNr;
		this.systemID = systemID;
		this.parent = null;
	}

	public XMLElement(Reader r) {
		this();
		parseFromReader(r);
	}

	public XMLElement(String xml) {
		this();
		
        parseFromReader(this.createReader(xml));
//		createReader(filename)
		
		
	//	parseFromReader(new StringReader(xml));
	}

	public void parseFromReader(Reader r) {
		try {
			StdXMLParser parser = new StdXMLParser();
			parser.setBuilder(new StdXMLBuilder(this));
			parser.setValidator(new XMLValidator());
			parser.setReader(new StdXMLReader(r));
			// System.out.println(parser.parse().getName());
			/* XMLElement xm = (XMLElement) */parser.parse();
			// System.out.println("xm name is " + xm.getName());
			// System.out.println(xm + " " + this);
			// parser.parse();
		} catch (XMLException e) {
			e.printStackTrace();
		}
	}

	// static public XMLElement parse(Reader r) {
	// try {
	// StdXMLParser parser = new StdXMLParser();
	// parser.setBuilder(new StdXMLBuilder());
	// parser.setValidator(new XMLValidator());
	// parser.setReader(new StdXMLReader(r));
	// return (XMLElement) parser.parse();
	// } catch (XMLException e) {
	// e.printStackTrace();
	// return null;
	// }
	// }

	/**
	 * Creates an element to be used for #PCDATA content.
	 */
	public XMLElement createPCDataElement() {
		return new XMLElement();
	}

	/**
	 * Creates an empty element.
	 * 
	 * @param fullName
	 *            the name of the element.
	 */
	// public XMLElement createElement(String fullName) {
	// return new XMLElement(fullName);
	// }

	/**
	 * Creates an empty element.
	 * 
	 * @param fullName
	 *            the name of the element.
	 * @param systemID
	 *            the system ID of the XML data where the element starts.
	 * @param lineNr
	 *            the line in the XML data where the element starts.
	 */
	// public XMLElement createElement(String fullName,
	// String systemID,
	// int lineNr) {
	// //return new XMLElement(fullName, systemID, lineNr);
	// return new XMLElement(fullName, null, systemID, lineNr);
	// }

	/**
	 * Creates an empty element.
	 * 
	 * @param fullName
	 *            the full name of the element
	 * @param namespace
	 *            the namespace URI.
	 */
	public XMLElement createElement(String fullName, String namespace) {
		// return new XMLElement(fullName, namespace);
		return new XMLElement(fullName, namespace, null, NO_LINE);
	}

	/**
	 * Creates an empty element.
	 * 
	 * @param fullName
	 *            the full name of the element
	 * @param namespace
	 *            the namespace URI.
	 * @param systemID
	 *            the system ID of the XML data where the element starts.
	 * @param lineNr
	 *            the line in the XML data where the element starts.
	 */
	public XMLElement createElement(String fullName, String namespace,
			String systemID, int lineNr) {
		return new XMLElement(fullName, namespace, systemID, lineNr);
	}

	/**
	 * Cleans up the object when it's destroyed.
	 */
	protected void finalize() throws Throwable {
		this.attributes.clear();
		this.attributes = null;
		this.children = null;
		this.fullName = null;
		this.name = null;
		this.namespace = null;
		this.content = null;
		this.systemID = null;
		this.parent = null;
		super.finalize();
	}

	/**
	 * Returns the parent element. This method returns null for the root
	 * element.
	 */
	public XMLElement getParent() {
		return this.parent;
	}

	/**
	 * Returns the full name (i.e. the name including an eventual namespace
	 * prefix) of the element.
	 * 
	 * @return the name, or null if the element only contains #PCDATA.
	 */
	public String getName() {
		return this.fullName;
	}

	/**
	 * Returns the name of the element.
	 * 
	 * @return the name, or null if the element only contains #PCDATA.
	 */
	public String getLocalName() {
		return this.name;
	}

	/**
	 * Returns the namespace of the element.
	 * 
	 * @return the namespace, or null if no namespace is associated with the
	 *         element.
	 */
	public String getNamespace() {
		return this.namespace;
	}

	/**
	 * Sets the full name. This method also sets the short name and clears the
	 * namespace URI.
	 * 
	 * @param name
	 *            the non-null name.
	 */
	public void setName(String name) {
		this.name = name;
		this.fullName = name;
		this.namespace = null;
	}

	/**
	 * Sets the name.
	 * 
	 * @param fullName
	 *            the non-null full name.
	 * @param namespace
	 *            the namespace URI, which may be null.
	 */
	public void setName(String fullName, String namespace) {
		int index = fullName.indexOf(':');
		if ((namespace == null) || (index < 0)) {
			this.name = fullName;
		} else {
			this.name = fullName.substring(index + 1);
		}
		this.fullName = fullName;
		this.namespace = namespace;
	}

	/**
	 * Adds a child element.
	 * 
	 * @param child
	 *            the non-null child to add.
	 */
	public void addChild(XMLElement child) {
		if (child == null) {
			throw new IllegalArgumentException("child must not be null");
		}
		if ((child.getLocalName() == null) && (!this.children.isEmpty())) {
			XMLElement lastChild = (XMLElement) this.children.lastElement();

			if (lastChild.getLocalName() == null) {
				lastChild.setContent(lastChild.getContent()
						+ child.getContent());
				return;
			}
		}
		((XMLElement) child).parent = this;
		this.children.addElement(child);
	}

	/**
	 * Inserts a child element.
	 * 
	 * @param child
	 *            the non-null child to add.
	 * @param index
	 *            where to put the child.
	 */
	public void insertChild(XMLElement child, int index) {
		if (child == null) {
			throw new IllegalArgumentException("child must not be null");
		}
		if ((child.getLocalName() == null) && (!this.children.isEmpty())) {
			XMLElement lastChild = (XMLElement) this.children.lastElement();
			if (lastChild.getLocalName() == null) {
				lastChild.setContent(lastChild.getContent()
						+ child.getContent());
				return;
			}
		}
		((XMLElement) child).parent = this;
		this.children.insertElementAt(child, index);
	}

	/**
	 * Removes a child element.
	 * 
	 * @param child
	 *            the non-null child to remove.
	 */
	public void removeChild(XMLElement child) {
		if (child == null) {
			throw new IllegalArgumentException("child must not be null");
		}
		this.children.removeElement(child);
	}

	/**
	 * Removes the child located at a certain index.
	 * 
	 * @param index
	 *            the index of the child, where the first child has index 0.
	 */
	public void removeChildAtIndex(int index) {
		this.children.removeElementAt(index);
	}

	/**
	 * Returns an enumeration of all child elements.
	 * 
	 * @return the non-null enumeration
	 */
	public Enumeration<XMLElement> enumerateChildren() {
		return this.children.elements();
	}

	/**
	 * Returns whether the element is a leaf element.
	 * 
	 * @return true if the element has no children.
	 */
	public boolean isLeaf() {
		return this.children.isEmpty();
	}

	/**
	 * Returns whether the element has children.
	 * 
	 * @return true if the element has children.
	 */
	public boolean hasChildren() {
		return (!this.children.isEmpty());
	}

	/**
	 * Returns the number of children.
	 * 
	 * @return the count.
	 */
	public int getChildCount() {
		return this.children.size();
	}

	/**
	 * Returns a vector containing all the child elements.
	 * 
	 * @return the vector.
	 */
	// public Vector getChildren() {
	// return this.children;
	// }

	/**
	 * Put the names of all children into an array. Same as looping through each
	 * child and calling getName() on each XMLElement.
	 */
	public String[] listChildren() {
		int childCount = getChildCount();
		String[] outgoing = new String[childCount];
		for (int i = 0; i < childCount; i++) {
			outgoing[i] = getChild(i).getName();
		}
		return outgoing;
	}

	/**
	 * Returns an array containing all the child elements.
	 */
	public XMLElement[] getChildren() {
		int childCount = getChildCount();
		XMLElement[] kids = new XMLElement[childCount];
		children.copyInto(kids);
		return kids;
	}

	/**
	 * Quick accessor for an element at a particular index.
	 * 
	 * @author processing.org
	 */
	public XMLElement getChild(int which) {
		return (XMLElement) children.elementAt(which);
	}

	/**
	 * Get a child by its name or path.
	 * 
	 * @param name
	 *            element name or path/to/element
	 * @return the element
	 * @author processing.org
	 */
	public XMLElement getChild(String name) {
		if (name.indexOf('/') != -1) {
			return getChildRecursive(XMLElement.split(name, '/'), 0);

		}
		int childCount = getChildCount();
		for (int i = 0; i < childCount; i++) {
			XMLElement kid = getChild(i);
			String kidName = kid.getName();
			if (kidName != null && kidName.equals(name)) {
				return kid;
			}
		}
		return null;
	}

	/**
	 * Split a string into pieces along a specific character. Most commonly used
	 * to break up a String along a space or a tab character.
	 * <P>
	 * This operates differently than the others, where the single delimeter is
	 * the only breaking point, and consecutive delimeters will produce an empty
	 * string (""). This way, one can split on tab characters, but maintain the
	 * column alignments (of say an excel file) where there are empty columns.
	 * 
	 * @author processing taken from processing core
	 * 
	 */
	static public String[] split(String what, char delim) {
		// do this so that the exception occurs inside the user's
		// program, rather than appearing to be a bug inside split()
		if (what == null)
			return null;
		// return split(what, String.valueOf(delim)); // huh

		char chars[] = what.toCharArray();
		int splitCount = 0; // 1;
		for (int i = 0; i < chars.length; i++) {
			if (chars[i] == delim)
				splitCount++;
		}
		// make sure that there is something in the input string
		// if (chars.length > 0) {
		// if the last char is a delimeter, get rid of it..
		// if (chars[chars.length-1] == delim) splitCount--;
		// on second thought, i don't agree with this, will disable
		// }
		if (splitCount == 0) {
			String splits[] = new String[1];
			splits[0] = new String(what);
			return splits;
		}
		// int pieceCount = splitCount + 1;
		String splits[] = new String[splitCount + 1];
		int splitIndex = 0;
		int startIndex = 0;
		for (int i = 0; i < chars.length; i++) {
			if (chars[i] == delim) {
				splits[splitIndex++] = new String(chars, startIndex, i
						- startIndex);
				startIndex = i + 1;
			}
		}
		// if (startIndex != chars.length) {
		splits[splitIndex] = new String(chars, startIndex, chars.length
				- startIndex);
		// }
		return splits;
	}

	/**
	 * Split a String on a specific delimiter. Unlike Java's String.split()
	 * method, this does not parse the delimiter as a regexp because it's more
	 * confusing than necessary, and String.split() is always available for
	 * those who want regexp.
	 * 
	 *  *
	 * @author processing taken from processing core
	 */
	static public String[] split(String what, String delim) {
		ArrayList<String> items = new ArrayList<String>();
		int index;
		int offset = 0;
		while ((index = what.indexOf(delim, offset)) != -1) {
			items.add(what.substring(offset, index));
			offset = index + delim.length();
		}
		items.add(what.substring(offset));
		String[] outgoing = new String[items.size()];
		items.toArray(outgoing);
		return outgoing;
	}

	/**
	 * Internal helper function for getChild(String).
	 * 
	 * @param items
	 *            result of splitting the query on slashes
	 * @param offset
	 *            where in the items[] array we're currently looking
	 * @return matching element or null if no match
	 * @author processing.org
	 */
	protected XMLElement getChildRecursive(String[] items, int offset) {
		// if it's a number, do an index instead
		if (Character.isDigit(items[offset].charAt(0))) {
			XMLElement kid = getChild(Integer.parseInt(items[offset]));
			if (offset == items.length - 1) {
				return kid;
			} else {
				return kid.getChildRecursive(items, offset + 1);
			}
		}
		int childCount = getChildCount();
		for (int i = 0; i < childCount; i++) {
			XMLElement kid = getChild(i);
			String kidName = kid.getName();
			if (kidName != null && kidName.equals(items[offset])) {
				if (offset == items.length - 1) {
					return kid;
				} else {
					return kid.getChildRecursive(items, offset + 1);
				}
			}
		}
		return null;
	}

	/**
	 * Returns the child at a specific index.
	 * 
	 * @param index
	 *            the index of the child
	 * 
	 * @return the non-null child
	 * 
	 * @throws java.lang.ArrayIndexOutOfBoundsException
	 *             if the index is out of bounds.
	 */
	public XMLElement getChildAtIndex(int index)
			throws ArrayIndexOutOfBoundsException {
		return (XMLElement) this.children.elementAt(index);
	}

	/**
	 * Searches a child element.
	 * 
	 * @param name
	 *            the full name of the child to search for.
	 * 
	 * @return the child element, or null if no such child was found.
	 */
	// public XMLElement getFirstChildNamed(String name) {
	// Enumeration enum = this.children.elements();
	// while (enum.hasMoreElements()) {
	// XMLElement child = (XMLElement) enum.nextElement();
	// String childName = child.getFullName();
	// if ((childName != null) && childName.equals(name)) {
	// return child;
	// }
	// }
	// return null;
	// }

	/**
	 * Searches a child element.
	 * 
	 * @param name
	 *            the name of the child to search for.
	 * @param namespace
	 *            the namespace, which may be null.
	 * 
	 * @return the child element, or null if no such child was found.
	 */
	// public XMLElement getFirstChildNamed(String name,
	// String namespace) {
	// Enumeration enum = this.children.elements();
	// while (enum.hasMoreElements()) {
	// XMLElement child = (XMLElement) enum.nextElement();
	// String str = child.getName();
	// boolean found = (str != null) && (str.equals(name));
	// str = child.getNamespace();
	// if (str == null) {
	// found &= (name == null);
	// } else {
	// found &= str.equals(namespace);
	// }
	// if (found) {
	// return child;
	// }
	// }
	// return null;
	// }

	/**
	 * Get any children that match this name or path. Similar to getChild(), but
	 * will grab multiple matches rather than only the first.
	 * 
	 * @param name
	 *            element name or path/to/element
	 * @return array of child elements that match
	 * @author processing.org
	 */
	public XMLElement[] getChildren(String name) {
		if (name.indexOf('/') != -1) {
			return getChildrenRecursive(XMLElement.split(name, '/'), 0);
		}
		// if it's a number, do an index instead
		// (returns a single element array, since this will be a single match
		if (Character.isDigit(name.charAt(0))) {
			return new XMLElement[] { getChild(Integer.parseInt(name)) };
		}
		int childCount = getChildCount();
		XMLElement[] matches = new XMLElement[childCount];
		int matchCount = 0;
		for (int i = 0; i < childCount; i++) {
			XMLElement kid = getChild(i);
			String kidName = kid.getName();
			if (kidName != null && kidName.equals(name)) {
				matches[matchCount++] = kid;
			}
		}
		return (XMLElement[]) XMLElement.subset(matches, 0, matchCount);
	}

	static public Object subset(Object list, int start) {
		int length = Array.getLength(list);
		return subset(list, start, length - start);
	}

	static public Object subset(Object list, int start, int count) {
		Class<?> type = list.getClass().getComponentType();
		Object outgoing = Array.newInstance(type, count);
		System.arraycopy(list, start, outgoing, 0, count);
		return outgoing;
	}

	// From processing

	protected XMLElement[] getChildrenRecursive(String[] items, int offset) {
		if (offset == items.length - 1) {
			return getChildren(items[offset]);
		}
		XMLElement[] matches = getChildren(items[offset]);
		XMLElement[] outgoing = new XMLElement[0];
		for (int i = 0; i < matches.length; i++) {
			XMLElement[] kidMatches = matches[i].getChildrenRecursive(items,
					offset + 1);
			outgoing = (XMLElement[]) XMLElement.concat(outgoing, kidMatches);
		}
		return outgoing;
	}

	// From processing

	static public Object concat(Object a, Object b) {
		Class<?> type = a.getClass().getComponentType();
		int alength = Array.getLength(a);
		int blength = Array.getLength(b);
		Object outgoing = Array.newInstance(type, alength + blength);
		System.arraycopy(a, 0, outgoing, 0, alength);
		System.arraycopy(b, 0, outgoing, alength, blength);
		return outgoing;
	}

	/**
	 * Returns a vector of all child elements named <I>name</I>.
	 * 
	 * @param name
	 *            the full name of the children to search for.
	 * 
	 * @return the non-null vector of child elements.
	 */
	// public Vector getChildrenNamed(String name) {
	// Vector result = new Vector(this.children.size());
	// Enumeration enum = this.children.elements();
	// while (enum.hasMoreElements()) {
	// XMLElement child = (XMLElement) enum.nextElement();
	// String childName = child.getFullName();
	// if ((childName != null) && childName.equals(name)) {
	// result.addElement(child);
	// }
	// }
	// return result;
	// }

	/**
	 * Returns a vector of all child elements named <I>name</I>.
	 * 
	 * @param name
	 *            the name of the children to search for.
	 * @param namespace
	 *            the namespace, which may be null.
	 * 
	 * @return the non-null vector of child elements.
	 */
	// public Vector getChildrenNamed(String name,
	// String namespace) {
	// Vector result = new Vector(this.children.size());
	// Enumeration enum = this.children.elements();
	// while (enum.hasMoreElements()) {
	// XMLElement child = (XMLElement) enum.nextElement();
	// String str = child.getName();
	// boolean found = (str != null) && (str.equals(name));
	// str = child.getNamespace();
	// if (str == null) {
	// found &= (name == null);
	// } else {
	// found &= str.equals(namespace);
	// }
	//
	// if (found) {
	// result.addElement(child);
	// }
	// }
	// return result;
	// }

	/**
	 * Searches an attribute.
	 * 
	 * @param fullName
	 *            the non-null full name of the attribute.
	 * 
	 * @return the attribute, or null if the attribute does not exist.
	 */
	private XMLAttribute findAttribute(String fullName) {
		Enumeration<XMLAttribute> en = this.attributes.elements();
		while (en.hasMoreElements()) {
			XMLAttribute attr = (XMLAttribute) en.nextElement();
			if (attr.getFullName().equals(fullName)) {
				return attr;
			}
		}
		return null;
	}

	/**
	 * Searches an attribute.
	 * 
	 * @param name
	 *            the non-null short name of the attribute.
	 * @param namespace
	 *            the name space, which may be null.
	 * 
	 * @return the attribute, or null if the attribute does not exist.
	 */
	private XMLAttribute findAttribute(String name, String namespace) {
		Enumeration<XMLAttribute> en = this.attributes.elements();
		while (en.hasMoreElements()) {
			XMLAttribute attr = (XMLAttribute) en.nextElement();
			boolean found = attr.getName().equals(name);
			if (namespace == null) {
				found &= (attr.getNamespace() == null);
			} else {
				found &= namespace.equals(attr.getNamespace());
			}

			if (found) {
				return attr;
			}
		}
		return null;
	}

	/**
	 * Returns the number of attributes.
	 */
	public int getAttributeCount() {
		return this.attributes.size();
	}

	/**
	 * Returns the value of an attribute.
	 * 
	 * @param name
	 *            the non-null name of the attribute.
	 * 
	 * @return the value, or null if the attribute does not exist.
	 */
	public String getAttribute(String name) {
		return this.getAttribute(name, null);
	}

	/**
	 * Returns the value of an attribute.
	 * 
	 * @param name
	 *            the non-null full name of the attribute.
	 * @param defaultValue
	 *            the default value of the attribute.
	 * 
	 * @return the value, or defaultValue if the attribute does not exist.
	 */
	public String getAttribute(String name, String defaultValue) {
		XMLAttribute attr = this.findAttribute(name);
		if (attr == null) {
			return defaultValue;
		} else {
			return attr.getValue();
		}
	}

	/**
	 * Returns the value of an attribute.
	 * 
	 * @param name
	 *            the non-null name of the attribute.
	 * @param namespace
	 *            the namespace URI, which may be null.
	 * @param defaultValue
	 *            the default value of the attribute.
	 * 
	 * @return the value, or defaultValue if the attribute does not exist.
	 */
	public String getAttribute(String name, String namespace,
			String defaultValue) {
		XMLAttribute attr = this.findAttribute(name, namespace);
		if (attr == null) {
			return defaultValue;
		} else {
			return attr.getValue();
		}
	}

	public String getStringAttribute(String name) {
		return getAttribute(name);
	}

	public String getStringAttribute(String name, String defaultValue) {
		return getAttribute(name, defaultValue);
	}

	public String getStringAttribute(String name, String namespace,
			String defaultValue) {
		return getAttribute(name, namespace, defaultValue);
	}

	public int getIntAttribute(String name) {
		return getIntAttribute(name, 0);
	}

	/**
	 * Returns the value of an attribute.
	 * 
	 * @param name
	 *            the non-null full name of the attribute.
	 * @param defaultValue
	 *            the default value of the attribute.
	 * 
	 * @return the value, or defaultValue if the attribute does not exist.
	 */
	public int getIntAttribute(String name, int defaultValue) {
		String value = this.getAttribute(name, Integer.toString(defaultValue));
		return Integer.parseInt(value);
	}

	/**
	 * Returns the value of an attribute.
	 * 
	 * @param name
	 *            the non-null name of the attribute.
	 * @param namespace
	 *            the namespace URI, which may be null.
	 * @param defaultValue
	 *            the default value of the attribute.
	 * 
	 * @return the value, or defaultValue if the attribute does not exist.
	 */
	public int getIntAttribute(String name, String namespace, int defaultValue) {
		String value = this.getAttribute(name, namespace, Integer
				.toString(defaultValue));
		return Integer.parseInt(value);
	}

	public float getFloatAttribute(String name) {
		return getFloatAttribute(name, 0);
	}

	/**
	 * Returns the value of an attribute.
	 * 
	 * @param name
	 *            the non-null full name of the attribute.
	 * @param defaultValue
	 *            the default value of the attribute.
	 * 
	 * @return the value, or defaultValue if the attribute does not exist.
	 */
	public float getFloatAttribute(String name, float defaultValue) {
		String value = this.getAttribute(name, Float.toString(defaultValue));
		return Float.parseFloat(value);
	}

	/**
	 * Returns the value of an attribute.
	 * 
	 * @param name
	 *            the non-null name of the attribute.
	 * @param namespace
	 *            the namespace URI, which may be null.
	 * @param defaultValue
	 *            the default value of the attribute.
	 * 
	 * @return the value, or defaultValue if the attribute does not exist.
	 */
	public float getFloatAttribute(String name, String namespace,
			float defaultValue) {
		String value = this.getAttribute(name, namespace, Float
				.toString(defaultValue));
		return Float.parseFloat(value);
	}

	public double getDoubleAttribute(String name) {
		return getDoubleAttribute(name, 0);
	}

	/**
	 * Returns the value of an attribute.
	 * 
	 * @param name
	 *            the non-null full name of the attribute.
	 * @param defaultValue
	 *            the default value of the attribute.
	 * 
	 * @return the value, or defaultValue if the attribute does not exist.
	 */
	public double getDoubleAttribute(String name, double defaultValue) {
		String value = this.getAttribute(name, Double.toString(defaultValue));
		return Double.parseDouble(value);
	}

	/**
	 * Returns the value of an attribute.
	 * 
	 * @param name
	 *            the non-null name of the attribute.
	 * @param namespace
	 *            the namespace URI, which may be null.
	 * @param defaultValue
	 *            the default value of the attribute.
	 * 
	 * @return the value, or defaultValue if the attribute does not exist.
	 */
	public double getDoubleAttribute(String name, String namespace,
			double defaultValue) {
		String value = this.getAttribute(name, namespace, Double
				.toString(defaultValue));
		return Double.parseDouble(value);
	}

	/**
	 * Returns the type of an attribute.
	 * 
	 * @param name
	 *            the non-null full name of the attribute.
	 * 
	 * @return the type, or null if the attribute does not exist.
	 */
	public String getAttributeType(String name) {
		XMLAttribute attr = this.findAttribute(name);
		if (attr == null) {
			return null;
		} else {
			return attr.getType();
		}
	}

	/**
	 * Returns the namespace of an attribute.
	 * 
	 * @param name
	 *            the non-null full name of the attribute.
	 * 
	 * @return the namespace, or null if there is none associated.
	 */
	public String getAttributeNamespace(String name) {
		XMLAttribute attr = this.findAttribute(name);
		if (attr == null) {
			return null;
		} else {
			return attr.getNamespace();
		}
	}

	/**
	 * Returns the type of an attribute.
	 * 
	 * @param name
	 *            the non-null name of the attribute.
	 * @param namespace
	 *            the namespace URI, which may be null.
	 * 
	 * @return the type, or null if the attribute does not exist.
	 */
	public String getAttributeType(String name, String namespace) {
		XMLAttribute attr = this.findAttribute(name, namespace);
		if (attr == null) {
			return null;
		} else {
			return attr.getType();
		}
	}

	/**
	 * Sets an attribute.
	 * 
	 * @param name
	 *            the non-null full name of the attribute.
	 * @param value
	 *            the non-null value of the attribute.
	 */
	public void setAttribute(String name, String value) {
		XMLAttribute attr = this.findAttribute(name);
		if (attr == null) {
			attr = new XMLAttribute(name, name, null, value, "CDATA");
			this.attributes.addElement(attr);
		} else {
			attr.setValue(value);
		}
	}

	/**
	 * Sets an attribute.
	 * 
	 * @param fullName
	 *            the non-null full name of the attribute.
	 * @param namespace
	 *            the namespace URI of the attribute, which may be null.
	 * @param value
	 *            the non-null value of the attribute.
	 */
	public void setAttribute(String fullName, String namespace, String value) {
		int index = fullName.indexOf(':');
		String vorname = fullName.substring(index + 1);
		XMLAttribute attr = this.findAttribute(vorname, namespace);
		if (attr == null) {
			attr = new XMLAttribute(fullName, vorname, namespace, value,
					"CDATA");
			this.attributes.addElement(attr);
		} else {
			attr.setValue(value);
		}
	}

	/**
	 * Removes an attribute.
	 * 
	 * @param name
	 *            the non-null name of the attribute.
	 */
	public void removeAttribute(String name) {
		for (int i = 0; i < this.attributes.size(); i++) {
			XMLAttribute attr = (XMLAttribute) this.attributes.elementAt(i);
			if (attr.getFullName().equals(name)) {
				this.attributes.removeElementAt(i);
				return;
			}
		}
	}

	/**
	 * Removes an attribute.
	 * 
	 * @param name
	 *            the non-null name of the attribute.
	 * @param namespace
	 *            the namespace URI of the attribute, which may be null.
	 */
	public void removeAttribute(String name, String namespace) {
		for (int i = 0; i < this.attributes.size(); i++) {
			XMLAttribute attr = (XMLAttribute) this.attributes.elementAt(i);
			boolean found = attr.getName().equals(name);
			if (namespace == null) {
				found &= (attr.getNamespace() == null);
			} else {
				found &= attr.getNamespace().equals(namespace);
			}

			if (found) {
				this.attributes.removeElementAt(i);
				return;
			}
		}
	}

	/**
	 * Returns an enumeration of all attribute names.
	 * 
	 * @return the non-null enumeration.
	 */
	public Enumeration<String> enumerateAttributeNames() {
		Vector<String> result = new Vector<String>();
		Enumeration<XMLAttribute> en = this.attributes.elements();
		while (en.hasMoreElements()) {
			XMLAttribute attr = (XMLAttribute) en.nextElement();
			result.addElement(attr.getFullName());
		}
		return result.elements();
	}

	/**
	 * Returns whether an attribute exists.
	 * 
	 * @return true if the attribute exists.
	 */
	public boolean hasAttribute(String name) {
		return this.findAttribute(name) != null;
	}

	/**
	 * Returns whether an attribute exists.
	 * 
	 * @return true if the attribute exists.
	 */
	public boolean hasAttribute(String name, String namespace) {
		return this.findAttribute(name, namespace) != null;
	}

	/**
	 * Returns all attributes as a Properties object.
	 * 
	 * @return the non-null set.
	 */
	public Properties getAttributes() {
		Properties result = new Properties();
		Enumeration<XMLAttribute> en = this.attributes.elements();
		while (en.hasMoreElements()) {
			XMLAttribute attr = (XMLAttribute) en.nextElement();
			result.put(attr.getFullName(), attr.getValue());
		}
		return result;
	}

	/**
	 * Returns all attributes in a specific namespace as a Properties object.
	 * 
	 * @param namespace
	 *            the namespace URI of the attributes, which may be null.
	 * 
	 * @return the non-null set.
	 */
	public Properties getAttributesInNamespace(String namespace) {
		Properties result = new Properties();
		Enumeration<XMLAttribute> en = this.attributes.elements();
		while (en.hasMoreElements()) {
			XMLAttribute attr = (XMLAttribute) en.nextElement();
			if (namespace == null) {
				if (attr.getNamespace() == null) {
					result.put(attr.getName(), attr.getValue());
				}
			} else {
				if (namespace.equals(attr.getNamespace())) {
					result.put(attr.getName(), attr.getValue());
				}
			}
		}
		return result;
	}

	/**
	 * Returns the system ID of the data where the element started.
	 * 
	 * @return the system ID, or null if unknown.
	 * 
	 * @see #getLineNr
	 */
	public String getSystemID() {
		return this.systemID;
	}

	/**
	 * Returns the line number in the data where the element started.
	 * 
	 * @return the line number, or NO_LINE if unknown.
	 * 
	 * @see #NO_LINE
	 * @see #getSystemID
	 */
	public int getLineNr() {
		return this.lineNr;
	}

	/**
	 * Return the #PCDATA content of the element. If the element has a
	 * combination of #PCDATA content and child elements, the #PCDATA sections
	 * can be retrieved as unnamed child objects. In this case, this method
	 * returns null.
	 * 
	 * @return the content.
	 */
	public String getContent() {
		return this.content;
	}

	/**
	 * Sets the #PCDATA content. It is an error to call this method with a
	 * non-null value if there are child objects.
	 * 
	 * @param content
	 *            the (possibly null) content.
	 */
	public void setContent(String content) {
		this.content = content;
	}

	/**
	 * Returns true if the element equals another element.
	 * 
	 * @param rawElement
	 *            the element to compare to
	 */
	public boolean equals(Object rawElement) {
		try {
			return this.equalsXMLElement((XMLElement) rawElement);
		} catch (ClassCastException e) {
			return false;
		}
	}

	/**
	 * Returns true if the element equals another element.
	 * 
	 * @param rawElement
	 *            the element to compare to
	 */
	public boolean equalsXMLElement(XMLElement rawElement) {
		if (!this.name.equals(rawElement.getLocalName())) {
			return false;
		}
		if (this.attributes.size() != rawElement.getAttributeCount()) {
			return false;
		}
		Enumeration<XMLAttribute> en = this.attributes.elements();
		while (en.hasMoreElements()) {
			XMLAttribute attr = (XMLAttribute) en.nextElement();
			if (!rawElement.hasAttribute(attr.getName(), attr.getNamespace())) {
				return false;
			}
			String value = rawElement.getAttribute(attr.getName(), attr
					.getNamespace(), null);
			if (!attr.getValue().equals(value)) {
				return false;
			}
			String type = rawElement.getAttributeType(attr.getName(), attr
					.getNamespace());
			if (!attr.getType().equals(type)) {
				return false;
			}
		}
		if (this.children.size() != rawElement.getChildCount()) {
			return false;
		}
		for (int i = 0; i < this.children.size(); i++) {
			XMLElement child1 = this.getChildAtIndex(i);
			XMLElement child2 = rawElement.getChildAtIndex(i);

			if (!child1.equalsXMLElement(child2)) {
				return false;
			}
		}
		return true;
	}

	public String toString() {
		return toString(true);
	}

	public String toString(boolean pretty) {
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		OutputStreamWriter osw = new OutputStreamWriter(baos);
		XMLWriter writer = new XMLWriter(osw);
		try {
			if (pretty) {
				writer.write(this, true, 2, true);
			} else {
				writer.write(this, false, 0, true);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return baos.toString();
	}

	// ////////////////////////////////////////////////////////////

	// READERS AND WRITERS

	/**
	 * I want to read lines from a file. I have RSI from typing these eight
	 * lines of code so many times.
	 */
	public BufferedReader createReader(String filename) {
		try {
			InputStream is = createInput(filename);
			if (is == null) {
				System.err.println(filename
						+ " does not exist or could not be read");
				return null;
			}
			return createReader(is);

		} catch (Exception e) {
			if (filename == null) {
				System.err.println("Filename passed to reader() was null");
			} else {
				System.err.println("Couldn't create a reader for " + filename);
			}
		}
		return null;
	}

	/**
	 * I want to read lines from a file. And I'm still annoyed.
	 */
	static public BufferedReader createReader(File file) {
		try {
			InputStream is = new FileInputStream(file);
			if (file.getName().toLowerCase().endsWith(".gz")) {
				is = new GZIPInputStream(is);
			}
			return createReader(is);

		} catch (Exception e) {
			if (file == null) {
				throw new RuntimeException(
						"File passed to createReader() was null");
			} else {
				e.printStackTrace();
				throw new RuntimeException("Couldn't create a reader for "
						+ file.getAbsolutePath());
			}
		}
		// return null;
	}

	/**
	 * I want to read lines from a stream. If I have to type the following lines
	 * any more I'm gonna send Sun my medical bills.
	 */
	static public BufferedReader createReader(InputStream input) {
		InputStreamReader isr = null;
		try {
			isr = new InputStreamReader(input, "UTF-8");
		} catch (UnsupportedEncodingException e) {} // not gonna happen
		return new BufferedReader(isr);
	}

	/**
	 * I want to print lines to a file. Why can't I?
	 */
	public PrintWriter createWriter(String filename) {
		return createWriter(saveFile(filename));
	}

	/**
	 * Identical to savePath(), but returns a File object.
	 */
	public File saveFile(String where) {
		return new File(where);
	}

	/**
	 * I want to print lines to a file. I have RSI from typing these eight lines
	 * of code so many times.
	 */
	static public PrintWriter createWriter(File file) {
		try {
			createPath(file); // make sure in-between folders exist
			OutputStream output = new FileOutputStream(file);
			if (file.getName().toLowerCase().endsWith(".gz")) {
				output = new GZIPOutputStream(output);
			}
			return createWriter(output);

		} catch (Exception e) {
			if (file == null) {
				throw new RuntimeException(
						"File passed to createWriter() was null");
			} else {
				e.printStackTrace();
				throw new RuntimeException("Couldn't create a writer for "
						+ file.getAbsolutePath());
			}
		}
		// return null;
	}

	/**
	 * I want to print lines to a file. Why am I always explaining myself? It's
	 * the JavaSoft API engineers who need to explain themselves.
	 */
	static public PrintWriter createWriter(OutputStream output) {
		try {
			OutputStreamWriter osw = new OutputStreamWriter(output, "UTF-8");
			return new PrintWriter(osw);
		} catch (UnsupportedEncodingException e) {} // not gonna happen
		return null;
	}

	// ////////////////////////////////////////////////////////////

	// FILE INPUT

	/**
	 * @deprecated As of release 0136, use createInput() instead.
	 */
	public InputStream openStream(String filename) {
		return createInput(filename);
	}

	/**
	 * Simplified method to open a Java InputStream.
	 * <P>
	 * This method is useful if you want to use the facilities provided by
	 * PApplet to easily open things from the data folder or from a URL, but
	 * want an InputStream object so that you can use other Java methods to take
	 * more control of how the stream is read.
	 * <P>
	 * If the requested item doesn't exist, null is returned. (Prior to 0096,
	 * die() would be called, killing the applet)
	 * <P>
	 * For 0096+, the "data" folder is exported intact with subfolders, and
	 * openStream() properly handles subdirectories from the data folder
	 * <P>
	 * If not online, this will also check to see if the user is asking for a
	 * file whose name isn't properly capitalized. This helps prevent issues
	 * when a sketch is exported to the web, where case sensitivity matters, as
	 * opposed to Windows and the Mac OS default where case sensitivity is
	 * preserved but ignored.
	 * <P>
	 * It is strongly recommended that libraries use this method to open data
	 * files, so that the loading sequence is handled in the same way as
	 * functions like loadBytes(), loadImage(), etc.
	 * <P>
	 * The filename passed in can be:
	 * <UL>
	 * <LI>A URL, for instance openStream("http://processing.org/");
	 * <LI>A file in the sketch's data folder
	 * <LI>Another file to be opened locally (when running as an application)
	 * </UL>
	 */
	public InputStream createInput(String filename) {
		InputStream input = createInputRaw(filename);
		if ((input != null) && filename.toLowerCase().endsWith(".gz")) {
			try {
				return new GZIPInputStream(input);
			} catch (IOException e) {
				e.printStackTrace();
				return null;
			}
		}
		return input;
	}

	/**
	 * Call openStream() without automatic gzip decompression.
	 */
	public InputStream createInputRaw(String filename) {
		InputStream stream = null;

		if (filename == null)
			return null;

		if (filename.length() == 0) {
			// an error will be called by the parent function
			// System.err.println("The filename passed to openStream() was
			// empty.");
			return null;
		}

		// safe to check for this as a url first. this will prevent online
		// access logs from being spammed with GET /sketchfolder/http://blahblah
		try {
			URL url = new URL(filename);
			stream = url.openStream();
			return stream;

		} catch (MalformedURLException mfue) {
			// not a url, that's fine

		} catch (FileNotFoundException fnfe) {
			// Java 1.5 likes to throw this when URL not available. (fix for
			// 0119)
			// http://dev.processing.org/bugs/show_bug.cgi?id=403

		} catch (IOException e) {
			// changed for 0117, shouldn't be throwing exception
			e.printStackTrace();
			// System.err.println("Error downloading from URL " + filename);
			return null;
			// throw new RuntimeException("Error downloading from URL " +
			// filename);
		}

		// Moved this earlier than the getResourceAsStream() checks, because
		// calling getResourceAsStream() on a directory lists its contents.
		// http://dev.processing.org/bugs/show_bug.cgi?id=716
		try {
			// First see if it's in a data folder. This may fail by throwing
			// a SecurityException. If so, this whole block will be skipped.
			File file = new File(filename);
			if (!file.exists()) {
				// next see if it's just in the sketch folder
				file = new File(filename);
			}
			if (file.isDirectory()) {
				return null;
			}
			if (file.exists()) {
				try {
					// handle case sensitivity check
					String filePath = file.getCanonicalPath();
					String filenameActual = new File(filePath).getName();
					// make sure there isn't a subfolder prepended to the name
					String filenameShort = new File(filename).getName();
					// if the actual filename is the same, but capitalized
					// differently, warn the user.
					// if (filenameActual.equalsIgnoreCase(filenameShort) &&
					// !filenameActual.equals(filenameShort)) {
					if (!filenameActual.equals(filenameShort)) {
						throw new RuntimeException("This file is named "
								+ filenameActual + " not " + filename
								+ ". Rename the file " + "or change your code.");
					}
				} catch (IOException e) {}
			}

			// if this file is ok, may as well just load it
			stream = new FileInputStream(file);
			if (stream != null)
				return stream;

			// have to break these out because a general Exception might
			// catch the RuntimeException being thrown above
		} catch (IOException ioe) {} catch (SecurityException se) {}

		// Using getClassLoader() prevents java from converting dots
		// to slashes or requiring a slash at the beginning.
		// (a slash as a prefix means that it'll load from the root of
		// the jar, rather than trying to dig into the package location)
		ClassLoader cl = getClass().getClassLoader();

		// by default, data files are exported to the root path of the jar.
		// (not the data folder) so check there first.
		stream = cl.getResourceAsStream("data/" + filename);
		if (stream != null) {
			String cn = stream.getClass().getName();
			// this is an irritation of sun's java plug-in, which will return
			// a non-null stream for an object that doesn't exist. like all good
			// things, this is probably introduced in java 1.5. awesome!
			// http://dev.processing.org/bugs/show_bug.cgi?id=359
			if (!cn.equals("sun.plugin.cache.EmptyInputStream")) {
				return stream;
			}
		}

		// When used with an online script, also need to check without the
		// data folder, in case it's not in a subfolder called 'data'.
		// http://dev.processing.org/bugs/show_bug.cgi?id=389
		stream = cl.getResourceAsStream(filename);
		if (stream != null) {
			String cn = stream.getClass().getName();
			if (!cn.equals("sun.plugin.cache.EmptyInputStream")) {
				return stream;
			}
		}

		try {
			// attempt to load from a local file, used when running as
			// an application, or as a signed applet
			try { // first try to catch any security exceptions
				try {
					stream = new FileInputStream(filename);
					if (stream != null)
						return stream;
				} catch (IOException e2) {}

				try {
					stream = new FileInputStream(filename);
					if (stream != null)
						return stream;
				} catch (Exception e) {} // ignored

				try {
					stream = new FileInputStream(filename);
					if (stream != null)
						return stream;
				} catch (IOException e1) {}

			} catch (SecurityException se) {} // online, whups

		} catch (Exception e) {
			// die(e.getMessage(), e);
			e.printStackTrace();
		}
		return null;
	}

	static public InputStream createInput(File file) {
		try {
			InputStream input = new FileInputStream(file);
			if (file.getName().toLowerCase().endsWith(".gz")) {
				return new GZIPInputStream(input);
			}
			return input;

		} catch (IOException e) {
			if (file == null) {
				throw new RuntimeException(
						"File passed to openStream() was null");

			} else {
				e.printStackTrace();
				throw new RuntimeException("Couldn't openStream() for "
						+ file.getAbsolutePath());
			}
		}
	}

	public byte[] loadBytes(String filename) {
		InputStream is = createInput(filename);
		if (is != null)
			return loadBytes(is);

		System.err.println("The file \"" + filename + "\" "
				+ "is missing or inaccessible, make sure "
				+ "the URL is valid or that the file has been "
				+ "added to your sketch and is readable.");
		return null;
	}

	static public byte[] loadBytes(InputStream input) {
		try {
			BufferedInputStream bis = new BufferedInputStream(input);
			ByteArrayOutputStream out = new ByteArrayOutputStream();

			int c = bis.read();
			while (c != -1) {
				out.write(c);
				c = bis.read();
			}
			return out.toByteArray();

		} catch (IOException e) {
			e.printStackTrace();
			// throw new RuntimeException("Couldn't load bytes from stream");
		}
		return null;
	}

	static public byte[] loadBytes(File file) {
		InputStream is = createInput(file);
		return loadBytes(is);
	}

	static public String[] loadStrings(File file) {
		InputStream is = createInput(file);
		if (is != null)
			return loadStrings(is);
		return null;
	}

	/**
	 * Load data from a file and shove it into a String array.
	 * <P>
	 * Exceptions are handled internally, when an error, occurs, an exception is
	 * printed to the console and 'null' is returned, but the program continues
	 * running. This is a tradeoff between 1) showing the user that there was a
	 * problem but 2) not requiring that all i/o code is contained in try/catch
	 * blocks, for the sake of new users (or people who are just trying to get
	 * things done in a "scripting" fashion. If you want to handle exceptions,
	 * use Java methods for I/O.
	 */
	public String[] loadStrings(String filename) {
		InputStream is = createInput(filename);
		if (is != null)
			return loadStrings(is);

		System.err.println("The file \"" + filename + "\" "
				+ "is missing or inaccessible, make sure "
				+ "the URL is valid or that the file has been "
				+ "added to your sketch and is readable.");
		return null;
	}

	static public String[] loadStrings(InputStream input) {
		try {
			BufferedReader reader = new BufferedReader(new InputStreamReader(
					input, "UTF-8"));

			String lines[] = new String[100];
			int lineCount = 0;
			String line = null;
			while ((line = reader.readLine()) != null) {
				if (lineCount == lines.length) {
					String temp[] = new String[lineCount << 1];
					System.arraycopy(lines, 0, temp, 0, lineCount);
					lines = temp;
				}
				lines[lineCount++] = line;
			}
			reader.close();

			if (lineCount == lines.length) {
				return lines;
			}

			// resize array to appropriate amount for these lines
			String output[] = new String[lineCount];
			System.arraycopy(lines, 0, output, 0, lineCount);
			return output;

		} catch (IOException e) {
			e.printStackTrace();
			// throw new RuntimeException("Error inside loadStrings()");
		}
		return null;
	}

	/**
	 * Takes a path and creates any in-between folders if they don't already
	 * exist. Useful when trying to save to a subfolder that may not actually
	 * exist.
	 */
	static public void createPath(String path) {
		createPath(new File(path));
	}

	static public void createPath(File file) {
		try {
			String parent = file.getParent();
			if (parent != null) {
				File unit = new File(parent);
				if (!unit.exists())
					unit.mkdirs();
			}
		} catch (SecurityException se) {
			System.err.println("You don't have permissions to create "
					+ file.getAbsolutePath());
		}
	}

}
