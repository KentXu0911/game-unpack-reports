# Royal.Scenes.Game.Mechanics.Items.StaticItems.MushroomSoilItem.MushroomSoilItemHelper$$CanSpreadMushroom
# Next metadata method 0x1556f54, not a proven function boundary.
01556d60: f553bea9 stp      x21, x20, [sp, #-0x20]!
01556d64: f37b01a9 stp      x19, x30, [sp, #0x10]
01556d68: 140102d0 adrp     x20, #0x5578000
01556d6c: 88867739 ldrb     w8, [x20, #0xde1]
01556d70: f30301aa mov      x19, x1
01556d74: 28010037 tbnz     w8, #0, #0x1556d98
01556d78: 40e401b0 adrp     x0, #0x51df000
01556d7c: 00d040f9 ldr      x0, [x0, #0x1a0]
01556d80: 6069e997 bl       #0xfb1300
01556d84: 60e301f0 adrp     x0, #0x51c5000
01556d88: 001044f9 ldr      x0, [x0, #0x820]
01556d8c: 5d69e997 bl       #0xfb1300
01556d90: 28008052 mov      w8, #1
01556d94: 88863739 strb     w8, [x20, #0xde1]
01556d98: d30d00b4 cbz      x19, #0x1556f50
01556d9c: 740a40f9 ldr      x20, [x19, #0x10]
01556da0: e00313aa mov      x0, x19
01556da4: e1031faa mov      x1, xzr
01556da8: 5fca5594 bl       #0x2ac9724 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsNormalCell
01556dac: e00b0036 tbz      w0, #0, #0x1556f28
01556db0: 606240f9 ldr      x0, [x19, #0xc0]
01556db4: e00c00b4 cbz      x0, #0x1556f50
01556db8: e1031faa mov      x1, xzr
01556dbc: 53c95594 bl       #0x2ac9308 ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$HasTouchBlockingItem
01556dc0: 400b0037 tbnz     w0, #0, #0x1556f28
01556dc4: e00313aa mov      x0, x19
01556dc8: e1031faa mov      x1, xzr
01556dcc: 78c95594 bl       #0x2ac93ac ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsReserved
01556dd0: c00a0037 tbnz     w0, #0, #0x1556f28
01556dd4: 606240f9 ldr      x0, [x19, #0xc0]
01556dd8: c00b00b4 cbz      x0, #0x1556f50
01556ddc: e1031faa mov      x1, xzr
01556de0: 43cb5594 bl       #0x2ac9aec ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$GetTopMostBelowItem
01556de4: 200a00b4 cbz      x0, #0x1556f28
01556de8: 68e301f0 adrp     x8, #0x51c5000
01556dec: 081144f9 ldr      x8, [x8, #0x820]
01556df0: 090040f9 ldr      x9, [x0]
01556df4: 080140f9 ldr      x8, [x8]
01556df8: 2bb14439 ldrb     w11, [x9, #0x12c]
01556dfc: 0ab14439 ldrb     w10, [x8, #0x12c]
01556e00: 7f010a6b cmp      w11, w10
01556e04: 23090054 b.lo     #0x1556f28
01556e08: 296540f9 ldr      x9, [x9, #0xc8]
01556e0c: 290d0a8b add      x9, x9, x10, lsl #3
01556e10: 29815ff8 ldur     x9, [x9, #-8]
01556e14: 3f0108eb cmp      x9, x8
01556e18: 81080054 b.ne     #0x1556f28
01556e1c: b40900b4 cbz      x20, #0x1556f50
01556e20: e00314aa mov      x0, x20
01556e24: e1031faa mov      x1, xzr
01556e28: 15bc4794 bl       #0x2745e7c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasCurrentItem
01556e2c: e0040036 tbz      w0, #0, #0x1556ec8
01556e30: e00314aa mov      x0, x20
01556e34: e1031faa mov      x1, xzr
01556e38: 0abc4794 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
01556e3c: f50300aa mov      x21, x0
01556e40: e00314aa mov      x0, x20
01556e44: e1031faa mov      x1, xzr
01556e48: 5ebc4794 bl       #0x2745fc0 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_NextItem
01556e4c: 350800b4 cbz      x21, #0x1556f50
01556e50: a80240f9 ldr      x8, [x21]
01556e54: e10300aa mov      x1, x0
01556e58: e00315aa mov      x0, x21
01556e5c: 098953a9 ldp      x9, x2, [x8, #0x138]
01556e60: 20013fd6 blr      x9
01556e64: a0000037 tbnz     w0, #0, #0x1556e78
01556e68: e00314aa mov      x0, x20
01556e6c: e1031faa mov      x1, xzr
01556e70: 5bbc4794 bl       #0x2745fdc ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasNextItem
01556e74: a0020037 tbnz     w0, #0, #0x1556ec8
01556e78: e00314aa mov      x0, x20
01556e7c: e1031faa mov      x1, xzr
01556e80: f8bb4794 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
01556e84: 200200b4 cbz      x0, #0x1556ec8
01556e88: 48e401b0 adrp     x8, #0x51df000
01556e8c: 08d140f9 ldr      x8, [x8, #0x1a0]
01556e90: 090040f9 ldr      x9, [x0]
01556e94: 080140f9 ldr      x8, [x8]
01556e98: 2bb14439 ldrb     w11, [x9, #0x12c]
01556e9c: 0ab14439 ldrb     w10, [x8, #0x12c]
01556ea0: 7f010a6b cmp      w11, w10
01556ea4: 23010054 b.lo     #0x1556ec8
01556ea8: 296540f9 ldr      x9, [x9, #0xc8]
01556eac: 290d0a8b add      x9, x9, x10, lsl #3
01556eb0: 29815ff8 ldur     x9, [x9, #-8]
01556eb4: 3f0108eb cmp      x9, x8
01556eb8: 81000054 b.ne     #0x1556ec8
01556ebc: e1031faa mov      x1, xzr
01556ec0: 0ff02494 bl       #0x1e92efc ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemModel$$IsReserved
01556ec4: c0030036 tbz      w0, #0, #0x1556f3c
01556ec8: 600a40f9 ldr      x0, [x19, #0x10]
01556ecc: 200400b4 cbz      x0, #0x1556f50
01556ed0: e1031faa mov      x1, xzr
01556ed4: eabb4794 bl       #0x2745e7c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasCurrentItem
01556ed8: 80020037 tbnz     w0, #0, #0x1556f28
01556edc: 600a40f9 ldr      x0, [x19, #0x10]
01556ee0: 800300b4 cbz      x0, #0x1556f50
01556ee4: e1031faa mov      x1, xzr
01556ee8: 3dbc4794 bl       #0x2745fdc ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasNextItem
01556eec: e0010037 tbnz     w0, #0, #0x1556f28
01556ef0: 600a40f9 ldr      x0, [x19, #0x10]
01556ef4: e00200b4 cbz      x0, #0x1556f50
01556ef8: e1031faa mov      x1, xzr
01556efc: 48bc4794 bl       #0x274601c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasTargetItem
01556f00: e0000036 tbz      w0, #0, #0x1556f1c
01556f04: 680240f9 ldr      x8, [x19]
01556f08: e00313aa mov      x0, x19
01556f0c: 091d41f9 ldr      x9, [x8, #0x238]
01556f10: 012141f9 ldr      x1, [x8, #0x240]
01556f14: 20013fd6 blr      x9
01556f18: 80000037 tbnz     w0, #0, #0x1556f28
01556f1c: e10313aa mov      x1, x19
01556f20: 15070094 bl       #0x1558b74 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.MushroomSoilItem.MushroomSoilItemHelper$$CellHasTargetItemFallingThroughBlankCells
01556f24: c0000036 tbz      w0, #0, #0x1556f3c
01556f28: e8031f2a mov      w8, wzr
01556f2c: f37b41a9 ldp      x19, x30, [sp, #0x10]
01556f30: 00010012 and      w0, w8, #1
01556f34: f553c2a8 ldp      x21, x20, [sp], #0x20
01556f38: c0035fd6 ret
01556f3c: e00313aa mov      x0, x19
01556f40: e1031faa mov      x1, xzr
01556f44: 76cb5594 bl       #0x2ac9d1c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsFallFrozen
01556f48: 08000052 eor      w8, w0, #1
01556f4c: f8ffff17 b        #0x1556f2c
01556f50: 3669e997 bl       #0xfb1428
