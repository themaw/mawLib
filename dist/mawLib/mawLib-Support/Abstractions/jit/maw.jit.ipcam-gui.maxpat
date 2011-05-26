{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 839.0, 232.0, 1195.0, 578.0 ],
		"bglocked" : 0,
		"defrect" : [ 839.0, 232.0, 1195.0, 578.0 ],
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
					"args" : [ "#1" ],
					"id" : "obj-36",
					"maxclass" : "bpatcher",
					"name" : "maw.util.ipcam-control-gui.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 272.0, 202.0, 153.0, 160.0 ],
					"presentation" : 1,
					"presentation_rect" : [ -10.0, 82.0, 153.0, 160.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "#1" ],
					"id" : "obj-35",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.ipcam-stream-gui.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 113.0, 94.5, 139.0, 93.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, -1.5, 139.0, 93.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-20",
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 155.0, 304.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-15",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 107.0, 25.0, 25.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-35", 0 ]
				}

			}
 ]
	}

}
