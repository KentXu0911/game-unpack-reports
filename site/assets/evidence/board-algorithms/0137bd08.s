# Royal.Scenes.Game.Mechanics.Matches.MatchManager$$FindAndProcessExtensionCandidates
# Next metadata method 0x137c30c, not a proven function boundary.
0137bd08: fc6fbaa9 stp      x28, x27, [sp, #-0x60]!
0137bd0c: fa6701a9 stp      x26, x25, [sp, #0x10]
0137bd10: f85f02a9 stp      x24, x23, [sp, #0x20]
0137bd14: f65703a9 stp      x22, x21, [sp, #0x30]
0137bd18: f44f04a9 stp      x20, x19, [sp, #0x40]
0137bd1c: fd7b05a9 stp      x29, x30, [sp, #0x50]
0137bd20: ff830ed1 sub      sp, sp, #0x3a0
0137bd24: f30f02b0 adrp     x19, #0x5578000
0137bd28: 68524539 ldrb     w8, [x19, #0x154]
0137bd2c: f603032a mov      w22, w3
0137bd30: f40302aa mov      x20, x2
0137bd34: f50300aa mov      x21, x0
0137bd38: e11700b9 str      w1, [sp, #0x14]
0137bd3c: e8010037 tbnz     w8, #0, #0x137bd78
0137bd40: 20f40190 adrp     x0, #0x51ff000
0137bd44: 007447f9 ldr      x0, [x0, #0xee8]
0137bd48: 6ed5f097 bl       #0xfb1300
0137bd4c: 00f50190 adrp     x0, #0x521b000
0137bd50: 002444f9 ldr      x0, [x0, #0x848]
0137bd54: 6bd5f097 bl       #0xfb1300
0137bd58: 80f401b0 adrp     x0, #0x520c000
0137bd5c: 00dc47f9 ldr      x0, [x0, #0xfb8]
0137bd60: 68d5f097 bl       #0xfb1300
0137bd64: 20f30190 adrp     x0, #0x51df000
0137bd68: 00d040f9 ldr      x0, [x0, #0x1a0]
0137bd6c: 65d5f097 bl       #0xfb1300
0137bd70: 28008052 mov      w8, #1
0137bd74: 68520539 strb     w8, [x19, #0x154]
0137bd78: 98f401b0 adrp     x24, #0x520c000
0137bd7c: 3bf40190 adrp     x27, #0x51ff000
0137bd80: 18df47f9 ldr      x24, [x24, #0xfb8]
0137bd84: 7b7747f9 ldr      x27, [x27, #0xee8]
0137bd88: f7031f2a mov      w23, wzr
0137bd8c: f3031f2a mov      w19, wzr
0137bd90: ff7f01f9 str      xzr, [sp, #0x2f8]
0137bd94: ff7b01f9 str      xzr, [sp, #0x2f0]
0137bd98: 000340f9 ldr      x0, [x24]
0137bd9c: 08e040b9 ldr      w8, [x0, #0xe0]
0137bda0: 48000035 cbnz     w8, #0x137bda8
0137bda4: 98d5f097 bl       #0xfb1404
0137bda8: e00314aa mov      x0, x20
0137bdac: a9f0ff97 bl       #0x1378050 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$get_CellCount
0137bdb0: ff02006b cmp      w23, w0
0137bdb4: 6a090054 b.ge     #0x137bee0
0137bdb8: 000340f9 ldr      x0, [x24]
0137bdbc: 08e040b9 ldr      w8, [x0, #0xe0]
0137bdc0: 48000035 cbnz     w8, #0x137bdc8
0137bdc4: 90d5f097 bl       #0xfb1404
0137bdc8: e00314aa mov      x0, x20
0137bdcc: e103172a mov      w1, w23
0137bdd0: 78f1ff97 bl       #0x13783b0 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$GetCell
0137bdd4: f80300aa mov      x24, x0
0137bdd8: fc031faa mov      x28, xzr
0137bddc: 600340f9 ldr      x0, [x27]
0137bde0: 08e040b9 ldr      w8, [x0, #0xe0]
0137bde4: 68000035 cbnz     w8, #0x137bdf0
0137bde8: 87d5f097 bl       #0xfb1404
0137bdec: 600340f9 ldr      x0, [x27]
0137bdf0: 085c40f9 ldr      x8, [x0, #0xb8]
0137bdf4: 080540f9 ldr      x8, [x8, #8]
0137bdf8: 482800b4 cbz      x8, #0x137c300
0137bdfc: 091980b9 ldrsw    x9, [x8, #0x18]
0137be00: 9f0309eb cmp      x28, x9
0137be04: 4a060054 b.ge     #0x137becc
0137be08: 09e040b9 ldr      w9, [x0, #0xe0]
0137be0c: c9000035 cbnz     w9, #0x137be24
0137be10: 7dd5f097 bl       #0xfb1404
0137be14: 680340f9 ldr      x8, [x27]
0137be18: 085d40f9 ldr      x8, [x8, #0xb8]
0137be1c: 080540f9 ldr      x8, [x8, #8]
0137be20: 082700b4 cbz      x8, #0x137c300
0137be24: 091940b9 ldr      w9, [x8, #0x18]
0137be28: 9f0309eb cmp      x28, x9
0137be2c: c2260054 b.hs     #0x137c304
0137be30: 982600b4 cbz      x24, #0x137c300
0137be34: 001340f9 ldr      x0, [x24, #0x20]
0137be38: 402600b4 cbz      x0, #0x137c300
0137be3c: 08091c8b add      x8, x8, x28, lsl #2
0137be40: 192140b9 ldr      w25, [x8, #0x20]
0137be44: e2031faa mov      x2, xzr
0137be48: e103192a mov      w1, w25
0137be4c: baf16694 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
0137be50: fa0300aa mov      x26, x0
0137be54: e0630991 add      x0, sp, #0x258
0137be58: 02138052 mov      w2, #0x98
0137be5c: e10314aa mov      x1, x20
0137be60: dc17e597 bl       #0xcc1dd0
0137be64: c3020012 and      w3, w22, #1
0137be68: e2630991 add      x2, sp, #0x258
0137be6c: e00315aa mov      x0, x21
0137be70: e1031aaa mov      x1, x26
0137be74: 26010094 bl       #0x137c30c ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$CanBeExtensionCandidateToGroup
0137be78: 60020036 tbz      w0, #0, #0x137bec4
0137be7c: bd0e40f9 ldr      x29, [x21, #0x18]
0137be80: e0c30b91 add      x0, sp, #0x2f0
0137be84: e1031aaa mov      x1, x26
0137be88: ff7f01f9 str      xzr, [sp, #0x2f8]
0137be8c: fa7b01f9 str      x26, [sp, #0x2f0]
0137be90: 07d5f097 bl       #0xfb12ac
0137be94: f9fb02b9 str      w25, [sp, #0x2f8]
0137be98: 5d2300b4 cbz      x29, #0x137c300
0137be9c: a81b40b9 ldr      w8, [x29, #0x18]
0137bea0: 7f02086b cmp      w19, w8
0137bea4: 02230054 b.hs     #0x137c304
0137bea8: e0bfc03d ldr      q0, [sp, #0x2f0]
0137beac: 687e4093 sxtw     x8, w19
0137beb0: a013088b add      x0, x29, x8, lsl #4
0137beb4: e1031faa mov      x1, xzr
0137beb8: 000c823c str      q0, [x0, #0x20]!
0137bebc: fcd4f097 bl       #0xfb12ac
0137bec0: 73060011 add      w19, w19, #1
0137bec4: 9c070091 add      x28, x28, #1
0137bec8: c5ffff17 b        #0x137bddc
0137becc: 9df401b0 adrp     x29, #0x520c000
0137bed0: bddf47f9 ldr      x29, [x29, #0xfb8]
0137bed4: f7060011 add      w23, w23, #1
0137bed8: f8031daa mov      x24, x29
0137bedc: afffff17 b        #0x137bd98
0137bee0: 7f060071 cmp      w19, #1
0137bee4: 6b160054 b.lt     #0x137c1b0
0137bee8: fc031f2a mov      w28, wzr
0137beec: fb031faa mov      x27, xzr
0137bef0: 88f401b0 adrp     x8, #0x520c000
0137bef4: 08dd47f9 ldr      x8, [x8, #0xfb8]
0137bef8: 000140f9 ldr      x0, [x8]
0137befc: 08e040b9 ldr      w8, [x0, #0xe0]
0137bf00: 48000035 cbnz     w8, #0x137bf08
0137bf04: 40d5f097 bl       #0xfb1404
0137bf08: e00314aa mov      x0, x20
0137bf0c: 66f0ff97 bl       #0x13780a4 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$get_IsFull
0137bf10: 00150037 tbnz     w0, #0, #0x137c1b0
0137bf14: a80e40f9 ldr      x8, [x21, #0x18]
0137bf18: 481f00b4 cbz      x8, #0x137c300
0137bf1c: 091940b9 ldr      w9, [x8, #0x18]
0137bf20: 9f03096b cmp      w28, w9
0137bf24: 021f0054 b.hs     #0x137c304
0137bf28: 997f4093 sxtw     x25, w28
0137bf2c: 0811198b add      x8, x8, x25, lsl #4
0137bf30: 002940b9 ldr      w0, [x8, #0x28]
0137bf34: 171140f9 ldr      x23, [x8, #0x20]
0137bf38: e1031faa mov      x1, xzr
0137bf3c: 1e196794 bl       #0x2d423b4 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighborType$$OppositeNeighbor
0137bf40: 171e00b4 cbz      x23, #0x137c300
0137bf44: f803002a mov      w24, w0
0137bf48: e01240f9 ldr      x0, [x23, #0x20]
0137bf4c: a01d00b4 cbz      x0, #0x137c300
0137bf50: e103182a mov      w1, w24
0137bf54: e2031faa mov      x2, xzr
0137bf58: 77f16694 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
0137bf5c: 1f0000f1 cmp      x0, #0
0137bf60: 7b03809a csel     x27, x27, x0, eq
0137bf64: 200100b4 cbz      x0, #0x137bf88
0137bf68: db1c00b4 cbz      x27, #0x137c300
0137bf6c: 601340f9 ldr      x0, [x27, #0x20]
0137bf70: 801c00b4 cbz      x0, #0x137c300
0137bf74: e103182a mov      w1, w24
0137bf78: e2031faa mov      x2, xzr
0137bf7c: 6ef16694 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
0137bf80: f80300aa mov      x24, x0
0137bf84: 02000014 b        #0x137bf8c
0137bf88: f8031faa mov      x24, xzr
0137bf8c: e0030791 add      x0, sp, #0x1c0
0137bf90: 02138052 mov      w2, #0x98
0137bf94: e10314aa mov      x1, x20
0137bf98: 8e17e597 bl       #0xcc1dd0
0137bf9c: c3020012 and      w3, w22, #1
0137bfa0: e2030791 add      x2, sp, #0x1c0
0137bfa4: e00315aa mov      x0, x21
0137bfa8: e10318aa mov      x1, x24
0137bfac: 17010094 bl       #0x137c408 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$CanBeExtensionToGroup
0137bfb0: c0040036 tbz      w0, #0, #0x137c048
0137bfb4: 88f401b0 adrp     x8, #0x520c000
0137bfb8: 08dd47f9 ldr      x8, [x8, #0xfb8]
0137bfbc: 000140f9 ldr      x0, [x8]
0137bfc0: 08e040b9 ldr      w8, [x0, #0xe0]
0137bfc4: 48000035 cbnz     w8, #0x137bfcc
0137bfc8: 0fd5f097 bl       #0xfb1404
0137bfcc: e00314aa mov      x0, x20
0137bfd0: e10318aa mov      x1, x24
0137bfd4: 2bf1ff97 bl       #0x1378480 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$ContainsCell
0137bfd8: 40030037 tbnz     w0, #0, #0x137c040
0137bfdc: 381900b4 cbz      x24, #0x137c300
0137bfe0: 88f401b0 adrp     x8, #0x520c000
0137bfe4: 08dd47f9 ldr      x8, [x8, #0xfb8]
0137bfe8: fa031baa mov      x26, x27
0137bfec: bb3240f9 ldr      x27, [x21, #0x60]
0137bff0: 1d0b4329 ldp      w29, w2, [x24, #0x18]
0137bff4: 000140f9 ldr      x0, [x8]
0137bff8: 08e040b9 ldr      w8, [x0, #0xe0]
0137bffc: 88000035 cbnz     w8, #0x137c00c
0137c000: e21300b9 str      w2, [sp, #0x10]
0137c004: 00d5f097 bl       #0xfb1404
0137c008: e21340b9 ldr      w2, [sp, #0x10]
0137c00c: bb1700b4 cbz      x27, #0x137c300
0137c010: 83024239 ldrb     w3, [x20, #0x80]
0137c014: e0031baa mov      x0, x27
0137c018: e1031d2a mov      w1, w29
0137c01c: e4031faa mov      x4, xzr
0137c020: 447b9594 bl       #0x38dad30 ; Royal.Scenes.Game.Utils.VisitMatrix$$SetAsVisited
0137c024: e00314aa mov      x0, x20
0137c028: e10318aa mov      x1, x24
0137c02c: fbf0ff97 bl       #0x1378418 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$AddCell
0137c030: e00314aa mov      x0, x20
0137c034: 1cf0ff97 bl       #0x13780a4 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$get_IsFull
0137c038: c00b0037 tbnz     w0, #0, #0x137c1b0
0137c03c: fb031aaa mov      x27, x26
0137c040: 3a008052 mov      w26, #1
0137c044: 02000014 b        #0x137c04c
0137c048: fa031f2a mov      w26, wzr
0137c04c: a80e40f9 ldr      x8, [x21, #0x18]
0137c050: 881500b4 cbz      x8, #0x137c300
0137c054: 091940b9 ldr      w9, [x8, #0x18]
0137c058: 9f03096b cmp      w28, w9
0137c05c: 42150054 b.hs     #0x137c304
0137c060: e01240f9 ldr      x0, [x23, #0x20]
0137c064: e01400b4 cbz      x0, #0x137c300
0137c068: 0811198b add      x8, x8, x25, lsl #4
0137c06c: 012940b9 ldr      w1, [x8, #0x28]
0137c070: e2031faa mov      x2, xzr
0137c074: 30f16694 bl       #0x2d38534 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$Get
0137c078: f80300aa mov      x24, x0
0137c07c: e0a30491 add      x0, sp, #0x128
0137c080: 02138052 mov      w2, #0x98
0137c084: e10314aa mov      x1, x20
0137c088: 5217e597 bl       #0xcc1dd0
0137c08c: c3020012 and      w3, w22, #1
0137c090: e2a30491 add      x2, sp, #0x128
0137c094: e00315aa mov      x0, x21
0137c098: e10318aa mov      x1, x24
0137c09c: db000094 bl       #0x137c408 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$CanBeExtensionToGroup
0137c0a0: 80040036 tbz      w0, #0, #0x137c130
0137c0a4: 88f40190 adrp     x8, #0x520c000
0137c0a8: 08dd47f9 ldr      x8, [x8, #0xfb8]
0137c0ac: 000140f9 ldr      x0, [x8]
0137c0b0: 08e040b9 ldr      w8, [x0, #0xe0]
0137c0b4: 48000035 cbnz     w8, #0x137c0bc
0137c0b8: d3d4f097 bl       #0xfb1404
0137c0bc: e00314aa mov      x0, x20
0137c0c0: e10318aa mov      x1, x24
0137c0c4: eff0ff97 bl       #0x1378480 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$ContainsCell
0137c0c8: 60030037 tbnz     w0, #0, #0x137c134
0137c0cc: b81100b4 cbz      x24, #0x137c300
0137c0d0: 88f40190 adrp     x8, #0x520c000
0137c0d4: 08dd47f9 ldr      x8, [x8, #0xfb8]
0137c0d8: fd031baa mov      x29, x27
0137c0dc: bb3240f9 ldr      x27, [x21, #0x60]
0137c0e0: 1a674329 ldp      w26, w25, [x24, #0x18]
0137c0e4: 000140f9 ldr      x0, [x8]
0137c0e8: 08e040b9 ldr      w8, [x0, #0xe0]
0137c0ec: 48000035 cbnz     w8, #0x137c0f4
0137c0f0: c5d4f097 bl       #0xfb1404
0137c0f4: 7b1000b4 cbz      x27, #0x137c300
0137c0f8: 83024239 ldrb     w3, [x20, #0x80]
0137c0fc: e0031baa mov      x0, x27
0137c100: e1031a2a mov      w1, w26
0137c104: e203192a mov      w2, w25
0137c108: e4031faa mov      x4, xzr
0137c10c: 097b9594 bl       #0x38dad30 ; Royal.Scenes.Game.Utils.VisitMatrix$$SetAsVisited
0137c110: e00314aa mov      x0, x20
0137c114: e10318aa mov      x1, x24
0137c118: c0f0ff97 bl       #0x1378418 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$AddCell
0137c11c: e00314aa mov      x0, x20
0137c120: e1efff97 bl       #0x13780a4 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$get_IsFull
0137c124: fb031daa mov      x27, x29
0137c128: 60000036 tbz      w0, #0, #0x137c134
0137c12c: 21000014 b        #0x137c1b0
0137c130: ba030034 cbz      w26, #0x137c1a4
0137c134: 88f40190 adrp     x8, #0x520c000
0137c138: 08dd47f9 ldr      x8, [x8, #0xfb8]
0137c13c: 000140f9 ldr      x0, [x8]
0137c140: 08e040b9 ldr      w8, [x0, #0xe0]
0137c144: 48000035 cbnz     w8, #0x137c14c
0137c148: afd4f097 bl       #0xfb1404
0137c14c: e00314aa mov      x0, x20
0137c150: e10317aa mov      x1, x23
0137c154: cbf0ff97 bl       #0x1378480 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$ContainsCell
0137c158: 60020037 tbnz     w0, #0, #0x137c1a4
0137c15c: 88f40190 adrp     x8, #0x520c000
0137c160: 08dd47f9 ldr      x8, [x8, #0xfb8]
0137c164: ba3240f9 ldr      x26, [x21, #0x60]
0137c168: f9624329 ldp      w25, w24, [x23, #0x18]
0137c16c: 000140f9 ldr      x0, [x8]
0137c170: 08e040b9 ldr      w8, [x0, #0xe0]
0137c174: 48000035 cbnz     w8, #0x137c17c
0137c178: a3d4f097 bl       #0xfb1404
0137c17c: 3a0c00b4 cbz      x26, #0x137c300
0137c180: 83024239 ldrb     w3, [x20, #0x80]
0137c184: e0031aaa mov      x0, x26
0137c188: e103192a mov      w1, w25
0137c18c: e203182a mov      w2, w24
0137c190: e4031faa mov      x4, xzr
0137c194: e77a9594 bl       #0x38dad30 ; Royal.Scenes.Game.Utils.VisitMatrix$$SetAsVisited
0137c198: e00314aa mov      x0, x20
0137c19c: e10317aa mov      x1, x23
0137c1a0: 9ef0ff97 bl       #0x1378418 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$AddCell
0137c1a4: 9c070011 add      w28, w28, #1
0137c1a8: 7f021c6b cmp      w19, w28
0137c1ac: 21eaff54 b.ne     #0x137bef0
0137c1b0: 9df40190 adrp     x29, #0x520c000
0137c1b4: 13f301f0 adrp     x19, #0x51df000
0137c1b8: bddf47f9 ldr      x29, [x29, #0xfb8]
0137c1bc: 73d240f9 ldr      x19, [x19, #0x1a0]
0137c1c0: e8230c91 add      x8, sp, #0x308
0137c1c4: f6031f2a mov      w22, wzr
0137c1c8: 17210091 add      x23, x8, #8
0137c1cc: a00340f9 ldr      x0, [x29]
0137c1d0: 08e040b9 ldr      w8, [x0, #0xe0]
0137c1d4: 48000035 cbnz     w8, #0x137c1dc
0137c1d8: 8bd4f097 bl       #0xfb1404
0137c1dc: e00314aa mov      x0, x20
0137c1e0: 9cefff97 bl       #0x1378050 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$get_CellCount
0137c1e4: df02006b cmp      w22, w0
0137c1e8: 8a050054 b.ge     #0x137c298
0137c1ec: a00340f9 ldr      x0, [x29]
0137c1f0: 08e040b9 ldr      w8, [x0, #0xe0]
0137c1f4: 48000035 cbnz     w8, #0x137c1fc
0137c1f8: 83d4f097 bl       #0xfb1404
0137c1fc: e00314aa mov      x0, x20
0137c200: e103162a mov      w1, w22
0137c204: 6bf0ff97 bl       #0x13783b0 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$GetCell
0137c208: c00700b4 cbz      x0, #0x137c300
0137c20c: 000840f9 ldr      x0, [x0, #0x10]
0137c210: 800700b4 cbz      x0, #0x137c300
0137c214: e1031faa mov      x1, xzr
0137c218: 12274f94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
0137c21c: 200700b4 cbz      x0, #0x137c300
0137c220: 080040f9 ldr      x8, [x0]
0137c224: 610240f9 ldr      x1, [x19]
0137c228: 0ab14439 ldrb     w10, [x8, #0x12c]
0137c22c: 29b04439 ldrb     w9, [x1, #0x12c]
0137c230: 5f01096b cmp      w10, w9
0137c234: a3060054 b.lo     #0x137c308
0137c238: 086540f9 ldr      x8, [x8, #0xc8]
0137c23c: 080d098b add      x8, x8, x9, lsl #3
0137c240: 08815ff8 ldur     x8, [x8, #-8]
0137c244: 1f0101eb cmp      x8, x1
0137c248: 01060054 b.ne     #0x137c308
0137c24c: 98664029 ldp      w24, w25, [x20]
0137c250: 9a024239 ldrb     w26, [x20, #0x80]
0137c254: 1be00291 add      x27, x0, #0xb8
0137c258: e0230c91 add      x0, sp, #0x308
0137c25c: 02138052 mov      w2, #0x98
0137c260: e10314aa mov      x1, x20
0137c264: db16e597 bl       #0xcc1dd0
0137c268: e0c30291 add      x0, sp, #0xb0
0137c26c: 020f8052 mov      w2, #0x78
0137c270: e10317aa mov      x1, x23
0137c274: d716e597 bl       #0xcc1dd0
0137c278: e4c30291 add      x4, sp, #0xb0
0137c27c: e0031baa mov      x0, x27
0137c280: e1031a2a mov      w1, w26
0137c284: e203182a mov      w2, w24
0137c288: e303192a mov      w3, w25
0137c28c: 05f0ff97 bl       #0x13782a0 ; Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$Init
0137c290: d6060011 add      w22, w22, #1
0137c294: ceffff17 b        #0x137c1cc
0137c298: b50a40f9 ldr      x21, [x21, #0x10]
0137c29c: e0630091 add      x0, sp, #0x18
0137c2a0: 02138052 mov      w2, #0x98
0137c2a4: e10314aa mov      x1, x20
0137c2a8: ca16e597 bl       #0xcc1dd0
0137c2ac: b50200b4 cbz      x21, #0x137c300
0137c2b0: e8f401f0 adrp     x8, #0x521b000
0137c2b4: 082544f9 ldr      x8, [x8, #0x848]
0137c2b8: e0230c91 add      x0, sp, #0x308
0137c2bc: e1630091 add      x1, sp, #0x18
0137c2c0: 02138052 mov      w2, #0x98
0137c2c4: 140140f9 ldr      x20, [x8]
0137c2c8: c216e597 bl       #0xcc1dd0
0137c2cc: e11740b9 ldr      w1, [sp, #0x14]
0137c2d0: e2230c91 add      x2, sp, #0x308
0137c2d4: e00315aa mov      x0, x21
0137c2d8: e30314aa mov      x3, x20
0137c2dc: de4d6a94 bl       #0x2e0fa54 ; System.Collections.Generic.List<MatchGroup>$$set_Item
0137c2e0: ff830e91 add      sp, sp, #0x3a0
0137c2e4: fd7b45a9 ldp      x29, x30, [sp, #0x50]
0137c2e8: f44f44a9 ldp      x20, x19, [sp, #0x40]
0137c2ec: f65743a9 ldp      x22, x21, [sp, #0x30]
0137c2f0: f85f42a9 ldp      x24, x23, [sp, #0x20]
0137c2f4: fa6741a9 ldp      x26, x25, [sp, #0x10]
0137c2f8: fc6fc6a8 ldp      x28, x27, [sp], #0x60
0137c2fc: c0035fd6 ret      
0137c300: 4ad4f097 bl       #0xfb1428
0137c304: 4bd4f097 bl       #0xfb1430
0137c308: 2ed5f097 bl       #0xfb17c0
