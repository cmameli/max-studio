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
     "text": "ARPEGGIATORE",
     "patching_rect": [
      5,
      2,
      120,
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
     "maxclass": "toggle",
     "patching_rect": [
      130,
      4,
      18,
      18
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "id": "obj-2"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "on",
     "patching_rect": [
      150,
      2,
      26,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-3"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "root",
     "patching_rect": [
      5,
      24,
      52,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-4"
    }
   },
   {
    "box": {
     "maxclass": "umenu",
     "patching_rect": [
      5,
      42,
      52,
      22
     ],
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "parameter_enable": 0,
     "items": [
      "C",
      ",",
      "C#",
      ",",
      "D",
      ",",
      "D#",
      ",",
      "E",
      ",",
      "F",
      ",",
      "F#",
      ",",
      "G",
      ",",
      "G#",
      ",",
      "A",
      ",",
      "A#",
      ",",
      "B"
     ],
     "id": "obj-5"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "ottava",
     "patching_rect": [
      62,
      24,
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
      62,
      42,
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
     "maximum": 7.0,
     "id": "obj-7"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "scala",
     "patching_rect": [
      112,
      24,
      88,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-8"
    }
   },
   {
    "box": {
     "maxclass": "umenu",
     "patching_rect": [
      112,
      42,
      88,
      22
     ],
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "parameter_enable": 0,
     "items": [
      "minore",
      ",",
      "maggiore",
      ",",
      "dorica",
      ",",
      "frigia",
      ",",
      "lidia",
      ",",
      "min armonica",
      ",",
      "penta min",
      ",",
      "penta magg"
     ],
     "id": "obj-9"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "accordo",
     "patching_rect": [
      205,
      24,
      70,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-10"
    }
   },
   {
    "box": {
     "maxclass": "umenu",
     "patching_rect": [
      205,
      42,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "parameter_enable": 0,
     "items": [
      "triade",
      ",",
      "settima",
      ",",
      "sus2",
      ",",
      "sus4",
      ",",
      "quinta",
      ",",
      "scala"
     ],
     "id": "obj-11"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "modo",
     "patching_rect": [
      280,
      24,
      80,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-12"
    }
   },
   {
    "box": {
     "maxclass": "umenu",
     "patching_rect": [
      280,
      42,
      80,
      22
     ],
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "parameter_enable": 0,
     "items": [
      "su",
      ",",
      "giu",
      ",",
      "su-giu",
      ",",
      "casuale",
      ",",
      "passeggiata"
     ],
     "id": "obj-13"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "rate",
     "patching_rect": [
      365,
      24,
      52,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-14"
    }
   },
   {
    "box": {
     "maxclass": "umenu",
     "patching_rect": [
      365,
      42,
      52,
      22
     ],
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "",
      ""
     ],
     "parameter_enable": 0,
     "items": [
      "1/16",
      ",",
      "1/8",
      ",",
      "1/8.",
      ",",
      "1/4"
     ],
     "id": "obj-15"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "ottave",
     "patching_rect": [
      5,
      66,
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
      5,
      84,
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
     "maximum": 4.0,
     "id": "obj-17"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "gate",
     "patching_rect": [
      55,
      66,
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
      55,
      84,
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
     "minimum": 0.05,
     "maximum": 1.5,
     "id": "obj-19"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "densita",
     "patching_rect": [
      105,
      66,
      54,
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
      105,
      84,
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
     "id": "obj-21"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "battute",
     "patching_rect": [
      155,
      66,
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
      155,
      84,
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
     "maximum": 8.0,
     "id": "obj-23"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "progressione (gradi)",
     "patching_rect": [
      205,
      66,
      150,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-24"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "prog 1 6 3 7",
     "patching_rect": [
      205,
      84,
      96,
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
     "text": "prog 1 4 5 1",
     "patching_rect": [
      290,
      84,
      96,
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
     "text": "prog 1 6 2 5",
     "patching_rect": [
      375,
      84,
      96,
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
     "text": "",
     "patching_rect": [
      5,
      112,
      410,
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
     "text": "js arp.js",
     "patching_rect": [
      10,
      420,
      100,
      22
     ],
     "numinlets": 1,
     "numoutlets": 6,
     "outlettype": [
      "",
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
     "text": "prepend on",
     "patching_rect": [
      10,
      380,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-30"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend root",
     "patching_rect": [
      80,
      380,
      70,
      22
     ],
     "numinlets": 1,
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
     "text": "prepend oct",
     "patching_rect": [
      150,
      380,
      70,
      22
     ],
     "numinlets": 1,
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
     "text": "prepend scale",
     "patching_rect": [
      220,
      380,
      70,
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
     "text": "prepend chord",
     "patching_rect": [
      290,
      380,
      70,
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
     "text": "prepend arpmode",
     "patching_rect": [
      360,
      380,
      70,
      22
     ],
     "numinlets": 1,
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
     "text": "prepend rate",
     "patching_rect": [
      430,
      380,
      70,
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
     "text": "prepend range",
     "patching_rect": [
      500,
      380,
      70,
      22
     ],
     "numinlets": 1,
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
     "text": "prepend gate",
     "patching_rect": [
      570,
      380,
      70,
      22
     ],
     "numinlets": 1,
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
     "text": "prepend dens",
     "patching_rect": [
      640,
      380,
      70,
      22
     ],
     "numinlets": 1,
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
     "text": "prepend bars",
     "patching_rect": [
      710,
      380,
      70,
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
     "text": "r clock.step",
     "patching_rect": [
      10,
      320,
      100,
      22
     ],
     "numinlets": 0,
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
     "text": "prepend step",
     "patching_rect": [
      10,
      350,
      100,
      22
     ],
     "numinlets": 1,
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
     "text": "r clock.tempo",
     "patching_rect": [
      130,
      320,
      107,
      22
     ],
     "numinlets": 0,
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
     "text": "prepend tempo",
     "patching_rect": [
      130,
      350,
      107,
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
     "text": "s lead.note",
     "patching_rect": [
      10,
      460,
      93,
      22
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-45"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "loadbang",
     "patching_rect": [
      800,
      250,
      72,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-46"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "1",
     "patching_rect": [
      800,
      280,
      30,
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
     "maxclass": "message",
     "text": "9",
     "patching_rect": [
      840,
      280,
      30,
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
     "maxclass": "message",
     "text": "4",
     "patching_rect": [
      880,
      280,
      30,
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
     "maxclass": "message",
     "text": "0",
     "patching_rect": [
      920,
      280,
      30,
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
     "maxclass": "message",
     "text": "1",
     "patching_rect": [
      960,
      280,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-51"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "2",
     "patching_rect": [
      1000,
      280,
      30,
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
      1040,
      280,
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
     "maxclass": "message",
     "text": "2",
     "patching_rect": [
      1080,
      280,
      30,
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
     "maxclass": "message",
     "text": "0.5",
     "patching_rect": [
      1120,
      280,
      33,
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
     "maxclass": "message",
     "text": "0.85",
     "patching_rect": [
      1160,
      280,
      40,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-56"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "1",
     "patching_rect": [
      1200,
      280,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-57"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-2",
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
      "obj-29",
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
      "obj-29",
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
      "obj-29",
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
      "obj-29",
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
      "obj-29",
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
      "obj-29",
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
      "obj-29",
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
      "obj-29",
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
      "obj-29",
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
      "obj-29",
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
      "obj-29",
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
      "obj-29",
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
      "obj-27",
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
      "obj-29",
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
      "obj-45",
      0
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
      "obj-28",
      0
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
      "obj-2",
      0
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
      "obj-48",
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
      "obj-5",
      0
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
      "obj-49",
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
      "obj-46",
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
      "obj-50",
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
      "obj-46",
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
      "obj-11",
      0
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
      "obj-13",
      0
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
      "obj-15",
      0
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
      "obj-54",
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
      "obj-17",
      0
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
      "obj-55",
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
      "obj-19",
      0
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
      "obj-56",
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
      "obj-21",
      0
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
      "obj-57",
      0
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
      "obj-23",
      0
     ]
    }
   }
  ]
 }
}