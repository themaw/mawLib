{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 0.0, 44.0, 1024.0, 698.0 ],
		"bgcolor" : [ 0.14902, 0.14902, 0.129412, 1.0 ],
		"bglocked" : 0,
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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj maw.meta.mawLib",
					"hidden" : 1,
					"id" : "obj-3",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"background" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 346.0, 150.0, 133.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_footer_logo",
					"name" : "maw-footer-logo.maxpat",
					"id" : "obj-5",
					"numinlets" : 0,
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 315.0, 16.0 ],
					"background" : 1,
					"patching_rect" : [ 696.0, 666.0, 315.0, 16.0 ],
					"args" : [  ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "mawlib_body_panel",
					"id" : "obj-7",
					"bgcolor" : [ 0.47, 0.55, 0.24, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"background" : 1,
					"patching_rect" : [ 10.0, 105.0, 1004.0, 583.0 ],
					"rounded" : 15
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_title",
					"name" : "maw-header-title.maxpat",
					"id" : "obj-9",
					"numinlets" : 0,
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"background" : 1,
					"patching_rect" : [ 10.0, 10.0, 400.0, 90.0 ],
					"args" : [ "maw.template.test", "http://google.com", "a test digest" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_meta",
					"name" : "maw-header-meta.maxpat",
					"id" : "obj-11",
					"numinlets" : 0,
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 400.0, 90.0 ],
					"background" : 1,
					"patching_rect" : [ 415.0, 10.0, 400.0, 90.0 ],
					"args" : [ "Summary", "Authors|http://annotations.com,Authors|http://annotations.com,Authors|http://annotations.com,Authors|http://annotations.com,Authors|http://annotations.com,Authors|http://annotations.com,Authors|http://annotations.com,Christopher Baker|http://christopherbaker.net", "Minnesota Futures Grant|http://mnfutures.org", "Pleae enjoy this software compliments of the University of Minnesota", "Hi Reference|http://gooooogle.com" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_examples",
					"name" : "maw-header-examples.maxpat",
					"id" : "obj-13",
					"numinlets" : 0,
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"background" : 1,
					"patching_rect" : [ 876.0, 13.0, 131.0, 40.0 ],
					"args" : [ "maw.data.Twitter" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "mawlib_header_related",
					"name" : "maw-header-related-objects.maxpat",
					"id" : "obj-15",
					"numinlets" : 0,
					"numoutlets" : 0,
					"presentation_rect" : [ 0.0, 0.0, 131.0, 40.0 ],
					"background" : 1,
					"patching_rect" : [ 876.0, 57.0, 131.0, 40.0 ],
					"args" : [ "maw.livedraw" ]
				}

			}
 ],
		"lines" : [  ]
	}

}
