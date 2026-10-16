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
     "text": "MOD -> cutoff basso",
     "patching_rect": [
      5,
      2,
      160,
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
     "text": "ENV",
     "patching_rect": [
      5,
      24,
      33,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "fontface": 1,
     "id": "obj-2"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "att",
     "patching_rect": [
      40,
      22,
      58,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-3"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      40,
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
     "maximum": 2000.0,
     "id": "obj-4"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "dec",
     "patching_rect": [
      93,
      22,
      58,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-5"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      93,
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
     "minimum": 1.0,
     "maximum": 3000.0,
     "id": "obj-6"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "sus",
     "patching_rect": [
      146,
      22,
      58,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-7"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      146,
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
     "maximum": 1.0,
     "id": "obj-8"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "rel",
     "patching_rect": [
      199,
      22,
      58,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-9"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      199,
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
     "minimum": 1.0,
     "maximum": 3000.0,
     "id": "obj-10"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "gate",
     "patching_rect": [
      252,
      22,
      58,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-11"
    }
   },
   {
    "box": {
     "maxclass": "flonum",
     "patching_rect": [
      252,
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
     "minimum": 5.0,
     "maximum": 2000.0,
     "id": "obj-12"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "amount",
     "patching_rect": [
      305,
      22,
      66,
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
      305,
      40,
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
     "minimum": -8000.0,
     "maximum": 8000.0,
     "id": "obj-14"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "LFO",
     "patching_rect": [
      5,
      70,
      33,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "fontface": 1,
     "id": "obj-15"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "rate Hz",
     "patching_rect": [
      40,
      68,
      62,
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
      40,
      86,
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
     "minimum": 0.01,
     "maximum": 40.0,
     "id": "obj-17"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "depth",
     "patching_rect": [
      97,
      68,
      66,
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
      97,
      86,
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
     "minimum": 0.0,
     "maximum": 8000.0,
     "id": "obj-19"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "forma",
     "patching_rect": [
      158,
      68,
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
     "maxclass": "umenu",
     "patching_rect": [
      158,
      86,
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
      "sine",
      ",",
      "tri",
      ",",
      "saw",
      ",",
      "square"
     ],
     "id": "obj-21"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "loadbang",
     "patching_rect": [
      420,
      220,
      72,
      22
     ],
     "numinlets": 1,
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
     "text": "5",
     "patching_rect": [
      420,
      250,
      30,
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
     "text": "200",
     "patching_rect": [
      460,
      250,
      33,
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
     "text": "0.2",
     "patching_rect": [
      500,
      250,
      33,
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
     "text": "300",
     "patching_rect": [
      540,
      250,
      33,
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
     "text": "150",
     "patching_rect": [
      580,
      250,
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
     "text": "2500",
     "patching_rect": [
      620,
      250,
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
     "maxclass": "message",
     "text": "2",
     "patching_rect": [
      660,
      250,
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
     "text": "0",
     "patching_rect": [
      700,
      250,
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
     "text": "0",
     "patching_rect": [
      740,
      250,
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
     "id": "obj-32"
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
     "id": "obj-33"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "/ 127.",
     "patching_rect": [
      10,
      280,
      58,
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
     "text": "t b f",
     "patching_rect": [
      10,
      310,
      51,
      22
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-35"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "del 150",
     "patching_rect": [
      120,
      340,
      65,
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
     "text": "0",
     "patching_rect": [
      120,
      370,
      30,
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
     "text": "adsr~ 5 200 0.2 300",
     "patching_rect": [
      10,
      400,
      150,
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
     "id": "obj-38"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~ 2500",
     "patching_rect": [
      10,
      440,
      65,
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
     "maxclass": "comment",
     "text": "sync",
     "patching_rect": [
      244,
      68,
      40,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-40"
    }
   },
   {
    "box": {
     "maxclass": "toggle",
     "patching_rect": [
      246,
      88,
      20,
      20
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
     "maxclass": "comment",
     "text": "div",
     "patching_rect": [
      272,
      68,
      33,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-42"
    }
   },
   {
    "box": {
     "maxclass": "umenu",
     "patching_rect": [
      272,
      86,
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
      "4 bars",
      ",",
      "2 bars",
      ",",
      "1 bar",
      ",",
      "1/2",
      ",",
      "1/4",
      ",",
      "1/8",
      ",",
      "1/16",
      ",",
      "1/4T",
      ",",
      "1/8T",
      ",",
      "1/16T"
     ],
     "id": "obj-43"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0",
     "patching_rect": [
      780,
      250,
      30,
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
     "maxclass": "message",
     "text": "4",
     "patching_rect": [
      820,
      250,
      30,
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
     "maxclass": "message",
     "text": "16 8 4 2 1 0.5 0.25 0.666667 0.333333 0.166667",
     "patching_rect": [
      900,
      250,
      330,
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
     "text": "zl lookup",
     "patching_rect": [
      500,
      330,
      79,
      22
     ],
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-47"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r clock.tempo",
     "patching_rect": [
      620,
      330,
      107,
      22
     ],
     "numinlets": 0,
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
     "text": "pak 120. 1.",
     "patching_rect": [
      560,
      370,
      93,
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
     "text": "expr $f1/(60.*$f2)",
     "patching_rect": [
      560,
      400,
      140,
      22
     ],
     "numinlets": 1,
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
     "text": "t b i",
     "patching_rect": [
      440,
      330,
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
     "text": "+ 1",
     "patching_rect": [
      440,
      360,
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
     "maxclass": "newobj",
     "text": "switch 2 1",
     "patching_rect": [
      440,
      440,
      86,
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
     "text": "phasor~",
     "patching_rect": [
      220,
      400,
      65,
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
     "text": "r clock.running",
     "patching_rect": [
      700,
      440,
      121,
      22
     ],
     "numinlets": 0,
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
     "text": "sel 1",
     "patching_rect": [
      700,
      470,
      51,
      22
     ],
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-56"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r clock.step",
     "patching_rect": [
      500,
      440,
      100,
      22
     ],
     "numinlets": 0,
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
     "text": "gate",
     "patching_rect": [
      500,
      470,
      44,
      22
     ],
     "numinlets": 2,
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
     "text": "expr (($i1 % int($f2*4.+0.001))==0) * (abs($f2*4.-int($f2*4.+0.5))<0.01)",
     "patching_rect": [
      500,
      500,
      420,
      22
     ],
     "numinlets": 1,
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
     "text": "sel 1",
     "patching_rect": [
      500,
      530,
      51,
      22
     ],
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-60"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0",
     "patching_rect": [
      620,
      560,
      30,
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
     "text": "cycle~ 0",
     "patching_rect": [
      220,
      440,
      72,
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
     "text": "*~ 2",
     "patching_rect": [
      300,
      440,
      44,
      22
     ],
     "numinlets": 2,
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
     "text": "-~ 1",
     "patching_rect": [
      300,
      470,
      44,
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
     "text": "abs~",
     "patching_rect": [
      360,
      500,
      44,
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
     "text": "*~ 2",
     "patching_rect": [
      360,
      530,
      44,
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
     "text": "-~ 1",
     "patching_rect": [
      360,
      560,
      44,
      22
     ],
     "numinlets": 2,
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
     "text": "<~ 0.5",
     "patching_rect": [
      420,
      440,
      58,
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
     "text": "*~ 2",
     "patching_rect": [
      420,
      470,
      44,
      22
     ],
     "numinlets": 2,
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
     "text": "-~ 1",
     "patching_rect": [
      420,
      500,
      44,
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
     "maxclass": "newobj",
     "text": "+ 1",
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
     "id": "obj-71"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "selector~ 4 1",
     "patching_rect": [
      220,
      600,
      120,
      22
     ],
     "numinlets": 5,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-72"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "*~ 0",
     "patching_rect": [
      220,
      630,
      44,
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
     "text": "*~ 1",
     "patching_rect": [
      10,
      660,
      44,
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
     "text": "send~ mod.bass",
     "patching_rect": [
      10,
      690,
      114,
      22
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-75"
    }
   }
  ],
  "lines": [
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
      "obj-23",
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
      "obj-22",
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
      "obj-24",
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
      "obj-8",
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
      "obj-26",
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
      "obj-10",
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
      "obj-12",
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
      "obj-17",
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
      "obj-22",
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
      "obj-21",
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
      1
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
      "obj-12",
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
      "obj-37",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-35",
      1
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
      "obj-38",
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
      "obj-38",
      1
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
      "obj-38",
      2
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
      "obj-38",
      3
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
      "obj-38",
      4
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
      "obj-14",
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
      "obj-22",
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
      "obj-41",
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
      "obj-45",
      0
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
      "obj-43",
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
      "obj-46",
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
      "obj-47",
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
      "obj-49",
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
      "obj-49",
      1
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
      "obj-50",
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
      "obj-51",
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
      "obj-17",
      0
     ],
     "destination": [
      "obj-53",
      1
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
      "obj-53",
      2
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
      "obj-17",
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
      "obj-49",
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
      "obj-41",
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
      "obj-57",
      0
     ],
     "destination": [
      "obj-58",
      1
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
      "obj-59",
      1
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
      "obj-56",
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
      "obj-61",
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
      "obj-62",
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
      "obj-63",
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
      "obj-64",
      0
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
      "obj-54",
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
      "obj-70",
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
      "obj-72",
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
      "obj-72",
      1
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
      "obj-72",
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
      "obj-72",
      3
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
      "obj-72",
      4
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
      "obj-73",
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
      "obj-73",
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
      "obj-74",
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
      "obj-75",
      0
     ]
    }
   }
  ]
 }
}