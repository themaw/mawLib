/* by Ali Momeni
 *
 * based on:
 * simpleDatabase.js
 * a simple wrapper around Max 5's JS support for SQLite databases.
 * by Tim Place
 * copyright © 2008, Cycling '74
 *
 */

var sqlite = new SQLite;
var result = new SQLResult;
var VERBOSE = 0;

function opendb(x)
{
    vpost("opening: "+x);
    sqlite.open(x,1); //open a file-based DB
}


function closedb()
{
    sqlite.close();
}

//-----------------helpers-----------




function setverbose(n)
{
    VERBOSE = n;
}

function vpost() 

{

    var v = arrayfromargs(arguments);
    if (VERBOSE==1)
     {post(v);
      post();}
}

function createtable() {
    var v = arrayfromargs(arguments);
    var tableName = v[0];
    var nameTypeList = "";
    for (var k =0;k<(v.length-1)/2;k++) {
        nameTypeList = nameTypeList + v[1+k*2] + " " + v[2+k*2];
        if (k<((v.length-1)/2-1)){ nameTypeList = nameTypeList + ", "; }
    }

     var execArgs = "CREATE TABLE " + tableName + "(" + nameTypeList + ")";
     vpost(execArgs);
     
     vpost();
     exec(execArgs);
}


function processtext(s) {
    post(s);
    post();
    s = s.replace(/,/g,"\\,");
    outlet(0,"processtext",s);
}

function insert() {

    var v = arrayfromargs(arguments);
    var tableName = v[0];
    var nameValue = new Array();
    var nameList = "(";
    var valueList = "(";
    var tempValue = "";
    for (var k =0;k<(v.length-1)/2;k++) {
        nameValue[k] = new Array();
        nameValue[k][0] = v[1+k*2];
        nameValue[k][1] = v[2+k*2];
        vpost(k);
        vpost(nameValue[k][0]);
        vpost(nameValue[k][1]);
    }
    for (k = 0; k<nameValue.length;k++) {
        nameList = nameList +"'"+ nameValue[k][0]+"'";
        //tempValue = nameValue[k][1];
        //if (typeof(nameValue[k][1]) == "string") {tempValue = tempValue.replace(/,/g,"\\,")};
        
        valueList = valueList +"'"+ nameValue[k][1] +"'";
        if (k<(nameValue.length-1)){
        nameList = nameList + ", ";
        valueList = valueList + ", ";
        }
    }
    nameList = nameList + ")";
    valueList = valueList + ")";
    var execArgs = "INSERT INTO " + tableName + " " + nameList + " VALUES " + valueList;
    vpost(execArgs);
    exec(execArgs);
}


function getvalue (tableName, fieldWanted, fieldHave, value) {

    var execArgs = "SELECT "+ fieldWanted + " FROM " + tableName + " WHERE " + fieldHave + " = " +value;
    exec(execArgs);
}


//-----------------
function exec(arg)
{

    // execute the SQL statement in arg, returning results in the 'result' object
    sqlite.exec(arg, result);

    // access information about the returned records by calling functions on the result object
    formatResultForCellblock();
}


function getversion()
{
    post("SQLite Version: " + sqlite.getversion() + "\n");
}


function formatResultForCellblock()
{
    var numfields = result.numfields();
    var numrecords = result.numrecords();
    var fieldnames = new Array(numfields);
    var values = new Array(numfields);

    outlet(0, "clear", "all");
    outlet(0, "cols", numfields);
    outlet(0, "rows", numrecords + 1);    // rows +1 so we can create a header row

    for(var i=0; i<numfields; i++)
        outlet(0, "set", i, 0, result.fieldname(i));

    for(var i=0; i<numrecords; i++){
        for(var j=0; j<numfields; j++)
            outlet(0, "set", j, i+1, result.value(j, i));
    }
}

