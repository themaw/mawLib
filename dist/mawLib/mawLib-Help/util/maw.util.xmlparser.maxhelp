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
					"text" : "Loads from a URL",
					"id" : "obj-31",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 607.0, 242.0, 108.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Searches and loads from the Max search path or using absolute paths.",
					"linecount" : 3,
					"id" : "obj-30",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 515.0, 270.0, 169.0, 48.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load maw.util.xmlparser.xml",
					"id" : "obj-27",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 346.0, 269.0, 167.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bangs when loaded.",
					"id" : "obj-14",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 544.0, 554.0, 119.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 522.0, 553.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load http://search.twitter.com/search.atom?q=MAW",
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 319.0, 243.0, 283.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Uses nanoxml, modeled after Processing xml.core libraries.",
					"linecount" : 2,
					"id" : "obj-8",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 113.0, 341.0, 169.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "How should we interact with this -- particularly attributes?  In java, you would get an element and ask for a certain attribute by a certain name.  In Max5, this kind of iterative behaviour isn't as simple, unless it's all hard-coded in some way.",
					"linecount" : 9,
					"id" : "obj-17",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 117.0, 193.0, 169.0, 131.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getChildren layer/skeleton/bones/bone",
					"id" : "obj-18",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 587.0, 447.0, 216.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getChildren layer/skeleton",
					"id" : "obj-6",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 580.0, 418.0, 149.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getChildren layer/skeleton/bones/bone/attached/vertex",
					"id" : "obj-19",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 568.0, 385.0, 301.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getChildren layer/mesh/vertices",
					"id" : "obj-4",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 591.0, 479.0, 180.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.util.xmlparser",
					"id" : "obj-10",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "list", "" ],
					"patching_rect" : [ 409.0, 525.0, 132.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.meta.mawLib",
					"id" : "obj-28",
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
					"id" : "obj-54",
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
					"id" : "obj-56",
					"rounded" : 15,
					"numinlets" : 1,
					"background" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.47, 0.55, 0.24, 1.0 ],
					"patching_rect" : [ 10.0, 105.0, 1004.0, 583.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_title",
					"id" : "obj-58",
					"numinlets" : 0,
					"name" : "maw-header-title.maxpat",
					"background" : 1,
					"numoutlets" : 0,
					"args" : [ "maw.util.xmlparser", "http://dev.minneapolisartonwheels.org/mawLib/maw.util.xmlparser", "An abstraction for parsing XML files." ],
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"patching_rect" : [ 10.0, 10.0, 400.0, 90.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_meta",
					"id" : "obj-60",
					"numinlets" : 0,
					"name" : "maw-header-meta.maxpat",
					"background" : 1,
					"numoutlets" : 0,
					"args" : [ "This object helps parse XML files.", "Christopher Baker|Programmer|http://christopherbaker.net,", "Minnesota Futures Grant|Minnesota Futures is a grant that gives out lots and lots of money.|http://minnesotafutures.org,Department of Art|Unsure what to say about this.|http://art.umn.edu,", "� University of Minnesota, 2009-2010: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi urna enim, ullamcorper et mattis eu, venenatis aliquam orci. Quisque nunc diam, dictum quis mattis vitae, faucibus eget felis. Morbi ornare dolor quis sem commodo vulputate. In ac ultrices diam." ],
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"patching_rect" : [ 415.0, 10.0, 400.0, 90.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_examples",
					"id" : "obj-62",
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
					"id" : "obj-64",
					"numinlets" : 0,
					"name" : "maw-header-related-objects.maxpat",
					"background" : 1,
					"numoutlets" : 0,
					"args" : [  ],
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"patching_rect" : [ 876.0, 57.0, 131.0, 40.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
