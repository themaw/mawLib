{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 0,
			"revision" : 5
		}
,
		"rect" : [ 0.0, 45.0, 1595.0, 813.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-33",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 578.0, 207.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 570.0, 249.0, 67.0, 18.0 ],
					"text" : "/* scale $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 574.0, 97.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 173.0, 90.0, 20.0 ],
					"text" : "x-scale y-scale"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 492.0, 119.0, 59.5, 20.0 ],
					"restore" : 					{
						"flonum" : [ 1.0 ],
						"flonum[1]" : [ 1.5 ]
					}
,
					"text" : "autopattr",
					"varname" : "u804013671"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 529.0, 149.0, 50.0, 20.0 ],
					"varname" : "flonum[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 473.0, 149.0, 50.0, 20.0 ],
					"varname" : "flonum"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 460.0, 215.0, 60.0, 20.0 ],
					"text" : "next up..."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 465.0, 238.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 941.0, 153.0, 69.0, 20.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "front", "int", "bang" ],
					"patching_rect" : [ 941.0, 109.0, 77.0, 20.0 ],
					"text" : "ali.front 32 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-46",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 373.0, 71.0, 150.0, 35.0 ],
					"text" : "click and hold\nto know when it's done"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 409.0, 102.0, 51.0, 51.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 0,
							"revision" : 5
						}
,
						"rect" : [ 122.0, 120.0, 1397.0, 513.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 6,
											"minor" : 0,
											"revision" : 5
										}
,
										"rect" : [ 494.0, 257.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-38",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 203.0, 268.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-36",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 476.0, 275.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-34",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 471.0, 178.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-33",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 167.0, 171.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-31",
													"maxclass" : "number",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 150.0, 100.0, 50.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 362.0, 225.0, 116.0, 20.0 ],
													"text" : "scale 0 1. 1.75. -0.5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 362.0, 120.0, 32.5, 20.0 ],
													"text" : "/ 4."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 175.0, 208.0, 103.0, 20.0 ],
													"text" : "scale 0 3 -1.5 1.5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 139.0, 136.0, 32.5, 20.0 ],
													"text" : "% 4"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-15",
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 89.5, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-20",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 362.0, 361.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-24",
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 175.0, 348.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"disabled" : 0,
													"hidden" : 0,
													"source" : [ "obj-31", 0 ]
												}

											}
 ],
										"dependency_cache" : [  ]
									}
,
									"patching_rect" : [ 765.0, 281.0, 62.0, 20.0 ],
									"saved_object_attributes" : 									{
										"tags" : "",
										"default_fontface" : 0,
										"digest" : "",
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontname" : "Arial",
										"default_fontsize" : 12.0,
										"description" : "",
										"fontface" : 0,
										"fontsize" : 12.0
									}
,
									"text" : "p arrange"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 910.0, 98.0, 57.0, 20.0 ],
									"text" : "pak 1. 1."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-9",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 955.0, 32.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 910.0, 32.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 910.0, 141.0, 161.0, 20.0 ],
									"text" : "s maw.livedraw-face_aspect"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1154.0, 263.0, 215.0, 18.0 ],
									"text" : "/* aspectoverride 1, /* aspect 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-40",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1154.0, 303.0, 75.0, 18.0 ],
									"text" : "/* smooth 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1140.0, 355.0, 119.0, 20.0 ],
									"text" : "sprintf /%d scale 0.1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 161.0, 201.0, 32.5, 18.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-19",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 106.0, 438.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1154.0, 231.0, 107.0, 18.0 ],
									"text" : "/* record 0, /* go 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 947.0, 361.0, 107.0, 20.0 ],
									"text" : "sprintf /%d state 3"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1152.0, 137.0, 89.0, 18.0 ],
									"text" : "/* positiongui 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 678.0, 360.0, 160.0, 20.0 ],
									"text" : "sprintf /%d position %f %f 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 338.0, 128.0, 32.5, 20.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 228.0, 356.0, 220.0, 20.0 ],
									"text" : "sprintf /%d jit.matrixset matrixcount 100"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1156.0, 204.0, 190.0, 18.0 ],
									"text" : "/* jit.gl.videoplane blend_enable 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 274.0, 66.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 324.0, 22.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 460.0, 356.0, 191.0, 20.0 ],
									"text" : "sprintf /%d source-var sub-vid-%d"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 320.0, 79.0, 46.0, 20.0 ],
									"text" : "uzi 20"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 486.0, 439.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-28", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"dependency_cache" : [  ]
					}
,
					"patching_rect" : [ 408.0, 189.0, 46.0, 20.0 ],
					"saved_object_attributes" : 					{
						"tags" : "",
						"default_fontface" : 0,
						"digest" : "",
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}
,
					"text" : "p init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 325.417969, 234.443146, 20.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 948.699951, 576.110229, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans Bold",
					"fontsize" : 12.0,
					"frgb" : [ 1.0, 0.94902, 0.0, 1.0 ],
					"id" : "obj-176",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 290.600342, 299.931091, 93.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.444458, 517.110229, 93.0, 20.0 ],
					"text" : ".current layer",
					"textcolor" : [ 1.0, 0.94902, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 136.871765,
					"id" : "obj-146",
					"maxclass" : "number",
					"maximum" : 19,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 124.0, 294.0, 267.0, 164.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.099987, 518.110229, 205.648743, 164.0 ],
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 0,
							"revision" : 5
						}
,
						"rect" : [ 679.0, 303.0, 1020.0, 708.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-28",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 655.25, 402.0, 32.5, 18.0 ],
									"text" : "dec"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-26",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 610.25, 402.0, 32.5, 18.0 ],
									"text" : "inc"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "incdec",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 946.0, 256.0, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-24",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 933.599854, 566.700073, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-23",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 101.599854, 631.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-22",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 693.0, 472.0, 99.0, 18.0 ],
									"text" : "stopmotion clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-19",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 570.0, 472.0, 113.0, 18.0 ],
									"text" : "stopmotion append"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 476.0, 472.0, 85.0, 18.0 ],
									"text" : "playgest bang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 372.0, 472.0, 80.0, 18.0 ],
									"text" : "recgest bang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 169.0, 582.0, 55.0, 20.0 ],
									"text" : "prepend"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 253.0, 472.0, 54.0, 18.0 ],
									"text" : "go bang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 169.0, 472.0, 75.0, 18.0 ],
									"text" : "record bang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 391.0, 87.0, 20.0 ],
									"text" : "sprintf set /%d"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 157.0, 160.0, 34.0, 20.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 176.0, 40.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 176.0, 299.0, 31.0, 20.0 ],
									"text" : "R P"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 9,
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"patching_rect" : [ 191.25, 356.0, 183.0, 20.0 ],
									"text" : "sel 114 112 97 115 120 99 30 31"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 275.0, 281.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 4,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 253.0, 89.0, 59.5, 20.0 ],
									"text" : "key"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 26.0, 224.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-100",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 887.5, 446.900024, 43.0, 20.0 ],
									"text" : "* -180"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-99",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 817.599854, 481.000061, 89.0, 20.0 ],
									"text" : "pak offset 10 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-93",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "float", "float" ],
									"patching_rect" : [ 818.0, 391.0, 86.0, 20.0 ],
									"text" : "unpack 0 1. 1."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-102",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 488.0, 32.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-103",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 817.599854, 566.700073, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-100", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-93", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-99", 0 ]
								}

							}
 ],
						"dependency_cache" : [  ]
					}
,
					"patching_rect" : [ 325.5, 260.517426, 48.0, 20.0 ],
					"saved_object_attributes" : 					{
						"tags" : "",
						"default_fontface" : 0,
						"digest" : "",
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}
,
					"text" : "p kleys"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "bpatcher",
					"name" : "maw.livedraw-layer-gui.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"offset" : [ 10.0, 0.0 ],
					"patching_rect" : [ 390.0, 294.0, 738.499939, 178.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 205.111115, 512.010254, 736.099915, 174.199997 ],
					"varname" : "maw.livedraw-layer-gui"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 32.0, 293.0, 80.0, 36.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 22.0, 39.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1151.0, 365.931091, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1151.0, 400.931091, 152.0, 18.0 ],
					"text" : "fullscreen $1, fsmenubar 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1151.0, 331.931091, 43.0, 20.0 ],
					"text" : "sel 27"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 1151.0, 299.931091, 59.5, 20.0 ],
					"text" : "key"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 0,
							"revision" : 5
						}
,
						"rect" : [ 912.0, 56.0, 722.0, 915.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 221.400024, 876.743652, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-16",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 363.0, 400.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 392.0, 152.0, 242.0, 20.0 ],
									"text" : "jit.window faces @floating 1 @size 160 120"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 123.400024, 612.44043, 41.0, 20.0 ],
									"text" : "zl join"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-13",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 270.0, 846.0, 86.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 477.0, 706.0, 54.0, 18.0 ],
									"text" : "open $1"
								}

							}
, 							{
								"box" : 								{
									"disabled" : [ 0, 0, 0, 0, 0 ],
									"id" : "obj-8",
									"itemtype" : 0,
									"maxclass" : "radiogroup",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 549.0, 624.0, 18.0, 82.0 ],
									"size" : 5,
									"value" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 398.400024, 787.219727, 253.0, 20.0 ],
									"text" : "counter max is how many livedraw layers"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 343.400024, 745.219727, 253.0, 20.0 ],
									"text" : "number of voices is how many faces at a time"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-59",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 303.400024, 687.012329, 71.0, 18.0 ],
									"text" : "target 0, $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 321.400024, 788.012329, 77.0, 20.0 ],
									"text" : "counter 0 19"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-56",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 123.400024, 687.012329, 161.0, 18.0 ],
									"text" : "target $1, $2 $3 $4 $5 $6 $7"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 123.400024, 743.963379, 217.0, 20.0 ],
									"text" : "poly~ maw.livedraw.face-recorder.voi 4"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-58",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 123.400024, 877.743652, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"int" : 1,
									"maxclass" : "gswitch2",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 91.400024, 145.012329, 39.0, 32.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 207.400024, 341.012329, 66.0, 18.0 ],
									"text" : "route nfaces"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-30",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 245.400024, 244.012329, 135.0, 29.0 ],
									"text" : "Use as small an input as possible, for performance.",
									"varname" : "output-description[2]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 111.400024, 251.012329, 130.0, 18.0 ],
									"text" : "cv.jit.resize @size 160 120"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 337.400024, 301.268677, 82.0, 18.0 ],
									"text" : "cv.jit.faces.draw"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 111.400024, 298.012329, 57.0, 18.0 ],
									"text" : "cv.jit.faces"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 180.400024, 208.012329, 157.0, 18.0 ],
									"text" : "Works only on greyscale images!",
									"varname" : "output-description[1]"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 1.0, 0.05098 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 1.0, 0.733333 ],
									"id" : "obj-9",
									"ignoreclick" : 1,
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 101.400024, 294.012329, 78.0, 27.0 ],
									"rounded" : 30
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 111.400024, 209.012329, 62.0, 18.0 ],
									"text" : "jit.rgb2luma"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.776471, 0.776471, 0.776471, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.5, 0.5, 0.5, 0.5 ],
									"id" : "obj-141",
									"ignoreclick" : 1,
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 103.400024, 201.012329, 244.0, 34.0 ],
									"rounded" : 15
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.776471, 0.776471, 0.776471, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.5, 0.5, 0.5, 0.5 ],
									"id" : "obj-32",
									"ignoreclick" : 1,
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 103.400024, 238.012329, 286.0, 41.0 ],
									"rounded" : 15
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 111.400024, 92.268677, 113.0, 20.0 ],
									"text" : "r livedraw-camera1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-25",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 158.400024, 635.219727, 352.0, 20.0 ],
									"text" : "face-number, top-left-X, top-left-Y, bottom-right-X, bottom-right-Y"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 123.400024, 562.44043, 41.0, 20.0 ],
									"text" : "zl join"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 151.400024, 524.44043, 73.0, 20.0 ],
									"text" : "counter 1 4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 111.400024, 410.268677, 32.5, 20.0 ],
									"text" : "t l 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 111.400024, 481.268677, 32.5, 20.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 111.400024, 450.268677, 46.0, 20.0 ],
									"text" : "jit.iter"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 292.0, 525.0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 158.900024, 325.01239, 197.400024, 325.01239, 197.400024, 291.01239, 216.900024, 291.01239 ],
									"source" : [ "obj-26", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-53", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 330.900024, 825.0, 425.477783, 825.0, 425.477783, 664.0, 312.900024, 664.0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-64", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"dependency_cache" : [ 							{
								"name" : "cv.jit.faces.draw.maxpat",
								"bootpath" : "/Users/ali/Dropbox/for-max/3rd Party/XMax-UB-Max5/cv.jit_OSX_v1.7.2/cv.jit-support/Abstractions",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "maw.livedraw.face-recorder.voi.maxpat",
								"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Perform/livedraw",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "ali.constant.maxpat",
								"bootpath" : "/Users/ali/Dropbox/for-max/aLib/_aLib 1.0 11.1.1/for streams",
								"type" : "JSON",
								"implicit" : 1
							}
, 							{
								"name" : "var-init.pat",
								"bootpath" : "/Users/ali/Dropbox/for-max/aLib/_aLib 1.0 11.1.1/for crap",
								"type" : "maxb",
								"implicit" : 1
							}
, 							{
								"name" : "cv.jit.faces.mxo",
								"type" : "iLaX"
							}
, 							{
								"name" : "cv.jit.resize.mxo",
								"type" : "iLaX"
							}
 ]
					}
,
					"patching_rect" : [ 389.5, 237.0, 49.0, 20.0 ],
					"saved_object_attributes" : 					{
						"tags" : "",
						"default_fontface" : 0,
						"digest" : "",
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"fontface" : 0,
						"fontsize" : 12.0
					}
,
					"text" : "p faces"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "maw.jit.loop-manual-help" ],
					"id" : "obj-4",
					"maxclass" : "bpatcher",
					"name" : "maw.util.pattrstorage-helper.maxpat",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 691.0, 102.0, 210.0, 54.0 ]
				}

			}
, 			{
				"box" : 				{
					"autorestore" : "maw.jit.loop-manual-help.json",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 691.0, 169.0, 211.0, 20.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0,
						"client_rect" : [ 533, 258, 1215, 970 ],
						"storage_rect" : [ 25, 69, 897, 817 ]
					}
,
					"text" : "pattrstorage maw.jit.loop-manual-help",
					"varname" : "maw.jit.loop-manual-help"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1151.0, 436.931091, 263.0, 20.0 ],
					"text" : "jit.window gl-output @floating 1 @depthbuffer 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.camera.maxpat",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 107.0, 126.0, 224.0, 71.0 ],
					"varname" : "maw.jit.camera"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 56.0, 12.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 56.0, 79.0, 295.0, 20.0 ],
					"text" : "maw.jit.videoplane-render gl-output @blend_enable 1",
					"varname" : "maw.jit.videoplane-render"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 56.0, 44.0, 65.0, 20.0 ],
					"text" : "qmetro 10"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 107.0, 205.0, 115.0, 20.0 ],
					"text" : "s livedraw-camera1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 56.0, 255.0, 121.0, 20.0 ],
					"text" : "s livedraw-mainbang"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 364.0, 282.0, 133.5, 282.0 ],
					"source" : [ "obj-104", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 349.5, 282.0, 375.0, 282.0, 375.0, 287.0, 456.0, 287.0, 456.0, 287.0, 1119.0, 287.0 ],
					"source" : [ "obj-104", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 133.5, 459.0, 111.0, 459.0, 111.0, 330.0, 120.0, 330.0, 120.0, 279.0, 312.0, 279.0, 312.0, 255.0, 364.0, 255.0 ],
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 700.5, 211.0, 922.0, 211.0, 922.0, 78.0, 748.25, 78.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 1 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-31::obj-29::obj-91::obj-23" : [ "live.button[22]", "live.button", 0 ],
			"obj-31::obj-10::obj-176" : [ "live.text[42]", "live.text[1]", 0 ],
			"obj-31::obj-26::obj-91::obj-5" : [ "voices[7]", "voices", 0 ],
			"obj-31::obj-16::obj-22" : [ "frames-available[11]", "frames-available", 0 ],
			"obj-31::obj-14::obj-91::obj-53" : [ "delayFrame[13]", "delayFrame", 0 ],
			"obj-31::obj-27::obj-116" : [ "smooth[37]", "smooth", 0 ],
			"obj-31::obj-24::obj-9" : [ "live.toggle[66]", "live.toggle[1]", 0 ],
			"obj-31::obj-16::obj-173" : [ "live.text[36]", "live.text", 0 ],
			"obj-31::obj-12::obj-91::obj-9" : [ "recordFrame[14]", "recordFrame", 0 ],
			"obj-31::obj-42::obj-91::obj-53" : [ "delayFrame[18]", "delayFrame", 0 ],
			"obj-31::obj-16::obj-91::obj-8" : [ "live.button[45]", "live.button", 0 ],
			"obj-31::obj-40::obj-46" : [ "gain[1]", "gain", 0 ],
			"obj-31::obj-20::obj-91::obj-33" : [ "live.button[35]", "live.button", 0 ],
			"obj-31::obj-8::obj-173" : [ "live.text[47]", "live.text", 0 ],
			"obj-31::obj-32::obj-91::obj-5" : [ "voices[5]", "voices", 0 ],
			"obj-31::obj-4::obj-57" : [ "loop-mode[17]", "loop-mode", 0 ],
			"obj-31::obj-40::obj-142" : [ "mode[1]", "mode", 0 ],
			"obj-31::obj-12::obj-165" : [ "rotateX[14]", "rotateX", 0 ],
			"obj-31::obj-8::obj-66" : [ "live.numbox[16]", "live.numbox", 0 ],
			"obj-31::obj-4::obj-91::obj-10" : [ "playFrame[23]", "playFrame", 0 ],
			"obj-31::obj-16::obj-91::obj-33" : [ "live.button[43]", "live.button", 0 ],
			"obj-31::obj-10::obj-14" : [ "live.toggle[90]", "live.toggle[1]", 0 ],
			"obj-31::obj-14::obj-34" : [ "scale[12]", "scale", 0 ],
			"obj-31::obj-12::obj-142" : [ "mode[12]", "mode", 0 ],
			"obj-31::obj-20::obj-9" : [ "live.toggle[68]", "live.toggle[1]", 0 ],
			"obj-31::obj-12::obj-8" : [ "live.text[41]", "live.text[1]", 0 ],
			"obj-31::obj-29::obj-162" : [ "rotateY[5]", "rotateY", 0 ],
			"obj-31::obj-38::obj-56" : [ "rate-loop[2]", "rate-loop", 0 ],
			"obj-31::obj-34::obj-91::obj-10" : [ "playFrame[4]", "playFrame", 0 ],
			"obj-31::obj-24::obj-91::obj-33" : [ "live.button[27]", "live.button", 0 ],
			"obj-31::obj-12::obj-162" : [ "rotateY[12]", "rotateY", 0 ],
			"obj-31::obj-24::obj-28" : [ "live.toggle[65]", "live.toggle[1]", 0 ],
			"obj-31::obj-18::obj-91::obj-5" : [ "voices[11]", "voices", 0 ],
			"obj-31::obj-42::obj-14" : [ "live.toggle[53]", "live.toggle[1]", 0 ],
			"obj-31::obj-40::obj-14" : [ "live.toggle[2]", "live.toggle[1]", 0 ],
			"obj-31::obj-8::obj-161" : [ "rotateZ[16]", "rotateZ", 0 ],
			"obj-31::obj-34::obj-91::obj-8" : [ "live.button[15]", "live.button", 0 ],
			"obj-31::obj-16::obj-91::obj-10" : [ "playFrame[11]", "playFrame", 0 ],
			"obj-31::obj-12::obj-35" : [ "volume[13]", "volume", 0 ],
			"obj-31::obj-8::obj-147" : [ "smooth[31]", "smooth", 0 ],
			"obj-31::obj-38::obj-165" : [ "rotateX[2]", "rotateX", 0 ],
			"obj-31::obj-20::obj-22" : [ "frames-available[9]", "frames-available", 0 ],
			"obj-31::obj-8::obj-179" : [ "live.button[48]", "live.button", 0 ],
			"obj-31::obj-6::obj-57" : [ "loop-mode[16]", "loop-mode", 0 ],
			"obj-31::obj-36::obj-28" : [ "live.toggle[11]", "live.toggle[1]", 0 ],
			"obj-31::obj-18::obj-15" : [ "live.toggle[69]", "live.toggle[1]", 0 ],
			"obj-31::obj-22::obj-46" : [ "gain[9]", "gain", 0 ],
			"obj-31::obj-18::obj-91::obj-10" : [ "playFrame[10]", "playFrame", 0 ],
			"obj-31::obj-38::obj-15" : [ "live.toggle[54]", "live.toggle[1]", 0 ],
			"obj-31::obj-20::obj-177" : [ "live-in[48]", "mode", 0 ],
			"obj-31::obj-12::obj-123" : [ "thresh[14]", "thresh", 0 ],
			"obj-31::obj-34::obj-8" : [ "live.text[11]", "live.text[1]", 0 ],
			"obj-31::obj-40::obj-8" : [ "live.text[2]", "live.text[1]", 0 ],
			"obj-31::obj-34::obj-147" : [ "smooth[7]", "smooth", 0 ],
			"obj-31::obj-18::obj-34" : [ "scale[10]", "scale", 0 ],
			"obj-31::obj-22::obj-21" : [ "frames-recorded[9]", "volume", 0 ],
			"obj-31::obj-27::obj-35" : [ "volume[18]", "volume", 0 ],
			"obj-31::obj-12::obj-147" : [ "smooth[27]", "smooth", 0 ],
			"obj-31::obj-10::obj-91::obj-33" : [ "live.button[71]", "live.button", 0 ],
			"obj-31::obj-32::obj-173" : [ "live.text[15]", "live.text", 0 ],
			"obj-31::obj-29::obj-8" : [ "live.text[17]", "live.text[1]", 0 ],
			"obj-31::obj-6::obj-21" : [ "frames-recorded[17]", "volume", 0 ],
			"obj-31::obj-27::obj-167" : [ "record-codec[18]", "record-codec", 0 ],
			"obj-31::obj-14::obj-142" : [ "mode[11]", "mode", 0 ],
			"obj-31::obj-4::obj-15" : [ "live.toggle[104]", "live.toggle[1]", 0 ],
			"obj-31::obj-16::obj-9" : [ "live.toggle[78]", "live.toggle[1]", 0 ],
			"obj-31::obj-20::obj-91::obj-23" : [ "live.button[36]", "live.button", 0 ],
			"obj-31::obj-8::obj-167" : [ "record-codec[16]", "record-codec", 0 ],
			"obj-31::obj-24::obj-177" : [ "live-in[8]", "mode", 0 ],
			"obj-31::obj-20::obj-176" : [ "live.text[28]", "live.text[1]", 0 ],
			"obj-31::obj-38::obj-147" : [ "smooth[3]", "smooth", 0 ],
			"obj-31::obj-32::obj-111" : [ "trans-mode[5]", "trans-mode", 0 ],
			"obj-31::obj-18::obj-91::obj-23" : [ "live.button[40]", "live.button", 0 ],
			"obj-31::obj-29::obj-28" : [ "live.toggle[18]", "live.toggle[1]", 0 ],
			"obj-31::obj-12::obj-4" : [ "invert[14]", "invert", 0 ],
			"obj-31::obj-16::obj-28" : [ "live.toggle[77]", "live.toggle[1]", 0 ],
			"obj-31::obj-8::obj-34" : [ "scale[15]", "scale", 0 ],
			"obj-31::obj-42::obj-28" : [ "live.toggle[50]", "live.toggle[1]", 0 ],
			"obj-31::obj-34::obj-91::obj-23" : [ "live.button[14]", "live.button", 0 ],
			"obj-31::obj-14::obj-46" : [ "gain[13]", "gain", 0 ],
			"obj-31::obj-6::obj-15" : [ "live.toggle[99]", "live.toggle[1]", 0 ],
			"obj-31::obj-38::obj-4" : [ "invert[2]", "invert", 0 ],
			"obj-31::obj-6::obj-123" : [ "thresh[17]", "thresh", 0 ],
			"obj-31::obj-20::obj-123" : [ "thresh[10]", "thresh", 0 ],
			"obj-31::obj-6::obj-165" : [ "rotateX[17]", "rotateX", 0 ],
			"obj-31::obj-4::obj-4" : [ "invert[18]", "invert", 0 ],
			"obj-31::obj-6::obj-173" : [ "live.text[50]", "live.text", 0 ],
			"obj-31::obj-12::obj-159" : [ "live.toggle[86]", "live.toggle", 0 ],
			"obj-31::obj-36::obj-91::obj-10" : [ "playFrame[3]", "playFrame", 0 ],
			"obj-31::obj-26::obj-111" : [ "trans-mode[7]", "trans-mode", 0 ],
			"obj-31::obj-6::obj-162" : [ "rotateY[15]", "rotateY", 0 ],
			"obj-31::obj-4::obj-176" : [ "live.text[51]", "live.text[1]", 0 ],
			"obj-31::obj-14::obj-66" : [ "live.numbox[13]", "live.numbox", 0 ],
			"obj-31::obj-42::obj-177" : [ "live-in[47]", "mode", 0 ],
			"obj-31::obj-42::obj-116" : [ "smooth[81]", "smooth", 0 ],
			"obj-31::obj-16::obj-165" : [ "rotateX[12]", "rotateX", 0 ],
			"obj-31::obj-36::obj-35" : [ "volume[3]", "volume", 0 ],
			"obj-31::obj-6::obj-4" : [ "invert[17]", "invert", 0 ],
			"obj-31::obj-4::obj-7" : [ "rate[17]", "rate", 0 ],
			"obj-31::obj-38::obj-142" : [ "mode[43]", "mode", 0 ],
			"obj-31::obj-6::obj-9" : [ "live.toggle[103]", "live.toggle[1]", 0 ],
			"obj-31::obj-36::obj-161" : [ "rotateZ[3]", "rotateZ", 0 ],
			"obj-31::obj-20::obj-7" : [ "rate[51]", "rate", 0 ],
			"obj-31::obj-29::obj-7" : [ "rate[6]", "rate", 0 ],
			"obj-31::obj-14::obj-8" : [ "live.text[38]", "live.text[1]", 0 ],
			"obj-31::obj-20::obj-167" : [ "record-codec[10]", "record-codec", 0 ],
			"obj-31::obj-42::obj-142" : [ "mode[42]", "mode", 0 ],
			"obj-31::obj-24::obj-91::obj-5" : [ "voices[8]", "voices", 0 ],
			"obj-31::obj-14::obj-91::obj-5" : [ "voices[13]", "voices", 0 ],
			"obj-31::obj-40::obj-123" : [ "thresh[1]", "thresh", 0 ],
			"obj-31::obj-14::obj-173" : [ "live.text[39]", "live.text", 0 ],
			"obj-31::obj-27::obj-177" : [ "live-in[18]", "mode", 0 ],
			"obj-31::obj-36::obj-66" : [ "live.numbox[3]", "live.numbox", 0 ],
			"obj-31::obj-10::obj-7" : [ "rate[14]", "rate", 0 ],
			"obj-31::obj-40::obj-7" : [ "rate[1]", "rate", 0 ],
			"obj-31::obj-8::obj-111" : [ "trans-mode[16]", "trans-mode", 0 ],
			"obj-31::obj-8::obj-91::obj-10" : [ "playFrame[21]", "playFrame", 0 ],
			"obj-31::obj-34::obj-35" : [ "volume[4]", "volume", 0 ],
			"obj-31::obj-26::obj-34" : [ "scale[7]", "scale", 0 ],
			"obj-31::obj-20::obj-91::obj-8" : [ "live.button[37]", "live.button", 0 ],
			"obj-31::obj-14::obj-147" : [ "smooth[25]", "smooth", 0 ],
			"obj-31::obj-27::obj-28" : [ "live.toggle[112]", "live.toggle[1]", 0 ],
			"obj-31::obj-20::obj-34" : [ "scale[9]", "scale", 0 ],
			"obj-31::obj-8::obj-116" : [ "smooth[32]", "smooth", 0 ],
			"obj-31::obj-26::obj-28" : [ "live.toggle[23]", "live.toggle[1]", 0 ],
			"obj-31::obj-29::obj-57" : [ "loop-mode[6]", "loop-mode", 0 ],
			"obj-31::obj-8::obj-176" : [ "live.text[45]", "live.text[1]", 0 ],
			"obj-31::obj-24::obj-161" : [ "rotateZ[8]", "rotateZ", 0 ],
			"obj-31::obj-8::obj-91::obj-23" : [ "live.button[87]", "live.button", 0 ],
			"obj-31::obj-24::obj-123" : [ "thresh[8]", "thresh", 0 ],
			"obj-31::obj-10::obj-91::obj-23" : [ "live.button[72]", "live.button", 0 ],
			"obj-31::obj-6::obj-91::obj-23" : [ "live.button[76]", "live.button", 0 ],
			"obj-31::obj-40::obj-176" : [ "live.text[1]", "live.text[1]", 0 ],
			"obj-31::obj-34::obj-162" : [ "rotateY[22]", "rotateY", 0 ],
			"obj-31::obj-8::obj-14" : [ "live.toggle[95]", "live.toggle[1]", 0 ],
			"obj-31::obj-4::obj-173" : [ "live.text[53]", "live.text", 0 ],
			"obj-31::obj-20::obj-161" : [ "rotateZ[10]", "rotateZ", 0 ],
			"obj-31::obj-27::obj-91::obj-8" : [ "live.button[93]", "live.button", 0 ],
			"obj-31::obj-16::obj-147" : [ "smooth[23]", "smooth", 0 ],
			"obj-31::obj-32::obj-159" : [ "live.toggle[59]", "live.toggle", 0 ],
			"obj-31::obj-22::obj-167" : [ "record-codec[9]", "record-codec", 0 ],
			"obj-31::obj-20::obj-46" : [ "gain[10]", "gain", 0 ],
			"obj-31::obj-6::obj-7" : [ "rate[16]", "rate", 0 ],
			"obj-31::obj-27::obj-173" : [ "live.text[71]", "live.text", 0 ],
			"obj-31::obj-34::obj-15" : [ "live.toggle[13]", "live.toggle[1]", 0 ],
			"obj-31::obj-14::obj-14" : [ "live.toggle[80]", "live.toggle[1]", 0 ],
			"obj-31::obj-36::obj-91::obj-53" : [ "delayFrame[3]", "delayFrame", 0 ],
			"obj-31::obj-34::obj-57" : [ "loop-mode[4]", "loop-mode", 0 ],
			"obj-31::obj-16::obj-21" : [ "frames-recorded[12]", "volume", 0 ],
			"obj-31::obj-42::obj-147" : [ "smooth[94]", "smooth", 0 ],
			"obj-31::obj-22::obj-91::obj-9" : [ "recordFrame[9]", "recordFrame", 0 ],
			"obj-31::obj-14::obj-57" : [ "loop-mode[12]", "loop-mode", 0 ],
			"obj-31::obj-8::obj-142" : [ "mode[14]", "mode", 0 ],
			"obj-31::obj-26::obj-91::obj-53" : [ "delayFrame[7]", "delayFrame", 0 ],
			"obj-31::obj-26::obj-91::obj-33" : [ "live.button[23]", "live.button", 0 ],
			"obj-31::obj-26::obj-91::obj-9" : [ "recordFrame[7]", "recordFrame", 0 ],
			"obj-31::obj-16::obj-4" : [ "invert[12]", "invert", 0 ],
			"obj-31::obj-10::obj-111" : [ "trans-mode[15]", "trans-mode", 0 ],
			"obj-31::obj-42::obj-66" : [ "live.numbox[37]", "live.numbox", 0 ],
			"obj-31::obj-26::obj-22" : [ "frames-available[6]", "frames-available", 0 ],
			"obj-31::obj-29::obj-179" : [ "live.button[63]", "live.button", 0 ],
			"obj-31::obj-32::obj-91::obj-23" : [ "live.button[18]", "live.button", 0 ],
			"obj-31::obj-22::obj-173" : [ "live.text[27]", "live.text", 0 ],
			"obj-31::obj-4::obj-66" : [ "live.numbox[18]", "live.numbox", 0 ],
			"obj-31::obj-4::obj-91::obj-9" : [ "recordFrame[15]", "recordFrame", 0 ],
			"obj-31::obj-24::obj-173" : [ "live.text[24]", "live.text", 0 ],
			"obj-31::obj-6::obj-22" : [ "frames-available[14]", "frames-available", 0 ],
			"obj-31::obj-20::obj-4" : [ "invert[10]", "invert", 0 ],
			"obj-31::obj-26::obj-165" : [ "rotateX[7]", "rotateX", 0 ],
			"obj-31::obj-14::obj-91::obj-10" : [ "playFrame[12]", "playFrame", 0 ],
			"obj-31::obj-36::obj-91::obj-5" : [ "voices[3]", "voices", 0 ],
			"obj-31::obj-18::obj-179" : [ "live.button[42]", "live.button", 0 ],
			"obj-31::obj-24::obj-66" : [ "live.numbox[8]", "live.numbox", 0 ],
			"obj-31::obj-16::obj-34" : [ "scale[11]", "scale", 0 ],
			"obj-31::obj-16::obj-123" : [ "thresh[12]", "thresh", 0 ],
			"obj-31::obj-42::obj-173" : [ "live.text[69]", "live.text", 0 ],
			"obj-31::obj-26::obj-173" : [ "live.text[21]", "live.text", 0 ],
			"obj-31::obj-14::obj-167" : [ "record-codec[13]", "record-codec", 0 ],
			"obj-31::obj-4::obj-142" : [ "mode[45]", "mode", 0 ],
			"obj-31::obj-16::obj-46" : [ "gain[12]", "gain", 0 ],
			"obj-31::obj-20::obj-57" : [ "loop-mode[9]", "loop-mode", 0 ],
			"obj-31::obj-18::obj-165" : [ "rotateX[11]", "rotateX", 0 ],
			"obj-31::obj-14::obj-91::obj-33" : [ "live.button[64]", "live.button", 0 ],
			"obj-31::obj-27::obj-57" : [ "loop-mode[25]", "loop-mode", 0 ],
			"obj-31::obj-12::obj-56" : [ "rate-loop[14]", "rate-loop", 0 ],
			"obj-31::obj-26::obj-162" : [ "rotateY[6]", "rotateY", 0 ],
			"obj-31::obj-18::obj-161" : [ "rotateZ[11]", "rotateZ", 0 ],
			"obj-31::obj-4::obj-179" : [ "live.button[88]", "live.button", 0 ],
			"obj-31::obj-29::obj-91::obj-5" : [ "voices[6]", "voices", 0 ],
			"obj-31::obj-27::obj-91::obj-5" : [ "voices[23]", "voices", 0 ],
			"obj-31::obj-40::obj-56" : [ "rate-loop[1]", "rate-loop", 0 ],
			"obj-31::obj-38::obj-91::obj-10" : [ "playFrame[2]", "playFrame", 0 ],
			"obj-31::obj-24::obj-15" : [ "live.toggle[25]", "live.toggle[1]", 0 ],
			"obj-31::obj-16::obj-35" : [ "volume[11]", "volume", 0 ],
			"obj-31::obj-20::obj-15" : [ "live.toggle[33]", "live.toggle[1]", 0 ],
			"obj-31::obj-38::obj-28" : [ "live.toggle[6]", "live.toggle[1]", 0 ],
			"obj-31::obj-4::obj-111" : [ "trans-mode[18]", "trans-mode", 0 ],
			"obj-31::obj-6::obj-111" : [ "trans-mode[17]", "trans-mode", 0 ],
			"obj-31::obj-40::obj-159" : [ "live.toggle[3]", "live.toggle", 0 ],
			"obj-31::obj-20::obj-159" : [ "live.toggle[35]", "live.toggle", 0 ],
			"obj-31::obj-12::obj-161" : [ "rotateZ[14]", "rotateZ", 0 ],
			"obj-31::obj-12::obj-14" : [ "live.toggle[85]", "live.toggle[1]", 0 ],
			"obj-31::obj-32::obj-22" : [ "frames-available[5]", "frames-available", 0 ],
			"obj-31::obj-4::obj-34" : [ "scale[17]", "scale", 0 ],
			"obj-31::obj-26::obj-35" : [ "volume[7]", "volume", 0 ],
			"obj-31::obj-24::obj-116" : [ "smooth[16]", "smooth", 0 ],
			"obj-31::obj-42::obj-167" : [ "record-codec[40]", "record-codec", 0 ],
			"obj-31::obj-24::obj-57" : [ "loop-mode[8]", "loop-mode", 0 ],
			"obj-31::obj-40::obj-165" : [ "rotateX[1]", "rotateX", 0 ],
			"obj-31::obj-38::obj-179" : [ "live.button[8]", "live.button", 0 ],
			"obj-31::obj-29::obj-22" : [ "frames-available[33]", "frames-available", 0 ],
			"obj-31::obj-26::obj-91::obj-23" : [ "live.button[24]", "live.button", 0 ],
			"obj-31::obj-4::obj-159" : [ "live.toggle[106]", "live.toggle", 0 ],
			"obj-31::obj-32::obj-21" : [ "frames-recorded[5]", "volume", 0 ],
			"obj-31::obj-36::obj-173" : [ "live.text[9]", "live.text", 0 ],
			"obj-31::obj-18::obj-4" : [ "invert[11]", "invert", 0 ],
			"obj-31::obj-6::obj-147" : [ "smooth[33]", "smooth", 0 ],
			"obj-31::obj-4::obj-147" : [ "smooth[36]", "smooth", 0 ],
			"obj-31::obj-36::obj-8" : [ "live.text[8]", "live.text[1]", 0 ],
			"obj-31::obj-16::obj-159" : [ "live.toggle[76]", "live.toggle", 0 ],
			"obj-31::obj-10::obj-167" : [ "record-codec[15]", "record-codec", 0 ],
			"obj-31::obj-22::obj-176" : [ "live.text[25]", "live.text[1]", 0 ],
			"obj-31::obj-14::obj-21" : [ "frames-recorded[13]", "volume", 0 ],
			"obj-31::obj-27::obj-142" : [ "mode[46]", "mode", 0 ],
			"obj-31::obj-38::obj-116" : [ "smooth[4]", "smooth", 0 ],
			"obj-31::obj-38::obj-173" : [ "live.text[6]", "live.text", 0 ],
			"obj-31::obj-32::obj-34" : [ "scale[5]", "scale", 0 ],
			"obj-31::obj-22::obj-91::obj-8" : [ "live.button[33]", "live.button", 0 ],
			"obj-31::obj-18::obj-91::obj-8" : [ "live.button[41]", "live.button", 0 ],
			"obj-31::obj-18::obj-111" : [ "trans-mode[11]", "trans-mode", 0 ],
			"obj-31::obj-42::obj-4" : [ "invert[48]", "invert", 0 ],
			"obj-31::obj-12::obj-57" : [ "loop-mode[13]", "loop-mode", 0 ],
			"obj-31::obj-40::obj-116" : [ "smooth[2]", "smooth", 0 ],
			"obj-31::obj-26::obj-142" : [ "mode[6]", "mode", 0 ],
			"obj-31::obj-32::obj-8" : [ "live.text[14]", "live.text[1]", 0 ],
			"obj-31::obj-34::obj-177" : [ "live-in[4]", "mode", 0 ],
			"obj-31::obj-24::obj-167" : [ "record-codec[8]", "record-codec", 0 ],
			"obj-31::obj-18::obj-142" : [ "mode[9]", "mode", 0 ],
			"obj-31::obj-42::obj-35" : [ "volume[50]", "volume", 0 ],
			"obj-31::obj-40::obj-4" : [ "invert[1]", "invert", 0 ],
			"obj-31::obj-26::obj-46" : [ "gain[7]", "gain", 0 ],
			"obj-31::obj-22::obj-4" : [ "invert[9]", "invert", 0 ],
			"obj-31::obj-22::obj-123" : [ "thresh[9]", "thresh", 0 ],
			"obj-31::obj-4::obj-177" : [ "live-in[17]", "mode", 0 ],
			"obj-31::obj-12::obj-179" : [ "live.button[85]", "live.button", 0 ],
			"obj-31::obj-10::obj-165" : [ "rotateX[15]", "rotateX", 0 ],
			"obj-31::obj-42::obj-8" : [ "live.text[134]", "live.text[1]", 0 ],
			"obj-31::obj-4::obj-28" : [ "live.toggle[107]", "live.toggle[1]", 0 ],
			"obj-31::obj-22::obj-165" : [ "rotateX[9]", "rotateX", 0 ],
			"obj-31::obj-18::obj-9" : [ "live.toggle[73]", "live.toggle[1]", 0 ],
			"obj-31::obj-38::obj-91::obj-8" : [ "live.button[7]", "live.button", 0 ],
			"obj-31::obj-24::obj-91::obj-9" : [ "recordFrame[8]", "recordFrame", 0 ],
			"obj-31::obj-18::obj-147" : [ "smooth[21]", "smooth", 0 ],
			"obj-31::obj-16::obj-177" : [ "live-in[11]", "mode", 0 ],
			"obj-31::obj-42::obj-91::obj-33" : [ "live.button[59]", "live.button", 0 ],
			"obj-31::obj-6::obj-179" : [ "live.button[78]", "live.button", 0 ],
			"obj-31::obj-8::obj-22" : [ "frames-available[13]", "frames-available", 0 ],
			"obj-31::obj-27::obj-15" : [ "live.toggle[109]", "live.toggle[1]", 0 ],
			"obj-31::obj-20::obj-28" : [ "live.toggle[67]", "live.toggle[1]", 0 ],
			"obj-31::obj-12::obj-46" : [ "gain[14]", "gain", 0 ],
			"obj-31::obj-22::obj-28" : [ "live.toggle[31]", "live.toggle[1]", 0 ],
			"obj-31::obj-16::obj-161" : [ "rotateZ[12]", "rotateZ", 0 ],
			"obj-31::obj-8::obj-91::obj-8" : [ "live.button[47]", "live.button", 0 ],
			"obj-31::obj-20::obj-162" : [ "rotateY[8]", "rotateY", 0 ],
			"obj-31::obj-18::obj-177" : [ "live-in[10]", "mode", 0 ],
			"obj-31::obj-34::obj-111" : [ "trans-mode[4]", "trans-mode", 0 ],
			"obj-31::obj-26::obj-66" : [ "live.numbox[7]", "live.numbox", 0 ],
			"obj-31::obj-12::obj-9" : [ "live.toggle[88]", "live.toggle[1]", 0 ],
			"obj-31::obj-38::obj-35" : [ "volume[2]", "volume", 0 ],
			"obj-31::obj-18::obj-91::obj-9" : [ "recordFrame[11]", "recordFrame", 0 ],
			"obj-31::obj-32::obj-167" : [ "record-codec[5]", "record-codec", 0 ],
			"obj-31::obj-14::obj-123" : [ "thresh[13]", "thresh", 0 ],
			"obj-31::obj-34::obj-91::obj-5" : [ "voices[4]", "voices", 0 ],
			"obj-31::obj-20::obj-91::obj-9" : [ "recordFrame[10]", "recordFrame", 0 ],
			"obj-31::obj-22::obj-7" : [ "rate[9]", "rate", 0 ],
			"obj-31::obj-8::obj-21" : [ "frames-recorded[16]", "volume", 0 ],
			"obj-31::obj-26::obj-176" : [ "live.text[19]", "live.text[1]", 0 ],
			"obj-31::obj-10::obj-116" : [ "smooth[30]", "smooth", 0 ],
			"obj-31::obj-34::obj-91::obj-53" : [ "delayFrame[4]", "delayFrame", 0 ],
			"obj-31::obj-40::obj-91::obj-33" : [ "live.button[1]", "live.button", 0 ],
			"obj-31::obj-38::obj-66" : [ "live.numbox[2]", "live.numbox", 0 ],
			"obj-31::obj-12::obj-91::obj-10" : [ "playFrame[19]", "playFrame", 0 ],
			"obj-31::obj-34::obj-34" : [ "scale[4]", "scale", 0 ],
			"obj-31::obj-24::obj-111" : [ "trans-mode[8]", "trans-mode", 0 ],
			"obj-31::obj-10::obj-66" : [ "live.numbox[15]", "live.numbox", 0 ],
			"obj-31::obj-6::obj-91::obj-10" : [ "playFrame[22]", "playFrame", 0 ],
			"obj-31::obj-6::obj-142" : [ "mode[15]", "mode", 0 ],
			"obj-31::obj-8::obj-15" : [ "live.toggle[94]", "live.toggle[1]", 0 ],
			"obj-31::obj-20::obj-147" : [ "smooth[19]", "smooth", 0 ],
			"obj-31::obj-6::obj-56" : [ "rate-loop[22]", "rate-loop", 0 ],
			"obj-31::obj-32::obj-91::obj-8" : [ "live.button[19]", "live.button", 0 ],
			"obj-31::obj-16::obj-91::obj-9" : [ "recordFrame[12]", "recordFrame", 0 ],
			"obj-31::obj-12::obj-176" : [ "live.text[40]", "live.text[1]", 0 ],
			"obj-31::obj-27::obj-21" : [ "frames-recorded[19]", "volume", 0 ],
			"obj-31::obj-36::obj-9" : [ "live.toggle[12]", "live.toggle[1]", 0 ],
			"obj-31::obj-36::obj-57" : [ "loop-mode[3]", "loop-mode", 0 ],
			"obj-31::obj-34::obj-161" : [ "rotateZ[4]", "rotateZ", 0 ],
			"obj-31::obj-24::obj-91::obj-10" : [ "playFrame[7]", "playFrame", 0 ],
			"obj-31::obj-32::obj-123" : [ "thresh[5]", "thresh", 0 ],
			"obj-31::obj-16::obj-116" : [ "smooth[24]", "smooth", 0 ],
			"obj-31::obj-6::obj-34" : [ "scale[16]", "scale", 0 ],
			"obj-31::obj-14::obj-162" : [ "rotateY[11]", "rotateY", 0 ],
			"obj-31::obj-22::obj-8" : [ "live.text[26]", "live.text[1]", 0 ],
			"obj-31::obj-12::obj-91::obj-33" : [ "live.button[68]", "live.button", 0 ],
			"obj-31::obj-8::obj-91::obj-53" : [ "delayFrame[20]", "delayFrame", 0 ],
			"obj-31::obj-14::obj-176" : [ "live.text[37]", "live.text[1]", 0 ],
			"obj-31::obj-18::obj-57" : [ "loop-mode[10]", "loop-mode", 0 ],
			"obj-31::obj-10::obj-177" : [ "live-in[14]", "mode", 0 ],
			"obj-31::obj-38::obj-91::obj-53" : [ "delayFrame[2]", "delayFrame", 0 ],
			"obj-31::obj-38::obj-57" : [ "loop-mode[2]", "loop-mode", 0 ],
			"obj-31::obj-29::obj-21" : [ "frames-recorded[6]", "volume", 0 ],
			"obj-31::obj-22::obj-159" : [ "live.toggle[30]", "live.toggle", 0 ],
			"obj-31::obj-10::obj-15" : [ "live.toggle[89]", "live.toggle[1]", 0 ],
			"obj-31::obj-10::obj-4" : [ "invert[15]", "invert", 0 ],
			"obj-31::obj-32::obj-46" : [ "gain[5]", "gain", 0 ],
			"obj-31::obj-26::obj-91::obj-8" : [ "live.button[25]", "live.button", 0 ],
			"obj-31::obj-29::obj-116" : [ "smooth[12]", "smooth", 0 ],
			"obj-31::obj-12::obj-22" : [ "frames-available[35]", "frames-available", 0 ],
			"obj-31::obj-24::obj-142" : [ "mode[7]", "mode", 0 ],
			"obj-31::obj-8::obj-7" : [ "rate[15]", "rate", 0 ],
			"obj-31::obj-6::obj-91::obj-9" : [ "recordFrame[21]", "recordFrame", 0 ],
			"obj-31::obj-34::obj-173" : [ "live.text[12]", "live.text", 0 ],
			"obj-31::obj-32::obj-14" : [ "live.toggle[58]", "live.toggle[1]", 0 ],
			"obj-31::obj-20::obj-8" : [ "live.text[29]", "live.text[1]", 0 ],
			"obj-31::obj-6::obj-177" : [ "live-in[16]", "mode", 0 ],
			"obj-31::obj-36::obj-91::obj-33" : [ "live.button[9]", "live.button", 0 ],
			"obj-31::obj-22::obj-91::obj-23" : [ "live.button[32]", "live.button", 0 ],
			"obj-31::obj-4::obj-91::obj-33" : [ "live.button[90]", "live.button", 0 ],
			"obj-31::obj-18::obj-66" : [ "live.numbox[11]", "live.numbox", 0 ],
			"obj-31::obj-38::obj-91::obj-5" : [ "voices[2]", "voices", 0 ],
			"obj-31::obj-29::obj-123" : [ "thresh[6]", "thresh", 0 ],
			"obj-31::obj-34::obj-165" : [ "rotateX[4]", "rotateX", 0 ],
			"obj-31::obj-29::obj-34" : [ "scale[6]", "scale", 0 ],
			"obj-31::obj-10::obj-173" : [ "live.text[44]", "live.text", 0 ],
			"obj-31::obj-26::obj-167" : [ "record-codec[7]", "record-codec", 0 ],
			"obj-31::obj-22::obj-56" : [ "rate-loop[9]", "rate-loop", 0 ],
			"obj-31::obj-32::obj-57" : [ "loop-mode[5]", "loop-mode", 0 ],
			"obj-31::obj-29::obj-91::obj-10" : [ "playFrame[6]", "playFrame", 0 ],
			"obj-31::obj-29::obj-165" : [ "rotateX[6]", "rotateX", 0 ],
			"obj-31::obj-29::obj-173" : [ "live.text[18]", "live.text", 0 ],
			"obj-31::obj-16::obj-91::obj-53" : [ "delayFrame[12]", "delayFrame", 0 ],
			"obj-31::obj-40::obj-91::obj-10" : [ "playFrame[1]", "playFrame", 0 ],
			"obj-31::obj-40::obj-177" : [ "live-in[1]", "mode", 0 ],
			"obj-31::obj-29::obj-161" : [ "rotateZ[6]", "rotateZ", 0 ],
			"obj-31::obj-14::obj-56" : [ "rate-loop[13]", "rate-loop", 0 ],
			"obj-31::obj-36::obj-162" : [ "rotateY[3]", "rotateY", 0 ],
			"obj-31::obj-26::obj-56" : [ "rate-loop[7]", "rate-loop", 0 ],
			"obj-31::obj-10::obj-91::obj-5" : [ "voices[19]", "voices", 0 ],
			"obj-31::obj-20::obj-165" : [ "rotateX[10]", "rotateX", 0 ],
			"obj-31::obj-42::obj-165" : [ "rotateX[45]", "rotateX", 0 ],
			"obj-31::obj-10::obj-179" : [ "live.button[74]", "live.button", 0 ],
			"obj-31::obj-42::obj-161" : [ "rotateZ[41]", "rotateZ", 0 ],
			"obj-31::obj-40::obj-179" : [ "live.button[4]", "live.button", 0 ],
			"obj-31::obj-42::obj-21" : [ "frames-recorded[48]", "volume", 0 ],
			"obj-31::obj-14::obj-7" : [ "rate[12]", "rate", 0 ],
			"obj-31::obj-36::obj-179" : [ "live.button[12]", "live.button", 0 ],
			"obj-31::obj-22::obj-111" : [ "trans-mode[9]", "trans-mode", 0 ],
			"obj-31::obj-36::obj-22" : [ "frames-available[3]", "frames-available", 0 ],
			"obj-31::obj-32::obj-116" : [ "smooth[10]", "smooth", 0 ],
			"obj-31::obj-26::obj-161" : [ "rotateZ[7]", "rotateZ", 0 ],
			"obj-31::obj-14::obj-35" : [ "volume[12]", "volume", 0 ],
			"obj-31::obj-22::obj-91::obj-33" : [ "live.button[31]", "live.button", 0 ],
			"obj-31::obj-36::obj-34" : [ "scale[3]", "scale", 0 ],
			"obj-31::obj-29::obj-4" : [ "invert[6]", "invert", 0 ],
			"obj-31::obj-27::obj-91::obj-10" : [ "playFrame[24]", "playFrame", 0 ],
			"obj-31::obj-40::obj-21" : [ "frames-recorded[1]", "volume", 0 ],
			"obj-31::obj-22::obj-116" : [ "smooth[18]", "smooth", 0 ],
			"obj-31::obj-22::obj-147" : [ "smooth[17]", "smooth", 0 ],
			"obj-31::obj-14::obj-165" : [ "rotateX[13]", "rotateX", 0 ],
			"obj-31::obj-26::obj-21" : [ "frames-recorded[7]", "volume", 0 ],
			"obj-31::obj-32::obj-176" : [ "live.text[13]", "live.text[1]", 0 ],
			"obj-31::obj-18::obj-14" : [ "live.toggle[70]", "live.toggle[1]", 0 ],
			"obj-31::obj-34::obj-142" : [ "mode[3]", "mode", 0 ],
			"obj-31::obj-18::obj-46" : [ "gain[11]", "gain", 0 ],
			"obj-31::obj-10::obj-147" : [ "smooth[29]", "smooth", 0 ],
			"obj-31::obj-38::obj-177" : [ "live-in[2]", "mode", 0 ],
			"obj-31::obj-29::obj-91::obj-33" : [ "live.button[21]", "live.button", 0 ],
			"obj-31::obj-42::obj-46" : [ "gain[49]", "gain", 0 ],
			"obj-31::obj-34::obj-167" : [ "record-codec[4]", "record-codec", 0 ],
			"obj-31::obj-14::obj-91::obj-9" : [ "recordFrame[13]", "recordFrame", 0 ],
			"obj-31::obj-14::obj-4" : [ "invert[13]", "invert", 0 ],
			"obj-31::obj-12::obj-91::obj-5" : [ "voices[14]", "voices", 0 ],
			"obj-31::obj-29::obj-142" : [ "mode[5]", "mode", 0 ],
			"obj-31::obj-40::obj-147" : [ "smooth[1]", "smooth", 0 ],
			"obj-31::obj-29::obj-177" : [ "live-in[6]", "mode", 0 ],
			"obj-31::obj-4::obj-35" : [ "volume[17]", "volume", 0 ],
			"obj-31::obj-34::obj-46" : [ "gain[4]", "gain", 0 ],
			"obj-31::obj-27::obj-91::obj-23" : [ "live.button[91]", "live.button", 0 ],
			"obj-31::obj-10::obj-9" : [ "live.toggle[93]", "live.toggle[1]", 0 ],
			"obj-31::obj-32::obj-4" : [ "invert[5]", "invert", 0 ],
			"obj-31::obj-29::obj-147" : [ "smooth[11]", "smooth", 0 ],
			"obj-31::obj-22::obj-177" : [ "live-in[9]", "mode", 0 ],
			"obj-31::obj-16::obj-14" : [ "live.toggle[75]", "live.toggle[1]", 0 ],
			"obj-31::obj-12::obj-91::obj-8" : [ "live.button[70]", "live.button", 0 ],
			"obj-31::obj-8::obj-28" : [ "live.toggle[97]", "live.toggle[1]", 0 ],
			"obj-31::obj-34::obj-91::obj-9" : [ "recordFrame[4]", "recordFrame", 0 ],
			"obj-31::obj-29::obj-14" : [ "live.toggle[63]", "live.toggle[1]", 0 ],
			"obj-31::obj-29::obj-159" : [ "live.toggle[64]", "live.toggle", 0 ],
			"obj-31::obj-34::obj-66" : [ "live.numbox[4]", "live.numbox", 0 ],
			"obj-31::obj-12::obj-28" : [ "live.toggle[87]", "live.toggle[1]", 0 ],
			"obj-31::obj-16::obj-167" : [ "record-codec[12]", "record-codec", 0 ],
			"obj-31::obj-6::obj-161" : [ "rotateZ[17]", "rotateZ", 0 ],
			"obj-31::obj-40::obj-15" : [ "live.toggle[1]", "live.toggle[1]", 0 ],
			"obj-31::obj-24::obj-22" : [ "frames-available[7]", "frames-available", 0 ],
			"obj-31::obj-38::obj-111" : [ "trans-mode[2]", "trans-mode", 0 ],
			"obj-31::obj-29::obj-9" : [ "live.toggle[19]", "live.toggle[1]", 0 ],
			"obj-31::obj-12::obj-91::obj-53" : [ "delayFrame[14]", "delayFrame", 0 ],
			"obj-31::obj-40::obj-35" : [ "volume[1]", "volume", 0 ],
			"obj-31::obj-32::obj-162" : [ "rotateY[4]", "rotateY", 0 ],
			"obj-31::obj-14::obj-177" : [ "live-in[12]", "mode", 0 ],
			"obj-31::obj-42::obj-162" : [ "rotateY[21]", "rotateY", 0 ],
			"obj-31::obj-42::obj-179" : [ "live.button[84]", "live.button", 0 ],
			"obj-31::obj-27::obj-56" : [ "rate-loop[24]", "rate-loop", 0 ],
			"obj-31::obj-34::obj-28" : [ "live.toggle[16]", "live.toggle[1]", 0 ],
			"obj-31::obj-18::obj-91::obj-33" : [ "live.button[39]", "live.button", 0 ],
			"obj-31::obj-12::obj-167" : [ "record-codec[14]", "record-codec", 0 ],
			"obj-31::obj-32::obj-7" : [ "rate[5]", "rate", 0 ],
			"obj-31::obj-24::obj-21" : [ "frames-recorded[8]", "volume", 0 ],
			"obj-31::obj-12::obj-7" : [ "rate[13]", "rate", 0 ],
			"obj-31::obj-27::obj-14" : [ "live.toggle[110]", "live.toggle[1]", 0 ],
			"obj-31::obj-34::obj-176" : [ "live.text[10]", "live.text[1]", 0 ],
			"obj-31::obj-26::obj-123" : [ "thresh[7]", "thresh", 0 ],
			"obj-31::obj-6::obj-28" : [ "live.toggle[102]", "live.toggle[1]", 0 ],
			"obj-31::obj-20::obj-35" : [ "volume[51]", "volume", 0 ],
			"obj-31::obj-6::obj-46" : [ "gain[17]", "gain", 0 ],
			"obj-31::obj-27::obj-66" : [ "live.numbox[19]", "live.numbox", 0 ],
			"obj-31::obj-36::obj-111" : [ "trans-mode[3]", "trans-mode", 0 ],
			"obj-31::obj-20::obj-14" : [ "live.toggle[34]", "live.toggle[1]", 0 ],
			"obj-31::obj-6::obj-66" : [ "live.numbox[17]", "live.numbox", 0 ],
			"obj-31::obj-26::obj-8" : [ "live.text[20]", "live.text[1]", 0 ],
			"obj-31::obj-40::obj-66" : [ "live.numbox[1]", "live.numbox", 0 ],
			"obj-31::obj-24::obj-159" : [ "live.toggle[27]", "live.toggle", 0 ],
			"obj-31::obj-29::obj-91::obj-9" : [ "recordFrame[6]", "recordFrame", 0 ],
			"obj-31::obj-10::obj-56" : [ "rate-loop[15]", "rate-loop", 0 ],
			"obj-31::obj-24::obj-34" : [ "scale[8]", "scale", 0 ],
			"obj-31::obj-20::obj-91::obj-53" : [ "delayFrame[10]", "delayFrame", 0 ],
			"obj-31::obj-26::obj-179" : [ "live.button[26]", "live.button", 0 ],
			"obj-31::obj-42::obj-91::obj-10" : [ "playFrame[17]", "playFrame", 0 ],
			"obj-31::obj-34::obj-116" : [ "smooth[8]", "smooth", 0 ],
			"obj-31::obj-22::obj-179" : [ "live.button[34]", "live.button", 0 ],
			"obj-31::obj-4::obj-167" : [ "record-codec[17]", "record-codec", 0 ],
			"obj-31::obj-8::obj-56" : [ "rate-loop[21]", "rate-loop", 0 ],
			"obj-31::obj-42::obj-111" : [ "trans-mode[24]", "trans-mode", 0 ],
			"obj-31::obj-26::obj-9" : [ "live.toggle[24]", "live.toggle[1]", 0 ],
			"obj-31::obj-6::obj-8" : [ "live.text[49]", "live.text[1]", 0 ],
			"obj-31::obj-38::obj-161" : [ "rotateZ[2]", "rotateZ", 0 ],
			"obj-31::obj-26::obj-177" : [ "live-in[7]", "mode", 0 ],
			"obj-31::obj-18::obj-176" : [ "live.text[31]", "live.text[1]", 0 ],
			"obj-31::obj-40::obj-57" : [ "loop-mode[1]", "loop-mode", 0 ],
			"obj-31::obj-26::obj-15" : [ "live.toggle[20]", "live.toggle[1]", 0 ],
			"obj-31::obj-24::obj-147" : [ "smooth[15]", "smooth", 0 ],
			"obj-31::obj-36::obj-46" : [ "gain[3]", "gain", 0 ],
			"obj-31::obj-36::obj-21" : [ "frames-recorded[3]", "volume", 0 ],
			"obj-31::obj-40::obj-91::obj-53" : [ "delayFrame[1]", "delayFrame", 0 ],
			"obj-31::obj-34::obj-159" : [ "live.toggle[15]", "live.toggle", 0 ],
			"obj-31::obj-24::obj-4" : [ "invert[8]", "invert", 0 ],
			"obj-31::obj-27::obj-4" : [ "invert[19]", "invert", 0 ],
			"obj-31::obj-42::obj-91::obj-8" : [ "live.button[60]", "live.button", 0 ],
			"obj-31::obj-38::obj-91::obj-33" : [ "live.button[5]", "live.button", 0 ],
			"obj-31::obj-34::obj-179" : [ "live.button[16]", "live.button", 0 ],
			"obj-31::obj-4::obj-116" : [ "smooth[35]", "smooth", 0 ],
			"obj-31::obj-10::obj-142" : [ "mode[13]", "mode", 0 ],
			"obj-31::obj-27::obj-111" : [ "trans-mode[19]", "trans-mode", 0 ],
			"obj-31::obj-22::obj-14" : [ "live.toggle[29]", "live.toggle[1]", 0 ],
			"obj-31::obj-24::obj-7" : [ "rate[8]", "rate", 0 ],
			"obj-31::obj-8::obj-91::obj-5" : [ "voices[20]", "voices", 0 ],
			"obj-31::obj-10::obj-46" : [ "gain[15]", "gain", 0 ],
			"obj-31::obj-8::obj-91::obj-9" : [ "recordFrame[20]", "recordFrame", 0 ],
			"obj-31::obj-20::obj-66" : [ "live.numbox[10]", "live.numbox", 0 ],
			"obj-31::obj-12::obj-177" : [ "live-in[13]", "mode", 0 ],
			"obj-31::obj-32::obj-142" : [ "mode[4]", "mode", 0 ],
			"obj-31::obj-32::obj-91::obj-10" : [ "playFrame[5]", "playFrame", 0 ],
			"obj-31::obj-8::obj-57" : [ "loop-mode[15]", "loop-mode", 0 ],
			"obj-31::obj-36::obj-123" : [ "thresh[3]", "thresh", 0 ],
			"obj-31::obj-32::obj-56" : [ "rate-loop[5]", "rate-loop", 0 ],
			"obj-31::obj-8::obj-165" : [ "rotateX[16]", "rotateX", 0 ],
			"obj-31::obj-12::obj-173" : [ "live.text[135]", "live.text", 0 ],
			"obj-31::obj-42::obj-91::obj-5" : [ "voices[18]", "voices", 0 ],
			"obj-31::obj-40::obj-91::obj-5" : [ "voices[1]", "voices", 0 ],
			"obj-31::obj-6::obj-176" : [ "live.text[48]", "live.text[1]", 0 ],
			"obj-31::obj-12::obj-21" : [ "frames-recorded[14]", "volume", 0 ],
			"obj-31::obj-34::obj-56" : [ "rate-loop[4]", "rate-loop", 0 ],
			"obj-31::obj-32::obj-165" : [ "rotateX[5]", "rotateX", 0 ],
			"obj-31::obj-14::obj-179" : [ "live.button[67]", "live.button", 0 ],
			"obj-31::obj-38::obj-162" : [ "rotateY[2]", "rotateY", 0 ],
			"obj-31::obj-29::obj-91::obj-53" : [ "delayFrame[6]", "delayFrame", 0 ],
			"obj-31::obj-42::obj-57" : [ "loop-mode[23]", "loop-mode", 0 ],
			"obj-31::obj-14::obj-91::obj-8" : [ "live.button[66]", "live.button", 0 ],
			"obj-31::obj-38::obj-91::obj-23" : [ "live.button[6]", "live.button", 0 ],
			"obj-31::obj-38::obj-22" : [ "frames-available[2]", "frames-available", 0 ],
			"obj-31::obj-6::obj-91::obj-8" : [ "live.button[77]", "live.button", 0 ],
			"obj-31::obj-38::obj-159" : [ "live.toggle[56]", "live.toggle", 0 ],
			"obj-31::obj-42::obj-56" : [ "rate-loop[20]", "rate-loop", 0 ],
			"obj-31::obj-29::obj-35" : [ "volume[6]", "volume", 0 ],
			"obj-31::obj-10::obj-8" : [ "live.text[43]", "live.text[1]", 0 ],
			"obj-31::obj-12::obj-116" : [ "smooth[28]", "smooth", 0 ],
			"obj-31::obj-32::obj-147" : [ "smooth[9]", "smooth", 0 ],
			"obj-31::obj-26::obj-147" : [ "smooth[13]", "smooth", 0 ],
			"obj-31::obj-16::obj-111" : [ "trans-mode[12]", "trans-mode", 0 ],
			"obj-31::obj-6::obj-91::obj-53" : [ "delayFrame[21]", "delayFrame", 0 ],
			"obj-31::obj-36::obj-176" : [ "live.text[7]", "live.text[1]", 0 ],
			"obj-31::obj-22::obj-57" : [ "loop-mode[24]", "loop-mode", 0 ],
			"obj-31::obj-27::obj-8" : [ "live.text[70]", "live.text[1]", 0 ],
			"obj-31::obj-22::obj-142" : [ "mode[44]", "mode", 0 ],
			"obj-31::obj-18::obj-159" : [ "live.toggle[71]", "live.toggle", 0 ],
			"obj-31::obj-38::obj-34" : [ "scale[2]", "scale", 0 ],
			"obj-31::obj-24::obj-56" : [ "rate-loop[8]", "rate-loop", 0 ],
			"obj-31::obj-14::obj-159" : [ "live.toggle[81]", "live.toggle", 0 ],
			"obj-31::obj-10::obj-22" : [ "frames-available[12]", "frames-available", 0 ],
			"obj-31::obj-6::obj-116" : [ "smooth[34]", "smooth", 0 ],
			"obj-31::obj-29::obj-46" : [ "gain[6]", "gain", 0 ],
			"obj-31::obj-38::obj-167" : [ "record-codec[2]", "record-codec", 0 ],
			"obj-31::obj-16::obj-179" : [ "live.button[46]", "live.button", 0 ],
			"obj-31::obj-26::obj-4" : [ "invert[7]", "invert", 0 ],
			"obj-31::obj-36::obj-91::obj-8" : [ "live.button[11]", "live.button", 0 ],
			"obj-31::obj-8::obj-8" : [ "live.text[46]", "live.text[1]", 0 ],
			"obj-31::obj-6::obj-91::obj-33" : [ "live.button[75]", "live.button", 0 ],
			"obj-31::obj-22::obj-35" : [ "volume[9]", "volume", 0 ],
			"obj-31::obj-22::obj-9" : [ "live.toggle[32]", "live.toggle[1]", 0 ],
			"obj-31::obj-4::obj-91::obj-23" : [ "live.button[79]", "live.button", 0 ],
			"obj-31::obj-27::obj-46" : [ "gain[19]", "gain", 0 ],
			"obj-31::obj-36::obj-177" : [ "live-in[3]", "mode", 0 ],
			"obj-31::obj-10::obj-21" : [ "frames-recorded[15]", "volume", 0 ],
			"obj-31::obj-8::obj-4" : [ "invert[16]", "invert", 0 ],
			"obj-31::obj-4::obj-22" : [ "frames-available[15]", "frames-available", 0 ],
			"obj-31::obj-40::obj-91::obj-23" : [ "live.button[2]", "live.button", 0 ],
			"obj-31::obj-36::obj-4" : [ "invert[3]", "invert", 0 ],
			"obj-31::obj-32::obj-28" : [ "live.toggle[60]", "live.toggle[1]", 0 ],
			"obj-31::obj-38::obj-91::obj-9" : [ "recordFrame[2]", "recordFrame", 0 ],
			"obj-31::obj-40::obj-28" : [ "live.toggle[4]", "live.toggle[1]", 0 ],
			"obj-31::obj-27::obj-91::obj-9" : [ "recordFrame[22]", "recordFrame", 0 ],
			"obj-31::obj-36::obj-116" : [ "smooth[6]", "smooth", 0 ],
			"obj-31::obj-18::obj-22" : [ "frames-available[10]", "frames-available", 0 ],
			"obj-31::obj-18::obj-116" : [ "smooth[22]", "smooth", 0 ],
			"obj-31::obj-32::obj-177" : [ "live-in[5]", "mode", 0 ],
			"obj-31::obj-40::obj-111" : [ "trans-mode[1]", "trans-mode", 0 ],
			"obj-31::obj-22::obj-161" : [ "rotateZ[9]", "rotateZ", 0 ],
			"obj-31::obj-34::obj-22" : [ "frames-available[4]", "frames-available", 0 ],
			"obj-31::obj-16::obj-8" : [ "live.text[35]", "live.text[1]", 0 ],
			"obj-31::obj-27::obj-91::obj-53" : [ "delayFrame[22]", "delayFrame", 0 ],
			"obj-31::obj-29::obj-167" : [ "record-codec[6]", "record-codec", 0 ],
			"obj-31::obj-36::obj-15" : [ "live.toggle[8]", "live.toggle[1]", 0 ],
			"obj-31::obj-10::obj-28" : [ "live.toggle[92]", "live.toggle[1]", 0 ],
			"obj-31::obj-36::obj-159" : [ "live.toggle[10]", "live.toggle", 0 ],
			"obj-31::obj-32::obj-179" : [ "live.button[20]", "live.button", 0 ],
			"obj-31::obj-32::obj-15" : [ "live.toggle[57]", "live.toggle[1]", 0 ],
			"obj-31::obj-8::obj-162" : [ "rotateY[14]", "rotateY", 0 ],
			"obj-31::obj-22::obj-162" : [ "rotateY[23]", "rotateY", 0 ],
			"obj-31::obj-16::obj-66" : [ "live.numbox[12]", "live.numbox", 0 ],
			"obj-31::obj-38::obj-8" : [ "live.text[5]", "live.text[1]", 0 ],
			"obj-31::obj-34::obj-123" : [ "thresh[4]", "thresh", 0 ],
			"obj-31::obj-32::obj-9" : [ "live.toggle[61]", "live.toggle[1]", 0 ],
			"obj-31::obj-8::obj-35" : [ "volume[15]", "volume", 0 ],
			"obj-31::obj-34::obj-21" : [ "frames-recorded[4]", "volume", 0 ],
			"obj-31::obj-26::obj-91::obj-10" : [ "playFrame[18]", "playFrame", 0 ],
			"obj-31::obj-16::obj-142" : [ "mode[10]", "mode", 0 ],
			"obj-31::obj-36::obj-7" : [ "rate[3]", "rate", 0 ],
			"obj-31::obj-27::obj-159" : [ "live.toggle[111]", "live.toggle", 0 ],
			"obj-31::obj-26::obj-7" : [ "rate[7]", "rate", 0 ],
			"obj-31::obj-42::obj-34" : [ "scale[23]", "scale", 0 ],
			"obj-31::obj-16::obj-176" : [ "live.text[34]", "live.text[1]", 0 ],
			"obj-31::obj-16::obj-15" : [ "live.toggle[74]", "live.toggle[1]", 0 ],
			"obj-31::obj-34::obj-14" : [ "live.toggle[14]", "live.toggle[1]", 0 ],
			"obj-31::obj-34::obj-9" : [ "live.toggle[17]", "live.toggle[1]", 0 ],
			"obj-31::obj-22::obj-66" : [ "live.numbox[9]", "live.numbox", 0 ],
			"obj-31::obj-36::obj-91::obj-9" : [ "recordFrame[3]", "recordFrame", 0 ],
			"obj-31::obj-10::obj-34" : [ "scale[14]", "scale", 0 ],
			"obj-31::obj-16::obj-91::obj-5" : [ "voices[12]", "voices", 0 ],
			"obj-31::obj-14::obj-9" : [ "live.toggle[83]", "live.toggle[1]", 0 ],
			"obj-31::obj-32::obj-91::obj-33" : [ "live.button[17]", "live.button", 0 ],
			"obj-31::obj-26::obj-14" : [ "live.toggle[21]", "live.toggle[1]", 0 ],
			"obj-31::obj-16::obj-56" : [ "rate-loop[12]", "rate-loop", 0 ],
			"obj-31::obj-10::obj-162" : [ "rotateY[13]", "rotateY", 0 ],
			"obj-31::obj-42::obj-15" : [ "live.toggle[52]", "live.toggle[1]", 0 ],
			"obj-31::obj-24::obj-91::obj-53" : [ "delayFrame[8]", "delayFrame", 0 ],
			"obj-31::obj-22::obj-91::obj-53" : [ "delayFrame[9]", "delayFrame", 0 ],
			"obj-31::obj-42::obj-22" : [ "frames-available[32]", "frames-available", 0 ],
			"obj-31::obj-27::obj-7" : [ "rate[18]", "rate", 0 ],
			"obj-31::obj-10::obj-57" : [ "loop-mode[14]", "loop-mode", 0 ],
			"obj-31::obj-40::obj-161" : [ "rotateZ[1]", "rotateZ", 0 ],
			"obj-31::obj-18::obj-56" : [ "rate-loop[11]", "rate-loop", 0 ],
			"obj-31::obj-6::obj-159" : [ "live.toggle[101]", "live.toggle", 0 ],
			"obj-31::obj-18::obj-7" : [ "rate[10]", "rate", 0 ],
			"obj-31::obj-42::obj-176" : [ "live.text[93]", "live.text[1]", 0 ],
			"obj-31::obj-12::obj-91::obj-23" : [ "live.button[69]", "live.button", 0 ],
			"obj-31::obj-38::obj-46" : [ "gain[2]", "gain", 0 ],
			"obj-31::obj-22::obj-91::obj-5" : [ "voices[9]", "voices", 0 ],
			"obj-31::obj-4::obj-91::obj-8" : [ "live.button[89]", "live.button", 0 ],
			"obj-31::obj-42::obj-91::obj-9" : [ "recordFrame[18]", "recordFrame", 0 ],
			"obj-31::obj-29::obj-176" : [ "live.text[16]", "live.text[1]", 0 ],
			"obj-31::obj-20::obj-91::obj-5" : [ "voices[10]", "voices", 0 ],
			"obj-31::obj-36::obj-91::obj-23" : [ "live.button[10]", "live.button", 0 ],
			"obj-31::obj-20::obj-116" : [ "smooth[20]", "smooth", 0 ],
			"obj-31::obj-36::obj-142" : [ "mode[2]", "mode", 0 ],
			"obj-31::obj-34::obj-7" : [ "rate[4]", "rate", 0 ],
			"obj-31::obj-24::obj-46" : [ "gain[8]", "gain", 0 ],
			"obj-31::obj-10::obj-91::obj-9" : [ "recordFrame[19]", "recordFrame", 0 ],
			"obj-31::obj-16::obj-91::obj-23" : [ "live.button[44]", "live.button", 0 ],
			"obj-31::obj-20::obj-111" : [ "trans-mode[10]", "trans-mode", 0 ],
			"obj-31::obj-18::obj-162" : [ "rotateY[9]", "rotateY", 0 ],
			"obj-31::obj-4::obj-162" : [ "rotateY[24]", "rotateY", 0 ],
			"obj-31::obj-8::obj-9" : [ "live.toggle[98]", "live.toggle[1]", 0 ],
			"obj-31::obj-24::obj-165" : [ "rotateX[8]", "rotateX", 0 ],
			"obj-31::obj-22::obj-91::obj-10" : [ "playFrame[8]", "playFrame", 0 ],
			"obj-31::obj-36::obj-56" : [ "rate-loop[3]", "rate-loop", 0 ],
			"obj-31::obj-6::obj-91::obj-5" : [ "voices[21]", "voices", 0 ],
			"obj-31::obj-40::obj-162" : [ "rotateY[1]", "rotateY", 0 ],
			"obj-31::obj-36::obj-165" : [ "rotateX[3]", "rotateX", 0 ],
			"obj-31::obj-14::obj-28" : [ "live.toggle[82]", "live.toggle[1]", 0 ],
			"obj-31::obj-4::obj-46" : [ "gain[18]", "gain", 0 ],
			"obj-31::obj-29::obj-91::obj-8" : [ "live.button[62]", "live.button", 0 ],
			"obj-31::obj-24::obj-91::obj-8" : [ "live.button[29]", "live.button", 0 ],
			"obj-31::obj-26::obj-159" : [ "live.toggle[22]", "live.toggle", 0 ],
			"obj-31::obj-4::obj-14" : [ "live.toggle[105]", "live.toggle[1]", 0 ],
			"obj-31::obj-18::obj-21" : [ "frames-recorded[11]", "volume", 0 ],
			"obj-31::obj-18::obj-35" : [ "volume[10]", "volume", 0 ],
			"obj-31::obj-10::obj-91::obj-10" : [ "playFrame[20]", "playFrame", 0 ],
			"obj-31::obj-22::obj-34" : [ "scale[24]", "scale", 0 ],
			"obj-31::obj-24::obj-179" : [ "live.button[30]", "live.button", 0 ],
			"obj-31::obj-4::obj-21" : [ "frames-recorded[18]", "volume", 0 ],
			"obj-31::obj-24::obj-176" : [ "live.text[22]", "live.text[1]", 0 ],
			"obj-31::obj-40::obj-91::obj-8" : [ "live.button[3]", "live.button", 0 ],
			"obj-31::obj-38::obj-14" : [ "live.toggle[55]", "live.toggle[1]", 0 ],
			"obj-31::obj-18::obj-173" : [ "live.text[33]", "live.text", 0 ],
			"obj-31::obj-12::obj-15" : [ "live.toggle[84]", "live.toggle[1]", 0 ],
			"obj-31::obj-26::obj-116" : [ "smooth[14]", "smooth", 0 ],
			"obj-31::obj-42::obj-7" : [ "rate[50]", "rate", 0 ],
			"obj-31::obj-40::obj-22" : [ "frames-available[1]", "frames-available", 0 ],
			"obj-31::obj-20::obj-173" : [ "live.text[30]", "live.text", 0 ],
			"obj-31::obj-20::obj-56" : [ "rate-loop[10]", "rate-loop", 0 ],
			"obj-31::obj-38::obj-176" : [ "live.text[4]", "live.text[1]", 0 ],
			"obj-31::obj-14::obj-15" : [ "live.toggle[79]", "live.toggle[1]", 0 ],
			"obj-31::obj-10::obj-91::obj-53" : [ "delayFrame[19]", "delayFrame", 0 ],
			"obj-31::obj-6::obj-167" : [ "record-codec[41]", "record-codec", 0 ],
			"obj-31::obj-14::obj-116" : [ "smooth[26]", "smooth", 0 ],
			"obj-31::obj-4::obj-91::obj-53" : [ "delayFrame[15]", "delayFrame", 0 ],
			"obj-31::obj-12::obj-111" : [ "trans-mode[14]", "trans-mode", 0 ],
			"obj-31::obj-8::obj-177" : [ "live-in[15]", "mode", 0 ],
			"obj-31::obj-40::obj-34" : [ "scale[1]", "scale", 0 ],
			"obj-31::obj-36::obj-147" : [ "smooth[5]", "smooth", 0 ],
			"obj-31::obj-29::obj-111" : [ "trans-mode[6]", "trans-mode", 0 ],
			"obj-31::obj-24::obj-8" : [ "live.text[23]", "live.text[1]", 0 ],
			"obj-31::obj-8::obj-159" : [ "live.toggle[96]", "live.toggle", 0 ],
			"obj-31::obj-34::obj-4" : [ "invert[4]", "invert", 0 ],
			"obj-31::obj-14::obj-22" : [ "frames-available[34]", "frames-available", 0 ],
			"obj-31::obj-24::obj-91::obj-23" : [ "live.button[28]", "live.button", 0 ],
			"obj-31::obj-40::obj-167" : [ "record-codec[1]", "record-codec", 0 ],
			"obj-31::obj-10::obj-159" : [ "live.toggle[91]", "live.toggle", 0 ],
			"obj-31::obj-6::obj-14" : [ "live.toggle[100]", "live.toggle[1]", 0 ],
			"obj-31::obj-20::obj-179" : [ "live.button[38]", "live.button", 0 ],
			"obj-31::obj-18::obj-8" : [ "live.text[32]", "live.text[1]", 0 ],
			"obj-31::obj-8::obj-123" : [ "thresh[16]", "thresh", 0 ],
			"obj-31::obj-32::obj-35" : [ "volume[5]", "volume", 0 ],
			"obj-31::obj-40::obj-91::obj-9" : [ "recordFrame[1]", "recordFrame", 0 ],
			"obj-31::obj-20::obj-21" : [ "frames-recorded[10]", "volume", 0 ],
			"obj-31::obj-4::obj-123" : [ "thresh[18]", "thresh", 0 ],
			"obj-31::obj-22::obj-22" : [ "frames-available[8]", "frames-available", 0 ],
			"obj-31::obj-18::obj-123" : [ "thresh[11]", "thresh", 0 ],
			"obj-31::obj-14::obj-111" : [ "trans-mode[13]", "trans-mode", 0 ],
			"obj-31::obj-20::obj-142" : [ "mode[8]", "mode", 0 ],
			"obj-31::obj-27::obj-165" : [ "rotateX[19]", "rotateX", 0 ],
			"obj-31::obj-16::obj-7" : [ "rate[11]", "rate", 0 ],
			"obj-31::obj-12::obj-66" : [ "live.numbox[14]", "live.numbox", 0 ],
			"obj-31::obj-40::obj-9" : [ "live.toggle[5]", "live.toggle[1]", 0 ],
			"obj-31::obj-42::obj-123" : [ "thresh[45]", "thresh", 0 ],
			"obj-31::obj-32::obj-161" : [ "rotateZ[5]", "rotateZ", 0 ],
			"obj-31::obj-18::obj-91::obj-53" : [ "delayFrame[11]", "delayFrame", 0 ],
			"obj-31::obj-36::obj-167" : [ "record-codec[3]", "record-codec", 0 ],
			"obj-31::obj-40::obj-173" : [ "live.text[3]", "live.text", 0 ],
			"obj-31::obj-27::obj-22" : [ "frames-available[16]", "frames-available", 0 ],
			"obj-31::obj-32::obj-91::obj-9" : [ "recordFrame[5]", "recordFrame", 0 ],
			"obj-31::obj-38::obj-21" : [ "frames-recorded[2]", "volume", 0 ],
			"obj-31::obj-10::obj-91::obj-8" : [ "live.button[73]", "live.button", 0 ],
			"obj-31::obj-8::obj-46" : [ "gain[16]", "gain", 0 ],
			"obj-31::obj-38::obj-123" : [ "thresh[2]", "thresh", 0 ],
			"obj-31::obj-4::obj-8" : [ "live.text[52]", "live.text[1]", 0 ],
			"obj-31::obj-22::obj-15" : [ "live.toggle[28]", "live.toggle[1]", 0 ],
			"obj-31::obj-42::obj-91::obj-23" : [ "live.button[61]", "live.button", 0 ],
			"obj-31::obj-29::obj-66" : [ "live.numbox[6]", "live.numbox", 0 ],
			"obj-31::obj-12::obj-34" : [ "scale[13]", "scale", 0 ],
			"obj-31::obj-16::obj-162" : [ "rotateY[10]", "rotateY", 0 ],
			"obj-31::obj-27::obj-162" : [ "rotateY[25]", "rotateY", 0 ],
			"obj-31::obj-24::obj-35" : [ "volume[8]", "volume", 0 ],
			"obj-31::obj-20::obj-91::obj-10" : [ "playFrame[9]", "playFrame", 0 ],
			"obj-31::obj-38::obj-7" : [ "rate[2]", "rate", 0 ],
			"obj-31::obj-8::obj-91::obj-33" : [ "live.button[86]", "live.button", 0 ],
			"obj-31::obj-4::obj-91::obj-5" : [ "voices[22]", "voices", 0 ],
			"obj-31::obj-18::obj-28" : [ "live.toggle[72]", "live.toggle[1]", 0 ],
			"obj-31::obj-27::obj-179" : [ "live.button[92]", "live.button", 0 ],
			"obj-31::obj-27::obj-34" : [ "scale[25]", "scale", 0 ],
			"obj-31::obj-4::obj-9" : [ "live.toggle[108]", "live.toggle[1]", 0 ],
			"obj-31::obj-16::obj-57" : [ "loop-mode[11]", "loop-mode", 0 ],
			"obj-31::obj-14::obj-161" : [ "rotateZ[13]", "rotateZ", 0 ],
			"obj-31::obj-4::obj-56" : [ "rate-loop[23]", "rate-loop", 0 ],
			"obj-31::obj-42::obj-159" : [ "live.toggle[42]", "live.toggle", 0 ],
			"obj-31::obj-32::obj-66" : [ "live.numbox[5]", "live.numbox", 0 ],
			"obj-31::obj-6::obj-35" : [ "volume[16]", "volume", 0 ],
			"obj-31::obj-27::obj-91::obj-33" : [ "live.button[94]", "live.button", 0 ],
			"obj-31::obj-27::obj-176" : [ "live.text[54]", "live.text[1]", 0 ],
			"obj-31::obj-36::obj-14" : [ "live.toggle[9]", "live.toggle[1]", 0 ],
			"obj-31::obj-4::obj-161" : [ "rotateZ[18]", "rotateZ", 0 ],
			"obj-31::obj-27::obj-161" : [ "rotateZ[19]", "rotateZ", 0 ],
			"obj-31::obj-38::obj-9" : [ "live.toggle[7]", "live.toggle[1]", 0 ],
			"obj-31::obj-10::obj-161" : [ "rotateZ[15]", "rotateZ", 0 ],
			"obj-31::obj-27::obj-9" : [ "live.toggle[113]", "live.toggle[1]", 0 ],
			"obj-31::obj-10::obj-123" : [ "thresh[15]", "thresh", 0 ],
			"obj-31::obj-14::obj-91::obj-23" : [ "live.button[65]", "live.button", 0 ],
			"obj-31::obj-24::obj-162" : [ "rotateY[7]", "rotateY", 0 ],
			"obj-31::obj-27::obj-147" : [ "smooth[38]", "smooth", 0 ],
			"obj-31::obj-26::obj-57" : [ "loop-mode[7]", "loop-mode", 0 ],
			"obj-31::obj-42::obj-9" : [ "live.toggle[51]", "live.toggle[1]", 0 ],
			"obj-31::obj-32::obj-91::obj-53" : [ "delayFrame[5]", "delayFrame", 0 ],
			"obj-31::obj-29::obj-15" : [ "live.toggle[62]", "live.toggle[1]", 0 ],
			"obj-31::obj-4::obj-165" : [ "rotateX[18]", "rotateX", 0 ],
			"obj-31::obj-34::obj-91::obj-33" : [ "live.button[13]", "live.button", 0 ],
			"obj-31::obj-24::obj-14" : [ "live.toggle[26]", "live.toggle[1]", 0 ],
			"obj-31::obj-29::obj-56" : [ "rate-loop[6]", "rate-loop", 0 ],
			"obj-31::obj-10::obj-35" : [ "volume[14]", "volume", 0 ],
			"obj-31::obj-18::obj-167" : [ "record-codec[11]", "record-codec", 0 ],
			"obj-31::obj-27::obj-123" : [ "thresh[19]", "thresh", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "maw.jit.videoplane-render.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Support/Abstractions/jit",
				"patcherrelativepath" : "../../mawLib-Support/Abstractions/jit",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maw.jit.camera.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Support/Abstractions/jit",
				"patcherrelativepath" : "../../mawLib-Support/Abstractions/jit",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maw.jit.loop-manual-help.json",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Help/jit",
				"patcherrelativepath" : "",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maw.util.pattrstorage-helper.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Support/Abstractions/util",
				"patcherrelativepath" : "../../mawLib-Support/Abstractions/util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maw.util.readwrite.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Support/Abstractions/util",
				"patcherrelativepath" : "../../mawLib-Support/Abstractions/util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maw.util.var-init.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Support/Abstractions/util",
				"patcherrelativepath" : "../../mawLib-Support/Abstractions/util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maw.util.remove-char.js",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Support/js/utils",
				"patcherrelativepath" : "../../mawLib-Support/js/utils",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "cv.jit.faces.draw.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/3rd Party/XMax-UB-Max5/cv.jit_OSX_v1.7.2/cv.jit-support/Abstractions",
				"patcherrelativepath" : "../../../../../../3rd Party/XMax-UB-Max5/cv.jit_OSX_v1.7.2/cv.jit-support/Abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maw.livedraw.face-recorder.voi.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Perform/livedraw",
				"patcherrelativepath" : "../../mawLib-Perform/livedraw",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ali.constant.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/aLib/_aLib 1.0 11.1.1/for streams",
				"patcherrelativepath" : "../../../../../../aLib/_aLib 1.0 11.1.1/for streams",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "var-init.pat",
				"bootpath" : "/Users/ali/Dropbox/for-max/aLib/_aLib 1.0 11.1.1/for crap",
				"patcherrelativepath" : "../../../../../../aLib/_aLib 1.0 11.1.1/for crap",
				"type" : "maxb",
				"implicit" : 1
			}
, 			{
				"name" : "maw.livedraw-layer-gui.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Perform/livedraw",
				"patcherrelativepath" : "../../mawLib-Perform/livedraw",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maw.jit.loop-manual.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Support/Abstractions/jit",
				"patcherrelativepath" : "../../mawLib-Support/Abstractions/jit",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maw.jit.videoplane.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Support/Abstractions/jit",
				"patcherrelativepath" : "../../mawLib-Support/Abstractions/jit",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maw.util.nothing.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Support/Abstractions/util",
				"patcherrelativepath" : "../../mawLib-Support/Abstractions/util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maw.util.grab-one.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Support/Abstractions/util",
				"patcherrelativepath" : "../../mawLib-Support/Abstractions/util",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maw.jit.color-gui.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Support/Abstractions/jit",
				"patcherrelativepath" : "../../mawLib-Support/Abstractions/jit",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maw.jit.gl.stopmotion.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Support/Abstractions/jit",
				"patcherrelativepath" : "../../mawLib-Support/Abstractions/jit",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maw.jit.gl.texture.poly.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Support/Abstractions/jit",
				"patcherrelativepath" : "../../mawLib-Support/Abstractions/jit",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maw.jit.euler-to-rotate.js",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Support/js/jit",
				"patcherrelativepath" : "../../mawLib-Support/js/jit",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "maw.jit.gl.syphon.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/alidev/mawlib/dist/mawLib/mawLib-Support/Abstractions/jit",
				"patcherrelativepath" : "../../mawLib-Support/Abstractions/jit",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ali.front.maxpat",
				"bootpath" : "/Users/ali/Dropbox/for-max/aLib/_aLib 1.0 11.1.1/for crap",
				"patcherrelativepath" : "../../../../../../aLib/_aLib 1.0 11.1.1/for crap",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cv.jit.faces.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "cv.jit.resize.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "lmult.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "OSC-route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "xydisplay.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "jit.gl.syphonclient.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
