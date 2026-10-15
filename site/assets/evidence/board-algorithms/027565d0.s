# Royal.Scenes.Game.Levels.Units.BoardManager.<>c__DisplayClass44_0$$<StartChangingBoard>b__0
# Next metadata method 0x2756644, not a proven function boundary.
027565d0: f40f1ef8 str      x20, [sp, #-0x20]!
027565d4: f37b01a9 stp      x19, x30, [sp, #0x10]
027565d8: 547101d0 adrp     x20, #0x5580000
027565dc: 889a5639 ldrb     w8, [x20, #0x5a6]
027565e0: f30300aa mov      x19, x0
027565e4: c8000037 tbnz     w8, #0, #0x27565fc
027565e8: 005301d0 adrp     x0, #0x51b8000
027565ec: 003442f9 ldr      x0, [x0, #0x468]
027565f0: 446ba197 bl       #0xfb1300
027565f4: 28008052 mov      w8, #1
027565f8: 889a1639 strb     w8, [x20, #0x5a6]
027565fc: 680a40f9 ldr      x8, [x19, #0x10]
02756600: 080200b4 cbz      x8, #0x2756640
02756604: 081540f9 ldr      x8, [x8, #0x28]
02756608: c80100b4 cbz      x8, #0x2756640
0275660c: 000d40f9 ldr      x0, [x8, #0x18]
02756610: 6006432d ldp      s0, s1, [x19, #0x18]
02756614: 620e442d ldp      s2, s3, [x19, #0x20]
02756618: 145301d0 adrp     x20, #0x51b8000
0275661c: 943642f9 ldr      x20, [x20, #0x468]
02756620: e1031f2a mov      w1, wzr
02756624: e2031faa mov      x2, xzr
02756628: b7f8d697 bl       #0x1d14904 ; DG.Tweening.ShortcutExtensions$$DOMove
0275662c: 611640f9 ldr      x1, [x19, #0x28]
02756630: 820240f9 ldr      x2, [x20]
02756634: f37b41a9 ldp      x19, x30, [sp, #0x10]
02756638: f40742f8 ldr      x20, [sp], #0x20
0275663c: 83b9eb17 b        #0x2244c48 ; DG.Tweening.TweenSettingsExtensions$$SetEase<object>
02756640: 7a6ba197 bl       #0xfb1428
