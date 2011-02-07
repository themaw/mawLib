/* 

Myler & Weeks algorithm to transform single 
coordinates based on an opencv homography matrix

inspired by from LaserTag/OpenFrameworks

Christopher Baker http://christopherbaker.net
Minneapolis Art on Wheels http://minneapolisartonwheels.org

*/


var matrix = new Array();
var outX = 0;
var outY = 0;

initMatrix(); // init

function initMatrix() {
    for(i = 0; i < 16; i++)
        matrix[i] = 0;
}

function transform_matrix(x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15) {
    matrix[0] = x0;
    matrix[1] = x1;
    matrix[2] = x2;
    matrix[3] = x3;
    matrix[4] = x4;
    matrix[5] = x5;
    matrix[6] = x6;
    matrix[7] = x7;
    matrix[8] = x8;
    matrix[9] = x9;
    matrix[10] = x10;
    matrix[11] = x11;
    matrix[12] = x12;
    matrix[13] = x13;
    matrix[14] = x14;
    matrix[15] = x15;
}
   

function list() {
    
    var a = arrayfromargs(messagename,arguments);
    
    if(arguments.length % 2 == 0) {
        var xformlist = new Array();

        for(i = 0; i < arguments.length; i+=2) {
            calc(arguments[i],arguments[i+1]);
            xformlist[i] = outX;
            xformlist[i+1] = outY;
        }

        outlet(0,xformlist);
        
    } else {
        error("Must be a multiple of two (x,y pairs)");
    }
}


function calc(xIn, yIn) {
    var aa = matrix[0];
    var bb = matrix[1];
    var cc = matrix[3];
    var dd = matrix[4];

    var ee = matrix[5];
    var ff = matrix[7];
    var ii = matrix[12];
    var jj = matrix[13];

    //from Myler & Weeks - so fingers crossed!
    outX = ((aa*xIn + bb*yIn + cc) / (ii*xIn + jj*yIn + 1));
    outY = ((dd*xIn + ee*yIn + ff) / (ii*xIn + jj*yIn + 1));
}


function transform(xIn,yIn) {
    calc(xIn,yIn); 
    outlet(0,outX,outY);    
}





