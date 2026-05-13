{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 8,
      "minor": 5,
      "revision": 4,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      0.0,
      0.0,
      1600.0,
      900.0
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [
      15.0,
      15.0
    ],
    "gridsnaponopen": 1,
    "objectsnaponopen": 1,
    "statusbarvisible": 2,
    "toolbarvisible": 1,
    "boxes": [
      {
        "box": {
          "id": "obj-1",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            10.0,
            300.0,
            22.0
          ],
          "text": "=== MODULE 1: CLOCK ENGINE ===",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            20.0,
            40.0,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            15.0,
            195.0,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            20.0,
            75.0,
            74.0,
            22.0
          ],
          "text": "metro 500",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "int",
            "bang"
          ],
          "patching_rect": [
            20.0,
            110.0,
            74.0,
            22.0
          ],
          "text": "counter 0 15",
          "presentation": 0
        }
      },
      {
        "box": {
          "id": "obj-bpm",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            110.0,
            40.0,
            50.0,
            22.0
          ],
          "minimum": 40,
          "maximum": 240,
          "presentation": 1,
          "presentation_rect": [
            55.0,
            195.0,
            50.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-bpmconv",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            110.0,
            75.0,
            120.0,
            22.0
          ],
          "text": "expr 60000/$f1"
        }
      },
      {
        "box": {
          "id": "obj-bpmlabel",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            110.0,
            10.0,
            60.0,
            22.0
          ],
          "text": "BPM",
          "presentation": 1,
          "presentation_rect": [
            55.0,
            180.0,
            40.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-onofflabel",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            10.0,
            60.0,
            22.0
          ],
          "text": "ON/OFF",
          "presentation": 1,
          "presentation_rect": [
            10.0,
            180.0,
            50.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            145.0,
            400.0,
            22.0
          ],
          "text": "=== MODULE 2: DRUM SEQUENCER (4 tracks x 8 steps) ==="
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            20.0,
            175.0,
            100.0,
            22.0
          ],
          "text": "getcolumn $1"
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "matrixctrl",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            20.0,
            205.0,
            640.0,
            80.0
          ],
          "columns": 16,
          "rows": 4,
          "presentation": 1,
          "presentation_rect": [
            10.0,
            50.0,
            640.0,
            100.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "int",
            "int",
            "int",
            "int"
          ],
          "patching_rect": [
            20.0,
            300.0,
            80.0,
            22.0
          ],
          "text": "unpack i i i i"
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "int"
          ],
          "patching_rect": [
            20.0,
            335.0,
            40.0,
            22.0
          ],
          "text": "sel 1"
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "int"
          ],
          "patching_rect": [
            80.0,
            335.0,
            40.0,
            22.0
          ],
          "text": "sel 1"
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "int"
          ],
          "patching_rect": [
            140.0,
            335.0,
            40.0,
            22.0
          ],
          "text": "sel 1"
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "bang",
            "int"
          ],
          "patching_rect": [
            200.0,
            335.0,
            40.0,
            22.0
          ],
          "text": "sel 1"
        }
      },
      {
        "box": {
          "id": "obj-rowlabel",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            35.0,
            80.0,
            18.0
          ],
          "text": "KICK",
          "presentation": 1,
          "presentation_rect": [
            435.0,
            55.0,
            50.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-rowlabel2",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            35.0,
            80.0,
            18.0
          ],
          "text": "SNARE",
          "presentation": 1,
          "presentation_rect": [
            435.0,
            80.0,
            50.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-rowlabel3",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            35.0,
            80.0,
            18.0
          ],
          "text": "HI-HAT",
          "presentation": 1,
          "presentation_rect": [
            435.0,
            105.0,
            50.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-rowlabel4",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            35.0,
            80.0,
            18.0
          ],
          "text": "SAMPLE",
          "presentation": 1,
          "presentation_rect": [
            435.0,
            130.0,
            50.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            370.0,
            400.0,
            22.0
          ],
          "text": "=== MODULE 3: PERCUSSION SYNTHESIS ==="
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            20.0,
            400.0,
            60.0,
            22.0
          ],
          "text": "cycle~ 50"
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            20.0,
            430.0,
            60.0,
            22.0
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            20.0,
            460.0,
            60.0,
            22.0
          ],
          "text": "curve~"
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "function",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "",
            "list",
            "bang",
            ""
          ],
          "patching_rect": [
            20.0,
            490.0,
            100.0,
            60.0
          ],
          "mode": 1
        }
      },
      {
        "box": {
          "id": "obj-kicklabel",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            555.0,
            60.0,
            22.0
          ],
          "text": "KICK"
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            140.0,
            400.0,
            50.0,
            22.0
          ],
          "text": "noise~"
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "newobj",
          "numinlets": 5,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            140.0,
            430.0,
            60.0,
            22.0
          ],
          "text": "biquad~"
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            140.0,
            460.0,
            50.0,
            22.0
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            140.0,
            490.0,
            60.0,
            22.0
          ],
          "text": "curve~"
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "function",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "",
            "list",
            "bang",
            ""
          ],
          "patching_rect": [
            140.0,
            520.0,
            100.0,
            60.0
          ],
          "mode": 1
        }
      },
      {
        "box": {
          "id": "obj-snarelabel",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            140.0,
            585.0,
            60.0,
            22.0
          ],
          "text": "SNARE"
        }
      },
      {
        "box": {
          "id": "obj-snarelf",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            140.0,
            615.0,
            200.0,
            22.0
          ],
          "text": "lowshelf 1000.0 0.707 0.5"
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            260.0,
            400.0,
            50.0,
            22.0
          ],
          "text": "noise~"
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "newobj",
          "numinlets": 5,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            260.0,
            430.0,
            60.0,
            22.0
          ],
          "text": "biquad~"
        }
      },
      {
        "box": {
          "id": "obj-32",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            260.0,
            460.0,
            50.0,
            22.0
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "obj-33",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            260.0,
            490.0,
            60.0,
            22.0
          ],
          "text": "curve~"
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "function",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "",
            "list",
            "bang",
            ""
          ],
          "patching_rect": [
            260.0,
            520.0,
            100.0,
            60.0
          ],
          "mode": 1
        }
      },
      {
        "box": {
          "id": "obj-hatlabel",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            260.0,
            585.0,
            60.0,
            22.0
          ],
          "text": "HI-HAT"
        }
      },
      {
        "box": {
          "id": "obj-hathp",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            260.0,
            615.0,
            200.0,
            22.0
          ],
          "text": "highpass 4000.0 0.707"
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            400.0,
            370.0,
            400.0,
            22.0
          ],
          "text": "=== MODULE 4: SAMPLER (groove~ with pitch shift) ==="
        }
      },
      {
        "box": {
          "id": "obj-buf",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            400.0,
            400.0,
            100.0,
            22.0
          ],
          "text": "buffer~ play 5000"
        }
      },
      {
        "box": {
          "id": "obj-rec",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            400.0,
            430.0,
            80.0,
            22.0
          ],
          "text": "record~ play"
        }
      },
      {
        "box": {
          "id": "obj-rectog",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "patching_rect": [
            400.0,
            460.0,
            24.0,
            24.0
          ],
          "presentation": 1,
          "presentation_rect": [
            230.0,
            195.0,
            24.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-reclabel",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            430.0,
            460.0,
            60.0,
            22.0
          ],
          "text": "REC",
          "presentation": 1,
          "presentation_rect": [
            225.0,
            180.0,
            35.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-wv",
          "maxclass": "waveform~",
          "numinlets": 5,
          "numoutlets": 6,
          "outlettype": [
            "float",
            "float",
            "float",
            "float",
            "list",
            ""
          ],
          "buffername": "play",
          "patching_rect": [
            400.0,
            495.0,
            256.0,
            64.0
          ],
          "presentation": 1,
          "presentation_rect": [
            10.0,
            10.0,
            480.0,
            40.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-groove",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ],
          "patching_rect": [
            400.0,
            570.0,
            180.0,
            22.0
          ],
          "text": "groove~ play @timestretch 1"
        }
      },
      {
        "box": {
          "id": "obj-grpitch",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            400.0,
            600.0,
            140.0,
            22.0
          ],
          "text": "expr pow(2.,$f1/12)"
        }
      },
      {
        "box": {
          "id": "obj-grfloat",
          "maxclass": "flonum",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            400.0,
            625.0,
            52.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-kslid",
          "maxclass": "kslider",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "int",
            "int"
          ],
          "offset": -12,
          "range": 36,
          "patching_rect": [
            400.0,
            655.0,
            210.0,
            45.0
          ],
          "presentation": 1,
          "presentation_rect": [
            10.0,
            165.0,
            210.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            650.0,
            400.0,
            22.0
          ],
          "text": "=== MODULE 5: MIXER + OUTPUT ==="
        }
      },
      {
        "box": {
          "id": "obj-mix1",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            20.0,
            680.0,
            40.0,
            22.0
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "obj-mix2",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            70.0,
            680.0,
            40.0,
            22.0
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "obj-mix3",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            120.0,
            680.0,
            40.0,
            22.0
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "obj-gain",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            20.0,
            720.0,
            100.0,
            22.0
          ],
          "text": "live.gain~",
          "presentation": 1,
          "presentation_rect": [
            490.0,
            50.0,
            30.0,
            140.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-scope",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            760.0,
            120.0,
            22.0
          ],
          "text": "scope~ @bgcolor 0 20 0 255 @fgcolor 0 200 0 255",
          "presentation": 1,
          "presentation_rect": [
            10.0,
            220.0,
            220.0,
            60.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-dac",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            800.0,
            40.0,
            22.0
          ],
          "text": "dac~"
        }
      },
      {
        "box": {
          "id": "obj-60",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            700.0,
            10.0,
            400.0,
            22.0
          ],
          "text": "=== MODULE 6: MIDI CC CONTROL ==="
        }
      },
      {
        "box": {
          "id": "obj-cc1",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "int",
            "int"
          ],
          "patching_rect": [
            700.0,
            40.0,
            70.0,
            22.0
          ],
          "text": "ctlin 1"
        }
      },
      {
        "box": {
          "id": "obj-cc1s",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            700.0,
            70.0,
            130.0,
            22.0
          ],
          "text": "scale 0 127 40 240"
        }
      },
      {
        "box": {
          "id": "obj-cc1l",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            840.0,
            40.0,
            150.0,
            22.0
          ],
          "text": "CC1 = BPM (40-240)"
        }
      },
      {
        "box": {
          "id": "obj-cc2",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "int",
            "int"
          ],
          "patching_rect": [
            700.0,
            110.0,
            70.0,
            22.0
          ],
          "text": "ctlin 2"
        }
      },
      {
        "box": {
          "id": "obj-cc2s",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            700.0,
            140.0,
            130.0,
            22.0
          ],
          "text": "scale 0 127 0. 1."
        }
      },
      {
        "box": {
          "id": "obj-cc2l",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            840.0,
            110.0,
            150.0,
            22.0
          ],
          "text": "CC2 = Master Volume"
        }
      },
      {
        "box": {
          "id": "obj-cc3",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "int",
            "int"
          ],
          "patching_rect": [
            700.0,
            180.0,
            70.0,
            22.0
          ],
          "text": "ctlin 3"
        }
      },
      {
        "box": {
          "id": "obj-cc3s",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            700.0,
            210.0,
            160.0,
            22.0
          ],
          "text": "scale 0 127 0.25 4."
        }
      },
      {
        "box": {
          "id": "obj-cc3l",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            870.0,
            180.0,
            200.0,
            22.0
          ],
          "text": "CC3 = Sample Playback Rate"
        }
      },
      {
        "box": {
          "id": "obj-cc4",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "int",
            "int"
          ],
          "patching_rect": [
            700.0,
            250.0,
            70.0,
            22.0
          ],
          "text": "ctlin 4"
        }
      },
      {
        "box": {
          "id": "obj-cc4s",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            700.0,
            280.0,
            130.0,
            22.0
          ],
          "text": "scale 0 127 0. 1."
        }
      },
      {
        "box": {
          "id": "obj-cc4l",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            840.0,
            250.0,
            200.0,
            22.0
          ],
          "text": "CC4 = Dry/Wet Reverb Mix"
        }
      },
      {
        "box": {
          "id": "obj-stepdisp",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "bang"
          ],
          "patching_rect": [
            200.0,
            40.0,
            50.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            115.0,
            195.0,
            50.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-steplab",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            200.0,
            10.0,
            60.0,
            22.0
          ],
          "text": "STEP",
          "presentation": 1,
          "presentation_rect": [
            115.0,
            180.0,
            40.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-title",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "fontsize": 18.0,
          "fontface": 1,
          "patching_rect": [
            10.0,
            10.0,
            300.0,
            30.0
          ],
          "text": "GROOVEBOX",
          "presentation": 1,
          "presentation_rect": [
            240.0,
            5.0,
            200.0,
            30.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-conv",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "signal",
            "signal"
          ],
          "patching_rect": [
            430.0,
            540.0,
            140.0,
            22.0
          ],
          "text": "convolution~ ir_room.wav"
        }
      },
      {
        "box": {
          "id": "obj-wetmul",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            430.0,
            575.0,
            35.0,
            22.0
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "obj-drymul",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            360.0,
            575.0,
            35.0,
            22.0
          ],
          "text": "*~"
        }
      },
      {
        "box": {
          "id": "obj-drywetplus",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "signal"
          ],
          "patching_rect": [
            390.0,
            610.0,
            35.0,
            22.0
          ],
          "text": "+~"
        }
      },
      {
        "box": {
          "id": "obj-invwet",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "float"
          ],
          "patching_rect": [
            840.0,
            315.0,
            35.0,
            22.0
          ],
          "text": "!- 1."
        }
      },
      {
        "box": {
          "id": "obj-irmsg1",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            580.0,
            570.0,
            110.0,
            22.0
          ],
          "text": "read ir_room.wav"
        }
      },
      {
        "box": {
          "id": "obj-irmsg2",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            580.0,
            595.0,
            110.0,
            22.0
          ],
          "text": "read ir_hall.wav"
        }
      },
      {
        "box": {
          "id": "obj-convlabel",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            430.0,
            515.0,
            220.0,
            22.0
          ],
          "text": "Convolution Reverb (2 IR presets)"
        }
      },
      {
        "box": {
          "id": "obj-hitdisp",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            20.0,
            300.0,
            160.0,
            24.0
          ],
          "text": "HIT: -",
          "fontsize": 16.0,
          "presentation": 1,
          "presentation_rect": [
            460.0,
            10.0,
            180.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-hitkick",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            20.0,
            330.0,
            70.0,
            22.0
          ],
          "text": "set HIT: KICK"
        }
      },
      {
        "box": {
          "id": "obj-hitsnare",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            95.0,
            330.0,
            80.0,
            22.0
          ],
          "text": "set HIT: SNRE"
        }
      },
      {
        "box": {
          "id": "obj-hithat",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            180.0,
            330.0,
            80.0,
            22.0
          ],
          "text": "set HIT: HHAT"
        }
      },
      {
        "box": {
          "id": "obj-hitsample",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            265.0,
            330.0,
            90.0,
            22.0
          ],
          "text": "set HIT: SMPL"
        }
      },
      {
        "box": {
          "id": "obj-hitcleartrig",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            360.0,
            330.0,
            45.0,
            22.0
          ],
          "text": "delay 120"
        }
      },
      {
        "box": {
          "id": "obj-hitclear",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            410.0,
            330.0,
            60.0,
            22.0
          ],
          "text": "set HIT: -"
        }
      },
      {
        "box": {
          "id": "obj-modelabel",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            500.0,
            300.0,
            180.0,
            24.0
          ],
          "text": "MODE: DRUM",
          "fontsize": 16.0,
          "presentation": 1,
          "presentation_rect": [
            460.0,
            35.0,
            180.0,
            24.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-modectrl",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "bang",
            "bang",
            "bang"
          ],
          "patching_rect": [
            500.0,
            330.0,
            80.0,
            22.0
          ],
          "text": "select 1 2 3"
        }
      },
      {
        "box": {
          "id": "obj-modenum",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "patching_rect": [
            585.0,
            330.0,
            50.0,
            22.0
          ],
          "minimum": 1,
          "maximum": 3,
          "presentation": 1,
          "presentation_rect": [
            650.0,
            35.0,
            40.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-modedrum",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            500.0,
            360.0,
            90.0,
            22.0
          ],
          "text": "set MODE: DRUM"
        }
      },
      {
        "box": {
          "id": "obj-modesample",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            595.0,
            360.0,
            100.0,
            22.0
          ],
          "text": "set MODE: SAMPLE"
        }
      },
      {
        "box": {
          "id": "obj-modeedit",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            700.0,
            360.0,
            90.0,
            22.0
          ],
          "text": "set MODE: EDIT"
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "destination": [
            "obj-3",
            0
          ],
          "source": [
            "obj-2",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-4",
            0
          ],
          "source": [
            "obj-3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-11",
            0
          ],
          "source": [
            "obj-4",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-stepdisp",
            0
          ],
          "source": [
            "obj-4",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-12",
            0
          ],
          "source": [
            "obj-11",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-13",
            0
          ],
          "source": [
            "obj-12",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-14",
            0
          ],
          "source": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-15",
            0
          ],
          "source": [
            "obj-13",
            1
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-16",
            0
          ],
          "source": [
            "obj-13",
            2
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-17",
            0
          ],
          "source": [
            "obj-13",
            3
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-24",
            0
          ],
          "source": [
            "obj-14",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-23",
            0
          ],
          "source": [
            "obj-24",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-22",
            1
          ],
          "source": [
            "obj-23",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-22",
            0
          ],
          "source": [
            "obj-21",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-29",
            0
          ],
          "source": [
            "obj-15",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-28",
            0
          ],
          "source": [
            "obj-29",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-27",
            1
          ],
          "source": [
            "obj-28",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-26",
            0
          ],
          "source": [
            "obj-25",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-27",
            0
          ],
          "source": [
            "obj-26",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-34",
            0
          ],
          "source": [
            "obj-16",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-33",
            0
          ],
          "source": [
            "obj-34",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-32",
            1
          ],
          "source": [
            "obj-33",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-31",
            0
          ],
          "source": [
            "obj-30",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-32",
            0
          ],
          "source": [
            "obj-31",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-17",
            0
          ],
          "source": [
            "obj-groove",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-groove",
            0
          ],
          "source": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-rec",
            0
          ],
          "source": [
            "obj-rectog",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-grfloat",
            0
          ],
          "source": [
            "obj-kslid",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-grpitch",
            0
          ],
          "source": [
            "obj-grfloat",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-groove",
            1
          ],
          "source": [
            "obj-grpitch",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-mix1",
            0
          ],
          "source": [
            "obj-22",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-mix1",
            1
          ],
          "source": [
            "obj-27",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-mix2",
            0
          ],
          "source": [
            "obj-mix1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-mix2",
            1
          ],
          "source": [
            "obj-32",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-mix3",
            0
          ],
          "source": [
            "obj-mix2",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-mix3",
            1
          ],
          "source": [
            "obj-groove",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-scope",
            0
          ],
          "source": [
            "obj-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-dac",
            0
          ],
          "source": [
            "obj-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-dac",
            1
          ],
          "source": [
            "obj-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-cc1s",
            0
          ],
          "source": [
            "obj-cc1",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-3",
            1
          ],
          "source": [
            "obj-cc1s",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-bpmconv",
            0
          ],
          "source": [
            "obj-bpm",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-3",
            1
          ],
          "source": [
            "obj-bpmconv",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-cc2s",
            0
          ],
          "source": [
            "obj-cc2",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-cc3s",
            0
          ],
          "source": [
            "obj-cc3",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-groove",
            2
          ],
          "source": [
            "obj-cc3s",
            0
          ]
        }
      },
      {
        "patchline": {
          "destination": [
            "obj-cc4s",
            0
          ],
          "source": [
            "obj-cc4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-mix3",
            0
          ],
          "destination": [
            "obj-conv",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-mix3",
            0
          ],
          "destination": [
            "obj-drymul",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-conv",
            0
          ],
          "destination": [
            "obj-wetmul",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-drymul",
            0
          ],
          "destination": [
            "obj-drywetplus",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-wetmul",
            0
          ],
          "destination": [
            "obj-drywetplus",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-drywetplus",
            0
          ],
          "destination": [
            "obj-gain",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-cc4s",
            0
          ],
          "destination": [
            "obj-wetmul",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-cc4s",
            0
          ],
          "destination": [
            "obj-invwet",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-invwet",
            0
          ],
          "destination": [
            "obj-drymul",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-irmsg1",
            0
          ],
          "destination": [
            "obj-conv",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-irmsg2",
            0
          ],
          "destination": [
            "obj-conv",
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
            "obj-hitkick",
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
            "obj-hitsnare",
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
            "obj-hithat",
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
            "obj-hitsample",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-hitkick",
            0
          ],
          "destination": [
            "obj-hitdisp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-hitkick",
            0
          ],
          "destination": [
            "obj-hitcleartrig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-hitsnare",
            0
          ],
          "destination": [
            "obj-hitdisp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-hitsnare",
            0
          ],
          "destination": [
            "obj-hitcleartrig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-hithat",
            0
          ],
          "destination": [
            "obj-hitdisp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-hithat",
            0
          ],
          "destination": [
            "obj-hitcleartrig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-hitsample",
            0
          ],
          "destination": [
            "obj-hitdisp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-hitsample",
            0
          ],
          "destination": [
            "obj-hitcleartrig",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-hitcleartrig",
            0
          ],
          "destination": [
            "obj-hitclear",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-hitclear",
            0
          ],
          "destination": [
            "obj-hitdisp",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-modenum",
            0
          ],
          "destination": [
            "obj-modectrl",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-modectrl",
            0
          ],
          "destination": [
            "obj-modedrum",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-modectrl",
            1
          ],
          "destination": [
            "obj-modesample",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-modectrl",
            2
          ],
          "destination": [
            "obj-modeedit",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-modedrum",
            0
          ],
          "destination": [
            "obj-modelabel",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-modesample",
            0
          ],
          "destination": [
            "obj-modelabel",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-modeedit",
            0
          ],
          "destination": [
            "obj-modelabel",
            0
          ]
        }
      }
    ],
    "parameters": {
      "obj-gain": [
        "live.gain~",
        "live.gain~",
        0
      ],
      "obj-kslid": [
        "kslider",
        "kslider",
        0
      ],
      "parameterbanks": {
        "0": {
          "index": 0,
          "name": "",
          "parameters": [
            "-",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-",
            "-"
          ]
        }
      },
      "inherited_shortname": 1
    },
    "dependency_cache": [],
    "autosave": 0
  }
}