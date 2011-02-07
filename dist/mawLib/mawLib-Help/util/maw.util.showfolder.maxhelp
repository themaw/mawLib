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
					"text" : "print DUMP",
					"patching_rect" : [ 387.0, 484.0, 73.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 387.0, 484.0, 0.0, 0.0 ],
					"id" : "obj-3",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print DUMP",
					"patching_rect" : [ 492.0, 494.0, 73.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-2",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p alternative",
					"patching_rect" : [ 910.0, 139.0, 76.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"id" : "obj-19",
					"fontname" : "Arial",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 125.0, 335.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"defrect" : [ 125.0, 335.0, 640.0, 480.0 ],
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
									"text" : "/Applications/",
									"patching_rect" : [ 186.0, 72.0, 113.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "but doesn't work on windows.",
									"linecount" : 3,
									"patching_rect" : [ 84.0, 122.0, 88.0, 48.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-14",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "this is ideal -->",
									"patching_rect" : [ 84.0, 100.0, 88.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-15",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf file://%s",
									"patching_rect" : [ 176.0, 99.0, 86.0, 20.0 ],
									"fontsize" : 11.595187,
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-6",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax launchbrowser $1",
									"linecount" : 2,
									"patching_rect" : [ 176.0, 123.0, 127.0, 31.0 ],
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-16",
									"fontname" : "Arial"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"fontname" : "Arial",
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "works for windows and mac",
					"patching_rect" : [ 396.0, 297.0, 160.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-21",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "show /Applications/",
					"patching_rect" : [ 415.0, 385.0, 123.0, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-10",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "show \"c:\\\\Program Files\"",
					"patching_rect" : [ 384.0, 345.0, 141.0, 18.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-17",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.util.showfolder",
					"patching_rect" : [ 399.0, 442.0, 137.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-12",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.meta.mawLib",
					"patching_rect" : [ 15.0, 662.0, 133.0, 20.0 ],
					"background" : 1,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-14",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_footer_logo",
					"patching_rect" : [ 696.0, 666.0, 315.0, 16.0 ],
					"background" : 1,
					"name" : "maw-footer-logo.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"args" : [  ],
					"presentation_rect" : [ 0.0, 0.0, 315.0, 16.0 ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "mawlib_body_panel",
					"patching_rect" : [ 10.0, 105.0, 1004.0, 583.0 ],
					"background" : 1,
					"rounded" : 15,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-18",
					"bgcolor" : [ 0.47, 0.55, 0.24, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_title",
					"patching_rect" : [ 10.0, 10.0, 400.0, 90.0 ],
					"background" : 1,
					"name" : "maw-header-title.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"args" : [ "maw.util.showfolder", "http://dev.minneapolisartonwheels.org/mawLib/maw.util.showfolder", "A java external that brings up and shows contents of folder." ],
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_meta",
					"patching_rect" : [ 415.0, 10.0, 400.0, 90.0 ],
					"background" : 1,
					"name" : "maw-header-meta.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"args" : [ "This object can pop up and show the contents of a specified folder.", "Christopher Baker|Programmer|http://christopherbaker.net,", "Minnesota Futures Grant|Minnesota Futures is a grant that gives out lots and lots of money.|http://minnesotafutures.org,Collaborative Art|Cola is a wonderful drink and area of rearch.|http://cola.umn.edu,Department of Art|Unsure what to say about this.|http://art.umn.edu,", "� University of Minnesota, 2009-2010: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi urna enim, ullamcorper et mattis eu, venenatis aliquam orci. Quisque nunc diam, dictum quis mattis vitae, faucibus eget felis. Morbi ornare dolor quis sem commodo vulputate. In ac ultrices diam." ],
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_examples",
					"patching_rect" : [ 876.0, 13.0, 131.0, 40.0 ],
					"background" : 1,
					"name" : "maw-header-examples.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"args" : [  ],
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_related",
					"patching_rect" : [ 876.0, 57.0, 131.0, 40.0 ],
					"background" : 1,
					"name" : "maw-header-related-objects.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"args" : [ "maw.util.paths", "maw.util.locate" ],
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"id" : "obj-26"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
