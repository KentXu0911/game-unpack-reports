# Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FillScores
# Next metadata method 0x20efcd0, not a proven function boundary.
020ef844: ffc301d1 sub      sp, sp, #0x70
020ef848: fc6f01a9 stp      x28, x27, [sp, #0x10]
020ef84c: fa6702a9 stp      x26, x25, [sp, #0x20]
020ef850: f85f03a9 stp      x24, x23, [sp, #0x30]
020ef854: f65704a9 stp      x22, x21, [sp, #0x40]
020ef858: f44f05a9 stp      x20, x19, [sp, #0x50]
020ef85c: fd7b06a9 stp      x29, x30, [sp, #0x60]
020ef860: 75a401d0 adrp     x21, #0x557d000
020ef864: a83e5539 ldrb     w8, [x21, #0x54f]
020ef868: f603022a mov      w22, w2
020ef86c: f303012a mov      w19, w1
020ef870: f40300aa mov      x20, x0
020ef874: 08030037 tbnz     w8, #0, #0x20ef8d4
020ef878: c08501b0 adrp     x0, #0x51a8000
020ef87c: 002447f9 ldr      x0, [x0, #0xe48]
020ef880: a006bb97 bl       #0xfb1300
020ef884: e0890190 adrp     x0, #0x522b000
020ef888: 005c42f9 ldr      x0, [x0, #0x4b8]
020ef88c: 9d06bb97 bl       #0xfb1300
020ef890: c0890190 adrp     x0, #0x5227000
020ef894: 00d846f9 ldr      x0, [x0, #0xdb0]
020ef898: 9a06bb97 bl       #0xfb1300
020ef89c: 208501b0 adrp     x0, #0x5194000
020ef8a0: 008846f9 ldr      x0, [x0, #0xd10]
020ef8a4: 9706bb97 bl       #0xfb1300
020ef8a8: 208901b0 adrp     x0, #0x5214000
020ef8ac: 003846f9 ldr      x0, [x0, #0xc70]
020ef8b0: 9406bb97 bl       #0xfb1300
020ef8b4: 20880190 adrp     x0, #0x51f3000
020ef8b8: 00e445f9 ldr      x0, [x0, #0xbc8]
020ef8bc: 9106bb97 bl       #0xfb1300
020ef8c0: 608601f0 adrp     x0, #0x51be000
020ef8c4: 001845f9 ldr      x0, [x0, #0xa30]
020ef8c8: 8e06bb97 bl       #0xfb1300
020ef8cc: 28008052 mov      w8, #1
020ef8d0: a83e1539 strb     w8, [x21, #0x54f]
020ef8d4: 95420191 add      x21, x20, #0x50
020ef8d8: e00315aa mov      x0, x21
020ef8dc: e1031faa mov      x1, xzr
020ef8e0: ff0700f9 str      xzr, [sp, #8]
020ef8e4: 65632794 bl       #0x2ac8678 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$Reset
020ef8e8: 805240f9 ldr      x0, [x20, #0xa0]
020ef8ec: a00000b4 cbz      x0, #0x20ef900
020ef8f0: 021840b9 ldr      w2, [x0, #0x18]
020ef8f4: e1031f2a mov      w1, wzr
020ef8f8: e3031faa mov      x3, xzr
020ef8fc: 56e21194 bl       #0x2568254 ; System.Array$$Clear
020ef900: e00315aa mov      x0, x21
020ef904: e1031faa mov      x1, xzr
020ef908: 46632794 bl       #0x2ac8620 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$MoveNext
020ef90c: c01c00b4 cbz      x0, #0x20efca4
020ef910: da8501b0 adrp     x26, #0x51a8000
020ef914: 7b8601f0 adrp     x27, #0x51be000
020ef918: 3d880190 adrp     x29, #0x51f3000
020ef91c: fc890190 adrp     x28, #0x522b000
020ef920: 5a2747f9 ldr      x26, [x26, #0xe48]
020ef924: 7b1b45f9 ldr      x27, [x27, #0xa30]
020ef928: bde745f9 ldr      x29, [x29, #0xbc8]
020ef92c: 9c5f42f9 ldr      x28, [x28, #0x4b8]
020ef930: d6020012 and      w22, w22, #1
020ef934: 806240f9 ldr      x0, [x20, #0xc0]
020ef938: 601c00b4 cbz      x0, #0x20efcc4
020ef93c: 021840b9 ldr      w2, [x0, #0x18]
020ef940: e1031f2a mov      w1, wzr
020ef944: e3031faa mov      x3, xzr
020ef948: 43e21194 bl       #0x2568254 ; System.Array$$Clear
020ef94c: 973240f9 ldr      x23, [x20, #0x60]
020ef950: b71b00b4 cbz      x23, #0x20efcc4
020ef954: e00317aa mov      x0, x23
020ef958: e1031faa mov      x1, xzr
020ef95c: 72672794 bl       #0x2ac9724 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsNormalCell
020ef960: e0180036 tbz      w0, #0, #0x20efc7c
020ef964: e06240f9 ldr      x0, [x23, #0xc0]
020ef968: e01a00b4 cbz      x0, #0x20efcc4
020ef96c: e1031faa mov      x1, xzr
020ef970: d2732794 bl       #0x2acc8b8 ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$HasPropellerBlockingItem
020ef974: 40180037 tbnz     w0, #0, #0x20efc7c
020ef978: e05a40f9 ldr      x0, [x23, #0xb0]
020ef97c: 401a00b4 cbz      x0, #0x20efcc4
020ef980: e103132a mov      w1, w19
020ef984: e203162a mov      w2, w22
020ef988: e3031faa mov      x3, xzr
020ef98c: e4031faa mov      x4, xzr
020ef990: 157e2794 bl       #0x2acf1e4 ; Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$GetScore
020ef994: f903002a mov      w25, w0
020ef998: e00314aa mov      x0, x20
020ef99c: e10317aa mov      x1, x23
020ef9a0: f50e0094 bl       #0x20f3574 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$ShouldAddToSingleTargetScore
020ef9a4: c0160036 tbz      w0, #0, #0x20efc7c
020ef9a8: 802640f9 ldr      x0, [x20, #0x48]
020ef9ac: c01800b4 cbz      x0, #0x20efcc4
020ef9b0: e1031faa mov      x1, xzr
020ef9b4: f803194b neg      w24, w25
020ef9b8: 49acfd97 bl       #0x205aadc ; Royal.Player.Context.Units.LevelManager$$IsThereBottomCollectInLevel
020ef9bc: 600c0036 tbz      w0, #0, #0x20efb48
020ef9c0: e003132a mov      w0, w19
020ef9c4: e1031faa mov      x1, xzr
020ef9c8: dd534a94 bl       #0x338493c ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsSingleExploderStrategy
020ef9cc: e00b0036 tbz      w0, #0, #0x20efb48
020ef9d0: e06240f9 ldr      x0, [x23, #0xc0]
020ef9d4: 801700b4 cbz      x0, #0x20efcc4
020ef9d8: e1031faa mov      x1, xzr
020ef9dc: 1c682794 bl       #0x2ac9a4c ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$HasAboveItem
020ef9e0: c0020036 tbz      w0, #0, #0x20efa38
020ef9e4: e06240f9 ldr      x0, [x23, #0xc0]
020ef9e8: e01600b4 cbz      x0, #0x20efcc4
020ef9ec: e1031faa mov      x1, xzr
020ef9f0: ed692794 bl       #0x2aca1a4 ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$GetTopMostAboveItem
020ef9f4: a00a00b4 cbz      x0, #0x20efb48
020ef9f8: 080040f9 ldr      x8, [x0]
020ef9fc: 490340f9 ldr      x9, [x26]
020efa00: 0bb14439 ldrb     w11, [x8, #0x12c]
020efa04: 2ab14439 ldrb     w10, [x9, #0x12c]
020efa08: 7f010a6b cmp      w11, w10
020efa0c: e3090054 b.lo     #0x20efb48
020efa10: 0b6540f9 ldr      x11, [x8, #0xc8]
020efa14: 6a0d0a8b add      x10, x11, x10, lsl #3
020efa18: 4a815ff8 ldur     x10, [x10, #-8]
020efa1c: 5f0109eb cmp      x10, x9
020efa20: 41090054 b.ne     #0x20efb48
020efa24: 097542f9 ldr      x9, [x8, #0x4e8]
020efa28: 017942f9 ldr      x1, [x8, #0x4f0]
020efa2c: 20013fd6 blr      x9
020efa30: 1f040071 cmp      w0, #1
020efa34: ac080054 b.gt     #0x20efb48
020efa38: e00a40f9 ldr      x0, [x23, #0x10]
020efa3c: 401400b4 cbz      x0, #0x20efcc4
020efa40: e1031faa mov      x1, xzr
020efa44: 0e591994 bl       #0x2745e7c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasCurrentItem
020efa48: 00080036 tbz      w0, #0, #0x20efb48
020efa4c: e00317aa mov      x0, x23
020efa50: e1031faa mov      x1, xzr
020efa54: fc031daa mov      x28, x29
020efa58: fd031aaa mov      x29, x26
020efa5c: 01642794 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
020efa60: e86240f9 ldr      x8, [x23, #0xc0]
020efa64: 081300b4 cbz      x8, #0x20efcc4
020efa68: fa0300aa mov      x26, x0
020efa6c: e00308aa mov      x0, x8
020efa70: e1031faa mov      x1, xzr
020efa74: f6672794 bl       #0x2ac9a4c ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$HasAboveItem
020efa78: 60000036 tbz      w0, #0, #0x20efa84
020efa7c: 7a0100b5 cbnz     x26, #0x20efaa8
020efa80: 91000014 b        #0x20efcc4
020efa84: 1a1200b4 cbz      x26, #0x20efcc4
020efa88: 480340f9 ldr      x8, [x26]
020efa8c: e30e40f9 ldr      x3, [x23, #0x18]
020efa90: 826240f9 ldr      x2, [x20, #0xc0]
020efa94: e0031aaa mov      x0, x26
020efa98: 091544f9 ldr      x9, [x8, #0x828]
020efa9c: 041944f9 ldr      x4, [x8, #0x830]
020efaa0: e1031f2a mov      w1, wzr
020efaa4: 20013fd6 blr      x9
020efaa8: 480340f9 ldr      x8, [x26]
020efaac: e0031aaa mov      x0, x26
020efab0: 09ad42f9 ldr      x9, [x8, #0x558]
020efab4: 01b142f9 ldr      x1, [x8, #0x560]
020efab8: 20013fd6 blr      x9
020efabc: a0020036 tbz      w0, #0, #0x20efb10
020efac0: 480340f9 ldr      x8, [x26]
020efac4: 610340f9 ldr      x1, [x27]
020efac8: 0ab14439 ldrb     w10, [x8, #0x12c]
020efacc: 29b04439 ldrb     w9, [x1, #0x12c]
020efad0: 5f01096b cmp      w10, w9
020efad4: a30f0054 b.lo     #0x20efcc8
020efad8: 086540f9 ldr      x8, [x8, #0xc8]
020efadc: 080d098b add      x8, x8, x9, lsl #3
020efae0: 08815ff8 ldur     x8, [x8, #-8]
020efae4: 1f0101eb cmp      x8, x1
020efae8: 010f0054 b.ne     #0x20efcc8
020efaec: 3f070071 cmp      w25, #1
020efaf0: 0b0d0054 b.lt     #0x20efc90
020efaf4: 48cb4239 ldrb     w8, [x26, #0xb2]
020efaf8: fa031daa mov      x26, x29
020efafc: fd031caa mov      x29, x28
020efb00: fc890190 adrp     x28, #0x522b000
020efb04: 9c5f42f9 ldr      x28, [x28, #0x4b8]
020efb08: 08010034 cbz      w8, #0x20efb28
020efb0c: 0f000014 b        #0x20efb48
020efb10: fa031daa mov      x26, x29
020efb14: fd031caa mov      x29, x28
020efb18: fc890190 adrp     x28, #0x522b000
020efb1c: 9c5f42f9 ldr      x28, [x28, #0x4b8]
020efb20: 3f070071 cmp      w25, #1
020efb24: 2b010054 b.lt     #0x20efb48
020efb28: 801a40f9 ldr      x0, [x20, #0x30]
020efb2c: c00c00b4 cbz      x0, #0x20efcc4
020efb30: e20e40f9 ldr      x2, [x23, #0x18]
020efb34: 816240f9 ldr      x1, [x20, #0xc0]
020efb38: e3031faa mov      x3, xzr
020efb3c: d4b01994 bl       #0x275be8c ; Royal.Scenes.Game.Levels.Units.CellGridManager$$GetBottomCollectSingleExploderScoreForClearedCells
020efb40: 2803000b add      w8, w25, w0
020efb44: f803084b neg      w24, w8
020efb48: 803640f9 ldr      x0, [x20, #0x68]
020efb4c: c00b00b4 cbz      x0, #0x20efcc4
020efb50: a30340f9 ldr      x3, [x29]
020efb54: e2230091 add      x2, sp, #8
020efb58: e103182a mov      w1, w24
020efb5c: a9fdd097 bl       #0x152f200 ; System.Collections.Generic.SortedDictionary<int, object>$$TryGetValue
020efb60: a0020036 tbz      w0, #0, #0x20efbb4
020efb64: e00740f9 ldr      x0, [sp, #8]
020efb68: e00a00b4 cbz      x0, #0x20efcc4
020efb6c: 0a1c40b9 ldr      w10, [x0, #0x1c]
020efb70: 080840f9 ldr      x8, [x0, #0x10]
020efb74: 890340f9 ldr      x9, [x28]
020efb78: 4a050011 add      w10, w10, #1
020efb7c: 0a1c00b9 str      w10, [x0, #0x1c]
020efb80: 280a00b4 cbz      x8, #0x20efcc4
020efb84: 0a1880b9 ldrsw    x10, [x0, #0x18]
020efb88: 0b1940b9 ldr      w11, [x8, #0x18]
020efb8c: 5f010b6b cmp      w10, w11
020efb90: 82040054 b.hs     #0x20efc20
020efb94: 49050011 add      w9, w10, #1
020efb98: 080d0a8b add      x8, x8, x10, lsl #3
020efb9c: 091800b9 str      w9, [x0, #0x18]
020efba0: 170d02f8 str      x23, [x8, #0x20]!
020efba4: e00308aa mov      x0, x8
020efba8: e10317aa mov      x1, x23
020efbac: c005bb97 bl       #0xfb12ac
020efbb0: 33000014 b        #0x20efc7c
020efbb4: 288501b0 adrp     x8, #0x5194000
020efbb8: 088946f9 ldr      x8, [x8, #0xd10]
020efbbc: 000140f9 ldr      x0, [x8]
020efbc0: 1606bb97 bl       #0xfb1418
020efbc4: 000800b4 cbz      x0, #0x20efcc4
020efbc8: c8890190 adrp     x8, #0x5227000
020efbcc: 08d946f9 ldr      x8, [x8, #0xdb0]
020efbd0: f90300aa mov      x25, x0
020efbd4: 010140f9 ldr      x1, [x8]
020efbd8: a9782394 bl       #0x29cde7c ; System.Collections.Generic.List<object>$$.ctor
020efbdc: 2a1f40b9 ldr      w10, [x25, #0x1c]
020efbe0: 280b40f9 ldr      x8, [x25, #0x10]
020efbe4: 890340f9 ldr      x9, [x28]
020efbe8: 4a050011 add      w10, w10, #1
020efbec: 2a1f00b9 str      w10, [x25, #0x1c]
020efbf0: a80600b4 cbz      x8, #0x20efcc4
020efbf4: 2a1b80b9 ldrsw    x10, [x25, #0x18]
020efbf8: 0b1940b9 ldr      w11, [x8, #0x18]
020efbfc: 5f010b6b cmp      w10, w11
020efc00: e2010054 b.hs     #0x20efc3c
020efc04: 49050011 add      w9, w10, #1
020efc08: 000d0a8b add      x0, x8, x10, lsl #3
020efc0c: 291b00b9 str      w9, [x25, #0x18]
020efc10: 170c02f8 str      x23, [x0, #0x20]!
020efc14: e10317aa mov      x1, x23
020efc18: a505bb97 bl       #0xfb12ac
020efc1c: 0f000014 b        #0x20efc58
020efc20: 281140f9 ldr      x8, [x9, #0x20]
020efc24: e10317aa mov      x1, x23
020efc28: 086140f9 ldr      x8, [x8, #0xc0]
020efc2c: 022d40f9 ldr      x2, [x8, #0x58]
020efc30: 480440f9 ldr      x8, [x2, #8]
020efc34: 00013fd6 blr      x8
020efc38: 11000014 b        #0x20efc7c
020efc3c: 281140f9 ldr      x8, [x9, #0x20]
020efc40: e00319aa mov      x0, x25
020efc44: e10317aa mov      x1, x23
020efc48: 086140f9 ldr      x8, [x8, #0xc0]
020efc4c: 022d40f9 ldr      x2, [x8, #0x58]
020efc50: 480440f9 ldr      x8, [x2, #8]
020efc54: 00013fd6 blr      x8
020efc58: f90700f9 str      x25, [sp, #8]
020efc5c: 803640f9 ldr      x0, [x20, #0x68]
020efc60: 200300b4 cbz      x0, #0x20efcc4
020efc64: 288901b0 adrp     x8, #0x5214000
020efc68: 083946f9 ldr      x8, [x8, #0xc70]
020efc6c: e103182a mov      w1, w24
020efc70: e20319aa mov      x2, x25
020efc74: 030140f9 ldr      x3, [x8]
020efc78: 73fcd097 bl       #0x152ee44 ; System.Collections.Generic.SortedDictionary<int, object>$$Add
020efc7c: e00315aa mov      x0, x21
020efc80: e1031faa mov      x1, xzr
020efc84: 67622794 bl       #0x2ac8620 ; Royal.Scenes.Game.Mechanics.Board.Grid.Iterator.GridIterator$$MoveNext
020efc88: 60e5ffb5 cbnz     x0, #0x20ef934
020efc8c: 06000014 b        #0x20efca4
020efc90: fa031daa mov      x26, x29
020efc94: fd031caa mov      x29, x28
020efc98: fc890190 adrp     x28, #0x522b000
020efc9c: 9c5f42f9 ldr      x28, [x28, #0x4b8]
020efca0: aaffff17 b        #0x20efb48
020efca4: fd7b46a9 ldp      x29, x30, [sp, #0x60]
020efca8: f44f45a9 ldp      x20, x19, [sp, #0x50]
020efcac: f65744a9 ldp      x22, x21, [sp, #0x40]
020efcb0: f85f43a9 ldp      x24, x23, [sp, #0x30]
020efcb4: fa6742a9 ldp      x26, x25, [sp, #0x20]
020efcb8: fc6f41a9 ldp      x28, x27, [sp, #0x10]
020efcbc: ffc30191 add      sp, sp, #0x70
020efcc0: c0035fd6 ret      
020efcc4: d905bb97 bl       #0xfb1428
020efcc8: e0031aaa mov      x0, x26
020efccc: bd06bb97 bl       #0xfb17c0
