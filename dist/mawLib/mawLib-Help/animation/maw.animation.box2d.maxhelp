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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p examples",
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 227.0, 263.0, 72.0, 20.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 50.0, 94.0, 640.0, 480.0 ],
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
						"boxes" : [  ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "make me ...",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 228.0, 240.0, 150.0, 20.0 ],
					"id" : "obj-4",
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
					"presentation_rect" : [ 24.0, 654.0, 0.0, 0.0 ],
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 15.0, 662.0, 133.0, 20.0 ],
					"background" : 1,
					"id" : "obj-6",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_footer_logo",
					"numinlets" : 0,
					"args" : [  ],
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 315.0, 16.0 ],
					"patching_rect" : [ 696.0, 666.0, 315.0, 16.0 ],
					"background" : 1,
					"id" : "obj-27",
					"name" : "maw-footer-logo.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "mawlib_body_panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.47, 0.55, 0.24, 1.0 ],
					"patching_rect" : [ 10.0, 105.0, 1004.0, 583.0 ],
					"background" : 1,
					"rounded" : 15,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_examples",
					"numinlets" : 0,
					"args" : [ "maw.animation.box2d.starter" ],
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"patching_rect" : [ 876.0, 13.0, 131.0, 40.0 ],
					"background" : 1,
					"id" : "obj-35",
					"name" : "maw-header-examples.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_related",
					"numinlets" : 0,
					"args" : [ "jit.gl.sketch" ],
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"patching_rect" : [ 876.0, 57.0, 131.0, 40.0 ],
					"background" : 1,
					"id" : "obj-37",
					"name" : "maw-header-related-objects.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_title",
					"numinlets" : 0,
					"args" : [ "maw.animation.box2d", "http://dev.minneapolisartonwheels.org/projects/show/maw-animation-box2d", "A wrapper for the outstanding box2d physics engine." ],
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"patching_rect" : [ 10.0, 10.0, 400.0, 90.0 ],
					"background" : 1,
					"id" : "obj-40",
					"name" : "maw-header-title.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_meta",
					"numinlets" : 0,
					"args" : [ "This object is a wrapper for the box2d physics engine.  Box2d includes support for complex 2d collisions, and fast physics simulations.", "Christopher Baker|Box2d Max Wrapper|http://christopherbaker.net,", "Minnesota Futures Grant|Minnesota Futures is a grant that gives out lots and lots of money.|http://minnesotafutures.org,Collaborative Art|Cola is a wonderful drink and area of rearch.|http://cola.umn.edu,Department of Art|Unsure what to say about this.|http://art.umn.edu,", "� University of Minnesota, 2009-2010", "Box2d Physics Library|A c++ 2D physics library.|http://www.box2d.org/,Max/MSP externals in C++|Graham Wakefield|http://www.mat.ucsb.edu/~wakefield/maxcpp.htm," ],
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"patching_rect" : [ 415.0, 10.0, 400.0, 90.0 ],
					"background" : 1,
					"id" : "obj-8",
					"name" : "maw-header-meta.maxpat"
				}

			}
 ],
		"lines" : [  ]
	}

}
