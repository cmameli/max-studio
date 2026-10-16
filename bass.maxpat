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
     "text": "BASS",
     "patching_rect": [
      5,
      2,
      40,
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
     "text": "cutoff",
     "patching_rect": [
      5,
      22,
      58,
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
      40,
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
     "id": "obj-3"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "reso",
     "patching_rect": [
      58,
      22,
      58,
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
      58,
      40,
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
     "minimum": 0.0,
     "maximum": 0.97,
     "id": "obj-5"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "decay",
     "patching_rect": [
      111,
      22,
      58,
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
      111,
      40,
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
     "minimum": 10.0,
     "maximum": 3000.0,
     "id": "obj-7"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "glide",
     "patching_rect": [
      164,
      22,
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
      164,
      40,
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
     "minimum": 0.0,
     "maximum": 1000.0,
     "id": "obj-9"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "level",
     "patching_rect": [
      217,
      22,
      50,
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
      217,
      40,
      40,
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
     "id": "obj-11"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "36 100 0 0",
     "patching_rect": [
      5,
      72,
      82,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-12"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "43 100 1 0",
     "patching_rect": [
      90,
      72,
      82,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-13"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "prova",
     "patching_rect": [
      175,
      72,
      47,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-14"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "loadbang",
     "patching_rect": [
      400,
      220,
      72,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-15"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "300",
     "patching_rect": [
      400,
      250,
      33,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-16"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0.6",
     "patching_rect": [
      440,
      250,
      33,
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
     "text": "250",
     "patching_rect": [
      480,
      250,
      33,
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
     "text": "60",
     "patching_rect": [
      520,
      250,
      30,
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
     "maxclass": "message",
     "text": "0.5",
     "patching_rect": [
      560,
      250,
      33,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-20"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r bass.note",
     "patching_rect": [
      10,
      220,
      93,
      22
     ],
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-21"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "unpack i i i i",
     "patching_rect": [
      10,
      250,
      150,
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
     "id": "obj-22"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "* 60.",
     "patching_rect": [
      180,
      280,
      51,
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
     "maxclass": "newobj",
     "text": "+ 1.",
     "patching_rect": [
      180,
      310,
      44,
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
     "maxclass": "newobj",
     "text": "mtof",
     "patching_rect": [
      10,
      280,
      44,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-25"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "pack f f",
     "patching_rect": [
      10,
      340,
      72,
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
     "id": "obj-27"
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
     "id": "obj-28"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "/ 127.",
     "patching_rect": [
      300,
      280,
      58,
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
     "maxclass": "newobj",
     "text": "pack f 250",
     "patching_rect": [
      300,
      310,
      86,
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
     "text": "$1 5 0 $2",
     "patching_rect": [
      300,
      340,
      75,
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
     "maxclass": "newobj",
     "text": "line~",
     "patching_rect": [
      300,
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
     "id": "obj-32"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "sig~",
     "patching_rect": [
      450,
      300,
      44,
      22
     ],
     "numinlets": 1,
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
     "text": "receive~ mod.bass",
     "patching_rect": [
      540,
      300,
      120,
      22
     ],
     "numinlets": 1,
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
     "text": "+~",
     "patching_rect": [
      450,
      340,
      40,
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
     "text": "clip~ 30 16000",
     "patching_rect": [
      450,
      370,
      114,
      22
     ],
     "numinlets": 3,
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
     "text": "lores~ 300 0.6",
     "patching_rect": [
      10,
      440,
      114,
      22
     ],
     "numinlets": 3,
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
     "text": "*~",
     "patching_rect": [
      10,
      480,
      40,
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
     "text": "*~ 0.5",
     "patching_rect": [
      10,
      510,
      58,
      22
     ],
     "numinlets": 2,
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
     "text": "send~ bus.bass",
     "patching_rect": [
      10,
      540,
      114,
      22
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-40"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-15",
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
      "obj-16",
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
      "obj-15",
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
      "obj-17",
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
      "obj-15",
      0
     ],
     "destination": [
      "obj-18",
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
      "obj-7",
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
      "obj-19",
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
      "obj-9",
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
      "obj-20",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-20",
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
      "obj-21",
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
      "obj-12",
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
      "obj-13",
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
      "obj-22",
      2
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
      "obj-9",
      0
     ],
     "destination": [
      "obj-23",
      1
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
      "obj-24",
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
      "obj-25",
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
      "obj-26",
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
      "obj-26",
      1
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
      "obj-28",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-22",
      1
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
      "obj-30",
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
      "obj-30",
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
      "obj-32",
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
      "obj-35",
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
      1
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
      "obj-28",
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
      "obj-36",
      0
     ],
     "destination": [
      "obj-37",
      1
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
      "obj-37",
      2
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
      "obj-38",
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
      "obj-38",
      1
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
      "obj-11",
      0
     ],
     "destination": [
      "obj-39",
      1
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
   }
  ]
 }
}