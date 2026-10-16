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
     "text": "LEAD SYNTH",
     "patching_rect": [
      5,
      2,
      100,
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
     "text": "saw/sq",
     "patching_rect": [
      5,
      20,
      54,
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
      44,
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
     "maximum": 1.0,
     "id": "obj-3"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "detune",
     "patching_rect": [
      53,
      20,
      54,
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
      53,
      38,
      44,
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
     "maximum": 50.0,
     "id": "obj-5"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "glide",
     "patching_rect": [
      101,
      20,
      54,
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
      101,
      38,
      44,
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
     "maximum": 500.0,
     "id": "obj-7"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "cutoff",
     "patching_rect": [
      149,
      20,
      58,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-8"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      149,
      38,
      48,
      22
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 0,
     "minimum": 30.0,
     "maximum": 8000.0,
     "id": "obj-9"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "reso",
     "patching_rect": [
      201,
      20,
      54,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-10"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      201,
      38,
      44,
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
     "maximum": 0.95,
     "id": "obj-11"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "env amt",
     "patching_rect": [
      249,
      20,
      62,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-12"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      249,
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
     "minimum": -8000.0,
     "maximum": 8000.0,
     "id": "obj-13"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "att",
     "patching_rect": [
      5,
      62,
      54,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-14"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      5,
      80,
      44,
      22
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 0,
     "minimum": 1.0,
     "maximum": 2000.0,
     "id": "obj-15"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "dec",
     "patching_rect": [
      53,
      62,
      54,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-16"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      53,
      80,
      44,
      22
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 0,
     "minimum": 1.0,
     "maximum": 3000.0,
     "id": "obj-17"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "sus",
     "patching_rect": [
      101,
      62,
      54,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-18"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      101,
      80,
      44,
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
     "maximum": 1.0,
     "id": "obj-19"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "rel",
     "patching_rect": [
      149,
      62,
      58,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-20"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      149,
      80,
      48,
      22
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 0,
     "minimum": 1.0,
     "maximum": 4000.0,
     "id": "obj-21"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "level",
     "patching_rect": [
      201,
      62,
      54,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-22"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      201,
      80,
      44,
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
     "maximum": 1.0,
     "id": "obj-23"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "69 100 300",
     "patching_rect": [
      255,
      80,
      82,
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
     "maxclass": "comment",
     "text": "prova",
     "patching_rect": [
      255,
      62,
      47,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-25"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "loadbang",
     "patching_rect": [
      700,
      250,
      72,
      22
     ],
     "numinlets": 1,
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
     "text": "0.3",
     "patching_rect": [
      700,
      280,
      33,
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
     "text": "12",
     "patching_rect": [
      740,
      280,
      30,
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
     "maxclass": "message",
     "text": "10",
     "patching_rect": [
      780,
      280,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-29"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "900",
     "patching_rect": [
      820,
      280,
      33,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-30"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0.4",
     "patching_rect": [
      860,
      280,
      33,
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
     "text": "2500",
     "patching_rect": [
      900,
      280,
      40,
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
     "maxclass": "message",
     "text": "5",
     "patching_rect": [
      940,
      280,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-33"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "180",
     "patching_rect": [
      980,
      280,
      33,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-34"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0.4",
     "patching_rect": [
      1020,
      280,
      33,
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
     "maxclass": "message",
     "text": "250",
     "patching_rect": [
      1060,
      280,
      33,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-36"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0.4",
     "patching_rect": [
      1100,
      280,
      33,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-37"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r lead.note",
     "patching_rect": [
      10,
      250,
      93,
      22
     ],
     "numinlets": 0,
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
     "text": "unpack i i f",
     "patching_rect": [
      10,
      280,
      100,
      22
     ],
     "numinlets": 1,
     "numoutlets": 4,
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "id": "obj-39"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "mtof",
     "patching_rect": [
      10,
      310,
      44,
      22
     ],
     "numinlets": 1,
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
     "text": "pack f 10.",
     "patching_rect": [
      10,
      340,
      86,
      22
     ],
     "numinlets": 2,
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
     "text": "line~",
     "patching_rect": [
      10,
      370,
      51,
      22
     ],
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-42"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "saw~",
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
     "id": "obj-43"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "expr exp($f1*0.000577623)",
     "patching_rect": [
      100,
      370,
      150,
      22
     ],
     "numinlets": 1,
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
     "text": "*~ 1.",
     "patching_rect": [
      100,
      400,
      51,
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
     "text": "rect~",
     "patching_rect": [
      100,
      430,
      51,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-46"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "expr 1.-$f1",
     "patching_rect": [
      200,
      430,
      93,
      22
     ],
     "numinlets": 1,
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
     "text": "*~ 0.7",
     "patching_rect": [
      10,
      460,
      58,
      22
     ],
     "numinlets": 2,
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
     "text": "*~ 0.3",
     "patching_rect": [
      100,
      460,
      58,
      22
     ],
     "numinlets": 2,
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
     "text": "/ 127.",
     "patching_rect": [
      300,
      310,
      58,
      22
     ],
     "numinlets": 2,
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
     "text": "t b f",
     "patching_rect": [
      300,
      340,
      51,
      22
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-51"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "del 100",
     "patching_rect": [
      380,
      370,
      65,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-52"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0",
     "patching_rect": [
      380,
      400,
      30,
      22
     ],
     "numinlets": 2,
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
     "text": "adsr~ 5 180 0.4 250",
     "patching_rect": [
      300,
      430,
      140,
      22
     ],
     "numinlets": 5,
     "numoutlets": 4,
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "id": "obj-54"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~ 2500",
     "patching_rect": [
      460,
      460,
      65,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-55"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "sig~",
     "patching_rect": [
      560,
      460,
      44,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-56"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "+~",
     "patching_rect": [
      460,
      490,
      40,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-57"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "clip~ 30 16000",
     "patching_rect": [
      460,
      520,
      114,
      22
     ],
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-58"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "lores~ 900 0.4",
     "patching_rect": [
      10,
      520,
      114,
      22
     ],
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-59"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~",
     "patching_rect": [
      10,
      560,
      40,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-60"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~ 0.4",
     "patching_rect": [
      10,
      590,
      58,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-61"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "send~ bus.lead",
     "patching_rect": [
      10,
      620,
      114,
      22
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-62"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-26",
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
      "obj-3",
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
      "obj-5",
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
      "obj-29",
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
      "obj-7",
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
      "obj-30",
      0
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
      "obj-9",
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
      "obj-31",
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
      "obj-11",
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
      "obj-32",
      0
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
      "obj-13",
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
      "obj-33",
      0
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
      "obj-15",
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
      "obj-17",
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
      "obj-19",
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
      "obj-21",
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
      "obj-23",
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
      "obj-39",
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
      "obj-39",
      0
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
      "obj-40",
      0
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
      "obj-41",
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
      "obj-41",
      1
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
      "obj-42",
      0
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
      "obj-43",
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
      "obj-44",
      0
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
      "obj-45",
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
      "obj-3",
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
      "obj-43",
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
      "obj-47",
      0
     ],
     "destination": [
      "obj-48",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-46",
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
      "obj-3",
      0
     ],
     "destination": [
      "obj-49",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-39",
      1
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
      "obj-50",
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
      "obj-51",
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
      "obj-39",
      2
     ],
     "destination": [
      "obj-52",
      1
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
      "obj-51",
      1
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
      "obj-15",
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
      "obj-17",
      0
     ],
     "destination": [
      "obj-54",
      2
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
      "obj-54",
      3
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
      "obj-54",
      4
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
   },
   {
    "patchline": {
     "source": [
      "obj-13",
      0
     ],
     "destination": [
      "obj-55",
      1
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
      "obj-56",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-55",
      0
     ],
     "destination": [
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-56",
      0
     ],
     "destination": [
      "obj-57",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-57",
      0
     ],
     "destination": [
      "obj-58",
      0
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
      "obj-59",
      0
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
      "obj-59",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-58",
      0
     ],
     "destination": [
      "obj-59",
      1
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
      "obj-59",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-59",
      0
     ],
     "destination": [
      "obj-60",
      0
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
      "obj-60",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-60",
      0
     ],
     "destination": [
      "obj-61",
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
      "obj-61",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-61",
      0
     ],
     "destination": [
      "obj-62",
      0
     ]
    }
   }
  ]
 }
}