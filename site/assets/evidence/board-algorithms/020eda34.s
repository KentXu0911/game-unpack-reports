# Royal.Scenes.Game.Levels.Units.ItemCreation.SpecialItemCreator$$SelectSmartRocket
# Next metadata method 0x20edaf4, not a proven function boundary.
020eda34: f60f1df8 str      x22, [sp, #-0x30]!
020eda38: f55301a9 stp      x21, x20, [sp, #0x10]
020eda3c: f37b02a9 stp      x19, x30, [sp, #0x20]
020eda40: 96a40190 adrp     x22, #0x557d000
020eda44: c8be5439 ldrb     w8, [x22, #0x52f]
020eda48: f30301aa mov      x19, x1
020eda4c: f40300aa mov      x20, x0
020eda50: 35fc60d3 lsr      x21, x1, #0x20
020eda54: c8000037 tbnz     w8, #0, #0x20eda6c
020eda58: c0880190 adrp     x0, #0x5205000
020eda5c: 006443f9 ldr      x0, [x0, #0x6c8]
020eda60: 280ebb97 bl       #0xfb1300
020eda64: 28008052 mov      w8, #1
020eda68: c8be1439 strb     w8, [x22, #0x52f]
020eda6c: e00314aa mov      x0, x20
020eda70: e103152a mov      w1, w21
020eda74: 20000094 bl       #0x20edaf4 ; Royal.Scenes.Game.Levels.Units.ItemCreation.SpecialItemCreator$$CalculateHorizontalRocketScore
020eda78: f503002a mov      w21, w0
020eda7c: e00314aa mov      x0, x20
020eda80: e103132a mov      w1, w19
020eda84: 44000094 bl       #0x20edb94 ; Royal.Scenes.Game.Levels.Units.ItemCreation.SpecialItemCreator$$CalculateVerticalRocketScore
020eda88: bf02006b cmp      w21, w0
020eda8c: 6d000054 b.le     #0x20eda98
020eda90: c0038052 mov      w0, #0x1e
020eda94: 13000014 b        #0x20edae0
020eda98: 1f00156b cmp      w0, w21
020eda9c: 6d000054 b.le     #0x20edaa8
020edaa0: 80028052 mov      w0, #0x14
020edaa4: 0f000014 b        #0x20edae0
020edaa8: c8880190 adrp     x8, #0x5205000
020edaac: 086543f9 ldr      x8, [x8, #0x6c8]
020edab0: e0031f2a mov      w0, wzr
020edab4: 010140f9 ldr      x1, [x8]
020edab8: cf431194 bl       #0x253e9f4 ; Royal.Scenes.Game.Levels.LevelContext$$Get<object>
020edabc: a00100b4 cbz      x0, #0x20edaf0
020edac0: 42008052 mov      w2, #2
020edac4: e1031f2a mov      w1, wzr
020edac8: e3031faa mov      x3, xzr
020edacc: 470d2594 bl       #0x2a30fe8 ; Royal.Scenes.Game.Levels.Units.LevelRandomManager$$Next
020edad0: 1f040071 cmp      w0, #1
020edad4: c8038052 mov      w8, #0x1e
020edad8: 89028052 mov      w9, #0x14
020edadc: 2001881a csel     w0, w9, w8, eq
020edae0: f37b42a9 ldp      x19, x30, [sp, #0x20]
020edae4: f55341a9 ldp      x21, x20, [sp, #0x10]
020edae8: f60743f8 ldr      x22, [sp], #0x30
020edaec: c0035fd6 ret      
020edaf0: 4e0ebb97 bl       #0xfb1428
