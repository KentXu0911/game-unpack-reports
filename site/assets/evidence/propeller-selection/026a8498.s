# Royal.Scenes.Game.Levels.Units.Explode.WinCalculationData$$IsCellWinningForAreaExploder
# Next metadata method 0x26a865c, not a proven function boundary.
026a8498: ff8302d1 sub      sp, sp, #0xa0
026a849c: fc2300f9 str      x28, [sp, #0x40]
026a84a0: fb6b05a9 stp      x27, x26, [sp, #0x50]
026a84a4: f96306a9 stp      x25, x24, [sp, #0x60]
026a84a8: f75b07a9 stp      x23, x22, [sp, #0x70]
026a84ac: f55308a9 stp      x21, x20, [sp, #0x80]
026a84b0: f37b09a9 stp      x19, x30, [sp, #0x90]
026a84b4: f30300aa mov      x19, x0
026a84b8: 001040f9 ldr      x0, [x0, #0x20]
026a84bc: e00c00b4 cbz      x0, #0x26a8658
026a84c0: f40301aa mov      x20, x1
026a84c4: e1031faa mov      x1, xzr
026a84c8: f50302aa mov      x21, x2
026a84cc: 921a0e94 bl       #0x2a2ef14 ; Royal.Scenes.Game.Levels.Units.GoalManager$$HasAnyPrerequisite
026a84d0: c0040037 tbnz     w0, #0, #0x26a8568
026a84d4: 767601d0 adrp     x22, #0x5576000
026a84d8: c8ae7c39 ldrb     w8, [x22, #0xf2b]
026a84dc: c8000035 cbnz     w8, #0x26a84f4
026a84e0: 005b0190 adrp     x0, #0x5208000
026a84e4: 00c041f9 ldr      x0, [x0, #0x380]
026a84e8: 8623a497 bl       #0xfb1300
026a84ec: 28008052 mov      w8, #1
026a84f0: c8ae3c39 strb     w8, [x22, #0xf2b]
026a84f4: 085b0190 adrp     x8, #0x5208000
026a84f8: 08c141f9 ldr      x8, [x8, #0x380]
026a84fc: 080140f9 ldr      x8, [x8]
026a8500: 085d40f9 ldr      x8, [x8, #0xb8]
026a8504: 080140f9 ldr      x8, [x8]
026a8508: 880a00b4 cbz      x8, #0x26a8658
026a850c: 081d40f9 ldr      x8, [x8, #0x38]
026a8510: 480a00b4 cbz      x8, #0x26a8658
026a8514: 080d40f9 ldr      x8, [x8, #0x18]
026a8518: 080a00b4 cbz      x8, #0x26a8658
026a851c: 08a14039 ldrb     w8, [x8, #0x28]
026a8520: 48020035 cbnz     w8, #0x26a8568
026a8524: a81a40f9 ldr      x8, [x21, #0x30]
026a8528: a18240ad ldp      q1, q0, [x21, #0x10]
026a852c: a202c03d ldr      q2, [x21]
026a8530: e1031faa mov      x1, xzr
026a8534: e81b00f9 str      x8, [sp, #0x30]
026a8538: e18300ad stp      q1, q0, [sp, #0x10]
026a853c: e203803d str      q2, [sp]
026a8540: a00a40b9 ldr      w0, [x21, #8]
026a8544: 3b481a94 bl       #0x2d3a630 ; Royal.Scenes.Game.Mechanics.Explode.TriggerExtensions$$AsGuidedExploderType
026a8548: e1031faa mov      x1, xzr
026a854c: d3883394 bl       #0x338a898 ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$ExplodeRadius
026a8550: e303002a mov      w3, w0
026a8554: e2030091 mov      x2, sp
026a8558: e00313aa mov      x0, x19
026a855c: e10314aa mov      x1, x20
026a8560: 3f000094 bl       #0x26a865c ; Royal.Scenes.Game.Levels.Units.Explode.WinCalculationData$$WillNotWinDueToSpecificWinConditionForAreaExploder
026a8564: 60010036 tbz      w0, #0, #0x26a8590
026a8568: e0031f2a mov      w0, wzr
026a856c: f37b49a9 ldp      x19, x30, [sp, #0x90]
026a8570: f55348a9 ldp      x21, x20, [sp, #0x80]
026a8574: f75b47a9 ldp      x23, x22, [sp, #0x70]
026a8578: f96346a9 ldp      x25, x24, [sp, #0x60]
026a857c: fb6b45a9 ldp      x27, x26, [sp, #0x50]
026a8580: fc2340f9 ldr      x28, [sp, #0x40]
026a8584: 00000012 and      w0, w0, #1
026a8588: ff830291 add      sp, sp, #0xa0
026a858c: c0035fd6 ret      
026a8590: e00313aa mov      x0, x19
026a8594: 1cfdff97 bl       #0x26a7a04 ; Royal.Scenes.Game.Levels.Units.Explode.WinCalculationData$$ClearGoalData
026a8598: a80a40b9 ldr      w8, [x21, #8]
026a859c: e1031faa mov      x1, xzr
026a85a0: 681200b9 str      w8, [x19, #0x10]
026a85a4: a8524039 ldrb     w8, [x21, #0x14]
026a85a8: 08010012 and      w8, w8, #1
026a85ac: 68520039 strb     w8, [x19, #0x14]
026a85b0: a00a40b9 ldr      w0, [x21, #8]
026a85b4: 1f481a94 bl       #0x2d3a630 ; Royal.Scenes.Game.Mechanics.Explode.TriggerExtensions$$AsGuidedExploderType
026a85b8: e1031faa mov      x1, xzr
026a85bc: b7883394 bl       #0x338a898 ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$ExplodeRadius
026a85c0: f903004b neg      w25, w0
026a85c4: 1f00196b cmp      w0, w25
026a85c8: 2b040054 b.lt     #0x26a864c
026a85cc: f503002a mov      w21, w0
026a85d0: f6031faa mov      x22, xzr
026a85d4: 9afe60d3 lsr      x26, x20, #0x20
026a85d8: fb03192a mov      w27, w25
026a85dc: 77031a0b add      w23, w27, w26
026a85e0: fc03192a mov      w28, w25
026a85e4: 780e40f9 ldr      x24, [x19, #0x18]
026a85e8: 81021c0b add      w1, w20, w28
026a85ec: e0230191 add      x0, sp, #0x48
026a85f0: e203172a mov      w2, w23
026a85f4: e3031faa mov      x3, xzr
026a85f8: ff2700f9 str      xzr, [sp, #0x48]
026a85fc: 9e7e1094 bl       #0x2ac8074 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellPoint$$.ctor
026a8600: d80200b4 cbz      x24, #0x26a8658
026a8604: e12740f9 ldr      x1, [sp, #0x48]
026a8608: e00318aa mov      x0, x24
026a860c: e2031faa mov      x2, xzr
026a8610: c0af0294 bl       #0x2754510 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_Item
026a8614: 1f0000f1 cmp      x0, #0
026a8618: d602809a csel     x22, x22, x0, eq
026a861c: c00000b4 cbz      x0, #0x26a8634
026a8620: d60100b4 cbz      x22, #0x26a8658
026a8624: e00316aa mov      x0, x22
026a8628: e10313aa mov      x1, x19
026a862c: e2031faa mov      x2, xzr
026a8630: 50891094 bl       #0x2acab70 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$CalculateGoalDecrementByPropellerHit
026a8634: 9c070011 add      w28, w28, #1
026a8638: 9f03156b cmp      w28, w21
026a863c: 4dfdff54 b.le     #0x26a85e4
026a8640: 7b070011 add      w27, w27, #1
026a8644: 7f03156b cmp      w27, w21
026a8648: adfcff54 b.le     #0x26a85dc
026a864c: e00313aa mov      x0, x19
026a8650: c6feff97 bl       #0x26a8168 ; Royal.Scenes.Game.Levels.Units.Explode.WinCalculationData$$IsWinningByHitCells
026a8654: c6ffff17 b        #0x26a856c
026a8658: 7423a497 bl       #0xfb1428
