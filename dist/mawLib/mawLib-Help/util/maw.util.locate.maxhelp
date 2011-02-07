{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 44.0, 1024.0, 698.0 ],
		"bgcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
		"bglocked" : 1,
		"defrect" : [ 0.0, 44.0, 1024.0, 698.0 ],
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
					"text" : "Not on the Max search path.",
					"id" : "obj-27",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 727.0, 276.0, 0.0, 0.0 ],
					"patching_rect" : [ 727.0, 276.0, 181.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bang if not found.",
					"id" : "obj-25",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 549.0, 385.0, 0.0, 0.0 ],
					"patching_rect" : [ 549.0, 385.0, 117.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-23",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 526.0, 386.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Locates items on the Max search path, or absolute paths.",
					"linecount" : 2,
					"id" : "obj-18",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 632.0, 308.0, 0.0, 0.0 ],
					"patching_rect" : [ 487.0, 233.0, 181.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Absolute path.",
					"id" : "obj-17",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 457.0, 409.0, 87.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "locate http://search.twitter.com/search.atom?q=MAW",
					"id" : "obj-26",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 434.0, 279.0, 291.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"id" : "obj-24",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 197.0, 410.0, 256.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "locate maw.util.xmlparser.xml",
					"id" : "obj-22",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 318.0, 232.0, 167.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.util.locate",
					"id" : "obj-21",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 434.0, 361.0, 111.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.meta.mawLib",
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"background" : 1,
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ],
					"hidden" : 1,
					"patching_rect" : [ 15.0, 662.0, 133.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_footer_logo",
					"id" : "obj-3",
					"numinlets" : 0,
					"name" : "maw-footer-logo.maxpat",
					"background" : 1,
					"numoutlets" : 0,
					"args" : [  ],
					"presentation_rect" : [ 0.0, 0.0, 315.0, 16.0 ],
					"patching_rect" : [ 696.0, 666.0, 315.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "mawlib_body_panel",
					"id" : "obj-5",
					"rounded" : 15,
					"numinlets" : 1,
					"background" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.47, 0.55, 0.24, 1.0 ],
					"patching_rect" : [ 9.0, 106.0, 1004.0, 583.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_title",
					"id" : "obj-7",
					"numinlets" : 0,
					"name" : "maw-header-title.maxpat",
					"background" : 1,
					"numoutlets" : 0,
					"args" : [ "maw.util.locate", "http://dev.minneapolisartonwheels.org/mawLib/maw.util.locate", "Find files on the Max search path." ],
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"patching_rect" : [ 10.0, 10.0, 400.0, 90.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_meta",
					"id" : "obj-9",
					"numinlets" : 0,
					"name" : "maw-header-meta.maxpat",
					"background" : 1,
					"numoutlets" : 0,
					"args" : [ "An object for finding files on the Max search path.", "Christopher Baker|Programmer|http://christopherbaker.net,", "Minnesota Futures Grant|Minnesota Futures is a grant that gives out lots and lots of money.|http://minnesotafutures.org,Department of Art|Unsure what to say about this.|http://art.umn.edu,", "� University of Minnesota, 2009-2010: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi urna enim, ullamcorper et mattis eu, venenatis aliquam orci. Quisque nunc diam, dictum quis mattis vitae, faucibus eget felis. Morbi ornare dolor quis sem commodo vulputate. In ac ultrices diam." ],
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"patching_rect" : [ 415.0, 10.0, 400.0, 90.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_examples",
					"id" : "obj-11",
					"numinlets" : 0,
					"name" : "maw-header-examples.maxpat",
					"background" : 1,
					"numoutlets" : 0,
					"args" : [  ],
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"patching_rect" : [ 876.0, 13.0, 131.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_related",
					"id" : "obj-13",
					"numinlets" : 0,
					"name" : "maw-header-related-objects.maxpat",
					"background" : 1,
					"numoutlets" : 0,
					"args" : [ "maw.util.showfolder", "maw.util.paths" ],
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"patching_rect" : [ 876.0, 57.0, 131.0, 40.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-24", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
