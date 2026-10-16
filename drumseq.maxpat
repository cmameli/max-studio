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
     "text": "DRUM SEQ",
     "patching_rect": [
      5,
      2,
      80,
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
      90,
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
     "text": "MIDI -> modulare",
     "patching_rect": [
      110,
      2,
      110,
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
     "text": "len",
     "patching_rect": [
      230,
      2,
      30,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-4"
    }
   },
   {
    "box": {
     "maxclass": "dial",
     "patching_rect": [
      258,
      0,
      26,
      26
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "size": 65,
     "id": "obj-5"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      288,
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
     "minimum": 1,
     "maximum": 64,
     "id": "obj-6"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "16",
     "patching_rect": [
      332,
      2,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-7"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "32",
     "patching_rect": [
      360,
      2,
      30,
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
     "text": "64",
     "patching_rect": [
      388,
      2,
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
     "maxclass": "comment",
     "text": "direzione",
     "patching_rect": [
      420,
      2,
      60,
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
      480,
      2,
      90,
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
      "avanti",
      ",",
      "indietro",
      ",",
      "pendolo",
      ",",
      "casuale",
      ",",
      "browniano"
     ],
     "id": "obj-11"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "swing %",
     "patching_rect": [
      578,
      2,
      60,
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
      634,
      2,
      46,
      22
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 0,
     "minimum": 50.0,
     "maximum": 75.0,
     "id": "obj-13"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "1",
     "patching_rect": [
      62,
      28,
      40,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-14"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "5",
     "patching_rect": [
      166,
      28,
      40,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-15"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "9",
     "patching_rect": [
      270,
      28,
      40,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-16"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "13",
     "patching_rect": [
      374,
      28,
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
     "maxclass": "comment",
     "text": "17",
     "patching_rect": [
      478,
      28,
      40,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-18"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "21",
     "patching_rect": [
      582,
      28,
      40,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-19"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "25",
     "patching_rect": [
      686,
      28,
      40,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-20"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "29",
     "patching_rect": [
      790,
      28,
      40,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-21"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "kick",
     "patching_rect": [
      2,
      49,
      54,
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
     "text": "snare",
     "patching_rect": [
      2,
      73,
      54,
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
     "text": "hat ch",
     "patching_rect": [
      2,
      97,
      54,
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
     "text": "hat op",
     "patching_rect": [
      2,
      121,
      54,
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
     "text": "low tom",
     "patching_rect": [
      2,
      145,
      54,
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
     "text": "hi tom",
     "patching_rect": [
      2,
      169,
      54,
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
     "text": "808",
     "patching_rect": [
      2,
      193,
      54,
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
     "maxclass": "matrixctrl",
     "patching_rect": [
      60,
      48,
      832,
      168
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 0,
     "rows": 7,
     "columns": 32,
     "id": "obj-29"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "skip",
     "patching_rect": [
      5,
      222,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-30"
    }
   },
   {
    "box": {
     "maxclass": "matrixctrl",
     "patching_rect": [
      60,
      220,
      832,
      24
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 0,
     "rows": 1,
     "columns": 32,
     "id": "obj-31"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "edit",
     "patching_rect": [
      5,
      250,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-32"
    }
   },
   {
    "box": {
     "maxclass": "matrixctrl",
     "patching_rect": [
      60,
      248,
      832,
      24
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 0,
     "rows": 1,
     "columns": 32,
     "id": "obj-33"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "",
     "patching_rect": [
      5,
      296,
      120,
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
     "maxclass": "comment",
     "text": "vel",
     "patching_rect": [
      130,
      278,
      50,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-35"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      130,
      296,
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
     "maximum": 127,
     "id": "obj-36"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "ratchet",
     "patching_rect": [
      174,
      278,
      54,
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
      174,
      296,
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
     "minimum": 1,
     "maximum": 8,
     "id": "obj-38"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "prob %",
     "patching_rect": [
      222,
      278,
      54,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-39"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      222,
      296,
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
     "minimum": 0,
     "maximum": 100,
     "id": "obj-40"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "modo",
     "patching_rect": [
      270,
      278,
      60,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-41"
    }
   },
   {
    "box": {
     "maxclass": "umenu",
     "patching_rect": [
      270,
      296,
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
      "singolo",
      ",",
      "multi"
     ],
     "id": "obj-42"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "ripeti col.",
     "patching_rect": [
      344,
      278,
      62,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-43"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      344,
      296,
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
     "minimum": 1,
     "maximum": 8,
     "id": "obj-44"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "copia",
     "patching_rect": [
      410,
      296,
      47,
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
     "text": "incolla",
     "patching_rect": [
      456,
      296,
      61,
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
     "maxclass": "message",
     "text": "cancella",
     "patching_rect": [
      510,
      296,
      68,
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
     "text": "salva",
     "patching_rect": [
      578,
      296,
      47,
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
     "text": "ricarica",
     "patching_rect": [
      622,
      296,
      68,
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
     "maxclass": "comment",
     "text": "pagina",
     "patching_rect": [
      700,
      278,
      60,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-50"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "1-32",
     "patching_rect": [
      700,
      296,
      40,
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
     "text": "33-64",
     "patching_rect": [
      744,
      296,
      48,
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
     "maxclass": "comment",
     "text": "step",
     "patching_rect": [
      806,
      278,
      40,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-53"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      806,
      296,
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
     "id": "obj-54"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "pattern",
     "patching_rect": [
      5,
      332,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-55"
    }
   },
   {
    "box": {
     "maxclass": "matrixctrl",
     "patching_rect": [
      60,
      326,
      576,
      30
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 0,
     "rows": 1,
     "columns": 16,
     "id": "obj-56"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "1",
     "patching_rect": [
      70,
      356,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-57"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "2",
     "patching_rect": [
      106,
      356,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-58"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "3",
     "patching_rect": [
      142,
      356,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-59"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "4",
     "patching_rect": [
      178,
      356,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-60"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "5",
     "patching_rect": [
      214,
      356,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-61"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "6",
     "patching_rect": [
      250,
      356,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-62"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "7",
     "patching_rect": [
      286,
      356,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-63"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "8",
     "patching_rect": [
      322,
      356,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-64"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "9",
     "patching_rect": [
      358,
      356,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-65"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "10",
     "patching_rect": [
      394,
      356,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-66"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "11",
     "patching_rect": [
      430,
      356,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-67"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "12",
     "patching_rect": [
      466,
      356,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-68"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "13",
     "patching_rect": [
      502,
      356,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-69"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "14",
     "patching_rect": [
      538,
      356,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-70"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "15",
     "patching_rect": [
      574,
      356,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-71"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "16",
     "patching_rect": [
      610,
      356,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-72"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "solo edit",
     "patching_rect": [
      646,
      332,
      60,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-73"
    }
   },
   {
    "box": {
     "maxclass": "toggle",
     "patching_rect": [
      706,
      334,
      18,
      18
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "id": "obj-74"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "",
     "patching_rect": [
      730,
      332,
      190,
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
     "text": "js dseq.js",
     "patching_rect": [
      10,
      676,
      120,
      22
     ],
     "numinlets": 1,
     "numoutlets": 8,
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
     ],
     "id": "obj-76"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend len",
     "patching_rect": [
      10,
      626,
      66,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-77"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend len",
     "patching_rect": [
      80,
      626,
      66,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-78"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend dir",
     "patching_rect": [
      150,
      626,
      66,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-79"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend swing",
     "patching_rect": [
      220,
      626,
      66,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-80"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend only",
     "patching_rect": [
      360,
      626,
      66,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-81"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend vel",
     "patching_rect": [
      430,
      626,
      66,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-82"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend rat",
     "patching_rect": [
      500,
      626,
      66,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-83"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend prob",
     "patching_rect": [
      570,
      626,
      66,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-84"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend mode",
     "patching_rect": [
      640,
      626,
      66,
      22
     ],
     "numinlets": 1,
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
     "text": "prepend rep",
     "patching_rect": [
      710,
      626,
      66,
      22
     ],
     "numinlets": 1,
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
     "text": "prepend len",
     "patching_rect": [
      780,
      626,
      66,
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
     "text": "prepend len",
     "patching_rect": [
      780,
      626,
      66,
      22
     ],
     "numinlets": 1,
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
     "text": "prepend len",
     "patching_rect": [
      780,
      626,
      66,
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
     "text": "setpage 0",
     "patching_rect": [
      860,
      626,
      75,
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
     "text": "setpage 1",
     "patching_rect": [
      930,
      626,
      75,
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
     "maxclass": "newobj",
     "text": "prepend grid",
     "patching_rect": [
      10,
      566,
      100,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-92"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend skipclick",
     "patching_rect": [
      110,
      566,
      100,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-93"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend pad",
     "patching_rect": [
      230,
      566,
      100,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-94"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend editclick",
     "patching_rect": [
      340,
      566,
      100,
      22
     ],
     "numinlets": 1,
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
     "text": "copy",
     "patching_rect": [
      340,
      596,
      40,
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
     "maxclass": "message",
     "text": "paste",
     "patching_rect": [
      400,
      596,
      47,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-97"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "clear",
     "patching_rect": [
      460,
      596,
      47,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-98"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "save",
     "patching_rect": [
      520,
      596,
      40,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-99"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "load",
     "patching_rect": [
      580,
      596,
      40,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-100"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r clock.step",
     "patching_rect": [
      10,
      406,
      100,
      22
     ],
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-101"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend step",
     "patching_rect": [
      10,
      436,
      100,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-102"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r clock.tempo",
     "patching_rect": [
      130,
      406,
      107,
      22
     ],
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-103"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend tempo",
     "patching_rect": [
      130,
      436,
      107,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-104"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r clock.running",
     "patching_rect": [
      250,
      406,
      121,
      22
     ],
     "numinlets": 0,
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
     "text": "prepend run",
     "patching_rect": [
      250,
      436,
      93,
      22
     ],
     "numinlets": 1,
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
     "text": "r drumseq",
     "patching_rect": [
      400,
      406,
      79,
      22
     ],
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-107"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "voice 0",
     "patching_rect": [
      10,
      656,
      61,
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
     "maxclass": "message",
     "text": "voice 1",
     "patching_rect": [
      80,
      656,
      61,
      22
     ],
     "numinlets": 2,
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
     "text": "voice 2",
     "patching_rect": [
      150,
      656,
      61,
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
     "text": "voice 3",
     "patching_rect": [
      220,
      656,
      61,
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
     "text": "voice 4",
     "patching_rect": [
      290,
      656,
      61,
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
     "text": "voice 5",
     "patching_rect": [
      360,
      656,
      61,
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
     "text": "voice 6",
     "patching_rect": [
      430,
      656,
      61,
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
     "maxclass": "newobj",
     "text": "s drums.note",
     "patching_rect": [
      10,
      726,
      100,
      22
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-115"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "gate",
     "patching_rect": [
      120,
      726,
      44,
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
     "maxclass": "newobj",
     "text": "makenote 100 60",
     "patching_rect": [
      120,
      756,
      121,
      22
     ],
     "numinlets": 3,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-117"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "noteout",
     "patching_rect": [
      120,
      786,
      65,
      22
     ],
     "numinlets": 3,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-118"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "patching_rect": [
      230,
      696,
      70,
      22
     ],
     "numinlets": 1,
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
     "text": "route len dir sel vel rat prob mode rep info lab",
     "patching_rect": [
      300,
      726,
      360,
      22
     ],
     "numinlets": 1,
     "numoutlets": 11,
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
     ],
     "id": "obj-120"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "patching_rect": [
      370,
      756,
      70,
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
     "text": "prepend set",
     "patching_rect": [
      440,
      756,
      70,
      22
     ],
     "numinlets": 1,
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
     "text": "prepend set",
     "patching_rect": [
      510,
      756,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-123"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "patching_rect": [
      580,
      756,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-124"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "patching_rect": [
      650,
      756,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-125"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "patching_rect": [
      720,
      756,
      70,
      22
     ],
     "numinlets": 1,
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
     "text": "prepend set",
     "patching_rect": [
      790,
      756,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-127"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "patching_rect": [
      860,
      756,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-128"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "patching_rect": [
      300,
      786,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-129"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "route 0 1 2 3 4 5 6 7",
     "patching_rect": [
      960,
      756,
      160,
      22
     ],
     "numinlets": 1,
     "numoutlets": 9,
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      ""
     ],
     "id": "obj-130"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "patching_rect": [
      960,
      786,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-131"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "patching_rect": [
      1030,
      786,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-132"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "patching_rect": [
      1100,
      786,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-133"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "patching_rect": [
      1170,
      786,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-134"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "patching_rect": [
      1240,
      786,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-135"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "patching_rect": [
      1310,
      786,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-136"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "patching_rect": [
      1380,
      786,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-137"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "patching_rect": [
      1450,
      786,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-138"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "loadbang",
     "patching_rect": [
      600,
      406,
      72,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-139"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "load",
     "patching_rect": [
      600,
      436,
      40,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-140"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "50",
     "patching_rect": [
      660,
      436,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-141"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "rows 7, columns 32",
     "patching_rect": [
      720,
      436,
      130,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-142"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "rows 1, columns 32",
     "patching_rect": [
      860,
      436,
      130,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-143"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "rows 1, columns 32",
     "patching_rect": [
      1000,
      436,
      130,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-144"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "rows 1, columns 16",
     "patching_rect": [
      1140,
      436,
      130,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-145"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "source": [
      "obj-5",
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
      "obj-77",
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
      "obj-6",
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
      "obj-78",
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
      "obj-11",
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
      "obj-79",
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
      "obj-13",
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
      "obj-80",
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
      "obj-74",
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
      "obj-81",
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
      "obj-36",
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
      "obj-82",
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
      "obj-38",
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
      "obj-83",
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
      "obj-40",
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
      "obj-84",
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
      "obj-42",
      0
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
      "obj-85",
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
      "obj-44",
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
      "obj-86",
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
      "obj-7",
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
      "obj-76",
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
      "obj-88",
      0
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
      "obj-76",
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
      "obj-76",
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
      "obj-76",
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
      "obj-76",
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
      "obj-76",
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
      "obj-76",
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
      "obj-76",
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
      "obj-76",
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
      "obj-76",
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
      "obj-97",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-97",
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
      "obj-47",
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
      "obj-98",
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
      "obj-48",
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
      "obj-99",
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
      "obj-49",
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
      "obj-100",
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
      "obj-101",
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
      "obj-102",
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
      "obj-103",
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
      "obj-104",
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
      "obj-105",
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
      "obj-106",
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
      "obj-107",
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
      "obj-22",
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
      "obj-108",
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
      "obj-23",
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
      "obj-76",
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
      "obj-76",
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
      "obj-76",
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
      "obj-76",
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
      "obj-76",
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
      "obj-115",
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
      "obj-116",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-76",
      1
     ],
     "destination": [
      "obj-116",
      1
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
      "obj-117",
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
      "obj-118",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-117",
      1
     ],
     "destination": [
      "obj-118",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-76",
      2
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
      "obj-76",
      4
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
      "obj-76",
      5
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
      "obj-76",
      7
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
      "obj-76",
      3
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
      "obj-54",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-76",
      6
     ],
     "destination": [
      "obj-120",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-120",
      1
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
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-120",
      2
     ],
     "destination": [
      "obj-122",
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
      "obj-34",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-120",
      3
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
      "obj-123",
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
      "obj-120",
      4
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
      "obj-124",
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
      "obj-120",
      5
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
      "obj-125",
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
      "obj-120",
      6
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
      "obj-126",
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
      "obj-120",
      7
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
      "obj-44",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-120",
      8
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
      "obj-128",
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
      "obj-120",
      0
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
      "obj-6",
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
      "obj-5",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-120",
      9
     ],
     "destination": [
      "obj-130",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-130",
      0
     ],
     "destination": [
      "obj-131",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-131",
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
      "obj-130",
      1
     ],
     "destination": [
      "obj-132",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-132",
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
      "obj-130",
      2
     ],
     "destination": [
      "obj-133",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-133",
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
      "obj-130",
      3
     ],
     "destination": [
      "obj-134",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-134",
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
      "obj-130",
      4
     ],
     "destination": [
      "obj-135",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-135",
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
      "obj-130",
      5
     ],
     "destination": [
      "obj-136",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-136",
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
      "obj-130",
      6
     ],
     "destination": [
      "obj-137",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-137",
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
      "obj-130",
      7
     ],
     "destination": [
      "obj-138",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-138",
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
      "obj-139",
      0
     ],
     "destination": [
      "obj-140",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-140",
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
      "obj-139",
      0
     ],
     "destination": [
      "obj-141",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-141",
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
      "obj-139",
      0
     ],
     "destination": [
      "obj-142",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-142",
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
      "obj-139",
      0
     ],
     "destination": [
      "obj-143",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-143",
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
      "obj-139",
      0
     ],
     "destination": [
      "obj-144",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-144",
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
      "obj-139",
      0
     ],
     "destination": [
      "obj-145",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-145",
      0
     ],
     "destination": [
      "obj-56",
      0
     ]
    }
   }
  ]
 }
}