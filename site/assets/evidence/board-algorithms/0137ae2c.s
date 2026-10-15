# Royal.Scenes.Game.Mechanics.Matches.MatchManager$$CreateMatchesFromThrees
# Next metadata method 0x137b754, not a proven function boundary.
0137ae2c: fc6fbaa9 stp      x28, x27, [sp, #-0x60]!
0137ae30: fa6701a9 stp      x26, x25, [sp, #0x10]
0137ae34: f85f02a9 stp      x24, x23, [sp, #0x20]
0137ae38: f65703a9 stp      x22, x21, [sp, #0x30]
0137ae3c: f44f04a9 stp      x20, x19, [sp, #0x40]
0137ae40: fd7b05a9 stp      x29, x30, [sp, #0x50]
0137ae44: ffc306d1 sub      sp, sp, #0x1b0
0137ae48: f40f02d0 adrp     x20, #0x5578000
0137ae4c: 88324539 ldrb     w8, [x20, #0x14c]
0137ae50: f30300aa mov      x19, x0
0137ae54: 68030037 tbnz     w8, #0, #0x137aec0
0137ae58: 00f50190 adrp     x0, #0x521a000
0137ae5c: 007041f9 ldr      x0, [x0, #0x2e0]
0137ae60: 28d9f097 bl       #0xfb1300
0137ae64: c0f401f0 adrp     x0, #0x5215000
0137ae68: 004c44f9 ldr      x0, [x0, #0x898]
0137ae6c: 25d9f097 bl       #0xfb1300
0137ae70: a0f001b0 adrp     x0, #0x518f000
0137ae74: 006042f9 ldr      x0, [x0, #0x4c0]
0137ae78: 22d9f097 bl       #0xfb1300
0137ae7c: 80f501d0 adrp     x0, #0x522c000
0137ae80: 00f846f9 ldr      x0, [x0, #0xdf0]
0137ae84: 1fd9f097 bl       #0xfb1300
0137ae88: 80f401d0 adrp     x0, #0x520c000
0137ae8c: 00dc47f9 ldr      x0, [x0, #0xfb8]
0137ae90: 1cd9f097 bl       #0xfb1300
0137ae94: 20f301b0 adrp     x0, #0x51df000
0137ae98: 00d040f9 ldr      x0, [x0, #0x1a0]
0137ae9c: 19d9f097 bl       #0xfb1300
0137aea0: 60f10190 adrp     x0, #0x51a6000
0137aea4: 00b847f9 ldr      x0, [x0, #0xf70]
0137aea8: 16d9f097 bl       #0xfb1300
0137aeac: 40f101f0 adrp     x0, #0x51a5000
0137aeb0: 00e847f9 ldr      x0, [x0, #0xfd0]
0137aeb4: 13d9f097 bl       #0xfb1300
0137aeb8: 28008052 mov      w8, #1
0137aebc: 88320539 strb     w8, [x20, #0x14c]
0137aec0: e0630491 add      x0, sp, #0x118
0137aec4: 02138052 mov      w2, #0x98
0137aec8: e1031f2a mov      w1, wzr
0137aecc: d120e597 bl       #0xcc3210
0137aed0: 687a40b9 ldr      w8, [x19, #0x78]
0137aed4: 1f050071 cmp      w8, #1
0137aed8: eb300054 b.lt     #0x137b4f4
0137aedc: f9031f2a mov      w25, wzr
0137aee0: 7a008052 mov      w26, #3
0137aee4: 683640f9 ldr      x8, [x19, #0x68]
0137aee8: 084200b4 cbz      x8, #0x137b728
0137aeec: 091940b9 ldr      w9, [x8, #0x18]
0137aef0: 3f03096b cmp      w25, w9
0137aef4: e2420054 b.hs     #0x137b750
0137aef8: 357f4093 sxtw     x21, w25
0137aefc: 080d158b add      x8, x8, x21, lsl #3
0137af00: 141140f9 ldr      x20, [x8, #0x20]
0137af04: 344100b4 cbz      x20, #0x137b728
0137af08: e00314aa mov      x0, x20
0137af0c: e1031faa mov      x1, xzr
0137af10: 8e6ea294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137af14: a04000b4 cbz      x0, #0x137b728
0137af18: 000840f9 ldr      x0, [x0, #0x10]
0137af1c: 604000b4 cbz      x0, #0x137b728
0137af20: e1031faa mov      x1, xzr
0137af24: cf2b4f94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
0137af28: 004000b4 cbz      x0, #0x137b728
0137af2c: 683640f9 ldr      x8, [x19, #0x68]
0137af30: c83f00b4 cbz      x8, #0x137b728
0137af34: 091940b9 ldr      w9, [x8, #0x18]
0137af38: 3f03096b cmp      w25, w9
0137af3c: a2400054 b.hs     #0x137b750
0137af40: 080d158b add      x8, x8, x21, lsl #3
0137af44: 021840b9 ldr      w2, [x0, #0x18]
0137af48: 031140f9 ldr      x3, [x8, #0x20]
0137af4c: 21008052 mov      w1, #1
0137af50: e00313aa mov      x0, x19
0137af54: e4031faa mov      x4, xzr
0137af58: e5031faa mov      x5, xzr
0137af5c: e6031faa mov      x6, xzr
0137af60: 0d020094 bl       #0x137b794 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$AddPossibleMatchGroup
0137af64: 881240b9 ldr      w8, [x20, #0x10]
0137af68: c8290034 cbz      w8, #0x137b4a0
0137af6c: 687a40b9 ldr      w8, [x19, #0x78]
0137af70: 39070011 add      w25, w25, #1
0137af74: fb03192a mov      w27, w25
0137af78: 3f03086b cmp      w25, w8
0137af7c: 8a2b0054 b.ge     #0x137b4ec
0137af80: 683640f9 ldr      x8, [x19, #0x68]
0137af84: 283d00b4 cbz      x8, #0x137b728
0137af88: 091940b9 ldr      w9, [x8, #0x18]
0137af8c: 7f03096b cmp      w27, w9
0137af90: 023e0054 b.hs     #0x137b750
0137af94: 08cd3b8b add      x8, x8, w27, sxtw #3
0137af98: 151140f9 ldr      x21, [x8, #0x20]
0137af9c: 753c00b4 cbz      x21, #0x137b728
0137afa0: a81240b9 ldr      w8, [x21, #0x10]
0137afa4: 881e0034 cbz      w8, #0x137b374
0137afa8: 891240b9 ldr      w9, [x20, #0x10]
0137afac: 3f01086b cmp      w9, w8
0137afb0: 81010054 b.ne     #0x137afe0
0137afb4: e00314aa mov      x0, x20
0137afb8: e1031faa mov      x1, xzr
0137afbc: 636ea294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137afc0: f60300aa mov      x22, x0
0137afc4: e00315aa mov      x0, x21
0137afc8: e1031faa mov      x1, xzr
0137afcc: 746ea294 bl       #0x3c1699c ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Last
0137afd0: df0200eb cmp      x22, x0
0137afd4: a0180054 b.eq     #0x137b2e8
0137afd8: 891240b9 ldr      w9, [x20, #0x10]
0137afdc: a81240b9 ldr      w8, [x21, #0x10]
0137afe0: 3f01086b cmp      w9, w8
0137afe4: 81010054 b.ne     #0x137b014
0137afe8: e00314aa mov      x0, x20
0137afec: e1031faa mov      x1, xzr
0137aff0: 6b6ea294 bl       #0x3c1699c ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Last
0137aff4: f60300aa mov      x22, x0
0137aff8: e00315aa mov      x0, x21
0137affc: e1031faa mov      x1, xzr
0137b000: 526ea294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b004: df0200eb cmp      x22, x0
0137b008: c0180054 b.eq     #0x137b320
0137b00c: 891240b9 ldr      w9, [x20, #0x10]
0137b010: a81240b9 ldr      w8, [x21, #0x10]
0137b014: 3f01086b cmp      w9, w8
0137b018: c1070054 b.ne     #0x137b110
0137b01c: e00314aa mov      x0, x20
0137b020: e1031faa mov      x1, xzr
0137b024: 496ea294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b028: f60300aa mov      x22, x0
0137b02c: e00315aa mov      x0, x21
0137b030: e1031faa mov      x1, xzr
0137b034: 4f6ea294 bl       #0x3c16970 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Middle
0137b038: df0200eb cmp      x22, x0
0137b03c: 41010054 b.ne     #0x137b064
0137b040: e00314aa mov      x0, x20
0137b044: e1031faa mov      x1, xzr
0137b048: 4a6ea294 bl       #0x3c16970 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Middle
0137b04c: f60300aa mov      x22, x0
0137b050: e00315aa mov      x0, x21
0137b054: e1031faa mov      x1, xzr
0137b058: 516ea294 bl       #0x3c1699c ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Last
0137b05c: df0200eb cmp      x22, x0
0137b060: 40190054 b.eq     #0x137b388
0137b064: 881240b9 ldr      w8, [x20, #0x10]
0137b068: a91240b9 ldr      w9, [x21, #0x10]
0137b06c: 1f01096b cmp      w8, w9
0137b070: 21180054 b.ne     #0x137b374
0137b074: e00314aa mov      x0, x20
0137b078: e1031faa mov      x1, xzr
0137b07c: 3d6ea294 bl       #0x3c16970 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Middle
0137b080: f60300aa mov      x22, x0
0137b084: e00315aa mov      x0, x21
0137b088: e1031faa mov      x1, xzr
0137b08c: 2f6ea294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b090: df0200eb cmp      x22, x0
0137b094: 01170054 b.ne     #0x137b374
0137b098: e00314aa mov      x0, x20
0137b09c: e1031faa mov      x1, xzr
0137b0a0: 3f6ea294 bl       #0x3c1699c ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Last
0137b0a4: f60300aa mov      x22, x0
0137b0a8: e00315aa mov      x0, x21
0137b0ac: e1031faa mov      x1, xzr
0137b0b0: 306ea294 bl       #0x3c16970 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Middle
0137b0b4: df0200eb cmp      x22, x0
0137b0b8: e1150054 b.ne     #0x137b374
0137b0bc: 881240b9 ldr      w8, [x20, #0x10]
0137b0c0: e00314aa mov      x0, x20
0137b0c4: e1031faa mov      x1, xzr
0137b0c8: 1f050071 cmp      w8, #1
0137b0cc: 56179a1a cinc     w22, w26, eq
0137b0d0: 1e6ea294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b0d4: a03200b4 cbz      x0, #0x137b728
0137b0d8: 000840f9 ldr      x0, [x0, #0x10]
0137b0dc: 603200b4 cbz      x0, #0x137b728
0137b0e0: e1031faa mov      x1, xzr
0137b0e4: 5f2b4f94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
0137b0e8: 003200b4 cbz      x0, #0x137b728
0137b0ec: 171840b9 ldr      w23, [x0, #0x18]
0137b0f0: e00314aa mov      x0, x20
0137b0f4: e1031faa mov      x1, xzr
0137b0f8: 1e6ea294 bl       #0x3c16970 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Middle
0137b0fc: f80300aa mov      x24, x0
0137b100: e00314aa mov      x0, x20
0137b104: e1031faa mov      x1, xzr
0137b108: 256ea294 bl       #0x3c1699c ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Last
0137b10c: b3000014 b        #0x137b3d8
0137b110: e00314aa mov      x0, x20
0137b114: e1031faa mov      x1, xzr
0137b118: 0c6ea294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b11c: f60300aa mov      x22, x0
0137b120: e00315aa mov      x0, x21
0137b124: e1031faa mov      x1, xzr
0137b128: 086ea294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b12c: df0200eb cmp      x22, x0
0137b130: c00b0054 b.eq     #0x137b2a8
0137b134: e00314aa mov      x0, x20
0137b138: e1031faa mov      x1, xzr
0137b13c: 036ea294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b140: f60300aa mov      x22, x0
0137b144: e00315aa mov      x0, x21
0137b148: e1031faa mov      x1, xzr
0137b14c: 146ea294 bl       #0x3c1699c ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Last
0137b150: df0200eb cmp      x22, x0
0137b154: a00a0054 b.eq     #0x137b2a8
0137b158: 881240b9 ldr      w8, [x20, #0x10]
0137b15c: a91240b9 ldr      w9, [x21, #0x10]
0137b160: 1f01096b cmp      w8, w9
0137b164: c0f5ff54 b.eq     #0x137b01c
0137b168: e00314aa mov      x0, x20
0137b16c: e1031faa mov      x1, xzr
0137b170: 0b6ea294 bl       #0x3c1699c ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Last
0137b174: f60300aa mov      x22, x0
0137b178: e00315aa mov      x0, x21
0137b17c: e1031faa mov      x1, xzr
0137b180: 076ea294 bl       #0x3c1699c ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Last
0137b184: df0200eb cmp      x22, x0
0137b188: 80130054 b.eq     #0x137b3f8
0137b18c: e00314aa mov      x0, x20
0137b190: e1031faa mov      x1, xzr
0137b194: 026ea294 bl       #0x3c1699c ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Last
0137b198: f60300aa mov      x22, x0
0137b19c: e00315aa mov      x0, x21
0137b1a0: e1031faa mov      x1, xzr
0137b1a4: e96da294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b1a8: df0200eb cmp      x22, x0
0137b1ac: 60120054 b.eq     #0x137b3f8
0137b1b0: 881240b9 ldr      w8, [x20, #0x10]
0137b1b4: a91240b9 ldr      w9, [x21, #0x10]
0137b1b8: 1f01096b cmp      w8, w9
0137b1bc: 00f3ff54 b.eq     #0x137b01c
0137b1c0: e00314aa mov      x0, x20
0137b1c4: e1031faa mov      x1, xzr
0137b1c8: ea6da294 bl       #0x3c16970 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Middle
0137b1cc: f60300aa mov      x22, x0
0137b1d0: e00315aa mov      x0, x21
0137b1d4: e1031faa mov      x1, xzr
0137b1d8: dc6da294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b1dc: df0200eb cmp      x22, x0
0137b1e0: 80120054 b.eq     #0x137b430
0137b1e4: e00314aa mov      x0, x20
0137b1e8: e1031faa mov      x1, xzr
0137b1ec: e16da294 bl       #0x3c16970 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Middle
0137b1f0: f60300aa mov      x22, x0
0137b1f4: e00315aa mov      x0, x21
0137b1f8: e1031faa mov      x1, xzr
0137b1fc: e86da294 bl       #0x3c1699c ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Last
0137b200: df0200eb cmp      x22, x0
0137b204: 60110054 b.eq     #0x137b430
0137b208: 881240b9 ldr      w8, [x20, #0x10]
0137b20c: a91240b9 ldr      w9, [x21, #0x10]
0137b210: 1f01096b cmp      w8, w9
0137b214: 40f0ff54 b.eq     #0x137b01c
0137b218: e00314aa mov      x0, x20
0137b21c: e1031faa mov      x1, xzr
0137b220: ca6da294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b224: f60300aa mov      x22, x0
0137b228: e00315aa mov      x0, x21
0137b22c: e1031faa mov      x1, xzr
0137b230: d06da294 bl       #0x3c16970 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Middle
0137b234: df0200eb cmp      x22, x0
0137b238: c0110054 b.eq     #0x137b470
0137b23c: e00314aa mov      x0, x20
0137b240: e1031faa mov      x1, xzr
0137b244: d66da294 bl       #0x3c1699c ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Last
0137b248: f60300aa mov      x22, x0
0137b24c: e00315aa mov      x0, x21
0137b250: e1031faa mov      x1, xzr
0137b254: c76da294 bl       #0x3c16970 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Middle
0137b258: df0200eb cmp      x22, x0
0137b25c: a0100054 b.eq     #0x137b470
0137b260: 881240b9 ldr      w8, [x20, #0x10]
0137b264: a91240b9 ldr      w9, [x21, #0x10]
0137b268: 1f01096b cmp      w8, w9
0137b26c: 80edff54 b.eq     #0x137b01c
0137b270: e00314aa mov      x0, x20
0137b274: e1031faa mov      x1, xzr
0137b278: be6da294 bl       #0x3c16970 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Middle
0137b27c: f60300aa mov      x22, x0
0137b280: e00315aa mov      x0, x21
0137b284: e1031faa mov      x1, xzr
0137b288: ba6da294 bl       #0x3c16970 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Middle
0137b28c: df0200eb cmp      x22, x0
0137b290: 000f0054 b.eq     #0x137b470
0137b294: 881240b9 ldr      w8, [x20, #0x10]
0137b298: a91240b9 ldr      w9, [x21, #0x10]
0137b29c: 1f01096b cmp      w8, w9
0137b2a0: e0ebff54 b.eq     #0x137b01c
0137b2a4: 70ffff17 b        #0x137b064
0137b2a8: e00314aa mov      x0, x20
0137b2ac: e1031faa mov      x1, xzr
0137b2b0: a66da294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b2b4: a02300b4 cbz      x0, #0x137b728
0137b2b8: 000840f9 ldr      x0, [x0, #0x10]
0137b2bc: 602300b4 cbz      x0, #0x137b728
0137b2c0: e1031faa mov      x1, xzr
0137b2c4: e72a4f94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
0137b2c8: 002300b4 cbz      x0, #0x137b728
0137b2cc: 161840b9 ldr      w22, [x0, #0x18]
0137b2d0: e00314aa mov      x0, x20
0137b2d4: e1031faa mov      x1, xzr
0137b2d8: 9c6da294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b2dc: e50300aa mov      x5, x0
0137b2e0: c1008052 mov      w1, #6
0137b2e4: 1e000014 b        #0x137b35c
0137b2e8: e00314aa mov      x0, x20
0137b2ec: e1031faa mov      x1, xzr
0137b2f0: 966da294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b2f4: a02100b4 cbz      x0, #0x137b728
0137b2f8: 000840f9 ldr      x0, [x0, #0x10]
0137b2fc: 602100b4 cbz      x0, #0x137b728
0137b300: e1031faa mov      x1, xzr
0137b304: d72a4f94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
0137b308: 002100b4 cbz      x0, #0x137b728
0137b30c: 161840b9 ldr      w22, [x0, #0x18]
0137b310: e00314aa mov      x0, x20
0137b314: e1031faa mov      x1, xzr
0137b318: 8c6da294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b31c: 0e000014 b        #0x137b354
0137b320: e00314aa mov      x0, x20
0137b324: e1031faa mov      x1, xzr
0137b328: 886da294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b32c: e01f00b4 cbz      x0, #0x137b728
0137b330: 000840f9 ldr      x0, [x0, #0x10]
0137b334: a01f00b4 cbz      x0, #0x137b728
0137b338: e1031faa mov      x1, xzr
0137b33c: c92a4f94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
0137b340: 401f00b4 cbz      x0, #0x137b728
0137b344: 161840b9 ldr      w22, [x0, #0x18]
0137b348: e00314aa mov      x0, x20
0137b34c: e1031faa mov      x1, xzr
0137b350: 936da294 bl       #0x3c1699c ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Last
0137b354: e50300aa mov      x5, x0
0137b358: e1008052 mov      w1, #7
0137b35c: e00313aa mov      x0, x19
0137b360: e203162a mov      w2, w22
0137b364: e30314aa mov      x3, x20
0137b368: e40315aa mov      x4, x21
0137b36c: e6031faa mov      x6, xzr
0137b370: 09010094 bl       #0x137b794 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$AddPossibleMatchGroup
0137b374: 687a40b9 ldr      w8, [x19, #0x78]
0137b378: 7b070011 add      w27, w27, #1
0137b37c: 7f03086b cmp      w27, w8
0137b380: 0be0ff54 b.lt     #0x137af80
0137b384: 5a000014 b        #0x137b4ec
0137b388: 881240b9 ldr      w8, [x20, #0x10]
0137b38c: e00314aa mov      x0, x20
0137b390: e1031faa mov      x1, xzr
0137b394: 1f050071 cmp      w8, #1
0137b398: 56179a1a cinc     w22, w26, eq
0137b39c: 6b6da294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b3a0: 401c00b4 cbz      x0, #0x137b728
0137b3a4: 000840f9 ldr      x0, [x0, #0x10]
0137b3a8: 001c00b4 cbz      x0, #0x137b728
0137b3ac: e1031faa mov      x1, xzr
0137b3b0: ac2a4f94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
0137b3b4: a01b00b4 cbz      x0, #0x137b728
0137b3b8: 171840b9 ldr      w23, [x0, #0x18]
0137b3bc: e00314aa mov      x0, x20
0137b3c0: e1031faa mov      x1, xzr
0137b3c4: 616da294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b3c8: f80300aa mov      x24, x0
0137b3cc: e00314aa mov      x0, x20
0137b3d0: e1031faa mov      x1, xzr
0137b3d4: 676da294 bl       #0x3c16970 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Middle
0137b3d8: e60300aa mov      x6, x0
0137b3dc: e00313aa mov      x0, x19
0137b3e0: e103162a mov      w1, w22
0137b3e4: e203172a mov      w2, w23
0137b3e8: e30314aa mov      x3, x20
0137b3ec: e40315aa mov      x4, x21
0137b3f0: e50318aa mov      x5, x24
0137b3f4: dfffff17 b        #0x137b370
0137b3f8: e00314aa mov      x0, x20
0137b3fc: e1031faa mov      x1, xzr
0137b400: 526da294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b404: 201900b4 cbz      x0, #0x137b728
0137b408: 000840f9 ldr      x0, [x0, #0x10]
0137b40c: e01800b4 cbz      x0, #0x137b728
0137b410: e1031faa mov      x1, xzr
0137b414: 932a4f94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
0137b418: 801800b4 cbz      x0, #0x137b728
0137b41c: 161840b9 ldr      w22, [x0, #0x18]
0137b420: e00314aa mov      x0, x20
0137b424: e1031faa mov      x1, xzr
0137b428: 5d6da294 bl       #0x3c1699c ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Last
0137b42c: acffff17 b        #0x137b2dc
0137b430: e00314aa mov      x0, x20
0137b434: e1031faa mov      x1, xzr
0137b438: 446da294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b43c: 601700b4 cbz      x0, #0x137b728
0137b440: 000840f9 ldr      x0, [x0, #0x10]
0137b444: 201700b4 cbz      x0, #0x137b728
0137b448: e1031faa mov      x1, xzr
0137b44c: 852a4f94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
0137b450: c01600b4 cbz      x0, #0x137b728
0137b454: 161840b9 ldr      w22, [x0, #0x18]
0137b458: e00314aa mov      x0, x20
0137b45c: e1031faa mov      x1, xzr
0137b460: 446da294 bl       #0x3c16970 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$Middle
0137b464: e50300aa mov      x5, x0
0137b468: a1008052 mov      w1, #5
0137b46c: bcffff17 b        #0x137b35c
0137b470: e00314aa mov      x0, x20
0137b474: e1031faa mov      x1, xzr
0137b478: 346da294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b47c: 601500b4 cbz      x0, #0x137b728
0137b480: 000840f9 ldr      x0, [x0, #0x10]
0137b484: 201500b4 cbz      x0, #0x137b728
0137b488: e1031faa mov      x1, xzr
0137b48c: 752a4f94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
0137b490: c01400b4 cbz      x0, #0x137b728
0137b494: 161840b9 ldr      w22, [x0, #0x18]
0137b498: e00315aa mov      x0, x21
0137b49c: f0ffff17 b        #0x137b45c
0137b4a0: e00314aa mov      x0, x20
0137b4a4: e1031faa mov      x1, xzr
0137b4a8: 286da294 bl       #0x3c16948 ; Royal.Scenes.Game.Mechanics.Matches.TempMatch$$First
0137b4ac: e01300b4 cbz      x0, #0x137b728
0137b4b0: 000840f9 ldr      x0, [x0, #0x10]
0137b4b4: a01300b4 cbz      x0, #0x137b728
0137b4b8: e1031faa mov      x1, xzr
0137b4bc: 692a4f94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
0137b4c0: 401300b4 cbz      x0, #0x137b728
0137b4c4: 021840b9 ldr      w2, [x0, #0x18]
0137b4c8: 41008052 mov      w1, #2
0137b4cc: e00313aa mov      x0, x19
0137b4d0: e30314aa mov      x3, x20
0137b4d4: e4031faa mov      x4, xzr
0137b4d8: e5031faa mov      x5, xzr
0137b4dc: e6031faa mov      x6, xzr
0137b4e0: ad000094 bl       #0x137b794 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$AddPossibleMatchGroup
0137b4e4: 687a40b9 ldr      w8, [x19, #0x78]
0137b4e8: 39070011 add      w25, w25, #1
0137b4ec: 3f03086b cmp      w25, w8
0137b4f0: abcfff54 b.lt     #0x137aee4
0137b4f4: 687e40b9 ldr      w8, [x19, #0x7c]
0137b4f8: a8110034 cbz      w8, #0x137b72c
0137b4fc: e00313aa mov      x0, x19
0137b500: f3000094 bl       #0x137b8cc ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$SortPossibleMatchGroups
0137b504: 687e40b9 ldr      w8, [x19, #0x7c]
0137b508: 1f050071 cmp      w8, #1
0137b50c: 2b070054 b.lt     #0x137b5f0
0137b510: d8f401d0 adrp     x24, #0x5215000
0137b514: 59f101f0 adrp     x25, #0x51a6000
0137b518: faf401f0 adrp     x26, #0x521a000
0137b51c: 5bf101d0 adrp     x27, #0x51a5000
0137b520: 184f44f9 ldr      x24, [x24, #0x898]
0137b524: 39bb47f9 ldr      x25, [x25, #0xf70]
0137b528: 5a7341f9 ldr      x26, [x26, #0x2e0]
0137b52c: 7beb47f9 ldr      x27, [x27, #0xfd0]
0137b530: f7031faa mov      x23, xzr
0137b534: 683a40f9 ldr      x8, [x19, #0x70]
0137b538: 880f00b4 cbz      x8, #0x137b728
0137b53c: 091940b9 ldr      w9, [x8, #0x18]
0137b540: ff02096b cmp      w23, w9
0137b544: 62100054 b.hs     #0x137b750
0137b548: 080d178b add      x8, x8, x23, lsl #3
0137b54c: 141140f9 ldr      x20, [x8, #0x20]
0137b550: d40e00b4 cbz      x20, #0x137b728
0137b554: 880e40f9 ldr      x8, [x20, #0x18]
0137b558: 880e00b4 cbz      x8, #0x137b728
0137b55c: 000340f9 ldr      x0, [x24]
0137b560: 150d40f9 ldr      x21, [x8, #0x18]
0137b564: add7f097 bl       #0xfb1418
0137b568: 000e00b4 cbz      x0, #0x137b728
0137b56c: 220340f9 ldr      x2, [x25]
0137b570: e10313aa mov      x1, x19
0137b574: e3031faa mov      x3, xzr
0137b578: f60300aa mov      x22, x0
0137b57c: cd2b5d94 bl       #0x2ac64b0 ; System.Func<object, bool>$$.ctor
0137b580: 420340f9 ldr      x2, [x26]
0137b584: e00315aa mov      x0, x21
0137b588: e10316aa mov      x1, x22
0137b58c: 14c82f94 bl       #0x1f6d5dc ; System.Linq.Enumerable$$Any<object>
0137b590: 80020037 tbnz     w0, #0, #0x137b5e0
0137b594: 881240f9 ldr      x8, [x20, #0x20]
0137b598: e80100b4 cbz      x8, #0x137b5d4
0137b59c: 000340f9 ldr      x0, [x24]
0137b5a0: 150d40f9 ldr      x21, [x8, #0x18]
0137b5a4: 9dd7f097 bl       #0xfb1418
0137b5a8: 000c00b4 cbz      x0, #0x137b728
0137b5ac: 620340f9 ldr      x2, [x27]
0137b5b0: e10313aa mov      x1, x19
0137b5b4: e3031faa mov      x3, xzr
0137b5b8: f60300aa mov      x22, x0
0137b5bc: bd2b5d94 bl       #0x2ac64b0 ; System.Func<object, bool>$$.ctor
0137b5c0: 420340f9 ldr      x2, [x26]
0137b5c4: e00315aa mov      x0, x21
0137b5c8: e10316aa mov      x1, x22
0137b5cc: 04c82f94 bl       #0x1f6d5dc ; System.Linq.Enumerable$$Any<object>
0137b5d0: 80000037 tbnz     w0, #0, #0x137b5e0
0137b5d4: e00313aa mov      x0, x19
0137b5d8: e10314aa mov      x1, x20
0137b5dc: 07010094 bl       #0x137b9f8 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$CreateAndAddMatchGroup
0137b5e0: 687e40b9 ldr      w8, [x19, #0x7c]
0137b5e4: f7060091 add      x23, x23, #1
0137b5e8: ff02086b cmp      w23, w8
0137b5ec: 4bfaff54 b.lt     #0x137b534
0137b5f0: 600a40f9 ldr      x0, [x19, #0x10]
0137b5f4: a00900b4 cbz      x0, #0x137b728
0137b5f8: 9bf501b0 adrp     x27, #0x522c000
0137b5fc: 9cf401b0 adrp     x28, #0x520c000
0137b600: 3df30190 adrp     x29, #0x51df000
0137b604: 7bfb46f9 ldr      x27, [x27, #0xdf0]
0137b608: 9cdf47f9 ldr      x28, [x28, #0xfb8]
0137b60c: bdd340f9 ldr      x29, [x29, #0x1a0]
0137b610: e8030291 add      x8, sp, #0x80
0137b614: f4031f2a mov      w20, wzr
0137b618: 15210091 add      x21, x8, #8
0137b61c: 081840b9 ldr      w8, [x0, #0x18]
0137b620: 9f02086b cmp      w20, w8
0137b624: 4a080054 b.ge     #0x137b72c
0137b628: 620340f9 ldr      x2, [x27]
0137b62c: e8030291 add      x8, sp, #0x80
0137b630: e103142a mov      w1, w20
0137b634: ef506a94 bl       #0x2e0f9f0 ; System.Collections.Generic.List<MatchGroup>$$get_Item
0137b638: e0630491 add      x0, sp, #0x118
0137b63c: e1030291 add      x1, sp, #0x80
0137b640: 02138052 mov      w2, #0x98
0137b644: e319e597 bl       #0xcc1dd0
0137b648: f6031f2a mov      w22, wzr
0137b64c: 800340f9 ldr      x0, [x28]
0137b650: 08e040b9 ldr      w8, [x0, #0xe0]
0137b654: 48000035 cbnz     w8, #0x137b65c
0137b658: 6bd7f097 bl       #0xfb1404
0137b65c: e0630491 add      x0, sp, #0x118
0137b660: 7cf2ff97 bl       #0x1378050 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$get_CellCount
0137b664: df02006b cmp      w22, w0
0137b668: aa050054 b.ge     #0x137b71c
0137b66c: 800340f9 ldr      x0, [x28]
0137b670: 08e040b9 ldr      w8, [x0, #0xe0]
0137b674: 48000035 cbnz     w8, #0x137b67c
0137b678: 63d7f097 bl       #0xfb1404
0137b67c: e0630491 add      x0, sp, #0x118
0137b680: e103162a mov      w1, w22
0137b684: 4bf3ff97 bl       #0x13783b0 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$GetCell
0137b688: 000500b4 cbz      x0, #0x137b728
0137b68c: 000840f9 ldr      x0, [x0, #0x10]
0137b690: c00400b4 cbz      x0, #0x137b728
0137b694: e1031faa mov      x1, xzr
0137b698: f2294f94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
0137b69c: 600400b4 cbz      x0, #0x137b728
0137b6a0: 080040f9 ldr      x8, [x0]
0137b6a4: a10340f9 ldr      x1, [x29]
0137b6a8: 0ab14439 ldrb     w10, [x8, #0x12c]
0137b6ac: 29b04439 ldrb     w9, [x1, #0x12c]
0137b6b0: 5f01096b cmp      w10, w9
0137b6b4: c3040054 b.lo     #0x137b74c
0137b6b8: 086540f9 ldr      x8, [x8, #0xc8]
0137b6bc: 080d098b add      x8, x8, x9, lsl #3
0137b6c0: 08815ff8 ldur     x8, [x8, #-8]
0137b6c4: 1f0101eb cmp      x8, x1
0137b6c8: 21040054 b.ne     #0x137b74c
0137b6cc: f71f41b9 ldr      w23, [sp, #0x11c]
0137b6d0: f81b41b9 ldr      w24, [sp, #0x118]
0137b6d4: f9634639 ldrb     w25, [sp, #0x198]
0137b6d8: 1ae00291 add      x26, x0, #0xb8
0137b6dc: e0030291 add      x0, sp, #0x80
0137b6e0: e1630491 add      x1, sp, #0x118
0137b6e4: 02138052 mov      w2, #0x98
0137b6e8: ba19e597 bl       #0xcc1dd0
0137b6ec: e0230091 add      x0, sp, #8
0137b6f0: 020f8052 mov      w2, #0x78
0137b6f4: e10315aa mov      x1, x21
0137b6f8: b619e597 bl       #0xcc1dd0
0137b6fc: e4230091 add      x4, sp, #8
0137b700: e0031aaa mov      x0, x26
0137b704: e103192a mov      w1, w25
0137b708: e203182a mov      w2, w24
0137b70c: e303172a mov      w3, w23
0137b710: e4f2ff97 bl       #0x13782a0 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$Init
0137b714: d6060011 add      w22, w22, #1
0137b718: cdffff17 b        #0x137b64c
0137b71c: 600a40f9 ldr      x0, [x19, #0x10]
0137b720: 94060011 add      w20, w20, #1
0137b724: c0f7ffb5 cbnz     x0, #0x137b61c
0137b728: 40d7f097 bl       #0xfb1428
0137b72c: ffc30691 add      sp, sp, #0x1b0
0137b730: fd7b45a9 ldp      x29, x30, [sp, #0x50]
0137b734: f44f44a9 ldp      x20, x19, [sp, #0x40]
0137b738: f65743a9 ldp      x22, x21, [sp, #0x30]
0137b73c: f85f42a9 ldp      x24, x23, [sp, #0x20]
0137b740: fa6741a9 ldp      x26, x25, [sp, #0x10]
0137b744: fc6fc6a8 ldp      x28, x27, [sp], #0x60
0137b748: c0035fd6 ret      
0137b74c: 1dd8f097 bl       #0xfb17c0
0137b750: 38d7f097 bl       #0xfb1430
