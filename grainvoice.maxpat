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
     "maxclass": "newobj",
     "text": "in 1",
     "patching_rect": [
      10,
      10,
      44,
      22
     ],
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-1"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "unpack f f f f f",
     "patching_rect": [
      10,
      40,
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
     "id": "obj-2"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "pack f f f",
     "patching_rect": [
      10,
      80,
      86,
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
     "text": "$1, $2 $3",
     "patching_rect": [
      10,
      110,
      75,
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
     "maxclass": "newobj",
     "text": "line~",
     "patching_rect": [
      10,
      140,
      51,
      22
     ],
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-5"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "play~ samp1",
     "patching_rect": [
      10,
      170,
      90,
      22
     ],
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-6"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "t f b f",
     "patching_rect": [
      200,
      80,
      65,
      22
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-7"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "del",
     "patching_rect": [
      300,
      120,
      40,
      22
     ],
     "numinlets": 2,
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
     "text": "1",
     "patching_rect": [
      260,
      150,
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
     "text": "0",
     "patching_rect": [
      300,
      150,
      30,
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
     "text": "thispoly~",
     "patching_rect": [
      280,
      180,
      79,
      22
     ],
     "numinlets": 1,
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
     "maxclass": "message",
     "text": "0, 1 $1",
     "patching_rect": [
      200,
      120,
      61,
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
     "text": "line~",
     "patching_rect": [
      200,
      150,
      51,
      22
     ],
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-13"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "cycle~ 0",
     "patching_rect": [
      200,
      180,
      72,
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
     "text": "*~ -0.5",
     "patching_rect": [
      200,
      210,
      65,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-15"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "+~ 0.5",
     "patching_rect": [
      200,
      240,
      58,
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
      270,
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
     "text": "*~ 0.5",
     "patching_rect": [
      10,
      300,
      58,
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
     "text": "expr cos($f1*1.570796)",
     "patching_rect": [
      150,
      300,
      150,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-19"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "expr sin($f1*1.570796)",
     "patching_rect": [
      320,
      300,
      150,
      22
     ],
     "numinlets": 1,
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
     "text": "*~",
     "patching_rect": [
      10,
      340,
      40,
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
     "text": "*~",
     "patching_rect": [
      100,
      340,
      40,
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
     "maxclass": "newobj",
     "text": "out~ 1",
     "patching_rect": [
      10,
      380,
      58,
      22
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-23"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "out~ 2",
     "patching_rect": [
      100,
      380,
      58,
      22
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-24"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-1",
      0
     ],
     "destination": [
      "obj-2",
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
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      1
     ],
     "destination": [
      "obj-3",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      2
     ],
     "destination": [
      "obj-3",
      2
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
      "obj-4",
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
      "obj-5",
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
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      2
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
      "obj-7",
      2
     ],
     "destination": [
      "obj-8",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-7",
      1
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
      "obj-7",
      1
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
      "obj-9",
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
      "obj-7",
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
      "obj-12",
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
      1
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
      "obj-6",
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
      "obj-2",
      4
     ],
     "destination": [
      "obj-18",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-2",
      3
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
      "obj-2",
      3
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
      "obj-18",
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
      "obj-18",
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
      "obj-19",
      0
     ],
     "destination": [
      "obj-21",
      1
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
      "obj-22",
      1
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
      "obj-24",
      0
     ]
    }
   }
  ]
 }
}