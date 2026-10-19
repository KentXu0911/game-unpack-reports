# Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$GetCellScoreForRocket
# Linear span; next metadata entry is not a proven CFG boundary.
020f16fc: f553bea9 stp      x21, x20, [sp, #-0x20]!
020f1700: f37b01a9 stp      x19, x30, [sp, #0x10]
020f1704: 610200b4 cbz      x1, #0x20f1750
020f1708: f40300aa mov      x20, x0
020f170c: 205840f9 ldr      x0, [x1, #0xb0]
020f1710: f30301aa mov      x19, x1
020f1714: 600200b4 cbz      x0, #0x20f1760
020f1718: 68000012 and      w8, w3, #1
020f171c: e103022a mov      w1, w2
020f1720: e203082a mov      w2, w8
020f1724: e3031faa mov      x3, xzr
020f1728: e4031faa mov      x4, xzr
020f172c: ae762794 bl       #0x2acf1e4 ; Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$GetScore
020f1730: 00010034 cbz      w0, #0x20f1750
020f1734: f503002a mov      w21, w0
020f1738: e00314aa mov      x0, x20
020f173c: e10313aa mov      x1, x19
020f1740: 46010094 bl       #0x20f1c58 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$ShouldAddToTotalScore
020f1744: 1f000072 tst      w0, #1
020f1748: a0129f1a csel     w0, w21, wzr, ne
020f174c: 02000014 b        #0x20f1754
020f1750: e0031f2a mov      w0, wzr
020f1754: f37b41a9 ldp      x19, x30, [sp, #0x10]
020f1758: f553c2a8 ldp      x21, x20, [sp], #0x20
020f175c: c0035fd6 ret      
020f1760: 32ffba97 bl       #0xfb1428
