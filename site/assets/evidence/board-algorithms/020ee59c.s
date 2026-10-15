# Royal.Scenes.Game.Levels.Units.Explode.AutoExplodeManager$$ManualUpdate
# Next metadata method 0x20ee648, not a proven function boundary.
020ee59c: e80f1efc str      d8, [sp, #-0x20]!
020ee5a0: f37b01a9 stp      x19, x30, [sp, #0x10]
020ee5a4: 08b04039 ldrb     w8, [x0, #0x2c]
020ee5a8: 48010034 cbz      w8, #0x20ee5d0
020ee5ac: f30300aa mov      x19, x0
020ee5b0: 001040f9 ldr      x0, [x0, #0x20]
020ee5b4: 800400b4 cbz      x0, #0x20ee644
020ee5b8: c1008052 mov      w1, #6
020ee5bc: e2031faa mov      x2, xzr
020ee5c0: f60d2594 bl       #0x2a31d98 ; Royal.Scenes.Game.Levels.Units.State.GameStateManager$$HasOperation
020ee5c4: c0000036 tbz      w0, #0, #0x20ee5dc
020ee5c8: 08f0b752 mov      w8, #-0x40800000
020ee5cc: 682a00b9 str      w8, [x19, #0x28]
020ee5d0: f37b41a9 ldp      x19, x30, [sp, #0x10]
020ee5d4: e80742fc ldr      d8, [sp], #0x20
020ee5d8: c0035fd6 ret      
020ee5dc: 601240f9 ldr      x0, [x19, #0x20]
020ee5e0: 7f420039 strb     wzr, [x19, #0x10]
020ee5e4: 000300b4 cbz      x0, #0x20ee644
020ee5e8: e1031faa mov      x1, xzr
020ee5ec: 7d122594 bl       #0x2a32fe0 ; Royal.Scenes.Game.Levels.Units.State.GameStateManager$$HasAnyOperation
020ee5f0: 60000036 tbz      w0, #0, #0x20ee5fc
020ee5f4: 00103e1e fmov     s0, #-1.00000000
020ee5f8: 07000014 b        #0x20ee614
020ee5fc: 682a40bd ldr      s8, [x19, #0x28]
020ee600: e0031faa mov      x0, xzr
020ee604: 59911994 bl       #0x2752b68 ; Royal.Scenes.Game.Levels.LevelContext$$get_FrameCount
020ee608: 0821201e fcmp     s8, #0.0
020ee60c: e5000054 b.pl     #0x20ee628
020ee610: 0000221e scvtf    s0, w0
020ee614: 602a00bd str      s0, [x19, #0x28]
020ee618: e00313aa mov      x0, x19
020ee61c: f37b41a9 ldp      x19, x30, [sp, #0x10]
020ee620: e80742fc ldr      d8, [sp], #0x20
020ee624: 09000014 b        #0x20ee648 ; Royal.Scenes.Game.Levels.Units.Explode.AutoExplodeManager$$DestroyAllMatches
020ee628: 602a40bd ldr      s0, [x19, #0x28]
020ee62c: 0100221e scvtf    s1, w0
020ee630: 2038201e fsub     s0, s1, s0
020ee634: 0190241e fmov     s1, #10.00000000
020ee638: 0020211e fcmp     s0, s1
020ee63c: acfcff54 b.gt     #0x20ee5d0
020ee640: f6ffff17 b        #0x20ee618
020ee644: 790bbb97 bl       #0xfb1428
