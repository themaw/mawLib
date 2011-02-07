{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 183.0, 44.0, 1024.0, 698.0 ],
		"bgcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
		"bglocked" : 1,
		"defrect" : [ 183.0, 44.0, 1024.0, 698.0 ],
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
<<<<<<< .mine
					"maxclass" : "comment",
					"text" : "list of camera inputs",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 508.0, 363.0, 150.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-17",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "list of camera devices",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 508.0, 341.0, 150.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-15",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Green light to turn on",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 162.0, 320.0, 150.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-12",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
=======
					"maxclass" : "comment",
					"text" : "2.",
					"patching_rect" : [ 275.0, 320.0, 24.0, 20.0 ],
					"id" : "obj-22",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 263.0, 323.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1.",
					"patching_rect" : [ 273.0, 225.0, 24.0, 20.0 ],
					"id" : "obj-21",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Turn on camera",
					"patching_rect" : [ 156.0, 223.0, 95.0, 20.0 ],
					"id" : "obj-19",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1) Click on devices button to populate drop down menu.\n2) Select device from list.\n3) Click inputs button to populate drop down menu for possible inputs.\n4) Select input\n5) Turn on qmetro and push the green button to see video feed.",
					"linecount" : 5,
					"patching_rect" : [ 594.0, 193.0, 390.0, 75.0 ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "See list of available devices",
					"patching_rect" : [ 490.0, 361.0, 260.0, 20.0 ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 509.0, 363.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "See list of available device categories",
					"patching_rect" : [ 497.0, 339.0, 233.0, 20.0 ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
>>>>>>> .r457
					"maxclass" : "toggle",
					"patching_rect" : [ 289.0, 226.0, 20.0, 20.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 10",
					"patching_rect" : [ 289.0, 258.0, 65.0, 20.0 ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"patching_rect" : [ 289.0, 423.0, 80.0, 60.0 ],
					"id" : "obj-6",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 289.0, 318.0, 219.0, 64.0 ],
					"id" : "obj-2",
					"numinlets" : 5,
					"name" : "maw.jit.camera.maxpat",
					"numoutlets" : 1,
					"args" : [  ],
					"outlettype" : [ "jit_matrix" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.meta.mawLib",
					"background" : 1,
					"patching_rect" : [ 15.0, 662.0, 133.0, 20.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_footer_logo",
					"background" : 1,
					"patching_rect" : [ 696.0, 666.0, 315.0, 16.0 ],
					"id" : "obj-3",
					"numinlets" : 0,
					"name" : "maw-footer-logo.maxpat",
					"numoutlets" : 0,
					"args" : [  ],
					"presentation_rect" : [ 0.0, 0.0, 315.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "mawlib_body_panel",
					"bgcolor" : [ 0.47, 0.55, 0.24, 1.0 ],
					"background" : 1,
					"patching_rect" : [ 10.0, 105.0, 1004.0, 583.0 ],
					"id" : "obj-5",
					"numinlets" : 1,
					"rounded" : 15,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_title",
					"background" : 1,
					"patching_rect" : [ 10.0, 10.0, 400.0, 90.0 ],
					"id" : "obj-7",
					"numinlets" : 0,
					"name" : "maw-header-title.maxpat",
					"numoutlets" : 0,
					"args" : [ "maw.jit.camera", "http://dev.minneapolisartonwheels.org/projects/show/mawlib", "abstraction for getting video from a camera." ],
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_meta",
					"background" : 1,
					"patching_rect" : [ 415.0, 10.0, 400.0, 90.0 ],
					"id" : "obj-9",
					"numinlets" : 0,
					"name" : "maw-header-meta.maxpat",
					"numoutlets" : 0,
					"args" : [ "abstraction for getting video from a camera.", "Ali Momeni|Programmer|http://alimomeni.net,", "Minnesota Futures Grant|A generous granting agency.|http://minnesotafutures.org,Collaborative Art|Cola is a wonderful drink and area of rearch.|http://cola.umn.edu,Department of Art|Unsure what to say about this.|http://art.umn.edu,", "� University of Minnesota, 2009-2010", "Computer Vision for Jitter (cv.jit)|Computer vision for Jitter.|http://www.iamas.ac.jp/~jovan02/cv/,OpenCV|Intel Open Computer Vision Library|http://opencv.willowgarage.com/wiki/,Adaptive Threshold|Adaptive threshold function|http://www.seas.upenn.edu/~bensapp/opencvdocs/ref/opencvref_cv.htm#decl_cvAdaptiveThreshold," ],
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_examples",
					"background" : 1,
					"patching_rect" : [ 876.0, 13.0, 131.0, 40.0 ],
					"id" : "obj-11",
					"numinlets" : 0,
					"name" : "maw-header-examples.maxpat",
					"numoutlets" : 0,
					"args" : [  ],
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_related",
					"background" : 1,
					"patching_rect" : [ 876.0, 57.0, 131.0, 40.0 ],
					"id" : "obj-13",
					"numinlets" : 0,
					"name" : "maw-header-related-objects.maxpat",
					"numoutlets" : 0,
					"args" : [ "jit.fastblur", "jit.gl.slab" ],
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
