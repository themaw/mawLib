package org.smslib.modem;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

public class MaxSerialInputStream extends InputStream {

	ArrayList<Integer> buffer = new ArrayList<Integer>(); // slow as shit, but
	// this ain't a
	// quick system

	MaxSerialReadable msr;

	public MaxSerialInputStream(MaxSerialReadable msr) {
		this.msr = msr;
	}

	public void clear() {
		buffer.clear();
	}

	public void add(int n) {
		buffer.add(n); // add it to the end, take from the top
	}

	// gotta over ride this
	public int available() {
		// GO OUT AND BANG THE SERIAL OBJECT!!
		msr.readSerialIn();
		return buffer.size();
	}

	// gotta over ride this
	public void close() {}

	@Override
	public int read() throws IOException {
		if (available() > 0) {
			int n = buffer.remove(0);
			return n;
		} else {
			throw new IOException(
					"The MaxSerialInput stream buffer is empty.  Check it first with the available() method.");
		}

	}

	/*
	 * no need to do mark() markSupported() reset() etc.
	 */

}