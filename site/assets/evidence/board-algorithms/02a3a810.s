# Royal.Scenes.Game.Levels.Units.Touch.SwapAction$$PlayValidSwapAnimation
# Next metadata method 0x2a3b134, not a proven function boundary.
02a3a810: ff0306d1 sub      sp, sp, #0x180
02a3a814: fc6f12a9 stp      x28, x27, [sp, #0x120]
02a3a818: fa6713a9 stp      x26, x25, [sp, #0x130]
02a3a81c: f85f14a9 stp      x24, x23, [sp, #0x140]
02a3a820: f65715a9 stp      x22, x21, [sp, #0x150]
02a3a824: f44f16a9 stp      x20, x19, [sp, #0x160]
02a3a828: fd7b17a9 stp      x29, x30, [sp, #0x170]
02a3a82c: 355a01f0 adrp     x21, #0x5581000
02a3a830: b43d01d0 adrp     x20, #0x51f0000
02a3a834: a8ee7b39 ldrb     w8, [x21, #0xefb]
02a3a838: 94aa41f9 ldr      x20, [x20, #0x350]
02a3a83c: f30300aa mov      x19, x0
02a3a840: 28040037 tbnz     w8, #0, #0x2a3a8c4
02a3a844: 003c01b0 adrp     x0, #0x51bb000
02a3a848: 009c46f9 ldr      x0, [x0, #0xd38]
02a3a84c: adda9597 bl       #0xfb1300
02a3a850: 403e0190 adrp     x0, #0x5202000
02a3a854: 00c041f9 ldr      x0, [x0, #0x380]
02a3a858: aada9597 bl       #0xfb1300
02a3a85c: c03d01f0 adrp     x0, #0x51f5000
02a3a860: 002440f9 ldr      x0, [x0, #0x48]
02a3a864: a7da9597 bl       #0xfb1300
02a3a868: 803a01f0 adrp     x0, #0x518d000
02a3a86c: 00a844f9 ldr      x0, [x0, #0x950]
02a3a870: a4da9597 bl       #0xfb1300
02a3a874: 403b01f0 adrp     x0, #0x51a5000
02a3a878: 006445f9 ldr      x0, [x0, #0xac8]
02a3a87c: a1da9597 bl       #0xfb1300
02a3a880: 203c0190 adrp     x0, #0x51be000
02a3a884: 001845f9 ldr      x0, [x0, #0xa30]
02a3a888: 9eda9597 bl       #0xfb1300
02a3a88c: a03d0190 adrp     x0, #0x51ee000
02a3a890: 00c444f9 ldr      x0, [x0, #0x988]
02a3a894: 9bda9597 bl       #0xfb1300
02a3a898: a03d01d0 adrp     x0, #0x51f0000
02a3a89c: 00a841f9 ldr      x0, [x0, #0x350]
02a3a8a0: 98da9597 bl       #0xfb1300
02a3a8a4: 20400190 adrp     x0, #0x523e000
02a3a8a8: 007841f9 ldr      x0, [x0, #0x2f0]
02a3a8ac: 95da9597 bl       #0xfb1300
02a3a8b0: 803f01f0 adrp     x0, #0x522d000
02a3a8b4: 004c47f9 ldr      x0, [x0, #0xe98]
02a3a8b8: 92da9597 bl       #0xfb1300
02a3a8bc: 28008052 mov      w8, #1
02a3a8c0: a8ee3b39 strb     w8, [x21, #0xefb]
02a3a8c4: 800240f9 ldr      x0, [x20]
02a3a8c8: 00e4006f movi     v0.2d, #0000000000000000
02a3a8cc: ff8b00f9 str      xzr, [sp, #0x110]
02a3a8d0: e08307ad stp      q0, q0, [sp, #0xf0]
02a3a8d4: e03b803d str      q0, [sp, #0xe0]
02a3a8d8: d0da9597 bl       #0xfb1418
02a3a8dc: 004200b4 cbz      x0, #0x2a3b11c
02a3a8e0: 553e0190 adrp     x21, #0x5202000
02a3a8e4: b5c241f9 ldr      x21, [x21, #0x380]
02a3a8e8: e1031faa mov      x1, xzr
02a3a8ec: f40300aa mov      x20, x0
02a3a8f0: 41e3e097 bl       #0x22735f4 ; System.Object$$.ctor
02a3a8f4: e00314aa mov      x0, x20
02a3a8f8: 130c03f8 str      x19, [x0, #0x30]!
02a3a8fc: e10313aa mov      x1, x19
02a3a900: 6bda9597 bl       #0xfb12ac
02a3a904: a00240f9 ldr      x0, [x21]
02a3a908: 08e040b9 ldr      w8, [x0, #0xe0]
02a3a90c: 48000035 cbnz     w8, #0x2a3a914
02a3a910: bdda9597 bl       #0xfb1404
02a3a914: e0031faa mov      x0, xzr
02a3a918: 7695da97 bl       #0x20dfef0 ; Royal.Scenes.Game.Levels.Units.KingAnimation.KingAnimationStateManager$$get_Current
02a3a91c: 004000b4 cbz      x0, #0x2a3b11c
02a3a920: e1031faa mov      x1, xzr
02a3a924: e197da97 bl       #0x20e08a8 ; Royal.Scenes.Game.Levels.Units.KingAnimation.KingAnimationStateManager$$ClearSinglePropellerWinCalculationData
02a3a928: 602240f9 ldr      x0, [x19, #0x40]
02a3a92c: 803f00b4 cbz      x0, #0x2a3b11c
02a3a930: 68a100b0 adrp     x8, #0x3e67000
02a3a934: 003d44bd ldr      s0, [x8, #0x43c]
02a3a938: c11f8052 mov      w1, #0xfe
02a3a93c: e2031faa mov      x2, xzr
02a3a940: 64170e94 bl       #0x2dc06d0 ; Royal.Scenes.Game.Levels.Units.Sfx.GameSfxManager$$PlaySfx
02a3a944: 683a40f9 ldr      x8, [x19, #0x70]
02a3a948: a83e00b4 cbz      x8, #0x2a3b11c
02a3a94c: 000940f9 ldr      x0, [x8, #0x10]
02a3a950: 603e00b4 cbz      x0, #0x2a3b11c
02a3a954: e1031faa mov      x1, xzr
02a3a958: 422df497 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
02a3a95c: f50314aa mov      x21, x20
02a3a960: a08e02f8 str      x0, [x21, #0x28]!
02a3a964: e10300aa mov      x1, x0
02a3a968: e00315aa mov      x0, x21
02a3a96c: 50da9597 bl       #0xfb12ac
02a3a970: 683640f9 ldr      x8, [x19, #0x68]
02a3a974: 483d00b4 cbz      x8, #0x2a3b11c
02a3a978: 000940f9 ldr      x0, [x8, #0x10]
02a3a97c: 003d00b4 cbz      x0, #0x2a3b11c
02a3a980: e1031faa mov      x1, xzr
02a3a984: 372df497 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
02a3a988: f60314aa mov      x22, x20
02a3a98c: c00e01f8 str      x0, [x22, #0x10]!
02a3a990: e10300aa mov      x1, x0
02a3a994: e00316aa mov      x0, x22
02a3a998: 45da9597 bl       #0xfb12ac
02a3a99c: 603240f9 ldr      x0, [x19, #0x60]
02a3a9a0: e03b00b4 cbz      x0, #0x2a3b11c
02a3a9a4: 383c0190 adrp     x24, #0x51be000
02a3a9a8: 181b45f9 ldr      x24, [x24, #0xa30]
02a3a9ac: 61008052 mov      w1, #3
02a3a9b0: e2031faa mov      x2, xzr
02a3a9b4: 3480d897 bl       #0x205aa84 ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
02a3a9b8: 60090036 tbz      w0, #0, #0x2a3aae4
02a3a9bc: 603640f9 ldr      x0, [x19, #0x68]
02a3a9c0: e03a00b4 cbz      x0, #0x2a3b11c
02a3a9c4: e1031faa mov      x1, xzr
02a3a9c8: f9230391 add      x25, sp, #0xc8
02a3a9cc: cf440294 bl       #0x2acbd08 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$HasJellyView
02a3a9d0: 7aa100b0 adrp     x26, #0x3e67000
02a3a9d4: 00040036 tbz      w0, #0, #0x2a3aa54
02a3a9d8: 603a40f9 ldr      x0, [x19, #0x70]
02a3a9dc: 003a00b4 cbz      x0, #0x2a3b11c
02a3a9e0: e1031faa mov      x1, xzr
02a3a9e4: c9440294 bl       #0x2acbd08 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$HasJellyView
02a3a9e8: 60030037 tbnz     w0, #0, #0x2a3aa54
02a3a9ec: 688a4639 ldrb     w8, [x19, #0x1a2]
02a3a9f0: 682d0034 cbz      w8, #0x2a3af9c
02a3a9f4: 683a40f9 ldr      x8, [x19, #0x70]
02a3a9f8: 283900b4 cbz      x8, #0x2a3b11c
02a3a9fc: 693640f9 ldr      x9, [x19, #0x68]
02a3aa00: e93800b4 cbz      x9, #0x2a3b11c
02a3aa04: 200d40f9 ldr      x0, [x9, #0x18]
02a3aa08: 418f44bd ldr      s1, [x26, #0x48c]
02a3aa0c: 176140f9 ldr      x23, [x8, #0xc0]
02a3aa10: e8230391 add      x8, sp, #0xc8
02a3aa14: e003271e fmov     s0, wzr
02a3aa18: e1031faa mov      x1, xzr
02a3aa1c: bba8a497 bl       #0x1364d08 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.JellyItem.View.JellySpreadData$$CreateOriginSpreading
02a3aa20: 2003c03d ldr      q0, [x25]
02a3aa24: e86f40f9 ldr      x8, [sp, #0xd8]
02a3aa28: e017803d str      q0, [sp, #0x50]
02a3aa2c: e83300f9 str      x8, [sp, #0x60]
02a3aa30: 773700b4 cbz      x23, #0x2a3b11c
02a3aa34: e017c03d ldr      q0, [sp, #0x50]
02a3aa38: e83340f9 ldr      x8, [sp, #0x60]
02a3aa3c: e1c30291 add      x1, sp, #0xb0
02a3aa40: e00317aa mov      x0, x23
02a3aa44: e2031faa mov      x2, xzr
02a3aa48: e02f803d str      q0, [sp, #0xb0]
02a3aa4c: e86300f9 str      x8, [sp, #0xc0]
02a3aa50: 75620294 bl       #0x2ad3424 ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$TryActivateJelly
02a3aa54: 603a40f9 ldr      x0, [x19, #0x70]
02a3aa58: 203600b4 cbz      x0, #0x2a3b11c
02a3aa5c: e1031faa mov      x1, xzr
02a3aa60: aa440294 bl       #0x2acbd08 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$HasJellyView
02a3aa64: 00040036 tbz      w0, #0, #0x2a3aae4
02a3aa68: 603640f9 ldr      x0, [x19, #0x68]
02a3aa6c: 803500b4 cbz      x0, #0x2a3b11c
02a3aa70: e1031faa mov      x1, xzr
02a3aa74: a5440294 bl       #0x2acbd08 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$HasJellyView
02a3aa78: 60030037 tbnz     w0, #0, #0x2a3aae4
02a3aa7c: 682a4439 ldrb     w8, [x19, #0x10a]
02a3aa80: a82a0034 cbz      w8, #0x2a3afd4
02a3aa84: 683640f9 ldr      x8, [x19, #0x68]
02a3aa88: a83400b4 cbz      x8, #0x2a3b11c
02a3aa8c: 693a40f9 ldr      x9, [x19, #0x70]
02a3aa90: 693400b4 cbz      x9, #0x2a3b11c
02a3aa94: 200d40f9 ldr      x0, [x9, #0x18]
02a3aa98: 418f44bd ldr      s1, [x26, #0x48c]
02a3aa9c: 176140f9 ldr      x23, [x8, #0xc0]
02a3aaa0: e8230391 add      x8, sp, #0xc8
02a3aaa4: e003271e fmov     s0, wzr
02a3aaa8: e1031faa mov      x1, xzr
02a3aaac: 97a8a497 bl       #0x1364d08 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.JellyItem.View.JellySpreadData$$CreateOriginSpreading
02a3aab0: 2003c03d ldr      q0, [x25]
02a3aab4: e86f40f9 ldr      x8, [sp, #0xd8]
02a3aab8: e017803d str      q0, [sp, #0x50]
02a3aabc: e83300f9 str      x8, [sp, #0x60]
02a3aac0: f73200b4 cbz      x23, #0x2a3b11c
02a3aac4: e017c03d ldr      q0, [sp, #0x50]
02a3aac8: e83340f9 ldr      x8, [sp, #0x60]
02a3aacc: e1430291 add      x1, sp, #0x90
02a3aad0: e00317aa mov      x0, x23
02a3aad4: e2031faa mov      x2, xzr
02a3aad8: e027803d str      q0, [sp, #0x90]
02a3aadc: e85300f9 str      x8, [sp, #0xa0]
02a3aae0: 51620294 bl       #0x2ad3424 ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$TryActivateJelly
02a3aae4: c00240f9 ldr      x0, [x22]
02a3aae8: a10240f9 ldr      x1, [x21]
02a3aaec: c2008052 mov      w2, #6
02a3aaf0: e3031faa mov      x3, xzr
02a3aaf4: a7ccf197 bl       #0x26add90 ; Royal.Scenes.Game.Levels.Units.Combo.ComboManager$$IsCombo
02a3aaf8: 80070036 tbz      w0, #0, #0x2a3abe8
02a3aafc: e8430191 add      x8, sp, #0x50
02a3ab00: 40008052 mov      w0, #2
02a3ab04: e1031faa mov      x1, xzr
02a3ab08: 68fc0b94 bl       #0x2d39ca8 ; Royal.Scenes.Game.Mechanics.Explode.Exploder$$Next
02a3ab0c: e84340f9 ldr      x8, [sp, #0x80]
02a3ab10: e10343ad ldp      q1, q0, [sp, #0x60]
02a3ab14: e217c03d ldr      q2, [sp, #0x50]
02a3ab18: e88b00f9 str      x8, [sp, #0x110]
02a3ab1c: e18307ad stp      q1, q0, [sp, #0xf0]
02a3ab20: e23b803d str      q2, [sp, #0xe0]
02a3ab24: 601a40f9 ldr      x0, [x19, #0x30]
02a3ab28: c10240f9 ldr      x1, [x22]
02a3ab2c: a20240f9 ldr      x2, [x21]
02a3ab30: e28702ad stp      q2, q1, [sp, #0x50]
02a3ab34: e01f803d str      q0, [sp, #0x70]
02a3ab38: e84300f9 str      x8, [sp, #0x80]
02a3ab3c: 002f00b4 cbz      x0, #0x2a3b11c
02a3ab40: 080340f9 ldr      x8, [x24]
02a3ab44: 610100b4 cbz      x1, #0x2a3ab70
02a3ab48: 290040f9 ldr      x9, [x1]
02a3ab4c: 0ab14439 ldrb     w10, [x8, #0x12c]
02a3ab50: 2bb14439 ldrb     w11, [x9, #0x12c]
02a3ab54: 7f010a6b cmp      w11, w10
02a3ab58: 432e0054 b.lo     #0x2a3b120
02a3ab5c: 296540f9 ldr      x9, [x9, #0xc8]
02a3ab60: 290d0a8b add      x9, x9, x10, lsl #3
02a3ab64: 29815ff8 ldur     x9, [x9, #-8]
02a3ab68: 3f0108eb cmp      x9, x8
02a3ab6c: a12d0054 b.ne     #0x2a3b120
02a3ab70: 620100b4 cbz      x2, #0x2a3ab9c
02a3ab74: 490040f9 ldr      x9, [x2]
02a3ab78: 0ab14439 ldrb     w10, [x8, #0x12c]
02a3ab7c: 2bb14439 ldrb     w11, [x9, #0x12c]
02a3ab80: 7f010a6b cmp      w11, w10
02a3ab84: 232d0054 b.lo     #0x2a3b128
02a3ab88: 296540f9 ldr      x9, [x9, #0xc8]
02a3ab8c: 290d0a8b add      x9, x9, x10, lsl #3
02a3ab90: 29815ff8 ldur     x9, [x9, #-8]
02a3ab94: 3f0108eb cmp      x9, x8
02a3ab98: 812c0054 b.ne     #0x2a3b128
02a3ab9c: e18342ad ldp      q1, q0, [sp, #0x50]
02a3aba0: e21fc03d ldr      q2, [sp, #0x70]
02a3aba4: e84340f9 ldr      x8, [sp, #0x80]
02a3aba8: e3430091 add      x3, sp, #0x10
02a3abac: e4031faa mov      x4, xzr
02a3abb0: e18300ad stp      q1, q0, [sp, #0x10]
02a3abb4: e20f803d str      q2, [sp, #0x30]
02a3abb8: e82300f9 str      x8, [sp, #0x40]
02a3abbc: c2c9f197 bl       #0x26ad2c4 ; Royal.Scenes.Game.Levels.Units.Combo.ComboManager$$Explode
02a3abc0: 682a40f9 ldr      x8, [x19, #0x50]
02a3abc4: c82a00b4 cbz      x8, #0x2a3b11c
02a3abc8: 082140f9 ldr      x8, [x8, #0x40]
02a3abcc: 680300b4 cbz      x8, #0x2a3ac38
02a3abd0: 090d40f9 ldr      x9, [x8, #0x18]
02a3abd4: 002140f9 ldr      x0, [x8, #0x40]
02a3abd8: 021540f9 ldr      x2, [x8, #0x28]
02a3abdc: 81018052 mov      w1, #0xc
02a3abe0: 20013fd6 blr      x9
02a3abe4: 15000014 b        #0x2a3ac38
02a3abe8: c00240f9 ldr      x0, [x22]
02a3abec: a10240f9 ldr      x1, [x21]
02a3abf0: 42018052 mov      w2, #0xa
02a3abf4: e3031faa mov      x3, xzr
02a3abf8: 66ccf197 bl       #0x26add90 ; Royal.Scenes.Game.Levels.Units.Combo.ComboManager$$IsCombo
02a3abfc: a0010037 tbnz     w0, #0, #0x2a3ac30
02a3ac00: c00240f9 ldr      x0, [x22]
02a3ac04: a10240f9 ldr      x1, [x21]
02a3ac08: 22018052 mov      w2, #9
02a3ac0c: e3031faa mov      x3, xzr
02a3ac10: 60ccf197 bl       #0x26add90 ; Royal.Scenes.Game.Levels.Units.Combo.ComboManager$$IsCombo
02a3ac14: e0000037 tbnz     w0, #0, #0x2a3ac30
02a3ac18: c00240f9 ldr      x0, [x22]
02a3ac1c: a10240f9 ldr      x1, [x21]
02a3ac20: 02018052 mov      w2, #8
02a3ac24: e3031faa mov      x3, xzr
02a3ac28: 5accf197 bl       #0x26add90 ; Royal.Scenes.Game.Levels.Units.Combo.ComboManager$$IsCombo
02a3ac2c: 60010036 tbz      w0, #0, #0x2a3ac58
02a3ac30: e00313aa mov      x0, x19
02a3ac34: 99020094 bl       #0x2a3b698 ; Royal.Scenes.Game.Levels.Units.Touch.SwapAction$$PlayPropellerComboSwapAnimation
02a3ac38: fd7b57a9 ldp      x29, x30, [sp, #0x170]
02a3ac3c: f44f56a9 ldp      x20, x19, [sp, #0x160]
02a3ac40: f65755a9 ldp      x22, x21, [sp, #0x150]
02a3ac44: f85f54a9 ldp      x24, x23, [sp, #0x140]
02a3ac48: fa6753a9 ldp      x26, x25, [sp, #0x130]
02a3ac4c: fc6f52a9 ldp      x28, x27, [sp, #0x120]
02a3ac50: ff030691 add      sp, sp, #0x180
02a3ac54: c0035fd6 ret
02a3ac58: 683640f9 ldr      x8, [x19, #0x68]
02a3ac5c: 29008052 mov      w9, #1
02a3ac60: 69420039 strb     w9, [x19, #0x10]
02a3ac64: c82500b4 cbz      x8, #0x2a3b11c
02a3ac68: 005d40f9 ldr      x0, [x8, #0xb8]
02a3ac6c: 802500b4 cbz      x0, #0x2a3b11c
02a3ac70: e1031faa mov      x1, xzr
02a3ac74: 4d204b94 bl       #0x3d02da8 ; UnityEngine.Component$$get_transform
02a3ac78: 683a40f9 ldr      x8, [x19, #0x70]
02a3ac7c: 082500b4 cbz      x8, #0x2a3b11c
02a3ac80: f80300aa mov      x24, x0
02a3ac84: 005d40f9 ldr      x0, [x8, #0xb8]
02a3ac88: a02400b4 cbz      x0, #0x2a3b11c
02a3ac8c: e1031faa mov      x1, xzr
02a3ac90: 46204b94 bl       #0x3d02da8 ; UnityEngine.Component$$get_transform
02a3ac94: a80240f9 ldr      x8, [x21]
02a3ac98: 282400b4 cbz      x8, #0x2a3b11c
02a3ac9c: 090140f9 ldr      x9, [x8]
02a3aca0: f50300aa mov      x21, x0
02a3aca4: e00308aa mov      x0, x8
02a3aca8: 2a0d42f9 ldr      x10, [x9, #0x418]
02a3acac: 211142f9 ldr      x1, [x9, #0x420]
02a3acb0: 40013fd6 blr      x10
02a3acb4: f60314aa mov      x22, x20
02a3acb8: c08e01f8 str      x0, [x22, #0x18]!
02a3acbc: e10300aa mov      x1, x0
02a3acc0: e00316aa mov      x0, x22
02a3acc4: 7ad99597 bl       #0xfb12ac
02a3acc8: 693640f9 ldr      x9, [x19, #0x68]
02a3accc: 892200b4 cbz      x9, #0x2a3b11c
02a3acd0: 683a40f9 ldr      x8, [x19, #0x70]
02a3acd4: 482200b4 cbz      x8, #0x2a3b11c
02a3acd8: 201140f9 ldr      x0, [x9, #0x20]
02a3acdc: 002200b4 cbz      x0, #0x2a3b11c
02a3ace0: 010d40f9 ldr      x1, [x8, #0x18]
02a3ace4: e2031faa mov      x2, xzr
02a3ace8: 401d0c94 bl       #0x2d421e8 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$GetNeighborType
02a3acec: 683640f9 ldr      x8, [x19, #0x68]
02a3acf0: 682100b4 cbz      x8, #0x2a3b11c
02a3acf4: f703002a mov      w23, w0
02a3acf8: e00308aa mov      x0, x8
02a3acfc: e1031faa mov      x1, xzr
02a3ad00: c2420294 bl       #0x2acb808 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$SwapStarted
02a3ad04: 603a40f9 ldr      x0, [x19, #0x70]
02a3ad08: a02000b4 cbz      x0, #0x2a3b11c
02a3ad0c: 593b01f0 adrp     x25, #0x51a5000
02a3ad10: 396745f9 ldr      x25, [x25, #0xac8]
02a3ad14: e1031faa mov      x1, xzr
02a3ad18: bc420294 bl       #0x2acb808 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$SwapStarted
02a3ad1c: 680e40f9 ldr      x8, [x19, #0x18]
02a3ad20: a80000b4 cbz      x8, #0x2a3ad34
02a3ad24: 090d40f9 ldr      x9, [x8, #0x18]
02a3ad28: 002140f9 ldr      x0, [x8, #0x40]
02a3ad2c: 011540f9 ldr      x1, [x8, #0x28]
02a3ad30: 20013fd6 blr      x9
02a3ad34: 200340f9 ldr      x0, [x25]
02a3ad38: f80700f9 str      x24, [sp, #8]
02a3ad3c: 08e040b9 ldr      w8, [x0, #0xe0]
02a3ad40: 48000035 cbnz     w8, #0x2a3ad48
02a3ad44: b0d99597 bl       #0xfb1404
02a3ad48: 9d3a01f0 adrp     x29, #0x518d000
02a3ad4c: bdab44f9 ldr      x29, [x29, #0x950]
02a3ad50: e0031faa mov      x0, xzr
02a3ad54: 30dba497 bl       #0x1371a14 ; Royal.Scenes.Game.Mechanics.Sortings.Sorting$$GetSwapStartSorting
02a3ad58: 880a40f9 ldr      x8, [x20, #0x10]
02a3ad5c: f80300aa mov      x24, x0
02a3ad60: fa0301aa mov      x26, x1
02a3ad64: 9f820039 strb     wzr, [x20, #0x20]
02a3ad68: e80f00b4 cbz      x8, #0x2a3af64
02a3ad6c: 883f01f0 adrp     x8, #0x522d000
02a3ad70: 084d47f9 ldr      x8, [x8, #0xe98]
02a3ad74: 000140f9 ldr      x0, [x8]
02a3ad78: a8d99597 bl       #0xfb1418
02a3ad7c: 001d00b4 cbz      x0, #0x2a3b11c
02a3ad80: e1031faa mov      x1, xzr
02a3ad84: fb0300aa mov      x27, x0
02a3ad88: 1be2e097 bl       #0x22735f4 ; System.Object$$.ctor
02a3ad8c: fd031baa mov      x29, x27
02a3ad90: b48f01f8 str      x20, [x29, #0x18]!
02a3ad94: e0031daa mov      x0, x29
02a3ad98: e10314aa mov      x1, x20
02a3ad9c: 44d99597 bl       #0xfb12ac
02a3ada0: a80340f9 ldr      x8, [x29]
02a3ada4: c81b00b4 cbz      x8, #0x2a3b11c
02a3ada8: 000940f9 ldr      x0, [x8, #0x10]
02a3adac: 801b00b4 cbz      x0, #0x2a3b11c
02a3adb0: 080040f9 ldr      x8, [x0]
02a3adb4: 090d42f9 ldr      x9, [x8, #0x418]
02a3adb8: 011142f9 ldr      x1, [x8, #0x420]
02a3adbc: 20013fd6 blr      x9
02a3adc0: fc031baa mov      x28, x27
02a3adc4: 800f01f8 str      x0, [x28, #0x10]!
02a3adc8: e10300aa mov      x1, x0
02a3adcc: e0031caa mov      x0, x28
02a3add0: 37d99597 bl       #0xfb12ac
02a3add4: 200340f9 ldr      x0, [x25]
02a3add8: 990340f9 ldr      x25, [x28]
02a3addc: 08e040b9 ldr      w8, [x0, #0xe0]
02a3ade0: 48000035 cbnz     w8, #0x2a3ade8
02a3ade4: 88d99597 bl       #0xfb1404
02a3ade8: 417f4092 and      x1, x26, #0xffffffff
02a3adec: 620c8012 mov      w2, #-0x64
02a3adf0: e00318aa mov      x0, x24
02a3adf4: e3031faa mov      x3, xzr
02a3adf8: 1acda497 bl       #0x136e260 ; Royal.Scenes.Game.Mechanics.Sortings.Sorting$$GetSortingWithOffset
02a3adfc: 191900b4 cbz      x25, #0x2a3b11c
02a3ae00: 280340f9 ldr      x8, [x25]
02a3ae04: e40300aa mov      x4, x0
02a3ae08: 227c4092 and      x2, x1, #0xffffffff
02a3ae0c: e00319aa mov      x0, x25
02a3ae10: 090541f9 ldr      x9, [x8, #0x208]
02a3ae14: 030941f9 ldr      x3, [x8, #0x210]
02a3ae18: e10304aa mov      x1, x4
02a3ae1c: 20013fd6 blr      x9
02a3ae20: a80340f9 ldr      x8, [x29]
02a3ae24: c81700b4 cbz      x8, #0x2a3b11c
02a3ae28: 001540f9 ldr      x0, [x8, #0x28]
02a3ae2c: 801700b4 cbz      x0, #0x2a3b11c
02a3ae30: 080040f9 ldr      x8, [x0]
02a3ae34: 990340f9 ldr      x25, [x28]
02a3ae38: 09bd41f9 ldr      x9, [x8, #0x378]
02a3ae3c: 01c141f9 ldr      x1, [x8, #0x380]
02a3ae40: 20013fd6 blr      x9
02a3ae44: d91600b4 cbz      x25, #0x2a3b11c
02a3ae48: 280340f9 ldr      x8, [x25]
02a3ae4c: e203002a mov      w2, w0
02a3ae50: 21008052 mov      w1, #1
02a3ae54: e00319aa mov      x0, x25
02a3ae58: 091541f9 ldr      x9, [x8, #0x228]
02a3ae5c: 031941f9 ldr      x3, [x8, #0x230]
02a3ae60: 20013fd6 blr      x9
02a3ae64: b90340f9 ldr      x25, [x29]
02a3ae68: b91500b4 cbz      x25, #0x2a3b11c
02a3ae6c: 200b40f9 ldr      x0, [x25, #0x10]
02a3ae70: 211740f9 ldr      x1, [x25, #0x28]
02a3ae74: e2031faa mov      x2, xzr
02a3ae78: f0d5f197 bl       #0x26b0638 ; Royal.Scenes.Game.Levels.Units.Combo.ComboManager$$IsAnyCombo
02a3ae7c: 08000012 and      w8, w0, #1
02a3ae80: 28830039 strb     w8, [x25, #0x20]
02a3ae84: a80340f9 ldr      x8, [x29]
02a3ae88: a81400b4 cbz      x8, #0x2a3b11c
02a3ae8c: 9d3a01f0 adrp     x29, #0x518d000
02a3ae90: 08814039 ldrb     w8, [x8, #0x20]
02a3ae94: bdab44f9 ldr      x29, [x29, #0x950]
02a3ae98: 68060035 cbnz     w8, #0x2a3af64
02a3ae9c: 693a40f9 ldr      x9, [x19, #0x70]
02a3aea0: e91300b4 cbz      x9, #0x2a3b11c
02a3aea4: 683640f9 ldr      x8, [x19, #0x68]
02a3aea8: a81300b4 cbz      x8, #0x2a3b11c
02a3aeac: 201140f9 ldr      x0, [x9, #0x20]
02a3aeb0: 601300b4 cbz      x0, #0x2a3b11c
02a3aeb4: 010d40f9 ldr      x1, [x8, #0x18]
02a3aeb8: e2031faa mov      x2, xzr
02a3aebc: cb1c0c94 bl       #0x2d421e8 ; Royal.Scenes.Game.Mechanics.Board.Grid.CellNeighbors$$GetNeighborType
02a3aec0: 810340f9 ldr      x1, [x28]
02a3aec4: e203002a mov      w2, w0
02a3aec8: e00313aa mov      x0, x19
02a3aecc: d9020094 bl       #0x2a3ba30 ; Royal.Scenes.Game.Levels.Units.Touch.SwapAction$$PlaySwapParticle
02a3aed0: 800340f9 ldr      x0, [x28]
02a3aed4: 401200b4 cbz      x0, #0x2a3b11c
02a3aed8: e1031faa mov      x1, xzr
02a3aedc: b31f4b94 bl       #0x3d02da8 ; UnityEngine.Component$$get_transform
02a3aee0: f90300aa mov      x25, x0
02a3aee4: e00740f9 ldr      x0, [sp, #8]
02a3aee8: a01100b4 cbz      x0, #0x2a3b11c
02a3aeec: e1031faa mov      x1, xzr
02a3aef0: cf3b4b94 bl       #0x3d09e2c ; UnityEngine.Transform$$get_localPosition
02a3aef4: c8a100b0 adrp     x8, #0x3e73000
02a3aef8: 030948bd ldr      s3, [x8, #0x808]
02a3aefc: e00319aa mov      x0, x25
02a3af00: e1031faa mov      x1, xzr
02a3af04: 0e452194 bl       #0x328c33c ; Royal.Infrastructure.Utils.Animation.Tween.MTweenShortcuts$$MtLocalMove
02a3af08: 083c01b0 adrp     x8, #0x51bb000
02a3af0c: 089d46f9 ldr      x8, [x8, #0xd38]
02a3af10: f90300aa mov      x25, x0
02a3af14: 080140f9 ldr      x8, [x8]
02a3af18: e00308aa mov      x0, x8
02a3af1c: 3fd99597 bl       #0xfb1418
02a3af20: e00f00b4 cbz      x0, #0x2a3b11c
02a3af24: 28400190 adrp     x8, #0x523e000
02a3af28: 087941f9 ldr      x8, [x8, #0x2f0]
02a3af2c: e1031baa mov      x1, x27
02a3af30: e3031faa mov      x3, xzr
02a3af34: fc0300aa mov      x28, x0
02a3af38: 020140f9 ldr      x2, [x8]
02a3af3c: 4d27d697 bl       #0x1fc4c70 ; System.Action$$.ctor
02a3af40: c83d01f0 adrp     x8, #0x51f5000
02a3af44: 082540f9 ldr      x8, [x8, #0x48]
02a3af48: e00319aa mov      x0, x25
02a3af4c: e1031caa mov      x1, x28
02a3af50: 020140f9 ldr      x2, [x8]
02a3af54: 9637ec97 bl       #0x2548dac ; Royal.Infrastructure.Utils.Animation.Tween.MTweenShortcuts$$SetOnComplete<Vector3>
02a3af58: 200e00b4 cbz      x0, #0x2a3b11c
02a3af5c: a10340f9 ldr      x1, [x29]
02a3af60: da311894 bl       #0x30476c8 ; Royal.Infrastructure.Utils.Animation.Tween.MTween<Vector3>$$Start
02a3af64: 810a40f9 ldr      x1, [x20, #0x10]
02a3af68: 821640f9 ldr      x2, [x20, #0x28]
02a3af6c: 00030094 bl       #0x2a3bb6c ; Royal.Scenes.Game.Levels.Units.Touch.SwapAction$$GetSwapMoveTypeFromItems
02a3af70: 886641a9 ldp      x8, x25, [x20, #0x10]
02a3af74: 803a00b9 str      w0, [x20, #0x38]
02a3af78: e80500b4 cbz      x8, #0x2a3b034
02a3af7c: 090140f9 ldr      x9, [x8]
02a3af80: e00308aa mov      x0, x8
02a3af84: 2abd41f9 ldr      x10, [x9, #0x378]
02a3af88: 21c141f9 ldr      x1, [x9, #0x380]
02a3af8c: 40013fd6 blr      x10
02a3af90: e203002a mov      w2, w0
02a3af94: 590500b5 cbnz     x25, #0x2a3b03c
02a3af98: 61000014 b        #0x2a3b11c
02a3af9c: a80240f9 ldr      x8, [x21]
02a3afa0: a8d5ffb4 cbz      x8, #0x2a3aa54
02a3afa4: 090140f9 ldr      x9, [x8]
02a3afa8: 080340f9 ldr      x8, [x24]
02a3afac: 2bb14439 ldrb     w11, [x9, #0x12c]
02a3afb0: 0ab14439 ldrb     w10, [x8, #0x12c]
02a3afb4: 7f010a6b cmp      w11, w10
02a3afb8: e3d4ff54 b.lo     #0x2a3aa54
02a3afbc: 296540f9 ldr      x9, [x9, #0xc8]
02a3afc0: 290d0a8b add      x9, x9, x10, lsl #3
02a3afc4: 29815ff8 ldur     x9, [x9, #-8]
02a3afc8: 3f0108eb cmp      x9, x8
02a3afcc: 41d4ff54 b.ne     #0x2a3aa54
02a3afd0: 89feff17 b        #0x2a3a9f4
02a3afd4: c80240f9 ldr      x8, [x22]
02a3afd8: 68d8ffb4 cbz      x8, #0x2a3aae4
02a3afdc: 0a0140f9 ldr      x10, [x8]
02a3afe0: 080340f9 ldr      x8, [x24]
02a3afe4: 4bb14439 ldrb     w11, [x10, #0x12c]
02a3afe8: 09b14439 ldrb     w9, [x8, #0x12c]
02a3afec: 7f01096b cmp      w11, w9
02a3aff0: a3d7ff54 b.lo     #0x2a3aae4
02a3aff4: 4b6540f9 ldr      x11, [x10, #0xc8]
02a3aff8: 2a0500d1 sub      x10, x9, #1
02a3affc: 6b796af8 ldr      x11, [x11, x10, lsl #3]
02a3b000: 7f0108eb cmp      x11, x8
02a3b004: 01d7ff54 b.ne     #0x2a3aae4
02a3b008: ab0240f9 ldr      x11, [x21]
02a3b00c: cbd3ffb4 cbz      x11, #0x2a3aa84
02a3b010: 6b0140f9 ldr      x11, [x11]
02a3b014: 6cb14439 ldrb     w12, [x11, #0x12c]
02a3b018: 9f01096b cmp      w12, w9
02a3b01c: 43d3ff54 b.lo     #0x2a3aa84
02a3b020: 696540f9 ldr      x9, [x11, #0xc8]
02a3b024: 29796af8 ldr      x9, [x9, x10, lsl #3]
02a3b028: 3f0108eb cmp      x9, x8
02a3b02c: c1d2ff54 b.ne     #0x2a3aa84
02a3b030: adfeff17 b        #0x2a3aae4
02a3b034: e2031f2a mov      w2, wzr
02a3b038: 390700b4 cbz      x25, #0x2a3b11c
02a3b03c: 280340f9 ldr      x8, [x25]
02a3b040: 21008052 mov      w1, #1
02a3b044: e00319aa mov      x0, x25
02a3b048: 091541f9 ldr      x9, [x8, #0x228]
02a3b04c: 031941f9 ldr      x3, [x8, #0x230]
02a3b050: 20013fd6 blr      x9
02a3b054: c00240f9 ldr      x0, [x22]
02a3b058: 200600b4 cbz      x0, #0x2a3b11c
02a3b05c: 080040f9 ldr      x8, [x0]
02a3b060: 427f4092 and      x2, x26, #0xffffffff
02a3b064: e10318aa mov      x1, x24
02a3b068: 090541f9 ldr      x9, [x8, #0x208]
02a3b06c: 030941f9 ldr      x3, [x8, #0x210]
02a3b070: 20013fd6 blr      x9
02a3b074: c10240f9 ldr      x1, [x22]
02a3b078: e00313aa mov      x0, x19
02a3b07c: e203172a mov      w2, w23
02a3b080: 6c020094 bl       #0x2a3ba30 ; Royal.Scenes.Game.Levels.Units.Touch.SwapAction$$PlaySwapParticle
02a3b084: c00240f9 ldr      x0, [x22]
02a3b088: a00400b4 cbz      x0, #0x2a3b11c
02a3b08c: e1031faa mov      x1, xzr
02a3b090: 461f4b94 bl       #0x3d02da8 ; UnityEngine.Component$$get_transform
02a3b094: 550400b4 cbz      x21, #0x2a3b11c
02a3b098: f30300aa mov      x19, x0
02a3b09c: e00315aa mov      x0, x21
02a3b0a0: e1031faa mov      x1, xzr
02a3b0a4: 623b4b94 bl       #0x3d09e2c ; UnityEngine.Transform$$get_localPosition
02a3b0a8: c8a10090 adrp     x8, #0x3e73000
02a3b0ac: 030948bd ldr      s3, [x8, #0x808]
02a3b0b0: e00313aa mov      x0, x19
02a3b0b4: e1031faa mov      x1, xzr
02a3b0b8: a1442194 bl       #0x328c33c ; Royal.Infrastructure.Utils.Animation.Tween.MTweenShortcuts$$MtLocalMove
02a3b0bc: 083c0190 adrp     x8, #0x51bb000
02a3b0c0: 089d46f9 ldr      x8, [x8, #0xd38]
02a3b0c4: f30300aa mov      x19, x0
02a3b0c8: 080140f9 ldr      x8, [x8]
02a3b0cc: e00308aa mov      x0, x8
02a3b0d0: d2d89597 bl       #0xfb1418
02a3b0d4: 400200b4 cbz      x0, #0x2a3b11c
02a3b0d8: 883d01f0 adrp     x8, #0x51ee000
02a3b0dc: 08c544f9 ldr      x8, [x8, #0x988]
02a3b0e0: e10314aa mov      x1, x20
02a3b0e4: e3031faa mov      x3, xzr
02a3b0e8: f50300aa mov      x21, x0
02a3b0ec: 020140f9 ldr      x2, [x8]
02a3b0f0: e026d697 bl       #0x1fc4c70 ; System.Action$$.ctor
02a3b0f4: c83d01d0 adrp     x8, #0x51f5000
02a3b0f8: 082540f9 ldr      x8, [x8, #0x48]
02a3b0fc: e00313aa mov      x0, x19
02a3b100: e10315aa mov      x1, x21
02a3b104: 020140f9 ldr      x2, [x8]
02a3b108: 2937ec97 bl       #0x2548dac ; Royal.Infrastructure.Utils.Animation.Tween.MTweenShortcuts$$SetOnComplete<Vector3>
02a3b10c: 800000b4 cbz      x0, #0x2a3b11c
02a3b110: a10340f9 ldr      x1, [x29]
02a3b114: 6d311894 bl       #0x30476c8 ; Royal.Infrastructure.Utils.Animation.Tween.MTween<Vector3>$$Start
02a3b118: c8feff17 b        #0x2a3ac38
02a3b11c: c3d89597 bl       #0xfb1428
02a3b120: e00301aa mov      x0, x1
02a3b124: 02000014 b        #0x2a3b12c
02a3b128: e00302aa mov      x0, x2
02a3b12c: e10308aa mov      x1, x8
02a3b130: a4d99597 bl       #0xfb17c0
