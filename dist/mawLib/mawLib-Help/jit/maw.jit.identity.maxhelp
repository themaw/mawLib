{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 14.0, 46.0, 1024.0, 698.0 ],
		"bgcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
		"bglocked" : 1,
		"defrect" : [ 14.0, 46.0, 1024.0, 698.0 ],
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
					"maxclass" : "comment",
					"text" : "maw.jit.identity is used to create a matrix of 0's with a diagonal line of 1's.",
					"linecount" : 2,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 109.0, 217.0, 34.0 ],
					"numoutlets" : 0,
					"id" : "obj-5",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Arguments: (int, size)",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 338.0, 136.0, 156.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bang to test.",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 86.0, 174.0, 121.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-2",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bang to test.",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 698.0, 174.0, 121.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-1",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"patching_rect" : [ 471.0, 296.0, 200.0, 200.0 ],
					"numoutlets" : 2,
					"id" : "obj-36",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"patching_rect" : [ 761.0, 296.0, 200.0, 200.0 ],
					"numoutlets" : 2,
					"id" : "obj-30",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"hidden" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 678.0, 147.0, 60.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3 x 3 Identity Matrix",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 790.0, 208.0, 121.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-26",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 678.0, 174.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-27",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"cols" : 3,
					"fontsize" : 12.0,
					"numinlets" : 2,
					"rows" : 3,
					"patching_rect" : [ 678.0, 296.0, 79.0, 58.0 ],
					"numoutlets" : 4,
					"id" : "obj-28",
					"colwidth" : 25,
					"outlettype" : [ "list", "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "maw.jit.identity 3",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 678.0, 208.0, 99.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-29",
					"outlettype" : [ "jit_matrix" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"hidden" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 64.0, 147.0, 60.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "16 x 16 Identity Matrix",
					"fontsize" : 12.0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 176.0, 208.0, 134.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-19",
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"fontname" : "Trebuchet MS"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 64.0, 174.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"cols" : 16,
					"fontsize" : 12.0,
					"numinlets" : 2,
					"rows" : 16,
					"patching_rect" : [ 64.0, 296.0, 404.0, 292.0 ],
					"numoutlets" : 4,
					"id" : "obj-21",
					"colwidth" : 25,
					"outlettype" : [ "list", "", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "maw.jit.identity 16",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 64.0, 208.0, 106.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "jit_matrix" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.meta.mawLib",
					"hidden" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 662.0, 133.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-6",
					"outlettype" : [ "", "" ],
					"background" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_footer_logo",
					"presentation_rect" : [ 0.0, 0.0, 315.0, 16.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 696.0, 666.0, 315.0, 16.0 ],
					"numoutlets" : 0,
					"id" : "obj-8",
					"args" : [  ],
					"name" : "maw-footer-logo.maxpat",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "mawlib_body_panel",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 105.0, 1004.0, 583.0 ],
					"numoutlets" : 0,
					"id" : "obj-10",
					"rounded" : 15,
					"background" : 1,
					"bgcolor" : [ 0.47, 0.55, 0.24, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_title",
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 10.0, 10.0, 400.0, 90.0 ],
					"numoutlets" : 0,
					"id" : "obj-12",
					"args" : [ "maw.jit.identity", "http://dev.minneapolisartonwheels.org/projects/show/mawlib", "An abstraction for generating arbitrary identity matrices." ],
					"name" : "maw-header-title.maxpat",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_meta",
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 415.0, 10.0, 400.0, 90.0 ],
					"numoutlets" : 0,
					"id" : "obj-14",
					"args" : [ "An abstraction for generating arbitrary identity matrices.", "Christopher Baker|Programmer|http://christopherbaker.net,", "Minnesota Futures Grant|A generous granting agency.|http://minnesotafutures.org,Collaborative Art|Cola is a wonderful drink and area of rearch.|http://cola.umn.edu,Department of Art|Unsure what to say about this.|http://art.umn.edu,", "� University of Minnesota, 2009-2010", "Identity Matrix|See the link.|http://en.wikipedia.org/wiki/Identity_matrix," ],
					"name" : "maw-header-meta.maxpat",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_examples",
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 876.0, 13.0, 131.0, 40.0 ],
					"numoutlets" : 0,
					"id" : "obj-16",
					"args" : [  ],
					"name" : "maw-header-examples.maxpat",
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_related",
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 876.0, 57.0, 131.0, 40.0 ],
					"numoutlets" : 0,
					"id" : "obj-18",
					"args" : [  ],
					"name" : "maw-header-related-objects.maxpat",
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 687.5, 276.0, 770.5, 276.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 687.5, 228.0, 687.5, 228.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 73.5, 281.0, 480.5, 281.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
