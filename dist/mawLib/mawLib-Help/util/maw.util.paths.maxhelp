{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 293.0, 44.0, 1024.0, 698.0 ],
		"bgcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
		"bglocked" : 1,
		"defrect" : [ 293.0, 44.0, 1024.0, 698.0 ],
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
					"text" : "items in a folder relative to the parent folder of this patch",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.670451,
					"patching_rect" : [ 462.147827, 330.816833, 338.586151, 20.0 ],
					"id" : "obj-12",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "full path of the folder of this patch",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.670451,
					"patching_rect" : [ 393.338104, 282.15271, 204.639984, 20.0 ],
					"id" : "obj-14",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "compile",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 11.432481,
					"outlettype" : [ "" ],
					"patching_rect" : [ 366.073914, 376.236725, 54.57066, 18.0 ],
					"id" : "obj-15",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "patchdir",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 11.432481,
					"outlettype" : [ "" ],
					"patching_rect" : [ 311.545471, 277.286285, 58.291382, 18.0 ],
					"id" : "obj-16",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "patchpath",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 11.432481,
					"outlettype" : [ "" ],
					"patching_rect" : [ 270.0, 239.977112, 65.732841, 18.0 ],
					"id" : "obj-17",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "reldirlist _bogus",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 11.432481,
					"outlettype" : [ "" ],
					"patching_rect" : [ 344.002838, 329.194702, 105.420593, 18.0 ],
					"id" : "obj-18",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.670451,
					"patching_rect" : [ 338.809692, 471.942871, 75.654778, 20.0 ],
					"id" : "obj-19",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js maw.util.paths.js",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 11.670451,
					"outlettype" : [ "" ],
					"patching_rect" : [ 338.809692, 429.767242, 118.876465, 20.0 ],
					"id" : "obj-20",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "full path of this patch (patches must be saved to disk, not untitled and the js has to be made AFTER the patch's been saved)",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.651279,
					"patching_rect" : [ 345.301178, 227.0, 374.553162, 33.0 ],
					"id" : "obj-21",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.meta.mawLib",
					"numinlets" : 1,
					"hidden" : 1,
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ],
					"background" : 1,
					"patching_rect" : [ 15.0, 662.0, 133.0, 20.0 ],
					"id" : "obj-1",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_footer_logo",
					"numinlets" : 0,
					"name" : "maw-footer-logo.maxpat",
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 315.0, 16.0 ],
					"args" : [  ],
					"background" : 1,
					"patching_rect" : [ 696.0, 666.0, 315.0, 16.0 ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "mawlib_body_panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"background" : 1,
					"patching_rect" : [ 10.0, 105.0, 1004.0, 583.0 ],
					"rounded" : 15,
					"id" : "obj-5",
					"bgcolor" : [ 0.47, 0.55, 0.24, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_title",
					"numinlets" : 0,
					"name" : "maw-header-title.maxpat",
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"args" : [ "maw.util.paths", "http://dev.minneapolisartonwheels.org/mawLib/maw.util.paths", "A java script to help with general path queries for patches." ],
					"background" : 1,
					"patching_rect" : [ 10.0, 10.0, 400.0, 90.0 ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_meta",
					"numinlets" : 0,
					"name" : "maw-header-meta.maxpat",
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"args" : [ "This object can provide path and folder information for the patch.", "Christopher Baker|Programmer|http://christopherbaker.net,", "Minnesota Futures Grant|Minnesota Futures is a grant that gives out lots and lots of money.|http://minnesotafutures.org,Collaborative Art|Cola is a wonderful drink and area of rearch.|http://cola.umn.edu,Department of Art|Unsure what to say about this.|http://art.umn.edu,", "� University of Minnesota, 2009-2010: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi urna enim, ullamcorper et mattis eu, venenatis aliquam orci. Quisque nunc diam, dictum quis mattis vitae, faucibus eget felis. Morbi ornare dolor quis sem commodo vulputate. In ac ultrices diam." ],
					"background" : 1,
					"patching_rect" : [ 415.0, 10.0, 400.0, 90.0 ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_examples",
					"numinlets" : 0,
					"name" : "maw-header-examples.maxpat",
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"args" : [  ],
					"background" : 1,
					"patching_rect" : [ 876.0, 13.0, 131.0, 40.0 ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_related",
					"numinlets" : 0,
					"name" : "maw-header-related-objects.maxpat",
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"args" : [  ],
					"background" : 1,
					"patching_rect" : [ 876.0, 57.0, 131.0, 40.0 ],
					"id" : "obj-13"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
