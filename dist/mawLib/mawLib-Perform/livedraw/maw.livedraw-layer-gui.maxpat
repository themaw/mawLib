{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 209.348816, 627.289734, 624.099915, 174.199997 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
		"bglocked" : 0,
		"defrect" : [ 0.0, 44.0, 1680.0, 940.0 ],
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
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 2052.819336, 383.616913, 34.0, 20.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 2201.319336, 33.817001, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 2145.219238, 221.916977, 39.0, 20.0 ],
					"text" : "* 180"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 2088.019287, 161.417038, 32.5, 20.0 ],
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 2088.019287, 109.717026, 46.0, 20.0 ],
					"text" : "uzi 20"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1953.819336, 259.316986, 73.0, 20.0 ],
					"text" : "pack 0 10 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1954.919312, 297.816986, 281.0, 20.0 ],
					"text" : "sprintf script move maw.manual-looper[%d] %d %d"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-41",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.424932, 3417.9021, 35.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 11.424932, 3417.9021, 35.0, 34.0 ],
					"text" : "19",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-42",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 3420.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 3420.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[19]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.597412, 3240.233154, 35.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.597412, 3240.233154, 35.0, 34.0 ],
					"text" : "18",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-40",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 3240.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 3240.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[18]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.597412, 3057.848633, 33.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.597412, 3057.848633, 33.0, 34.0 ],
					"text" : "17",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-38",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 3060.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 3060.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[17]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.597412, 2879.464111, 34.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.597412, 2879.464111, 34.0, 34.0 ],
					"text" : "16",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-36",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 2880.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 2880.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[16]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.597412, 2696.07959, 33.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.597412, 2696.07959, 33.0, 34.0 ],
					"text" : "15",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-34",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 2700.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 2700.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[15]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.597412, 2517.695068, 34.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.597412, 2517.695068, 34.0, 34.0 ],
					"text" : "14",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-32",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 2520.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 2520.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[14]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.597412, 2336.310547, 34.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.597412, 2336.310547, 34.0, 34.0 ],
					"text" : "13",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-29",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 2340.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 2340.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[13]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.597412, 2157.926025, 34.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.597412, 2157.926025, 34.0, 34.0 ],
					"text" : "12",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-26",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 2160.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 2160.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[12]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.597412, 1975.541382, 31.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.597412, 1975.541382, 31.0, 34.0 ],
					"text" : "11",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-24",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 1980.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 1980.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[11]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.597412, 1797.15686, 36.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.597412, 1797.15686, 36.0, 34.0 ],
					"text" : "10",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-22",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 1800.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 1800.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[10]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.597412, 1614.772339, 31.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.597412, 1614.772339, 31.0, 34.0 ],
					"text" : "9",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-20",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 1620.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 1620.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[9]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.597412, 1440.387817, 31.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.597412, 1440.387817, 31.0, 34.0 ],
					"text" : "8",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-18",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 1440.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 1440.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[8]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.597412, 1254.003296, 31.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.597412, 1254.003296, 31.0, 34.0 ],
					"text" : "7",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-16",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 1260.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 1260.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[7]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.597412, 1078.618774, 31.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.597412, 1078.618774, 31.0, 34.0 ],
					"text" : "6",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-14",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 1080.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 1080.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[6]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 21.597412, 894.234314, 31.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 21.597412, 894.234314, 31.0, 34.0 ],
					"text" : "5",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-12",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 900.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 900.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[5]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.597412, 713.849792, 31.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.597412, 713.849792, 31.0, 34.0 ],
					"text" : "4",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-10",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 720.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 720.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[4]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.597412, 532.465271, 31.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.597412, 532.465271, 31.0, 34.0 ],
					"text" : "3",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-8",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 540.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 540.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[3]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.597412, 356.080719, 31.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.597412, 356.080719, 31.0, 34.0 ],
					"text" : "2",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-6",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 360.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 360.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[2]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.597412, 175.696198, 31.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.597412, 175.696198, 31.0, 34.0 ],
					"text" : "1",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-4",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 180.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 180.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[1]"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-3",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1791.391235, 18.741268, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1793.591187, 137.54126, 69.0, 20.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Georgia",
					"fontsize" : 24.0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-88",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 13.597412, -1.68833, 31.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.597412, -1.68833, 31.0, 34.0 ],
					"text" : "0",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Gill Sans",
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 24,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 1075.941895, 88.938538, 621.0, 20.0 ],
					"text" : "OSC-route /0 /1 /2 /3 /4 /5 /6 /7 /8 /9 /10 /11 /12 /13 /14 /15 /16 /17 /18 /19 /20 /21 /22"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "gl-output" ],
					"id" : "obj-27",
					"maxclass" : "bpatcher",
					"name" : "maw.jit.loop-manual.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 3.0, 0.0 ],
					"patching_rect" : [ 10.0, 0.0, 602.158508, 179.693451 ],
					"presentation" : 1,
					"presentation_rect" : [ 10.0, 0.0, 744.602661, 179.693451 ],
					"varname" : "maw.manual-looper[0]"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-262",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1075.941895, 28.938538, 25.0, 25.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-262", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 13 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 14 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 15 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 16 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 17 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 18 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 19 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-31", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-48", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 2 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ],
					"source" : [ "obj-52", 0 ]
				}

			}
 ]
	}

}
