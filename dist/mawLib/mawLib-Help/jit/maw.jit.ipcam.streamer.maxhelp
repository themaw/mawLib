{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 101.0, 91.0, 1180.0, 710.0 ],
		"bglocked" : 0,
		"defrect" : [ 101.0, 91.0, 1180.0, 710.0 ],
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
					"text" : "Camera Movement",
					"numinlets" : 1,
					"presentation_rect" : [ 1269.0, 234.0, 0.0, 0.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 1037.0, 388.0, 113.0, 20.0 ],
					"id" : "obj-101",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Camera Presets",
					"numinlets" : 1,
					"presentation_rect" : [ 1232.0, 199.0, 0.0, 0.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 1000.0, 353.0, 97.0, 20.0 ],
					"id" : "obj-100",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Image Settings",
					"numinlets" : 1,
					"presentation_rect" : [ 1181.0, 165.0, 0.0, 0.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 949.0, 319.0, 91.0, 20.0 ],
					"id" : "obj-99",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Camera Settings",
					"numinlets" : 1,
					"presentation_rect" : [ 1175.0, 131.0, 0.0, 0.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 943.0, 285.0, 100.0, 20.0 ],
					"id" : "obj-98",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p camera_settings",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 830.0, 285.0, 109.0, 20.0 ],
					"id" : "obj-97",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 500.0, 197.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 500.0, 197.0 ],
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
									"text" : "route alias",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 302.0, 60.0, 66.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "alias \"MAW'S CAMZ\"",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 19.0, 88.0, 125.0, 18.0 ],
									"id" : "obj-34",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\"MAW'S CAMZ\"",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 88.0, 143.0, 18.0 ],
									"id" : "obj-33",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Camera Alias",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 208.0, 87.0, 85.0, 20.0 ],
									"id" : "obj-28",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getalias",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 151.0, 88.0, 52.0, 18.0 ],
									"id" : "obj-20",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 19.0, 131.0, 25.0, 25.0 ],
									"id" : "obj-2",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 30.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 22.0, 454.0, 151.0 ],
									"id" : "obj-4"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-33", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 311.5, 57.0, 311.5, 57.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p image_control",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 849.0, 317.0, 96.0, 20.0 ],
					"id" : "obj-96",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 376.0, 212.0, 741.0, 340.0 ],
						"bglocked" : 0,
						"defrect" : [ 376.0, 212.0, 741.0, 340.0 ],
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
									"maxclass" : "toggle",
									"numinlets" : 1,
									"presentation_rect" : [ 794.0, 214.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 409.0, 285.0, 20.0, 20.0 ],
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"presentation_rect" : [ 740.0, 218.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 341.0, 285.0, 20.0, 20.0 ],
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"presentation_rect" : [ 596.0, 100.0, 0.0, 0.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 273.0, 285.0, 50.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"presentation_rect" : [ 512.0, 100.0, 0.0, 0.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 204.0, 285.0, 50.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"presentation_rect" : [ 439.0, 97.0, 0.0, 0.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 136.0, 285.0, 50.0, 20.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"presentation_rect" : [ 379.0, 98.0, 0.0, 0.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 68.0, 285.0, 50.0, 20.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 68.0, 222.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route resolution brightness contrast refreshmode mirrorhorizontal mirrorvertical",
									"numinlets" : 1,
									"numoutlets" : 7,
									"outlettype" : [ "", "", "", "", "", "", "" ],
									"patching_rect" : [ 68.0, 252.0, 428.0, 20.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Vert. Mirror",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 271.0, 80.0, 89.0, 20.0 ],
									"id" : "obj-88",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Horz. Mirror",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 270.0, 28.0, 89.0, 20.0 ],
									"id" : "obj-86",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getmirrorvertical",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 364.0, 104.0, 97.0, 18.0 ],
									"id" : "obj-84",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getmirrorhorizontal",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 361.0, 52.0, 111.0, 18.0 ],
									"id" : "obj-82",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "mirrorvertical $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 246.0, 104.0, 105.0, 18.0 ],
									"id" : "obj-79",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 246.0, 80.0, 20.0, 20.0 ],
									"id" : "obj-80"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "mirrorhorizontal $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 246.0, 52.0, 111.0, 18.0 ],
									"id" : "obj-78",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 246.0, 28.0, 20.0, 20.0 ],
									"id" : "obj-77"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "refreshmode $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 509.0, 50.0, 95.0, 18.0 ],
									"id" : "obj-71",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ 50, "Hz", ",", 60, "Hz", ",", "Outdoor" ],
									"numoutlets" : 3,
									"types" : [  ],
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 509.0, 29.0, 85.0, 20.0 ],
									"id" : "obj-72",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Refresh Mode",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 608.0, 26.0, 89.0, 20.0 ],
									"id" : "obj-74",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getrefreshmode",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 608.0, 51.0, 95.0, 18.0 ],
									"id" : "obj-75",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "contrast $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 512.0, 164.0, 70.0, 18.0 ],
									"id" : "obj-66",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ 0, ",", 1, ",", 2, ",", 3, ",", 4, ",", 5, ",", 6, ",", 7, ",", 8, ",", 9, ",", 10, ",", 11, ",", 12, ",", 13, ",", 14, ",", 15 ],
									"numoutlets" : 3,
									"types" : [  ],
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 512.0, 139.0, 85.0, 20.0 ],
									"id" : "obj-67",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Contrast",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 608.0, 138.0, 85.0, 20.0 ],
									"id" : "obj-69",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getcontrast",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 608.0, 162.0, 70.0, 18.0 ],
									"id" : "obj-70",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "brightness $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 512.0, 107.0, 83.0, 18.0 ],
									"id" : "obj-65",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ 0, ",", 1, ",", 2, ",", 3, ",", 4, ",", 5, ",", 6, ",", 7, ",", 8, ",", 9, ",", 10, ",", 11, ",", 12, ",", 13, ",", 14, ",", 15 ],
									"numoutlets" : 3,
									"types" : [  ],
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 512.0, 82.0, 85.0, 20.0 ],
									"id" : "obj-64",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Brightness",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 608.0, 83.0, 67.0, 20.0 ],
									"id" : "obj-60",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getbrightness",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 608.0, 107.0, 83.0, 18.0 ],
									"id" : "obj-61",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 16.0, 81.0, 50.0, 20.0 ],
									"id" : "obj-54",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr \"pow(2, ($i1 + 1))\"",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 56.0, 133.0, 20.0 ],
									"id" : "obj-53",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ 160, "x", 120, ",", 176, "x", 144, ",", 320, "x", 240, ",", 352, "x", 288, ",", 640, "x", 480 ],
									"numoutlets" : 3,
									"types" : [  ],
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 16.0, 34.0, 85.0, 20.0 ],
									"id" : "obj-41",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resolution $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 103.0, 79.0, 18.0 ],
									"id" : "obj-37",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Resolution",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 102.0, 34.0, 71.0, 20.0 ],
									"id" : "obj-39",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getresolution",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 99.0, 103.0, 79.0, 18.0 ],
									"id" : "obj-40",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 16.0, 251.0, 25.0, 25.0 ],
									"id" : "obj-36",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.0, 18.0, 198.0, 117.0 ],
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"presentation_rect" : [ 235.0, 16.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 235.0, 16.0, 245.0, 117.0 ],
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"presentation_rect" : [ 491.0, 14.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 491.0, 14.0, 230.0, 198.0 ],
									"id" : "obj-21"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-82", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 5 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 4 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 3 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 1 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 1 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-78", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-79", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p camera_presets",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 887.0, 353.0, 107.0, 20.0 ],
					"id" : "obj-95",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 245.0, 101.0, 503.0, 360.0 ],
						"bglocked" : 0,
						"defrect" : [ 245.0, 101.0, 503.0, 360.0 ],
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
									"text" : "Disable Presets",
									"numinlets" : 1,
									"presentation_rect" : [ 67.0, 24.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 67.0, 24.0, 95.0, 20.0 ],
									"id" : "obj-26",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"presentation_rect" : [ 681.0, 266.0, 0.0, 0.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 295.0, 316.0, 50.0, 20.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 228.0, 316.0, 50.0, 20.0 ],
									"id" : "obj-22",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 93.0, 316.0, 20.0, 20.0 ],
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 44.0, 23.0, 20.0, 20.0 ],
									"id" : "obj-50"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getdisablepreset",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.0, 47.0, 99.0, 18.0 ],
									"id" : "obj-48",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "disablepreset $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 44.0, 47.0, 99.0, 18.0 ],
									"id" : "obj-49",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 41.0, 264.0, 25.0, 25.0 ],
									"id" : "obj-17",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Recall Preset Position",
									"numinlets" : 1,
									"presentation_rect" : [ 144.0, 235.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 323.0, 102.0, 139.0, 20.0 ],
									"id" : "obj-16",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Store Position as Preset",
									"numinlets" : 1,
									"presentation_rect" : [ 97.0, 153.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 97.0, 102.0, 139.0, 20.0 ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getstorepreset",
									"numinlets" : 2,
									"presentation_rect" : [ 139.0, 312.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.0, 125.0, 87.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getcallpreset",
									"numinlets" : 2,
									"presentation_rect" : [ 152.0, 265.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 353.0, 125.0, 79.0, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 160.0, 316.0, 50.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "callpreset $1",
									"numinlets" : 2,
									"presentation_rect" : [ 259.0, 260.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 272.0, 125.0, 79.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"presentation_rect" : [ 259.0, 219.0, 0.0, 0.0 ],
									"items" : [ 1, ",", 2, ",", 3, ",", 4, ",", 5, ",", 6, ",", 7, ",", 8, ",", 9, ",", 10, ",", 11, ",", 12, ",", 13, ",", 14, ",", 15 ],
									"numoutlets" : 3,
									"types" : [  ],
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 272.0, 102.0, 48.0, 20.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "storepreset $1",
									"numinlets" : 2,
									"presentation_rect" : [ 159.0, 263.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 41.0, 125.0, 87.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"numinlets" : 1,
									"items" : [ 1, ",", 2, ",", 3, ",", 4, ",", 5, ",", 6, ",", 7, ",", 8, ",", 9, ",", 10, ",", 11, ",", 12, ",", 13, ",", 14, ",", 15 ],
									"numoutlets" : 3,
									"types" : [  ],
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 41.0, 102.0, 48.0, 20.0 ],
									"id" : "obj-64",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getpresetrate",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 129.0, 224.0, 81.0, 18.0 ],
									"id" : "obj-53",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Send",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 61.0, 174.0, 39.0, 20.0 ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Preset Rate (0 fast, 100 slow)",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 287.0, 174.0, 169.0, 20.0 ],
									"id" : "obj-91",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "presetrate $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 42.0, 224.0, 81.0, 18.0 ],
									"id" : "obj-90",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 42.0, 174.0, 20.0, 20.0 ],
									"id" : "obj-89"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "37",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 42.0, 201.0, 50.0, 18.0 ],
									"id" : "obj-81",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 103.0, 174.0, 179.0, 21.0 ],
									"size" : 100.0,
									"id" : "obj-63"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route disablepreset presetrate callpreset storepreset",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 93.0, 291.0, 288.0, 20.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 93.0, 265.0, 25.0, 25.0 ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 17.0, 234.0, 65.0 ],
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"presentation_rect" : [ 35.0, 137.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 86.0, 451.0, 77.0 ],
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"presentation_rect" : [ 36.0, 167.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 167.0, 453.0, 86.0 ],
									"id" : "obj-30"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 102.5, 286.5, 102.5, 286.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [ 138.5, 252.5, 50.5, 252.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [ 51.5, 252.5, 50.5, 252.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 3 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-90", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-81", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p manual_movement",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 909.0, 388.0, 123.0, 20.0 ],
					"id" : "obj-93",
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 945.0, 195.0, 1191.0, 588.0 ],
						"bglocked" : 0,
						"defrect" : [ 945.0, 195.0, 1191.0, 588.0 ],
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
									"text" : "gethorizontalpatrol",
									"numinlets" : 2,
									"presentation_rect" : [ 136.0, 127.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 158.0, 127.0, 109.0, 18.0 ],
									"id" : "obj-105",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"presentation_rect" : [ 42.0, 104.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 42.0, 104.0, 20.0, 20.0 ],
									"id" : "obj-106"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "horizontalpatrol $1",
									"numinlets" : 2,
									"presentation_rect" : [ 42.0, 127.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 42.0, 127.0, 109.0, 18.0 ],
									"id" : "obj-107",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"presentation_rect" : [ 38.0, 97.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 38.0, 97.0, 233.0, 56.0 ],
									"id" : "obj-108"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getverticalpatrol",
									"numinlets" : 2,
									"presentation_rect" : [ 134.0, 65.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 165.0, 66.0, 95.0, 18.0 ],
									"id" : "obj-101",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"presentation_rect" : [ 40.0, 42.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 42.0, 43.0, 20.0, 20.0 ],
									"id" : "obj-102"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "verticalpatrol $1",
									"numinlets" : 2,
									"presentation_rect" : [ 40.0, 65.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 42.0, 67.0, 95.0, 18.0 ],
									"id" : "obj-103",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"presentation_rect" : [ 36.0, 35.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 38.0, 36.0, 233.0, 56.0 ],
									"id" : "obj-104"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "center camera",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 110.0, 423.0, 103.0, 20.0 ],
									"id" : "obj-99",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "center",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 63.0, 423.0, 44.0, 18.0 ],
									"id" : "obj-100",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getmoveup",
									"numinlets" : 2,
									"presentation_rect" : [ 137.0, 129.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 135.0, 197.0, 70.0, 18.0 ],
									"id" : "obj-79",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 41.0, 174.0, 20.0, 20.0 ],
									"id" : "obj-78"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "moveup $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 41.0, 197.0, 70.0, 18.0 ],
									"id" : "obj-75",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 791.0, 445.0, 20.0, 20.0 ],
									"id" : "obj-67"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 836.0, 29.0, 25.0, 25.0 ],
									"id" : "obj-62",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route centeronstart",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 791.0, 421.0, 111.0, 20.0 ],
									"id" : "obj-61",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Center On Start",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 331.0, 457.0, 113.0, 20.0 ],
									"id" : "obj-42",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getcenteronstart",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 412.0, 479.0, 97.0, 18.0 ],
									"id" : "obj-56",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "centeronstart $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 309.0, 480.0, 97.0, 18.0 ],
									"id" : "obj-57",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 309.0, 456.0, 20.0, 20.0 ],
									"id" : "obj-58"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getpatrolrateleft",
									"numinlets" : 2,
									"presentation_rect" : [ 330.0, 396.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 406.0, 411.0, 94.0, 18.0 ],
									"id" : "obj-49",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getpatrolrateright",
									"numinlets" : 2,
									"presentation_rect" : [ 330.0, 317.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 411.0, 335.0, 101.0, 18.0 ],
									"id" : "obj-50",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getpatrolrateup",
									"numinlets" : 2,
									"presentation_rect" : [ 330.0, 241.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 402.0, 259.0, 91.0, 18.0 ],
									"id" : "obj-51",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getpatrolratedown",
									"numinlets" : 2,
									"presentation_rect" : [ 330.0, 164.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 416.0, 181.0, 107.0, 18.0 ],
									"id" : "obj-52",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getpatrolrate",
									"numinlets" : 2,
									"presentation_rect" : [ 330.0, 86.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 388.0, 97.0, 78.0, 18.0 ],
									"id" : "obj-53",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"presentation_rect" : [ 538.0, 391.0, 0.0, 0.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 782.0, 356.399994, 50.0, 20.0 ],
									"id" : "obj-47",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"presentation_rect" : [ 538.0, 363.0, 0.0, 0.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 782.0, 332.399994, 50.0, 20.0 ],
									"id" : "obj-46",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"presentation_rect" : [ 537.0, 328.0, 0.0, 0.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 782.0, 308.399994, 50.0, 20.0 ],
									"id" : "obj-45",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"presentation_rect" : [ 536.0, 288.0, 0.0, 0.0 ],
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 782.0, 284.399994, 50.0, 20.0 ],
									"id" : "obj-44",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 782.0, 260.399994, 50.0, 20.0 ],
									"id" : "obj-43",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route patrolrate patrolrateup patrolratedown patrolrateright patrolrateleft",
									"numinlets" : 1,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 782.0, 236.0, 389.0, 20.0 ],
									"id" : "obj-41",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Send",
									"numinlets" : 1,
									"presentation_rect" : [ 90.0, 346.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 329.0, 365.0, 39.0, 20.0 ],
									"id" : "obj-35",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Patrol Rate Left (0 fast, 100 slow)",
									"numinlets" : 1,
									"presentation_rect" : [ 334.0, 346.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 549.0, 365.0, 189.0, 20.0 ],
									"id" : "obj-36",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "patrolrateleft $1",
									"numinlets" : 2,
									"presentation_rect" : [ 71.0, 396.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.0, 414.0, 94.0, 18.0 ],
									"id" : "obj-37",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"presentation_rect" : [ 71.0, 346.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 308.0, 365.0, 20.0, 20.0 ],
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"numinlets" : 2,
									"presentation_rect" : [ 71.0, 373.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.0, 392.0, 50.0, 18.0 ],
									"id" : "obj-39",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"presentation_rect" : [ 150.0, 346.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 365.0, 365.0, 179.0, 21.0 ],
									"size" : 100.0,
									"id" : "obj-40"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Send",
									"numinlets" : 1,
									"presentation_rect" : [ 87.0, 270.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 331.0, 286.0, 39.0, 20.0 ],
									"id" : "obj-29",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Patrol Rate Right (0 fast, 100 slow)",
									"numinlets" : 1,
									"presentation_rect" : [ 331.0, 270.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 549.0, 286.0, 197.0, 20.0 ],
									"id" : "obj-30",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "patrolrateright $1",
									"numinlets" : 2,
									"presentation_rect" : [ 68.0, 320.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.0, 335.0, 101.0, 18.0 ],
									"id" : "obj-31",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"presentation_rect" : [ 68.0, 270.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 308.0, 286.0, 20.0, 20.0 ],
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"numinlets" : 2,
									"presentation_rect" : [ 68.0, 297.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.0, 313.0, 50.0, 18.0 ],
									"id" : "obj-33",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"presentation_rect" : [ 147.0, 270.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 365.0, 286.0, 179.0, 21.0 ],
									"size" : 100.0,
									"id" : "obj-34"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Send",
									"numinlets" : 1,
									"presentation_rect" : [ 88.0, 193.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 332.0, 209.0, 39.0, 20.0 ],
									"id" : "obj-23",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Patrol Rate Up (0 fast, 100 slow)",
									"numinlets" : 1,
									"presentation_rect" : [ 332.0, 193.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 549.0, 209.0, 184.0, 20.0 ],
									"id" : "obj-24",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "patrolrateup $1",
									"numinlets" : 2,
									"presentation_rect" : [ 69.0, 243.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.0, 259.0, 91.0, 18.0 ],
									"id" : "obj-25",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"presentation_rect" : [ 69.0, 193.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 308.0, 209.0, 20.0, 20.0 ],
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"numinlets" : 2,
									"presentation_rect" : [ 69.0, 220.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.0, 236.0, 50.0, 18.0 ],
									"id" : "obj-27",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"presentation_rect" : [ 148.0, 193.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 365.0, 209.0, 179.0, 21.0 ],
									"size" : 100.0,
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Send",
									"numinlets" : 1,
									"presentation_rect" : [ 67.0, 111.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 331.0, 132.0, 39.0, 20.0 ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Patrol Rate Down (0 fast, 100 slow)",
									"numinlets" : 1,
									"presentation_rect" : [ 311.0, 111.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 549.0, 132.0, 199.0, 20.0 ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "patrolratedown $1",
									"numinlets" : 2,
									"presentation_rect" : [ 48.0, 161.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.0, 182.0, 107.0, 18.0 ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"presentation_rect" : [ 48.0, 111.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 308.0, 132.0, 20.0, 20.0 ],
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"numinlets" : 2,
									"presentation_rect" : [ 48.0, 138.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.0, 159.0, 50.0, 18.0 ],
									"id" : "obj-21",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"presentation_rect" : [ 127.0, 111.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 365.0, 132.0, 179.0, 21.0 ],
									"size" : 100.0,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 308.0, 553.0, 25.0, 25.0 ],
									"id" : "obj-16",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Send",
									"numinlets" : 1,
									"presentation_rect" : [ 228.0, 111.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 327.0, 46.0, 39.0, 20.0 ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Patrol Rate (0 fast, 100 slow)",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 549.0, 46.0, 169.0, 20.0 ],
									"id" : "obj-91",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "patrolrate $1",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.0, 96.0, 78.0, 18.0 ],
									"id" : "obj-90",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 308.0, 46.0, 20.0, 20.0 ],
									"id" : "obj-89"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.0, 73.0, 50.0, 18.0 ],
									"id" : "obj-81",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 365.0, 46.0, 179.0, 21.0 ],
									"size" : 100.0,
									"id" : "obj-63"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 836.0, 86.5, 20.0, 20.0 ],
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 836.0, 113.5, 20.0, 20.0 ],
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 836.0, 140.5, 20.0, 20.0 ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 836.0, 167.5, 20.0, 20.0 ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route moveup movedown moveleft moveright",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 836.0, 59.0, 250.0, 20.0 ],
									"id" : "obj-2",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 129.0, 460.0, 311.0 ],
									"id" : "obj-70"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"presentation_rect" : [ 57.0, 30.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 38.0, 460.0, 84.0 ],
									"id" : "obj-71"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"presentation_rect" : [ 58.0, 426.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 302.0, 448.0, 460.0, 69.0 ],
									"id" : "obj-72"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 37.0, 167.0, 191.0, 57.0 ],
									"id" : "obj-95"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getmoveleft",
									"numinlets" : 2,
									"presentation_rect" : [ 133.0, 272.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 134.0, 380.0, 73.0, 18.0 ],
									"id" : "obj-92",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"presentation_rect" : [ 59.0, 247.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 40.0, 357.0, 20.0, 20.0 ],
									"id" : "obj-93"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "moveleft $1",
									"numinlets" : 2,
									"presentation_rect" : [ 59.0, 272.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 380.0, 73.0, 18.0 ],
									"id" : "obj-94",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getmoveright",
									"numinlets" : 2,
									"presentation_rect" : [ 133.0, 226.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 135.0, 320.0, 80.0, 18.0 ],
									"id" : "obj-86",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"presentation_rect" : [ 59.0, 201.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 41.0, 298.0, 20.0, 20.0 ],
									"id" : "obj-87"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "moveright $1",
									"numinlets" : 2,
									"presentation_rect" : [ 59.0, 226.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 41.0, 320.0, 80.0, 18.0 ],
									"id" : "obj-88",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getmovedown",
									"numinlets" : 2,
									"presentation_rect" : [ 132.0, 180.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 135.0, 260.0, 85.0, 18.0 ],
									"id" : "obj-83",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"presentation_rect" : [ 58.0, 155.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 41.0, 238.0, 20.0, 20.0 ],
									"id" : "obj-84"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "movedown $1",
									"numinlets" : 2,
									"presentation_rect" : [ 58.0, 180.0, 0.0, 0.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 41.0, 260.0, 85.0, 18.0 ],
									"id" : "obj-85",
									"fontname" : "Arial",
									"fontsize" : 12.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"presentation_rect" : [ 56.0, 156.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 37.0, 230.0, 191.0, 57.0 ],
									"id" : "obj-96"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"presentation_rect" : [ 55.0, 221.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 37.0, 293.0, 191.0, 57.0 ],
									"id" : "obj-97"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"presentation_rect" : [ 52.0, 279.0, 0.0, 0.0 ],
									"numoutlets" : 0,
									"patching_rect" : [ 37.0, 354.0, 191.0, 57.0 ],
									"id" : "obj-98"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-101", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-103", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-107", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-105", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-106", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 0 ],
									"destination" : [ "obj-103", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-100", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-83", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-85", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-86", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-88", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-92", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-94", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-87", 0 ],
									"destination" : [ "obj-88", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-85", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-78", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-90", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 4 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 5 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 4 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 3 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 2 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 1 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-39", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-33", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-81", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-89", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 0 ],
									"destination" : [ "obj-90", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 3 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial",
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "update variables (camera copy)",
					"numinlets" : 1,
					"presentation_rect" : [ 824.0, 162.0, 0.0, 0.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 830.0, 449.0, 199.0, 20.0 ],
					"id" : "obj-29",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "forcerefresh",
					"numinlets" : 2,
					"presentation_rect" : [ 744.0, 163.0, 0.0, 0.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 752.0, 449.0, 75.0, 18.0 ],
					"id" : "obj-15",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 697.0, 303.0, 60.0, 20.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "update variables (cached copy)",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 792.0, 424.0, 182.0, 20.0 ],
					"id" : "obj-57",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "refresh",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 738.0, 425.0, 48.0, 18.0 ],
					"id" : "obj-55",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "close",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 713.0, 376.0, 39.0, 18.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 697.0, 351.0, 37.0, 18.0 ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.jit.ipcam.control @url @url http://134.84.229.45:8002 @username admin",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 697.0, 482.0, 447.0, 20.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 183.0, 34.0, 60.0, 20.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "close",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 123.0, 120.0, 39.0, 18.0 ],
					"id" : "obj-19",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 80.0, 120.0, 37.0, 18.0 ],
					"id" : "obj-18",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print DUMP",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 635.0, 172.0, 73.0, 20.0 ],
					"id" : "obj-17",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 46.0, 50.0, 20.0, 20.0 ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qmetro 10",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 46.0, 75.0, 65.0, 20.0 ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jit.matrixinfo",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 445.0, 85.0, 72.0, 20.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "160 120",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.0, 143.0, 61.0, 18.0 ],
					"id" : "obj-21",
					"fontname" : "Arial",
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "char",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 514.0, 143.0, 60.0, 18.0 ],
					"id" : "obj-22",
					"fontname" : "Arial",
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "4",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 445.0, 143.0, 65.0, 18.0 ],
					"id" : "obj-23",
					"fontname" : "Arial",
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route planecount type dim",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 445.0, 112.0, 227.0, 20.0 ],
					"id" : "obj-26",
					"fontname" : "Arial",
					"fontsize" : 11.595187
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t l l",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 445.0, 16.0, 32.5, 20.0 ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 459.0, 43.0, 80.0, 36.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 46.0, 202.0, 640.0, 480.0 ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getpassword",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 342.0, 120.0, 79.0, 18.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "getusername",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 259.0, 120.0, 81.0, 18.0 ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "geturl",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 213.0, 120.0, 41.0, 18.0 ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.jit.ipcam.streamer @url http://134.84.229.45:8002/videostream.cgi @username admin @unique 1",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 46.0, 171.0, 578.0, 20.0 ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 690.0, 268.0, 477.0, 280.0 ],
					"id" : "obj-102"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 55.5, 194.0, 433.0, 194.0, 433.0, 10.0, 454.5, 10.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1134.5, 511.0, 1091.0, 511.0, 1091.0, 345.0, 858.5, 345.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-96", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 858.5, 469.0, 706.5, 469.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 896.5, 469.5, 706.5, 469.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-95", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1134.5, 511.0, 1091.0, 511.0, 1091.0, 380.0, 896.5, 380.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1134.5, 511.0, 1091.5, 511.0, 1091.5, 313.0, 839.5, 313.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 839.5, 469.0, 706.5, 469.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 918.5, 469.5, 706.5, 469.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1134.5, 511.0, 1091.0, 511.0, 1091.0, 417.0, 918.5, 417.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-2", 0 ],
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
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [ 454.5, 137.0, 500.5, 137.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-22", 1 ],
					"hidden" : 0,
					"midpoints" : [ 523.833313, 137.0, 564.5, 137.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 2 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 0,
					"midpoints" : [ 593.166687, 140.0, 634.5, 140.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
