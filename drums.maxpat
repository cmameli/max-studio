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
     "text": "DRUMS",
     "patching_rect": [
      5,
      2,
      47,
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
     "maxclass": "message",
     "text": "0 100",
     "patching_rect": [
      10,
      30,
      45,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-2"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "1 100",
     "patching_rect": [
      65,
      30,
      45,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-3"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "2 100",
     "patching_rect": [
      120,
      30,
      45,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-4"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "3 100",
     "patching_rect": [
      175,
      30,
      45,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-5"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "clicca per provare: kick, snare, hat chiuso, hat aperto",
     "patching_rect": [
      5,
      58,
      260,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-6"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r drums.note",
     "patching_rect": [
      10,
      220,
      100,
      22
     ],
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-7"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "route 0 1 2 3",
     "patching_rect": [
      10,
      250,
      200,
      22
     ],
     "numinlets": 1,
     "numoutlets": 5,
     "outlettype": [
      "",
      "",
      "",
      "",
      ""
     ],
     "id": "obj-8"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "t f b",
     "patching_rect": [
      10,
      290,
      51,
      22
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-9"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "150, 45 60",
     "patching_rect": [
      80,
      320,
      82,
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
     "maxclass": "newobj",
     "text": "line~",
     "patching_rect": [
      80,
      350,
      51,
      22
     ],
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-11"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "cycle~",
     "patching_rect": [
      80,
      380,
      58,
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
     "maxclass": "newobj",
     "text": "/ 127.",
     "patching_rect": [
      10,
      320,
      58,
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
     "maxclass": "message",
     "text": "$1, 0 400",
     "patching_rect": [
      10,
      350,
      75,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-14"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "line~",
     "patching_rect": [
      10,
      380,
      51,
      22
     ],
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-15"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~",
     "patching_rect": [
      10,
      410,
      40,
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
     "maxclass": "newobj",
     "text": "*~",
     "patching_rect": [
      10,
      450,
      40,
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
     "maxclass": "newobj",
     "text": "*~ 1",
     "patching_rect": [
      10,
      560,
      44,
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
     "maxclass": "newobj",
     "text": "send~ bus.drums",
     "patching_rect": [
      10,
      590,
      121,
      22
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-19"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "/ 127.",
     "patching_rect": [
      200,
      290,
      58,
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
     "maxclass": "message",
     "text": "$1, 0 180",
     "patching_rect": [
      200,
      320,
      75,
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
     "maxclass": "newobj",
     "text": "line~",
     "patching_rect": [
      200,
      350,
      51,
      22
     ],
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-22"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~",
     "patching_rect": [
      200,
      380,
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
     "maxclass": "newobj",
     "text": "noise~",
     "patching_rect": [
      280,
      290,
      58,
      22
     ],
     "numinlets": 1,
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
     "text": "svf~ 1800 0.3",
     "patching_rect": [
      280,
      320,
      107,
      22
     ],
     "numinlets": 3,
     "numoutlets": 4,
     "outlettype": [
      "",
      "",
      "",
      ""
     ],
     "id": "obj-25"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "cycle~ 185",
     "patching_rect": [
      380,
      320,
      86,
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
     "text": "*~ 0.4",
     "patching_rect": [
      380,
      350,
      58,
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
     "maxclass": "newobj",
     "text": "*~",
     "patching_rect": [
      200,
      420,
      40,
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
     "text": "noise~",
     "patching_rect": [
      480,
      290,
      58,
      22
     ],
     "numinlets": 1,
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
     "text": "svf~ 7000 0.2",
     "patching_rect": [
      480,
      320,
      107,
      22
     ],
     "numinlets": 3,
     "numoutlets": 4,
     "outlettype": [
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
     "maxclass": "newobj",
     "text": "/ 127.",
     "patching_rect": [
      480,
      360,
      58,
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
     "text": "$1, 0 50",
     "patching_rect": [
      480,
      390,
      68,
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
     "text": "line~",
     "patching_rect": [
      480,
      420,
      51,
      22
     ],
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-33"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~",
     "patching_rect": [
      480,
      450,
      40,
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
     "maxclass": "newobj",
     "text": "*~ 0.5",
     "patching_rect": [
      480,
      490,
      58,
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
     "text": "*~",
     "patching_rect": [
      480,
      460,
      40,
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
     "maxclass": "newobj",
     "text": "/ 127.",
     "patching_rect": [
      640,
      360,
      58,
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
     "maxclass": "message",
     "text": "$1, 0 350",
     "patching_rect": [
      640,
      390,
      75,
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
     "text": "line~",
     "patching_rect": [
      640,
      420,
      51,
      22
     ],
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-39"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~",
     "patching_rect": [
      640,
      450,
      40,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-40"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0 5",
     "patching_rect": [
      620,
      330,
      33,
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
     "text": "*~",
     "patching_rect": [
      640,
      460,
      40,
      22
     ],
     "numinlets": 2,
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
     "text": "*~ 0.5",
     "patching_rect": [
      640,
      490,
      58,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-43"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-7",
      0
     ],
     "destination": [
      "obj-8",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      0
     ],
     "destination": [
      "obj-8",
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
      "obj-8",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-4",
      0
     ],
     "destination": [
      "obj-8",
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
      "obj-8",
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
      "obj-9",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-9",
      1
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
      "obj-12",
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
      "obj-13",
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
      "obj-14",
      0
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
      "obj-15",
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
      "obj-16",
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
      "obj-16",
      1
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
      "obj-17",
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
      "obj-17",
      1
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
      "obj-19",
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
      "obj-18",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      1
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
      "obj-21",
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
      "obj-22",
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
      "obj-22",
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
      "obj-24",
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
      "obj-25",
      2
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
      "obj-23",
      0
     ],
     "destination": [
      "obj-28",
      1
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
      "obj-18",
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
      "obj-8",
      2
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
      "obj-32",
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
      "obj-34",
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
      "obj-34",
      1
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
      "obj-36",
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
      "obj-36",
      1
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
      "obj-18",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      3
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
      "obj-39",
      0
     ],
     "destination": [
      "obj-40",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-8",
      2
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
      "obj-41",
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
      "obj-30",
      1
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
      "obj-40",
      0
     ],
     "destination": [
      "obj-42",
      1
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
      "obj-43",
      0
     ],
     "destination": [
      "obj-18",
      0
     ]
    }
   }
  ]
 }
}