# Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$GetRandomItemFromAreaScores
# Next metadata method 0x20f7734, not a proven function boundary.
020f7650: f60f1df8 str      x22, [sp, #-0x30]!
020f7654: f55301a9 stp      x21, x20, [sp, #0x10]
020f7658: f37b02a9 stp      x19, x30, [sp, #0x20]
020f765c: 36a401d0 adrp     x22, #0x557d000
020f7660: c85e5539 ldrb     w8, [x22, #0x557]
020f7664: f40302aa mov      x20, x2
020f7668: f30301aa mov      x19, x1
020f766c: f50300aa mov      x21, x0
020f7670: e8010037 tbnz     w8, #0, #0x20f76ac
020f7674: 60850190 adrp     x0, #0x51a3000
020f7678: 00e842f9 ldr      x0, [x0, #0x5d0]
020f767c: 21e7ba97 bl       #0xfb1300
020f7680: c08901f0 adrp     x0, #0x5232000
020f7684: 003c42f9 ldr      x0, [x0, #0x478]
020f7688: 1ee7ba97 bl       #0xfb1300
020f768c: 808901b0 adrp     x0, #0x5228000
020f7690: 007c44f9 ldr      x0, [x0, #0x8f8]
020f7694: 1be7ba97 bl       #0xfb1300
020f7698: 00880190 adrp     x0, #0x51f7000
020f769c: 004441f9 ldr      x0, [x0, #0x288]
020f76a0: 18e7ba97 bl       #0xfb1300
020f76a4: 28008052 mov      w8, #1
020f76a8: c85e1539 strb     w8, [x22, #0x557]
020f76ac: f40200b4 cbz      x20, #0x20f7708
020f76b0: c88901f0 adrp     x8, #0x5232000
020f76b4: 083d42f9 ldr      x8, [x8, #0x478]
020f76b8: a11e40f9 ldr      x1, [x21, #0x38]
020f76bc: e00313aa mov      x0, x19
020f76c0: 020140f9 ldr      x2, [x8]
020f76c4: 79401194 bl       #0x25478a8 ; Royal.Infrastructure.Utils.Extensions.ListExtensions$$Shuffle<CellPoint>
020f76c8: 530300b4 cbz      x19, #0x20f7730
020f76cc: 888901b0 adrp     x8, #0x5228000
020f76d0: 087d44f9 ldr      x8, [x8, #0x8f8]
020f76d4: 15880190 adrp     x21, #0x51f7000
020f76d8: e00313aa mov      x0, x19
020f76dc: e10314aa mov      x1, x20
020f76e0: 020140f9 ldr      x2, [x8]
020f76e4: b54641f9 ldr      x21, [x21, #0x288]
020f76e8: 89d70c94 bl       #0x242d50c ; System.Collections.Generic.List<CellPoint>$$Sort
020f76ec: a20240f9 ldr      x2, [x21]
020f76f0: e00313aa mov      x0, x19
020f76f4: f37b42a9 ldp      x19, x30, [sp, #0x20]
020f76f8: f55341a9 ldp      x21, x20, [sp, #0x10]
020f76fc: e1031f2a mov      w1, wzr
020f7700: f60743f8 ldr      x22, [sp], #0x30
020f7704: 70d00c14 b        #0x242b8c4 ; System.Collections.Generic.List<CellPoint>$$get_Item
020f7708: a01e40f9 ldr      x0, [x21, #0x38]
020f770c: 200100b4 cbz      x0, #0x20f7730
020f7710: 68850190 adrp     x8, #0x51a3000
020f7714: 08e942f9 ldr      x8, [x8, #0x5d0]
020f7718: e10313aa mov      x1, x19
020f771c: f37b42a9 ldp      x19, x30, [sp, #0x20]
020f7720: f55341a9 ldp      x21, x20, [sp, #0x10]
020f7724: 020140f9 ldr      x2, [x8]
020f7728: f60743f8 ldr      x22, [sp], #0x30
020f772c: 901d1114 b        #0x253ed6c ; Royal.Scenes.Game.Levels.Units.LevelRandomManager$$GetRandomItemFromList<CellPoint>
020f7730: 3ee7ba97 bl       #0xfb1428
