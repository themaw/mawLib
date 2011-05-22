{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 362.0, 296.0, 1069.0, 782.0 ],
		"bglocked" : 0,
		"defrect" : [ 362.0, 296.0, 1069.0, 782.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 95.0, 482.0, 115.0, 20.0 ],
					"text" : "jit.glue @columns 4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 754.0, 176.0, 73.0, 20.0 ],
					"text" : "s mainbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 95.0, 572.0, 80.0, 36.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 95.0, 524.0, 266.0, 20.0 ],
					"text" : "jit.window ipcam200 @floating 1 @size 640 120"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 93.0, 15.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 94.0, 55.0, 65.0, 20.0 ],
					"text" : "qmetro 20"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "http://192.168.1.203:81", "admin", "powerful" ],
					"id" : "obj-32",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.ipcam-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -90.0, -86.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 514.0, 190.0, 139.0, 239.0 ],
					"varname" : "maw.jit.ipcam-gui[3]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "http://192.168.1.202:81", "admin", "powerful" ],
					"id" : "obj-31",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.ipcam-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -90.0, -87.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 370.0, 190.0, 139.0, 239.0 ],
					"varname" : "maw.jit.ipcam-gui[2]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "http://192.168.1.201:81", "admin", "powerful" ],
					"id" : "obj-30",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.ipcam-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -91.0, -86.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 233.0, 190.0, 139.0, 239.0 ],
					"varname" : "maw.jit.ipcam-gui[1]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "http://192.168.1.200:81", "admin", "powerful" ],
					"id" : "obj-29",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.ipcam-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ -90.0, -85.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 95.0, 190.0, 139.0, 239.0 ],
					"varname" : "maw.jit.ipcam-gui"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 3 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-4", 0 ]
				}

			}
 ]
	}

}
