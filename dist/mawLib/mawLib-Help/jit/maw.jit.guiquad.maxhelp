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
					"maxclass" : "newobj",
					"text" : "loadmess setIsLCD 1",
					"id" : "obj-9",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 531.0, 461.0, 125.0, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "mouse 236 80 0 0 0 0 0 0",
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 164.960022, 649.049988, 253.0, 18.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"id" : "obj-37",
					"numinlets" : 5,
					"patching_rect" : [ 22.0, 162.0, 219.0, 64.0 ],
					"numoutlets" : 1,
					"args" : [  ],
					"name" : "maw.jit.camera.maxpat",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p use-jit-gl-sketch",
					"id" : "obj-6",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 63.0, 271.0, 105.0, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 424.0, 472.0, 976.0, 418.0 ],
						"bglocked" : 0,
						"defrect" : [ 424.0, 472.0, 976.0, 418.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "jit.pwindow",
									"id" : "obj-2",
									"presentation_rect" : [ 0.0, 0.0, 320.0, 240.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 16.0, 91.0, 320.0, 240.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"name" : "gui_quad_95172"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "maw.jit.guiquad",
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 16.0, 61.0, 93.0, 20.0 ],
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "44 46 261 47 247 197 47 197",
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 483.0, 97.0, 266.0, 18.0 ],
									"fontsize" : 12.0,
									"numoutlets" : 1,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-1",
									"numinlets" : 0,
									"patching_rect" : [ 15.0, 25.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [ 99.5, 88.5, 739.5, 88.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 326.5, 346.0, 371.0, 346.0, 371.0, 52.0, 99.5, 52.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "send draw commands to jit.lcd",
					"linecount" : 2,
					"id" : "obj-64",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 394.0, 422.25, 116.0, 34.0 ],
					"fontsize" : 12.0,
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s to_lcd",
					"id" : "obj-61",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 606.0, 509.0, 52.0, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r to_lcd",
					"id" : "obj-60",
					"fontname" : "Arial",
					"numinlets" : 0,
					"patching_rect" : [ 36.0, 313.0, 50.0, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mouse Position Info",
					"id" : "obj-59",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 431.0, 648.25, 122.0, 20.0 ],
					"fontsize" : 12.0,
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-57",
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 112.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 2",
					"id" : "obj-58",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 22.0, 137.0, 58.0, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 10",
					"id" : "obj-15",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 663.0, 308.0, 79.0, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"id" : "obj-8",
					"fontname" : "Arial",
					"maximum" : 50,
					"numinlets" : 1,
					"patching_rect" : [ 610.0, 308.0, 50.0, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"minimum" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 1",
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 537.0, 160.050018, 72.0, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the quad based on size",
					"id" : "obj-41",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 693.0, 544.25, 149.0, 20.0 ],
					"fontsize" : 12.0,
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "based on \"guisize\" values",
					"id" : "obj-33",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 804.0, 433.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "based on \"size\" values",
					"id" : "obj-32",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 822.0, 411.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "based on 0-1 values",
					"id" : "obj-31",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 853.0, 391.0, 124.0, 20.0 ],
					"fontsize" : 12.0,
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set quads manually",
					"id" : "obj-28",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 548.0, 368.25, 116.0, 20.0 ],
					"fontsize" : 12.0,
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "setGuiQuadPoints 10 10 100 50 60 100 20 110",
					"id" : "obj-27",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 548.960022, 435.049988, 253.0, 18.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "setScaledQuadPoints 10 10 100 50 60 100 20 110",
					"id" : "obj-26",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 548.960022, 413.049988, 270.0, 18.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "setZeroToOneQuadPoints 0.2 0.2 0.8 0.2 0.8 0.8 0.2 0.8",
					"id" : "obj-25",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 547.960022, 392.049988, 301.0, 18.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the size of the corner hit area",
					"id" : "obj-22",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 693.0, 332.25, 168.0, 20.0 ],
					"fontsize" : 12.0,
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the color of the quad border (used for multiple quads)",
					"id" : "obj-21",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 672.0, 280.25, 307.0, 20.0 ],
					"fontsize" : 12.0,
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the scaled size of the quad output",
					"id" : "obj-20",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 656.0, 257.25, 191.0, 20.0 ],
					"fontsize" : 12.0,
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the size of the gui (used for adjusting to a larger gui)",
					"id" : "obj-19",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 649.0, 233.25, 289.0, 20.0 ],
					"fontsize" : 12.0,
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "name the quad",
					"id" : "obj-18",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 644.0, 210.049988, 92.0, 20.0 ],
					"fontsize" : 12.0,
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "is this quad drawn and active?",
					"id" : "obj-17",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 582.0, 185.050018, 175.0, 20.0 ],
					"fontsize" : 12.0,
					"textcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
					"numoutlets" : 0,
					"frgb" : [ 0.14902, 0.14902, 0.129412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "64 48 236 80 256 192 64 192",
					"linecount" : 3,
					"id" : "obj-3",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 618.960022, 569.049988, 73.0, 44.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 618.920959, 545.049988, 72.0, 20.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "size 1024 768",
					"id" : "obj-13",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 569.0, 258.25, 84.0, 18.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"id" : "obj-10",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 21.959991, 622.049988, 80.0, 36.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "color 255 0 0",
					"id" : "obj-140",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 579.0, 282.25, 91.0, 18.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "draw",
					"id" : "obj-136",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 355.0, 424.0, 36.0, 18.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "setName QUAD_0",
					"id" : "obj-86",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 534.960022, 210.049988, 107.0, 18.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "hitArea $1",
					"id" : "obj-85",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 610.0, 333.25, 77.0, 18.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"id" : "obj-45",
					"numinlets" : 1,
					"patching_rect" : [ 23.0, 378.890045, 320.0, 240.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b l l",
					"id" : "obj-44",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 234.050018, 59.5, 20.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.lcd 4 char 320 240",
					"id" : "obj-107",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 352.050018, 118.0, 20.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"id" : "obj-36",
					"numinlets" : 1,
					"patching_rect" : [ 510.960022, 160.050018, 20.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "isActive $1",
					"id" : "obj-34",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 510.960022, 185.050018, 67.0, 18.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "guiSize 320 240",
					"id" : "obj-29",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 554.0, 234.25, 94.0, 18.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js maw.jit.guiquad.js",
					"id" : "obj-4",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 510.920929, 484.049988, 114.0, 20.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.meta.mawLib",
					"id" : "obj-5",
					"fontname" : "Arial",
					"background" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 662.0, 133.0, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_footer_logo",
					"id" : "obj-16",
					"presentation_rect" : [ 0.0, 0.0, 315.0, 16.0 ],
					"background" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 696.0, 666.0, 315.0, 16.0 ],
					"numoutlets" : 0,
					"args" : [  ],
					"name" : "maw-footer-logo.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "mawlib_body_panel",
					"id" : "obj-24",
					"background" : 1,
					"numinlets" : 1,
					"rounded" : 15,
					"patching_rect" : [ 10.0, 105.0, 1004.0, 583.0 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.47, 0.55, 0.24, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_title",
					"id" : "obj-42",
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"background" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 10.0, 10.0, 400.0, 90.0 ],
					"numoutlets" : 0,
					"args" : [ "maw.jit.guiquad", "http://dev.minneapolisartonwheels.org/projects/show/mawlib", "Java script to keep track of gui-quad points." ],
					"name" : "maw-header-title.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_meta",
					"id" : "obj-46",
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"background" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 415.0, 10.0, 400.0, 90.0 ],
					"numoutlets" : 0,
					"args" : [ "Java script to keep track of gui-quad points.", "Christopher Baker|Programmer|http://christopherbaker.net,", "Minnesota Futures Grant|Minnesota Futures is a grant that gives out lots and lots of money.|http://minnesotafutures.org,Collaborative Art|Cola is a wonderful drink and area of rearch.|http://cola.umn.edu,Department of Art|Unsure what to say about this.|http://art.umn.edu,", "� University of Minnesota, 2009-2010", "Modeled after guiquad.cpp in Laser Tag|Laser Tag gui-quad.|http://muonic.net," ],
					"name" : "maw-header-meta.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_examples",
					"id" : "obj-48",
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"background" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 876.0, 13.0, 131.0, 40.0 ],
					"numoutlets" : 0,
					"args" : [  ],
					"name" : "maw-header-examples.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_related",
					"id" : "obj-50",
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"background" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 876.0, 57.0, 131.0, 40.0 ],
					"numoutlets" : 0,
					"args" : [ "jit.lcd", "maw.jit.homography" ],
					"name" : "maw-header-related-objects.maxpat"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 558.460022, 453.0, 520.420898, 453.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 558.460022, 432.0, 520.420898, 432.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 557.460022, 411.0, 520.420898, 411.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 520.420898, 531.0, 628.420959, 531.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 578.5, 322.0, 520.420898, 322.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 544.460022, 283.0, 520.420898, 283.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 563.5, 298.0, 520.420898, 298.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 520.460022, 256.0, 520.420898, 256.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 619.5, 353.0, 520.420898, 353.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-140", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 588.5, 335.0, 520.420898, 335.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 333.5, 634.890015, 426.960449, 634.890015, 426.960449, 474.049988, 520.420898, 474.049988 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-136", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 364.5, 459.0, 520.420898, 459.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-107", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 0,
					"midpoints" : [ 45.5, 339.0, 31.5, 339.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 1 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [ 333.5, 633.470032, 408.460022, 633.470032 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 1 ],
					"destination" : [ "obj-136", 0 ],
					"hidden" : 0,
					"midpoints" : [ 45.0, 305.0, 364.5, 305.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 2 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 0,
					"midpoints" : [ 58.5, 271.0, 31.5, 271.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 0,
					"midpoints" : [ 31.5, 256.0, 31.5, 256.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 3 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
