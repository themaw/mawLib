package org.smslib.modem;

import java.io.IOException;
import java.io.OutputStream;

public class MaxSerialOutputStream extends OutputStream {

	MaxSerialWritable mop;

	public MaxSerialOutputStream(MaxSerialWritable mop) {
		this.mop = mop;
	}

	@Override
	public void write(int b) throws IOException {
		mop.writeSerialOut(b);
	}

	public void flush() {
	// nothing to flush
	}

	public void close() {
	// nothing to close
	}

}