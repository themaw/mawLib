inlets = 1;outlets = 1;var euler = new Array(3);
var angleaxis = new Array(4);
var x, y, z, angle, c1, c2, c3, s1, s2, s3, bank, heading, attitude
// bank: about x
// heading: about y
// attitude: about zfunction anything(){		euler = arrayfromargs(arguments);	bank = euler[0];
	heading = euler[1];
	attitude = euler[2];
	// to normalise divide x,y and z by:
	// sqrt(x2 + y2 + z2) = sqrt((s1 s2 c3 +c1 c2 s3)2+(s1 c2 c3 + c1 s2 s3)2+(c1 s2 c3 - s1 c2 s3)2)
	// where:
	with (Math) {
		c1 = cos(heading / 2);
		c2 = cos(attitude / 2);
		c3 = cos(bank / 2);
		s1 = sin(heading / 2);
		s2 = sin(attitude / 2);
		s3 = sin(bank / 2);				angle = 2 * acos(c1*c2*c3 - s1*s2*s3);
		x = s1 * s2 * c3 + c1 * c2 * s3;
		y = s1 * c2  *c3 + c1 * s2 *s3;
		z = c1 * s2 * c3 - s1 * c2 * s3;
		angle = angle / Math.PI * 180.; 
		// post("here: \n", "x: ", x, "  y: ", y, "  z: ", z, "  angle: ", angle);

	}
	outlet(0, angle, x, y, z);
}