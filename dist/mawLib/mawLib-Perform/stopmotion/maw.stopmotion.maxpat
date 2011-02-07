{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 44.0, 305.0, 587.0 ],
		"bgcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 44.0, 305.0, 587.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(camera's indicator light should turn on)",
					"linecount" : 4,
					"presentation_linecount" : 3,
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 201.0, 226.0, 97.0, 48.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 271.0, 254.0, 75.0, 62.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-106",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 2 2",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 567.0, 707.0, 54.0, 20.0 ],
					"id" : "obj-97",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p export",
					"fontsize" : 12.0,
					"numinlets" : 8,
					"patching_rect" : [ 456.0, 706.0, 100.0, 20.0 ],
					"id" : "obj-96",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 717.0, 339.0, 723.0, 498.0 ],
						"bglocked" : 0,
						"defrect" : [ 717.0, 339.0, 723.0, 498.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "jit.pwindow",
									"numinlets" : 1,
									"patching_rect" : [ 567.0, 248.0, 80.0, 60.0 ],
									"id" : "obj-18",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 526.0, 206.0, 56.0, 20.0 ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print from",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 534.0, 142.0, 61.0, 20.0 ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 445.0, 146.0, 20.0, 20.0 ],
									"id" : "obj-12",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 427.0, 209.0, 50.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "index $1",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 418.0, 380.0, 56.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 1",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 346.0, 340.0, 32.5, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "outputmatrix $1",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 316.0, 380.0, 93.0, 18.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 241.0, 53.0, 25.0, 25.0 ],
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r dims",
									"fontsize" : 10.0,
									"numinlets" : 0,
									"patching_rect" : [ 206.0, 248.0, 36.0, 18.0 ],
									"id" : "obj-58",
									"fontname" : "Gill Sans",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.matrixset 1 4 char 320 240",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 163.0, 329.0, 130.0, 18.0 ],
									"id" : "obj-27",
									"fontname" : "Gill Sans",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 570.0, 411.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 1",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 454.0, 340.0, 32.5, 20.0 ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 2 i 1",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 396.0, 266.0, 59.5, 20.0 ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numoutlets" : 4,
									"outlettype" : [ "bang", "int", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 434.0, 308.0, 52.0, 20.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 396.0, 240.0, 32.5, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 507.0, 45.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "peak",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 374.0, 173.0, 46.0, 20.0 ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 374.0, 137.0, 32.5, 20.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 290.0, 55.0, 25.0, 25.0 ],
									"id" : "obj-43",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 351.0, 55.0, 25.0, 25.0 ],
									"id" : "obj-44",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 100.0, 20.0, 20.0 ],
									"id" : "obj-152",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 74.0, 192.0, 32.5, 20.0 ],
									"id" : "obj-150",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf exportmovie %d %s %s",
									"fontsize" : 10.0,
									"numinlets" : 3,
									"patching_rect" : [ 65.0, 220.0, 133.0, 18.0 ],
									"id" : "obj-143",
									"fontname" : "Gill Sans",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-72",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 87.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-73",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 122.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-78",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 179.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-81",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 239.0, 424.0, 25.0, 25.0 ],
									"id" : "obj-86",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-143", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-143", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-150", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-152", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-150", 0 ],
									"destination" : [ "obj-143", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 3 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 552.0, 306.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 443.0, 402.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-150", 0 ],
									"hidden" : 0,
									"midpoints" : [ 80.0, 160.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-152", 0 ],
									"destination" : [ "obj-150", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 0 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p save",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 1149.0, 681.0, 46.0, 20.0 ],
					"id" : "obj-68",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 904.0, 481.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 904.0, 481.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "outmatrix $1",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 399.0, 388.0, 78.0, 18.0 ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 314.0, 238.0, 20.0, 20.0 ],
									"id" : "obj-9",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store 1",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 637.0, 249.0, 47.0, 18.0 ],
									"id" : "obj-42",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b s b",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 418.0, 173.0, 46.0, 20.0 ],
									"id" : "obj-112",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 310.0, 111.0, 20.0, 20.0 ],
									"id" : "obj-108",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog fold",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 292.0, 177.0, 92.0, 20.0 ],
									"id" : "obj-109",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf write %s/%s.json",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 435.0, 287.0, 137.0, 20.0 ],
									"id" : "obj-72",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf write %s/%s.jxf",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 266.0, 284.0, 127.0, 20.0 ],
									"id" : "obj-69",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route symbol",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 410.0, 203.0, 79.0, 20.0 ],
									"id" : "obj-61",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 420.0, 100.0, 20.0, 20.0 ],
									"id" : "obj-60",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dialog Enter Project Name",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 422.0, 139.0, 151.0, 20.0 ],
									"id" : "obj-56",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 420.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-54",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 266.0, 367.0, 25.0, 25.0 ],
									"id" : "obj-59",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 531.0, 367.0, 25.0, 25.0 ],
									"id" : "obj-62",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-108", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 1 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 2 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-109", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 1 ],
									"destination" : [ "obj-69", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 1 ],
									"destination" : [ "obj-72", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-108", 0 ],
									"destination" : [ "obj-109", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-69", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-72", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-109", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 1158.0, 758.0, 24.0, 20.0 ],
					"id" : "obj-18",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route read",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 1190.0, 753.0, 65.0, 20.0 ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "SNAP!",
					"fontsize" : 12.0,
					"presentation_rect" : [ 227.0, 529.0, 44.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 218.0, 490.0, 75.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-153",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "codec quality",
					"fontsize" : 12.0,
					"presentation_rect" : [ 148.0, 529.0, 87.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 605.0, 87.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-149",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "codec type",
					"fontsize" : 12.0,
					"presentation_rect" : [ 58.0, 529.0, 74.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 378.0, 605.0, 74.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-148",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 6",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 355.0, 581.0, 56.0, 18.0 ],
					"id" : "obj-144",
					"fontname" : "Gill Sans",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 4",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 462.0, 568.0, 56.0, 18.0 ],
					"id" : "obj-145",
					"fontname" : "Gill Sans",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 12.0,
					"presentation_rect" : [ 151.0, 549.0, 67.0, 20.0 ],
					"items" : [ "lossless", ",", "max", ",", "min", ",", "low", ",", "normal", ",", "high" ],
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 463.0, 619.0, 67.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-146",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontsize" : 12.0,
					"presentation_rect" : [ 48.0, 549.0, 100.0, 20.0 ],
					"items" : [ "raw", ",", "cinepak", ",", "graphics", ",", "animation", ",", "video", ",", "componentvideo", ",", "jpeg", ",", "mjpega", ",", "mjpegb", ",", "sgi", ",", "planarrgb", ",", "macpaint", ",", "gif", ",", "photocd", ",", "qdgx", ",", "avrjpeg", ",", "opendmljpeg", ",", "bmp", ",", "winraw", ",", "vector", ",", "qd", ",", "h261", ",", "h263", ",", "dvntsc", ",", "dvpal", ",", "dvprontsc", ",", "dvpropal", ",", "flc", ",", "targa", ",", "png", ",", "tiff", ",", "componentvideosigned", ",", "componentvideounsigned", ",", "cmyk", ",", "microsoft", ",", "sorenson", ",", "indeo4", ",", "argb64", ",", "rgb48", ",", "alphagrey32", ",", "grey16", ",", "mpegyuv420", ",", "yuv420", ",", "sorensonyuv9" ],
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 355.0, 619.0, 100.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-147",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : ".export QuickTime movie",
					"linecount" : 2,
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 117.401978, 504.350464, 172.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 51.401978, 407.350464, 132.0, 34.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-142",
					"fontname" : "Gill Sans Bold",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b 1",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 826.0, 649.0, 32.5, 18.0 ],
					"id" : "obj-139",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route read",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 826.0, 627.0, 56.0, 18.0 ],
					"id" : "obj-138",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "settings",
					"fontsize" : 9.0,
					"presentation_rect" : [ 135.0, 244.0, 43.0, 15.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 260.0, 220.0, 43.0, 15.0 ],
					"presentation" : 1,
					"id" : "obj-136",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"hint" : "click, then locate the .json file for your project",
					"text" : "load",
					"fontsize" : 12.0,
					"presentation_rect" : [ 69.0, 476.0, 40.0, 18.0 ],
					"bgcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 1222.0, 621.0, 39.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-133",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p load",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 1219.0, 662.0, 43.0, 20.0 ],
					"id" : "obj-132",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend read",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 140.0, 325.0, 82.0, 20.0 ],
									"id" : "obj-125",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp .json @substitute .jxf",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 137.0, 289.0, 161.0, 20.0 ],
									"id" : "obj-124",
									"fontname" : "Arial",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend read",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 426.0, 294.0, 82.0, 20.0 ],
									"id" : "obj-122",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 115.0, 100.0, 20.0, 20.0 ],
									"id" : "obj-104",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog JSON",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 115.0, 129.0, 105.0, 20.0 ],
									"id" : "obj-96",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 115.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-129",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 426.0, 409.0, 25.0, 25.0 ],
									"id" : "obj-130",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 140.0, 405.0, 25.0, 25.0 ],
									"id" : "obj-131",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-104", 0 ],
									"destination" : [ "obj-96", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-124", 0 ],
									"destination" : [ "obj-125", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-122", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-129", 0 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-122", 0 ],
									"destination" : [ "obj-130", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-125", 0 ],
									"destination" : [ "obj-131", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "maw.stopmotion",
					"text" : "pattrstorage maw.stopmotion",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 1190.0, 731.5, 127.0, 17.0 ],
					"id" : "obj-52",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 533, 258, 1215, 970 ],
						"storage_rect" : [ 25, 69, 897, 817 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "u331000644",
					"text" : "autopattr",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 774.0, 48.0, 59.5, 20.0 ],
					"id" : "obj-30",
					"fontname" : "Arial",
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"restore" : 					{
						"export_fps" : [ 15 ],
						"frames_num" : [ 250 ],
						"video_dim" : [ 320, 240 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 629.0, 342.0, 20.0, 20.0 ],
					"id" : "obj-28",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 575.0, 342.0, 20.0, 20.0 ],
					"id" : "obj-22",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 1",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 653.0, 408.0, 32.5, 18.0 ],
					"id" : "obj-102",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "maximum $1, minimum 0",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 645.0, 457.0, 122.0, 16.0 ],
					"id" : "obj-101",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p apple remote",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patching_rect" : [ 1039.0, 382.0, 91.0, 20.0 ],
					"id" : "obj-53",
					"fontname" : "Arial",
					"numoutlets" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Can't open multiple aka.appleremote objects.",
									"fontsize" : 9.0,
									"frgb" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 81.0, 196.0, 212.0, 17.0 ],
									"textcolor" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Apple Remote buttons' behavior is a little different from a standard keyboard.",
									"linecount" : 2,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 319.0, 195.0, 27.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Just a image",
									"fontsize" : 9.0,
									"frgb" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 393.0, 331.0, 69.0, 17.0 ],
									"textcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Argument: (none);\rInlet: int, message;\rOutlet: list;\r",
									"linecount" : 3,
									"fontsize" : 9.0,
									"frgb" : [ 0.6, 0.4, 0.6, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 341.0, 108.0, 104.0, 38.0 ],
									"textcolor" : [ 0.6, 0.4, 0.6, 1.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "aka.appleremote",
									"fontsize" : 18.0,
									"frgb" : [ 0.6, 0.4, 0.6, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 58.0, 107.0, 237.0, 27.0 ],
									"textcolor" : [ 0.6, 0.4, 0.6, 1.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Apple Remote Handler (deactivating Front Row)",
									"fontsize" : 9.0,
									"frgb" : [ 0.6, 0.4, 0.6, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 60.0, 132.0, 223.0, 17.0 ],
									"textcolor" : [ 0.6, 0.4, 0.6, 1.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 1.0, 0.784314, 0.784314, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 100.0, 400.0, 50.0 ],
									"id" : "obj-7",
									"rounded" : 0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Thanks to Mr. Martin Kahr for his 'Apple Remote Test'.",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 82.0, 448.0, 299.0, 17.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Sleep",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 312.0, 430.0, 33.0, 17.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hold",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 279.0, 430.0, 33.0, 17.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hold",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 345.0, 430.0, 33.0, 17.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 345.0, 401.0, 15.0, 15.0 ],
									"id" : "obj-12",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 312.0, 401.0, 15.0, 15.0 ],
									"id" : "obj-13",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 279.0, 401.0, 15.0, 15.0 ],
									"id" : "obj-14",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 246.0, 401.0, 15.0, 15.0 ],
									"id" : "obj-15",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 213.0, 401.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 180.0, 401.0, 15.0, 15.0 ],
									"id" : "obj-17",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 147.0, 401.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 114.0, 401.0, 15.0, 15.0 ],
									"id" : "obj-19",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 81.0, 401.0, 15.0, 15.0 ],
									"id" : "obj-20",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 345.0, 379.0, 15.0, 15.0 ],
									"id" : "obj-21",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ">||",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 312.0, 417.0, 33.0, 17.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 312.0, 379.0, 15.0, 15.0 ],
									"id" : "obj-23",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "|<<",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 279.0, 417.0, 33.0, 17.0 ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 279.0, 379.0, 15.0, 15.0 ],
									"id" : "obj-25",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ">>|",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 345.0, 417.0, 33.0, 17.0 ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 246.0, 379.0, 15.0, 15.0 ],
									"id" : "obj-27",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "|<<",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 180.0, 417.0, 33.0, 17.0 ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 213.0, 379.0, 15.0, 15.0 ],
									"id" : "obj-29",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ">>|",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 246.0, 417.0, 33.0, 17.0 ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 180.0, 379.0, 15.0, 15.0 ],
									"id" : "obj-31",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ">||",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 213.0, 417.0, 33.0, 17.0 ],
									"id" : "obj-32",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 147.0, 379.0, 15.0, 15.0 ],
									"id" : "obj-33",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Menu",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 141.0, 417.0, 33.0, 17.0 ],
									"id" : "obj-34",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 114.0, 379.0, 15.0, 15.0 ],
									"id" : "obj-35",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 116.0, 417.0, 33.0, 17.0 ],
									"id" : "obj-36",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 81.0, 379.0, 15.0, 15.0 ],
									"id" : "obj-37",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 0 1 2 5 3 4 7 8 6",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 81.0, 353.0, 314.0, 17.0 ],
									"id" : "obj-38",
									"fontname" : "Arial",
									"numoutlets" : 10,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "'exclusive 1'(default) ignores Front Row.",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 188.0, 279.0, 201.0, 17.0 ],
									"id" : "obj-39",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "'exclusive' sets the device open mode.",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 188.0, 266.0, 201.0, 17.0 ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0 or 'close' closes Apple Remote device.",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 81.0, 183.0, 212.0, 17.0 ],
									"id" : "obj-41",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 1",
									"fontsize" : 9.0,
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 139.0, 249.0, 77.0, 17.0 ],
									"id" : "obj-42",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "close",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 162.0, 213.0, 33.0, 15.0 ],
									"id" : "obj-43",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 122.0, 213.0, 30.0, 15.0 ],
									"id" : "obj-44",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print appleremote",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 96.0, 328.0, 90.0, 17.0 ],
									"id" : "obj-45",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "exclusive $1",
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 120.0, 271.0, 68.0, 15.0 ],
									"id" : "obj-46",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 120.0, 249.0, 15.0, 15.0 ],
									"id" : "obj-47",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 81.0, 213.0, 15.0, 15.0 ],
									"id" : "obj-48",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "aka.appleremote",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 81.0, 300.0, 83.0, 17.0 ],
									"id" : "obj-49",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "list" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1 or 'open' opens Apple Remote device.",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 81.0, 170.0, 212.0, 17.0 ],
									"id" : "obj-50",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "+",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 83.0, 417.0, 33.0, 17.0 ],
									"id" : "obj-51",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "fpic",
									"embed" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 396.0, 191.0, 54.0, 140.0 ],
									"id" : "obj-52",
									"numoutlets" : 0,
									"data" : [ 6536, "", "IBkSG0fBZn....PCIgDQRA...XC....iHX....vMTnky....DLmPIQEBHf.B7g.YHB..Y7SRDEDU3wY0ckriirbc8biHRlYRxhrXWCcK0u90.VBdg2489Wv.FZus+B72ng2a.swqkfLrvS8PMwhC4TDWuHFxHSlbppteOoK.axJYFC23NehHYS+G+t+Y9O+e9eg+uGVh+HDXM..Av.f.A..lMtOYIF6RD09k1um5zFP9VYuNCFL.Xta6IW+Sr89L.fIBBhggMvv.RHfgHXH.AX.lAy.eHIA+c29N7O869W.8qgf+GIfGIB+2rAkP3lDD.eL1IlLfH+DkAfr22yc5C6zlBLFHGSQQ2OwVNiHPba6IB.rvsVwv.FrPhO.FiMFrMMGpwBIjrFfMgEV+pSXLH5n7E6DU91PP2cIIt8D.4uPGwJfvcYl8LDAh6tFGV7n3N1.ICjR.FSCTrPCgAffBDqACBFl.2NzCyTLMvEiYzC+kbeNpS67bW7bfa0jB2KCvB6kHFZ3jhxDn1zXvZ.rFF2ZroU83u1n8MuX.nAJfkWJaHn92+29Ww+vu9ifyRvRcMpYFBgBRpqw+Nquz94dlYPD4bNvcu8ftJEtWl8tRr1djerYDtN71jNUdNpaLLCilwXAPwS2ie+u++ATYQAOJME..00MPq0HKKcuS5eIIla8hxFC7rmQqgVHfLQAEXb+e9m.sYaMmjIQ41R7ziOg55Fb4kWhrrzvpMvP1DckXctWiIXa6utI3dmcWy.qWQxYKYbts8uZ6Weez8yFq7iALFMLrAiGOESuXNjRFJV2.AjP377wrAnWbK.D6JwcAcGlyqxvLCH.fgCeiu8swuZcBX894XDpMn.SNUZvV+TLG01nXkDbKN1dTvLz0UP4YBBV8086qiG3OauaBjko7Rp807P3nd9+60BBLHxwFAavtwxhcxQtwlYFrgghrlqQFiVi2iShAtVbPX+Dfaclvw2iY.tdH5zbQ2JGs8qJVDEamrK0mYMCbO6xX61u96oMTt+5cuOpiyhcFocr6bdLIqJiH35zspd5RrWOwb7BQ2I74zGwNU7jpiw3OiAl63Es2D6TYtXoVeRAffyiyiu5JUYWtlBg.Lyg281WfHqKZR.x4NmA.aBwE5LIs1jm1LZn6UE5Shv4oARgNzyHDQvXLnttFUUUnooAMMM1A06J2wnBRBoLAJkDIiFAgPfl55y1LfhxfI9c0qIuPOCIDDpqqw50qPQQAXlgRofRoPZZpUJIrdQ05FnMFTW2fpxRrZUEjRIxRSw37baZeZ8KxNOtMV28cR++zIgP.sViGe7Yrc6VjjjfYylgzzLHkR6.w1XNUM0PHjcjxdI5lMav5Uqv1MaP93wHKKKrv40BNGlyXXnLnwpJdjxP7MxKpkRIVs5Yrb4yHMKEWe80H0miIaW0ceDZsF+zO8SXxjIX974gIJQDTJEt7x4X1Eyb82RrZ0JLe9bjjjDjdGxdymzbHPhffhhRS4THuSg6u+dTVVhEKVfoSm.CyPaXvFSfo.rq5e9yeFe9yeFiGOFRoD444crIHR.h.lLcJFOYBd3gGvc2eOlMaFxyyQSSyQmWr2Vyohn.HHvAykJZkwt5e+82CgPf28t2AkRhlFMLN0Kiiw7eF.X5zoXxjIX1rYHIIAMMMPHZybwXzcFmqt5Jjllhu90uBsViISlzYwp6bpsLmXgpBPXyW8HBMeJQ2c2cPJk3latA..M0VmALyPaLnoooCiwLijjDbyM2.kR0IfJQTfA8SPiwfppJLYxDHkR74O+YXLFbwEW.cjjaXmKsLgJdkaHxXLAW4e9KeABoDWey0VIjwDjPwLU7Kiwfsa2BkRAi6dRRRBNRLFNxFhCS3555vBxm9zmfTHv3wi6nV1w1y0NgKuWkMn4NLbX.rtyE3okKAyLt95q..AstIHUZzZT2zfl5ZTWWiMa1Db6mjj3bBXqhvvLjRATpDjllhjjjPxwDYs27iuwXPZZJdyadCt6t6rgP7NT5qQAGxW1n9P4CdtiP0MokRIJKKw50qws2bMHPnowpuq05fKa+87zSOAlAt7xY3xEWh77bLJYDjRALFqK9ppJTTTfMa1.gfvzoSgTJcI81lyJyLpqqQVVFFOdLV97y3pqtpMal9LGgfqPEQjG4scgByol93iOhoSmfr7LTWqAyspc000X61s3okKwyKWhYylge3GdOlOeVjKXqMkTPPHSPZ1HbwrKPUUEVtbIdd0RLd7DjNJM3vIdxq0ZLc5Tb2c2gMa1X8p5reGj4XGisORHDX0pU..X5zKfV250yauTTTfGd3A77xmvG9vGvO9gO.RPvvFnMLLlFmcTqWK6PRPIE3p27Frd8J7v8OB5Bf7rrPw2FiIH8DBAxxxvlMaBAvs8EE8t+Ef.fgSstSIKdUgMa1fISFCoTfllFXbNL7duVtbId94U3Ce3C3ie7C.DrRyFs0Klu7diExAvF6psgQScCpqpPdVNt7x4X4SOhxxRHcwJ8LjeNkmmGbFE63fhbR3ulXeAvHxl+mwXv3wSB5+LycTAe7wGws2dM93G+QvLBswqRYLbGW79W9PALynppBYYYX5zoXoyIknijvRRoDRoBa2t0gGx9qGSDx5nWGQDEbSa8bYuSiaRUUUgGd7Qjjjfe7G+Q.fPl79IsE0ISKSXLsuXS3d8KhSlLADIvpUqgT1h8ers1nQIgEOJJTUeomvmfEEcCdmFEEEHIQYutochYzZTVTfpxR7t29VjkNBMM0tP.tIMb6Th6kgYX.flautgsfxoMFXXF0MMHKOEq2rBM5ZHjVX4bkyEpxmc12wRy99JDdDa6qF5smxxxrpUD5DPtrrDiRRv0W+F.XUAswDsrhg0VrDIAf6ECBL0tu.suXnMZnMZHURnMMntoFJk.de.DQv3T+7R3XnL1gwBhxdLmMqZ.kT0JpcFrFW7kwiGiQiRcCRaIC1EGAjBAPTNiDQPF4Lves.npQ1lUUUPJs0zAWeKDBHjRXXKp0GhTdev8cgXScw51FZskoH.RJflM.Dg77bHkRTUoCYOvQpKq1rAiFMBIIIvXLnrrLjRDQDRSS63DoMwYBkkkA6OkPhJpAjPfhxRXfwtMWGHTkR2Kw9PxnLCoRgMa1hGe5IToafgYrZ0JjnTXbZFxRG4hOocpgs8j1Xve4u7W.yLt5pqv74yCYmPDAoTFx8yK0LFsagwUHpVi+ve3OhjjDrd8FTq0nnn.SmLwZexsvluCi4fN24AiCpNLyfDDZLFTTTfskEfDBr94UXxzIPLdRDbrCCgViVipxRTVU1q9q1pnaueqKEstAZcCDJEzFFq2rERQMVuYMZz0vnMvjmaCi3GuAUE6QbjTqotFWd4kXxG+QPBIZZZBI4VVT31S31x16rxwLtZwBjkkiISFayeSoPdddvdINXuO6dabxFLhYLRove+u82BhjnnXKppqv82eOpJq1MYhgXrgzTUJIzZCFMJ0hsQSCHoDBBPfwPW2f5pZn0FHERan.zFvTPBb0atJ3gEBBoYYH0skU8CRaLbHXdccClOaDRjRjMJEMMFLRMBvXvzwSv8E1rSZIZGtP3KSvx4dsKCTRIHBnotxtMMtXMZs88z7TzXZPcSUGn0hkZ9PCjSk0h9LE1.C6KOS1lbswvHOeLzFarMa8dZT4JKxXLPojgfvD0tWYd9PDpgALX3yHv.gfff.ppJgTz5tmb0mknrZwOudc6V9DodrC5tQA30MM12cLicAvflFM1ts.JUBxymfFsw4M1XiK57rB.jNZjkYb4eZUiCVAPrOzeDBATJedYVQoWfKDBHEJjkNFqddMzZNTgbapM9Aoqq7Nt2MculwvnnnDKt7MHIQAiVacloMP2zV6mJIwl3.GuKNsiGPbthAwXa.yISlfppJTWW0wPkHBjPh77IffD2806h.ToaRoccNz98lcXVfmedERGkgqt5ZTU0VIguf1Zmp337wHIIIB8Fek.snYKDr6OHBDDvBcs.LCjmagKa85s.nMgU6KKSNa1LTUUi6e3IPRIfKFnomjxVCm8kV2.cScDtHLd94UnppA+vO7AHkpNdL8USTVVBgPfYyt.FlsopABBgpsdLxZhHfeuBYfVuKt8FFBLd7Drd8ZvLbkua0kEBBBACkRh4yuDaKJv8O7nsHQgcgQ2zBni0VRCcSsaOiakBO9viX65B7we7iXxjIn14vJtDIObB444X73wg4qESRQjVh0YnfHwANJILt3hK.QDVudcP0pUbaQZJQovkyuD00M3t6tGqWswhCn.tposIE2narY3aLnoVisEaw82eO..9M+1eCdyadCppp5fxUcD.QLyXwhEAfd1I4WpUUW49qAYMqaUEVr3R7kudGF41Uj9XCpMFHDR7lEWghhRrZ0Jrd8ZjLREp.lYCL5FzznQUUEppJAQBb0UWgat4sHQoPkKCEOt9wf9TTT3Pcd5NEYFyYVW8DTBSCXxGzrqyChrvrkOdLxysHPsXwhcVshaSddFxxRQQwVrsXKpKarRJmjl.gzQ43x4uAWbwLjkkAs1fhhxfpm26WUUE1tcKVudMRGMB2b0UAH7h0pXm6d6AEv.HDPQll1StvN6CriYYfqu5J7S+zOgmd7QLe97.5uwXRDxwjHLYxTLYxEAmNgUSg.IIIf.AsQihxpP9o889sYyFrZ0JvLi28t2gzrLaVLrGbH1YVDe1Qr1lBiP57E1sJz3OaWsE3su8cnooAKWtLjRSK1FlNLn2KHyrCdAEjRIDBApqqQQYg0dxIc7NH7peO+rcmWLFCd+6eOlMaV.5gXva1c9ZeWoIY2SbQDXkwpYdvSe6aeK9zm9D95c2g4ymCf1Z2jxt6kUefM88kulr33XwL2lMabdhY792+drXwhvtcFu3sOx57f7Em2khKsHFLkjjD7129V7ku7Yb+ceESlNEoiFACaPcUCDQfv32XPOPmDQXwhE3hKtnCZVd6IuMkeSDe+6ee3d8NKhlgv5Z2BKNCNj6HyR6oFH9btsSNdbWwsVqgRovu5W8N7v82iGe7QTllhzrbPPDxpHdwYznQQw.Yrc61fCh3fuEEEPq03xKuD2d6sHIIIfswv9saU+BGnIlA.AEaTCjz+tXnGmRjVqgPP3MWcExxywiO9HV9zS1x3SRfTIgfDfYxkPsHvXdb9iiQ4Src73wXwhEX1rYc.rw6d+Pj8HGI.SRnHsSU7H6Mle0uEnFJnFkllhau8FTTTfUqViUaVCcoFrgbRv3ZtLt5tzA6rjQiv74ywEWbAt3hKrputp.7wLAPmyxyvxNBFHASRPn.JAXXHyNNPhkZ1O2lwAGUlfe2HyyGi77w3x5Kw1xBTVTYkHUUnQqAarEj52VJkJIT34njjvhU3HQ3qg6DXJKi0BlWC41Th3hM2WYLdwZWbJZI+tXRDgoimfKlLsSBvd0IR31IKRF9932o1UuSVMDvcdHI6YXrQnbGGhvb7keNphc+1e+hkRYmZtrRb+Awb2XQ6ew8.DQfDDDLfvvPYyyos3vNa+4qj5WCV2XiuPFXvABczUUfbUPysU7FSc26IANjltnGBu9105UEHtrn9Rqvb7EIsrxF+hEwdFaumsvA5g8Ujy.sa3Mka+8wqgDLf8rEaOpsJPCOPwq9mxp39V8aUA+1yLcFK6ouzl8OE.Lc3I997.dzAoWlKs43c777dYj+.QakbUB.k+T43mJ6amPNF4iCAfNky3SaxzVaDTJUXO35mrc+wdeyA+348Q3y1k.Ao1cdE8qjCsR2dMenRf9R33IGf0QRQQA1tcKpqqcWymHss7lzzbjkkAkREhyMTedHJDdv8uLa2GBoAty4w2HxiG+c2cW37YbwEWzdD+fMFmulq0qWO3AAq+B0on4PDAAQvfN1XuLC6gx7+qe8qPHD3latoSfY+85OoNSmdAVudCd3gGfwXvjIS14Tt0mAGhYBu7YnPNFi7ZX7vcVqtdLlOspkwpre4KeAJkBWe80gx7aWsodNiLX5zoPoTgEizzzS57INDyy18RFDDPPlVHtOVpT6af7aIj+XLrXwhcrYZSUxlwg2wQccMRSSw74ywyO+b3.ocJ1a6T2H4drHX6iAhv32Cepqn8.r3NCTSSC1tcKlOe9NvJLT1HdUeu5qG6xsa214bLdNj+wyxaUIbmalSplrcwwCgIjTJQVVFX1hMhPJfTZc4KkBHn1cnAnMELua6ISlD124WBy4g1ymHueK4GhMBu6g5xC9e+DZKKKsPpQDZZXrd8JLZzHT3N9Pa2tEooY.N0ViK6eOCjOdLFMZDVudc.5giyH8sC87gs5Ak841p8IIpKi4eQH9YYIFoHuWOeP2llF7m9S+uHKOG000X5jo3wmdD2d6s3Se5SVuhiFAAQAbB+f6zjJkRn05NmJmSkBIY6psydHwF3Avg43Ws45Mj5XLC62Dumd5I.hPUcUnp4QiFgUqVgB2YgZ6lMgBJQTk.uzZB8BBqpHoZg6ENtN.i0gygL1YiWxIDRb6s1yKr+zfZc0Cb6s2Fv0..X4xk3latI.AWSSClLYxKlohmuJISv3q0h7bskAass1SW4VcSRRPUUELFCFMJAu6cuM.YFaLndgMvqPHv74WDzBt5pqBYk3OHy9f59Et8snZ+daE4fZg512NgvcJa51X3vAQbzJcs48kFfRylSn8HMXzM.vfDkDJo6XHyL7OkgRg.rw94sa21Y2bNtmwHe.LGbya2GcFBRHPj6+82M6g47PvoTJrZ0pNG271JmaWD51VqSmxxRTVV51Pu8mQ+tT6tqFXVmO.QaMKG2fcnrT71VylMCa2tEqVsJ3UKFbFe3h3vF9Ss582eOFOdbHkpSgnPTJWrK+72YyKZ3V84tUMiNW+Pk9q0ZjllhEKV3NJsOG7DFc2fYeFGx.t9e8qeEIIIsXz2ANgCxZn8v601FBRHDj8rTEmDbK0t55azwXtwiGCgPXwyurDSlLIpnRBdHuMFC1rYMVtbYXAIN+xCoJtqJtGWTMZW7XnHX9lguh+fad80WikKWhmd5ov4EQHrO9GdL6EBg6AIOKnpFKk5673PwOsLrOeQmsa7OOEeKHetdWd4kg87xtgc1yxQRRBxyyCRROJv9IucRtevkNtSEqwmBbmmX3SH69CSw0bIkRnTIt+t86ig9dei0PIaeHbP7GKW.MHPPwjD.C+TG7ZoXoQ+IaeIvKsdvXhf.1beADwPz7sj5OQ+drv0mXzZaJXbZ6lwYOHCnJ8ckHDBNyvAli8zs8yvf+Mj1oxb1UmhCeFwonH52UR6m6eVdOM5X26KAs4tyCa9hr6GoIGPvub8+eNrcNUxKCMrABJ7b6b9qXC84eIo3YgfI6NK9s103vnS88jnfyC.BBsKGq3DIO6t7Hv0cJs80v31jeC+E.HnrGLmuOAm8C5oTrZ+1cLJN.uu4r6uEDY2b8eIoiU9+ozdq1WTpFj6Q.YXbE6zb75LBGptnyaA83IA6164.foQ8+wJM3kPb3QDYn98717gtpewPo2B6Aw1c27kAT92Y5E4.yAUuW3rWaretiSMTl+mba8sKBTWU6uNewXy0E3kuMT+I6vES9RVD8+1YxtpnYls+VC.tkY7f5ybWr5GZm9O+7+1uj3Tb4evPFr8gw2VvI6OjXu9h79kl7wJsAqImyi8vW+s.CEnnxtX.H.GCX5t4248x7pLtCsMVk+0SclGLf+WFBAS1GZGWz.m37aijJnVDFbdfWmGMncXT9T9eOiH1k4wgD.uzTdha2v8w4Gq5fiqy1xuOzhg+U2a2rP9kF1fgLI1ycBvLDfcaKZrw2I3F+0pt5ez8OW0xcVf6LObXVBiy4QuyqX+7xheO9dd81huNatC0q66gGa2a9E.fy2CZnwO1Qh2FSsuEpgjH+RyT8o9HUwLGD9h923o5i3bv3e+3eP8dcX5nKztbdsIAOXrqiehAd8zoCA9PUZr6tk59d..x8zHcr8f9bJFbezKIakg7R2+jA01.3x6vBYup0s6qiNm52rSryW06fjC6d3geiIQHkp365k5R+j1Xt8TK1qlHBrC0dAycetVhs29djsAGR39Tu+86vH7YN7O..PJzPPgGwfyZ79qNhA.wBPPCiz.AXMr+JNw6v4+sDwPCv.RV.iYDTDOvS.9qfNNtEbu2e8T7OxL1iPqvePL2SC9tfT0vLVrWxWjCKVXOzXVTONMbEesav24jm4gVLO9Bc6hywOipmAsOl5Tk7669N1mGJrTfwnd6A8OWI7FOLCd9MFXdbJ3O19SjVTBjmSkymRf7CCSvok.b+1Oz4DIddH51f1e8W+VPe6yZ4zHh1iM12h9uuCiSET1yoph8o5xLsqWwuGoQMbe1UE7Xi6g99ghC6N.KCWs7KcSBFZBsa+ed2+PTr8ce+Bup8G66smySIzv97jexwwN03OeqnyI12Aii0mFBmhChPzQnVUr9+8wKJ8T66XZPmGGJo3Wuz47haczdaOphhgtoWqmw+Z.ltdRr96Px4SeaPH90SpVUOf3LOF5DhtuTiNGFIrqOg1LbaeIgZh2xpfyi39vi6wPvdc5c9tTW.Y6xXujsUJ1zou2wc7JdLmGCIo5yzuj8TyeHTN0Z2N77iNcFqelH6afOmLG1GcNEjFKkhWnUsSV6qc+kfc2N7PmP6SIY1gSg6ve+95K+OnqZci6+EDb+nI6ePOkRAxxRgRICO1TwSxg1urgjNGKa98w3L2k4NF00tBfHi6gDeDHhv+OvHwbRkqfOjI.....IUjSD4pPfIH" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 90.0, 239.0, 90.5, 239.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 129.5, 293.0, 90.5, 293.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 131.5, 239.0, 90.5, 239.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 171.5, 239.0, 90.5, 239.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [ 90.5, 323.0, 105.5, 323.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 2 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 3 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 4 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 5 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 6 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 7 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 8 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation_rect" : [ 57.0, 425.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 787.0, 488.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-100",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "auto advance",
					"fontsize" : 12.0,
					"presentation_rect" : [ 100.0, 425.0, 87.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 908.0, 376.0, 87.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-98",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"presentation_rect" : [ 80.0, 425.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 888.0, 374.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-95",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : ".saving / recalling",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 172.401978, 452.350494, 122.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 339.401978, 414.350494, 122.0, 20.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-85",
					"fontname" : "Gill Sans Bold",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : ".camera settings",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 177.401978, 97.350494, 110.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 48.401947, 647.350464, 182.0, 20.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-88",
					"fontname" : "Gill Sans Bold",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : ".recording / playback",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 155.401978, 300.350494, 146.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 64.401978, 518.350464, 144.0, 20.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-63",
					"fontname" : "Gill Sans Bold",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 200",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 507.0, 349.0, 73.0, 18.0 ],
					"id" : "obj-67",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 15",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 284.0, 587.0, 67.0, 18.0 ],
					"id" : "obj-65",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "matrixcount $1",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 554.0, 457.0, 76.0, 16.0 ],
					"id" : "obj-64",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p size",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patching_rect" : [ 362.0, 376.0, 33.0, 18.0 ],
					"id" : "obj-55",
					"fontname" : "Gill Sans",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 1.",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 346.0, 356.0, 32.5, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Gill Sans",
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 1 1",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 256.0, 368.0, 44.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Gill Sans",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 1.",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 392.0, 318.0, 32.5, 18.0 ],
									"id" : "obj-7",
									"fontname" : "Gill Sans",
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 640 640",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 265.0, 314.0, 49.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Gill Sans",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 1 1",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 277.0, 260.0, 54.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Gill Sans",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gswitch2",
									"numinlets" : 2,
									"patching_rect" : [ 176.0, 301.0, 39.0, 32.0 ],
									"id" : "obj-3",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "> 640",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 180.0, 227.0, 34.0, 18.0 ],
									"id" : "obj-2",
									"fontname" : "Gill Sans",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 1 1",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 183.0, 181.0, 54.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Gill Sans",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route dim",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 139.0, 51.0, 18.0 ],
									"id" : "obj-62",
									"fontname" : "Gill Sans",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend size",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 159.0, 391.0, 62.0, 18.0 ],
									"id" : "obj-63",
									"fontname" : "Gill Sans",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r dims",
									"fontsize" : 10.0,
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 100.0, 36.0, 18.0 ],
									"id" : "obj-64",
									"fontname" : "Gill Sans",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 159.0, 429.0, 25.0, 25.0 ],
									"id" : "obj-54",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "fps",
					"fontsize" : 12.0,
					"presentation_rect" : [ 21.0, 529.0, 29.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 756.0, 313.0, 29.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-39",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "number of frames",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 130.0, 125.0, 111.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 513.0, 391.0, 111.0, 20.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-38",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "frames_num",
					"fontsize" : 12.0,
					"presentation_rect" : [ 152.0, 142.0, 54.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 525.0, 409.0, 54.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-32",
					"fontname" : "Trebuchet MS",
					"triangle" : 0,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "export_fps",
					"fontsize" : 12.0,
					"presentation_rect" : [ 20.0, 549.0, 33.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 326.0, 619.0, 33.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-21",
					"fontname" : "Trebuchet MS",
					"triangle" : 0,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"hint" : "click, then locate the .json file for your project",
					"text" : "export",
					"fontsize" : 12.0,
					"presentation_rect" : [ 221.0, 550.0, 46.0, 18.0 ],
					"bgcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 270.0, 618.0, 46.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-19",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "0.",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.054902, 0.145098, 1.0 ],
					"presentation_rect" : [ 9.0, 141.0, 24.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 177.0, 334.0, 24.0, 20.0 ],
					"textcolor" : [ 1.0, 0.054902, 0.145098, 1.0 ],
					"presentation" : 1,
					"id" : "obj-17",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "7.",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.054902, 0.145098, 1.0 ],
					"presentation_rect" : [ 153.0, 355.0, 26.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 422.0, 198.0, 26.0, 20.0 ],
					"textcolor" : [ 1.0, 0.054902, 0.145098, 1.0 ],
					"presentation" : 1,
					"id" : "obj-16",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "6.",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.054902, 0.145098, 1.0 ],
					"presentation_rect" : [ 29.0, 404.0, 24.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 343.0, 306.0, 24.0, 20.0 ],
					"textcolor" : [ 1.0, 0.054902, 0.145098, 1.0 ],
					"presentation" : 1,
					"id" : "obj-15",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "5.",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.054902, 0.145098, 1.0 ],
					"presentation_rect" : [ 27.0, 355.0, 26.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 174.0, 206.0, 26.0, 20.0 ],
					"textcolor" : [ 1.0, 0.054902, 0.145098, 1.0 ],
					"presentation" : 1,
					"id" : "obj-14",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "4.",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.054902, 0.145098, 1.0 ],
					"presentation_rect" : [ 4.0, 299.0, 24.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 257.0, 70.0, 24.0, 20.0 ],
					"textcolor" : [ 1.0, 0.054902, 0.145098, 1.0 ],
					"presentation" : 1,
					"id" : "obj-13",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3.",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.054902, 0.145098, 1.0 ],
					"presentation_rect" : [ 208.0, 182.0, 26.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 313.0, 71.0, 26.0, 20.0 ],
					"textcolor" : [ 1.0, 0.054902, 0.145098, 1.0 ],
					"presentation" : 1,
					"id" : "obj-11",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2.",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.054902, 0.145098, 1.0 ],
					"presentation_rect" : [ 9.0, 207.0, 26.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 313.0, 61.0, 26.0, 20.0 ],
					"textcolor" : [ 1.0, 0.054902, 0.145098, 1.0 ],
					"presentation" : 1,
					"id" : "obj-10",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1. ",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.054902, 0.145098, 1.0 ],
					"presentation_rect" : [ 9.0, 184.0, 29.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 182.0, 67.0, 29.0, 20.0 ],
					"textcolor" : [ 1.0, 0.054902, 0.145098, 1.0 ],
					"presentation" : 1,
					"id" : "obj-6",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<space bar> to record a frame",
					"fontsize" : 12.0,
					"presentation_rect" : [ 50.0, 404.0, 210.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 769.0, 197.0, 207.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-5",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "record frame\n('A' and 'S' keys)",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"fontsize" : 12.0,
					"presentation_rect" : [ 51.0, 318.0, 122.0, 34.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 834.0, 441.0, 122.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-94",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "play frame\n('D' and 'F' keys)",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"fontsize" : 12.0,
					"presentation_rect" : [ 172.0, 318.0, 122.0, 34.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 967.0, 441.0, 122.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-93",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sources",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 48.0, 184.0, 53.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 188.0, 86.0, 53.0, 20.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-92",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "dim (erases all!)",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 22.0, 125.0, 103.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 576.0, 112.0, 103.0, 20.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-91",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "start",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 19.0, 299.0, 41.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 301.0, 112.0, 41.0, 20.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-90",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "open/close",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 219.0, 182.0, 75.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 356.0, 112.0, 75.0, 20.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-89",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p send dims",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 570.0, 186.0, 59.0, 18.0 ],
					"id" : "obj-87",
					"fontname" : "Gill Sans",
					"numoutlets" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s dims",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 155.0, 45.0, 20.0 ],
									"id" : "obj-85",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend dim",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 128.0, 77.0, 20.0 ],
									"id" : "obj-84",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 100.0, 61.0, 20.0 ],
									"id" : "obj-81",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-86",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-84", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation_rect" : [ 27.0, 143.0, 15.0, 15.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 549.0, 133.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-83",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"varname" : "video_dim",
					"text" : "320 240",
					"fontsize" : 12.0,
					"presentation_rect" : [ 47.0, 142.0, 72.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 570.0, 133.0, 100.0, 50.0 ],
					"presentation" : 1,
					"id" : "obj-80",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p size",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patching_rect" : [ 601.0, 587.0, 33.0, 18.0 ],
					"id" : "obj-79",
					"fontname" : "Gill Sans",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 1.",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 346.0, 356.0, 32.5, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Gill Sans",
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 1 1",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 256.0, 368.0, 44.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Gill Sans",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 1.",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 392.0, 318.0, 32.5, 18.0 ],
									"id" : "obj-7",
									"fontname" : "Gill Sans",
									"numoutlets" : 1,
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 640 640",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 265.0, 314.0, 49.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Gill Sans",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 1 1",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 277.0, 260.0, 54.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Gill Sans",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gswitch2",
									"numinlets" : 2,
									"patching_rect" : [ 176.0, 301.0, 39.0, 32.0 ],
									"id" : "obj-3",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "> 640",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 180.0, 227.0, 34.0, 18.0 ],
									"id" : "obj-2",
									"fontname" : "Gill Sans",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 1 1",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 183.0, 181.0, 54.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Gill Sans",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route dim",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 139.0, 51.0, 18.0 ],
									"id" : "obj-62",
									"fontname" : "Gill Sans",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend size",
									"fontsize" : 10.0,
									"numinlets" : 1,
									"patching_rect" : [ 159.0, 391.0, 62.0, 18.0 ],
									"id" : "obj-63",
									"fontname" : "Gill Sans",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r dims",
									"fontsize" : 10.0,
									"numinlets" : 0,
									"patching_rect" : [ 50.0, 100.0, 36.0, 18.0 ],
									"id" : "obj-64",
									"fontname" : "Gill Sans",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 159.0, 429.0, 25.0, 25.0 ],
									"id" : "obj-54",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 376.5, 174.0, 19.0, 18.0 ],
					"id" : "obj-9",
					"fontname" : "Gill Sans",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 100.0, 46.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "close",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 51.5, 127.0, 34.0, 16.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open",
									"fontsize" : 10.0,
									"numinlets" : 2,
									"patching_rect" : [ 94.5, 127.0, 33.0, 16.0 ],
									"id" : "obj-69",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-7",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 72.0, 203.0, 25.0, 25.0 ],
									"id" : "obj-8",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"oncolor" : [ 0.298039, 1.0, 0.0, 1.0 ],
					"offcolor" : [ 0.0, 0.192157, 0.027451, 1.0 ],
					"presentation_rect" : [ 8.5, 321.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 307.5, 136.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-74",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"presentation_rect" : [ 228.5, 203.0, 20.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 376.5, 135.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-75",
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r dims",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patching_rect" : [ 405.5, 174.0, 36.0, 18.0 ],
					"id" : "obj-76",
					"fontname" : "Gill Sans",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation_rect" : [ 27.0, 188.0, 14.0, 14.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 470.5, 185.0, 20.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-77",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu[1]",
					"fontsize" : 12.0,
					"presentation_rect" : [ 25.5, 225.0, 109.0, 20.0 ],
					"items" : "Built-in iSight",
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 393.5, 286.0, 145.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-24",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu",
					"fontsize" : 12.0,
					"presentation_rect" : [ 25.5, 205.0, 109.0, 20.0 ],
					"items" : [ "DV Video", ",", "IIDC FireWire Video", ",", "Google Camera Adapter 0", ",", "Google Camera Adapter 1", ",", "USB Video Class Video" ],
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 393.5, 266.0, 145.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-29",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p source",
					"fontsize" : 10.0,
					"numinlets" : 4,
					"patching_rect" : [ 401.0, 217.0, 59.5, 18.0 ],
					"id" : "obj-66",
					"fontname" : "Gill Sans",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 588.0, 118.0, 1079.0, 430.0 ],
						"bglocked" : 0,
						"defrect" : [ 588.0, 118.0, 1079.0, 430.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 531.0, 62.0, 20.0, 20.0 ],
									"id" : "obj-8",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 1000",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 564.0, 99.0, 57.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 455.0, 37.0, 25.0, 25.0 ],
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 411.0, 317.0, 25.0, 25.0 ],
									"id" : "obj-5",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 474.0, 314.0, 25.0, 25.0 ],
									"id" : "obj-4",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 380.0, 38.0, 25.0, 25.0 ],
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 251.0, 37.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"fontsize" : 11.595187,
									"numinlets" : 1,
									"patching_rect" : [ 338.0, 172.0, 31.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "iter",
									"fontsize" : 11.595187,
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 151.0, 25.0, 20.0 ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t clear",
									"fontsize" : 11.595187,
									"numinlets" : 1,
									"patching_rect" : [ 145.0, 172.0, 40.0, 20.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t clear",
									"fontsize" : 11.595187,
									"numinlets" : 1,
									"patching_rect" : [ 296.0, 172.0, 40.0, 20.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "input $1",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"patching_rect" : [ 324.0, 251.0, 50.0, 18.0 ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"fontsize" : 11.595187,
									"numinlets" : 1,
									"patching_rect" : [ 201.0, 172.0, 93.0, 20.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "iter",
									"fontsize" : 11.595187,
									"numinlets" : 1,
									"patching_rect" : [ 201.0, 151.0, 25.0, 20.0 ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p other",
									"fontsize" : 11.595187,
									"numinlets" : 1,
									"patching_rect" : [ 338.0, 150.0, 45.0, 20.0 ],
									"id" : "obj-27",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 107.0, 474.0, 286.0, 179.0 ],
										"bglocked" : 0,
										"defrect" : [ 107.0, 474.0, 286.0, 179.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 228.0, 107.0, 25.0, 25.0 ],
													"id" : "obj-1",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s iidcstate",
													"fontsize" : 11.595187,
													"numinlets" : 1,
													"patching_rect" : [ 178.25, 78.0, 62.0, 20.0 ],
													"id" : "obj-2",
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s iidccsr",
													"fontsize" : 11.595187,
													"numinlets" : 1,
													"patching_rect" : [ 128.5, 98.0, 52.0, 20.0 ],
													"id" : "obj-3",
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s iidccaps",
													"fontsize" : 11.595187,
													"numinlets" : 1,
													"patching_rect" : [ 78.75, 118.0, 61.0, 20.0 ],
													"id" : "obj-4",
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s iidclist",
													"fontsize" : 11.595187,
													"numinlets" : 1,
													"patching_rect" : [ 29.0, 139.0, 51.0, 20.0 ],
													"id" : "obj-5",
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route iidclist iidc_caps iidc_csr iidc_state",
													"fontsize" : 11.595187,
													"numinlets" : 1,
													"patching_rect" : [ 29.0, 56.0, 218.0, 20.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numoutlets" : 5,
													"outlettype" : [ "", "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 29.0, 27.0, 25.0, 25.0 ],
													"id" : "obj-7",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 2 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 3 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 4 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"default_fontsize" : 10.0,
										"fontname" : "Arial",
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "vdevice $1",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"patching_rect" : [ 182.0, 251.0, 64.0, 18.0 ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"fontsize" : 11.595187,
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 172.0, 93.0, 20.0 ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route vdevlist inputlist",
									"fontsize" : 11.595187,
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 121.0, 119.0, 20.0 ],
									"id" : "obj-31",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getinputlist",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"patching_rect" : [ 663.0, 164.0, 64.0, 18.0 ],
									"id" : "obj-61",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getvdevlist",
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"patching_rect" : [ 596.0, 164.0, 63.0, 18.0 ],
									"id" : "obj-65",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arguments <width> <height> <vdevice(optional)>",
									"fontsize" : 11.595187,
									"numinlets" : 1,
									"patching_rect" : [ 70.0, 100.0, 260.0, 20.0 ],
									"id" : "obj-97",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 55.0, 40.0, 25.0, 25.0 ],
									"id" : "obj-43",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 274.0, 313.0, 25.0, 25.0 ],
									"id" : "obj-44",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 145.0, 154.5, 145.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 1 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 109.5, 141.0, 210.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 109.5, 141.0, 305.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 2 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 159.5, 141.0, 347.5, 141.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.qt.grab 320 240",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 308.0, 216.0, 84.0, 18.0 ],
					"id" : "obj-70",
					"fontname" : "Gill Sans",
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 2",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 308.0, 176.0, 49.0, 18.0 ],
					"id" : "obj-71",
					"fontname" : "Gill Sans",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r dims",
					"fontsize" : 10.0,
					"numinlets" : 0,
					"patching_rect" : [ 754.0, 524.0, 36.0, 18.0 ],
					"id" : "obj-58",
					"fontname" : "Gill Sans",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p keybpard",
					"fontsize" : 10.0,
					"numinlets" : 3,
					"patching_rect" : [ 796.0, 408.0, 56.0, 18.0 ],
					"id" : "obj-57",
					"fontname" : "Gill Sans",
					"numoutlets" : 3,
					"outlettype" : [ "bang", "int", "int" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 320.0, 58.0, 898.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 320.0, 58.0, 898.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 419.0, 296.0, 20.0, 20.0 ],
									"id" : "obj-53",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 415.0, 261.0, 50.0, 20.0 ],
									"id" : "obj-51",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 563.0, 96.0, 50.0, 20.0 ],
									"id" : "obj-49",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 404.0, 221.0, 32.5, 20.0 ],
									"id" : "obj-47",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 436.0, 245.0, 57.0, 17.0 ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 576.0, 49.0, 25.0, 25.0 ],
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 517.0, 49.0, 25.0, 25.0 ],
									"id" : "obj-14",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 30",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 240.0, 366.0, 43.0, 20.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"fontsize" : 12.0,
									"numinlets" : 2,
									"patching_rect" : [ 170.0, 349.0, 34.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 185.0, 299.0, 20.0, 20.0 ],
									"id" : "obj-8",
									"numoutlets" : 1,
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 229.0, 295.0, 20.0, 20.0 ],
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 244.0, 257.0, 32.5, 20.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 369.0, 49.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 1",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 523.0, 215.0, 31.0, 17.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 0",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 463.0, 216.0, 31.0, 17.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter 0 199",
									"fontsize" : 9.0,
									"numinlets" : 5,
									"patching_rect" : [ 463.0, 326.0, 74.0, 17.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 89.0, 269.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 109.0, 271.0, 15.0, 15.0 ],
									"id" : "obj-17",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 129.0, 271.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 167.0, 272.0, 15.0, 15.0 ],
									"id" : "obj-19",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 1 b",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 376.0, 183.0, 46.0, 17.0 ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 0 b",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 316.0, 184.0, 46.0, 17.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 9.0,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 140.0, 35.0, 17.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"triscale" : 0.9,
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter 0 199",
									"fontsize" : 9.0,
									"numinlets" : 5,
									"patching_rect" : [ 324.0, 333.0, 74.0, 17.0 ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 97 115 102 100 32",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 136.0, 55.0, 100.0, 17.0 ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"numoutlets" : 6,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "key",
									"fontsize" : 9.0,
									"numinlets" : 0,
									"patching_rect" : [ 136.0, 27.0, 40.0, 17.0 ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "which frame you are filling",
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 311.0, 306.0, 132.0, 17.0 ],
									"id" : "obj-32",
									"fontname" : "Arial",
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 204.0, 410.0, 25.0, 25.0 ],
									"id" : "obj-54",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 329.0, 410.0, 25.0, 25.0 ],
									"id" : "obj-55",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 468.0, 410.0, 25.0, 25.0 ],
									"id" : "obj-56",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-47", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-23", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 2 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-23", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 3 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 3 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 2 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 4 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 227.0, 197.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-11", 4 ],
									"hidden" : 0,
									"midpoints" : [ 569.0, 244.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-23", 4 ],
									"hidden" : 0,
									"midpoints" : [ 587.0, 253.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "press <space bar> to take picture",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 806.0, 305.0, 148.0, 18.0 ],
					"id" : "obj-1",
					"fontname" : "Gill Sans",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use UP and DOWN to choose what you're playing back",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 807.0, 334.0, 239.0, 18.0 ],
					"id" : "obj-2",
					"fontname" : "Gill Sans",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use LEFT and RIGHt to choose where you are recording",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 284.0, 241.0, 18.0 ],
					"id" : "obj-3",
					"fontname" : "Gill Sans",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.window input @size 320 240 @floating 1 @pos 400 50",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 175.0, 488.0, 247.0, 18.0 ],
					"id" : "obj-4",
					"fontname" : "Gill Sans",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"hint" : "click, then provide project name and folder to save in",
					"text" : "save",
					"fontsize" : 12.0,
					"presentation_rect" : [ 19.0, 476.0, 43.0, 18.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 1163.0, 621.0, 42.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-7",
					"fontname" : "Trebuchet MS",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "exportmovie 7. jpeg normal 600",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 424.0, 491.0, 141.0, 16.0 ],
					"id" : "obj-12",
					"fontname" : "Gill Sans",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "which frame you are requesting",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 1032.0, 466.0, 139.0, 18.0 ],
					"id" : "obj-31",
					"fontname" : "Gill Sans",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "= 200 x \"jit.matrix 4 char 320 240\" objects",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 817.0, 590.0, 184.0, 18.0 ],
					"id" : "obj-33",
					"fontname" : "Gill Sans",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jit_matrix #0myframe",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 647.0, 527.0, 99.0, 16.0 ],
					"id" : "obj-34",
					"fontname" : "Gill Sans",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.window output @size 320 240 @floating 1 @pos 400 310",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 647.0, 767.0, 259.0, 18.0 ],
					"id" : "obj-35",
					"fontname" : "Gill Sans",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.matrix #0myframe 4 char 320 240",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 306.0, 351.0, 160.0, 18.0 ],
					"id" : "obj-36",
					"fontname" : "Gill Sans",
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"depthbuffer" : 0,
					"presentation_rect" : [ 136.0, 195.0, 62.666668, 47.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 308.0, 246.0, 80.0, 60.0 ],
					"presentation" : 1,
					"id" : "obj-37",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 36.0,
					"presentation_rect" : [ 175.0, 356.0, 87.0, 48.0 ],
					"bgcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 956.0, 492.0, 85.0, 48.0 ],
					"minimum" : 0,
					"presentation" : 1,
					"id" : "obj-45",
					"fontname" : "Trebuchet MS",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : 249,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "outputmatrix $1",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 956.0, 560.0, 77.0, 16.0 ],
					"id" : "obj-46",
					"fontname" : "Gill Sans",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 36.0,
					"presentation_rect" : [ 49.0, 356.0, 87.0, 48.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 828.0, 492.0, 104.0, 48.0 ],
					"minimum" : 0,
					"presentation" : 1,
					"id" : "obj-47",
					"fontname" : "Trebuchet MS",
					"triscale" : 0.9,
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : 249,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "index $1",
					"fontsize" : 10.0,
					"numinlets" : 2,
					"patching_rect" : [ 828.0, 560.0, 46.0, 16.0 ],
					"id" : "obj-48",
					"fontname" : "Gill Sans",
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.matrixset 1 4 char 320 240",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 647.0, 589.0, 130.0, 18.0 ],
					"id" : "obj-49",
					"fontname" : "Gill Sans",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "press spacebar (32 is down)",
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 548.0, 542.0, 124.0, 18.0 ],
					"id" : "obj-51",
					"fontname" : "Gill Sans",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"hint" : "http://thelinktothedocumentationorsomething.",
					"varname" : "maw_header_title_weblink_ubutton",
					"presentation_rect" : [ 93.0, 17.0, 136.0, 29.0 ],
					"hltcolor" : [ 0.470588, 0.54902, 0.239216, 0.25098 ],
					"handoff" : "",
					"numinlets" : 1,
					"patching_rect" : [ 899.0, 99.0, 207.0, 29.0 ],
					"presentation" : 1,
					"id" : "obj-190",
					"background" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "maw_header_digest",
					"text" : "stop-motion animation machine",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"presentation_rect" : [ 93.0, 44.0, 181.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 898.0, 126.0, 311.0, 20.0 ],
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"presentation" : 1,
					"id" : "obj-196",
					"fontname" : "Trebuchet MS",
					"background" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "maw_header_title",
					"text" : "MAW.stopmotion",
					"fontface" : 2,
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 93.0, 16.0, 168.0, 34.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 898.0, 98.0, 311.0, 34.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation" : 1,
					"id" : "obj-203",
					"fontname" : "Gill Sans",
					"background" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"varname" : "maw_header_logo",
					"presentation_rect" : [ 21.0, 16.0, 68.0, 68.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 826.0, 104.0, 64.0, 66.0 ],
					"pic" : "maw_logo_small_dark_dark_green.png",
					"presentation" : 1,
					"id" : "obj-204",
					"background" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 4.0, 94.0, 289.0, 204.0 ],
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 39.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-82",
					"background" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 4.0, 6.0, 289.0, 86.0 ],
					"bgcolor" : [ 0.32549, 0.34902, 0.258824, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 14.0, 509.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-156",
					"background" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 4.0, 300.0, 289.0, 149.0 ],
					"bgcolor" : [ 0.32549, 0.34902, 0.258824, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 246.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-84",
					"background" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 4.0, 452.0, 289.0, 48.0 ],
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 642.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-157",
					"background" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 4.0, 503.0, 289.0, 72.0 ],
					"bgcolor" : [ 0.32549, 0.34902, 0.258824, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 526.0, 128.0, 128.0 ],
					"presentation" : 1,
					"id" : "obj-140",
					"background" : 1,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 0 ],
					"destination" : [ "obj-139", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-139", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-144", 0 ],
					"destination" : [ "obj-147", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-145", 0 ],
					"destination" : [ "obj-146", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 1 ],
					"destination" : [ "obj-138", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-136", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 1 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-57", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 837.5, 582.0, 656.5, 582.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 965.5, 582.0, 656.5, 582.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 965.5, 555.0, 965.5, 555.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 2 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 1 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [ 402.5, 205.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-75", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 1 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 2 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-66", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-66", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-66", 3 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-102", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-57", 1 ],
					"hidden" : 0,
					"midpoints" : [ 793.0, 383.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 1 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 0 ],
					"destination" : [ "obj-96", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-147", 1 ],
					"destination" : [ "obj-96", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-96", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-96", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-96", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-97", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 1 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-96", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-96", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
