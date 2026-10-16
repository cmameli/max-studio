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
     "text": "MIXER",
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
     "maxclass": "comment",
     "text": "level",
     "patching_rect": [
      70,
      2,
      47,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-2"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "delay",
     "patching_rect": [
      230,
      2,
      47,
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
     "text": "reverb",
     "patching_rect": [
      282,
      2,
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
     "maxclass": "newobj",
     "text": "loadbang",
     "patching_rect": [
      10,
      300,
      72,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-5"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~ 1",
     "patching_rect": [
      300,
      520,
      44,
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
     "maxclass": "newobj",
     "text": "send~ fx.delay.in",
     "patching_rect": [
      300,
      550,
      120,
      22
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-7"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~ 1",
     "patching_rect": [
      450,
      520,
      44,
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
     "maxclass": "newobj",
     "text": "send~ fx.rev.in",
     "patching_rect": [
      450,
      550,
      110,
      22
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-9"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~ 1",
     "patching_rect": [
      10,
      640,
      44,
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
     "text": "*~ 1",
     "patching_rect": [
      150,
      640,
      44,
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
     "maxclass": "comment",
     "text": "drums",
     "patching_rect": [
      5,
      24,
      47,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-12"
    }
   },
   {
    "box": {
     "maxclass": "slider",
     "patching_rect": [
      70,
      24,
      150,
      20
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "floatoutput": 1,
     "size": 1.0,
     "id": "obj-13"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      230,
      24,
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
     "maximum": 1.0,
     "id": "obj-14"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      282,
      24,
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
     "maximum": 1.0,
     "id": "obj-15"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0.8",
     "patching_rect": [
      40,
      330,
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
     "text": "0.0",
     "patching_rect": [
      80,
      330,
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
     "text": "0.15",
     "patching_rect": [
      120,
      330,
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
     "maxclass": "newobj",
     "text": "receive~ bus.drums",
     "patching_rect": [
      10,
      400,
      120,
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
     "text": "*~",
     "patching_rect": [
      10,
      430,
      40,
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
     "text": "*~ 0",
     "patching_rect": [
      10,
      470,
      44,
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
     "text": "*~ 0",
     "patching_rect": [
      80,
      470,
      44,
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
     "maxclass": "comment",
     "text": "bass",
     "patching_rect": [
      5,
      50,
      40,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-23"
    }
   },
   {
    "box": {
     "maxclass": "slider",
     "patching_rect": [
      70,
      50,
      150,
      20
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "floatoutput": 1,
     "size": 1.0,
     "id": "obj-24"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      230,
      50,
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
     "maximum": 1.0,
     "id": "obj-25"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      282,
      50,
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
     "maximum": 1.0,
     "id": "obj-26"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0.8",
     "patching_rect": [
      190,
      330,
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
     "text": "0.0",
     "patching_rect": [
      230,
      330,
      33,
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
     "text": "0.1",
     "patching_rect": [
      270,
      330,
      33,
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
     "text": "receive~ bus.bass",
     "patching_rect": [
      160,
      400,
      120,
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
     "text": "*~",
     "patching_rect": [
      160,
      430,
      40,
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
     "text": "*~ 0",
     "patching_rect": [
      160,
      470,
      44,
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
     "text": "*~ 0",
     "patching_rect": [
      230,
      470,
      44,
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
     "maxclass": "comment",
     "text": "sampler",
     "patching_rect": [
      5,
      76,
      61,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-34"
    }
   },
   {
    "box": {
     "maxclass": "slider",
     "patching_rect": [
      70,
      76,
      150,
      20
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "floatoutput": 1,
     "size": 1.0,
     "id": "obj-35"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      230,
      76,
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
     "maximum": 1.0,
     "id": "obj-36"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      282,
      76,
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
     "maximum": 1.0,
     "id": "obj-37"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0.8",
     "patching_rect": [
      340,
      330,
      33,
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
     "maxclass": "message",
     "text": "0.3",
     "patching_rect": [
      380,
      330,
      33,
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
     "maxclass": "message",
     "text": "0.3",
     "patching_rect": [
      420,
      330,
      33,
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
     "maxclass": "newobj",
     "text": "receive~ bus.sampler.L",
     "patching_rect": [
      310,
      400,
      120,
      22
     ],
     "numinlets": 1,
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
     "text": "receive~ bus.sampler.R",
     "patching_rect": [
      310,
      370,
      120,
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
     "text": "*~",
     "patching_rect": [
      310,
      430,
      40,
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
     "text": "*~",
     "patching_rect": [
      380,
      430,
      40,
      22
     ],
     "numinlets": 2,
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
     "text": "*~ 0",
     "patching_rect": [
      310,
      470,
      44,
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
     "text": "*~ 0",
     "patching_rect": [
      380,
      470,
      44,
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
     "maxclass": "comment",
     "text": "lead",
     "patching_rect": [
      5,
      102,
      40,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-47"
    }
   },
   {
    "box": {
     "maxclass": "slider",
     "patching_rect": [
      70,
      102,
      150,
      20
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "floatoutput": 1,
     "size": 1.0,
     "id": "obj-48"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      230,
      102,
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
     "maximum": 1.0,
     "id": "obj-49"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      282,
      102,
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
     "maximum": 1.0,
     "id": "obj-50"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0.8",
     "patching_rect": [
      490,
      330,
      33,
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
     "text": "0.25",
     "patching_rect": [
      530,
      330,
      40,
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
     "text": "0.3",
     "patching_rect": [
      570,
      330,
      33,
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
     "text": "receive~ bus.lead",
     "patching_rect": [
      460,
      400,
      120,
      22
     ],
     "numinlets": 1,
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
     "text": "*~",
     "patching_rect": [
      460,
      430,
      40,
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
     "text": "*~ 0",
     "patching_rect": [
      460,
      470,
      44,
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
     "maxclass": "newobj",
     "text": "*~ 0",
     "patching_rect": [
      530,
      470,
      44,
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
     "maxclass": "comment",
     "text": "return",
     "patching_rect": [
      5,
      132,
      54,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-58"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      230,
      132,
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
     "maximum": 1.0,
     "id": "obj-59"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      282,
      132,
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
     "maximum": 1.0,
     "id": "obj-60"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0.8",
     "patching_rect": [
      500,
      330,
      33,
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
     "maxclass": "message",
     "text": "0.8",
     "patching_rect": [
      540,
      330,
      33,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-62"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "receive~ fx.delay.retL",
     "patching_rect": [
      500,
      590,
      120,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-63"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~",
     "patching_rect": [
      500,
      615,
      40,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-64"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "receive~ fx.delay.retR",
     "patching_rect": [
      630,
      590,
      120,
      22
     ],
     "numinlets": 1,
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
     "text": "*~",
     "patching_rect": [
      630,
      615,
      40,
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
     "text": "receive~ fx.rev.retL",
     "patching_rect": [
      760,
      590,
      120,
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
     "text": "*~",
     "patching_rect": [
      760,
      615,
      40,
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
     "text": "receive~ fx.rev.retR",
     "patching_rect": [
      890,
      590,
      120,
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
     "maxclass": "newobj",
     "text": "*~",
     "patching_rect": [
      890,
      615,
      40,
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
     "maxclass": "comment",
     "text": "master",
     "patching_rect": [
      5,
      160,
      54,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-71"
    }
   },
   {
    "box": {
     "maxclass": "slider",
     "patching_rect": [
      70,
      160,
      150,
      20
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "floatoutput": 1,
     "size": 1.0,
     "id": "obj-72"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0.8",
     "patching_rect": [
      580,
      330,
      33,
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
     "maxclass": "newobj",
     "text": "*~",
     "patching_rect": [
      10,
      680,
      40,
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
     "maxclass": "newobj",
     "text": "*~",
     "patching_rect": [
      150,
      680,
      40,
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
     "maxclass": "newobj",
     "text": "clip~ -1 1",
     "patching_rect": [
      10,
      710,
      86,
      22
     ],
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-76"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "clip~ -1 1",
     "patching_rect": [
      150,
      710,
      86,
      22
     ],
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-77"
    }
   },
   {
    "box": {
     "maxclass": "ezdac~",
     "patching_rect": [
      345,
      20,
      45,
      45
     ],
     "numinlets": 2,
     "numoutlets": 0,
     "outlettype": [],
     "parameter_enable": 0,
     "id": "obj-78"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "audio",
     "patching_rect": [
      350,
      66,
      47,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-79"
    }
   },
   {
    "box": {
     "maxclass": "meter~",
     "patching_rect": [
      400,
      20,
      14,
      150
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "id": "obj-80"
    }
   },
   {
    "box": {
     "maxclass": "meter~",
     "patching_rect": [
      418,
      20,
      14,
      150
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "id": "obj-81"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-6",
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
      "obj-5",
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
      "obj-13",
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
      "obj-14",
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
      "obj-15",
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
      "obj-20",
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
      "obj-20",
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
      "obj-10",
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
      "obj-14",
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
      "obj-21",
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
      "obj-20",
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
      "obj-20",
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
      "obj-15",
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
      "obj-22",
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
      "obj-24",
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
      "obj-25",
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
      "obj-26",
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
      "obj-31",
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
      "obj-31",
      1
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
      "obj-10",
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
      "obj-25",
      0
     ],
     "destination": [
      "obj-32",
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
      "obj-6",
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
      "obj-33",
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
      "obj-33",
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
      1
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
      "obj-35",
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
      "obj-36",
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
      "obj-37",
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
      "obj-43",
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
      "obj-44",
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
      "obj-43",
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
      "obj-44",
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
      "obj-10",
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
      "obj-11",
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
      "obj-6",
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
      "obj-46",
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
      "obj-46",
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
      "obj-50",
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
      "obj-55",
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
      "obj-55",
      1
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
      "obj-10",
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
      "obj-11",
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
      "obj-56",
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
      "obj-56",
      1
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
      "obj-6",
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
      "obj-50",
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
      "obj-61",
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
      "obj-59",
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
      "obj-62",
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
      "obj-60",
      0
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
      "obj-64",
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
      "obj-64",
      1
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
      "obj-10",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-65",
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
      "obj-66",
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
      "obj-67",
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
      "obj-60",
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
      "obj-68",
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
      "obj-69",
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
      "obj-60",
      0
     ],
     "destination": [
      "obj-70",
      1
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
      "obj-11",
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
      "obj-72",
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
      "obj-74",
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
      "obj-75",
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
      "obj-74",
      1
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
      "obj-75",
      1
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
      "obj-76",
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
      "obj-77",
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
      "obj-78",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-77",
      0
     ],
     "destination": [
      "obj-78",
      1
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
      "obj-80",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-77",
      0
     ],
     "destination": [
      "obj-81",
      0
     ]
    }
   }
  ]
 }
}