package maw.meta;

import java.util.ArrayList;
import java.util.Iterator;

import net.christopherbaker.xml.XMLElement;

public class mawLibObject {
    public String name = null;
    public String group = null;
    public String type = null;
    public String[] tags = null;
    public String url = null;

    public String digest = null;
    public String summary = null;

    public String input = null; // TODO? expand?
    public String output = null; // TODO? expand?

    public ArrayList<Author> authors = new ArrayList<Author>();
    public ArrayList<Reference> citations = new ArrayList<Reference>();
    public ArrayList<Reference> sponsors = new ArrayList<Reference>();
    public ArrayList<String> copyrights = new ArrayList<String>();
    public ArrayList<String> examples = new ArrayList<String>();
    public ArrayList<String> seealsos = new ArrayList<String>();
    public String license = null;

    XMLElement xml;

    public mawLibObject(XMLElement xml) {
        this.xml = xml;
        parseXML();
    }

    private void parseXML() {
        name = xml.getAttribute("name");
        group = xml.getAttribute("group");
        type = xml.getAttribute("type");
        tags = xml.getAttribute("tags").split(",");
        url = xml.getAttribute("url");

        digest = xml.getChild("digest").getAttribute("name");
        summary = xml.getChild("summary").getAttribute("name");

        license = xml.getChild("license").getAttribute("name");

        input = (xml.getChild("input") != null ? xml.getChild("input").getAttribute("name") : null);
        output = (xml.getChild("output") != null ? xml.getChild("output").getAttribute("name")
                : null);

        XMLElement[] authorlist = xml.getChildren("authorlist/author");

        // System.out.println("name=" + name + " authorlistsize=" + authorlist.length);

        if (authorlist != null) {
            for (int i = 0; i < authorlist.length; i++) {
                Author a = new Author(authorlist[i].getAttribute("name"), authorlist[i]
                        .getAttribute("email"), authorlist[i].getAttribute("url"), authorlist[i]
                        .getAttribute("note"));
                authors.add(a);
            }
        }

        XMLElement[] sponsorlist = xml.getChildren("sponsorlist/sponsor");
        if (sponsorlist != null) {
            for (int i = 0; i < sponsorlist.length; i++) {
                Reference a = new Reference(sponsorlist[i].getAttribute("name"), sponsorlist[i]
                        .getAttribute("url"), sponsorlist[i].getAttribute("note"));
                sponsors.add(a);
            }
        }

        XMLElement[] citationlist = xml.getChildren("citationlist/citation");
        if (citationlist != null) {
            for (int i = 0; i < citationlist.length; i++) {
                Reference a = new Reference(citationlist[i].getAttribute("name"), citationlist[i]
                        .getAttribute("url"), citationlist[i].getAttribute("note"));
                citations.add(a);
            }
        }

        XMLElement[] examplelist = xml.getChildren("examplelist/example");

        if (examplelist != null) {
            for (int i = 0; i < examplelist.length; i++) {
                examples.add(examplelist[i].getAttribute("name"));
            }
        }

        XMLElement[] seealsolist = xml.getChildren("seealsolist/seealso");
        if (seealsolist != null) {
            for (int i = 0; i < seealsolist.length; i++) {
                seealsos.add(seealsolist[i].getAttribute("name"));
            }
        }

        // System.out.println("parse successful!");
    }

    public String[] getHeaderTitle() {
        return new String[] { this.name, this.url, this.digest };
    }

    public String[] getExamples() {
        String[] s = new String[examples.size()];
        return examples.toArray(s);
    }

    public String[] getRelated() {
        String[] s = new String[seealsos.size()];
        return seealsos.toArray(s);
    }

    public String[] getHeaderMeta() {

        ArrayList<String> out = new ArrayList<String>();

        out.add(this.summary);
        StringBuffer sb = new StringBuffer();

        Iterator<Author> authorIter = authors.iterator();
        while (authorIter.hasNext()) {
            Author a = authorIter.next();
            sb.append(a.name);
            sb.append("|");
            sb.append(a.note); // affiliation is not currently used
            sb.append("|");
            sb.append(a.url);
            sb.append(",");
        }

        out.add(sb.toString());

        sb = new StringBuffer();

        Iterator<Reference> sponsorIter = sponsors.iterator();
        while (sponsorIter.hasNext()) {
            Reference a = sponsorIter.next();
            sb.append(a.name);
            sb.append("|");
            sb.append(a.note);
            sb.append("|");
            sb.append(a.url);
            sb.append(",");
        }

        out.add(sb.toString());
        sb = new StringBuffer();

        out.add(license);

        // conditionally output
        if (citations.size() > 0) {

            Iterator<Reference> citationsIter = citations.iterator();
            while (citationsIter.hasNext()) {
                Reference a = citationsIter.next();
                sb.append(a.name);
                sb.append("|");
                sb.append(a.note);
                sb.append("|");
                sb.append(a.url);
                sb.append(",");
            }

            out.add(sb.toString());
        }
        String[] ss = new String[out.size()];
        return out.toArray(ss);
    }

    public class Reference {
        String name = null;
        String url = null;
        String note = null;

        public Reference(String name, String url, String note) {
            this.name = name;
            this.url = url;
            this.note = note;
        }

        public String toString() {
            return name + " " + url + " " + note;

        }
    }

    public class Author {
        String name = null;
        String email = null;
        String url = null;
        String note = null;

        public Author(String name, String email, String url, String note) {
            this.name = name;
            this.email = email;
            this.url = url;
            this.note = note;
        }

        public String toString() {
            return name + " " + email + " " + url + " " + note;
        }
    }
}
