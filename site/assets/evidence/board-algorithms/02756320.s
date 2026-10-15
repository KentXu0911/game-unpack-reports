# Royal.Scenes.Game.Levels.Units.BoardManager$$CompleteChangingBoard
# Next metadata method 0x27563b4, not a proven function boundary.
02756320: f60f1df8 str      x22, [sp, #-0x30]!
02756324: f55301a9 stp      x21, x20, [sp, #0x10]
02756328: f37b02a9 stp      x19, x30, [sp, #0x20]
0275632c: 567101d0 adrp     x22, #0x5580000
02756330: 75520190 adrp     x21, #0x51a2000
02756334: c88a5639 ldrb     w8, [x22, #0x5a2]
02756338: b55242f9 ldr      x21, [x21, #0x4a0]
0275633c: f403012a mov      w20, w1
02756340: f30300aa mov      x19, x0
02756344: c8000037 tbnz     w8, #0, #0x275635c
02756348: 60520190 adrp     x0, #0x51a2000
0275634c: 005042f9 ldr      x0, [x0, #0x4a0]
02756350: ec6ba197 bl       #0xfb1300
02756354: 28008052 mov      w8, #1
02756358: c88a1639 strb     w8, [x22, #0x5a2]
0275635c: 7f120139 strb     wzr, [x19, #0x44]
02756360: a00240f9 ldr      x0, [x21]
02756364: 08e040b9 ldr      w8, [x0, #0xe0]
02756368: 48000035 cbnz     w8, #0x2756370
0275636c: 266ca197 bl       #0xfb1404
02756370: 200d8052 mov      w0, #0x69
02756374: e1031faa mov      x1, xzr
02756378: 75b7d597 bl       #0x1cc414c ; Royal.Infrastructure.Contexts.Units.CameraManager$$EnableOrientation
0275637c: 54010036 tbz      w20, #0, #0x27563a4
02756380: 680a40f9 ldr      x8, [x19, #0x10]
02756384: 080100b4 cbz      x8, #0x27563a4
02756388: 020d40f9 ldr      x2, [x8, #0x18]
0275638c: 002140f9 ldr      x0, [x8, #0x40]
02756390: 011540f9 ldr      x1, [x8, #0x28]
02756394: f37b42a9 ldp      x19, x30, [sp, #0x20]
02756398: f55341a9 ldp      x21, x20, [sp, #0x10]
0275639c: f60743f8 ldr      x22, [sp], #0x30
027563a0: 40001fd6 br       x2
027563a4: f37b42a9 ldp      x19, x30, [sp, #0x20]
027563a8: f55341a9 ldp      x21, x20, [sp, #0x10]
027563ac: f60743f8 ldr      x22, [sp], #0x30
027563b0: c0035fd6 ret      
