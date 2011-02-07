inlets = 1;
outlets = 5;


var vdim = [320,240];
var vindex = 0;
var vcount = 0;
var outmatrix = new Array();
var dummymatrix = new JitterMatrix(4,"char",vdim[0],vdim[1]);
var filenames = new Array();
var GLconext = "foo";
var BASE_NAME = "tex"



// might want to try using an output array to avoid black flicker when switching movies

if(jsarguments.length>1) // argument 0 is the name of the js file
{
	GLconext = jsarguments[1];
}


if(jsarguments.length>2) // argument 0 is the name of the js file
{
	BASE_NAME = jsarguments[2];
}

//defined as a global array in ali.box2d-init.js
b2dImgArray = new Global("b2dImgArrayG");
b2dTexArray = new Global("b2dTexArrayG");
b2dTexInfoArray = new Global("b2dTexInfoArrayG");

b2dImgArray[BASE_NAME] = new Array; ///each instance of this .js will have its own index of the mother array b2dImgArray
b2dTexArray[BASE_NAME] = new Array;	///each instance of this .js will have its own index of the mother array b2dImgArray
b2dTexInfoArray[BASE_NAME] = new Array;	///each instance of this .js will have its own index of the mother array b2dImgArray



function getGLconext()
{
	outlet(4, GLconext);
}

//---------some simple methods--------
//------------------------------------

function bang()
{ 
	if (vcount) {
		b2dImgArray[BASE_NAME][vindex].matrixcalc(outmatrix[vindex]/*null*/,outmatrix[vindex]);
		outlet(0,"jit_matrix",outmatrix[vindex].name);	
	} else {
		outlet(0,"jit_matrix",dummymatrix.name);	
	}
}

function index(i)
{
	if (i>=vcount)
		i = vcount-1;
	if (i<0)
		i = 0;

	b2dImgArray[BASE_NAME][vindex].stop();
	vindex = i;
	b2dImgArray[BASE_NAME][vindex].start();
}

function readfolder(foldername)
{
	var fold;
	var i,rv;	

	fold = new Folder(foldername);
	fold.typelist = ["MooV","PICT","MPEG","GIFf","JPEG","PNG","TIFF","SWFL","8BPS","BMP","VfW"]
	if (fold.count) {		
		// reset old movies
		for (i=0;i<vcount;i++) {
			b2dImgArray[BASE_NAME][i].dispose();
			//b2dTexArray[BASE_NAME][i].dispose();
			b2dImgArray[BASE_NAME][i].matrixcalc(dummymatrix/*null*/,dummymatrix);
		}
		// build filename array
		vcount = 0;
		fold.reset();
		filenames = new Array();
		outlet(1,"clear");
		
		outlet(3,"clear");
		// load new movies
		for (i=0;i<fold.count;i++) {
			fold.next();
			filenames[vcount] = fold.pathname + "/" + fold.filename; 
			b2dImgArray[BASE_NAME][vcount] = new JitterObject("jit.qt.movie");
			b2dImgArray[BASE_NAME][vcount].autostart = 0;
			b2dImgArray[BASE_NAME][vcount].adapt = 1;
			
			b2dTexArray[BASE_NAME][vcount] = new JitterObject("jit.gl.texture",GLconext);
			b2dTexArray[BASE_NAME][vcount].name = BASE_NAME + "_"+vcount;
			post("making texture name: " + b2dTexArray[BASE_NAME][vcount].name);
			post();
			
			rv = b2dImgArray[BASE_NAME][vcount].read(filenames[vcount]);
			if (rv[1]==1) { // success, read returns an array [filename,success]
				if (!outmatrix[vcount])
					outmatrix[vcount] = new JitterMatrix(4,"char"); //outmatrix[vcount] = new JitterMatrix(4,"char",vdim[0],vdim[1]);
				outlet(1,"append",fold.filename);
				b2dImgArray[BASE_NAME][vcount].matrixcalc(outmatrix[vcount]/*null*/,outmatrix[vcount]);
				
				//for a max collection connected to this js so that max objects can access this easily (but is it necessary?)
				outlet(3,"store",b2dTexArray[BASE_NAME][vcount].name,outmatrix[vcount].dim[0],outmatrix[vcount].dim[1]);
				
				//for a global texture info array to be used by other related js's
				b2dTexInfoArray[BASE_NAME][vcount] = new Array();
				b2dTexInfoArray[BASE_NAME][vcount] = outmatrix[vcount].dim;
				
				b2dTexArray[BASE_NAME][vcount].jit_matrix(outmatrix[vcount].name);
				vcount++;
			}
			
		}
		if (vindex>=vcount) 
			vindex = 0;
		b2dImgArray[BASE_NAME][vindex].matrixcalc(outmatrix[vindex]/*null*/,outmatrix[vindex]);
		outlet(2,vcount);
	}
}

/*
function image2texture (foldername)
{
	
	var p = this.patcher;
	var someMatrix = 
	
	readfolder(foldername);
    for (var k = 0; k<b2dImgArray.length;k++) {
		//      post(filelist[k]);
		//      post();
        var objY = k * 20;
		
        outlet(3,"script", "new", "tex["+k+"]","newex", 50,objY,400, 196617, "jit.gl.texture",GLconext,"@name",k+"_tex");
    }
	
	for (var k = 0; k<b2dImgArray.length;k++) {
		
		b2dImgArray[k].matrixcalc(outmatrix[vindex],outmatrix[vindex]);
		this.patcher.message("tex["+k+"]");
		new JitterMatrix(4,"char",vdim[0],vdim[1]);
		
	}
	outlet(0,"jit_matrix",outmatrix[vindex].name);	
	
}
	
*/	

function dim(width,height)
{
	vdim[0] = width;
	vdim[1] = height;
	for (i=0;i<vcount;i++) {
		outmatrix[i].dim = vdim;
	}
	dummymatrix.dim = vdim;
}

function anything()
{
	//pass off all other messages to the movie object
	var a = arrayfromargs(arguments);
	if (Function.prototype.isPrototypeOf(b2dImgArray[BASE_NAME][vindex][messagename])) {
		b2dImgArray[BASE_NAME][vindex][messagename](a);	
	} else {
		b2dImgArray[BASE_NAME][vindex][messagename] = a;	
	}
}