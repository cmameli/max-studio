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
   30,
   30,
   1250,
   1040
  ],
  "boxes": [
   {
    "box": {
     "maxclass": "comment",
     "text": "STUDIO - attiva l'audio nel mixer, poi premi play nel clock",
     "patching_rect": [
      10,
      8,
      420,
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
     "maxclass": "bpatcher",
     "name": "clock.maxpat",
     "patching_rect": [
      10,
      36,
      260,
      90
     ],
     "numinlets": 0,
     "numoutlets": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "id": "obj-2"
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "sequencer.maxpat",
     "patching_rect": [
      280,
      36,
      650,
      100
     ],
     "numinlets": 0,
     "numoutlets": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "id": "obj-3"
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "drumseq.maxpat",
     "patching_rect": [
      10,
      146,
      930,
      400
     ],
     "numinlets": 0,
     "numoutlets": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "id": "obj-4"
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "delay.maxpat",
     "patching_rect": [
      950,
      146,
      280,
      105
     ],
     "numinlets": 0,
     "numoutlets": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "id": "obj-5"
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "reverb.maxpat",
     "patching_rect": [
      950,
      261,
      280,
      105
     ],
     "numinlets": 0,
     "numoutlets": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "id": "obj-6"
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "drums.maxpat",
     "patching_rect": [
      10,
      556,
      420,
      95
     ],
     "numinlets": 0,
     "numoutlets": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "id": "obj-7"
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "bass.maxpat",
     "patching_rect": [
      440,
      556,
      270,
      105
     ],
     "numinlets": 0,
     "numoutlets": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "id": "obj-8"
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "mod.maxpat",
     "patching_rect": [
      720,
      556,
      370,
      120
     ],
     "numinlets": 0,
     "numoutlets": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "id": "obj-9"
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "arp.maxpat",
     "patching_rect": [
      10,
      686,
      430,
      140
     ],
     "numinlets": 0,
     "numoutlets": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "id": "obj-10"
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "lead.maxpat",
     "patching_rect": [
      450,
      686,
      320,
      110
     ],
     "numinlets": 0,
     "numoutlets": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "id": "obj-11"
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "sampler.maxpat",
     "patching_rect": [
      10,
      836,
      470,
      145
     ],
     "numinlets": 0,
     "numoutlets": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "id": "obj-12"
    }
   },
   {
    "box": {
     "maxclass": "bpatcher",
     "name": "mixer.maxpat",
     "patching_rect": [
      490,
      836,
      440,
      190
     ],
     "numinlets": 0,
     "numoutlets": 0,
     "offset": [
      0.0,
      0.0
     ],
     "viewvisibility": 1,
     "bgmode": 0,
     "border": 1,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "lockeddragscroll": 0,
     "id": "obj-13"
    }
   }
  ],
  "lines": []
 }
}