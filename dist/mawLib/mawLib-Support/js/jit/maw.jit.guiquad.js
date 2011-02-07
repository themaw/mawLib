/*
    keeps track of gui-quad points
    Christopher Baker : http://christopherbaker.net 
    Minneapolis Art on Wheels : http://minneapolisartonwheels.org
    Modeled after "guiquad.cpp" in Laser Tag http://muonic.net
*/

// set up inlets/outlets/assist strings
autowatch = 1;
inlets = 0;
outlets = 2;
setinletassist(0,"Anything really ...");
setoutletassist(0,"quad: x0 y0 x1 y1 x2 y2 x3 y3");
setoutletassist(1,"jit.lcd / jit.gl.sketch draw commands");
//setoutletassist(2,"scaled quad: x0 y0 x1 y1 x2 y2 x3 y3");
//setoutletassist(3,"info");




function Point() {
    this.x = 0.;
    this.y = 0.;
}

var isLCD = 1;

function setIsLCD(x) {
    isLCD=x;
}

var srcZeroToOne = new Array();
//var srcScaled = new Array();

var _hitArea_ = 10;

// the gui size (i.e. how big is the jit.pwindow?)
var guiWidth = 320;    
var guiHeight = 240;

// the scaling width/height
var width = 320;
var height = 240;

// mouse variables for keeping track of the mouse state
var mouseButton = 0;
var mouseX = 0;
var mouseY = 0;

// the currently selected quad
var selected = -1;

// is this object active?
//var enable = 1;

var debug = 0;
var active = 1;

var name = "QUAD_";

var qr = 255;
var qg = 255;
var qb = 0;


initQuad(0);

function color(r,g,b) {
    qr = r;
    qg = g;
    qb = b;
}


function drawLCD() {
// set quad color
    outlet(1,"frgb",qr,qg,qb);
    
    outlet(1,"framepoly",
        srcZeroToOne[0].x*guiWidth,
        srcZeroToOne[0].y*guiHeight,
        srcZeroToOne[1].x*guiWidth,
        srcZeroToOne[1].y*guiHeight,
        srcZeroToOne[2].x*guiWidth,
        srcZeroToOne[2].y*guiHeight,
        srcZeroToOne[3].x*guiWidth,
        srcZeroToOne[3].y*guiHeight,
        srcZeroToOne[0].x*guiWidth,
        srcZeroToOne[0].y*guiHeight
        );
        
    for(i = 0; i < 4; i++) {
        switch(i) {
            case 0:
                outlet(1,"frgb",255,0,0);
                break;
            case 1:
                outlet(1,"frgb",0,255,0);
                break;
            case 2:
                outlet(1,"frgb",0,0,255);
                break;
            case 3:
                outlet(1,"frgb",255,255,0);
                break;
        }
        
        
        
        outlet(1,"framerect", 
            srcZeroToOne[i].x*guiWidth-_hitArea_/2, 
            srcZeroToOne[i].y*guiHeight-_hitArea_/2,
            srcZeroToOne[i].x*guiWidth+_hitArea_/2, 
            srcZeroToOne[i].y*guiHeight+_hitArea_/2);
    }
    
    
}

function drawGL() {

    // for jit.gl.sketch

    // reset sketch context
    outlet(1,"reset");
  
    // set up 2d drawing
    outlet(1,"glmatrixmode","modelview");
    //    gluortho2d <left> <right> <bottom> <top>;
    outlet(1,"gluortho2d", 0, guiWidth, guiHeight, 0);
    
    // 2d, no depth
    outlet(1,"gldisable", "depth_test");

    // 2d, no fog
    outlet(1,"gldisable", "fog");

    
    // set the clear color
    outlet(1,"glclearcolor", 0., 0., 0., 1.);


    // set quad line color
    outlet(1,"glcolor",qr/255.,qg/255.,qb/255.);
    
    // draw the box
    outlet(1,"glbegin", "line_loop");
    
    for(i = 0; i < 4; i++) {
        outlet(1,"glvertex", srcZeroToOne[i].x*guiWidth, srcZeroToOne[i].y*guiHeight);
    }
    
    outlet(1,"glend");
    
        
    for(i = 0; i < 4; i++) {
        switch(i) {
            case 0:
                outlet(1,"glcolor",1,0,0);
                break;
            case 1:
                outlet(1,"glcolor",0,1,0);
                break;
            case 2:
                outlet(1,"glcolor",0,0,1);
                break;
            case 3:
                outlet(1,"glcolor",1,1,0);
                break;
        }
        
        
         // l/t/b/t
        var x0 = srcZeroToOne[i].x*guiWidth-_hitArea_/2; 
        var x1 = srcZeroToOne[i].x*guiWidth+_hitArea_/2; 
        var y0 = srcZeroToOne[i].y*guiHeight-_hitArea_/2; 
        var y1 = srcZeroToOne[i].y*guiHeight+_hitArea_/2; 

        outlet(1,"glbegin", "line_loop");

        outlet(1,"glvertex", x0,y0);
        outlet(1,"glvertex", x1,y0);
        outlet(1,"glvertex", x1,y1);
        outlet(1,"glvertex", x0,y1);

        outlet(1,"glend");
    }

    outlet(1,"bang"); // activate the jit.gl.sketch
}

function draw() {
    if(!active) return;
    if(isLCD) {
        drawLCD();
    } else {
        drawGL();
    }
}

function setName(x) {
    name = x;
}

function initQuad(x) {
    if(debug) post("init quad\n");
    srcZeroToOne[0] = new Point;
    srcZeroToOne[0].x = 0.2;
    srcZeroToOne[0].y = 0.2;
    
    srcZeroToOne[1] = new Point;
    srcZeroToOne[1].x = 0.8;
    srcZeroToOne[1].y = 0.2;

    srcZeroToOne[2] = new Point;
    srcZeroToOne[2].x = 0.8;
    srcZeroToOne[2].y = 0.8;

    srcZeroToOne[3] = new Point;
    srcZeroToOne[3].x = 0.2;
    srcZeroToOne[3].y = 0.8;
/*

    if(debug) post("init quad\n");
    srcZeroToOne[0] = new Point;
    srcZeroToOne[0].x = 0.0;
    srcZeroToOne[0].y = 0.0;
    
    srcZeroToOne[1] = new Point;
    srcZeroToOne[1].x = 1.0;
    srcZeroToOne[1].y = 0.0;

    srcZeroToOne[2] = new Point;
    srcZeroToOne[2].x = 1.0;
    srcZeroToOne[2].y = 0.0;

    srcZeroToOne[3] = new Point;
    srcZeroToOne[3].x = 0.0;
    srcZeroToOne[3].y = 1.0;
*/
}

function bang() {
    outlet(0,
        srcZeroToOne[0].x*width,
        srcZeroToOne[0].y*height,
        srcZeroToOne[1].x*width,
        srcZeroToOne[1].y*height,
        srcZeroToOne[2].x*width,
        srcZeroToOne[2].y*height,
        srcZeroToOne[3].x*width,
        srcZeroToOne[3].y*height
        );
}

function debug(v) {
    debug = v;
}

function setZeroToOneQuadPoints(x0, y0, x1, y1, x2, y2, x3, y3){
    srcZeroToOne[0].x = x0;
    srcZeroToOne[0].y = y0;
    srcZeroToOne[1].x = x1;
    srcZeroToOne[1].y = y1;
    srcZeroToOne[2].x = x2;
    srcZeroToOne[2].y = y2;
    srcZeroToOne[3].x = x3;
    srcZeroToOne[3].y = y3;
    bang();
}

function setScaledQuadPoints(x0, y0, x1, y1, x2, y2, x3, y3){
    srcZeroToOne[0].x = x0/width;
    srcZeroToOne[0].y = y0/height;
    srcZeroToOne[1].x = x1/width;
    srcZeroToOne[1].y = y1/height;
    srcZeroToOne[2].x = x2/width;
    srcZeroToOne[2].y = y2/height;
    srcZeroToOne[3].x = x3/width;
    srcZeroToOne[3].y = y3/height;
   bang();
}


function setGuiQuadPoints(x0, y0, x1, y1, x2, y2, x3, y3){
   
    srcZeroToOne[0].x = x0/guiWidth;
    srcZeroToOne[0].y = y0/guiHeight;
    srcZeroToOne[1].x = x1/guiWidth;
    srcZeroToOne[1].y = y1/guiHeight;
    srcZeroToOne[2].x = x2/guiWidth;
    srcZeroToOne[2].y = y2/guiHeight;
    srcZeroToOne[3].x = x3/guiWidth;
    srcZeroToOne[3].y = y3/guiHeight;
    bang();
}

function hitArea(in_hitArea) {
     _hitArea_ = in_hitArea;
}

function guiSize(in_width,in_height) {
    guiWidth = in_width;
    guiHeight = in_height;
}

function size(in_width,in_height) {
    width = in_width;
    height= in_height;
}

function mouse(x,y,button,x0,x1,x2,x3,x4) {
    if(mouseButton == 0) {
        if(button == 1) {
            if(debug) post("mouse pressed\n");
            mousePressed(x,y);
        } else {
            if(debug) post("mouse no change\n");
        }
    } else {
        if(button == 1) {
            if(debug) post("mouse dragged\n");
            mouseDragged(x,y);
        } else {
            if(debug) post("mouse released\n");
        }
        
    }

    mouseButton = button;

    bang();
}

function selectPoint(x,y) {
        if(debug) post("selecting point ... \n");
        selected = -1;
        if(guiWidth == 0 || guiHeight == 0 || x > guiWidth || y > guiHeight || x < 0 || y < 0) {
            //then we are out of our possible quad area
            //so we ignore :)
            if(debug) post("\t\t"+name+" : DIED\n");
            return false;
        }  

        //lets get it in range x(0 - width) y(0 - height)
        var px = x;
        var py = y;
        var pHitArea = _hitArea_;

        //now get in 0-1 range
        px /= guiWidth;
        py /= guiHeight;

        pHitArea /= guiWidth;

        if(debug) post("\t\t"+name+"px="+px+"py="+py+"\n");


        //we want to store the smallest distance found
        //because in the case when two points are in the 
        //hit area we want to pick the closet
        var storeDist = 9999999.0;

        for(i = 0; i < 4; i++){
            var dx = Math.abs(px -  srcZeroToOne[i].x);
            var dy = Math.abs(py -  srcZeroToOne[i].y);
            //post("dx/dy=>" + dx + " " + dy + "\n");


            var dist = Math.sqrt(dx*dx + dy*dy);
            


            if(dist > pHitArea) continue;

            if(debug) post("dist="+dist + " _hitArea_="+pHitArea+"\n");

            if(dist < storeDist) {
                selected = i;
                storeDist = dist;
            }
        }

        
        if(debug) post("selected="+selected + "\n");


        if(selected != -1) {
            srcZeroToOne[selected].x     = px;
            srcZeroToOne[selected].y     = py;
            /*
            if(selected == 0)setCommonText("status: Quad - Top Left");
            else
                if(selected == 1)setCommonText("status: Quad - Top Right");
                else
                    if(selected == 2)setCommonText("status: Quad - Bottom Right");
                    else 
                        if(selected == 3)setCommonText("status: Quad - Bottom Left");
            */
            return true;
        }

        return false;
}

function updatePoint(x,y) {
    if(debug) post("update point ... \n");
    
    //nothing to update
    if(selected == -1) return false;
    
    if(guiWidth == 0 || guiHeight == 0){
        //dangerous so we ignore :)
        return false;
    }  
    
    // stay inside the gui quad
    if( x < 0 )             x = 0;
    if( x > 0 + guiWidth )     x = guiWidth;
    if( y < 0 )             y = 0;
    if( y > 0 + guiHeight)     y = guiHeight;
    
    //lets get it in range x(0 - width) y(0 - height)
    var px = x;
    var py = y;
    
    //now get in 0-1 range
    px /= guiWidth;
    py /= guiHeight;
    
    srcZeroToOne[selected].x     = px;
    srcZeroToOne[selected].y     = py;    
//    srcScaled[selected].x        = px;
 //   srcScaled[selected].y        = py;
    
    return true;    
}

function getScaledQuadPoints() {
    for(i = 0; i < 4; i++){
        srcScaled[i].x = srcZeroToOne[i].x * videoWidth;
        srcScaled[i].y = srcZeroToOne[i].y * videoHeight;                
    }
}

function mousePressed(x,y) {
    if(active) 
    selectPoint(x,y);
}

function mouseDragged(x, y) {
    if(active) 
    updatePoint(x,y);
}

function mouseReleased(x, y) {/* save something here? */}    

function isActive(v) {
    active = v;
}
