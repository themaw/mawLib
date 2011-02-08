
inlets = 1;
outlets = 1;

var thresh = 128.;

var myArray = new Array();
var myArrayLast = new Array();

function setsize(x,y)
{
var size = x * y;
myArray = new Array(size);
myArrayLast = new Array(size);

}

function setthresh(x)
{
    thresh = x;
}

function list(v)
{ 
    myArrayLast = myArray;
    myArray = arrayfromargs(v);

    for(var k = 0;k<myArray.length;k++) {
        if ((myArray[k] > thresh) && (myArrayLast[k] < thresh)) {outlet(0,k,1);}
        if ((myArray[k] < thresh) && (myArrayLast[k] > thresh)) {outlet(0,k,0);}
    }
}