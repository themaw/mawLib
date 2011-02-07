inlets = 1;
outlets = 3;

//outlet 0: tob2d_defered
//outlet 1: tob2d_create_defered
//outlet 2: messages intended for a 'route' object to max





var fromb2dWord = "";
var DEBUG = 1;

// for stage maker a la chris baker
var has_created = 0;

var width = 1024;
var height = 768;

var wall_thickness = 10;
var density = 0.0;

var PI_OVER_2 = 1.570796326794897;

var left_wall_body = "left_wall_body";
var right_wall_body = "right_wall_body";
var top_wall_body = "top_wall_body";
var bottom_wall_body = "bottom_wall_body";

var left_wall_poly_shape = "left_wall_shape";
var right_wall_poly_shape = "right_wall_poly_shape";
var top_wall_poly_shape = "top_wall_poly_shape";
var bottom_wall_poly_shape = "bottom_wall_poly_shape";


// global code to set it up 
setoutletassist(0,"stuff to go to box2d"); 


b2dTexInfoArray = new Global("b2dTexInfoArrayG");

stagesize = new Global("stagesizeg");
stagesize = new Array();


stagesize = [width,height];

// for the bodys/shames database

b2dPolygons = new Global("b2dPolygonsG");
b2dPolygons = new Array();
var joints = new Array();

var verteces = new Array();
var userdatavec = new Array();

var texturedim = new Array();
var depthorder = new Array();
var currentpolygon = new Array();
var inverttexture = 0;


//for drawing
var sketchsizemult = 0.05;

//for interaction
var mousebut = 0;

if (jsarguments.length == 3) {
	width = jsarguments[1];
	height = jsarguments[2];
} 

function reset()
{
    outlet(0,"reset");
    outlet(1,"reset");
    outlet(2,"reset");
    outlet(2,"joints","bodylist","clear");
	
	has_created = 0;
}



function getvertexscaling()
{
    var xmax = -1;
    var ymax = -1;
    var xmin = 9999999;
    var ymin = 9999999;
    var vert = new Array ();
    for (var k in b2dPolygons) {
        vert = b2dPolygons[k].v;
        for (var i=0;i< (b2dPolygons[k].v).length/2 ;i++) {
            
            if (vert[i*2]>xmax) {xmax = vert[i*2];}
            if (vert[i*2+1]>ymax) {ymax = vert[i*2+1];}
            if (vert[i*2]<xmin) {xmin = vert[i*2];}
            if (vert[i*2+1]<ymin) {ymin = vert[i*2+1];}        
        }
}

    outlet(2,"vertexscaling",xmin,xmax, ymin,ymax);
    return([xmin,xmax, ymin,ymax]);
}



function getbodylist()
{
    var bodylist = new Array();
    var index = 0;
    for (var k in b2dPolygons) {
        bodylist[index] = b2dPolygons[k].name;
        index++;
    }
    outlet(2,"bodylist",bodylist);
}

function maketextures()
{
    var index = 0;
    for (var k in b2dPolygons) {
        cutTexture(k,index);
        index++;
    }
}

function setdepthorder()
{
    var v = arrayfromargs(arguments);
    var index = 0;
    if (v[0] == "default") {
        for (var k in b2dPolygons) { 
            post("k: "+k+"\n");
            depthorder[k] = k;
            post("depthorder: ", depthorder.length, depthorder);
            }
        }
    else {
        for (var k in b2dPolygons) { post("hi "+k);post();depthorder[b2dPolygons[k].name] = v[index]; index++;}
        }
    post("depthorder: ", depthorder.length, depthorder);
    outlet(2,"bodies","depthorder","set",depthorder);
}



function depthordersort(a,b)
{
    var x = a.depthorder;
    var y = b.depthorder;
    return ((x < y) ? -1 : ((x > y) ? 1 : 0)); 


}


//------making bodies, shapes, joints----------
//---------------------------------------------



//class containing everything to do with a body + it's associated shape
//to create a body and a shape: 
//        1.  set vertecies with 'setverteces x1 y1 x2 y2 ...'
//        2.  set userdata with 'setuserdata'
//        3.  create all with 'addpolygon base_name shape mass x_position y_position density group_index depth_order'

function polygon(v)
{
    
    this.name = v[0];        //base name
    this.shape = v[1];        //shape name (e.g. "box", "circle", "polygon")
    this.m = v[2];            //mass
    this.x = v[3];            //x position
    this.y = v[4];            //y position
    this.d = v[5];            //density
    this.g = v[6];            //group index
    this.depthorder = v[7];            //depthorder
    
    this.v = verteces;
    this.userdata = userdatavec;
    
    this.grab = 0;            //property used to move bodies in real-time with outside control 
    //this.depthorder = 0;
    //this.userdata = userdatavec[v[0]];        //userdata
    
}

function setverteces()
{
    verteces = arrayfromargs(arguments);;
}

function getinverttexture()
{
    outlet(2,"inverttexture",inverttexture);
}


function setuserdata(v)
{
    v = arrayfromargs(arguments);
    userdatavec[v[0]] = v.slice(1);
    
}

function setcurrentpolygon()
{    v = arrayfromargs(arguments);
    
    currentpolygon[v[0]] = v.slice(1);
}


function makeallpolygons()
{
    //b2dPolygons.sort(depthordersort);
    var index = 0;
    for (var k in b2dPolygons) {
        post("••••••••making: "+k);
        post();
        var tsk = new Task(makeAllPolygons1,this,k);
        tsk.schedule(index*500);
        index++;
        //depthorder = depthorder.add(basename);

    }

}

function makeAllPolygons1(thename)
{
        makePolygon(b2dPolygons[thename]);
        outlet(2,"joints","bodylist","append",b2dPolygons[thename].name);
}

function addcurrentpolygon()
{
    verteces = currentpolygon["verteces"];
    //post("•••verteces here: "+verteces);
    addpolygon(    currentpolygon["name"],
                "polygon",
                currentpolygon["mass"],
                currentpolygon["xpos"],
                currentpolygon["ypos"],
                currentpolygon["density"],
                currentpolygon["groupindex"],
                currentpolygon["depth"]);
                
    outlet(2,"verteces","vertexlist", currentpolygon["verteces"]);
    outlet(2,"verteces","center", currentpolygon["xpos"],currentpolygon["ypos"]);

}


function addtextureshape(bodyName, texBaseName, texNumber, shape, mass, xPos, yPos, density, groupIndex, depthOrder, sizeMult )
{// (pixel dimensions of the created box2d box) = sizeMult * (pixle dimensions of the image file loaded into the texture)
    verteces = new Array();
//    post("hello.");
//    post();
//    post(b2dTexInfoArray[texBaseName][texNumber][0]);
//    post();
    var xImg = b2dTexInfoArray[texBaseName][texNumber][0];
    var yImg = b2dTexInfoArray[texBaseName][texNumber][1];
    var xSize = xImg * sizeMult;
    var ySize = yImg * sizeMult;
    
    
    verteces = [ xPos - xSize / 2, yPos + ySize /2,
                xPos + xSize / 2, yPos + ySize /2,
                xPos + xSize / 2, yPos - ySize /2,
                xPos - xSize / 2, yPos - ySize /2];
    
    userdatavec = [texBaseName + "_" + texNumber , xImg, yImg, sizeMult];
    
//	post("before addpolygon: ",bodyBaseName, shape, mass, xPos, yPos, density, groupIndex, depthOrder);
//	post();
    addpolygon(bodyName, shape, mass, xPos, yPos, density, groupIndex, depthOrder);
    
    
}

function addpolygon()
{
    var params = arrayfromargs(arguments);
    var basename = params[0];
    
    b2dPolygons[basename] = new polygon(params);
    makePolygon(b2dPolygons[basename]);
    outlet(2,"joints","bodylist","append",basename);
    //depthorder = depthorder.add(basename);
    
}


function makePolygon(polyvec)
{

    //create body
    outlet(1,"begin","body",polyvec.name+"_body",polyvec.x,polyvec.y);
    outlet(1,"mass",polyvec.m);
    outlet(1,"angle",polyvec.a);
    //post("step 1");
    if ((polyvec.userdata).length > 0) 
        
    { outlet(1,"userdata",polyvec.userdata); }
    //post("step 2");
    outlet(1,"end");    
    if (polyvec.shape == "polygon") {
    outlet(1,"begin", "polygon" ,polyvec.name+"_shape",polyvec.name+"_body"); 
        for (var k=0;k<verteces.length/2;k++) 
            { outlet(1,"vertex", verteces[k*2]-polyvec.x,verteces[k*2+1]-polyvec.y); }
    }
    //create shape
    
    if (polyvec.shape == "box") {
    outlet(1,"begin", "box" ,polyvec.name+"_shape",polyvec.name+"_body",polyvec.w,polyvec.h,0,0,0); }
    
    //create shape
    if (polyvec.shape == "circle") {
    outlet(1,"begin", "circle" ,polyvec.name+"_shape",polyvec.name+"_body",polyvec.w,polyvec.h,0,0,0); }    
    
    outlet(1,"density",polyvec.d);
    outlet(1,"groupindex",polyvec.g);

    outlet(1,"end");
}

function addjoint (basename,body1,body2,x,y,angle_enable, angle_low, angle_up)
    {
        //x = -1 and y = -1 will place join on the midpoint of (body1.x,body1.y) ->  (body2.x,body2.y) -
        if (x==-1 && y==-1) {
        outlet(1,"begin", "revolutejoint",basename+"_joint",body1+"_body",body2+"_body",(b2dPolygons[body1].x+b2dPolygons[body2].x)/2.,(b2dPolygons[body1].y+b2dPolygons[body2].y)/2.);
        } else
        {
        outlet(1,"begin", "revolutejoint",basename+"_joint",body1+"_body",body2+"_body",x,y);
        }
        
        outlet(1,"enablelimit", angle_enable);
        outlet(1,"lowerangle", angle_low);
        outlet(1,"upperangle", angle_up);
        outlet(1,"end");
    }

function addbox(basename,x,y,width,height,angle,density, groupindex)
{
        outlet(1,"begin","body",basename+"_body",x,y);
        outlet(1,"end");
        outlet(1,"begin", "box",basename+"_box",basename+"_body",width,height,x,y,angle);
        outlet(1,"density",density);
        outlet(1,"groupindex",groupindex);
        outlet(1,"end");
}

function boxes(basename, n,startx,starty,spacing,width,height,density,groupindex)
{
var k = 0;
    for (k=0; k < n; k++) {
        var posx = startx + k* spacing;
        outlet(1,"begin","body",basename+"_body_"+k,posx,starty);
        outlet(1,"end");
    }
    for (k=0; k < n; k++) {
        outlet(1,"begin", "box",basename+"_box_"+k,basename+"_body_"+k,width,height,0,0,0);
        outlet(1,"density",density);
        outlet(1,"groupindex",groupindex);
        outlet(1,"end");
    }
    for (k=0; k < n-1; k++) {
        var k2 = k+1;
        var posx = startx + (k* spacing+k2* spacing)/2.;
        outlet(1,"begin", "revolutejoint",basename+"_joint_"+k,basename+"_body_"+k,basename+"_body_"+k2,posx,starty);
        outlet(1,"end");
    }


}


//---interaction--------------
//----------------------------
function mouse(x,y,button)
{
    
    
    if (button == 0) {
        if (mousebut == 1) {
            outlet(1,"destroy", "MOUSE_JOINT");
            mousebut = 0;
        }
    }
    if (button==1)  {
        if (mousebut == 0) {
        outlet(1,"begin", "mousejoint", "MOUSE_JOINT", x,y);
        outlet(1,"end");
        outlet(1,"set","MOUSE_JOINT", "target",x,y);
        mousebut = 1;
        } else {
        outlet(1,"set","MOUSE_JOINT", "target",x,y);
        }
    }
    
    
    
}


//---drawing commands---------
//----------------------------
// body_name x y angle texture_name tex_x tex_y

sketchplane.immediate = 1;  //glitches visible when not on

function sketchplane(bodyName, x, y, angle, texName, texDimX, texDimY, scaleMult)
{
    
    outlet(2,"jit.gl.sketch","glpushmatrix");
    outlet(2,"jit.gl.sketch","shapeprim quad");
    outlet(2,"jit.gl.sketch","shapeslice 10 10");
    outlet(2,"jit.gl.sketch","glcolor 1 1 1.");
    outlet(2,"jit.gl.sketch","gltranslate",x,y);
    var angle_degrees = (angle * 57.29578 + 180 ) % 360;
    outlet(2,"jit.gl.sketch","glrotate",angle_degrees,0.,0.,1.);
    outlet(2,"jit.gl.sketch","glbindtexture",texName);
    outlet(2,"jit.gl.sketch","plane", texDimX * scaleMult * sketchsizemult,texDimY * scaleMult*sketchsizemult);
    outlet(2,"jit.gl.sketch","glpopmatrix");
}

function step()
{
    outlet(2,"jit.gl.sketch","reset");
    outlet(2,"jit.gl.sketch","glmatrixmode","modelview");
    outlet(2,"jit.gl.sketch","gluortho2d", 0, width,height, 0);
    outlet(2,"jit.gl.sketch","gldisable", "depth_test");   
    outlet(2,"jit.gl.sketch","glclearcolor",0,0,0,1.);
	outlet(2,"jit.gl.sketch","glclear");
	outlet(0,"bang");    
    outlet(0,"step");    
}



function fromb2d(body_name, property, xpos, ypos)
{

    if (body_name == fromb2dWord && property == "position") {
        var basename = (body_name.split("_body"))[0];
        //var paras = arrayfromargs[v]; //position body_name x y
        b2dPolygons[basename].x = xpos;
        b2dPolygons[basename].y = ypos;
    
        b2dPolygons[basename].grab = 1;
    }
}


function releasebody (basename)
{
    b2dPolygons[basename].grab = 0;
    outlet(1,"destroy",basename+"_mousejoint");
}

function grabbody(basename, x, y)
{
ifstats: {
    if (b2dPolygons[basename].grab == 0) {
        fromb2dWord = basename+"_body";
        outlet(0,"get", basename+"_body", "position");        
        b2dPolygons[basename].grab = 1;
        break ifstats;
    } else if (b2dPolygons[basename].grab == 1 ) {
        outlet(1,"begin","mousejoint", basename + "_mousejoint", b2dPolygons[basename].x,b2dPolygons[basename].y);
        outlet(1,"end");
        b2dPolygons[basename].grab = 2;
        break ifstats;
    } else if (b2dPolygons[basename].grab == 2 ) {
        outlet(0,"set", basename+"_mousejoint", "target",x,y);
    }
}
}

//---OpenGL Texture related---
//----------------------------

function gettexturedim()
{
    outlet(2,"texturedim",texturedim);
    
}

function cutTexture(k,index)
{
    //var taskarray = new Array(b2dPolygons.length);
    var xyminmax = getvertexscaling();
    postdebug("xmin xmax ymin ymax: "+xyminmax+"\n");
    postdebug("texture dim: "+ texturedim + "\n");
    //var index = 0;
    //for (var k in b2dPolygons) {
    var paintpoly_vert = new Array();
    var vert = b2dPolygons[k].v;
    postdebug("•••vert: "+vert);
    postdebug("•••(b2dPolygons[k].v).length: "+(b2dPolygons[k].v).length);
    
    postdebug("•••••••••••••");
    postdebug("•••xyminmax[0]: "+ xyminmax[0]);
    postdebug("•••xyminmax[1]: "+xyminmax[1]);
    postdebug("•••texturedim[0]: "+texturedim[0]);        
    for (var i=0;i< (b2dPolygons[k].v).length/2 ;i++) {
        //postdebug("vertex ",i,": ",vert[2*i],vert[2*i+1],"\n");
        paintpoly_vert[2*i] = Math.round(scale(vert[2*i], xyminmax[0],xyminmax[1],0,texturedim[0]-1));
        paintpoly_vert[2*i+1] =  Math.round(scale(vert[2*i+1], xyminmax[2],xyminmax[3],0,texturedim[1]-1));
    }
    
    postdebug("•••paintpoly_vert: "+paintpoly_vert);
    //post();
    //find the rectangular area in the original still image where this particular part is
    var xverts = new Array();
    var yverts = new Array();
    
    var xverts = deinterleave(paintpoly_vert,2,0);
    var yverts = deinterleave(paintpoly_vert,2,1);
    
    var edges = new Array();
    var xminmax = listminmax(xverts[0]);
    var yminmax = listminmax(yverts[0]);
    postdebug("xminmax: " + xminmax + " ||| " + xminmax.length + "\n");
    postdebug("yminmax: " + yminmax + " ||| " + yminmax.length + "\n");
    postdebug("||| " +" "+ xminmax[1]+" "+ yminmax[1]+" "+xminmax[3]+" "+ yminmax[3]);
    edges[0] = xminmax[1];
    edges[1] = yminmax[1];
    edges[2] = xminmax[3];
    edges[3] = yminmax[3];
    
    postdebug("edges: ",edges);
    
    
    //find the offset between the hand-designated center of this polygon and the center of the rectangualr texture
    xverts = deinterleave(b2dPolygons[k].v,2,0);
    yverts = deinterleave(b2dPolygons[k].v,2,1);
    xminmax = listminmax(xverts[0]);
    yminmax = listminmax(yverts[0]);
    
    var xoffset = b2dPolygons[k].x - Math.abs(xminmax[3]+xminmax[1])/2.;
    var yoffset = b2dPolygons[k].y - Math.abs(yminmax[3]+yminmax[1])/2.;
    postdebug("--b2dPolygons[k].x: " + b2dPolygons[k].x);
    postdebug("--xminmax[1]: " + xminmax[1]);
    postdebug("--xminmax[3]: " + xminmax[3]);
    postdebug("--b2dPolygons[k].y: " + b2dPolygons[k].y);
    postdebug("--yminmax[1]: " + yminmax[1]);
    postdebug("--yminmax[3]: " + yminmax[3]);
    postdebug("--offset.x: " + xoffset);
    postdebug("--offset.y: " + yoffset);
    
    
    var offset = new Array();
    offset[0] = xoffset;
    offset[1] = yoffset;
    
    
    
    var args = new Array();
    args[0] = index;
    args[1] = b2dPolygons[k].name;
    args[2] = paintpoly_vert;
    postdebug("paintpoly_vert: "+paintpoly_vert+"\n");
    args[3] = edges;
    args[4] = offset;
    
    var tsk = new Task(texCutWork1,this,args);
    tsk.schedule(index*500);
    //index++;
    //outlet(2,"texture","jit.lcd","paintpoly", paintpoly_vert);
    //outlet(2,"texture","basename",b2dPolygons[k].name);
    
    //}
    
}

function texCutWork1 (v)
{
    outlet(2,"texture","jit.lcd","clear");
    outlet(2,"texture","jit.lcd","paintpoly", v[2]);
    var ypos = v[0]*20+500;
    outlet(2,"texture","thispatcher","script", "new", "tex["+v[0]+"]","newex", 50,ypos,400, 196617, "jit.gl.texture","b2d_window","@name",v[1]+"_tex");
    //var dimx = v[3][1][0]-v[3][0][0];
    var dimx = v[3][2]-v[3][0];
    //var dimy = v[3][1][1]-v[3][0][1];
    var dimy = v[3][3]-v[3][1];
    
    var dim = new Array();
    dim = [dimx,dimy];
    outlet(2,"texture","submatrix","dim",dim);
    
    outlet(2,"box2d","set",v[1]+"_body","userdata",v[1]+"_tex", dim[0],dim[1] ,v[4][0], v[4][1],0); 
    b2dPolygons[v[1]].userdata = [v[1]+"_tex", dim[0],dim[1] ,0,0,0];
    
    //outlet(2,"texture","submatrix","srcdimstart", v[3][0]);
    var srcdimstart = [v[3][0],v[3][1]];
    outlet(2,"texture","submatrix","srcdimstart", srcdimstart);
    //outlet(2,"texture","submatrix","srcdimend", v[3][1]);
    var srcdimend = [v[3][2],v[3][3]];
    outlet(2,"texture","submatrix","srcdimend", srcdimend);
    //are the textures off center?  
    //var xcent = 
    
    //
    outlet(2,"texture","basename",v[1]);
    if (inverttexture) {outlet(2,"texture","inverttexture","bang");}
    var args =[v[0],v[1]];
    var tsk = new Task(texCutWork2,this,args);
    tsk.schedule(200);
    
}

function texCutWork2 (v)
{
    //        outlet(2,"texture","thispatcher","script","send","tex["+v[0]+"]","name",v[1]);
    outlet(2,"texture","thispatcher","script","send","tex["+v[0]+"]","jit_matrix", "temptexture");
    
}


function settexturedim()
{
    texturedim = arrayfromargs(arguments);
    
}
//-----get and set methods for js attributes------
//------------------------------------------------

function getverteces()
{
    outlet(2,"verteces",verteces);
}


function setinverttexture(n)
{
    inverttexture = n;
}


function getsketchsizemult()
{
    outlet(2,"sketchsizemult",sketchsizemult);
}


function setsketchsizemult(n)
{
    sketchsizemult = n;
}

function getstagesize()
{
    outlet(2,"stagesize",width,height);
}


function setstagesize(x,y)
{
    width = x;
    height = y;
	makestage(x,y);
}



//---box2d house-keeping----
//--------------------------



function makestage(w,h)
{
	width = w;
	height = h;
	
	// delete the old one
	if(has_created==1) {
		outlet(1,"destroy",left_wall_body);
        outlet(1,"destroy",right_wall_body);
        outlet(1,"destroy",top_wall_body);
        outlet(1,"destroy",bottom_wall_body);
	} else {
		has_created = 1;
	}
	center_x = width/2;
	center_y = height/2;
    half_width = width/2;
    half_height = height/2;
	
	// left wall
	outlet(1, "begin", "body", left_wall_body, 0, center_y);
	outlet(1,"end");
    
	outlet(1, "begin", "box", left_wall_poly_shape, left_wall_body, wall_thickness, half_height);
	outlet(1, "density", density);
	outlet(1, "end");
	
    
	// right wall
	outlet(1, "begin", "body", right_wall_body, width, center_y);
	outlet(1, "end");
    
    outlet(1, "begin", "box", right_wall_poly_shape, right_wall_body, wall_thickness, half_height);
	outlet(1, "density", density);
	outlet(1, "end");
	
	// top wall
	outlet(1, "begin", "body", top_wall_body, center_x, 0);
	outlet(1, "end");
    
    outlet(1, "begin", "box", top_wall_poly_shape, top_wall_body, half_width, wall_thickness);
	outlet(1, "density", density);
	outlet(1, "end");
	
	// bottom wall
	outlet(1, "begin", "body", bottom_wall_body, center_x, height);
	outlet(1,"end");
    
    outlet(1, "begin", "box", bottom_wall_poly_shape, bottom_wall_body, half_width, wall_thickness);
	outlet(1, "density", density);
	outlet(1, "end");
}



//-----Debugging tools-------
//---------------------------


function ptest()
{
    var v = arrayfromargs(arguments);
    var newlists = new Array();
    var step = 2;
    for (var k = 0;k<step;k++) {
        newlists[k] = new Array();
        var len = v.length/step;
        postdebug("len: "+len);
        
        
        for (var i=0;i<(v.length/step);i++) {
            newlists[k][i] = v[i*step + k];        
        }
    }
    postdebug("newlists: "+newlists+"\n");
    postdebug("newlists.length: "+newlists.length+"\n");
    postdebug("newlists[0] :"+newlists[0]+"\n");
    postdebug("newlists[1] :"+newlists[1]+"\n");
}

function dtest()
{
    var vec = arrayfromargs(arguments);
    //var answer = new Array(2);
    //postdebug("answer.length: "+answer.length+"\n");
    postdebug("deinterleave(vec,2): "+ deinterleave(vec,2));
    var answer = deinterleave(vec,2);

    postdebug("answer: "+answer+"\n");
    postdebug("answer.length: "+answer.length+"\n");
    postdebug("answer[0] :"+answer[0]+"\n");
    postdebug("answer[1] :"+answer[1]+"\n");
}

function ltest()
{
    v = arrayfromargs(arguments);
    postdebug(listminmax(v));
}

function postdebug(v)
{
    if (DEBUG == 1) {post(v);post();}
    
}

function printpolygons()
{
    post("polygon lis: ");
    post();
    var counter = 0;
    for (var k in b2dPolygons) {
        post(k,": ",b2dPolygons[k].name);
        post();
        counter++;
    }
   
}

//-----------Utilities-------
//---------------------------
function scale(x,inmin, inmax,outmin,outmax)
{
    var xout = (x-inmin)/(inmax-inmin)*(outmax-outmin)+outmin;
    // postdebug("here's the scaled: ", xout, "\n");
    return xout;
}



function listminmax(v)
{
    var xmax = -9999999;
    var maxind = 0;
    var xmin = 9999999;
    var minind = 0;
    for (var k in v) {
        if (v[k]>xmax) {xmax = v[k]; maxind = k }
        if (v[k]<xmin) {xmin = v[k]; minind = k }
    }
    return([minind,xmin,maxind,xmax]);
}


function deinterleave(v,step,index)
{
    var newlists = new Array();
    for (var k = 0;k<step;k++) {
        newlists[k] = new Array(step);
        var len = v.length/step;
        for (var i=0;i<(v.length/step);i++) {
            newlists[k][i] = v[i*step + k];        
        }
    }
    postdebug("newlists.length: "+newlists.length);
    postdebug("newlists.0: "+newlists[0]);
    postdebug("newlists.1: "+newlists[1]);
    
    return[newlists[index]];
    
}

/*
 function centeroid(v)
 {
 var X = new Array();
 for (k=0; k < v.length/2; k++) {
 X[k] = v[k*2];
 Y[k] = v[k*2+1];
 ]
 
 for (i=0; k < i; k++) {
 X = SUM[(X[i] + X[i]+1) * (X[i] * Y[i]+1 - X[i]+1 * Y[i])] / 6 / A;
 Y = SUM[(Y[i] + Y[i]+1) * (X[i] * Y[i]+1 - X[i]+1 * Y[i])] / 6 / A;
 }
 }
 */

