# Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindHighestScoreForAreaExploder
# Next metadata method 0x20f0c98, not a proven function boundary.
020eff70: ffc304d1 sub      sp, sp, #0x130
020eff74: fc6f0da9 stp      x28, x27, [sp, #0xd0]
020eff78: fa670ea9 stp      x26, x25, [sp, #0xe0]
020eff7c: f85f0fa9 stp      x24, x23, [sp, #0xf0]
020eff80: f65710a9 stp      x22, x21, [sp, #0x100]
020eff84: f44f11a9 stp      x20, x19, [sp, #0x110]
020eff88: fd7b12a9 stp      x29, x30, [sp, #0x120]
020eff8c: 75a401d0 adrp     x21, #0x557d000
020eff90: a85a5539 ldrb     w8, [x21, #0x556]
020eff94: f303052a mov      w19, w5
020eff98: f803022a mov      w24, w2
020eff9c: f60301aa mov      x22, x1
020effa0: f40300aa mov      x20, x0
020effa4: e40700f9 str      x4, [sp, #8]
020effa8: 88070037 tbnz     w8, #0, #0x20f0098
020effac: 208501f0 adrp     x0, #0x5196000
020effb0: 005c41f9 ldr      x0, [x0, #0x2b8]
020effb4: d304bb97 bl       #0xfb1300
020effb8: 408901f0 adrp     x0, #0x521a000
020effbc: 00a442f9 ldr      x0, [x0, #0x548]
020effc0: d004bb97 bl       #0xfb1300
020effc4: 008701d0 adrp     x0, #0x51d1000
020effc8: 005c44f9 ldr      x0, [x0, #0x8b8]
020effcc: cd04bb97 bl       #0xfb1300
020effd0: 608701b0 adrp     x0, #0x51dc000
020effd4: 009843f9 ldr      x0, [x0, #0x730]
020effd8: ca04bb97 bl       #0xfb1300
020effdc: 808801f0 adrp     x0, #0x5202000
020effe0: 00c041f9 ldr      x0, [x0, #0x380]
020effe4: c704bb97 bl       #0xfb1300
020effe8: 60850190 adrp     x0, #0x519b000
020effec: 00f044f9 ldr      x0, [x0, #0x9e0]
020efff0: c404bb97 bl       #0xfb1300
020efff4: a08601d0 adrp     x0, #0x51c5000
020efff8: 002843f9 ldr      x0, [x0, #0x650]
020efffc: c104bb97 bl       #0xfb1300
020f0000: 008601f0 adrp     x0, #0x51b3000
020f0004: 006c44f9 ldr      x0, [x0, #0x8d8]
020f0008: be04bb97 bl       #0xfb1300
020f000c: 608701b0 adrp     x0, #0x51dd000
020f0010: 000444f9 ldr      x0, [x0, #0x808]
020f0014: bb04bb97 bl       #0xfb1300
020f0018: 80850190 adrp     x0, #0x51a0000
020f001c: 00b443f9 ldr      x0, [x0, #0x768]
020f0020: b804bb97 bl       #0xfb1300
020f0024: 40860190 adrp     x0, #0x51b8000
020f0028: 002c46f9 ldr      x0, [x0, #0xc58]
020f002c: b504bb97 bl       #0xfb1300
020f0030: 80850190 adrp     x0, #0x51a0000
020f0034: 00f441f9 ldr      x0, [x0, #0x3e8]
020f0038: b204bb97 bl       #0xfb1300
020f003c: 60880190 adrp     x0, #0x51fc000
020f0040: 00bc42f9 ldr      x0, [x0, #0x578]
020f0044: af04bb97 bl       #0xfb1300
020f0048: 808801f0 adrp     x0, #0x5203000
020f004c: 009442f9 ldr      x0, [x0, #0x528]
020f0050: ac04bb97 bl       #0xfb1300
020f0054: c08701d0 adrp     x0, #0x51ea000
020f0058: 00dc41f9 ldr      x0, [x0, #0x3b8]
020f005c: a904bb97 bl       #0xfb1300
020f0060: 008a01f0 adrp     x0, #0x5233000
020f0064: 004446f9 ldr      x0, [x0, #0xc88]
020f0068: a604bb97 bl       #0xfb1300
020f006c: e08701b0 adrp     x0, #0x51ed000
020f0070: 003044f9 ldr      x0, [x0, #0x860]
020f0074: a304bb97 bl       #0xfb1300
020f0078: 008a01b0 adrp     x0, #0x5231000
020f007c: 003841f9 ldr      x0, [x0, #0x270]
020f0080: a004bb97 bl       #0xfb1300
020f0084: 40850190 adrp     x0, #0x5198000
020f0088: 007047f9 ldr      x0, [x0, #0xee0]
020f008c: 9d04bb97 bl       #0xfb1300
020f0090: 28008052 mov      w8, #1
020f0094: a85a1539 strb     w8, [x21, #0x556]
020f0098: ff330239 strb     wzr, [sp, #0x8c]
020f009c: c00a40b9 ldr      w0, [x22, #8]
020f00a0: e1031faa mov      x1, xzr
020f00a4: 63293194 bl       #0x2d3a630 ; Royal.Scenes.Game.Mechanics.Explode.TriggerExtensions$$AsGuidedExploderType
020f00a8: e1031faa mov      x1, xzr
020f00ac: e04b00b9 str      w0, [sp, #0x48]
020f00b0: 1c524a94 bl       #0x3384920 ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsMultipleExploder
020f00b4: e90314aa mov      x9, x20
020f00b8: 288d41f8 ldr      x8, [x9, #0x18]!
020f00bc: e04700b9 str      w0, [sp, #0x44]
020f00c0: e91700f9 str      x9, [sp, #0x28]
020f00c4: 085e00b4 cbz      x8, #0x20f0c84
020f00c8: 091d40b9 ldr      w9, [x8, #0x1c]
020f00cc: 29050011 add      w9, w9, #1
020f00d0: 1f250329 stp      wzr, w9, [x8, #0x18]
020f00d4: e90314aa mov      x9, x20
020f00d8: 280d42f8 ldr      x8, [x9, #0x20]!
020f00dc: e91300f9 str      x9, [sp, #0x20]
020f00e0: 285d00b4 cbz      x8, #0x20f0c84
020f00e4: 091d40b9 ldr      w9, [x8, #0x1c]
020f00e8: 29050011 add      w9, w9, #1
020f00ec: 1f250329 stp      wzr, w9, [x8, #0x18]
020f00f0: 881640f9 ldr      x8, [x20, #0x28]
020f00f4: 885c00b4 cbz      x8, #0x20f0c84
020f00f8: 091d40b9 ldr      w9, [x8, #0x1c]
020f00fc: 95420191 add      x21, x20, #0x50
020f0100: e00315aa mov      x0, x21
020f0104: e1031faa mov      x1, xzr
020f0108: 29050011 add      w9, w9, #1
020f010c: 1f250329 stp      wzr, w9, [x8, #0x18]
020f0110: 5a612794 bl       #0x2ac8678 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$Reset
020f0114: 802640f9 ldr      x0, [x20, #0x48]
020f0118: 605b00b4 cbz      x0, #0x20f0c84
020f011c: a10b8052 mov      w1, #0x5d
020f0120: e2031faa mov      x2, xzr
020f0124: 8aaafd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f0128: 20010036 tbz      w0, #0, #0x20f014c
020f012c: 088601f0 adrp     x8, #0x51b3000
020f0130: 086d44f9 ldr      x8, [x8, #0x8d8]
020f0134: 600b8052 mov      w0, #0x5b
020f0138: 010140f9 ldr      x1, [x8]
020f013c: 4c3a1194 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
020f0140: 205a00b4 cbz      x0, #0x20f0c84
020f0144: e1031faa mov      x1, xzr
020f0148: 49c82794 bl       #0x2ae226c ; Royal.Scenes.Game.Mechanics.Items.ChocoMakerItem.ChocoMakerItemHelper$$UpdateExtraTntScoresForChocoMakers
020f014c: 802640f9 ldr      x0, [x20, #0x48]
020f0150: a05900b4 cbz      x0, #0x20f0c84
020f0154: 610e8052 mov      w1, #0x73
020f0158: e2031faa mov      x2, xzr
020f015c: 7caafd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f0160: 20010036 tbz      w0, #0, #0x20f0184
020f0164: a88601b0 adrp     x8, #0x51c5000
020f0168: 082943f9 ldr      x8, [x8, #0x650]
020f016c: a00d8052 mov      w0, #0x6d
020f0170: 010140f9 ldr      x1, [x8]
020f0174: 3e3a1194 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
020f0178: 605800b4 cbz      x0, #0x20f0c84
020f017c: e1031faa mov      x1, xzr
020f0180: bd170294 bl       #0x2176074 ; Royal.Scenes.Game.Mechanics.Items.BathtubItem.BathtubItemHelper$$UpdateExtraTntScoresForGenerators
020f0184: e00315aa mov      x0, x21
020f0188: e1031faa mov      x1, xzr
020f018c: 25612794 bl       #0x2ac8620 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$MoveNext
020f0190: e05200b4 cbz      x0, #0x20f0bec
020f0194: 0800b052 mov      w8, #-0x80000000
020f0198: e81f00b9 str      w8, [sp, #0x1c]
020f019c: 68020012 and      w8, w19, #1
020f01a0: e81b00b9 str      w8, [sp, #0x18]
020f01a4: 0800b052 mov      w8, #-0x80000000
020f01a8: ff4f00b9 str      wzr, [sp, #0x4c]
020f01ac: e81700b9 str      w8, [sp, #0x14]
020f01b0: f51f00f9 str      x21, [sp, #0x38]
020f01b4: 9b3240f9 ldr      x27, [x20, #0x60]
020f01b8: 7b5600b4 cbz      x27, #0x20f0c84
020f01bc: e0031baa mov      x0, x27
020f01c0: e1031faa mov      x1, xzr
020f01c4: 58652794 bl       #0x2ac9724 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsNormalCell
020f01c8: e04f0036 tbz      w0, #0, #0x20f0bc4
020f01cc: e1031baa mov      x1, x27
020f01d0: 65050094 bl       #0x20f1764 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$HasTargetableBelowItemUnderLightball
020f01d4: e84740b9 ldr      w8, [sp, #0x44]
020f01d8: fd03002a mov      w29, w0
020f01dc: e8000036 tbz      w8, #0, #0x20f01f8
020f01e0: e0031baa mov      x0, x27
020f01e4: e1031faa mov      x1, xzr
020f01e8: cd6f2794 bl       #0x2acc11c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$WillBeAbleToSpreadJelly
020f01ec: a0000036 tbz      w0, #0, #0x20f0200
020f01f0: 37008052 mov      w23, #1
020f01f4: 08000014 b        #0x20f0214
020f01f8: f7031f2a mov      w23, wzr
020f01fc: 06000014 b        #0x20f0214
020f0200: 21008052 mov      w1, #1
020f0204: e0031baa mov      x0, x27
020f0208: e2031faa mov      x2, xzr
020f020c: 5f6f2794 bl       #0x2acbf88 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$CanSpreadJelly
020f0210: 17000012 and      w23, w0, #1
020f0214: 605b40f9 ldr      x0, [x27, #0xb0]
020f0218: 605300b4 cbz      x0, #0x20f0c84
020f021c: e14b40b9 ldr      w1, [sp, #0x48]
020f0220: 02030012 and      w2, w24, #1
020f0224: e3031baa mov      x3, x27
020f0228: e4031faa mov      x4, xzr
020f022c: ee7b2794 bl       #0x2acf1e4 ; Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$GetScore
020f0230: 686340f9 ldr      x8, [x27, #0xc0]
020f0234: 885200b4 cbz      x8, #0x20f0c84
020f0238: fc03002a mov      w28, w0
020f023c: e00308aa mov      x0, x8
020f0240: e1031faa mov      x1, xzr
020f0244: 02662794 bl       #0x2ac9a4c ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$HasAboveItem
020f0248: c0010037 tbnz     w0, #0, #0x20f0280
020f024c: 600b40f9 ldr      x0, [x27, #0x10]
020f0250: a05100b4 cbz      x0, #0x20f0c84
020f0254: e1031faa mov      x1, xzr
020f0258: 09571994 bl       #0x2745e7c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasCurrentItem
020f025c: 20010036 tbz      w0, #0, #0x20f0280
020f0260: e0031baa mov      x0, x27
020f0264: e1031faa mov      x1, xzr
020f0268: fe612794 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
020f026c: c05000b4 cbz      x0, #0x20f0c84
020f0270: e1031faa mov      x1, xzr
020f0274: 56774a94 bl       #0x338dfcc ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$IsMatchOrSpecialItem
020f0278: 15000012 and      w21, w0, #1
020f027c: 02000014 b        #0x20f0284
020f0280: f5031f2a mov      w21, wzr
020f0284: 9f070071 cmp      w28, #1
020f0288: f9a79f1a cset     w25, lt
020f028c: 9f030071 cmp      w28, #0
020f0290: 8c0b0054 b.gt     #0x20f0400
020f0294: a8030052 eor      w8, w29, #1
020f0298: 480b0036 tbz      w8, #0, #0x20f0400
020f029c: e0031baa mov      x0, x27
020f02a0: e1031f2a mov      w1, wzr
020f02a4: e2031faa mov      x2, xzr
020f02a8: 386f2794 bl       #0x2acbf88 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$CanSpreadJelly
020f02ac: a802172a orr      w8, w21, w23
020f02b0: 880a0035 cbnz     w8, #0x20f0400
020f02b4: 600a0037 tbnz     w0, #0, #0x20f0400
020f02b8: 802640f9 ldr      x0, [x20, #0x48]
020f02bc: 404e00b4 cbz      x0, #0x20f0c84
020f02c0: a10b8052 mov      w1, #0x5d
020f02c4: e2031faa mov      x2, xzr
020f02c8: 21aafd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f02cc: c0000036 tbz      w0, #0, #0x20f02e4
020f02d0: 606340f9 ldr      x0, [x27, #0xc0]
020f02d4: 804d00b4 cbz      x0, #0x20f0c84
020f02d8: e1031faa mov      x1, xzr
020f02dc: dc652794 bl       #0x2ac9a4c ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$HasAboveItem
020f02e0: 60000036 tbz      w0, #0, #0x20f02ec
020f02e4: f3031f2a mov      w19, wzr
020f02e8: 16000014 b        #0x20f0340
020f02ec: e0031baa mov      x0, x27
020f02f0: e1031faa mov      x1, xzr
020f02f4: db612794 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
020f02f8: 200100b4 cbz      x0, #0x20f031c
020f02fc: 68870190 adrp     x8, #0x51dc000
020f0300: 090040f9 ldr      x9, [x0]
020f0304: 089943f9 ldr      x8, [x8, #0x730]
020f0308: 2bb14439 ldrb     w11, [x9, #0x12c]
020f030c: 080140f9 ldr      x8, [x8]
020f0310: 0ab14439 ldrb     w10, [x8, #0x12c]
020f0314: 7f010a6b cmp      w11, w10
020f0318: 62000054 b.hs     #0x20f0324
020f031c: e8031faa mov      x8, xzr
020f0320: 06000014 b        #0x20f0338
020f0324: 296540f9 ldr      x9, [x9, #0xc8]
020f0328: 290d0a8b add      x9, x9, x10, lsl #3
020f032c: 29815ff8 ldur     x9, [x9, #-8]
020f0330: 3f0108eb cmp      x9, x8
020f0334: 08009f9a csel     x8, x0, xzr, eq
020f0338: 1f0100f1 cmp      x8, #0
020f033c: f3079f1a cset     w19, ne
020f0340: 802640f9 ldr      x0, [x20, #0x48]
020f0344: 004a00b4 cbz      x0, #0x20f0c84
020f0348: 610e8052 mov      w1, #0x73
020f034c: e2031faa mov      x2, xzr
020f0350: ffa9fd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f0354: c0000036 tbz      w0, #0, #0x20f036c
020f0358: 606340f9 ldr      x0, [x27, #0xc0]
020f035c: 404900b4 cbz      x0, #0x20f0c84
020f0360: e1031faa mov      x1, xzr
020f0364: ba652794 bl       #0x2ac9a4c ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$HasAboveItem
020f0368: 60000036 tbz      w0, #0, #0x20f0374
020f036c: e8031f2a mov      w8, wzr
020f0370: 22000014 b        #0x20f03f8
020f0374: e0031baa mov      x0, x27
020f0378: e1031faa mov      x1, xzr
020f037c: b9612794 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
020f0380: 800200b4 cbz      x0, #0x20f03d0
020f0384: 498901d0 adrp     x9, #0x521a000
020f0388: 080040f9 ldr      x8, [x0]
020f038c: 29a542f9 ldr      x9, [x9, #0x548]
020f0390: 2a0140f9 ldr      x10, [x9]
020f0394: 09b14439 ldrb     w9, [x8, #0x12c]
020f0398: 4bb14439 ldrb     w11, [x10, #0x12c]
020f039c: 3f010b6b cmp      w9, w11
020f03a0: c3000054 b.lo     #0x20f03b8
020f03a4: 0c6540f9 ldr      x12, [x8, #0xc8]
020f03a8: 8b0d0b8b add      x11, x12, x11, lsl #3
020f03ac: 6b815ff8 ldur     x11, [x11, #-8]
020f03b0: 7f010aeb cmp      x11, x10
020f03b4: 20410054 b.eq     #0x20f0bd8
020f03b8: 2a8501d0 adrp     x10, #0x5196000
020f03bc: 4a5d41f9 ldr      x10, [x10, #0x2b8]
020f03c0: 4a0140f9 ldr      x10, [x10]
020f03c4: 4bb14439 ldrb     w11, [x10, #0x12c]
020f03c8: 3f010b6b cmp      w9, w11
020f03cc: 62000054 b.hs     #0x20f03d8
020f03d0: e8031faa mov      x8, xzr
020f03d4: 06000014 b        #0x20f03ec
020f03d8: 086540f9 ldr      x8, [x8, #0xc8]
020f03dc: 080d0b8b add      x8, x8, x11, lsl #3
020f03e0: 08815ff8 ldur     x8, [x8, #-8]
020f03e4: 1f010aeb cmp      x8, x10
020f03e8: 08009f9a csel     x8, x0, xzr, eq
020f03ec: 1f0100f1 cmp      x8, #0
020f03f0: e8179f1a cset     w8, eq
020f03f4: 08010052 eor      w8, w8, #1
020f03f8: 0801132a orr      w8, w8, w19
020f03fc: 88020034 cbz      w8, #0x20f044c
020f0400: 610f40f9 ldr      x1, [x27, #0x18]
020f0404: c30a40b9 ldr      w3, [x22, #8]
020f0408: 02030012 and      w2, w24, #1
020f040c: e4330291 add      x4, sp, #0x8c
020f0410: e00314aa mov      x0, x20
020f0414: f73700b9 str      w23, [sp, #0x34]
020f0418: f703182a mov      w23, w24
020f041c: d3160094 bl       #0x20f5f68 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$CalculateScoreForAreaExploder
020f0420: f8334239 ldrb     w24, [sp, #0x8c]
020f0424: f303002a mov      w19, w0
020f0428: 60010035 cbnz     w0, #0x20f0454
020f042c: 58010035 cbnz     w24, #0x20f0454
020f0430: 802640f9 ldr      x0, [x20, #0x48]
020f0434: 804200b4 cbz      x0, #0x20f0c84
020f0438: 61008052 mov      w1, #3
020f043c: e2031faa mov      x2, xzr
020f0440: 91a9fd97 bl       #0x205aa84 ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f0444: 80000036 tbz      w0, #0, #0x20f0454
020f0448: f803172a mov      w24, w23
020f044c: f51f40f9 ldr      x21, [sp, #0x38]
020f0450: dd010014 b        #0x20f0bc4
020f0454: 802640f9 ldr      x0, [x20, #0x48]
020f0458: 604100b4 cbz      x0, #0x20f0c84
020f045c: a1078052 mov      w1, #0x3d
020f0460: e2031faa mov      x2, xzr
020f0464: baa9fd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f0468: 00020036 tbz      w0, #0, #0x20f04a8
020f046c: 688701b0 adrp     x8, #0x51dd000
020f0470: 080544f9 ldr      x8, [x8, #0x808]
020f0474: 40078052 mov      w0, #0x3a
020f0478: 010140f9 ldr      x1, [x8]
020f047c: 7c391194 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
020f0480: fa0300aa mov      x26, x0
020f0484: e0031baa mov      x0, x27
020f0488: e1031faa mov      x1, xzr
020f048c: 5d632794 bl       #0x2ac9200 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$GetBoardAdjustedPoint
020f0490: ba3f00b4 cbz      x26, #0x20f0c84
020f0494: e10300aa mov      x1, x0
020f0498: e0031aaa mov      x0, x26
020f049c: e2031faa mov      x2, xzr
020f04a0: f6ee3094 bl       #0x2d2c078 ; Royal.Scenes.Game.Mechanics.Items.CoilItem.CoilItemHelper$$GetExtraIncludedTntScore
020f04a4: 7302004b sub      w19, w19, w0
020f04a8: 802640f9 ldr      x0, [x20, #0x48]
020f04ac: c03e00b4 cbz      x0, #0x20f0c84
020f04b0: 21048052 mov      w1, #0x21
020f04b4: e2031faa mov      x2, xzr
020f04b8: a5a9fd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f04bc: 00020036 tbz      w0, #0, #0x20f04fc
020f04c0: 48860190 adrp     x8, #0x51b8000
020f04c4: 082d46f9 ldr      x8, [x8, #0xc58]
020f04c8: 80048052 mov      w0, #0x24
020f04cc: 010140f9 ldr      x1, [x8]
020f04d0: 67391194 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
020f04d4: fa0300aa mov      x26, x0
020f04d8: e0031baa mov      x0, x27
020f04dc: e1031faa mov      x1, xzr
020f04e0: 48632794 bl       #0x2ac9200 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$GetBoardAdjustedPoint
020f04e4: 1a3d00b4 cbz      x26, #0x20f0c84
020f04e8: e10300aa mov      x1, x0
020f04ec: e0031aaa mov      x0, x26
020f04f0: e2031faa mov      x2, xzr
020f04f4: 97e03e94 bl       #0x30a8750 ; Royal.Scenes.Game.Mechanics.Items.CookieJarItem.View.CookieJarCollectHelper$$GetExtraIncludedTntScore
020f04f8: 7302004b sub      w19, w19, w0
020f04fc: 802640f9 ldr      x0, [x20, #0x48]
020f0500: 203c00b4 cbz      x0, #0x20f0c84
020f0504: 410e8052 mov      w1, #0x72
020f0508: e2031faa mov      x2, xzr
020f050c: 90a9fd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f0510: 00020036 tbz      w0, #0, #0x20f0550
020f0514: 68880190 adrp     x8, #0x51fc000
020f0518: 08bd42f9 ldr      x8, [x8, #0x578]
020f051c: 800d8052 mov      w0, #0x6c
020f0520: 010140f9 ldr      x1, [x8]
020f0524: 52391194 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
020f0528: fa0300aa mov      x26, x0
020f052c: e0031baa mov      x0, x27
020f0530: e1031faa mov      x1, xzr
020f0534: 33632794 bl       #0x2ac9200 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$GetBoardAdjustedPoint
020f0538: 7a3a00b4 cbz      x26, #0x20f0c84
020f053c: e10300aa mov      x1, x0
020f0540: e0031aaa mov      x0, x26
020f0544: e2031faa mov      x2, xzr
020f0548: 615e3e94 bl       #0x3087ecc ; Royal.Scenes.Game.Mechanics.Items.OtterItem.OtterCollectHelper$$GetExtraIncludedTntScore
020f054c: 7302004b sub      w19, w19, w0
020f0550: 802640f9 ldr      x0, [x20, #0x48]
020f0554: 803900b4 cbz      x0, #0x20f0c84
020f0558: a1058052 mov      w1, #0x2d
020f055c: e2031faa mov      x2, xzr
020f0560: 7ba9fd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f0564: 00020036 tbz      w0, #0, #0x20f05a4
020f0568: 888801f0 adrp     x8, #0x5203000
020f056c: 089542f9 ldr      x8, [x8, #0x528]
020f0570: 60058052 mov      w0, #0x2b
020f0574: 010140f9 ldr      x1, [x8]
020f0578: 3d391194 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
020f057c: fa0300aa mov      x26, x0
020f0580: e0031baa mov      x0, x27
020f0584: e1031faa mov      x1, xzr
020f0588: 1e632794 bl       #0x2ac9200 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$GetBoardAdjustedPoint
020f058c: da3700b4 cbz      x26, #0x20f0c84
020f0590: e10300aa mov      x1, x0
020f0594: e0031aaa mov      x0, x26
020f0598: e2031faa mov      x2, xzr
020f059c: bed86c94 bl       #0x3c26894 ; Royal.Scenes.Game.Mechanics.Items.UfoItem.View.UfoCollectHelper$$GetExtraIncludedTntScore
020f05a0: 7302004b sub      w19, w19, w0
020f05a4: 802640f9 ldr      x0, [x20, #0x48]
020f05a8: e03600b4 cbz      x0, #0x20f0c84
020f05ac: 61098052 mov      w1, #0x4b
020f05b0: e2031faa mov      x2, xzr
020f05b4: 66a9fd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f05b8: 00020036 tbz      w0, #0, #0x20f05f8
020f05bc: 488501f0 adrp     x8, #0x519b000
020f05c0: 08f144f9 ldr      x8, [x8, #0x9e0]
020f05c4: 80098052 mov      w0, #0x4c
020f05c8: 010140f9 ldr      x1, [x8]
020f05cc: 28391194 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
020f05d0: fa0300aa mov      x26, x0
020f05d4: e0031baa mov      x0, x27
020f05d8: e1031faa mov      x1, xzr
020f05dc: 09632794 bl       #0x2ac9200 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$GetBoardAdjustedPoint
020f05e0: 3a3500b4 cbz      x26, #0x20f0c84
020f05e4: e10300aa mov      x1, x0
020f05e8: e0031aaa mov      x0, x26
020f05ec: e2031faa mov      x2, xzr
020f05f0: 272f0294 bl       #0x217c28c ; Royal.Scenes.Game.Mechanics.Items.AncientVaultItem.AncientVaultItemHelper$$GetExtraIncludedTntScore
020f05f4: 7302004b sub      w19, w19, w0
020f05f8: 802640f9 ldr      x0, [x20, #0x48]
020f05fc: 403400b4 cbz      x0, #0x20f0c84
020f0600: 010e8052 mov      w1, #0x70
020f0604: e2031faa mov      x2, xzr
020f0608: 51a9fd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f060c: 00020036 tbz      w0, #0, #0x20f064c
020f0610: 88850190 adrp     x8, #0x51a0000
020f0614: 08b543f9 ldr      x8, [x8, #0x768]
020f0618: 600d8052 mov      w0, #0x6b
020f061c: 010140f9 ldr      x1, [x8]
020f0620: 13391194 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
020f0624: fa0300aa mov      x26, x0
020f0628: e0031baa mov      x0, x27
020f062c: e1031faa mov      x1, xzr
020f0630: f4622794 bl       #0x2ac9200 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$GetBoardAdjustedPoint
020f0634: 9a3200b4 cbz      x26, #0x20f0c84
020f0638: e10300aa mov      x1, x0
020f063c: e0031aaa mov      x0, x26
020f0640: e2031faa mov      x2, xzr
020f0644: 53ff3f94 bl       #0x30f0390 ; Royal.Scenes.Game.Mechanics.Items.ColorMixerItem.ColorMixerItemHelper$$GetExtraIncludedTntScore
020f0648: 7302004b sub      w19, w19, w0
020f064c: 802640f9 ldr      x0, [x20, #0x48]
020f0650: a03100b4 cbz      x0, #0x20f0c84
020f0654: e1098052 mov      w1, #0x4f
020f0658: e2031faa mov      x2, xzr
020f065c: 3ca9fd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f0660: 00020036 tbz      w0, #0, #0x20f06a0
020f0664: 88850190 adrp     x8, #0x51a0000
020f0668: 08f541f9 ldr      x8, [x8, #0x3e8]
020f066c: e0098052 mov      w0, #0x4f
020f0670: 010140f9 ldr      x1, [x8]
020f0674: fe381194 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
020f0678: fa0300aa mov      x26, x0
020f067c: e0031baa mov      x0, x27
020f0680: e1031faa mov      x1, xzr
020f0684: df622794 bl       #0x2ac9200 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$GetBoardAdjustedPoint
020f0688: fa2f00b4 cbz      x26, #0x20f0c84
020f068c: e10300aa mov      x1, x0
020f0690: e0031aaa mov      x0, x26
020f0694: e2031faa mov      x2, xzr
020f0698: d0fff497 bl       #0x1e305d8 ; Royal.Scenes.Game.Mechanics.Items.LogItem.LogItemHelper$$GetExtraIncludedTntScore
020f069c: 7302004b sub      w19, w19, w0
020f06a0: 802640f9 ldr      x0, [x20, #0x48]
020f06a4: 002f00b4 cbz      x0, #0x20f0c84
020f06a8: a10b8052 mov      w1, #0x5d
020f06ac: e2031faa mov      x2, xzr
020f06b0: 27a9fd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f06b4: 00020036 tbz      w0, #0, #0x20f06f4
020f06b8: 088601f0 adrp     x8, #0x51b3000
020f06bc: 086d44f9 ldr      x8, [x8, #0x8d8]
020f06c0: 600b8052 mov      w0, #0x5b
020f06c4: 010140f9 ldr      x1, [x8]
020f06c8: e9381194 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
020f06cc: fa0300aa mov      x26, x0
020f06d0: e0031baa mov      x0, x27
020f06d4: e1031faa mov      x1, xzr
020f06d8: ca622794 bl       #0x2ac9200 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$GetBoardAdjustedPoint
020f06dc: 5a2d00b4 cbz      x26, #0x20f0c84
020f06e0: e10300aa mov      x1, x0
020f06e4: e0031aaa mov      x0, x26
020f06e8: e2031faa mov      x2, xzr
020f06ec: 56c72794 bl       #0x2ae2444 ; Royal.Scenes.Game.Mechanics.Items.ChocoMakerItem.ChocoMakerItemHelper$$GetExtraIncludedTntScore
020f06f0: 7302004b sub      w19, w19, w0
020f06f4: 802640f9 ldr      x0, [x20, #0x48]
020f06f8: 602c00b4 cbz      x0, #0x20f0c84
020f06fc: 610e8052 mov      w1, #0x73
020f0700: e2031faa mov      x2, xzr
020f0704: 12a9fd97 bl       #0x205ab4c ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
020f0708: 00020036 tbz      w0, #0, #0x20f0748
020f070c: a88601b0 adrp     x8, #0x51c5000
020f0710: 082943f9 ldr      x8, [x8, #0x650]
020f0714: a00d8052 mov      w0, #0x6d
020f0718: 010140f9 ldr      x1, [x8]
020f071c: d4381194 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
020f0720: fa0300aa mov      x26, x0
020f0724: e0031baa mov      x0, x27
020f0728: e1031faa mov      x1, xzr
020f072c: b5622794 bl       #0x2ac9200 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$GetBoardAdjustedPoint
020f0730: ba2a00b4 cbz      x26, #0x20f0c84
020f0734: e10300aa mov      x1, x0
020f0738: e0031aaa mov      x0, x26
020f073c: e2031faa mov      x2, xzr
020f0740: 3f170294 bl       #0x217643c ; Royal.Scenes.Game.Mechanics.Items.BathtubItem.BathtubItemHelper$$GetExtraIncludedTntScore
020f0744: 7302004b sub      w19, w19, w0
020f0748: 803a40f9 ldr      x0, [x20, #0x70]
020f074c: c28240ad ldp      q2, q0, [x22, #0x10]
020f0750: c81a40f9 ldr      x8, [x22, #0x30]
020f0754: c102c03d ldr      q1, [x22]
020f0758: 610f40f9 ldr      x1, [x27, #0x18]
020f075c: e20303ad stp      q2, q0, [sp, #0x60]
020f0760: e84300f9 str      x8, [sp, #0x80]
020f0764: e117803d str      q1, [sp, #0x50]
020f0768: e02800b4 cbz      x0, #0x20f0c84
020f076c: 080040f9 ldr      x8, [x0]
020f0770: e08b42ad ldp      q0, q2, [sp, #0x50]
020f0774: e11fc03d ldr      q1, [sp, #0x70]
020f0778: e94340f9 ldr      x9, [sp, #0x80]
020f077c: 0ad540f9 ldr      x10, [x8, #0x1a8]
020f0780: e08b04ad stp      q0, q2, [sp, #0x90]
020f0784: e12f803d str      q1, [sp, #0xb0]
020f0788: e96300f9 str      x9, [sp, #0xc0]
020f078c: 03d940f9 ldr      x3, [x8, #0x1b0]
020f0790: e2430291 add      x2, sp, #0x90
020f0794: b502190a and      w21, w21, w25
020f0798: 40013fd6 blr      x10
020f079c: 400b0036 tbz      w0, #0, #0x20f0904
020f07a0: 888801d0 adrp     x8, #0x5202000
020f07a4: 08c141f9 ldr      x8, [x8, #0x380]
020f07a8: 000140f9 ldr      x0, [x8]
020f07ac: 08e040b9 ldr      w8, [x0, #0xe0]
020f07b0: 48000035 cbnz     w8, #0x20f07b8
020f07b4: 1403bb97 bl       #0xfb1404
020f07b8: cebdff97 bl       #0x20dfef0 ; Royal.Scenes.Game.Levels.Units.KingAnimation.KingAnimationStateManager$$get_Current
020f07bc: 402600b4 cbz      x0, #0x20f0c84
020f07c0: e11b40b9 ldr      w1, [sp, #0x18]
020f07c4: f803172a mov      w24, w23
020f07c8: e6c3ff97 bl       #0x20e1760 ; Royal.Scenes.Game.Levels.Units.KingAnimation.KingAnimationStateManager$$SetPropellerWinningCombo
020f07cc: 088a01b0 adrp     x8, #0x5231000
020f07d0: 083941f9 ldr      x8, [x8, #0x270]
020f07d4: 21008052 mov      w1, #1
020f07d8: 000140f9 ldr      x0, [x8]
020f07dc: e502bb97 bl       #0xfb1370
020f07e0: 098701b0 adrp     x9, #0x51d1000
020f07e4: 680f40f9 ldr      x8, [x27, #0x18]
020f07e8: 295d44f9 ldr      x9, [x9, #0x8b8]
020f07ec: f30300aa mov      x19, x0
020f07f0: e1430291 add      x1, sp, #0x90
020f07f4: e84b00f9 str      x8, [sp, #0x90]
020f07f8: 200140f9 ldr      x0, [x9]
020f07fc: 0403bb97 bl       #0xfb140c
020f0800: 332400b4 cbz      x19, #0x20f0c84
020f0804: fc0300aa mov      x28, x0
020f0808: c00000b4 cbz      x0, #0x20f0820
020f080c: 680240f9 ldr      x8, [x19]
020f0810: e0031caa mov      x0, x28
020f0814: 012140f9 ldr      x1, [x8, #0x40]
020f0818: fc02bb97 bl       #0xfb1408
020f081c: 802300b4 cbz      x0, #0x20f0c8c
020f0820: 681a40b9 ldr      w8, [x19, #0x18]
020f0824: 28230034 cbz      w8, #0x20f0c88
020f0828: e00313aa mov      x0, x19
020f082c: 1c0c02f8 str      x28, [x0, #0x20]!
020f0830: e1031caa mov      x1, x28
020f0834: 9e02bb97 bl       #0xfb12ac
020f0838: 48850190 adrp     x8, #0x5198000
020f083c: 087147f9 ldr      x8, [x8, #0xee0]
020f0840: 61018052 mov      w1, #0xb
020f0844: e00314aa mov      x0, x20
020f0848: e30313aa mov      x3, x19
020f084c: 020140f9 ldr      x2, [x8]
020f0850: e4031faa mov      x4, xzr
020f0854: 33401c94 bl       #0x2800920 ; Royal.Infrastructure.Services.Logs.Log$$Debug
020f0858: e84f40b9 ldr      w8, [sp, #0x4c]
020f085c: 48020037 tbnz     w8, #0, #0x20f08a4
020f0860: e81740f9 ldr      x8, [sp, #0x28]
020f0864: 080140f9 ldr      x8, [x8]
020f0868: e82000b4 cbz      x8, #0x20f0c84
020f086c: 091d40b9 ldr      w9, [x8, #0x1c]
020f0870: 29050011 add      w9, w9, #1
020f0874: 1f250329 stp      wzr, w9, [x8, #0x18]
020f0878: e81340f9 ldr      x8, [sp, #0x20]
020f087c: 080140f9 ldr      x8, [x8]
020f0880: 282000b4 cbz      x8, #0x20f0c84
020f0884: 091d40b9 ldr      w9, [x8, #0x1c]
020f0888: 29050011 add      w9, w9, #1
020f088c: 1f250329 stp      wzr, w9, [x8, #0x18]
020f0890: 881640f9 ldr      x8, [x20, #0x28]
020f0894: 881f00b4 cbz      x8, #0x20f0c84
020f0898: 091d40b9 ldr      w9, [x8, #0x1c]
020f089c: 29050011 add      w9, w9, #1
020f08a0: 1f250329 stp      wzr, w9, [x8, #0x18]
020f08a4: e92342a9 ldp      x9, x8, [sp, #0x20]
020f08a8: bf020071 cmp      w21, #0
020f08ac: 2811889a csel     x8, x9, x8, ne
020f08b0: 000140f9 ldr      x0, [x8]
020f08b4: 801e00b4 cbz      x0, #0x20f0c84
020f08b8: c98701d0 adrp     x9, #0x51ea000
020f08bc: 610f40f9 ldr      x1, [x27, #0x18]
020f08c0: 0a1c40b9 ldr      w10, [x0, #0x1c]
020f08c4: 080840f9 ldr      x8, [x0, #0x10]
020f08c8: 29dd41f9 ldr      x9, [x9, #0x3b8]
020f08cc: f51f40f9 ldr      x21, [sp, #0x38]
020f08d0: 4a050011 add      w10, w10, #1
020f08d4: 290140f9 ldr      x9, [x9]
020f08d8: 0a1c00b9 str      w10, [x0, #0x1c]
020f08dc: 481d00b4 cbz      x8, #0x20f0c84
020f08e0: 0a1880b9 ldrsw    x10, [x0, #0x18]
020f08e4: 0b1940b9 ldr      w11, [x8, #0x18]
020f08e8: 5f010b6b cmp      w10, w11
020f08ec: c2050054 b.hs     #0x20f09a4
020f08f0: 49050011 add      w9, w10, #1
020f08f4: 080d0a8b add      x8, x8, x10, lsl #3
020f08f8: 091800b9 str      w9, [x0, #0x18]
020f08fc: 011100f9 str      x1, [x8, #0x20]
020f0900: 2e000014 b        #0x20f09b8
020f0904: a8030012 and      w8, w29, #1
020f0908: e903332a mvn      w9, w19
020f090c: eb4f40b9 ldr      w11, [sp, #0x4c]
020f0910: 087d492a orr      w8, w8, w9, lsr #31
020f0914: 1f010071 cmp      w8, #0
020f0918: e8179f1a cset     w8, eq
020f091c: 6801082a orr      w8, w11, w8
020f0920: 88000036 tbz      w8, #0, #0x20f0930
020f0924: f51f40f9 ldr      x21, [sp, #0x38]
020f0928: 2b0b0036 tbz      w11, #0, #0x20f0a8c
020f092c: 77000014 b        #0x20f0b08
020f0930: e92342a9 ldp      x9, x8, [sp, #0x20]
020f0934: bf020071 cmp      w21, #0
020f0938: 2811889a csel     x8, x9, x8, ne
020f093c: 000140f9 ldr      x0, [x8]
020f0940: e81f40b9 ldr      w8, [sp, #0x1c]
020f0944: 7f02086b cmp      w19, w8
020f0948: e1030054 b.ne     #0x20f09c4
020f094c: c01900b4 cbz      x0, #0x20f0c84
020f0950: c98701d0 adrp     x9, #0x51ea000
020f0954: 610f40f9 ldr      x1, [x27, #0x18]
020f0958: 0a1c40b9 ldr      w10, [x0, #0x1c]
020f095c: 080840f9 ldr      x8, [x0, #0x10]
020f0960: 29dd41f9 ldr      x9, [x9, #0x3b8]
020f0964: f51f40f9 ldr      x21, [sp, #0x38]
020f0968: 4a050011 add      w10, w10, #1
020f096c: 290140f9 ldr      x9, [x9]
020f0970: 0a1c00b9 str      w10, [x0, #0x1c]
020f0974: 881800b4 cbz      x8, #0x20f0c84
020f0978: 0a1880b9 ldrsw    x10, [x0, #0x18]
020f097c: 0b1940b9 ldr      w11, [x8, #0x18]
020f0980: 5f010b6b cmp      w10, w11
020f0984: 42060054 b.hs     #0x20f0a4c
020f0988: 49050011 add      w9, w10, #1
020f098c: 080d0a8b add      x8, x8, x10, lsl #3
020f0990: eb031f2a mov      w11, wzr
020f0994: 091800b9 str      w9, [x0, #0x18]
020f0998: 011100f9 str      x1, [x8, #0x20]
020f099c: 8b070036 tbz      w11, #0, #0x20f0a8c
020f09a0: 5a000014 b        #0x20f0b08
020f09a4: 281140f9 ldr      x8, [x9, #0x20]
020f09a8: 086140f9 ldr      x8, [x8, #0xc0]
020f09ac: 022d40f9 ldr      x2, [x8, #0x58]
020f09b0: 480440f9 ldr      x8, [x2, #8]
020f09b4: 00013fd6 blr      x8
020f09b8: 28008052 mov      w8, #1
020f09bc: e84f00b9 str      w8, [sp, #0x4c]
020f09c0: 81000014 b        #0x20f0bc4
020f09c4: f51f40f9 ldr      x21, [sp, #0x38]
020f09c8: cd040054 b.le     #0x20f0a60
020f09cc: e81740f9 ldr      x8, [sp, #0x28]
020f09d0: 080140f9 ldr      x8, [x8]
020f09d4: 881500b4 cbz      x8, #0x20f0c84
020f09d8: 091d40b9 ldr      w9, [x8, #0x1c]
020f09dc: 29050011 add      w9, w9, #1
020f09e0: 1f250329 stp      wzr, w9, [x8, #0x18]
020f09e4: e81340f9 ldr      x8, [sp, #0x20]
020f09e8: 080140f9 ldr      x8, [x8]
020f09ec: c81400b4 cbz      x8, #0x20f0c84
020f09f0: 091d40b9 ldr      w9, [x8, #0x1c]
020f09f4: 29050011 add      w9, w9, #1
020f09f8: 1f250329 stp      wzr, w9, [x8, #0x18]
020f09fc: 401400b4 cbz      x0, #0x20f0c84
020f0a00: c98701d0 adrp     x9, #0x51ea000
020f0a04: 610f40f9 ldr      x1, [x27, #0x18]
020f0a08: 0a1c40b9 ldr      w10, [x0, #0x1c]
020f0a0c: 080840f9 ldr      x8, [x0, #0x10]
020f0a10: 29dd41f9 ldr      x9, [x9, #0x3b8]
020f0a14: 4a050011 add      w10, w10, #1
020f0a18: 290140f9 ldr      x9, [x9]
020f0a1c: 0a1c00b9 str      w10, [x0, #0x1c]
020f0a20: 281300b4 cbz      x8, #0x20f0c84
020f0a24: 0a1880b9 ldrsw    x10, [x0, #0x18]
020f0a28: 0b1940b9 ldr      w11, [x8, #0x18]
020f0a2c: 5f010b6b cmp      w10, w11
020f0a30: e2010054 b.hs     #0x20f0a6c
020f0a34: 49050011 add      w9, w10, #1
020f0a38: 080d0a8b add      x8, x8, x10, lsl #3
020f0a3c: eb031f2a mov      w11, wzr
020f0a40: 091800b9 str      w9, [x0, #0x18]
020f0a44: 011100f9 str      x1, [x8, #0x20]
020f0a48: 0f000014 b        #0x20f0a84
020f0a4c: 281140f9 ldr      x8, [x9, #0x20]
020f0a50: 086140f9 ldr      x8, [x8, #0xc0]
020f0a54: 022d40f9 ldr      x2, [x8, #0x58]
020f0a58: 480440f9 ldr      x8, [x2, #8]
020f0a5c: 00013fd6 blr      x8
020f0a60: eb031f2a mov      w11, wzr
020f0a64: 4b010036 tbz      w11, #0, #0x20f0a8c
020f0a68: 28000014 b        #0x20f0b08
020f0a6c: 281140f9 ldr      x8, [x9, #0x20]
020f0a70: 086140f9 ldr      x8, [x8, #0xc0]
020f0a74: 022d40f9 ldr      x2, [x8, #0x58]
020f0a78: 480440f9 ldr      x8, [x2, #8]
020f0a7c: 00013fd6 blr      x8
020f0a80: eb031f2a mov      w11, wzr
020f0a84: f31f00b9 str      w19, [sp, #0x1c]
020f0a88: 0b040037 tbnz     w11, #0, #0x20f0b08
020f0a8c: e81f40b9 ldr      w8, [sp, #0x1c]
020f0a90: 1f010071 cmp      w8, #0
020f0a94: ac030054 b.gt     #0x20f0b08
020f0a98: 98030034 cbz      w24, #0x20f0b08
020f0a9c: 9f030071 cmp      w28, #0
020f0aa0: 4d060054 b.le     #0x20f0b68
020f0aa4: e81740b9 ldr      w8, [sp, #0x14]
020f0aa8: f803172a mov      w24, w23
020f0aac: 7f02086b cmp      w19, w8
020f0ab0: 21030054 b.ne     #0x20f0b14
020f0ab4: 801640f9 ldr      x0, [x20, #0x28]
020f0ab8: 600e00b4 cbz      x0, #0x20f0c84
020f0abc: c98701d0 adrp     x9, #0x51ea000
020f0ac0: 610f40f9 ldr      x1, [x27, #0x18]
020f0ac4: 0a1c40b9 ldr      w10, [x0, #0x1c]
020f0ac8: 080840f9 ldr      x8, [x0, #0x10]
020f0acc: 29dd41f9 ldr      x9, [x9, #0x3b8]
020f0ad0: 4a050011 add      w10, w10, #1
020f0ad4: 290140f9 ldr      x9, [x9]
020f0ad8: 0a1c00b9 str      w10, [x0, #0x1c]
020f0adc: 480d00b4 cbz      x8, #0x20f0c84
020f0ae0: 0a1880b9 ldrsw    x10, [x0, #0x18]
020f0ae4: 0b1940b9 ldr      w11, [x8, #0x18]
020f0ae8: 5f010b6b cmp      w10, w11
020f0aec: 02050054 b.hs     #0x20f0b8c
020f0af0: 49050011 add      w9, w10, #1
020f0af4: 080d0a8b add      x8, x8, x10, lsl #3
020f0af8: ff4f00b9 str      wzr, [sp, #0x4c]
020f0afc: 091800b9 str      w9, [x0, #0x18]
020f0b00: 011100f9 str      x1, [x8, #0x20]
020f0b04: 30000014 b        #0x20f0bc4
020f0b08: eb4f00b9 str      w11, [sp, #0x4c]
020f0b0c: f803172a mov      w24, w23
020f0b10: 2d000014 b        #0x20f0bc4
020f0b14: 6d040054 b.le     #0x20f0ba0
020f0b18: 801640f9 ldr      x0, [x20, #0x28]
020f0b1c: 400b00b4 cbz      x0, #0x20f0c84
020f0b20: 0a1c40b9 ldr      w10, [x0, #0x1c]
020f0b24: 080840f9 ldr      x8, [x0, #0x10]
020f0b28: 49050011 add      w9, w10, #1
020f0b2c: 1f240329 stp      wzr, w9, [x0, #0x18]
020f0b30: c98701d0 adrp     x9, #0x51ea000
020f0b34: 610f40f9 ldr      x1, [x27, #0x18]
020f0b38: 29dd41f9 ldr      x9, [x9, #0x3b8]
020f0b3c: 4a090011 add      w10, w10, #2
020f0b40: 290140f9 ldr      x9, [x9]
020f0b44: 0a1c00b9 str      w10, [x0, #0x1c]
020f0b48: e80900b4 cbz      x8, #0x20f0c84
020f0b4c: 0a1940b9 ldr      w10, [x8, #0x18]
020f0b50: ca020034 cbz      w10, #0x20f0ba8
020f0b54: 29008052 mov      w9, #1
020f0b58: ff4f00b9 str      wzr, [sp, #0x4c]
020f0b5c: 091800b9 str      w9, [x0, #0x18]
020f0b60: 011100f9 str      x1, [x8, #0x20]
020f0b64: 17000014 b        #0x20f0bc0
020f0b68: e0031baa mov      x0, x27
020f0b6c: e1031f2a mov      w1, wzr
020f0b70: e2031faa mov      x2, xzr
020f0b74: 056d2794 bl       #0x2acbf88 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$CanSpreadJelly
020f0b78: e83740b9 ldr      w8, [sp, #0x34]
020f0b7c: 48f9ff35 cbnz     w8, #0x20f0aa4
020f0b80: 20f90737 tbnz     w0, #0, #0x20f0aa4
020f0b84: ff4f00b9 str      wzr, [sp, #0x4c]
020f0b88: e1ffff17 b        #0x20f0b0c
020f0b8c: 281140f9 ldr      x8, [x9, #0x20]
020f0b90: 086140f9 ldr      x8, [x8, #0xc0]
020f0b94: 022d40f9 ldr      x2, [x8, #0x58]
020f0b98: 480440f9 ldr      x8, [x2, #8]
020f0b9c: 00013fd6 blr      x8
020f0ba0: ff4f00b9 str      wzr, [sp, #0x4c]
020f0ba4: 08000014 b        #0x20f0bc4
020f0ba8: 281140f9 ldr      x8, [x9, #0x20]
020f0bac: 086140f9 ldr      x8, [x8, #0xc0]
020f0bb0: 022d40f9 ldr      x2, [x8, #0x58]
020f0bb4: 480440f9 ldr      x8, [x2, #8]
020f0bb8: 00013fd6 blr      x8
020f0bbc: ff4f00b9 str      wzr, [sp, #0x4c]
020f0bc0: f31700b9 str      w19, [sp, #0x14]
020f0bc4: e00315aa mov      x0, x21
020f0bc8: e1031faa mov      x1, xzr
020f0bcc: 955e2794 bl       #0x2ac8620 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$MoveNext
020f0bd0: 20afffb5 cbnz     x0, #0x20f01b4
020f0bd4: 03000014 b        #0x20f0be0
020f0bd8: e8031f2a mov      w8, wzr
020f0bdc: 06feff17 b        #0x20f03f4
020f0be0: e81f40b9 ldr      w8, [sp, #0x1c]
020f0be4: 1f010071 cmp      w8, #0
020f0be8: cc000054 b.gt     #0x20f0c00
020f0bec: 811640f9 ldr      x1, [x20, #0x28]
020f0bf0: a10400b4 cbz      x1, #0x20f0c84
020f0bf4: 281840b9 ldr      w8, [x1, #0x18]
020f0bf8: 1f050071 cmp      w8, #1
020f0bfc: aa010054 b.ge     #0x20f0c30
020f0c00: e81740f9 ldr      x8, [sp, #0x28]
020f0c04: 010140f9 ldr      x1, [x8]
020f0c08: e10300b4 cbz      x1, #0x20f0c84
020f0c0c: 281840b9 ldr      w8, [x1, #0x18]
020f0c10: 1f050071 cmp      w8, #1
020f0c14: ea000054 b.ge     #0x20f0c30
020f0c18: e81340f9 ldr      x8, [sp, #0x20]
020f0c1c: 010140f9 ldr      x1, [x8]
020f0c20: 210300b4 cbz      x1, #0x20f0c84
020f0c24: 281840b9 ldr      w8, [x1, #0x18]
020f0c28: 1f050071 cmp      w8, #1
020f0c2c: 8b010054 b.lt     #0x20f0c5c
020f0c30: e20740f9 ldr      x2, [sp, #8]
020f0c34: e00314aa mov      x0, x20
020f0c38: 861a0094 bl       #0x20f7650 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$GetRandomItemFromAreaScores
020f0c3c: fd7b52a9 ldp      x29, x30, [sp, #0x120]
020f0c40: f44f51a9 ldp      x20, x19, [sp, #0x110]
020f0c44: f65750a9 ldp      x22, x21, [sp, #0x100]
020f0c48: f85f4fa9 ldp      x24, x23, [sp, #0xf0]
020f0c4c: fa674ea9 ldp      x26, x25, [sp, #0xe0]
020f0c50: fc6f4da9 ldp      x28, x27, [sp, #0xd0]
020f0c54: ffc30491 add      sp, sp, #0x130
020f0c58: c0035fd6 ret      
020f0c5c: 138701b0 adrp     x19, #0x51d1000
020f0c60: 735e44f9 ldr      x19, [x19, #0x8b8]
020f0c64: 600240f9 ldr      x0, [x19]
020f0c68: 08e040b9 ldr      w8, [x0, #0xe0]
020f0c6c: 68000035 cbnz     w8, #0x20f0c78
020f0c70: e501bb97 bl       #0xfb1404
020f0c74: 600240f9 ldr      x0, [x19]
020f0c78: 085c40f9 ldr      x8, [x0, #0xb8]
020f0c7c: 000140f9 ldr      x0, [x8]
020f0c80: efffff17 b        #0x20f0c3c
020f0c84: e901bb97 bl       #0xfb1428
020f0c88: ea01bb97 bl       #0xfb1430
020f0c8c: f001bb97 bl       #0xfb144c
020f0c90: e1031faa mov      x1, xzr
020f0c94: d701bb97 bl       #0xfb13f0
