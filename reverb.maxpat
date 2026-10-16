{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 7,
   "minor": 3,
   "revision": 5,
   "architecture": "x64",
   "modernui": 1
  },
  "rect": [
   80,
   80,
   900,
   620
  ],
  "boxes": [
   {
    "box": {
     "maxclass": "comment",
     "text": "REVERB",
     "patching_rect": [
      5,
      2,
      54,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "fontface": 1,
     "id": "obj-1"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "predelay",
     "patching_rect": [
      5,
      20,
      62,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-2"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      5,
      38,
      52,
      22
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 0,
     "minimum": 0.0,
     "maximum": 200.0,
     "id": "obj-3"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "size",
     "patching_rect": [
      62,
      20,
      62,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-4"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      62,
      38,
      52,
      22
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 0,
     "minimum": 0.0,
     "maximum": 0.97,
     "id": "obj-5"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "tone Hz",
     "patching_rect": [
      119,
      20,
      66,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-6"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      119,
      38,
      56,
      22
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 0,
     "minimum": 500.0,
     "maximum": 12000.0,
     "id": "obj-7"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "loadbang",
     "patching_rect": [
      500,
      200,
      72,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-8"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "20",
     "patching_rect": [
      500,
      230,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-9"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0.84",
     "patching_rect": [
      540,
      230,
      40,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-10"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "6000",
     "patching_rect": [
      580,
      230,
      40,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-11"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "receive~ fx.rev.in",
     "patching_rect": [
      10,
      200,
      120,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-12"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "lo cut",
     "patching_rect": [
      5,
      62,
      62,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-13"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      5,
      80,
      52,
      22
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 0,
     "minimum": 20.0,
     "maximum": 8000.0,
     "id": "obj-14"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "hi cut",
     "patching_rect": [
      62,
      62,
      66,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-15"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      62,
      80,
      56,
      22
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 0,
     "minimum": 200.0,
     "maximum": 20000.0,
     "id": "obj-16"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "bassi",
     "patching_rect": [
      130,
      80,
      47,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-17"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "alti",
     "patching_rect": [
      180,
      80,
      40,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-18"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "pieno",
     "patching_rect": [
      222,
      80,
      47,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-19"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "solo:",
     "patching_rect": [
      125,
      62,
      47,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-20"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "20",
     "patching_rect": [
      310,
      740,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-21"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "300",
     "patching_rect": [
      350,
      740,
      33,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-22"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "2500",
     "patching_rect": [
      310,
      740,
      40,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-23"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "20000",
     "patching_rect": [
      350,
      740,
      47,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-24"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "20",
     "patching_rect": [
      310,
      740,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-25"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "20000",
     "patching_rect": [
      350,
      740,
      47,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-26"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "20",
     "patching_rect": [
      410,
      770,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-27"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "20000",
     "patching_rect": [
      450,
      770,
      47,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-28"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "filtercoeff~ highpass",
     "patching_rect": [
      10,
      800,
      140,
      22
     ],
     "numinlets": 3,
     "numoutlets": 5,
     "outlettype": [
      "",
      "",
      "",
      "",
      ""
     ],
     "id": "obj-29"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "filtercoeff~ lowpass",
     "patching_rect": [
      170,
      800,
      130,
      22
     ],
     "numinlets": 3,
     "numoutlets": 5,
     "outlettype": [
      "",
      "",
      "",
      "",
      ""
     ],
     "id": "obj-30"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "1",
     "patching_rect": [
      310,
      800,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-31"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0.707",
     "patching_rect": [
      350,
      800,
      47,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-32"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "biquad~",
     "patching_rect": [
      10,
      840,
      65,
      22
     ],
     "numinlets": 6,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-33"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "biquad~",
     "patching_rect": [
      10,
      870,
      65,
      22
     ],
     "numinlets": 6,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-34"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~ 0.25",
     "patching_rect": [
      10,
      230,
      65,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-35"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "tapin~ 300",
     "patching_rect": [
      10,
      260,
      86,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-36"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "tapout~ 20",
     "patching_rect": [
      10,
      290,
      86,
      22
     ],
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-37"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~ 1",
     "patching_rect": [
      10,
      400,
      44,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-38"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "comb~ 60 29.7 0 1 0.84",
     "patching_rect": [
      10,
      340,
      140,
      22
     ],
     "numinlets": 5,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-39"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "comb~ 60 37.1 0 1 0.84",
     "patching_rect": [
      85,
      340,
      70,
      22
     ],
     "numinlets": 5,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-40"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "comb~ 60 41.1 0 1 0.84",
     "patching_rect": [
      160,
      340,
      70,
      22
     ],
     "numinlets": 5,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-41"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "comb~ 60 43.7 0 1 0.84",
     "patching_rect": [
      235,
      340,
      70,
      22
     ],
     "numinlets": 5,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-42"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "allpass~ 20 5. 0.7",
     "patching_rect": [
      10,
      430,
      110,
      22
     ],
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-43"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "allpass~ 20 1.7 0.7",
     "patching_rect": [
      10,
      460,
      110,
      22
     ],
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-44"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "onepole~ 6000",
     "patching_rect": [
      10,
      490,
      100,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-45"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "send~ fx.rev.retL",
     "patching_rect": [
      10,
      520,
      120,
      22
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-46"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~ 1",
     "patching_rect": [
      330,
      400,
      44,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-47"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "comb~ 60 30.4 0 1 0.84",
     "patching_rect": [
      330,
      340,
      140,
      22
     ],
     "numinlets": 5,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-48"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "comb~ 60 37.8 0 1 0.84",
     "patching_rect": [
      405,
      340,
      70,
      22
     ],
     "numinlets": 5,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-49"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "comb~ 60 41.8 0 1 0.84",
     "patching_rect": [
      480,
      340,
      70,
      22
     ],
     "numinlets": 5,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-50"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "comb~ 60 44.4 0 1 0.84",
     "patching_rect": [
      555,
      340,
      70,
      22
     ],
     "numinlets": 5,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-51"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "allpass~ 20 5.3 0.7",
     "patching_rect": [
      330,
      430,
      110,
      22
     ],
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-52"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "allpass~ 20 1.9 0.7",
     "patching_rect": [
      330,
      460,
      110,
      22
     ],
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-53"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "onepole~ 6000",
     "patching_rect": [
      330,
      490,
      100,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-54"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "send~ fx.rev.retR",
     "patching_rect": [
      330,
      520,
      120,
      22
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-55"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-8",
      0
     ],
     "destination": [
      "obj-9",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      0
     ],
     "destination": [
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      0
     ],
     "destination": [
      "obj-10",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-10",
      0
     ],
     "destination": [
      "obj-5",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      0
     ],
     "destination": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-11",
      0
     ],
     "destination": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-17",
      0
     ],
     "destination": [
      "obj-21",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-17",
      0
     ],
     "destination": [
      "obj-22",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-21",
      0
     ],
     "destination": [
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-22",
      0
     ],
     "destination": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-18",
      0
     ],
     "destination": [
      "obj-23",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-18",
      0
     ],
     "destination": [
      "obj-24",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-23",
      0
     ],
     "destination": [
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-24",
      0
     ],
     "destination": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-19",
      0
     ],
     "destination": [
      "obj-25",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-19",
      0
     ],
     "destination": [
      "obj-26",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-25",
      0
     ],
     "destination": [
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-26",
      0
     ],
     "destination": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      0
     ],
     "destination": [
      "obj-27",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-27",
      0
     ],
     "destination": [
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      0
     ],
     "destination": [
      "obj-28",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-28",
      0
     ],
     "destination": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      0
     ],
     "destination": [
      "obj-31",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      0
     ],
     "destination": [
      "obj-32",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-31",
      0
     ],
     "destination": [
      "obj-29",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-32",
      0
     ],
     "destination": [
      "obj-29",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-31",
      0
     ],
     "destination": [
      "obj-30",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-32",
      0
     ],
     "destination": [
      "obj-30",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-14",
      0
     ],
     "destination": [
      "obj-29",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-16",
      0
     ],
     "destination": [
      "obj-30",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-12",
      0
     ],
     "destination": [
      "obj-33",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      0
     ],
     "destination": [
      "obj-33",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-30",
      0
     ],
     "destination": [
      "obj-34",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      1
     ],
     "destination": [
      "obj-33",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-30",
      1
     ],
     "destination": [
      "obj-34",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      2
     ],
     "destination": [
      "obj-33",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-30",
      2
     ],
     "destination": [
      "obj-34",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      3
     ],
     "destination": [
      "obj-33",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-30",
      3
     ],
     "destination": [
      "obj-34",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-29",
      4
     ],
     "destination": [
      "obj-33",
      5
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-30",
      4
     ],
     "destination": [
      "obj-34",
      5
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-33",
      0
     ],
     "destination": [
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-34",
      0
     ],
     "destination": [
      "obj-35",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-35",
      0
     ],
     "destination": [
      "obj-36",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-36",
      0
     ],
     "destination": [
      "obj-37",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-3",
      0
     ],
     "destination": [
      "obj-37",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-37",
      0
     ],
     "destination": [
      "obj-39",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      0
     ],
     "destination": [
      "obj-39",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-39",
      0
     ],
     "destination": [
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-37",
      0
     ],
     "destination": [
      "obj-40",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      0
     ],
     "destination": [
      "obj-40",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-40",
      0
     ],
     "destination": [
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-37",
      0
     ],
     "destination": [
      "obj-41",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      0
     ],
     "destination": [
      "obj-41",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-41",
      0
     ],
     "destination": [
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-37",
      0
     ],
     "destination": [
      "obj-42",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      0
     ],
     "destination": [
      "obj-42",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-42",
      0
     ],
     "destination": [
      "obj-38",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-38",
      0
     ],
     "destination": [
      "obj-43",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-43",
      0
     ],
     "destination": [
      "obj-44",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-44",
      0
     ],
     "destination": [
      "obj-45",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      0
     ],
     "destination": [
      "obj-45",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-45",
      0
     ],
     "destination": [
      "obj-46",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-37",
      0
     ],
     "destination": [
      "obj-48",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      0
     ],
     "destination": [
      "obj-48",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-48",
      0
     ],
     "destination": [
      "obj-47",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-37",
      0
     ],
     "destination": [
      "obj-49",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      0
     ],
     "destination": [
      "obj-49",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-49",
      0
     ],
     "destination": [
      "obj-47",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-37",
      0
     ],
     "destination": [
      "obj-50",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      0
     ],
     "destination": [
      "obj-50",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-50",
      0
     ],
     "destination": [
      "obj-47",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-37",
      0
     ],
     "destination": [
      "obj-51",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-5",
      0
     ],
     "destination": [
      "obj-51",
      4
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-51",
      0
     ],
     "destination": [
      "obj-47",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-47",
      0
     ],
     "destination": [
      "obj-52",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-52",
      0
     ],
     "destination": [
      "obj-53",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-53",
      0
     ],
     "destination": [
      "obj-54",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      0
     ],
     "destination": [
      "obj-54",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-54",
      0
     ],
     "destination": [
      "obj-55",
      0
     ]
    }
   }
  ]
 }
}