/*
    converts opencv contours to box2d polygons/shapes
    Christopher Baker : http://christopherbaker.net 
    Minneapolis Art on Wheels : http://minneapolisartonwheels.org
*/

autowatch = 1;

var bodyNamePrefix = "body_";
var bodyNameIndex = 0;
var shapeNameIndex = 0;

var offsetX = 0.0;
var offsetY = 0.0;
var scaleX = 1.0;
var scaleY = 1.0;

var comX = 0.0;
var comY = 0.0;

var makestatic = 0;

// set up inlets/outlets/assist strings
//autowatch = 1;
inlets = 2;
outlets = 1;

setinletassist(0,"jit.iter vertex");
setinletassist(0,"jit.iter index");
setoutletassist(0,"maw.animation.box2d creation commands");

var xi = [];
var yi = [];
var pointCounter = 0;


// the scaling width/height
var width = 320; 
var height = 240;

var index = -1;

var debug = 0;

function msg_int(i0) {
   index = i0;
   if(index == 0) {
       reset();
   }
   
}

function setmakestatic(x) {
    makestatic = x;
}



function reset() {
    xPoints = [];
    yPoints = [];
    pointCounter = 0;
    bodyNameIndex++;    
}

function nameprefix(prefix) {
    bodyNamePrefix = prefix;
}

function offset(offX,offY) {
    offsetX = offX;
    offsetY = offY;
}

function size(wid,hei) {
    width = wid;
    height = hei;
}

function scale(xScale,yScale) {
    scaleX = xScale;
    scaleY = yScale;
}

function list(type,x0,y0){
  
    if(type == 4) {
        comX = x0;
        comY = y0;
    
        finish();
        reset();
        
     } else if(type == 0) {
         // add the points to the list
         xi[pointCounter] = x0;
         yi[pointCounter] = y0;
         pointCounter++;
         
     } 

    
}

// calculate the center of mass
function finish() {

    // create body at comX comY
    // create shapes attached to body
    
    var bodyName = bodyNamePrefix+bodyNameIndex;
    
    
    // send body
    outlet(0,"begin","body",bodyName,comX*scaleX+offsetX,comY*scaleY+offsetY);
    outlet(0,"reportcontactadded",1);
    outlet(0,"reportcontactremoved", 1);
    outlet(0,"reportcontactpersisted", 1);

    outlet(0,"end");
    
    
    var shapeName = bodyName+"_polygon";
    
    // send shape
    outlet(0,"begin","polygon",shapeName, bodyName);

    for(var i = 0; i < pointCounter; i++) {
        outlet(0,"vertex",xi[i]*scaleX-comX,yi[i]*scaleY-comY);    
    }
    
    outlet(0,"density",0.5);

    outlet(0,"end");

    if(makestatic) {
    
//        outlet(0,"set " + body + body",bodyName

    }

}


