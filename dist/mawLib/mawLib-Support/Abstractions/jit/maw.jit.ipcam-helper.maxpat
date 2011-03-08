{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 497.0, 139.0, 726.0, 579.0 ],
		"bglocked" : 0,
		"defrect" : [ 497.0, 139.0, 726.0, 579.0 ],
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
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "u730001210",
					"text" : "autopattr",
					"id" : "obj-21",
					"fontname" : "Arial",
					"patching_rect" : [ 504.0, 180.0, 59.5, 20.0 ],
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 4,
					"restore" : 					{
						"pictslider" : [ 0, 0 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "change",
					"id" : "obj-20",
					"fontname" : "Arial",
					"patching_rect" : [ 433.0, 348.0, 50.0, 20.0 ],
					"outlettype" : [ "", "int", "int" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "change",
					"id" : "obj-19",
					"fontname" : "Arial",
					"patching_rect" : [ 355.0, 348.0, 50.0, 20.0 ],
					"outlettype" : [ "", "int", "int" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 0 0",
					"id" : "obj-5",
					"fontname" : "Arial",
					"patching_rect" : [ 481.0, 429.0, 34.0, 20.0 ],
					"outlettype" : [ "int", "int" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 0 1",
					"id" : "obj-11",
					"fontname" : "Arial",
					"patching_rect" : [ 542.0, 429.0, 34.0, 20.0 ],
					"outlettype" : [ "int", "int" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1 0",
					"id" : "obj-18",
					"fontname" : "Arial",
					"patching_rect" : [ 442.0, 429.0, 34.0, 20.0 ],
					"outlettype" : [ "int", "int" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 0 0",
					"id" : "obj-4",
					"fontname" : "Arial",
					"patching_rect" : [ 318.0, 446.0, 34.0, 20.0 ],
					"outlettype" : [ "int", "int" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 0 1",
					"id" : "obj-3",
					"fontname" : "Arial",
					"patching_rect" : [ 379.0, 446.0, 34.0, 20.0 ],
					"outlettype" : [ "int", "int" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1 0",
					"id" : "obj-2",
					"fontname" : "Arial",
					"patching_rect" : [ 279.0, 446.0, 34.0, 20.0 ],
					"outlettype" : [ "int", "int" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-17",
					"patching_rect" : [ 328.0, 546.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "moveup $1",
					"id" : "obj-14",
					"fontname" : "Arial",
					"patching_rect" : [ 526.0, 491.0, 70.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "movedown $1",
					"id" : "obj-15",
					"fontname" : "Arial",
					"patching_rect" : [ 424.0, 491.0, 85.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "moveright $1",
					"id" : "obj-13",
					"fontname" : "Arial",
					"patching_rect" : [ 325.0, 491.0, 80.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "moveleft $1",
					"id" : "obj-12",
					"fontname" : "Arial",
					"patching_rect" : [ 219.0, 491.0, 73.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel -1 0 1",
					"id" : "obj-10",
					"fontname" : "Arial",
					"patching_rect" : [ 422.0, 374.0, 60.0, 20.0 ],
					"outlettype" : [ "bang", "bang", "bang", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel -1 0 1",
					"id" : "obj-9",
					"fontname" : "Arial",
					"patching_rect" : [ 354.0, 374.0, 60.0, 20.0 ],
					"outlettype" : [ "bang", "bang", "bang", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 1 1",
					"id" : "obj-8",
					"fontname" : "Arial",
					"patching_rect" : [ 354.0, 325.0, 69.0, 20.0 ],
					"outlettype" : [ "int", "int" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 1 1",
					"id" : "obj-7",
					"fontname" : "Arial",
					"patching_rect" : [ 386.0, 294.0, 56.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r mainbang",
					"id" : "obj-6",
					"fontname" : "Arial",
					"patching_rect" : [ 380.0, 147.0, 71.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "pictslider",
					"varname" : "pictslider",
					"id" : "obj-1",
					"patching_rect" : [ 386.0, 223.0, 61.0, 61.0 ],
					"outlettype" : [ "int", "int" ],
					"presentation" : 1,
					"bottomvalue" : -1,
					"rightvalue" : 1,
					"numinlets" : 2,
					"presentation_rect" : [ 386.0, 223.0, 61.0, 61.0 ],
					"leftvalue" : -1,
					"topvalue" : 1,
					"numoutlets" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 2 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
