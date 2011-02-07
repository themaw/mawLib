{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 139.0, 108.0, 1024.0, 704.0 ],
		"bgcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
		"bglocked" : 1,
		"defrect" : [ 139.0, 108.0, 1024.0, 704.0 ],
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
					"maxclass" : "message",
					"text" : "pattern \"MM-dd-yyyy HH:mm:ss Z\"",
					"fontname" : "Arial",
					"patching_rect" : [ 275.0, 122.0, 195.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"id" : "obj-99"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Get the current time in the current format.",
					"linecount" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 105.0, 341.0, 124.0, 34.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "now",
					"fontname" : "Arial",
					"patching_rect" : [ 68.0, 342.0, 33.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend format",
					"fontname" : "Arial",
					"patching_rect" : [ 328.0, 499.0, 92.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"id" : "obj-68"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"1272992908997\"",
					"fontname" : "Arial",
					"patching_rect" : [ 310.0, 599.0, 228.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"id" : "obj-66"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"12/31/1776 00:00:00:0 -0600\"",
					"fontname" : "Arial",
					"patching_rect" : [ 65.0, 599.0, 228.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"id" : "obj-65"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend parse",
					"fontname" : "Arial",
					"patching_rect" : [ 65.0, 499.0, 88.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"id" : "obj-64"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.util.dateformat \"MM/dd/yyyy HH:mm:ss:S Z\"",
					"fontname" : "Arial",
					"patching_rect" : [ 65.0, 549.0, 297.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "list", "" ],
					"id" : "obj-63"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p other-formatting-examples",
					"fontname" : "Arial",
					"patching_rect" : [ 571.0, 544.0, 161.0, 20.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-62",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 435.0, 60.0, 657.0, 702.0 ],
						"bgcolor" : [ 0.470588, 0.54902, 0.239216, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 435.0, 60.0, 657.0, 702.0 ],
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
									"text" : "Date and Time Pattern \tResult\n\"yyyy.MM.dd G 'at' HH:mm:ss z\" \t2001.07.04 AD at 12:08:56 PDT\n\"EEE, MMM d, ''yy\" \tWed, Jul 4, '01\n\"h:mm a\" \t12:08 PM\n\"hh 'o''clock' a, zzzz\" \t12 o'clock PM, Pacific Daylight Time\n\"K:mm a, z\" \t0:08 PM, PDT\n\"yyyyy.MMMMM.dd GGG hh:mm aaa\" \t02001.July.04 AD 12:08 PM\n\"EEE, d MMM yyyy HH:mm:ss Z\" \tWed, 4 Jul 2001 12:08:56 -0700\n\"yyMMddHHmmssZ\" \t010704120856-0700",
									"linecount" : 9,
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontname" : "Arial",
									"patching_rect" : [ 15.0, 520.0, 371.0, 131.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"id" : "obj-2",
									"presentation_rect" : [ 15.0, 520.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Date and Time Patterns\n\nDate and time formats are specified by date and time pattern strings. Within date and time pattern strings, unquoted letters from 'A' to 'Z' and from 'a' to 'z' are interpreted as pattern letters representing the components of a date or time string. Text can be quoted using single quotes (') to avoid interpretation. \"''\" represents a single quote. All other characters are not interpreted; they're simply copied into the output string during formatting or matched against the input string during parsing.\n\nThe following pattern letters are defined (all other characters from 'A' to 'Z' and from 'a' to 'z' are reserved):\n\n    Letter \tDate or Time Component \tPresentation \tExamples\n    G \tEra designator \tText \tAD\n    y \tYear \tYear \t1996; 96\n    M \tMonth in year \tMonth \tJuly; Jul; 07\n    w \tWeek in year \tNumber \t27\n    W \tWeek in month \tNumber \t2\n    D \tDay in year \tNumber \t189\n    d \tDay in month \tNumber \t10\n    F \tDay of week in month \tNumber \t2\n    E \tDay in week \tText \tTuesday; Tue\n    a \tAm/pm marker \tText \tPM\n    H \tHour in day (0-23) \tNumber \t0\n    k \tHour in day (1-24) \tNumber \t24\n    K \tHour in am/pm (0-11) \tNumber \t0\n    h \tHour in am/pm (1-12) \tNumber \t12\n    m \tMinute in hour \tNumber \t30\n    s \tSecond in minute \tNumber \t55\n    S \tMillisecond \tNumber \t978\n    z \tTime zone \tGeneral time zone \tPacific Standard Time; PST; GMT-08:00\n    Z \tTime zone \tRFC 822 time zone \t-0800",
									"linecount" : 30,
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontname" : "Arial",
									"patching_rect" : [ 15.0, 77.0, 604.0, 420.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"presentation_rect" : [ 15.0, 117.0, 0.0, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "for more formatting help: \n\nhttp://java.sun.com/j2se/1.4.2/docs/api/java/text/SimpleDateFormat.html",
									"linecount" : 3,
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontname" : "Arial",
									"patching_rect" : [ 15.0, 15.0, 392.0, 48.0 ],
									"numinlets" : 1,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"id" : "obj-15"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Formatting:",
					"fontname" : "Arial",
					"patching_rect" : [ 277.0, 205.0, 150.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Parsing:",
					"fontname" : "Arial",
					"patching_rect" : [ 274.0, 102.0, 150.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "pattern \"d MMM yyyy HH:mm:ss Z\", format \"2487000090000\"",
					"fontname" : "Arial",
					"patching_rect" : [ 277.0, 253.0, 365.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "format \"-6090512400000\"",
					"fontname" : "Arial",
					"patching_rect" : [ 276.0, 228.0, 147.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "pattern MM/dd/yyyy, parse 12/31/1776",
					"fontname" : "Arial",
					"patching_rect" : [ 274.0, 175.0, 215.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "pattern yyyy/MM/dd, parse 1987/12/31",
					"fontname" : "Arial",
					"patching_rect" : [ 274.0, 147.0, 230.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Date formatted with given pattern.",
					"fontname" : "Arial",
					"patching_rect" : [ 296.0, 444.0, 195.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Date in milliseconds since January 1, 1970, 00:00:00 GMT.",
					"linecount" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 559.0, 466.0, 189.0, 34.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "pattern MM/dd/yyyy",
					"fontname" : "Arial",
					"patching_rect" : [ 514.0, 286.0, 228.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"05-04-2010 12:08:53 -0500\"",
					"fontname" : "Arial",
					"patching_rect" : [ 65.0, 446.0, 228.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"-6090487200000\"",
					"fontname" : "Arial",
					"patching_rect" : [ 328.0, 474.0, 228.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "pattern \"EEE, d MMM yyyy HH:mm:ss Z\"",
					"fontname" : "Arial",
					"patching_rect" : [ 532.0, 311.0, 228.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.util.dateformat \"MM/dd/yyyy HH:mm:ss:S Z\"",
					"fontname" : "Arial",
					"patching_rect" : [ 274.0, 400.0, 294.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "list", "" ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.meta.mawLib",
					"fontname" : "Arial",
					"patching_rect" : [ 15.0, 662.0, 133.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"background" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ],
					"id" : "obj-21",
					"hidden" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_footer_logo",
					"patching_rect" : [ 696.0, 666.0, 315.0, 16.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"background" : 1,
					"args" : [  ],
					"id" : "obj-51",
					"name" : "maw-footer-logo.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 315.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "mawlib_body_panel",
					"patching_rect" : [ 10.0, 105.0, 1004.0, 583.0 ],
					"numinlets" : 1,
					"rounded" : 15,
					"numoutlets" : 0,
					"background" : 1,
					"id" : "obj-53",
					"bgcolor" : [ 0.47, 0.55, 0.24, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_title",
					"patching_rect" : [ 10.0, 10.0, 400.0, 90.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"background" : 1,
					"args" : [ "maw.util.dateformat", "http://dev.minneapolisartonwheels.org/mawLib/maw.util.dateformat", "An mxj external to format dates." ],
					"id" : "obj-55",
					"name" : "maw-header-title.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_meta",
					"patching_rect" : [ 415.0, 10.0, 400.0, 90.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"background" : 1,
					"args" : [ "This object can format dates using the Java date notation.", "Christopher Baker|Programmer|http://christopherbaker.net,", "Minnesota Futures Grant|Minnesota Futures is a grant that gives out lots and lots of money.|http://minnesotafutures.org,Collaborative Art|Cola is a wonderful drink and area of rearch.|http://cola.umn.edu,Department of Art|Unsure what to say about this.|http://art.umn.edu,", "� University of Minnesota, 2009-2010: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi urna enim, ullamcorper et mattis eu, venenatis aliquam orci. Quisque nunc diam, dictum quis mattis vitae, faucibus eget felis. Morbi ornare dolor quis sem commodo vulputate. In ac ultrices diam." ],
					"id" : "obj-57",
					"name" : "maw-header-meta.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_examples",
					"patching_rect" : [ 876.0, 13.0, 131.0, 40.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"background" : 1,
					"args" : [  ],
					"id" : "obj-59",
					"name" : "maw-header-examples.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_related",
					"patching_rect" : [ 876.0, 57.0, 131.0, 40.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"background" : 1,
					"args" : [  ],
					"id" : "obj-61",
					"name" : "maw-header-related-objects.maxpat",
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 283.5, 196.0, 261.0, 196.0, 261.0, 385.0, 283.5, 385.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 285.5, 247.0, 273.0, 247.0, 273.0, 385.0, 283.5, 385.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 286.5, 385.0, 283.5, 385.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 283.5, 169.0, 261.0, 169.0, 261.0, 385.0, 283.5, 385.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 523.5, 385.0, 402.0, 385.0, 402.0, 385.0, 283.5, 385.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 541.5, 385.0, 283.5, 385.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0,
					"midpoints" : [ 558.5, 441.5, 546.5, 441.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 77.5, 384.5, 283.5, 384.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-99", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 284.5, 141.0, 261.0, 141.0, 261.0, 387.0, 283.5, 387.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-65", 1 ],
					"hidden" : 0,
					"midpoints" : [ 74.5, 583.5, 283.5, 583.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 1 ],
					"destination" : [ "obj-66", 1 ],
					"hidden" : 0,
					"midpoints" : [ 352.5, 583.5, 528.5, 583.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [ 337.5, 533.5, 74.5, 533.5 ]
				}

			}
 ]
	}

}
