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
					"text" : "loadmess 9",
					"id" : "obj-6",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 648.0, 342.0, 72.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Kernel Size",
					"id" : "obj-8",
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 636.0, 318.0, 90.0, 20.0 ],
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 585.0, 318.0, 50.0, 20.0 ],
					"outlettype" : [ "int", "bang" ],
					"minimum" : 1,
					"maximum" : 159,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "kernel $1",
					"id" : "obj-11",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 585.0, 342.0, 60.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Note: Kernel size must be odd and between between and 160 pixels.  Invalid values are rounded down to the nearest odd number.",
					"linecount" : 3,
					"id" : "obj-127",
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 751.0, 119.0, 259.0, 48.0 ],
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 9",
					"id" : "obj-124",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 162.0, 342.0, 72.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "maw.jit.median",
					"id" : "obj-121",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 539.0, 382.0, 91.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"id" : "obj-122",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 539.0, 409.0, 320.0, 240.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 127",
					"id" : "obj-102",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 74.0, 262.0, 85.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Kernel Size",
					"id" : "obj-101",
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 150.0, 318.0, 90.0, 20.0 ],
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Binary threshold level",
					"id" : "obj-89",
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 212.0, 261.5, 133.0, 20.0 ],
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-86",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 99.0, 318.0, 50.0, 20.0 ],
					"outlettype" : [ "int", "bang" ],
					"minimum" : 1,
					"maximum" : 159,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "kernel $1",
					"id" : "obj-85",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 99.0, 342.0, 60.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l l",
					"id" : "obj-83",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 45.0, 231.0, 32.5, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-82",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 159.0, 261.5, 50.0, 20.0 ],
					"outlettype" : [ "int", "bang" ],
					"minimum" : 0,
					"maximum" : 255,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "maw.jit.binarythreshold",
					"id" : "obj-80",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 45.0, 285.5, 133.0, 20.0 ],
					"outlettype" : [ "jit_matrix" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "maw.jit.median",
					"id" : "obj-78",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 45.0, 382.0, 91.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use movie file input",
					"id" : "obj-76",
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 307.0, 135.0, 156.0, 20.0 ],
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use live camera input",
					"id" : "obj-75",
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 66.0, 135.0, 153.0, 20.0 ],
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.qt.movie 320 240 @unique 1",
					"id" : "obj-31",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 286.0, 189.0, 176.0, 20.0 ],
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-32",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 286.0, 135.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"id" : "obj-33",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 433.0, 160.0, 33.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "start",
					"id" : "obj-34",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 394.0, 160.0, 34.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read",
					"id" : "obj-35",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 355.0, 160.0, 35.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 2",
					"id" : "obj-36",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 286.0, 160.0, 58.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.qt.grab 320 240 @vmode 2 @unique 1",
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 45.0, 189.0, 230.0, 20.0 ],
					"outlettype" : [ "jit_matrix", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 45.0, 135.0, 20.0, 20.0 ],
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "settings",
					"id" : "obj-12",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 193.5, 160.0, 52.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "close",
					"id" : "obj-9",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 152.5, 160.0, 39.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"id" : "obj-7",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 114.0, 160.0, 37.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 2",
					"id" : "obj-4",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontname" : "Arial",
					"patching_rect" : [ 45.0, 160.0, 58.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"id" : "obj-20",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 45.0, 409.0, 320.0, 240.0 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.meta.mawLib",
					"id" : "obj-22",
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 662.0, 133.0, 20.0 ],
					"background" : 1,
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_footer_logo",
					"id" : "obj-62",
					"name" : "maw-footer-logo.maxpat",
					"numinlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 315.0, 16.0 ],
					"numoutlets" : 0,
					"args" : [  ],
					"patching_rect" : [ 696.0, 666.0, 315.0, 16.0 ],
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "mawlib_body_panel",
					"id" : "obj-114",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 105.0, 1004.0, 583.0 ],
					"background" : 1,
					"rounded" : 15,
					"bgcolor" : [ 0.47, 0.55, 0.24, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_title",
					"id" : "obj-2",
					"name" : "maw-header-title.maxpat",
					"numinlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"numoutlets" : 0,
					"args" : [ "maw.jit.median", "http://dev.minneapolisartonwheels.org/projects/show/mawlib", "An external for the OpenCV Median function." ],
					"patching_rect" : [ 10.0, 10.0, 400.0, 90.0 ],
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_meta",
					"id" : "obj-5",
					"name" : "maw-header-meta.maxpat",
					"numinlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"numoutlets" : 0,
					"args" : [ "An external for the OpenCV Median function.  In the future, this object will be incorporated into the cv.jit package.", "Christopher Baker|Programmer|http://christopherbaker.net,", "Minnesota Futures Grant|A generous granting agency.|http://minnesotafutures.org,Collaborative Art|Cola is a wonderful drink and area of rearch.|http://cola.umn.edu,Department of Art|Unsure what to say about this.|http://art.umn.edu,", "� University of Minnesota, 2009-2010", "Computer Vision for Jitter (cv.jit)|Computer vision for Jitter.|http://www.iamas.ac.jp/~jovan02/cv/,OpenCV|Intel Open Computer Vision Library|http://opencv.willowgarage.com/wiki/," ],
					"patching_rect" : [ 415.0, 10.0, 400.0, 90.0 ],
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_examples",
					"id" : "obj-14",
					"name" : "maw-header-examples.maxpat",
					"numinlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"numoutlets" : 0,
					"args" : [  ],
					"patching_rect" : [ 876.0, 13.0, 131.0, 40.0 ],
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_related",
					"id" : "obj-16",
					"name" : "maw-header-related-objects.maxpat",
					"numinlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"numoutlets" : 0,
					"args" : [ "jit.fastblur", "jit.gl.slab" ],
					"patching_rect" : [ 876.0, 57.0, 131.0, 40.0 ],
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 364.5, 183.0, 295.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 403.5, 183.0, 295.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 442.5, 183.0, 295.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [ 295.5, 183.0, 295.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 54.5, 183.0, 54.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 123.5, 183.0, 54.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 162.0, 183.0, 54.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 203.0, 183.0, 54.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [ 295.5, 219.0, 54.5, 219.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-80", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-124", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [ 108.5, 373.0, 54.5, 373.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-121", 0 ],
					"hidden" : 0,
					"midpoints" : [ 594.5, 375.0, 548.5, 375.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 1 ],
					"destination" : [ "obj-121", 0 ],
					"hidden" : 0,
					"midpoints" : [ 68.0, 255.0, 548.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-121", 0 ],
					"destination" : [ "obj-122", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
