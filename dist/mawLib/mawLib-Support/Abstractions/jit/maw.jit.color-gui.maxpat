{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 350.0, 250.0, 984.0, 694.0 ],
		"bglocked" : 0,
		"defrect" : [ 350.0, 250.0, 984.0, 694.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"maxclass" : "newobj",
					"text" : "unpack 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0. 0.",
					"outlettype" : [ "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float", "float" ],
					"fontname" : "Arial",
					"patching_rect" : [ 752.0, 104.0, 209.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-8",
					"numoutlets" : 12
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 812.0, 6.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"id" : "obj-6",
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "H",
					"presentation_rect" : [ 178.149277, 24.0, 19.0, 17.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 239.0, 24.0, 34.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "M",
					"presentation_rect" : [ 167.149277, 24.0, 19.0, 17.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 222.0, 24.0, 32.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-15",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "L",
					"presentation_rect" : [ 156.502228, 24.0, 19.0, 17.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 205.0, 24.0, 34.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-16",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "H",
					"presentation_rect" : [ 141.749756, 24.0, 19.0, 17.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 177.0, 24.0, 34.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-4",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "M",
					"presentation_rect" : [ 130.816742, 24.0, 19.0, 17.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 160.0, 24.0, 32.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-11",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "L",
					"presentation_rect" : [ 119.417221, 24.0, 19.0, 17.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 143.0, 24.0, 34.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-13",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 1. 1000.",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 50.0, 210.0, 83.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-5",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1 0",
					"outlettype" : [ "bang", "bang", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 112.0, 80.0, 46.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-72",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route fade fadetime",
					"outlettype" : [ "", "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 205.0, 56.0, 114.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-71",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 750.0, 6.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"id" : "obj-70",
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 0.5",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"patching_rect" : [ 61.0, 158.0, 34.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-69",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line 0.",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 73.0, 242.0, 46.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 3,
					"id" : "obj-68",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 1. 1000.",
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 135.0, 210.0, 83.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"id" : "obj-65",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"patching_rect" : [ 105.0, 158.0, 27.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-64",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 0.",
					"outlettype" : [ "float" ],
					"fontname" : "Arial",
					"patching_rect" : [ 137.0, 158.0, 27.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-63",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line 0.",
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 135.0, 242.0, 46.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 3,
					"id" : "obj-62",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "time (ms)",
					"presentation_rect" : [ 181.647354, 249.0, 64.0, 17.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 224.0, 103.0, 64.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-28",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "number",
					"presentation_rect" : [ 174.647354, 232.0, 43.0, 17.0 ],
					"outlettype" : [ "int", "bang" ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 227.0, 119.0, 43.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-22",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "fade OUT",
					"presentation_rect" : [ 114.647362, 232.0, 49.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 167.0, 119.0, 49.0, 15.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-9",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "fade IN",
					"presentation_rect" : [ 70.647362, 232.0, 40.0, 15.0 ],
					"outlettype" : [ "" ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 119.0, 119.0, 40.0, 15.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 2,
					"id" : "obj-7",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "u664010670",
					"text" : "autopattr",
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 390.0, 11.0, 58.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"id" : "obj-3",
					"numoutlets" : 4,
					"restore" : 					{
						"blue_h" : [ 1.0 ],
						"blue_l" : [ 0.0 ],
						"blue_m" : [ 0.5 ],
						"green_h" : [ 1.0 ],
						"green_l" : [ 0.0 ],
						"green_m" : [ 0.5 ],
						"lum_h" : [ 1.0 ],
						"lum_l" : [ 0.0 ],
						"lum_m" : [ 0.5 ],
						"number" : [ 1000 ],
						"red_h" : [ 1.0 ],
						"red_l" : [ 0.0 ],
						"red_m" : [ 0.5 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 145.0, 546.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or...",
					"frgb" : [ 0.784314, 0.015686, 0.54902, 1.0 ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 656.0, 151.0, 28.0, 17.0 ],
					"fontsize" : 9.0,
					"textcolor" : [ 0.784314, 0.015686, 0.54902, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-2",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "H",
					"presentation_rect" : [ 103.883728, 24.0, 19.0, 17.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 584.0, 203.0, 34.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-23",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "M",
					"presentation_rect" : [ 92.484207, 24.0, 19.0, 17.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 548.0, 203.0, 32.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-24",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "L",
					"presentation_rect" : [ 82.0, 24.0, 19.0, 17.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 512.0, 203.0, 34.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-25",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "High",
					"presentation_rect" : [ 54.0, 24.0, 34.0, 17.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 461.0, 204.0, 34.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-26",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mid",
					"presentation_rect" : [ 38.0, 24.0, 32.0, 17.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 425.0, 204.0, 32.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-27",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Low",
					"presentation_rect" : [ 17.0, 24.0, 34.0, 17.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 389.0, 204.0, 34.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-29",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "blue_h",
					"prototypename" : "[0. 1.] vert small",
					"presentation_rect" : [ 180.730591, 38.0, 9.76437, 68.0 ],
					"outlettype" : [ "", "" ],
					"border_left" : 0,
					"thickness" : 1,
					"slidercolor" : [ 0.0, 0.019608, 0.415686, 1.0 ],
					"patching_rect" : [ 800.75, 216.0, 12.0, 75.0 ],
					"contdata" : 1,
					"presentation" : 1,
					"bgcolor" : [ 0.631373, 0.643137, 0.733333, 1.0 ],
					"setstyle" : 1,
					"numinlets" : 1,
					"id" : "obj-31",
					"setminmax" : [ 0.0, 1.0 ],
					"border_right" : 0,
					"numoutlets" : 2,
					"border_top" : 0,
					"border_bottom" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "blue_m",
					"prototypename" : "[0. 1.] vert small",
					"presentation_rect" : [ 170.484207, 38.0, 9.179396, 68.0 ],
					"outlettype" : [ "", "" ],
					"border_left" : 0,
					"thickness" : 1,
					"slidercolor" : [ 0.0, 0.019608, 0.415686, 1.0 ],
					"patching_rect" : [ 764.75, 216.0, 12.0, 75.0 ],
					"contdata" : 1,
					"presentation" : 1,
					"bgcolor" : [ 0.631373, 0.643137, 0.733333, 1.0 ],
					"setstyle" : 1,
					"numinlets" : 1,
					"id" : "obj-32",
					"setminmax" : [ 0.0, 1.0 ],
					"border_right" : 0,
					"numoutlets" : 2,
					"border_top" : 0,
					"border_bottom" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "blue_l",
					"prototypename" : "[0. 1.] vert small",
					"presentation_rect" : [ 159.484207, 38.0, 9.413876, 68.0 ],
					"outlettype" : [ "", "" ],
					"border_left" : 0,
					"thickness" : 1,
					"slidercolor" : [ 0.0, 0.019608, 0.415686, 1.0 ],
					"patching_rect" : [ 728.75, 216.0, 12.0, 75.0 ],
					"contdata" : 1,
					"presentation" : 1,
					"bgcolor" : [ 0.631373, 0.643137, 0.733333, 1.0 ],
					"setstyle" : 1,
					"numinlets" : 1,
					"id" : "obj-33",
					"setminmax" : [ 0.0, 1.0 ],
					"border_right" : 0,
					"numoutlets" : 2,
					"border_top" : 0,
					"border_bottom" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0. 0. 0.",
					"outlettype" : [ "" ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 468.0, 354.0, 56.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 3,
					"id" : "obj-34",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.fill #0levels 2",
					"outlettype" : [ "", "" ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 468.0, 375.0, 67.0, 17.0 ],
					"fontsize" : 9.0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-35",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "green_h",
					"prototypename" : "[0. 1.] vert small",
					"presentation_rect" : [ 145.484207, 38.0, 9.413875, 68.0 ],
					"outlettype" : [ "", "" ],
					"border_left" : 0,
					"thickness" : 1,
					"slidercolor" : [ 0.0, 0.392157, 0.0, 1.0 ],
					"patching_rect" : [ 692.75, 216.0, 12.0, 75.0 ],
					"contdata" : 1,
					"presentation" : 1,
					"bgcolor" : [ 0.631373, 0.756863, 0.643137, 1.0 ],
					"setstyle" : 1,
					"numinlets" : 1,
					"id" : "obj-37",
					"setminmax" : [ 0.0, 1.0 ],
					"border_right" : 0,
					"numoutlets" : 2,
					"border_top" : 0,
					"border_bottom" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "green_m",
					"prototypename" : "[0. 1.] vert small",
					"presentation_rect" : [ 134.484207, 38.0, 9.413875, 68.0 ],
					"outlettype" : [ "", "" ],
					"border_left" : 0,
					"thickness" : 1,
					"slidercolor" : [ 0.0, 0.392157, 0.0, 1.0 ],
					"patching_rect" : [ 656.75, 216.0, 12.0, 75.0 ],
					"contdata" : 1,
					"presentation" : 1,
					"bgcolor" : [ 0.631373, 0.756863, 0.643137, 1.0 ],
					"setstyle" : 1,
					"numinlets" : 1,
					"id" : "obj-38",
					"setminmax" : [ 0.0, 1.0 ],
					"border_right" : 0,
					"numoutlets" : 2,
					"border_top" : 0,
					"border_bottom" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "green_l",
					"prototypename" : "[0. 1.] vert small",
					"presentation_rect" : [ 123.484207, 38.0, 9.413875, 68.0 ],
					"outlettype" : [ "", "" ],
					"border_left" : 0,
					"thickness" : 1,
					"slidercolor" : [ 0.0, 0.392157, 0.0, 1.0 ],
					"patching_rect" : [ 620.75, 216.0, 12.0, 75.0 ],
					"contdata" : 1,
					"presentation" : 1,
					"bgcolor" : [ 0.631373, 0.756863, 0.643137, 1.0 ],
					"setstyle" : 1,
					"numinlets" : 1,
					"id" : "obj-39",
					"setminmax" : [ 0.0, 1.0 ],
					"border_right" : 0,
					"numoutlets" : 2,
					"border_top" : 0,
					"border_bottom" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0. 0. 0.",
					"outlettype" : [ "" ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 357.0, 354.0, 56.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 3,
					"id" : "obj-40",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.fill #0levels 1",
					"outlettype" : [ "", "" ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 357.0, 375.0, 67.0, 17.0 ],
					"fontsize" : 9.0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-41",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.matrix #0luma 1 float32 3",
					"outlettype" : [ "jit_matrix", "" ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 221.0, 246.0, 114.0, 17.0 ],
					"fontsize" : 9.0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-43",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "red_h",
					"prototypename" : "[0. 1.] vert small",
					"presentation_rect" : [ 107.484207, 38.0, 10.346889, 68.0 ],
					"outlettype" : [ "", "" ],
					"border_left" : 0,
					"thickness" : 1,
					"slidercolor" : [ 0.47451, 0.015686, 0.015686, 1.0 ],
					"patching_rect" : [ 584.75, 216.0, 12.0, 75.0 ],
					"contdata" : 1,
					"presentation" : 1,
					"bgcolor" : [ 0.698039, 0.6, 0.6, 1.0 ],
					"setstyle" : 1,
					"numinlets" : 1,
					"id" : "obj-44",
					"setminmax" : [ 0.0, 1.0 ],
					"border_right" : 0,
					"numoutlets" : 2,
					"border_top" : 0,
					"border_bottom" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "red_m",
					"prototypename" : "[0. 1.] vert small",
					"presentation_rect" : [ 95.484207, 38.0, 10.346889, 68.0 ],
					"outlettype" : [ "", "" ],
					"border_left" : 0,
					"thickness" : 1,
					"slidercolor" : [ 0.47451, 0.015686, 0.015686, 1.0 ],
					"patching_rect" : [ 548.75, 216.0, 12.0, 75.0 ],
					"contdata" : 1,
					"presentation" : 1,
					"bgcolor" : [ 0.698039, 0.6, 0.6, 1.0 ],
					"setstyle" : 1,
					"numinlets" : 1,
					"id" : "obj-45",
					"setminmax" : [ 0.0, 1.0 ],
					"border_right" : 0,
					"numoutlets" : 2,
					"border_top" : 0,
					"border_bottom" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "red_l",
					"prototypename" : "[0. 1.] vert small",
					"presentation_rect" : [ 83.0, 38.0, 9.880383, 68.0 ],
					"outlettype" : [ "", "" ],
					"border_left" : 0,
					"thickness" : 1,
					"slidercolor" : [ 0.47451, 0.015686, 0.015686, 1.0 ],
					"patching_rect" : [ 512.0, 216.0, 12.0, 75.0 ],
					"contdata" : 1,
					"presentation" : 1,
					"bgcolor" : [ 0.698039, 0.6, 0.6, 1.0 ],
					"setstyle" : 1,
					"numinlets" : 1,
					"id" : "obj-46",
					"setminmax" : [ 0.0, 1.0 ],
					"border_right" : 0,
					"numoutlets" : 2,
					"border_top" : 0,
					"border_bottom" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0. 0. 0.",
					"outlettype" : [ "" ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 247.0, 354.0, 56.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 3,
					"id" : "obj-47",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.fill #0levels 0",
					"outlettype" : [ "", "" ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 247.0, 375.0, 67.0, 17.0 ],
					"fontsize" : 9.0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-48",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Luma Levels",
					"presentation_rect" : [ 22.0, 12.0, 64.0, 17.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 389.0, 192.0, 64.0, 17.0 ],
					"presentation" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-49",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "lum_h",
					"prototypename" : "[0. 1.] vert small",
					"presentation_rect" : [ 59.0, 38.0, 8.947368, 68.0 ],
					"outlettype" : [ "", "" ],
					"border_left" : 0,
					"thickness" : 1,
					"slidercolor" : [ 0.423529, 0.423529, 0.423529, 1.0 ],
					"patching_rect" : [ 461.0, 217.0, 12.0, 75.0 ],
					"contdata" : 1,
					"presentation" : 1,
					"bgcolor" : [ 0.756863, 0.756863, 0.756863, 1.0 ],
					"setstyle" : 1,
					"numinlets" : 1,
					"id" : "obj-51",
					"setminmax" : [ 0.0, 1.0 ],
					"border_right" : 0,
					"numoutlets" : 2,
					"border_top" : 0,
					"border_bottom" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "lum_m",
					"prototypename" : "[0. 1.] vert small",
					"presentation_rect" : [ 42.0, 38.0, 8.947368, 68.0 ],
					"outlettype" : [ "", "" ],
					"border_left" : 0,
					"thickness" : 1,
					"slidercolor" : [ 0.423529, 0.423529, 0.423529, 1.0 ],
					"patching_rect" : [ 425.0, 217.0, 12.0, 75.0 ],
					"contdata" : 1,
					"presentation" : 1,
					"bgcolor" : [ 0.756863, 0.756863, 0.756863, 1.0 ],
					"setstyle" : 1,
					"numinlets" : 1,
					"id" : "obj-52",
					"setminmax" : [ 0.0, 1.0 ],
					"border_right" : 0,
					"numoutlets" : 2,
					"border_top" : 0,
					"border_bottom" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "lum_l",
					"prototypename" : "[0. 1.] vert small",
					"presentation_rect" : [ 26.0, 38.0, 8.947368, 68.0 ],
					"outlettype" : [ "", "" ],
					"border_left" : 0,
					"thickness" : 1,
					"slidercolor" : [ 0.423529, 0.423529, 0.423529, 1.0 ],
					"patching_rect" : [ 389.0, 217.0, 12.0, 75.0 ],
					"contdata" : 1,
					"presentation" : 1,
					"bgcolor" : [ 0.756863, 0.756863, 0.756863, 1.0 ],
					"setstyle" : 1,
					"numinlets" : 1,
					"id" : "obj-53",
					"setminmax" : [ 0.0, 1.0 ],
					"border_right" : 0,
					"numoutlets" : 2,
					"border_top" : 0,
					"border_bottom" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0. 0. 0.",
					"outlettype" : [ "" ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 221.0, 204.0, 56.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 3,
					"id" : "obj-54",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"border" : 1.0,
					"patching_rect" : [ 238.0, 473.0, 255.0, 14.0 ],
					"onscreen" : 0,
					"numinlets" : 1,
					"id" : "obj-55",
					"numoutlets" : 2,
					"depthbuffer" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.matrix #0curves 3 float32 256 @interp 1",
					"outlettype" : [ "jit_matrix", "" ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 221.0, 449.0, 170.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-56",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.fill #0luma 0",
					"outlettype" : [ "", "" ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 221.0, 225.0, 64.0, 17.0 ],
					"fontsize" : 9.0,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-57",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"outlettype" : [ "", "" ],
					"border" : 1.0,
					"patching_rect" : [ 237.0, 428.0, 255.0, 14.0 ],
					"onscreen" : 0,
					"numinlets" : 1,
					"id" : "obj-58",
					"numoutlets" : 2,
					"depthbuffer" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.matrix #0levels 3 float32 3",
					"outlettype" : [ "jit_matrix", "" ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 221.0, 403.0, 117.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"id" : "obj-59",
					"numoutlets" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 11 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 10 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 9 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 8 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 7 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 6 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 5 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 4 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 3 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 1 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [ 17.0, 112.0, 204.0, 24.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 55.0, 278.0, 7.0, 104.0, 212.0, 13.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [ 230.5, 424.0, 246.5, 424.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 230.5, 470.0, 247.5, 470.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-54", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-54", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [ 256.5, 397.0, 230.5, 397.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-47", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-47", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [ 366.5, 397.0, 230.5, 397.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-40", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-40", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [ 477.5, 397.0, 230.5, 397.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
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
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-34", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-34", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-65", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-5", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
