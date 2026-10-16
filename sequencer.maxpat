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
     "text": "SEQUENCER EUCLIDEO",
     "patching_rect": [
      5,
      2,
      170,
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
     "maxclass": "number",
     "patching_rect": [
      180,
      2,
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
     "id": "obj-2"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "step",
     "patching_rect": [
      222,
      2,
      40,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-3"
    }
   },
   {
    "box": {
     "maxclass": "toggle",
     "patching_rect": [
      280,
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
     "id": "obj-4"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "MIDI drums -> modulare",
     "patching_rect": [
      300,
      2,
      166,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-5"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "evoreset",
     "patching_rect": [
      470,
      2,
      68,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-6"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "hits",
     "patching_rect": [
      70,
      26,
      44,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-7"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "steps",
     "patching_rect": [
      112,
      26,
      44,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-8"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "rot",
     "patching_rect": [
      154,
      26,
      44,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-9"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "evo",
     "patching_rect": [
      200,
      26,
      44,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-10"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "ogni",
     "patching_rect": [
      226,
      26,
      44,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-11"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "rot+",
     "patching_rect": [
      268,
      26,
      44,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-12"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "walk",
     "patching_rect": [
      310,
      26,
      44,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-13"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "pattern (hits/steps, rotazione)",
     "patching_rect": [
      356,
      26,
      200,
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
     "text": "js seq.js",
     "patching_rect": [
      10,
      420,
      120,
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
     "id": "obj-15"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "loadbang",
     "patching_rect": [
      600,
      300,
      72,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-16"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "kick",
     "patching_rect": [
      5,
      46,
      40,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-17"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      70,
      46,
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
     "minimum": 0,
     "maximum": 16,
     "id": "obj-18"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      112,
      46,
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
     "minimum": 1,
     "maximum": 16,
     "id": "obj-19"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      154,
      46,
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
     "minimum": 0,
     "maximum": 15,
     "id": "obj-20"
    }
   },
   {
    "box": {
     "maxclass": "toggle",
     "patching_rect": [
      200,
      48,
      18,
      18
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "id": "obj-21"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      226,
      46,
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
     "minimum": 1,
     "maximum": 64,
     "id": "obj-22"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      268,
      46,
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
     "minimum": -15,
     "maximum": 15,
     "id": "obj-23"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      310,
      46,
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
     "minimum": 0,
     "maximum": 8,
     "id": "obj-24"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "",
     "patching_rect": [
      356,
      46,
      280,
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
     "maxclass": "newobj",
     "text": "pak i i i",
     "patching_rect": [
      20,
      300,
      79,
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
     "text": "prepend euclid 0",
     "patching_rect": [
      20,
      330,
      110,
      22
     ],
     "numinlets": 1,
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
     "text": "pak i i i i",
     "patching_rect": [
      20,
      360,
      93,
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
     "text": "prepend evo 0",
     "patching_rect": [
      20,
      390,
      110,
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
     "maxclass": "message",
     "text": "16",
     "patching_rect": [
      640,
      330,
      30,
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
     "text": "4",
     "patching_rect": [
      676,
      330,
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
     "text": "0",
     "patching_rect": [
      712,
      330,
      30,
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
     "text": "4",
     "patching_rect": [
      748,
      330,
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
     "text": "1",
     "patching_rect": [
      784,
      330,
      30,
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
     "text": "0",
     "patching_rect": [
      820,
      330,
      30,
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
     "text": "0",
     "patching_rect": [
      856,
      330,
      30,
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
     "maxclass": "comment",
     "text": "snare",
     "patching_rect": [
      5,
      72,
      47,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-37"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      70,
      72,
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
     "minimum": 0,
     "maximum": 16,
     "id": "obj-38"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      112,
      72,
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
     "minimum": 1,
     "maximum": 16,
     "id": "obj-39"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      154,
      72,
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
     "minimum": 0,
     "maximum": 15,
     "id": "obj-40"
    }
   },
   {
    "box": {
     "maxclass": "toggle",
     "patching_rect": [
      200,
      74,
      18,
      18
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "id": "obj-41"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      226,
      72,
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
     "minimum": 1,
     "maximum": 64,
     "id": "obj-42"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      268,
      72,
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
     "minimum": -15,
     "maximum": 15,
     "id": "obj-43"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      310,
      72,
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
     "minimum": 0,
     "maximum": 8,
     "id": "obj-44"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "",
     "patching_rect": [
      356,
      72,
      280,
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
     "text": "pak i i i",
     "patching_rect": [
      140,
      300,
      79,
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
     "text": "prepend euclid 1",
     "patching_rect": [
      140,
      330,
      110,
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
     "text": "pak i i i i",
     "patching_rect": [
      140,
      360,
      93,
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
     "text": "prepend evo 1",
     "patching_rect": [
      140,
      390,
      110,
      22
     ],
     "numinlets": 1,
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
     "text": "16",
     "patching_rect": [
      900,
      330,
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
     "text": "2",
     "patching_rect": [
      936,
      330,
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
     "text": "4",
     "patching_rect": [
      972,
      330,
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
     "text": "4",
     "patching_rect": [
      1008,
      330,
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
     "text": "1",
     "patching_rect": [
      1044,
      330,
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
     "text": "0",
     "patching_rect": [
      1080,
      330,
      30,
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
     "text": "0",
     "patching_rect": [
      1116,
      330,
      30,
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
     "maxclass": "comment",
     "text": "hat ch",
     "patching_rect": [
      5,
      98,
      54,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-57"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      70,
      98,
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
     "minimum": 0,
     "maximum": 16,
     "id": "obj-58"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      112,
      98,
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
     "minimum": 1,
     "maximum": 16,
     "id": "obj-59"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      154,
      98,
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
     "minimum": 0,
     "maximum": 15,
     "id": "obj-60"
    }
   },
   {
    "box": {
     "maxclass": "toggle",
     "patching_rect": [
      200,
      100,
      18,
      18
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "id": "obj-61"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      226,
      98,
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
     "minimum": 1,
     "maximum": 64,
     "id": "obj-62"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      268,
      98,
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
     "minimum": -15,
     "maximum": 15,
     "id": "obj-63"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      310,
      98,
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
     "minimum": 0,
     "maximum": 8,
     "id": "obj-64"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "",
     "patching_rect": [
      356,
      98,
      280,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-65"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "pak i i i",
     "patching_rect": [
      260,
      300,
      79,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-66"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend euclid 2",
     "patching_rect": [
      260,
      330,
      110,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-67"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "pak i i i i",
     "patching_rect": [
      260,
      360,
      93,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-68"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend evo 2",
     "patching_rect": [
      260,
      390,
      110,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-69"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "16",
     "patching_rect": [
      1160,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-70"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "8",
     "patching_rect": [
      1196,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-71"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0",
     "patching_rect": [
      1232,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-72"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "2",
     "patching_rect": [
      1268,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-73"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "1",
     "patching_rect": [
      1304,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-74"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "2",
     "patching_rect": [
      1340,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-75"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "1",
     "patching_rect": [
      1376,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-76"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "hat op",
     "patching_rect": [
      5,
      124,
      54,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-77"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      70,
      124,
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
     "minimum": 0,
     "maximum": 16,
     "id": "obj-78"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      112,
      124,
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
     "minimum": 1,
     "maximum": 16,
     "id": "obj-79"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      154,
      124,
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
     "minimum": 0,
     "maximum": 15,
     "id": "obj-80"
    }
   },
   {
    "box": {
     "maxclass": "toggle",
     "patching_rect": [
      200,
      126,
      18,
      18
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "id": "obj-81"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      226,
      124,
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
     "minimum": 1,
     "maximum": 64,
     "id": "obj-82"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      268,
      124,
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
     "minimum": -15,
     "maximum": 15,
     "id": "obj-83"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      310,
      124,
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
     "minimum": 0,
     "maximum": 8,
     "id": "obj-84"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "",
     "patching_rect": [
      356,
      124,
      280,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-85"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "pak i i i",
     "patching_rect": [
      380,
      300,
      79,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-86"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend euclid 3",
     "patching_rect": [
      380,
      330,
      110,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-87"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "pak i i i i",
     "patching_rect": [
      380,
      360,
      93,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-88"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend evo 3",
     "patching_rect": [
      380,
      390,
      110,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-89"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "16",
     "patching_rect": [
      1420,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-90"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "1",
     "patching_rect": [
      1456,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-91"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "2",
     "patching_rect": [
      1492,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-92"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "4",
     "patching_rect": [
      1528,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-93"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "3",
     "patching_rect": [
      1564,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-94"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0",
     "patching_rect": [
      1600,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-95"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "1",
     "patching_rect": [
      1636,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-96"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "sampler",
     "patching_rect": [
      5,
      150,
      61,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-97"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      70,
      150,
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
     "minimum": 0,
     "maximum": 16,
     "id": "obj-98"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      112,
      150,
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
     "minimum": 1,
     "maximum": 16,
     "id": "obj-99"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      154,
      150,
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
     "minimum": 0,
     "maximum": 15,
     "id": "obj-100"
    }
   },
   {
    "box": {
     "maxclass": "toggle",
     "patching_rect": [
      200,
      152,
      18,
      18
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "id": "obj-101"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      226,
      150,
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
     "minimum": 1,
     "maximum": 64,
     "id": "obj-102"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      268,
      150,
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
     "minimum": -15,
     "maximum": 15,
     "id": "obj-103"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      310,
      150,
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
     "minimum": 0,
     "maximum": 8,
     "id": "obj-104"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "",
     "patching_rect": [
      356,
      150,
      280,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-105"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "pak i i i",
     "patching_rect": [
      500,
      300,
      79,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-106"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend euclid 4",
     "patching_rect": [
      500,
      330,
      110,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-107"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "pak i i i i",
     "patching_rect": [
      500,
      360,
      93,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-108"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend evo 4",
     "patching_rect": [
      500,
      390,
      110,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-109"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "8",
     "patching_rect": [
      1680,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-110"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "3",
     "patching_rect": [
      1716,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-111"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0",
     "patching_rect": [
      1752,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-112"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "4",
     "patching_rect": [
      1788,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-113"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "1",
     "patching_rect": [
      1824,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-114"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "1",
     "patching_rect": [
      1860,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-115"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "1",
     "patching_rect": [
      1896,
      330,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-116"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "bline 36 0 36 48 0 36 0 39 36 0 43 0 36 48 0 41",
     "patching_rect": [
      70,
      180,
      330,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-117"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "basso",
     "patching_rect": [
      5,
      180,
      47,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-118"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "demo",
     "patching_rect": [
      560,
      330,
      40,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-119"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r clock.step",
     "patching_rect": [
      10,
      250,
      100,
      22
     ],
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-120"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend step",
     "patching_rect": [
      10,
      280,
      100,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-121"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r seq",
     "patching_rect": [
      150,
      250,
      51,
      22
     ],
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-122"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s drums.note",
     "patching_rect": [
      10,
      470,
      100,
      22
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-123"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s bass.note",
     "patching_rect": [
      110,
      470,
      93,
      22
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-124"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s sampler.note",
     "patching_rect": [
      210,
      470,
      114,
      22
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-125"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "gate",
     "patching_rect": [
      320,
      470,
      44,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-126"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "makenote 100 60",
     "patching_rect": [
      320,
      500,
      121,
      22
     ],
     "numinlets": 3,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-127"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "noteout",
     "patching_rect": [
      320,
      530,
      65,
      22
     ],
     "numinlets": 3,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-128"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "route 0 1 2 3 4",
     "patching_rect": [
      450,
      470,
      140,
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
     "id": "obj-129"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-18",
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
      "obj-19",
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
      "obj-20",
      0
     ],
     "destination": [
      "obj-26",
      2
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
      "obj-15",
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
      "obj-28",
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
      "obj-28",
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
      "obj-28",
      2
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
      "obj-28",
      3
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
      "obj-15",
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
      "obj-30",
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
      "obj-16",
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
      "obj-18",
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
      "obj-20",
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
      "obj-22",
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
      "obj-23",
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
      "obj-24",
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
      "obj-38",
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
      "obj-39",
      0
     ],
     "destination": [
      "obj-46",
      1
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
      "obj-46",
      2
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
      "obj-15",
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
      "obj-48",
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
      "obj-48",
      1
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
      2
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
      "obj-48",
      3
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
      "obj-15",
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
      "obj-39",
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
      "obj-38",
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
      "obj-40",
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
      "obj-42",
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
      "obj-43",
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
      "obj-44",
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
      "obj-41",
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
      "obj-66",
      0
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
      "obj-66",
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
      "obj-66",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-66",
      0
     ],
     "destination": [
      "obj-67",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-67",
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
      "obj-61",
      0
     ],
     "destination": [
      "obj-68",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-62",
      0
     ],
     "destination": [
      "obj-68",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-63",
      0
     ],
     "destination": [
      "obj-68",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-64",
      0
     ],
     "destination": [
      "obj-68",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-68",
      0
     ],
     "destination": [
      "obj-69",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-69",
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
      "obj-16",
      0
     ],
     "destination": [
      "obj-70",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-70",
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
      "obj-16",
      0
     ],
     "destination": [
      "obj-71",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-71",
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
      "obj-16",
      0
     ],
     "destination": [
      "obj-72",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-72",
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
      "obj-16",
      0
     ],
     "destination": [
      "obj-73",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-73",
      0
     ],
     "destination": [
      "obj-62",
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
      "obj-74",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-74",
      0
     ],
     "destination": [
      "obj-63",
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
      "obj-75",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-75",
      0
     ],
     "destination": [
      "obj-64",
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
      "obj-76",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-76",
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
      "obj-78",
      0
     ],
     "destination": [
      "obj-86",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-79",
      0
     ],
     "destination": [
      "obj-86",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-80",
      0
     ],
     "destination": [
      "obj-86",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-86",
      0
     ],
     "destination": [
      "obj-87",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-87",
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
      "obj-81",
      0
     ],
     "destination": [
      "obj-88",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-82",
      0
     ],
     "destination": [
      "obj-88",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-83",
      0
     ],
     "destination": [
      "obj-88",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-84",
      0
     ],
     "destination": [
      "obj-88",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-88",
      0
     ],
     "destination": [
      "obj-89",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-89",
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
      "obj-16",
      0
     ],
     "destination": [
      "obj-90",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-90",
      0
     ],
     "destination": [
      "obj-79",
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
      "obj-91",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-91",
      0
     ],
     "destination": [
      "obj-78",
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
      "obj-92",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-92",
      0
     ],
     "destination": [
      "obj-80",
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
      "obj-93",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-93",
      0
     ],
     "destination": [
      "obj-82",
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
      "obj-94",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-94",
      0
     ],
     "destination": [
      "obj-83",
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
      "obj-95",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-95",
      0
     ],
     "destination": [
      "obj-84",
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
      "obj-96",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-96",
      0
     ],
     "destination": [
      "obj-81",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-98",
      0
     ],
     "destination": [
      "obj-106",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-99",
      0
     ],
     "destination": [
      "obj-106",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-100",
      0
     ],
     "destination": [
      "obj-106",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-106",
      0
     ],
     "destination": [
      "obj-107",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-107",
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
      "obj-101",
      0
     ],
     "destination": [
      "obj-108",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-102",
      0
     ],
     "destination": [
      "obj-108",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-103",
      0
     ],
     "destination": [
      "obj-108",
      2
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-104",
      0
     ],
     "destination": [
      "obj-108",
      3
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-108",
      0
     ],
     "destination": [
      "obj-109",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-109",
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
      "obj-16",
      0
     ],
     "destination": [
      "obj-110",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-110",
      0
     ],
     "destination": [
      "obj-99",
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
      "obj-111",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-111",
      0
     ],
     "destination": [
      "obj-98",
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
      "obj-112",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-112",
      0
     ],
     "destination": [
      "obj-100",
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
      "obj-113",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-113",
      0
     ],
     "destination": [
      "obj-102",
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
      "obj-114",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-114",
      0
     ],
     "destination": [
      "obj-103",
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
      "obj-115",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-115",
      0
     ],
     "destination": [
      "obj-104",
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
      "obj-116",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-116",
      0
     ],
     "destination": [
      "obj-101",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-117",
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
      "obj-6",
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
      "obj-16",
      0
     ],
     "destination": [
      "obj-119",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-119",
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
      "obj-120",
      0
     ],
     "destination": [
      "obj-121",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-121",
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
      "obj-122",
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
      "obj-123",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      1
     ],
     "destination": [
      "obj-124",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      2
     ],
     "destination": [
      "obj-125",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      3
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
      "obj-4",
      0
     ],
     "destination": [
      "obj-126",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      4
     ],
     "destination": [
      "obj-126",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-126",
      0
     ],
     "destination": [
      "obj-127",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-127",
      0
     ],
     "destination": [
      "obj-128",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-127",
      1
     ],
     "destination": [
      "obj-128",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-15",
      5
     ],
     "destination": [
      "obj-129",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-129",
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
      "obj-129",
      1
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
      "obj-129",
      2
     ],
     "destination": [
      "obj-65",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-129",
      3
     ],
     "destination": [
      "obj-85",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-129",
      4
     ],
     "destination": [
      "obj-105",
      0
     ]
    }
   }
  ]
 }
}