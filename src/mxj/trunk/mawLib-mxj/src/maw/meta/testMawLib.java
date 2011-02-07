package maw.meta;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxBox;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxPatcher;

public class testMawLib extends MaxObject {

    public testMawLib(Atom[] args) {
        post("loaded");

        MaxPatcher mp = this.getParentPatcher();
        // MaxBox mb = this.getMaxBox();
        // tring parent = mp.getParentMaxClass();

        // post("mp=" + mp.getName());
        // post("mb=" + mb.getName());
        // post("parent=" + parent);

        // mb.getName();
        // MaxPatcher mp1 = mb.getPatcher();

        // MaxBox subjectPatcher = mp.newDefault(0, 0, "bpatcher", null);

        // String s = this.getName();
        // MaxContext mc = this.getContext();

        // MaxBox bb = mp.getNamedBox("test_bp");

        // bb.send("replace", new Atom[] {Atom.newAtom("testR"),Atom.newAtom("What's up")});
        // bb.send("replace", new Atom[] {Atom.newAtom("xxxxx"),Atom.newAtom("999")});

        MaxBox subjectPatcher = mp.newDefault(100, 100, "bpatcher", null);
        subjectPatcher.send("args", new Atom[] { Atom.newAtom("test"), Atom.newAtom("What's up"),
                Atom.newAtom(22), Atom.newAtom(99) });
        subjectPatcher.send("name", new Atom[] { Atom.newAtom("TestInner.maxpat") });

        subjectPatcher.setRect(100, 100, 500, 500);

        // mc.getMaxObject(arg0)

        // makeWindow();

    }

    public void makeWindow() {
        MaxPatcher p = new MaxPatcher(50, 50, 200, 200);
        MaxBox b11 = p.newDefault(20, 20, "toggle", null);
        MaxBox b21 = p.newDefault(50, 20, "toggle", null);
        MaxBox b31 = p.newDefault(80, 20, "toggle", null);

        p.getWindow().setVisible(true);
        p.getWindow().setTitle("TEST PATCH");
    }
}
