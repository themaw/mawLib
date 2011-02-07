{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 319.0, 146.0, 1024.0, 698.0 ],
		"bgcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
		"bglocked" : 1,
		"defrect" : [ 319.0, 146.0, 1024.0, 698.0 ],
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
					"maxclass" : "jit.fpsgui",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 817.599976, 210.099915, 80.0, 36.0 ],
					"numoutlets" : 2,
					"id" : "obj-14",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"mode" : 4,
					"patching_rect" : [ 817.599976, 170.499939, 80.0, 36.0 ],
					"numoutlets" : 2,
					"id" : "obj-4",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"mode" : 3,
					"patching_rect" : [ 818.699951, 124.299927, 80.0, 36.0 ],
					"numoutlets" : 2,
					"id" : "obj-15",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "outputs a two-plane matrix:\n\nplane 1 => x values\nplane 2=> y values\n\nnew blobs are markeed by a -1 -1 (will be updating this)\n\nlook inside maw.jit.blobs.contours.draw (and the associated js file) for some more hints",
					"linecount" : 10,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 713.0, 270.0, 208.0, 110.0 ],
					"numoutlets" : 0,
					"id" : "obj-16",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "maw.jit.blobs.contours.draw",
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 205.5, 584.0, 159.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "jit_matrix" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0.75",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 290.0, 398.0, 89.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 514.0, 472.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-114",
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read arrows.gif",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 540.0, 117.0, 70.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-112",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"patching_rect" : [ 659.0, 412.0, 320.0, 240.0 ],
					"numoutlets" : 2,
					"depthbuffer" : 0,
					"id" : "obj-97",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 290.0, 423.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-90",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 444.0, 472.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-88",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 380.0, 472.0, 50.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-87",
					"outlettype" : [ "float", "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 493.0, 430.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-85",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 289.0, 472.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-84",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "usechainapproximation $1",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 491.0, 454.0, 116.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-82",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "maxblobs $1",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 509.0, 500.0, 62.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-81",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "minarea $1",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 381.0, 500.0, 56.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-80",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "maxarea $1",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 443.0, 500.0, 58.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-79",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "findholes $1",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 289.0, 500.0, 59.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-78",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "approximationtolerance $1",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 290.0, 447.0, 117.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-77",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 504.0, 112.0, 21.0, 21.0 ],
					"numoutlets" : 1,
					"id" : "obj-76",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 288.0, 160.0, 120.0 ],
					"numoutlets" : 2,
					"depthbuffer" : 0,
					"id" : "obj-2",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "maw.jit.blobs.contours",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 185.0, 548.0, 100.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-19",
					"outlettype" : [ "jit_matrix", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 172",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 602.0, 265.0, 35.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "int" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read working_raw_RIGHT.jpg",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 535.0, 170.0, 130.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"maximum" : 255,
					"patching_rect" : [ 283.0, 298.0, 35.0, 17.0 ],
					"numoutlets" : 2,
					"minimum" : 0,
					"id" : "obj-20",
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"fontname" : "Arial",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.op @op < @val 172",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 184.0, 325.0, 109.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-10",
					"outlettype" : [ "jit_matrix", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.rgb2luma",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 190.0, 290.0, 66.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-12",
					"outlettype" : [ "jit_matrix", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Convert to greyscale and threshold to obtain binary image.",
					"linecount" : 3,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 328.0, 296.0, 103.0, 38.0 ],
					"numoutlets" : 0,
					"id" : "obj-25",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use movie file input",
					"fontsize" : 9.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 454.0, 149.0, 135.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-26",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use live camera input",
					"fontsize" : 9.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 233.0, 149.0, 135.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-27",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 517.0, 201.0, 29.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-29",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "start",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 482.0, 201.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-30",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "read",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 450.0, 201.0, 30.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-31",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 435.0, 150.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-32",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 20",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 435.0, 174.0, 51.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-33",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.qt.movie 320 240",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 435.0, 229.0, 89.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-34",
					"outlettype" : [ "jit_matrix", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "settings",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 319.0, 200.0, 46.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-35",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "close",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 284.0, 200.0, 33.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-36",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 252.0, 200.0, 30.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-37",
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 213.0, 149.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-38",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 2",
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 213.0, 173.0, 46.0, 17.0 ],
					"numoutlets" : 1,
					"id" : "obj-39",
					"outlettype" : [ "bang" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.qt.grab 320 240 @vmode 2 @unique 1",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 213.0, 228.0, 175.0, 17.0 ],
					"numoutlets" : 2,
					"id" : "obj-40",
					"outlettype" : [ "jit_matrix", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "cv.jit.blobs.contours: find blob contours",
					"fontsize" : 24.0,
					"frgb" : [ 0.054902, 0.2, 0.270588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 14.0, 111.0, 470.0, 34.0 ],
					"numoutlets" : 0,
					"id" : "obj-41",
					"textcolor" : [ 0.054902, 0.2, 0.270588, 1.0 ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 205.0, 142.0, 214.0, 118.0 ],
					"numoutlets" : 0,
					"id" : "obj-42",
					"rounded" : 0,
					"bgcolor" : [ 0.435294, 0.498039, 0.494118, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 422.0, 142.0, 187.0, 118.0 ],
					"numoutlets" : 0,
					"id" : "obj-43",
					"rounded" : 0,
					"bgcolor" : [ 0.435294, 0.498039, 0.494118, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"border" : 1,
					"bordercolor" : [ 0.584314, 0.215686, 0.215686, 1.0 ],
					"patching_rect" : [ 177.0, 282.0, 274.0, 80.0 ],
					"numoutlets" : 0,
					"id" : "obj-44",
					"rounded" : 0,
					"bgcolor" : [ 0.968627, 0.972549, 0.972549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bordercolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
					"patching_rect" : [ 179.0, 285.0, 275.0, 81.0 ],
					"numoutlets" : 0,
					"id" : "obj-51",
					"rounded" : 0,
					"bgcolor" : [ 0.713726, 0.752941, 0.721569, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"bordercolor" : [ 0.776471, 0.776471, 0.776471, 1.0 ],
					"patching_rect" : [ 208.0, 145.0, 405.0, 119.0 ],
					"numoutlets" : 0,
					"id" : "obj-52",
					"rounded" : 0,
					"bgcolor" : [ 0.713726, 0.752941, 0.721569, 1.0 ]
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
					"args" : [ "maw.jit.blobs.contours", "http://dev.minneapolisartonwheels.org/projects/show/mawlib", "An external to find CV blob contours." ],
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
					"args" : [ "An external to find CV blob contours.", "Christopher Baker|Programmer|http://christopherbaker.net,", "Minnesota Futures Grant|Minnesota Futures is a grant that gives out lots and lots of money.|http://minnesotafutures.org,Collaborative Art|Cola is a wonderful drink and area of rearch.|http://cola.umn.edu,Department of Art|Unsure what to say about this.|http://art.umn.edu,", "� University of Minnesota, 2009-2010", "Computer Vision for Jitter (cv.jit)|A computer vision lib.|http://www.iamas.ac.jp/~jovan02/cv/," ],
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
					"args" : [ "cv.jit.blobs.bounds", "cv.jit.blobs.recon" ],
					"name" : "maw-header-related-objects.maxpat",
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 194.5, 614.0, 203.0, 614.0, 203.0, 572.0, 683.0, 572.0, 683.0, 473.0, 828.199951, 473.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-14", 0 ],
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
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 444.5, 318.0, 479.5, 318.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 459.5, 222.0, 444.5, 222.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 491.5, 222.0, 444.5, 222.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 526.5, 222.0, 444.5, 222.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 544.5, 193.0, 555.0, 193.0, 555.0, 222.0, 444.5, 222.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 444.5, 318.0, 199.5, 318.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-114", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 298.5, 535.0, 194.5, 535.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 500.5, 496.0, 503.0, 496.0, 503.0, 535.0, 194.5, 535.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 518.5, 535.0, 194.5, 535.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 452.5, 535.0, 194.5, 535.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 390.5, 535.0, 194.5, 535.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 299.5, 462.0, 194.5, 462.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-78", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 193.5, 543.0, 194.5, 543.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 222.5, 318.0, 479.5, 318.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 328.5, 221.0, 222.5, 221.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 293.5, 221.0, 222.5, 221.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 261.5, 221.0, 222.5, 221.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [ 193.5, 581.0, 355.0, 581.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
