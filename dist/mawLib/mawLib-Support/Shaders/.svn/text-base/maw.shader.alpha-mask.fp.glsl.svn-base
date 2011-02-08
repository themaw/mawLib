// texcoords
varying vec2 texcoord0;
varying vec2 texcoord1;

// samplers
uniform sampler2DRect tex0;
uniform sampler2DRect tex1;

// auto alpha
uniform float autoalpha;
uniform float thresh;
uniform float gain;
uniform float mode;
uniform float spread;
uniform float invert;

// image mask
uniform float mask;

// luma 
const vec3 lumcoeff = vec3(0.299,0.587,0.114);


// entry point

float tanh(float val)  
{  
     float tmp = exp(val);  
     float tanH = (tmp - 1.0 / tmp) / (tmp + 1.0 / tmp);  
     return tanH;  
}  

void main()
{      
	vec4 a = texture2DRect(tex0, texcoord0);
	vec4 b = texture2DRect(tex1, texcoord1);
	vec4 mycolor = a;
	
	
	//auto alpha
	float flip = mode * (-1.) + (1. - mode) * (1.);
	a = (1.-invert) * a + (invert) * (1. - a);
	float lum = a.r * lumcoeff.x + a.g * lumcoeff.y + a.b * lumcoeff.z;
	float lumsmoothed = flip * tanh((lum-thresh)/spread)/2.+.5;
	float alphachannel = lumsmoothed;
	mycolor = autoalpha * vec4(a.r,a.g,a.b, alphachannel) + (1. - autoalpha) * a;

	//image mask
	mycolor = gain * (mask) * mycolor  * b + gain * (1.-mask) * mycolor;
	
	gl_FragColor = mycolor;
	
}
