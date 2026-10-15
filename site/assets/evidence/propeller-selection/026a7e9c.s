# Royal.Scenes.Game.Levels.Units.Explode.WinCalculationData$$IsColumnWinning
# Next metadata method 0x26a8020, not a proven function boundary.
026a7e9c: ff0302d1 sub      sp, sp, #0x80
026a7ea0: f75b05a9 stp      x23, x22, [sp, #0x50]
026a7ea4: f55306a9 stp      x21, x20, [sp, #0x60]
026a7ea8: f37b07a9 stp      x19, x30, [sp, #0x70]
026a7eac: f30300aa mov      x19, x0
026a7eb0: 001040f9 ldr      x0, [x0, #0x20]
026a7eb4: e00a00b4 cbz      x0, #0x26a8010
026a7eb8: f403012a mov      w20, w1
026a7ebc: e1031faa mov      x1, xzr
026a7ec0: f50302aa mov      x21, x2
026a7ec4: 141c0e94 bl       #0x2a2ef14 ; Royal.Scenes.Game.Levels.Units.GoalManager$$HasAnyPrerequisite
026a7ec8: 00040037 tbnz     w0, #0, #0x26a7f48
026a7ecc: 767601f0 adrp     x22, #0x5576000
026a7ed0: c8ae7c39 ldrb     w8, [x22, #0xf2b]
026a7ed4: c8000035 cbnz     w8, #0x26a7eec
026a7ed8: 005b01b0 adrp     x0, #0x5208000
026a7edc: 00c041f9 ldr      x0, [x0, #0x380]
026a7ee0: 0825a497 bl       #0xfb1300
026a7ee4: 28008052 mov      w8, #1
026a7ee8: c8ae3c39 strb     w8, [x22, #0xf2b]
026a7eec: 085b01b0 adrp     x8, #0x5208000
026a7ef0: 08c141f9 ldr      x8, [x8, #0x380]
026a7ef4: 080140f9 ldr      x8, [x8]
026a7ef8: 085d40f9 ldr      x8, [x8, #0xb8]
026a7efc: 080140f9 ldr      x8, [x8]
026a7f00: 880800b4 cbz      x8, #0x26a8010
026a7f04: 081d40f9 ldr      x8, [x8, #0x38]
026a7f08: 480800b4 cbz      x8, #0x26a8010
026a7f0c: 080d40f9 ldr      x8, [x8, #0x18]
026a7f10: 080800b4 cbz      x8, #0x26a8010
026a7f14: 08a14039 ldrb     w8, [x8, #0x28]
026a7f18: 88010035 cbnz     w8, #0x26a7f48
026a7f1c: a81a40f9 ldr      x8, [x21, #0x30]
026a7f20: a18240ad ldp      q1, q0, [x21, #0x10]
026a7f24: a202c03d ldr      q2, [x21]
026a7f28: e2430091 add      x2, sp, #0x10
026a7f2c: e00313aa mov      x0, x19
026a7f30: e103142a mov      w1, w20
026a7f34: e82300f9 str      x8, [sp, #0x40]
026a7f38: e10301ad stp      q1, q0, [sp, #0x20]
026a7f3c: e207803d str      q2, [sp, #0x10]
026a7f40: 3f000094 bl       #0x26a803c ; Royal.Scenes.Game.Levels.Units.Explode.WinCalculationData$$WillNotWinDueToSpecificWinConditionForVerticalRocket
026a7f44: 00010036 tbz      w0, #0, #0x26a7f64
026a7f48: e0031f2a mov      w0, wzr
026a7f4c: f37b47a9 ldp      x19, x30, [sp, #0x70]
026a7f50: f55346a9 ldp      x21, x20, [sp, #0x60]
026a7f54: f75b45a9 ldp      x23, x22, [sp, #0x50]
026a7f58: 00000012 and      w0, w0, #1
026a7f5c: ff030291 add      sp, sp, #0x80
026a7f60: c0035fd6 ret      
026a7f64: e00313aa mov      x0, x19
026a7f68: a7feff97 bl       #0x26a7a04 ; Royal.Scenes.Game.Levels.Units.Explode.WinCalculationData$$ClearGoalData
026a7f6c: c8008052 mov      w8, #6
026a7f70: 681200b9 str      w8, [x19, #0x10]
026a7f74: a8524039 ldrb     w8, [x21, #0x14]
026a7f78: 600e40f9 ldr      x0, [x19, #0x18]
026a7f7c: 08010012 and      w8, w8, #1
026a7f80: 68520039 strb     w8, [x19, #0x14]
026a7f84: 600400b4 cbz      x0, #0x26a8010
026a7f88: e1031faa mov      x1, xzr
026a7f8c: 1ebc0294 bl       #0x2757004 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_BoardStartY
026a7f90: 680e40f9 ldr      x8, [x19, #0x18]
026a7f94: e80300b4 cbz      x8, #0x26a8010
026a7f98: f503002a mov      w21, w0
026a7f9c: f6031faa mov      x22, xzr
026a7fa0: e00308aa mov      x0, x8
026a7fa4: e1031faa mov      x1, xzr
026a7fa8: 28bc0294 bl       #0x2757048 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_BoardEndY
026a7fac: bf02006b cmp      w21, w0
026a7fb0: 2c030054 b.gt     #0x26a8014
026a7fb4: 770e40f9 ldr      x23, [x19, #0x18]
026a7fb8: e0230091 add      x0, sp, #8
026a7fbc: e103142a mov      w1, w20
026a7fc0: e203152a mov      w2, w21
026a7fc4: e3031faa mov      x3, xzr
026a7fc8: ff0700f9 str      xzr, [sp, #8]
026a7fcc: 2a801094 bl       #0x2ac8074 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellPoint$$.ctor
026a7fd0: 170200b4 cbz      x23, #0x26a8010
026a7fd4: e10740f9 ldr      x1, [sp, #8]
026a7fd8: e00317aa mov      x0, x23
026a7fdc: e2031faa mov      x2, xzr
026a7fe0: 4cb10294 bl       #0x2754510 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_Item
026a7fe4: 1f0000f1 cmp      x0, #0
026a7fe8: d602809a csel     x22, x22, x0, eq
026a7fec: c00000b4 cbz      x0, #0x26a8004
026a7ff0: 160100b4 cbz      x22, #0x26a8010
026a7ff4: e00316aa mov      x0, x22
026a7ff8: e10313aa mov      x1, x19
026a7ffc: e2031faa mov      x2, xzr
026a8000: dc8a1094 bl       #0x2acab70 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$CalculateGoalDecrementByPropellerHit
026a8004: 680e40f9 ldr      x8, [x19, #0x18]
026a8008: b5060011 add      w21, w21, #1
026a800c: a8fcffb5 cbnz     x8, #0x26a7fa0
026a8010: 0625a497 bl       #0xfb1428
026a8014: e00313aa mov      x0, x19
026a8018: 54000094 bl       #0x26a8168 ; Royal.Scenes.Game.Levels.Units.Explode.WinCalculationData$$IsWinningByHitCells
026a801c: ccffff17 b        #0x26a7f4c
