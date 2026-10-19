# Royal.Scenes.Game.Mechanics.Items.SpecialItems.PropellerItem.Strategy.PropellerRocketStrategy$$OnTargetReached
# Linear span; next metadata entry is not a proven CFG boundary.
033a3d88: ff0302d1 sub      sp, sp, #0x80
033a3d8c: f82300f9 str      x24, [sp, #0x40]
033a3d90: f75b05a9 stp      x23, x22, [sp, #0x50]
033a3d94: f55306a9 stp      x21, x20, [sp, #0x60]
033a3d98: f37b07a9 stp      x19, x30, [sp, #0x70]
033a3d9c: 160f01f0 adrp     x22, #0x5586000
033a3da0: 57f20090 adrp     x23, #0x51eb000
033a3da4: c84a6739 ldrb     w8, [x22, #0x9d2]
033a3da8: f76e46f9 ldr      x23, [x23, #0xcd8]
033a3dac: f50302aa mov      x21, x2
033a3db0: f30301aa mov      x19, x1
033a3db4: f40300aa mov      x20, x0
033a3db8: 88010037 tbnz     w8, #0, #0x33a3de8
033a3dbc: e0ef00b0 adrp     x0, #0x51a0000
033a3dc0: 00bc46f9 ldr      x0, [x0, #0xd78]
033a3dc4: 4f357097 bl       #0xfb1300
033a3dc8: 40f20090 adrp     x0, #0x51eb000
033a3dcc: 006c46f9 ldr      x0, [x0, #0xcd8]
033a3dd0: 4c357097 bl       #0xfb1300
033a3dd4: c0f200b0 adrp     x0, #0x51fc000
033a3dd8: 002047f9 ldr      x0, [x0, #0xe40]
033a3ddc: 49357097 bl       #0xfb1300
033a3de0: 28008052 mov      w8, #1
033a3de4: c84a2739 strb     w8, [x22, #0x9d2]
033a3de8: e10240f9 ldr      x1, [x23]
033a3dec: 800b8052 mov      w0, #0x5c
033a3df0: 016bc697 bl       #0x253e9f4 ; Royal.Scenes.Game.Levels.LevelContext$$Get<object>
033a3df4: 730600b4 cbz      x19, #0x33a3ec0
033a3df8: f60300aa mov      x22, x0
033a3dfc: e00313aa mov      x0, x19
033a3e00: e1031faa mov      x1, xzr
033a3e04: 6d9edc97 bl       #0x2acb7b8 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$GetViewPosition
033a3e08: d60500b4 cbz      x22, #0x33a3ec0
033a3e0c: f8ef00b0 adrp     x24, #0x51a0000
033a3e10: d7f200b0 adrp     x23, #0x51fc000
033a3e14: 18bf46f9 ldr      x24, [x24, #0xd78]
033a3e18: f72247f9 ldr      x23, [x23, #0xe40]
033a3e1c: 21018052 mov      w1, #9
033a3e20: e00316aa mov      x0, x22
033a3e24: e2031faa mov      x2, xzr
033a3e28: eda4ce97 bl       #0x274d1dc ; Royal.Scenes.Game.MagicDuke.Charger.ChargerManager$$CollectComboForCharger
033a3e2c: 00102c1e fmov     s0, #0.50000000
033a3e30: e00314aa mov      x0, x20
033a3e34: 24000094 bl       #0x33a3ec4 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.PropellerItem.Strategy.PropellerSpecialItemStrategy$$FinishOperationWithDelay
033a3e38: 080340f9 ldr      x8, [x24]
033a3e3c: f60300aa mov      x22, x0
033a3e40: 09e140b9 ldr      w9, [x8, #0xe0]
033a3e44: 69000035 cbnz     w9, #0x33a3e50
033a3e48: e00308aa mov      x0, x8
033a3e4c: 6e357097 bl       #0xfb1404
033a3e50: e00316aa mov      x0, x22
033a3e54: e1031faa mov      x1, xzr
033a3e58: e2031faa mov      x2, xzr
033a3e5c: 2854c297 bl       #0x2438efc ; Royal.Scenes.Game.Context.GameContext$$ManualStartCoroutine
033a3e60: a00a40ad ldp      q0, q2, [x21]
033a3e64: a81a40f9 ldr      x8, [x21, #0x30]
033a3e68: a10ac03d ldr      q1, [x21, #0x20]
033a3e6c: e2030091 mov      x2, sp
033a3e70: e00314aa mov      x0, x20
033a3e74: e10313aa mov      x1, x19
033a3e78: e00b00ad stp      q0, q2, [sp]
033a3e7c: e81b00f9 str      x8, [sp, #0x30]
033a3e80: e10b803d str      q1, [sp, #0x20]
033a3e84: 31000094 bl       #0x33a3f48 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.PropellerItem.Strategy.PropellerRocketStrategy$$ExplodeWithDelay
033a3e88: e1031faa mov      x1, xzr
033a3e8c: e2031faa mov      x2, xzr
033a3e90: 1b54c297 bl       #0x2438efc ; Royal.Scenes.Game.Context.GameContext$$ManualStartCoroutine
033a3e94: e10240f9 ldr      x1, [x23]
033a3e98: e0018052 mov      w0, #0xf
033a3e9c: d66ac697 bl       #0x253e9f4 ; Royal.Scenes.Game.Levels.LevelContext$$Get<object>
033a3ea0: 000100b4 cbz      x0, #0x33a3ec0
033a3ea4: f37b47a9 ldp      x19, x30, [sp, #0x70]
033a3ea8: f55346a9 ldp      x21, x20, [sp, #0x60]
033a3eac: f75b45a9 ldp      x23, x22, [sp, #0x50]
033a3eb0: f82340f9 ldr      x24, [sp, #0x40]
033a3eb4: e1031faa mov      x1, xzr
033a3eb8: ff030291 add      sp, sp, #0x80
033a3ebc: d165da17 b        #0x2a3d600 ; Royal.Scenes.Game.Levels.Units.State.GameStateManager$$StartSpecialOperation
033a3ec0: 5a357097 bl       #0xfb1428
