{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 297.0, 44.0, 1143.0, 735.0 ],
		"bglocked" : 0,
		"defrect" : [ 297.0, 44.0, 1143.0, 735.0 ],
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
					"varname" : "u641003363",
					"text" : "autopattr",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-16",
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 336.0, 129.0, 59.5, 20.0 ],
					"restore" : 					{
						"export_fps" : [ 15 ],
						"frames_num" : [ 99 ],
						"toggle" : [ 1 ],
						"umenu" : [ 4 ],
						"umenu[1]" : [ 6 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "keys",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-13",
					"numoutlets" : 0,
					"presentation_rect" : [ 152.0, 86.0, 31.0, 18.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 688.0, 225.0, 30.0, 18.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "automatically advance to next frame at after recording",
					"numinlets" : 1,
					"id" : "obj-14",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 132.0, 86.0, 20.0, 20.0 ],
					"patching_rect" : [ 668.0, 223.0, 20.0, 20.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend dim",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-12",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 433.0, 123.0, 77.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route dim record recframe playframe jit.matrixset autoadvance",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-9",
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 433.0, 94.0, 341.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "SNAP!",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-153",
					"numoutlets" : 0,
					"presentation_rect" : [ 151.0, 184.0, 39.0, 18.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 233.0, 543.0, 66.0, 18.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : ".export movie",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-142",
					"numoutlets" : 0,
					"presentation_rect" : [ 98.401978, 162.350464, 96.0, 20.0 ],
					"fontname" : "Gill Sans Bold",
					"patching_rect" : [ 48.401978, 582.350464, 96.0, 20.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : ".saving / recalling",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-85",
					"numoutlets" : 0,
					"presentation_rect" : [ 75.401978, 112.350494, 122.0, 20.0 ],
					"fontname" : "Gill Sans Bold",
					"patching_rect" : [ 454.401978, 543.350464, 122.0, 20.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : ".recording / playback",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-63",
					"numoutlets" : 0,
					"presentation_rect" : [ 42.401978, 9.350494, 146.0, 20.0 ],
					"fontname" : "Gill Sans Bold",
					"patching_rect" : [ 79.401978, 94.350464, 138.0, 20.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-11",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 433.0, 57.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-10",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 427.0, 378.0, 132.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"id" : "obj-6",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 185.0, 227.0, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "fps",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-4",
					"numoutlets" : 0,
					"presentation_rect" : [ 17.0, 184.0, 24.0, 18.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 83.0, 421.0, 24.0, 18.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "record",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-5",
					"numoutlets" : 0,
					"presentation_rect" : [ 36.0, 86.0, 52.0, 18.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 784.0, 212.0, 183.0, 18.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"hint" : "space-bar",
					"numinlets" : 1,
					"id" : "obj-100",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"presentation_rect" : [ 12.0, 86.0, 20.0, 20.0 ],
					"patching_rect" : [ 567.0, 304.0, 20.0, 20.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 2 2",
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-97",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 347.0, 523.0, 54.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p export",
					"numinlets" : 8,
					"fontsize" : 12.0,
					"id" : "obj-96",
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 236.0, 522.0, 100.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 717.0, 339.0, 723.0, 498.0 ],
						"bglocked" : 0,
						"defrect" : [ 717.0, 339.0, 723.0, 498.0 ],
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
									"numinlets" : 1,
									"id" : "obj-18",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 567.0, 248.0, 80.0, 60.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-16",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 526.0, 206.0, 56.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print from",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-15",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 534.0, 142.0, 61.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 445.0, 146.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-10",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 427.0, 209.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "index $1",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-8",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 418.0, 380.0, 56.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 1",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-7",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 346.0, 340.0, 32.5, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "outputmatrix $1",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 316.0, 380.0, 93.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 241.0, 53.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r dims",
									"numinlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-58",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Gill Sans",
									"patching_rect" : [ 206.0, 248.0, 36.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jit.matrixset 1 4 char 320 240",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-27",
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontname" : "Gill Sans",
									"patching_rect" : [ 163.0, 329.0, 130.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-1",
									"numoutlets" : 0,
									"patching_rect" : [ 570.0, 411.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "- 1",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-17",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 454.0, 340.0, 32.5, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 2 i 1",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-14",
									"numoutlets" : 4,
									"outlettype" : [ "bang", "int", "int", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 396.0, 266.0, 59.5, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-13",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 434.0, 308.0, 52.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-4",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 396.0, 240.0, 32.5, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-2",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 507.0, 45.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "peak",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-26",
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 374.0, 173.0, 46.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-25",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 374.0, 137.0, 32.5, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-43",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 290.0, 55.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-44",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 351.0, 55.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-152",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 100.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-150",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 74.0, 192.0, 32.5, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf exportmovie %d %s %s",
									"numinlets" : 3,
									"fontsize" : 10.0,
									"id" : "obj-143",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Gill Sans",
									"patching_rect" : [ 65.0, 220.0, 133.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-72",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-73",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 87.0, 40.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-78",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 122.0, 40.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-81",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 179.0, 40.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-86",
									"numoutlets" : 0,
									"patching_rect" : [ 239.0, 424.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-143", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-143", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-150", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-152", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-152", 0 ],
									"destination" : [ "obj-150", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-150", 0 ],
									"destination" : [ "obj-143", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 0 ],
									"destination" : [ "obj-86", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-150", 0 ],
									"hidden" : 0,
									"midpoints" : [ 80.0, 160.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 2 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 443.0, 402.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 3 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 552.0, 306.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p save",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-68",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 929.0, 497.0, 46.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 904.0, 481.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 904.0, 481.0 ],
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
									"maxclass" : "message",
									"text" : "outmatrix $1",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-16",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 399.0, 388.0, 78.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-9",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 314.0, 238.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store 1",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-42",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 637.0, 249.0, 47.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b s b",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-112",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 418.0, 173.0, 46.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-108",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 310.0, 111.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog fold",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-109",
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 292.0, 177.0, 92.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf write %s/%s.json",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-72",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 435.0, 287.0, 137.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf write %s/%s.jxf",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-69",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 266.0, 284.0, 127.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route symbol",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-61",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 410.0, 203.0, 79.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-60",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 420.0, 100.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dialog Enter Project Name",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-56",
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 422.0, 139.0, 151.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-54",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 420.0, 40.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-59",
									"numoutlets" : 0,
									"patching_rect" : [ 266.0, 367.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-62",
									"numoutlets" : 0,
									"patching_rect" : [ 531.0, 367.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-59", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-72", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 1 ],
									"destination" : [ "obj-72", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-69", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 1 ],
									"destination" : [ "obj-69", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-112", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 1 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 2 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-112", 0 ],
									"destination" : [ "obj-108", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-109", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-109", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-108", 0 ],
									"destination" : [ "obj-109", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-18",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 938.0, 574.0, 24.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route read",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-8",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 970.0, 569.0, 65.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "quality",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-149",
					"numoutlets" : 0,
					"presentation_rect" : [ 88.0, 184.0, 41.0, 18.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 250.0, 421.0, 75.0, 18.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "codec",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-148",
					"numoutlets" : 0,
					"presentation_rect" : [ 47.0, 184.0, 37.0, 18.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 158.0, 421.0, 65.0, 18.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-146",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 88.0, 202.0, 55.0, 20.0 ],
					"fontname" : "Trebuchet MS",
					"items" : [ "lossless", ",", "max", ",", "min", ",", "low", ",", "normal", ",", "high" ],
					"patching_rect" : [ 243.0, 435.0, 67.0, 20.0 ],
					"presentation" : 1,
					"arrow" : 0,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "umenu[1]",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-147",
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 47.0, 202.0, 41.0, 20.0 ],
					"fontname" : "Trebuchet MS",
					"items" : [ "raw", ",", "cinepak", ",", "graphics", ",", "animation", ",", "video", ",", "componentvideo", ",", "jpeg", ",", "mjpega", ",", "mjpegb", ",", "sgi", ",", "planarrgb", ",", "macpaint", ",", "gif", ",", "photocd", ",", "qdgx", ",", "avrjpeg", ",", "opendmljpeg", ",", "bmp", ",", "winraw", ",", "vector", ",", "qd", ",", "h261", ",", "h263", ",", "dvntsc", ",", "dvpal", ",", "dvprontsc", ",", "dvpropal", ",", "flc", ",", "targa", ",", "png", ",", "tiff", ",", "componentvideosigned", ",", "componentvideounsigned", ",", "cmyk", ",", "microsoft", ",", "sorenson", ",", "indeo4", ",", "argb64", ",", "rgb48", ",", "alphagrey32", ",", "grey16", ",", "mpegyuv420", ",", "yuv420", ",", "sorensonyuv9" ],
					"patching_rect" : [ 135.0, 435.0, 100.0, 20.0 ],
					"presentation" : 1,
					"arrow" : 0,
					"types" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b 1",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-139",
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 606.0, 465.0, 32.5, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route read",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-138",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 606.0, 443.0, 56.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"hint" : "click, then locate the .json file for your project",
					"text" : "load",
					"bgcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-133",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 153.0, 135.0, 33.0, 18.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 1002.0, 437.0, 39.0, 18.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p load",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-132",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 999.0, 478.0, 43.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
									"maxclass" : "newobj",
									"text" : "prepend read",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-125",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 140.0, 325.0, 82.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp .json @substitute .jxf",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-124",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 137.0, 289.0, 161.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend read",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-122",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 426.0, 294.0, 82.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-104",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 115.0, 100.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog JSON",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-96",
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 115.0, 129.0, 105.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-129",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 115.0, 40.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-130",
									"numoutlets" : 0,
									"patching_rect" : [ 426.0, 409.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-131",
									"numoutlets" : 0,
									"patching_rect" : [ 140.0, 405.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-124", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-122", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-129", 0 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-125", 0 ],
									"destination" : [ "obj-131", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-124", 0 ],
									"destination" : [ "obj-125", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-122", 0 ],
									"destination" : [ "obj-130", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-104", 0 ],
									"destination" : [ "obj-96", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "maw.stopmotion",
					"text" : "pattrstorage maw.stopmotion",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"id" : "obj-52",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 970.0, 547.5, 127.0, 17.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"client_rect" : [ 533, 258, 1215, 970 ],
						"storage_rect" : [ 25, 69, 897, 817 ],
						"paraminitmode" : 0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "- 1",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"id" : "obj-102",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"fontname" : "Arial",
					"patching_rect" : [ 433.0, 224.0, 32.5, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "maximum $1, minimum 0",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"id" : "obj-101",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 425.0, 273.0, 122.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p apple remote",
					"numinlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-53",
					"numoutlets" : 0,
					"fontname" : "Arial",
					"patching_rect" : [ 819.0, 198.0, 91.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
									"maxclass" : "comment",
									"text" : "Can't open multiple aka.appleremote objects.",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"frgb" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"textcolor" : [ 1.0, 0.360784, 0.682353, 1.0 ],
									"id" : "obj-1",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 81.0, 196.0, 212.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Apple Remote buttons' behavior is a little different from a standard keyboard.",
									"linecount" : 2,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-2",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 190.0, 319.0, 195.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Just a image",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"frgb" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
									"textcolor" : [ 0.760784, 0.709804, 0.811765, 1.0 ],
									"id" : "obj-3",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 393.0, 331.0, 69.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Argument: (none);\rInlet: int, message;\rOutlet: list;\r",
									"linecount" : 3,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"frgb" : [ 0.6, 0.4, 0.6, 1.0 ],
									"textcolor" : [ 0.6, 0.4, 0.6, 1.0 ],
									"id" : "obj-4",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 341.0, 108.0, 104.0, 38.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "aka.appleremote",
									"numinlets" : 1,
									"fontsize" : 18.0,
									"frgb" : [ 0.6, 0.4, 0.6, 1.0 ],
									"textcolor" : [ 0.6, 0.4, 0.6, 1.0 ],
									"id" : "obj-5",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 58.0, 107.0, 237.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Apple Remote Handler (deactivating Front Row)",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"frgb" : [ 0.6, 0.4, 0.6, 1.0 ],
									"textcolor" : [ 0.6, 0.4, 0.6, 1.0 ],
									"id" : "obj-6",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 60.0, 132.0, 223.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"bgcolor" : [ 1.0, 0.784314, 0.784314, 1.0 ],
									"rounded" : 0,
									"numinlets" : 1,
									"id" : "obj-7",
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 100.0, 400.0, 50.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Thanks to Mr. Martin Kahr for his 'Apple Remote Test'.",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-8",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 82.0, 448.0, 299.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Sleep",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-9",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 312.0, 430.0, 33.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hold",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-10",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 279.0, 430.0, 33.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hold",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-11",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 345.0, 430.0, 33.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-12",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 345.0, 401.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-13",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 312.0, 401.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-14",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 279.0, 401.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-15",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 246.0, 401.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-16",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 213.0, 401.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-17",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 180.0, 401.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-18",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 147.0, 401.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-19",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 114.0, 401.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-20",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 81.0, 401.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-21",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 345.0, 379.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ">||",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-22",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 312.0, 417.0, 33.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-23",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 312.0, 379.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "|<<",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-24",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 279.0, 417.0, 33.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-25",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 279.0, 379.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ">>|",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-26",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 345.0, 417.0, 33.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-27",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 246.0, 379.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "|<<",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-28",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 180.0, 417.0, 33.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-29",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 213.0, 379.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ">>|",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-30",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 246.0, 417.0, 33.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-31",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 180.0, 379.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ">||",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-32",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 213.0, 417.0, 33.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-33",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 147.0, 379.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Menu",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-34",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 141.0, 417.0, 33.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-35",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 114.0, 379.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-36",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 116.0, 417.0, 33.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-37",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 81.0, 379.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route 0 1 2 5 3 4 7 8 6",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-38",
									"numoutlets" : 10,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 81.0, 353.0, 314.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "'exclusive 1'(default) ignores Front Row.",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-39",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 188.0, 279.0, 201.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "'exclusive' sets the device open mode.",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-40",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 188.0, 266.0, 201.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0 or 'close' closes Apple Remote device.",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-41",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 81.0, 183.0, 212.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set 1",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-42",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 139.0, 249.0, 77.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "close",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"id" : "obj-43",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 162.0, 213.0, 33.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "open",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"id" : "obj-44",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 122.0, 213.0, 30.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print appleremote",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-45",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 96.0, 328.0, 90.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "exclusive $1",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"id" : "obj-46",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 120.0, 271.0, 68.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-47",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 120.0, 249.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-48",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 81.0, 213.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "aka.appleremote",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-49",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 81.0, 300.0, 83.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1 or 'open' opens Apple Remote device.",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-50",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 81.0, 170.0, 212.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "+",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-51",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 83.0, 417.0, 33.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "fpic",
									"embed" : 1,
									"numinlets" : 1,
									"id" : "obj-52",
									"numoutlets" : 0,
									"patching_rect" : [ 396.0, 191.0, 54.0, 140.0 ],
									"data" : [ 6536, "", "IBkSG0fBZn....PCIgDQRA...XC....iHX....vMTnky....DLmPIQEBHf.B7g.YHB..Y7SRDEDU3wY0ckriirbc8biHRlYRxhrXWCcK0u90.VBdg2489Wv.FZus+B72ng2a.swqkfLrvS8PMwhC4TDWuHFxHSlbppteOoK.axJYFC23NehHYS+G+t+Y9O+e9eg+uGVh+HDXM..Av.f.A..lMtOYIF6RD09k1um5zFP9VYuNCFL.Xta6IW+Sr89L.fIBBhggMvv.RHfgHXH.AX.lAy.eHIA+c29N7O869W.8qgf+GIfGIB+2rAkP3lDD.eL1IlLfH+DkAfr22yc5C6zlBLFHGSQQ2OwVNiHPba6IB.rvsVwv.FrPhO.FiMFrMMGpwBIjrFfMgEV+pSXLH5n7E6DU91PP2cIIt8D.4uPGwJfvcYl8LDAh6tFGV7n3N1.ICjR.FSCTrPCgAffBDqACBFl.2NzCyTLMvEiYzC+kbeNpS67bW7bfa0jB2KCvB6kHFZ3jhxDn1zXvZ.rFF2ZroU83u1n8MuX.nAJfkWJaHn92+29Ww+vu9ifyRvRcMpYFBgBRpqw+Nquz94dlYPD4bNvcu8ftJEtWl8tRr1djerYDtN71jNUdNpaLLCilwXAPwS2ie+u++ATYQAOJME..00MPq0HKKcuS5eIIla8hxFC7rmQqgVHfLQAEXb+e9m.sYaMmjIQ41R7ziOg55Fb4kWhrrzvpMvP1DckXctWiIXa6utI3dmcWy.qWQxYKYbts8uZ6Weez8yFq7iALFMLrAiGOESuXNjRFJV2.AjP377wrAnWbK.D6JwcAcGlyqxvLCH.fgCeiu8swuZcBX894XDpMn.SNUZvV+TLG01nXkDbKN1dTvLz0UP4YBBV8086qiG3OauaBjko7Rp807P3nd9+60BBLHxwFAavtwxhcxQtwlYFrgghrlqQFiVi2iShAtVbPX+Dfaclvw2iY.tdH5zbQ2JGs8qJVDEamrK0mYMCbO6xX61u96oMTt+5cuOpiyhcFocr6bdLIqJiH35zspd5RrWOwb7BQ2I74zGwNU7jpiw3OiAl63Es2D6TYtXoVeRAffyiyiu5JUYWtlBg.Lyg281WfHqKZR.x4NmA.aBwE5LIs1jm1LZn6UE5Shv4oARgNzyHDQvXLnttFUUUnooAMMM1A06J2wnBRBoLAJkDIiFAgPfl55y1LfhxfI9c0qIuPOCIDDpqqw50qPQQAXlgRofRoPZZpUJIrdQ05FnMFTW2fpxRrZUEjRIxRSw37baZeZ8KxNOtMV28cR++zIgP.sViGe7Yrc6VjjjfYylgzzLHkR6.w1XNUM0PHjcjxdI5lMav5Uqv1MaP93wHKKKrv40BNGlyXXnLnwpJdjxP7MxKpkRIVs5Yrb4yHMKEWe80H0miIaW0ceDZsF+zO8SXxjIX974gIJQDTJEt7x4X1Eyb82RrZ0JLe9bjjjDjdGxdymzbHPhffhhRS4THuSg6u+dTVVhEKVfoSm.CyPaXvFSfo.rq5e9yeFe9yeFiGOFRoD444crIHR.h.lLcJFOYBd3gGvc2eOlMaFxyyQSSyQmWr2Vyohn.HHvAykJZkwt5e+82CgPf28t2AkRhlFMLN0Kiiw7eF.X5zoXxjIX1rYHIIAMMMPHZybwXzcFmqt5Jjllhu90uBsViISlzYwp6bpsLmXgpBPXyW8HBMeJQ2c2cPJk3latA..M0VmALyPaLnoooCiwLijjDbyM2.kR0IfJQTfA8SPiwfppJLYxDHkR74O+YXLFbwEW.cjjaXmKsLgJdkaHxXLAW4e9KeABoDWey0VIjwDjPwLU7Kiwfsa2BkRAi6dRRRBNRLFNxFhCS3555vBxm9zmfTHv3wi6nV1w1y0NgKuWkMn4NLbX.rtyE3okKAyLt95q..AstIHUZzZT2zfl5ZTWWiMa1Db6mjj3bBXqhvvLjRATpDjllhjjjPxwDYs27iuwXPZZJdyadCt6t6rgP7NT5qQAGxW1n9P4CdtiP0MokRIJKKw50qws2bMHPnowpuq05fKa+87zSOAlAt7xY3xEWh77bLJYDjRALFqK9ppJTTTfMa1.gfvzoSgTJcI81lyJyLpqqQVVFFOdLV97y3pqtpMal9LGgfqPEQjG4scgByol93iOhoSmfr7LTWqAyspc000X61s3okKwyKWhYylge3GdOlOeVjKXqMkTPPHSPZ1HbwrKPUUEVtbIdd0RLd7DjNJM3vIdxq0ZLc5Tb2c2gMa1X8p5reGj4XGisORHDX0pU..X5zKfV250yauTTTfGd3A77xmvG9vGvO9gO.RPvvFnMLLlFmcTqWK6PRPIE3p27Frd8J7v8OB5Bf7rrPw2FiIH8DBAxxxvlMaBAvs8EE8t+Ef.fgSstSIKdUgMa1fISFCoTfllFXbNL7duVtbId94U3Ce3C3ie7C.DrRyFs0Klu7diExAvF6psgQScCpqpPdVNt7x4X4SOhxxRHcwJ8LjeNkmmGbFE63fhbR3ulXeAvHxl+mwXv3wSB5+LycTAe7wGws2dM93G+QvLBswqRYLbGW79W9PALynppBYYYX5zoXoyIknijvRRoDRoBa2t0gGx9qGSDx5nWGQDEbSa8bYuSiaRUUUgGd7Qjjjfe7G+Q.fPl79IsE0ISKSXLsuXS3d8KhSlLADIvpUqgT1h8ers1nQIgEOJJTUeomvmfEEcCdmFEEEHIQYutochYzZTVTfpxR7t29VjkNBMM0tP.tIMb6Th6kgYX.flautgsfxoMFXXF0MMHKOEq2rBM5ZHjVX4bkyEpxmc12wRy99JDdDa6qF5smxxxrpUD5DPtrrDiRRv0W+F.XUAswDsrhg0VrDIAf6ECBL0tu.suXnMZnMZHURnMMntoFJk.de.DQv3T+7R3XnL1gwBhxdLmMqZ.kT0JpcFrFW7kwiGiQiRcCRaIC1EGAjBAPTNiDQPF4Lves.npQ1lUUUPJs0zAWeKDBHjRXXKp0GhTdev8cgXScw51FZskoH.RJflM.Dg77bHkRTUoCYOvQpKq1rAiFMBIIIvXLnrrLjRDQDRSS63DoMwYBkkkA6OkPhJpAjPfhxRXfwtMWGHTkR2Kw9PxnLCoRgMa1hGe5IToafgYrZ0JjnTXbZFxRG4hOocpgs8j1Xve4u7W.yLt5pqv74yCYmPDAoTFx8yK0LFsagwUHpVi+ve3OhjjDrd8FTq0nnn.SmLwZexsvluCi4fN24AiCpNLyfDDZLFTTTfskEfDBr94UXxzIPLdRDbrCCgViVipxRTVU1q9q1pnaueqKEstAZcCDJEzFFq2rERQMVuYMZz0vnMvjmaCi3GuAUE6QbjTqotFWd4kXxG+QPBIZZZBI4VVT31S31x16rxwLtZwBjkkiISFayeSoPdddvdINXuO6dabxFLhYLRove+u82BhjnnXKppqv82eOpJq1MYhgXrgzTUJIzZCFMJ0hsQSCHoDBBPfwPW2f5pZn0FHERan.zFvTPBb0atJ3gEBBoYYH0skU8CRaLbHXdccClOaDRjRjMJEMMFLRMBvXvzwSv8E1rSZIZGtP3KSvx4dsKCTRIHBnotxtMMtXMZs88z7TzXZPcSUGn0hkZ9PCjSk0h9LE1.C6KOS1lbswvHOeLzFarMa8dZT4JKxXLPojgfvD0tWYd9PDpgALX3yHv.gfff.ppJgTz5tmb0mknrZwOudc6V9DodrC5tQA30MM12cLicAvflFM1ts.JUBxymfFsw4M1XiK57rB.jNZjkYb4eZUiCVAPrOzeDBATJedYVQoWfKDBHEJjkNFqddMzZNTgbapM9Aoqq7Nt2MculwvnnnDKt7MHIQAiVacloMP2zV6mJIwl3.GuKNsiGPbthAwXa.yISlfppJTWW0wPkHBjPh77IffD2806h.ToaRoccNz98lcXVfmedERGkgqt5ZTU0VIguf1Zmp337wHIIIB8Fek.snYKDr6OHBDDvBcs.LCjmagKa85s.nMgU6KKSNa1LTUUi6e3IPRIfKFnomjxVCm8kV2.cScDtHLd94UnppA+vO7AHkpNdL8USTVVBgPfYyt.FlsopABBgpsdLxZhHfeuBYfVuKt8FFBLd7Drd8ZvLbkua0kEBBBACkRh4yuDaKJv8O7nsHQgcgQ2zBni0VRCcSsaOiakBO9viX65B7we7iXxjIn14vJtDIObB444X73wg4qESRQjVh0YnfHwANJILt3hK.QDVudcP0pUbaQZJQovkyuD00M3t6tGqWswhCn.tposIE2narY3aLnoVisEaw82eO..9M+1eCdyadCppp5fxUcD.QLyXwhEAfd1I4WpUUW49qAYMqaUEVr3R7kudGF41Uj9XCpMFHDR7lEWghhRrZ0Jrd8ZjLREp.lYCL5FzznQUUEppJAQBb0UWgat4sHQoPkKCEOt9wf9TTT3Pcd5NEYFyYVW8DTBSCXxGzrqyChrvrkOdLxysHPsXwhcVshaSddFxxRQQwVrsXKpKarRJmjl.gzQ43x4uAWbwLjkkAs1fhhxfpm26WUUE1tcKVudMRGMB2b0UAH7h0pXm6d6AEv.HDPQll1StvN6CriYYfqu5J7S+zOgmd7QLe97.5uwXRDxwjHLYxTLYxEAmNgUSg.IIIf.AsQihxpP9o889sYyFrZ0JvLi28t2gzrLaVLrGbH1YVDe1Qr1lBiP57E1sJz3OaWsE3su8cnooAKWtLjRSK1FlNLn2KHyrCdAEjRIDBApqqQQYg0dxIc7NH7peO+rcmWLFCd+6eOlMaV.5gXva1c9ZeWoIY2SbQDXkwpYdvSe6aeK9zm9D95c2g4ymCf1Z2jxt6kUefM88kulr33XwL2lMabdhY792+drXwhvtcFu3sOx57f7Em2khKsHFLkjjD7129V7ku7Yb+ceESlNEoiFACaPcUCDQfv32XPOPmDQXwhE3hKtnCZVd6IuMkeSDe+6ee3d8NKhlgv5Z2BKNCNj6HyR6oFH9btsSNdbWwsVqgRovu5W8N7v82iGe7QTllhzrbPPDxpHdwYznQQw.Yrc61fCh3fuEEEPq03xKuD2d6sHIIIfswv9saU+BGnIlA.AEaTCjz+tXnGmRjVqgPP3MWcExxywiO9HV9zS1x3SRfTIgfDfYxkPsHvXdb9iiQ4Src73wXwhEX1rYc.rw6d+Pj8HGI.SRnHsSU7H6Mle0uEnFJnFkllhau8FTTTfUqViUaVCcoFrgbRv3ZtLt5tzA6rjQiv74ywEWbAt3hKrputp.7wLAPmyxyvxNBFHASRPn.JAXXHyNNPhkZ1O2lwAGUlfe2HyyGi77w3x5Kw1xBTVTYkHUUnQqAarEj52VJkJIT34njjvhU3HQ3qg6DXJKi0BlWC41Th3hM2WYLdwZWbJZI+tXRDgoimfKlLsSBvd0IR31IKRF9932o1UuSVMDvcdHI6YXrQnbGGhvb7keNphc+1e+hkRYmZtrRb+Awb2XQ6ew8.DQfDDDLfvvPYyyos3vNa+4qj5WCV2XiuPFXvABczUUfbUPysU7FSc26IANjltnGBu9105UEHtrn9Rqvb7EIsrxF+hEwdFaumsvA5g8Ujy.sa3Mka+8wqgDLf8rEaOpsJPCOPwq9mxp39V8aUA+1yLcFK6ouzl8OE.Lc3I997.dzAoWlKs43c777dYj+.QakbUB.k+T43mJ6amPNF4iCAfNky3SaxzVaDTJUXO35mrc+wdeyA+348Q3y1k.Ao1cdE8qjCsR2dMenRf9R33IGf0QRQQA1tcKpqqcWymHss7lzzbjkkAkREhyMTedHJDdv8uLa2GBoAty4w2HxiG+c2cW37YbwEWzdD+fMFmulq0qWO3AAq+B0on4PDAAQvfN1XuLC6gx7+qe8qPHD3latoSfY+85OoNSmdAVudCd3gGfwXvjIS14Tt0mAGhYBu7YnPNFi7ZX7vcVqtdLlOspkwpre4KeAJkBWe80gx7aWsodNiLX5zoPoTgEizzzS57INDyy18RFDDPPlVHtOVpT6af7aIj+XLrXwhcrYZSUxlwg2wQccMRSSw74ywyO+b3.ocJ1a6T2H4drHX6iAhv32Cepqn8.r3NCTSSC1tcKlOe9NvJLT1HdUeu5qG6xsa214bLdNj+wyxaUIbmalSplrcwwCgIjTJQVVFX1hMhPJfTZc4KkBHn1cnAnMELua6ISlD124WBy4g1ymHueK4GhMBu6g5xC9e+DZKKKsPpQDZZXrd8JLZzHT3N9Pa2tEooY.N0ViK6eOCjOdLFMZDVudc.5giyH8sC87gs5Ak841p8IIpKi4eQH9YYIFoHuWOeP2llF7m9S+uHKOG000X5jo3wmdD2d6s3Se5SVuhiFAAQAbB+f6zjJkRn05NmJmSkBIY6psydHwF3Avg43Ws45Mj5XLC62Dumd5I.hPUcUnp4QiFgUqVgB2YgZ6lMgBJQTk.uzZB8BBqpHoZg6ENtN.i0gygL1YiWxIDRb6s1yKr+zfZc0Cb6s2Fv0..X4xk3latI.AWSSClLYxKlohmuJISv3q0h7bskAass1SW4VcSRRPUUELFCFMJAu6cuM.YFaLndgMvqPHv74WDzBt5pqBYk3OHy9f59Et8snZ+daE4fZg512NgvcJa51X3vAQbzJcs48kFfRylSn8HMXzM.vfDkDJo6XHyL7OkgRg.rw94sa21Y2bNtmwHe.LGbya2GcFBRHPj6+82M6g47PvoTJrZ0pNG271JmaWD51VqSmxxRTVV51Pu8mQ+tT6tqFXVmO.QaMKG2fcnrT71VylMCa2tEqVsJ3UKFbFe3h3vF9Ss582eOFOdbHkpSgnPTJWrK+72YyKZ3V84tUMiNW+Pk9q0ZjllhEKV3NJsOG7DFc2fYeFGx.t9e8qeEIIIsXz2ANgCxZn8v601FBRHDj8rTEmDbK0t55azwXtwiGCgPXwyurDSlLIpnRBdHuMFC1rYMVtbYXAIN+xCoJtqJtGWTMZW7XnHX9lguh+fad80WikKWhmd5ov4EQHrO9GdL6EBg6AIOKnpFKk5673PwOsLrOeQmsa7OOEeKHetdWd4kg87xtgc1yxQRRBxyyCRROJv9IucRtevkNtSEqwmBbmmX3SH69CSw0bIkRnTIt+t86ig9dei0PIaeHbP7GKW.MHPPwjD.C+TG7ZoXoQ+IaeIvKsdvXhf.1beADwPz7sj5OQ+drv0mXzZaJXbZ6lwYOHCnJ8ckHDBNyvAli8zs8yvf+Mj1oxb1UmhCeFwonH52UR6m6eVdOM5X26KAs4tyCa9hr6GoIGPvub8+eNrcNUxKCMrABJ7b6b9qXC84eIo3YgfI6NK9s103vnS88jnfyC.BBsKGq3DIO6t7Hv0cJs80v31jeC+E.HnrGLmuOAm8C5oTrZ+1cLJN.uu4r6uEDY2b8eIoiU9+ozdq1WTpFj6Q.YXbE6zb75LBGptnyaA83IA6164.foQ8+wJM3kPb3QDYn98717gtpewPo2B6Aw1c27kAT92Y5E4.yAUuW3rWaretiSMTl+mba8sKBTWU6uNewXy0E3kuMT+I6vES9RVD8+1YxtpnYls+VC.tkY7f5ybWr5GZm9O+7+1uj3Tb4evPFr8gw2VvI6OjXu9h79kl7wJsAqImyi8vW+s.CEnnxtX.H.GCX5t4248x7pLtCsMVk+0SclGLf+WFBAS1GZGWz.m37aijJnVDFbdfWmGMncXT9T9eOiH1k4wgD.uzTdha2v8w4Gq5fiqy1xuOzhg+U2a2rP9kF1fgLI1ycBvLDfcaKZrw2I3F+0pt5ez8OW0xcVf6LObXVBiy4QuyqX+7xheO9dd81huNatC0q66gGa2a9E.fy2CZnwO1Qh2FSsuEpgjH+RyT8o9HUwLGD9h923o5i3bv3e+3eP8dcX5nKztbdsIAOXrqiehAd8zoCA9PUZr6tk59d..x8zHcr8f9bJFbezKIakg7R2+jA01.3x6vBYup0s6qiNm52rSryW06fjC6d3geiIQHkp365k5R+j1Xt8TK1qlHBrC0dAycetVhs29djsAGR39Tu+86vH7YN7O..PJzPPgGwfyZ79qNhA.wBPPCiz.AXMr+JNw6v4+sDwPCv.RV.iYDTDOvS.9qfNNtEbu2e8T7OxL1iPqvePL2SC9tfT0vLVrWxWjCKVXOzXVTONMbEesav24jm4gVLO9Bc6hywOipmAsOl5Tk7669N1mGJrTfwnd6A8OWI7FOLCd9MFXdbJ3O19SjVTBjmSkymRf7CCSvok.b+1Oz4DIddH51f1e8W+VPe6yZ4zHh1iM12h9uuCiSET1yoph8o5xLsqWwuGoQMbe1UE7Xi6g99ghC6N.KCWs7KcSBFZBsa+ed2+PTr8ce+Bup8G66smySIzv97jexwwN03OeqnyI12Aii0mFBmhChPzQnVUr9+8wKJ8T66XZPmGGJo3Wuz47haczdaOphhgtoWqmw+Z.ltdRr96Px4SeaPH90SpVUOf3LOF5DhtuTiNGFIrqOg1LbaeIgZh2xpfyi39vi6wPvdc5c9tTW.Y6xXujsUJ1zou2wc7JdLmGCIo5yzuj8TyeHTN0Z2N77iNcFqelH6afOmLG1GcNEjFKkhWnUsSV6qc+kfc2N7PmP6SIY1gSg6ve+95K+OnqZci6+EDb+nI6ePOkRAxxRgRICO1TwSxg1urgjNGKa98w3L2k4NF00tBfHi6gDeDHhv+OvHwbRkqfOjI.....IUjSD4pPfIH" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [ 90.5, 323.0, 105.5, 323.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 90.0, 239.0, 90.5, 239.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 129.5, 293.0, 90.5, 293.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 131.5, 239.0, 90.5, 239.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [ 171.5, 239.0, 90.5, 239.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 2 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 3 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 4 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 5 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 6 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 7 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 8 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "auto",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-98",
					"numoutlets" : 0,
					"presentation_rect" : [ 95.0, 86.0, 31.0, 18.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 688.0, 192.0, 77.0, 18.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "automatically advance to next frame at after recording",
					"varname" : "toggle",
					"numinlets" : 1,
					"id" : "obj-95",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"presentation_rect" : [ 77.0, 86.0, 20.0, 20.0 ],
					"patching_rect" : [ 668.0, 190.0, 20.0, 20.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "matrixcount $1",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"id" : "obj-64",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial",
					"patching_rect" : [ 334.0, 273.0, 76.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "# frames",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-38",
					"numoutlets" : 0,
					"presentation_rect" : [ 13.0, 133.0, 49.0, 18.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 293.0, 207.0, 95.0, 18.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "frames_num",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-32",
					"numoutlets" : 2,
					"triangle" : 0,
					"outlettype" : [ "int", "bang" ],
					"presentation_rect" : [ 71.0, 133.0, 46.0, 20.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 305.0, 225.0, 54.0, 20.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "export_fps",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-21",
					"numoutlets" : 2,
					"triangle" : 0,
					"outlettype" : [ "int", "bang" ],
					"presentation_rect" : [ 12.0, 202.0, 33.0, 20.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 87.0, 435.0, 33.0, 20.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"hint" : "click, then locate the .json file for your project",
					"text" : "export",
					"bgcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-19",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 145.0, 203.0, 46.0, 18.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 36.0, 434.0, 46.0, 18.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "record frame\n",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-94",
					"numoutlets" : 0,
					"presentation_rect" : [ 12.0, 35.0, 72.0, 18.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 614.0, 257.0, 103.0, 18.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "play frame\n",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-93",
					"numoutlets" : 0,
					"presentation_rect" : [ 111.0, 35.0, 62.0, 18.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 747.0, 257.0, 105.0, 18.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p size",
					"numinlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-79",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 381.0, 403.0, 33.0, 18.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 640.0, 480.0 ],
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
									"maxclass" : "newobj",
									"text" : "/ 1.",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"id" : "obj-9",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Gill Sans",
									"patching_rect" : [ 346.0, 356.0, 32.5, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 1 1",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"id" : "obj-8",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Gill Sans",
									"patching_rect" : [ 256.0, 368.0, 44.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 1.",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"id" : "obj-7",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontname" : "Gill Sans",
									"patching_rect" : [ 392.0, 318.0, 32.5, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 640 640",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-5",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Gill Sans",
									"patching_rect" : [ 265.0, 314.0, 49.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 1 1",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-4",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Gill Sans",
									"patching_rect" : [ 277.0, 260.0, 54.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gswitch2",
									"numinlets" : 2,
									"id" : "obj-3",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 176.0, 301.0, 39.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "> 640",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"id" : "obj-2",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Gill Sans",
									"patching_rect" : [ 180.0, 227.0, 34.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 1 1",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-1",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontname" : "Gill Sans",
									"patching_rect" : [ 183.0, 181.0, 54.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route dim",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-62",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontname" : "Gill Sans",
									"patching_rect" : [ 50.0, 139.0, 51.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend size",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"id" : "obj-63",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Gill Sans",
									"patching_rect" : [ 159.0, 391.0, 62.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "r dims",
									"numinlets" : 0,
									"fontsize" : 10.0,
									"id" : "obj-64",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Gill Sans",
									"patching_rect" : [ 50.0, 100.0, 36.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-54",
									"numoutlets" : 0,
									"patching_rect" : [ 159.0, 429.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p keybpard",
					"numinlets" : 5,
					"fontsize" : 10.0,
					"id" : "obj-57",
					"numoutlets" : 3,
					"outlettype" : [ "bang", "int", "int" ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 576.0, 224.0, 73.0, 18.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 320.0, 58.0, 898.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 320.0, 58.0, 898.0, 480.0 ],
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
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-5",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 11.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-4",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 199.0, 22.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numinlets" : 2,
									"fontsize" : 9.0,
									"id" : "obj-2",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 137.0, 95.0, 32.5, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-53",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 419.0, 296.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-51",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 415.0, 261.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"fontsize" : 12.0,
									"id" : "obj-49",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 563.0, 96.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "int",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-47",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 404.0, 221.0, 32.5, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-40",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 436.0, 245.0, 57.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-3",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 576.0, 49.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-14",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 517.0, 49.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "del 30",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-13",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 245.0, 393.0, 43.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numinlets" : 2,
									"fontsize" : 12.0,
									"id" : "obj-12",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 170.0, 349.0, 34.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"id" : "obj-8",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 185.0, 299.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-6",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 229.0, 295.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"id" : "obj-1",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 369.0, 49.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 1",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-9",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 523.0, 215.0, 31.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 0",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-10",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 463.0, 216.0, 31.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter 0 199",
									"numinlets" : 5,
									"fontsize" : 9.0,
									"id" : "obj-11",
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 463.0, 326.0, 74.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-16",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 89.0, 269.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-17",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 109.0, 271.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-18",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 129.0, 271.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"id" : "obj-19",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 167.0, 272.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 1 b",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-20",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "int", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 376.0, 183.0, 46.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 0 b",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-21",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "int", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 316.0, 184.0, 46.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 9.0,
									"triscale" : 0.9,
									"id" : "obj-22",
									"numoutlets" : 2,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"outlettype" : [ "int", "bang" ],
									"fontname" : "Arial",
									"patching_rect" : [ 50.0, 140.0, 35.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter 0 199",
									"numinlets" : 5,
									"fontsize" : 9.0,
									"id" : "obj-23",
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 324.0, 333.0, 74.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 97 115 102 100 32",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-24",
									"numoutlets" : 6,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "" ],
									"fontname" : "Arial",
									"patching_rect" : [ 136.0, 133.0, 100.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "key",
									"numinlets" : 0,
									"fontsize" : 9.0,
									"id" : "obj-28",
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"fontname" : "Arial",
									"patching_rect" : [ 136.0, 27.0, 40.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "which frame you are filling",
									"numinlets" : 1,
									"fontsize" : 9.0,
									"id" : "obj-32",
									"numoutlets" : 0,
									"fontname" : "Arial",
									"patching_rect" : [ 311.0, 306.0, 132.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-54",
									"numoutlets" : 0,
									"patching_rect" : [ 204.0, 410.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-55",
									"numoutlets" : 0,
									"patching_rect" : [ 329.0, 410.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"id" : "obj-56",
									"numoutlets" : 0,
									"patching_rect" : [ 468.0, 410.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-23", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-23", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-47", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 3 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 4 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 227.0, 197.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 3 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 2 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 2 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-23", 4 ],
									"hidden" : 0,
									"midpoints" : [ 587.0, 253.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-11", 4 ],
									"hidden" : 0,
									"midpoints" : [ 569.0, 244.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"globalpatchername" : "",
						"fontname" : "Arial",
						"default_fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "press <space bar> to take picture",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-1",
					"numoutlets" : 0,
					"fontname" : "Gill Sans",
					"patching_rect" : [ 586.0, 121.0, 148.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use UP and DOWN to choose what you're playing back",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-2",
					"numoutlets" : 0,
					"fontname" : "Gill Sans",
					"patching_rect" : [ 587.0, 150.0, 239.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "use LEFT and RIGHt to choose where you are recording",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-3",
					"numoutlets" : 0,
					"fontname" : "Gill Sans",
					"patching_rect" : [ 584.0, 100.0, 241.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"hint" : "click, then provide project name and folder to save in",
					"text" : "save",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 12.0,
					"id" : "obj-7",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 115.0, 135.0, 34.0, 18.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 943.0, 437.0, 42.0, 18.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "which frame you are requesting",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-31",
					"numoutlets" : 0,
					"fontname" : "Gill Sans",
					"patching_rect" : [ 812.0, 282.0, 139.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "= 200 x \"jit.matrix 4 char 320 240\" objects",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-33",
					"numoutlets" : 0,
					"fontname" : "Gill Sans",
					"patching_rect" : [ 597.0, 406.0, 184.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "('D' and 'F' keys)",
					"bgcolor" : [ 0.584314, 0.584314, 0.584314, 1.0 ],
					"numinlets" : 1,
					"fontsize" : 20.0,
					"triscale" : 0.9,
					"id" : "obj-45",
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0,
					"outlettype" : [ "int", "bang" ],
					"maximum" : 98,
					"presentation_rect" : [ 111.0, 54.0, 67.0, 30.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 736.0, 308.0, 66.0, 30.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "outputmatrix $1",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"id" : "obj-46",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 736.0, 376.0, 77.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "('A' and 'S' keys)",
					"numinlets" : 1,
					"fontsize" : 20.0,
					"triscale" : 0.9,
					"id" : "obj-47",
					"numoutlets" : 2,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"minimum" : 0,
					"outlettype" : [ "int", "bang" ],
					"maximum" : 98,
					"presentation_rect" : [ 12.0, 54.0, 67.0, 30.0 ],
					"fontname" : "Trebuchet MS",
					"patching_rect" : [ 608.0, 308.0, 80.0, 30.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "index $1",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"id" : "obj-48",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 608.0, 376.0, 46.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.matrixset 1 4 char 320 240",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-49",
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontname" : "Gill Sans",
					"patching_rect" : [ 427.0, 431.0, 130.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "press spacebar (32 is down)",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-51",
					"numoutlets" : 0,
					"fontname" : "Gill Sans",
					"patching_rect" : [ 328.0, 358.0, 124.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"id" : "obj-28",
					"numoutlets" : 0,
					"patching_rect" : [ 359.0, 660.5, 25.0, 25.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.32549, 0.34902, 0.258824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-84",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 9.0, 189.0, 102.0 ],
					"background" : 1,
					"patching_rect" : [ 20.0, 91.0, 128.0, 128.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-157",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 112.0, 189.0, 48.0 ],
					"background" : 1,
					"patching_rect" : [ 446.0, 540.0, 128.0, 128.0 ],
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"bgcolor" : [ 0.32549, 0.34902, 0.258824, 1.0 ],
					"numinlets" : 1,
					"id" : "obj-140",
					"numoutlets" : 0,
					"presentation_rect" : [ 7.0, 161.0, 189.0, 72.0 ],
					"background" : 1,
					"patching_rect" : [ 20.0, 579.0, 128.0, 128.0 ],
					"presentation" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-147", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-146", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 5 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 3 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 2 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 4 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-57", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-96", 7 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 1 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 1 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-57", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 1 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-96", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 2 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-97", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 1 ],
					"destination" : [ "obj-138", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 617.5, 398.0, 436.5, 398.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-96", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-57", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [ 745.5, 398.0, 436.5, 398.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 745.5, 371.0, 745.5, 371.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-102", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-96", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-147", 1 ],
					"destination" : [ "obj-96", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-146", 0 ],
					"destination" : [ "obj-96", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-139", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-138", 0 ],
					"destination" : [ "obj-139", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-133", 0 ],
					"destination" : [ "obj-132", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 1 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-132", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-57", 3 ],
					"hidden" : 0,
					"midpoints" : [ 573.0, 199.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-96", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
