/*
    draws the output from maw.jit.blobs.contours
    Christopher Baker : http://christopherbaker.net 
    Minneapolis Art on Wheels : http://minneapolisartonwheels.org
*/

autowatch = 1;
// set up inlets/outlets/assist strings
//autowatch = 1;
inlets = 2;
outlets = 1;
setinletassist(0,"jit.iter vertex");
setinletassist(1,"jit.iter index");

setoutletassist(0,"jit.lcd draw commands");

var isStillFirst = 1;
var saveNext = 1;
var index = -1;

var startX = -1;
var startY = -1;

var debug = 0;

function draw() {
    
    outlet(0,"pensize",6,6);        

    // set quad color
    outlet(0,"frgb",255,255,0); // yellow
    outlet(0,"frgb",255,0,0); // red
}

function list(x0,y0){
	if(index != 0) {
    	lineto(x0,y0);
    } else {
    	moveto(x0,y0);
    }
}

function lineto(x,y) {
    outlet(0,"pensize",2,2);        
    outlet(0,"frgb",255,255,0); // yellow    
    outlet(0,"lineto", x,y);

}

function moveto(x,y) {
    outlet(0,"moveto",x,y);

}


function drawCentroid(x,y) {
    outlet(0,"pensize",5,5);        
    outlet(0,"frgb",0,255,255); // red    
    outlet(0,"paintoval", x-3,y-3,x+3,y+3);   
}


function drawpoint(x,y) {
    outlet(0,"pensize",3,3);        
    outlet(0,"frgb",255,0,0); // red    
    outlet(0,"paintoval", x-3,y-3,x+3,y+3);   
}



