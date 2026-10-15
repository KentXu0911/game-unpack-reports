# Royal.Scenes.Game.Levels.Units.Explode.WinCalculationData$$IsCellWinningForPropellerExploder
# Next metadata method 0x26a8e9c, not a proven function boundary.
026a8d80: ffc301d1 sub      sp, sp, #0x70
026a8d84: f62300f9 str      x22, [sp, #0x40]
026a8d88: f55305a9 stp      x21, x20, [sp, #0x50]
026a8d8c: f37b06a9 stp      x19, x30, [sp, #0x60]
026a8d90: f30300aa mov      x19, x0
026a8d94: 001040f9 ldr      x0, [x0, #0x20]
026a8d98: 000800b4 cbz      x0, #0x26a8e98
026a8d9c: f40301aa mov      x20, x1
026a8da0: e1031faa mov      x1, xzr
026a8da4: f50302aa mov      x21, x2
026a8da8: 5b180e94 bl       #0x2a2ef14 ; Royal.Scenes.Game.Levels.Units.GoalManager$$HasAnyPrerequisite
026a8dac: 20040037 tbnz     w0, #0, #0x26a8e30
026a8db0: 767601d0 adrp     x22, #0x5576000
026a8db4: c8ae7c39 ldrb     w8, [x22, #0xf2b]
026a8db8: c8000035 cbnz     w8, #0x26a8dd0
026a8dbc: 005b0190 adrp     x0, #0x5208000
026a8dc0: 00c041f9 ldr      x0, [x0, #0x380]
026a8dc4: 4f21a497 bl       #0xfb1300
026a8dc8: 28008052 mov      w8, #1
026a8dcc: c8ae3c39 strb     w8, [x22, #0xf2b]
026a8dd0: 085b0190 adrp     x8, #0x5208000
026a8dd4: 08c141f9 ldr      x8, [x8, #0x380]
026a8dd8: 080140f9 ldr      x8, [x8]
026a8ddc: 085d40f9 ldr      x8, [x8, #0xb8]
026a8de0: 080140f9 ldr      x8, [x8]
026a8de4: a80500b4 cbz      x8, #0x26a8e98
026a8de8: 081d40f9 ldr      x8, [x8, #0x38]
026a8dec: 680500b4 cbz      x8, #0x26a8e98
026a8df0: 080d40f9 ldr      x8, [x8, #0x18]
026a8df4: 280500b4 cbz      x8, #0x26a8e98
026a8df8: 08a14039 ldrb     w8, [x8, #0x28]
026a8dfc: a8010035 cbnz     w8, #0x26a8e30
026a8e00: a81a40f9 ldr      x8, [x21, #0x30]
026a8e04: a18240ad ldp      q1, q0, [x21, #0x10]
026a8e08: a202c03d ldr      q2, [x21]
026a8e0c: e2030091 mov      x2, sp
026a8e10: e00313aa mov      x0, x19
026a8e14: e10314aa mov      x1, x20
026a8e18: e3031f2a mov      w3, wzr
026a8e1c: e81b00f9 str      x8, [sp, #0x30]
026a8e20: e18300ad stp      q1, q0, [sp, #0x10]
026a8e24: e203803d str      q2, [sp]
026a8e28: 0dfeff97 bl       #0x26a865c ; Royal.Scenes.Game.Levels.Units.Explode.WinCalculationData$$WillNotWinDueToSpecificWinConditionForAreaExploder
026a8e2c: e0000036 tbz      w0, #0, #0x26a8e48
026a8e30: f37b46a9 ldp      x19, x30, [sp, #0x60]
026a8e34: f55345a9 ldp      x21, x20, [sp, #0x50]
026a8e38: f62340f9 ldr      x22, [sp, #0x40]
026a8e3c: e0031f2a mov      w0, wzr
026a8e40: ffc30191 add      sp, sp, #0x70
026a8e44: c0035fd6 ret      
026a8e48: 08018052 mov      w8, #8
026a8e4c: 681200b9 str      w8, [x19, #0x10]
026a8e50: a8524039 ldrb     w8, [x21, #0x14]
026a8e54: 600e40f9 ldr      x0, [x19, #0x18]
026a8e58: 08010012 and      w8, w8, #1
026a8e5c: 68520039 strb     w8, [x19, #0x14]
026a8e60: c00100b4 cbz      x0, #0x26a8e98
026a8e64: e10314aa mov      x1, x20
026a8e68: e2031faa mov      x2, xzr
026a8e6c: a9ad0294 bl       #0x2754510 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_Item
026a8e70: 800000b4 cbz      x0, #0x26a8e80
026a8e74: e10313aa mov      x1, x19
026a8e78: e2031faa mov      x2, xzr
026a8e7c: 3d871094 bl       #0x2acab70 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$CalculateGoalDecrementByPropellerHit
026a8e80: e00313aa mov      x0, x19
026a8e84: f37b46a9 ldp      x19, x30, [sp, #0x60]
026a8e88: f55345a9 ldp      x21, x20, [sp, #0x50]
026a8e8c: f62340f9 ldr      x22, [sp, #0x40]
026a8e90: ffc30191 add      sp, sp, #0x70
026a8e94: b5fcff17 b        #0x26a8168 ; Royal.Scenes.Game.Levels.Units.Explode.WinCalculationData$$IsWinningByHitCells
026a8e98: 6421a497 bl       #0xfb1428
