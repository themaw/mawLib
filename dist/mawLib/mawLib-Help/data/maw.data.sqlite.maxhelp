{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 44.0, 1032.0, 729.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 44.0, 1032.0, 729.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 9.873845,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p sqlite-data-types",
					"fontname" : "Verdana",
					"patching_rect" : [ 523.0, 231.0, 104.0, 18.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"id" : "obj-179",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "http://www.sqlite.org/datatype3.html",
									"fontname" : "Verdana",
									"patching_rect" : [ 93.0, 100.0, 198.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"id" : "obj-120"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "from",
									"fontname" : "Verdana",
									"patching_rect" : [ 50.0, 100.0, 34.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"id" : "obj-119"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Each value stored in an SQLite database (or manipulated by the database engine) has one of the following storage classes:\n\n    *NULL. The value is a NULL value.\n    *INTEGER. The value is a signed integer, stored in 1, 2, 3, 4, 6, or 8 bytes depending on the magnitude of the value.\n    *REAL. The value is a floating point value, stored as an 8-byte IEEE floating point number.\n    *TEXT. The value is a text string, stored using the database encoding (UTF-8, UTF-16BE or UTF-16LE).\n    *BLOB. The value is a blob of data, stored exactly as it was input.\n",
									"linecount" : 7,
									"fontname" : "Verdana",
									"patching_rect" : [ 50.0, 123.0, 782.0, 90.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"id" : "obj-118"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p insertion-example",
					"fontname" : "Verdana",
					"patching_rect" : [ 178.0, 472.0, 110.0, 18.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-178",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 1342.0, 533.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 1342.0, 533.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 50.0, 105.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-165"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"fontname" : "Verdana",
									"patching_rect" : [ 364.0, 339.0, 56.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-164"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"fontname" : "Verdana",
									"patching_rect" : [ 574.0, 339.0, 56.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-163"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"fontname" : "Verdana",
									"patching_rect" : [ 482.0, 339.0, 56.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-162"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "db_name",
									"fontname" : "Verdana",
									"patching_rect" : [ 92.0, 244.0, 57.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"id" : "obj-158"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontname" : "Verdana",
									"patching_rect" : [ 86.0, 299.0, 60.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"id" : "obj-159"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "movemuse",
									"fontname" : "Verdana",
									"patching_rect" : [ 86.0, 269.0, 95.0, 21.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "int", "", "" ],
									"id" : "obj-160"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "tosymbol",
									"fontname" : "Verdana",
									"patching_rect" : [ 1097.0, 342.0, 56.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-156"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"patching_rect" : [ 222.0, 107.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-151"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter 10000 99999",
									"fontname" : "Verdana",
									"patching_rect" : [ 195.0, 195.0, 118.0, 18.0 ],
									"numinlets" : 5,
									"numoutlets" : 4,
									"fontsize" : 9.873845,
									"outlettype" : [ "int", "", "", "int" ],
									"id" : "obj-150"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"patching_rect" : [ 548.0, 100.0, 20.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"id" : "obj-149"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b b 0",
									"fontname" : "Verdana",
									"patching_rect" : [ 548.0, 122.0, 59.5, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.873845,
									"outlettype" : [ "bang", "bang", "bang", "int" ],
									"id" : "obj-147"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf set %d.mov",
									"fontname" : "Verdana",
									"patching_rect" : [ 280.0, 217.0, 106.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-142"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"types" : [  ],
									"fontname" : "Verdana",
									"patching_rect" : [ 910.0, 270.0, 100.0, 18.0 ],
									"numinlets" : 1,
									"items" : [ "none", ",", "female", ",", "male", ",", "other" ],
									"numoutlets" : 3,
									"fontsize" : 9.873845,
									"outlettype" : [ "int", "", "" ],
									"id" : "obj-141"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"patching_rect" : [ 1021.0, 271.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-136"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "gender",
									"fontname" : "Verdana",
									"patching_rect" : [ 919.0, 244.0, 45.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"id" : "obj-137"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "age",
									"fontname" : "Verdana",
									"patching_rect" : [ 1033.0, 244.0, 28.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"id" : "obj-140"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontname" : "Verdana",
									"patching_rect" : [ 1097.0, 298.0, 60.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"id" : "obj-130"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "some other",
									"fontname" : "Verdana",
									"patching_rect" : [ 1097.0, 269.0, 167.0, 21.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "int", "", "" ],
									"id" : "obj-131"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Tags",
									"fontname" : "Verdana",
									"patching_rect" : [ 1104.0, 244.0, 62.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"id" : "obj-132"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontname" : "Verdana",
									"patching_rect" : [ 722.0, 298.0, 60.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"id" : "obj-129"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"patching_rect" : [ 196.0, 271.0, 50.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "int", "bang" ],
									"id" : "obj-128"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "filename",
									"fontname" : "Verdana",
									"patching_rect" : [ 286.0, 244.0, 53.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"id" : "obj-124"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontname" : "Verdana",
									"patching_rect" : [ 280.0, 299.0, 60.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"id" : "obj-125"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "10016.mov",
									"fontname" : "Verdana",
									"patching_rect" : [ 280.0, 269.0, 95.0, 21.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "int", "", "" ],
									"id" : "obj-126"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack insert movemuse id 10000 filename TEXT loc_name TEXT loc_coor TEXT expedition TEXT datetime TEXT gender TEXT age 0 tags BLOB",
									"fontname" : "Verdana",
									"patching_rect" : [ 50.0, 391.0, 899.0, 18.0 ],
									"numinlets" : 20,
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-123"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"patching_rect" : [ 722.0, 212.0, 70.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 9.873845,
									"outlettype" : [ "" ],
									"id" : "obj-122"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "\"05-04-2010 14:04:03 -0500\"",
									"fontname" : "Verdana",
									"patching_rect" : [ 722.0, 269.0, 167.0, 21.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "int", "", "" ],
									"id" : "obj-121"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "now",
									"fontname" : "Arial",
									"patching_rect" : [ 722.0, 160.0, 33.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 12.0,
									"outlettype" : [ "" ],
									"id" : "obj-115"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj maw.util.dateformat \"MM-dd-yyyy HH:mm:ss Z\"",
									"fontname" : "Arial",
									"patching_rect" : [ 722.0, 187.0, 284.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 12.0,
									"outlettype" : [ "list", "" ],
									"id" : "obj-112"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Time",
									"fontname" : "Verdana",
									"patching_rect" : [ 729.0, 244.0, 62.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"id" : "obj-39"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Expedition",
									"fontname" : "Verdana",
									"patching_rect" : [ 626.0, 244.0, 62.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontname" : "Verdana",
									"patching_rect" : [ 619.0, 299.0, 60.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"id" : "obj-34"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "dance",
									"fontname" : "Verdana",
									"patching_rect" : [ 619.0, 269.0, 95.0, 21.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "int", "", "" ],
									"id" : "obj-35"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "location coordinates",
									"fontname" : "Verdana",
									"patching_rect" : [ 507.0, 244.0, 110.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"id" : "obj-30"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontname" : "Verdana",
									"patching_rect" : [ 500.0, 299.0, 60.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "2 5",
									"fontname" : "Verdana",
									"patching_rect" : [ 500.0, 269.0, 95.0, 21.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "int", "", "" ],
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "location name",
									"fontname" : "Verdana",
									"patching_rect" : [ 396.0, 244.0, 80.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontname" : "Verdana",
									"patching_rect" : [ 389.0, 299.0, 60.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "" ],
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "minneapolis",
									"fontname" : "Verdana",
									"patching_rect" : [ 389.0, 269.0, 95.0, 21.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 9.873845,
									"outlettype" : [ "", "int", "", "" ],
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "id",
									"fontname" : "Verdana",
									"patching_rect" : [ 208.0, 244.0, 19.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 9.873845,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 469.0, 25.0, 25.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-177",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-122", 0 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-126", 0 ],
									"destination" : [ "obj-125", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-121", 0 ],
									"destination" : [ "obj-129", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-131", 0 ],
									"destination" : [ "obj-130", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-128", 0 ],
									"destination" : [ "obj-142", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-142", 0 ],
									"destination" : [ "obj-126", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-122", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-115", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 1 ],
									"destination" : [ "obj-126", 0 ],
									"hidden" : 0,
									"midpoints" : [ 571.0, 229.0, 386.0, 229.0, 386.0, 247.0, 350.0, 247.0, 350.0, 265.0, 289.5, 265.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 1 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 571.0, 229.0, 392.0, 229.0, 392.0, 262.0, 398.5, 262.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 1 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [ 571.0, 229.0, 503.0, 229.0, 503.0, 262.0, 509.5, 262.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 571.0, 229.0, 623.0, 229.0, 623.0, 265.0, 628.5, 265.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 1 ],
									"destination" : [ "obj-121", 0 ],
									"hidden" : 0,
									"midpoints" : [ 571.0, 229.0, 707.0, 229.0, 707.0, 256.0, 725.0, 256.0, 725.0, 262.0, 731.5, 262.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 1 ],
									"destination" : [ "obj-141", 0 ],
									"hidden" : 0,
									"midpoints" : [ 571.0, 229.0, 707.0, 229.0, 707.0, 241.0, 905.0, 241.0, 905.0, 262.0, 919.5, 262.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 1 ],
									"destination" : [ "obj-136", 0 ],
									"hidden" : 0,
									"midpoints" : [ 571.0, 145.0, 1019.0, 145.0, 1019.0, 268.0, 1030.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 1 ],
									"destination" : [ "obj-131", 0 ],
									"hidden" : 0,
									"midpoints" : [ 571.0, 145.0, 1091.0, 145.0, 1091.0, 265.0, 1106.5, 265.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 2 ],
									"destination" : [ "obj-115", 0 ],
									"hidden" : 0,
									"midpoints" : [ 584.5, 145.0, 731.5, 145.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 3 ],
									"destination" : [ "obj-136", 0 ],
									"hidden" : 0,
									"midpoints" : [ 598.0, 145.0, 1019.0, 145.0, 1019.0, 268.0, 1030.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 3 ],
									"destination" : [ "obj-141", 0 ],
									"hidden" : 0,
									"midpoints" : [ 598.0, 229.0, 707.0, 229.0, 707.0, 241.0, 905.0, 241.0, 905.0, 262.0, 919.5, 262.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-149", 0 ],
									"destination" : [ "obj-147", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 2 ],
									"destination" : [ "obj-150", 0 ],
									"hidden" : 0,
									"midpoints" : [ 584.5, 181.0, 204.5, 181.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-150", 0 ],
									"destination" : [ "obj-128", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-151", 0 ],
									"destination" : [ "obj-150", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-130", 0 ],
									"destination" : [ "obj-156", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-160", 0 ],
									"destination" : [ "obj-159", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 1 ],
									"destination" : [ "obj-160", 0 ],
									"hidden" : 0,
									"midpoints" : [ 571.0, 181.0, 89.0, 181.0, 89.0, 262.0, 95.5, 262.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-162", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-163", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-164", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-164", 0 ],
									"destination" : [ "obj-123", 7 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-163", 0 ],
									"destination" : [ "obj-123", 11 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-162", 0 ],
									"destination" : [ "obj-123", 9 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-159", 0 ],
									"destination" : [ "obj-123", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-123", 19 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-128", 0 ],
									"destination" : [ "obj-123", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-136", 0 ],
									"destination" : [ "obj-123", 17 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-141", 1 ],
									"destination" : [ "obj-123", 15 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-129", 0 ],
									"destination" : [ "obj-123", 13 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-125", 0 ],
									"destination" : [ "obj-123", 5 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-165", 0 ],
									"destination" : [ "obj-123", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-123", 0 ],
									"destination" : [ "obj-177", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "helper methods",
					"fontname" : "Verdana",
					"patching_rect" : [ 166.0, 189.0, 88.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"id" : "obj-176",
					"presentation_rect" : [ 941.0, 129.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getvalue movemuse expedition id 1234",
					"fontname" : "Verdana",
					"patching_rect" : [ 175.0, 439.0, 206.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-175",
					"presentation_rect" : [ 957.0, 405.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getvalue movemuse expedition age 23",
					"fontname" : "Verdana",
					"patching_rect" : [ 175.0, 410.0, 203.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-174",
					"presentation_rect" : [ 957.0, 376.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "compile",
					"fontname" : "Verdana",
					"patching_rect" : [ 155.0, 152.0, 49.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-173"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getvalue movemuse expedition loc_name here",
					"fontname" : "Verdana",
					"patching_rect" : [ 175.0, 382.0, 242.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-171",
					"presentation_rect" : [ 957.0, 348.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "insert (tableName, field1, value1, field2, value1, ...)",
					"fontname" : "Verdana",
					"patching_rect" : [ 182.0, 296.0, 291.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"id" : "obj-170",
					"presentation_rect" : [ 964.0, 258.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "createtable (tableName, field1, type1, field2, type2, ...)",
					"fontname" : "Verdana",
					"patching_rect" : [ 182.0, 219.0, 291.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"id" : "obj-169",
					"presentation_rect" : [ 964.0, 185.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "getvalue (tableName, fieldWanted, fieldHave, value)",
					"fontname" : "Verdana",
					"patching_rect" : [ 182.0, 361.0, 270.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"id" : "obj-168"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "insert movemuse id 1234 filename 1234.mov loc_name here loc_coor \"3.4 5.6\" expedition \"dance party\" datetime \"05-04-2010 13:44:12 -0500\" gender none age 23 tags \"this that other\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 175.0, 313.0, 584.0, 28.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-166",
					"presentation_rect" : [ 957.0, 235.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "createtable movemuse id INTEGER filename TEXT loc_name TEXT loc_coor TEXT expedition TEXT datetime TEXT gender TEXT age INTEGER tags BLOB",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 175.0, 246.0, 575.0, 28.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"presentation_rect" : [ 467.0, 283.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "exec \"SELECT value FROM namedValues WHERE name = 'bar'\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"patching_rect" : [ 722.0, 125.0, 120.0, 40.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "exec \"SELECT name FROM namedValues\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 710.0, 94.0, 115.0, 28.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "4. Get data from the table.",
					"fontname" : "Verdana",
					"patching_rect" : [ 703.0, 29.0, 154.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "exec \"SELECT * FROM movemuse\"",
					"fontname" : "Verdana",
					"patching_rect" : [ 698.0, 63.0, 183.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "exec \"INSERT INTO namedValues ('name', 'value') VALUES ('bar', 'madness')\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"patching_rect" : [ 507.0, 147.0, 172.0, 40.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "exec \"INSERT INTO namedValues ('name', 'value') VALUES ('nose', 673)\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"patching_rect" : [ 492.0, 105.0, 167.0, 40.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3. Insert some values into the table.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 474.0, 29.0, 154.0, 30.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "A simple example that does something similar to the coll object.",
					"fontname" : "Verdana",
					"patching_rect" : [ 16.0, 6.0, 415.0, 21.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.068032,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "exec \"CREATE TABLE namedValues(name\tVARCHAR(256), value VARCHAR(512))\"",
					"linecount" : 4,
					"fontname" : "Verdana",
					"patching_rect" : [ 248.0, 63.0, 144.0, 52.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2. Create a table in the database to hold values",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 244.0, 30.0, 154.0, 30.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "later we can close the database with this",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 76.0, 83.0, 150.0, 30.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1. opendb will create a new database for us in memory",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 8.0, 30.0, 150.0, 30.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.873845,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "closedb",
					"fontname" : "Verdana",
					"patching_rect" : [ 28.0, 84.0, 48.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "opendb ./moveMuse36.sqlite",
					"fontname" : "Verdana",
					"patching_rect" : [ 12.0, 63.0, 154.0, 16.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js maw.data.sqlite.js",
					"fontname" : "Verdana",
					"patching_rect" : [ 12.0, 160.0, 113.0, 18.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "exec \"INSERT INTO namedValues ('name', 'value') VALUES ('foo', 673)\"",
					"linecount" : 3,
					"fontname" : "Verdana",
					"patching_rect" : [ 477.0, 63.0, 167.0, 40.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"fontname" : "Verdana",
					"patching_rect" : [ 12.0, 503.0, 927.0, 160.0 ],
					"numinlets" : 2,
					"rows" : 2,
					"numoutlets" : 4,
					"fontsize" : 9.873845,
					"outlettype" : [ "list", "", "", "" ],
					"colhead" : 1,
					"id" : "obj-27",
					"cols" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-178", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 187.5, 492.0, 165.0, 492.0, 165.0, 465.0, 135.0, 465.0, 135.0, 147.0, 21.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-174", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.5, 426.0, 135.0, 426.0, 135.0, 147.0, 21.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 707.5, 197.0, 453.0, 197.0, 453.0, 138.0, 21.5, 138.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 516.5, 192.0, 466.0, 192.0, 466.0, 134.0, 21.5, 134.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 501.5, 151.0, 476.0, 151.0, 476.0, 130.0, 21.5, 130.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 486.5, 126.0, 21.5, 126.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 257.5, 122.0, 21.5, 122.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 37.5, 105.0, 21.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 719.5, 202.0, 439.0, 202.0, 439.0, 142.0, 21.5, 142.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 731.5, 207.0, 424.0, 207.0, 424.0, 146.0, 21.5, 146.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.5, 276.0, 135.0, 276.0, 135.0, 147.0, 21.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-166", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.5, 342.0, 135.0, 342.0, 135.0, 147.0, 21.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-171", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 184.5, 399.0, 135.0, 399.0, 135.0, 147.0, 21.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-173", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
