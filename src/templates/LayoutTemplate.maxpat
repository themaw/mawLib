{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 286.0, 70.0, 1024.0, 768.0 ],
		"bgcolor" : [ 0.15, 0.15, 0.13, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 286.0, 70.0, 1024.0, 768.0 ],
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mawLib",
					"fontsize" : 36.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 150.0, 261.0, 276.0, 47.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-15",
					"fontname" : "Georgia",
					"numinlets" : 1,
					"presentation_rect" : [ 150.0, 261.0, 0.0, 0.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "mawLib",
					"fontsize" : 36.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 593.0, 58.0, 276.0, 47.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-13",
					"fontname" : "Georgia",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cv.jit.blobs.bounds",
					"fontsize" : 12.0,
					"outlettype" : [ "jit_matrix", "" ],
					"patching_rect" : [ 417.0, 398.0, 109.0, 20.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "maw.animation.box2d",
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 241.0, 134.0, 127.0, 20.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "12 Point Trebuchet MS",
					"fontsize" : 14.0,
					"frgb" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"patching_rect" : [ 498.0, 220.0, 189.0, 23.0 ],
					"textcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-4",
					"fontname" : "Trebuchet MS",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "HEX #534952",
					"fontsize" : 14.0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 550.0, 775.0, 93.0, 23.0 ],
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-183",
					"fontname" : "Trebuchet MS",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 12.0,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 579.0, 626.0, 50.0, 20.0 ],
					"id" : "obj-126",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 12.0,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 579.0, 603.0, 50.0, 20.0 ],
					"id" : "obj-124",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"patching_rect" : [ 579.0, 650.0, 100.0, 95.0 ],
					"id" : "obj-123",
					"numinlets" : 2,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 692.0, 650.0, 67.0, 36.0 ],
					"id" : "obj-122",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "incdec",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 660.0, 556.0, 20.0, 20.0 ],
					"id" : "obj-121",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 634.0, 556.0, 20.0, 20.0 ],
					"id" : "obj-120",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "preset",
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 690.0, 689.0, 68.0, 45.0 ],
					"id" : "obj-119",
					"numinlets" : 1,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dial",
					"outlettype" : [ "float" ],
					"patching_rect" : [ 579.0, 554.0, 40.0, 40.0 ],
					"id" : "obj-105",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"outlettype" : [ "" ],
					"patching_rect" : [ 686.0, 556.0, 78.0, 22.0 ],
					"id" : "obj-97",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This particular set of colors is a compromise between something bright and natural and a straight black / monochromatic theme (which might be more ideal night use).  The greens reference nature and the outdoors (where we usually project).  The dark blues reference the night sky.",
					"linecount" : 7,
					"fontsize" : 14.0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 826.0, 527.0, 295.0, 120.0 ],
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-94",
					"fontname" : "Trebuchet MS",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0 0",
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 695.0, 624.0, 56.0, 20.0 ],
					"id" : "obj-59",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0 0",
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 630.0, 624.0, 56.0, 20.0 ],
					"id" : "obj-58",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0 0 0",
					"fontsize" : 12.0,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 630.0, 583.0, 89.0, 20.0 ],
					"id" : "obj-57",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "12 Point Trebuchet MS",
					"fontsize" : 14.0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 571.0, 522.0, 189.0, 23.0 ],
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-42",
					"fontname" : "Trebuchet MS",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "36 Point Georgia",
					"fontsize" : 36.0,
					"frgb" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"patching_rect" : [ 543.0, 480.0, 276.0, 47.0 ],
					"textcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"id" : "obj-43",
					"fontname" : "Georgia",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "12 Point Trebuchet MS",
					"fontsize" : 14.0,
					"frgb" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"patching_rect" : [ 567.0, 380.0, 189.0, 23.0 ],
					"textcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-8",
					"fontname" : "Trebuchet MS",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : " Point Georgia",
					"fontsize" : 30.0,
					"frgb" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"patching_rect" : [ 68.0, 52.0, 232.0, 41.0 ],
					"textcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"id" : "obj-9",
					"fontname" : "Georgia",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "12 Point Trebuchet MS",
					"fontsize" : 14.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 569.0, 313.0, 189.0, 23.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-6",
					"fontname" : "Trebuchet MS",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "36 Point Georgia",
					"fontsize" : 36.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 541.0, 271.0, 276.0, 47.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-7",
					"fontname" : "Georgia",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 24.0, 204.0, 339.0, 700.0 ],
					"rounded" : 36,
					"bgcolor" : [ 0.32549, 0.34902, 0.258824, 1.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 0.15 0.15 0.13",
					"fontsize" : 12.0,
					"hidden" : 1,
					"patching_rect" : [ 872.0, 732.0, 130.0, 20.0 ],
					"id" : "obj-45",
					"fontname" : "Arial",
					"numinlets" : 4,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontsize" : 12.0,
					"hidden" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 21.0, 679.0, 60.0, 20.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 21.0, 728.0, 65.0, 20.0 ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "grow", "close", "zoom", "nofloat", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 286, 70, 1310, 864, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "window size 50 62 1074 830, window exec",
					"fontsize" : 11.595187,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 703.0, 237.0, 18.0 ],
					"id" : "obj-25",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 152.0, 587.0, 407.0, 142.0 ],
					"border" : 2,
					"rounded" : 18,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"id" : "obj-10",
					"bordercolor" : [ 0.32549, 0.34902, 0.258824, 1.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 342.0, 25.0, 0.0, 0.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 458.0, 42.0, 407.0, 142.0 ],
					"rounded" : 18,
					"bgcolor" : [ 0.113725, 0.12549, 0.207843, 1.0 ],
					"id" : "obj-12",
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 3 ],
					"destination" : [ "obj-59", 1 ],
					"hidden" : 0,
					"midpoints" : [ 709.5, 604.0, 741.5, 604.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 2 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [ 686.166687, 616.0, 704.5, 616.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-58", 1 ],
					"hidden" : 0,
					"midpoints" : [ 662.833313, 619.0, 676.5, 619.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [ 639.5, 604.0, 639.5, 604.0 ]
				}

			}
 ]
	}

}
