/*
 */
 
 var autowatch = 1;
 
 outlets = 2;


var callerBlacklist = new Array();
var wordBlacklist = new Array();

var sqlite = new SQLite;
var result = new SQLResult;

var debug = 1;

var selectedRow = -1;

function opendb(x)
{
    sqlite.open(x,1); //open a file-based DB
    initdb();
}

function debugPost(arg) {
    if(debug) post(arg);
}

function initdb() {
    
    debugPost("Initializing SMS Database."); 
    
    debugPost("Creating call table");
    exec("CREATE TABLE IF NOT EXISTS call(id INT(11), time BIGINT(20), originator VARCHAR(255))");
    debugPost("Creating sms table");
    exec("CREATE TABLE IF NOT EXISTS sms(id INT(11), status VARCHAR(255), time BIGINT(20),originator VARCHAR(255), encoding VARCHAR(255),text TEXT)");
	debugPost("Creating caller blacklist");
	exec("CREATE TABLE IF NOT EXISTS callerblacklist(id INT(11), caller VARCHAR(255))"); // TODO: autoincrement id?, unique words?
	debugPost("Creating word blacklist");
	exec("CREATE TABLE IF NOT EXISTS wordblacklist(id INT(11), word VARCHAR(255))"); // TODO: autoincrement id?, unique words?



    dumpSMS();

}


function closedb() 
{ 
    debugPost("Closing SMS Database."); 
    sqlite.close();
}

function ring() 
{
    var a = arrayfromargs(messagename,arguments); 
    debugPost("inserting " + a);
    var str = "INSERT INTO call('id', 'time', 'originator') VALUES ('" + a[1] + "','" + a[2] + "','" + a[3] + "')";
    debugPost(str + "\n");
    exec(str);
}

function addBlacklistedWord() 
{
    var a = arrayfromargs(messagename,arguments); 
    debugPost("inserting " + a);
    var str = "INSERT INTO wordblacklist('word') VALUES ('" + a[1] +"')";
    debugPost(str + "\n");
    exec(str);
}

function addBlacklistedCaller() 
{
    var a = arrayfromargs(messagename,arguments); 
    debugPost("inserting " + a);
    var str = "INSERT INTO caller('caller') VALUES ('" + a[1] +"')";
    debugPost(str + "\n");
    exec(str);
}





function message() 
{
    var a = arrayfromargs(messagename,arguments); 
    
    debugPost("inserting " + a);
    var str = "INSERT INTO sms('status', 'id', 'time', 'originator', 'encoding', 'text') VALUES ('" + a[1] + "','" + a[2] + "','" + a[3] + "','" +  a[4] + "','" + a[5] + "','" +  a[6] + "')";
    debugPost(str + "\n");    
    exec(str);
}




function exec(arg)
{
    // execute the SQL statement in arg, returning results in the 'result' object
    sqlite.exec(arg, result);

    // access information about the returned records by calling functions on the result object
    formatResultForCellblock();
	
	// always reset the selected row when a new result set is generated
	selectedRow = -1;
}

function dumpCalls() {
	exec("SELECT * FROM call");
}

function dumpSMS() {
	exec("SELECT * FROM sms");
}

function dumpWordBlacklist() {
	exec("SELECT * FROM wordblacklist");
}

function dumpCallerBlacklist() {
	exec("SELECT * FROM callerblacklist");
}


function getRandomSMS() {
	dumpSMS();
	
	if(result.numrecords() > 0) {
	
		var randIndex = Math.floor((result.numrecords())*Math.random());
		
		outlet(0,"randindex",randIndex);

		outlet(0,
			   result.value(0,randIndex),
			   result.value(1,randIndex),
			   result.value(2,randIndex),
			   result.value(3,randIndex),
			   result.value(4,randIndex),
			   result.value(5,randIndex));
	}
}


function getRandomCall() {
	
	dumpCalls();
	
	if(result.numrecords() > 0) {
	
	var randIndex = Math.floor((result.numrecords())*Math.random());
	
			outlet(0,"randindex",randIndex);

	
		outlet(0,
		   result.value(0,randIndex),
		   result.value(1,randIndex),
		   result.value(2,randIndex));
		   
	}

		
}


function deleteSelectedRecord() {
	if(selectedRow >= 0 && selectedRow < result.numrecords()) {
		// delete the record (not implemented)
	}

}

function selectedResult(i) {
	var selRow = i - 1; // get rid of header row
	
	if(selRow >= 0) {
		selectedRow = selRow;
	} else {
		error("Invalid row selected.\n");
	}
}


function formatResultForCellblock()
{
    var numfields = result.numfields();
    var numrecords = result.numrecords();
    var fieldnames = new Array(numfields);
    var values = new Array(numfields);

	

    outlet(1, "clear", "all");
    outlet(1, "cols", numfields);
    outlet(1, "rows", numrecords + 1);    // rows +1 so we can create a header row

    for(var i=0; i<numfields; i++) {
        outlet(1, "set", i, 0, result.fieldname(i));
     }

    for(var i=0; i<numrecords; i++){
        for(var j=0; j<numfields; j++)
            outlet(1, "set", j, i+1, result.value(j, i));
    }
}

function getversion()
{
    post("SQLite Version: " + sqlite.getversion() + "\n");
}


