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
     "text": "BASS SEQ",
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
     "size": 32,
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
     "maximum": 32,
     "id": "obj-6"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "8",
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
     "text": "16",
     "patching_rect": [
      356,
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
     "text": "32",
     "patching_rect": [
      384,
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
     "text": "ottava",
     "patching_rect": [
      580,
      2,
      46,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-12"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      626,
      2,
      36,
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
     "maximum": 6,
     "id": "obj-13"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "trasp",
     "patching_rect": [
      668,
      2,
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
     "maxclass": "number",
     "patching_rect": [
      706,
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
     "minimum": -24,
     "maximum": 24,
     "id": "obj-15"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "gate %",
     "patching_rect": [
      752,
      2,
      46,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-16"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      798,
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
     "minimum": 5,
     "maximum": 100,
     "id": "obj-17"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "swing: dalla batteria",
     "patching_rect": [
      846,
      2,
      140,
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
     "text": "1",
     "patching_rect": [
      62,
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
     "text": "5",
     "patching_rect": [
      166,
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
     "text": "9",
     "patching_rect": [
      270,
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
     "id": "obj-22"
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
     "id": "obj-23"
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
     "id": "obj-24"
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
     "id": "obj-25"
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
     "id": "obj-26"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "B",
     "patching_rect": [
      5,
      49,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-27"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "A#",
     "patching_rect": [
      5,
      69,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-28"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "A",
     "patching_rect": [
      5,
      89,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-29"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "G#",
     "patching_rect": [
      5,
      109,
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
     "maxclass": "comment",
     "text": "G",
     "patching_rect": [
      5,
      129,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-31"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "F#",
     "patching_rect": [
      5,
      149,
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
     "maxclass": "comment",
     "text": "F",
     "patching_rect": [
      5,
      169,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-33"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "E",
     "patching_rect": [
      5,
      189,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-34"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "D#",
     "patching_rect": [
      5,
      209,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-35"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "D",
     "patching_rect": [
      5,
      229,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-36"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "C#",
     "patching_rect": [
      5,
      249,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-37"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "C",
     "patching_rect": [
      5,
      269,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-38"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "ott +",
     "patching_rect": [
      5,
      289,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-39"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "ott -",
     "patching_rect": [
      5,
      309,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-40"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "acc",
     "patching_rect": [
      5,
      329,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-41"
    }
   },
   {
    "box": {
     "maxclass": "matrixctrl",
     "patching_rect": [
      60,
      48,
      832,
      300
     ],
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 0,
     "rows": 15,
     "columns": 32,
     "id": "obj-42"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "skip",
     "patching_rect": [
      5,
      353,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-43"
    }
   },
   {
    "box": {
     "maxclass": "matrixctrl",
     "patching_rect": [
      60,
      352,
      832,
      20
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
     "id": "obj-44"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "edit",
     "patching_rect": [
      5,
      377,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-45"
    }
   },
   {
    "box": {
     "maxclass": "matrixctrl",
     "patching_rect": [
      60,
      376,
      832,
      20
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
     "id": "obj-46"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "",
     "patching_rect": [
      5,
      420,
      150,
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
     "maxclass": "comment",
     "text": "vel",
     "patching_rect": [
      160,
      402,
      50,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-48"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      160,
      420,
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
     "id": "obj-49"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "durata (step)",
     "patching_rect": [
      204,
      402,
      54,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-50"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      204,
      420,
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
     "id": "obj-51"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "step",
     "patching_rect": [
      260,
      402,
      40,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-52"
    }
   },
   {
    "box": {
     "maxclass": "number",
     "patching_rect": [
      260,
      420,
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
     "id": "obj-53"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "copia",
     "patching_rect": [
      310,
      420,
      47,
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
     "text": "incolla",
     "patching_rect": [
      356,
      420,
      61,
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
     "text": "cancella",
     "patching_rect": [
      410,
      420,
      68,
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
     "text": "salva",
     "patching_rect": [
      478,
      420,
      47,
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
     "maxclass": "message",
     "text": "ricarica",
     "patching_rect": [
      522,
      420,
      68,
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
     "maxclass": "comment",
     "text": "genera:",
     "patching_rect": [
      590,
      402,
      50,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-59"
    }
   },
   {
    "box": {
     "maxclass": "umenu",
     "patching_rect": [
      590,
      420,
      50,
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
     "id": "obj-60"
    }
   },
   {
    "box": {
     "maxclass": "umenu",
     "patching_rect": [
      644,
      420,
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
      "minore",
      ",",
      "maggiore",
      ",",
      "dorica",
      ",",
      "frigia",
      ",",
      "penta min",
      ",",
      "blues",
      ",",
      "min armonica"
     ],
     "id": "obj-61"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "genera",
     "patching_rect": [
      738,
      420,
      54,
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
     "maxclass": "comment",
     "text": "pattern",
     "patching_rect": [
      5,
      456,
      55,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-63"
    }
   },
   {
    "box": {
     "maxclass": "matrixctrl",
     "patching_rect": [
      60,
      450,
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
     "id": "obj-64"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "1",
     "patching_rect": [
      70,
      480,
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
     "text": "2",
     "patching_rect": [
      106,
      480,
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
     "text": "3",
     "patching_rect": [
      142,
      480,
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
     "text": "4",
     "patching_rect": [
      178,
      480,
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
     "text": "5",
     "patching_rect": [
      214,
      480,
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
     "text": "6",
     "patching_rect": [
      250,
      480,
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
     "text": "7",
     "patching_rect": [
      286,
      480,
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
     "text": "8",
     "patching_rect": [
      322,
      480,
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
     "text": "9",
     "patching_rect": [
      358,
      480,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-73"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "10",
     "patching_rect": [
      394,
      480,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-74"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "11",
     "patching_rect": [
      430,
      480,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-75"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "12",
     "patching_rect": [
      466,
      480,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-76"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "13",
     "patching_rect": [
      502,
      480,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-77"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "14",
     "patching_rect": [
      538,
      480,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-78"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "15",
     "patching_rect": [
      574,
      480,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-79"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "16",
     "patching_rect": [
      610,
      480,
      24,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-80"
    }
   },
   {
    "box": {
     "maxclass": "comment",
     "text": "solo edit",
     "patching_rect": [
      646,
      456,
      60,
      20
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "id": "obj-81"
    }
   },
   {
    "box": {
     "maxclass": "toggle",
     "patching_rect": [
      706,
      458,
      18,
      18
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 0,
     "id": "obj-82"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "",
     "patching_rect": [
      730,
      456,
      190,
      22
     ],
     "numinlets": 2,
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
     "text": "js bseq.js",
     "patching_rect": [
      10,
      800,
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
     "id": "obj-84"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend len",
     "patching_rect": [
      10,
      750,
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
     "text": "prepend len",
     "patching_rect": [
      80,
      750,
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
     "text": "prepend dir",
     "patching_rect": [
      150,
      750,
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
     "text": "prepend baseoct",
     "patching_rect": [
      220,
      750,
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
     "text": "prepend transp",
     "patching_rect": [
      290,
      750,
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
     "maxclass": "newobj",
     "text": "prepend gate",
     "patching_rect": [
      360,
      750,
      66,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-90"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend only",
     "patching_rect": [
      430,
      750,
      66,
      22
     ],
     "numinlets": 1,
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
     "text": "prepend vel",
     "patching_rect": [
      500,
      750,
      66,
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
     "text": "prepend dur",
     "patching_rect": [
      570,
      750,
      66,
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
     "text": "prepend len",
     "patching_rect": [
      640,
      750,
      66,
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
     "text": "prepend len",
     "patching_rect": [
      640,
      750,
      66,
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
     "maxclass": "newobj",
     "text": "prepend len",
     "patching_rect": [
      640,
      750,
      66,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-96"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend grid",
     "patching_rect": [
      10,
      690,
      100,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-97"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend skipclick",
     "patching_rect": [
      110,
      690,
      100,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-98"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend pad",
     "patching_rect": [
      230,
      690,
      100,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-99"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend editclick",
     "patching_rect": [
      340,
      690,
      100,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-100"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "copy",
     "patching_rect": [
      460,
      690,
      40,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-101"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "paste",
     "patching_rect": [
      520,
      690,
      47,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-102"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "clear",
     "patching_rect": [
      580,
      690,
      47,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-103"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "save",
     "patching_rect": [
      640,
      690,
      40,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-104"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "load",
     "patching_rect": [
      700,
      690,
      40,
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
     "text": "pak i i",
     "patching_rect": [
      780,
      660,
      65,
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
     "text": "zl reg",
     "patching_rect": [
      860,
      690,
      58,
      22
     ],
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-107"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend genera",
     "patching_rect": [
      860,
      720,
      100,
      22
     ],
     "numinlets": 1,
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
     "text": "r clock.step",
     "patching_rect": [
      10,
      530,
      100,
      22
     ],
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-109"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend step",
     "patching_rect": [
      10,
      560,
      100,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-110"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r clock.tempo",
     "patching_rect": [
      130,
      530,
      107,
      22
     ],
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-111"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend tempo",
     "patching_rect": [
      130,
      560,
      107,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-112"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "r clock.running",
     "patching_rect": [
      250,
      530,
      121,
      22
     ],
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-113"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend run",
     "patching_rect": [
      250,
      560,
      93,
      22
     ],
     "numinlets": 1,
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
     "text": "r seq.swing",
     "patching_rect": [
      370,
      530,
      93,
      22
     ],
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-115"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend swing",
     "patching_rect": [
      370,
      560,
      107,
      22
     ],
     "numinlets": 1,
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
     "text": "r bassseq",
     "patching_rect": [
      490,
      530,
      79,
      22
     ],
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-117"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "s bass.note",
     "patching_rect": [
      10,
      850,
      93,
      22
     ],
     "numinlets": 1,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-118"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "gate",
     "patching_rect": [
      120,
      850,
      44,
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
     "text": "unpack i i f",
     "patching_rect": [
      120,
      880,
      90,
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
     "id": "obj-120"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "makenote 100 100",
     "patching_rect": [
      120,
      910,
      110,
      22
     ],
     "numinlets": 3,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "id": "obj-121"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "noteout 2",
     "patching_rect": [
      120,
      940,
      79,
      22
     ],
     "numinlets": 3,
     "numoutlets": 0,
     "outlettype": [],
     "id": "obj-122"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "prepend set",
     "patching_rect": [
      230,
      820,
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
     "text": "route len dir sel vel dur info",
     "patching_rect": [
      300,
      850,
      250,
      22
     ],
     "numinlets": 1,
     "numoutlets": 7,
     "outlettype": [
      "",
      "",
      "",
      "",
      "",
      "",
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
      370,
      880,
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
      440,
      880,
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
      510,
      880,
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
      580,
      880,
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
      650,
      880,
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
     "text": "prepend set",
     "patching_rect": [
      300,
      910,
      70,
      22
     ],
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-130"
    }
   },
   {
    "box": {
     "maxclass": "newobj",
     "text": "loadbang",
     "patching_rect": [
      600,
      530,
      72,
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
     "maxclass": "message",
     "text": "load",
     "patching_rect": [
      600,
      560,
      40,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-132"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "2",
     "patching_rect": [
      660,
      560,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-133"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0",
     "patching_rect": [
      700,
      560,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-134"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "60",
     "patching_rect": [
      740,
      560,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-135"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0",
     "patching_rect": [
      780,
      560,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-136"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "0",
     "patching_rect": [
      820,
      560,
      30,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-137"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "rows 15, columns 32",
     "patching_rect": [
      880,
      560,
      130,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-138"
    }
   },
   {
    "box": {
     "maxclass": "message",
     "text": "rows 1, columns 32",
     "patching_rect": [
      1020,
      560,
      130,
      22
     ],
     "numinlets": 2,
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
     "text": "rows 1, columns 32",
     "patching_rect": [
      1160,
      560,
      130,
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
     "text": "rows 1, columns 16",
     "patching_rect": [
      1300,
      560,
      130,
      22
     ],
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "id": "obj-141"
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
      "obj-84",
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
      "obj-84",
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
      "obj-84",
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
      "obj-84",
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
      "obj-84",
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
      "obj-84",
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
      "obj-84",
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
      "obj-84",
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
      "obj-84",
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
      "obj-84",
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
      "obj-9",
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
      "obj-84",
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
      "obj-84",
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
      "obj-84",
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
      "obj-84",
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
      "obj-84",
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
      "obj-101",
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
      "obj-84",
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
      "obj-84",
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
      "obj-103",
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
      "obj-84",
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
      "obj-84",
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
      "obj-105",
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
      "obj-84",
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
      "obj-106",
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
      "obj-106",
      1
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
      1
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
      "obj-84",
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
      "obj-84",
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
      "obj-84",
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
      "obj-84",
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
      "obj-84",
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
      "obj-118",
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
      "obj-119",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-84",
      1
     ],
     "destination": [
      "obj-119",
      1
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
      "obj-120",
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
      "obj-120",
      1
     ],
     "destination": [
      "obj-121",
      1
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
      "obj-121",
      2
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
      "obj-122",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-121",
      1
     ],
     "destination": [
      "obj-122",
      1
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-84",
      2
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
      "obj-84",
      4
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
      "obj-84",
      5
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
      "obj-84",
      7
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
      "obj-84",
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
      "obj-53",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-84",
      6
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
      1
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
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-124",
      2
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
      "obj-47",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-124",
      3
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
      "obj-49",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-124",
      4
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
      "obj-51",
      0
     ]
    }
   },
   {
    "patchline": {
     "source": [
      "obj-124",
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
      "obj-83",
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
      "obj-6",
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
      "obj-5",
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
      "obj-84",
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
      "obj-13",
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
      "obj-15",
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
      "obj-17",
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
      "obj-60",
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
      "obj-61",
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
      "obj-42",
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
      "obj-139",
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
      "obj-44",
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
      "obj-46",
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
      "obj-64",
      0
     ]
    }
   }
  ]
 }
}