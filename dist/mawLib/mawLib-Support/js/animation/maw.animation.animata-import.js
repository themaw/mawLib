inlets = 1;
outlets = 2;

var i = 0;

makejoint.immediate = 1;
var joints = new Array();
var allObjects = new Array();
function makejoint() {
	var v = arrayfromargs(arguments);
    joints[i] = v;

    var pos = i * 50 + 100;
    create([i+"speedlim", "newex", pos  ,  130, 40, 196617, "speedlim", 200]);
    create([i+"unpack", "newex", pos  ,  180, 40, 196617, "unpack", .5, .5]);
    create([i+"gate", "newex", pos  ,  500, 40, 196617, "gate", 1, 1.]);
    create([i+"pack", "newex", pos  ,  550, 40, 196617, "pack", .5, .5]);
    create([i+"prepend", "newex", pos  ,  600, 40, 196617, "prepend", v[0]]);    
	
	
	outlet(0,"script", "connect", i+"speedlim", 0, i+"unpack", 0);
	outlet(0,"script", "connect", i+"gate", 0, i+"pack", 0);
	outlet(0,"script", "connect", i+"pack", 0, i+"prepend", 0);
	i++;
  

}

function finish() {
	var routeArgList = new Array();
	var route2ArgList = new Array();
	var arglist = new Array();
	for (var k in joints) {
		routeArgList.push(joints[k][0]);
		route2ArgList.push(parseInt(k));
	}
	
	outlet(0,"script","send","joints","size",routeArgList.length * 2);
	
	arglist = ["route", "newex", 100 , 100, 1000, 196617, "route"];
	create(arglist.concat(routeArgList));    
	outlet(0,"script", "connect", "OSC-route", 0,"route", 0);
	

	
	create(["funnel", "newex", 100 , 230, 900, 196617, "funnel", routeArgList.length * 2]);    

	for (var k in joints) {
		
		
	}
	outlet(0,"script", "connect", "funnel", 0, "ms_set", 0);	
	
	arglist = ["route2", "newex", 100 , 440, 900, 196617, "route"];
	create(arglist.concat(route2ArgList));   
	
	
	outlet(0,"script", "connect", "ms_iter", 0, "route2", 0);
	
	 for (var k in joints) {
	   outlet(0,"script", "connect", "route", parseInt(k), k+"speedlim", 0);
	   outlet(0,"script", "connect", k+"unpack", 0, "funnel", parseInt(k)*2);
	   outlet(0,"script", "connect", k+"unpack", 1, "funnel", parseInt(k)*2+1);
		 outlet(0,"script", "connect", "route2", parseInt(k) , k+"gate", 1);	
		 outlet(0,"script", "connect", "toggle", 0 ,  k+"gate", 0);	
		 outlet(0,"script", "connect", k+"prepend", 0, "prepend2", 0);
	}
					
	outlet(1,routeArgList.length);
}

function remake()
{
	var names = arrayfromargs(arguments);
	for (k in names) {
		makejoint(names[k]);
	}
	finish();
}

function reset() {
     i =0;
	for (var k in allObjects) {
		outlet(0,"script", "delete", allObjects[k]);
	}
	allObjects = new Array();
}


function create(v) {
	
	outlet(0,"script", "new", v);
	allObjects.push(v[0]);
}


