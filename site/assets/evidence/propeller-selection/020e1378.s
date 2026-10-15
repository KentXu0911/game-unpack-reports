# Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$IsCellWinningForSingleHitAreaExploder
# Next metadata method 0x20e13fc, not a proven function boundary.
020e1378: ff4303d1 sub      sp, sp, #0xd0
020e137c: fe6300f9 str      x30, [sp, #0xc0]
020e1380: 228040ad ldp      q2, q0, [x1, #0x10]
020e1384: 281840f9 ldr      x8, [x1, #0x30]
020e1388: 2100c03d ldr      q1, [x1]
020e138c: 003840f9 ldr      x0, [x0, #0x70]
020e1390: e28304ad stp      q2, q0, [sp, #0x90]
020e1394: e85b00f9 str      x8, [sp, #0xb0]
020e1398: e123803d str      q1, [sp, #0x80]
020e139c: 480840f9 ldr      x8, [x2, #0x10]
020e13a0: 4000c03d ldr      q0, [x2]
020e13a4: e83b00f9 str      x8, [sp, #0x70]
020e13a8: e01b803d str      q0, [sp, #0x60]
020e13ac: 600200b4 cbz      x0, #0x20e13f8
020e13b0: e00b44ad ldp      q0, q2, [sp, #0x80]
020e13b4: e12bc03d ldr      q1, [sp, #0xa0]
020e13b8: e85b40f9 ldr      x8, [sp, #0xb0]
020e13bc: e31bc03d ldr      q3, [sp, #0x60]
020e13c0: e93b40f9 ldr      x9, [sp, #0x70]
020e13c4: e1830091 add      x1, sp, #0x20
020e13c8: e2030091 mov      x2, sp
020e13cc: e3031faa mov      x3, xzr
020e13d0: e00b01ad stp      q0, q2, [sp, #0x20]
020e13d4: e113803d str      q1, [sp, #0x40]
020e13d8: e82b00f9 str      x8, [sp, #0x50]
020e13dc: e303803d str      q3, [sp]
020e13e0: e90b00f9 str      x9, [sp, #0x10]
020e13e4: dc1d1794 bl       #0x26a8b54 ; Royal.Scenes.Game.Levels.Units.Explode.WinCalculationData$$IsCellWinningForSingleHitAreaExploder
020e13e8: fe6340f9 ldr      x30, [sp, #0xc0]
020e13ec: 00000012 and      w0, w0, #1
020e13f0: ff430391 add      sp, sp, #0xd0
020e13f4: c0035fd6 ret      
020e13f8: 0c40bb97 bl       #0xfb1428
