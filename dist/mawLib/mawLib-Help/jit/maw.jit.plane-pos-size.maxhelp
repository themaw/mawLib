{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 52.0, 127.0, 1024.0, 698.0 ],
		"bgcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
		"bglocked" : 1,
		"defrect" : [ 52.0, 127.0, 1024.0, 698.0 ],
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
					"text" : "list of input devices",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 402.0, 457.0, 150.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-10",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "green light to tun on",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 71.0, 423.0, 150.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-6",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "maw.jit.videoplane[1]",
					"text" : "maw.jit.videoplane-render output",
					"fontsize" : 12.0,
					"numinlets" : 3,
					"patching_rect" : [ 191.0, 259.0, 184.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "maw.jit.plane-pos-size[1]",
					"numinlets" : 0,
					"patching_rect" : [ 537.0, 359.0, 80.0, 90.0 ],
					"numoutlets" : 1,
					"id" : "obj-74",
					"args" : [  ],
					"name" : "maw.jit.plane-pos-size.maxpat",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "maw.jit.videoplane[2]",
					"text" : "maw.jit.videoplane output",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 537.0, 570.0, 145.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-75",
					"outlettype" : [ "jit_matrix", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 5,
					"patching_rect" : [ 191.0, 422.0, 219.0, 64.0 ],
					"numoutlets" : 1,
					"id" : "obj-60",
					"args" : [  ],
					"name" : "maw.jit.camera.maxpat",
					"outlettype" : [ "jit_matrix" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "maw.jit.plane-pos-size",
					"numinlets" : 0,
					"patching_rect" : [ 704.0, 359.0, 80.0, 90.0 ],
					"numoutlets" : 1,
					"id" : "obj-58",
					"args" : [  ],
					"name" : "maw.jit.plane-pos-size.maxpat",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "maw.jit.videoplane",
					"text" : "maw.jit.videoplane output",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 704.0, 570.0, 145.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-27",
					"outlettype" : [ "jit_matrix", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 191.0, 180.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-14",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 10",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 191.0, 225.0, 65.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.window output",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 188.0, 563.0, 96.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-29",
					"outlettype" : [ "bang", "" ],
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
					"id" : "obj-1",
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
					"id" : "obj-3",
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
					"id" : "obj-5",
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
					"id" : "obj-7",
					"args" : [ "maw.jit.plane-pos-size", "http://dev.minneapolisartonwheels.org/projects/show/mawlib", "Helper abstractions for playing video on a rendered plane." ],
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
					"id" : "obj-9",
					"args" : [ "Helper abstractions for playing video on a rendered plane.", "Ali Momeni|Programmer|http://alimomeni.net,", "Minnesota Futures Grant|A generous granting agency.|http://minnesotafutures.org,Collaborative Art|Cola is a wonderful drink and area of rearch.|http://cola.umn.edu,Department of Art|Unsure what to say about this.|http://art.umn.edu,", "� University of Minnesota, 2009-2010", "Computer Vision for Jitter (cv.jit)|Computer vision for Jitter.|http://www.iamas.ac.jp/~jovan02/cv/,OpenCV|Intel Open Computer Vision Library|http://opencv.willowgarage.com/wiki/," ],
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
					"id" : "obj-11",
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
					"id" : "obj-13",
					"args" : [ "jit.fastblur", "jit.gl.slab" ],
					"name" : "maw-header-related-objects.maxpat",
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ],
		"parameters" : 		{
			"obj-58::obj-129" : [ "aspectX[1]", "aspectX", 0 ],
			"obj-74::obj-129" : [ "aspectX", "aspectX", 0 ],
			"obj-58::obj-135" : [ "size[1]", "posX", 0 ],
			"obj-74::obj-128" : [ "aspectY", "aspectY", 0 ],
			"obj-58::obj-128" : [ "aspectY[1]", "aspectY", 0 ],
			"obj-74::obj-131" : [ "posX", "posX", 0 ],
			"obj-58::obj-70" : [ "posY[1]", "posY", 0 ],
			"obj-74::obj-135" : [ "size", "posX", 0 ],
			"obj-74::obj-70" : [ "posY", "posY", 0 ],
			"obj-58::obj-131" : [ "posX[1]", "posX", 0 ]
		}

	}

}
