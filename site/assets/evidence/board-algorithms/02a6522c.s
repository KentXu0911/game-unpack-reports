# Royal.Scenes.Game.Mechanics.Items.BushItem.View.GrassSpread.GrassSpreadAnimationView$$GetDelayForIndex
# Next metadata method 0x2a65330, not a proven function boundary.
02a6522c: 083440b9 ldr      w8, [x0, #0x34]
02a65230: 1f090071 cmp      w8, #2
02a65234: c0020054 b.eq     #0x2a6528c
02a65238: 1f050071 cmp      w8, #1
02a6523c: e003271e fmov     s0, wzr
02a65240: 61040054 b.ne     #0x2a652cc
02a65244: 083840b9 ldr      w8, [x0, #0x38]
02a65248: 1f090071 cmp      w8, #2
02a6524c: 80040054 b.eq     #0x2a652dc
02a65250: 1f050071 cmp      w8, #1
02a65254: 20050054 b.eq     #0x2a652f8
02a65258: 69a000d0 adrp     x9, #0x3e73000
02a6525c: 68060035 cbnz     w8, #0x2a65328
02a65260: 083c40b9 ldr      w8, [x0, #0x3c]
02a65264: 200548bd ldr      s0, [x9, #0x804]
02a65268: 09a000d0 adrp     x9, #0x3e67000
02a6526c: 214d45bd ldr      s1, [x9, #0x54c]
02a65270: 0210281e fmov     s2, #0.12500000
02a65274: 1f050071 cmp      w8, #1
02a65278: 400c201e fcsel    s0, s2, s0, eq
02a6527c: 0128211e fadd     s1, s0, s1
02a65280: 1f090071 cmp      w8, #2
02a65284: 200c201e fcsel    s0, s1, s0, eq
02a65288: c0035fd6 ret
02a6528c: 083840b9 ldr      w8, [x0, #0x38]
02a65290: 28010034 cbz      w8, #0x2a652b4
02a65294: 1f0d0071 cmp      w8, #3
02a65298: c1010054 b.ne     #0x2a652d0
02a6529c: 0aa000d0 adrp     x10, #0x3e67000
02a652a0: 083c40b9 ldr      w8, [x0, #0x3c]
02a652a4: 40c144bd ldr      s0, [x10, #0x4c0]
02a652a8: a9a40090 adrp     x9, #0x3ef9000
02a652ac: 29413991 add      x9, x9, #0xe50
02a652b0: 17000014 b        #0x2a6530c
02a652b4: 083c40b9 ldr      w8, [x0, #0x3c]
02a652b8: a9a40090 adrp     x9, #0x3ef9000
02a652bc: 29213991 add      x9, x9, #0xe48
02a652c0: 1f010071 cmp      w8, #0
02a652c4: e8179f1a cset     w8, eq
02a652c8: 205968bc ldr      s0, [x9, w8, uxtw #2]
02a652cc: c0035fd6 ret
02a652d0: 68a000d0 adrp     x8, #0x3e73000
02a652d4: 000548bd ldr      s0, [x8, #0x804]
02a652d8: c0035fd6 ret
02a652dc: 083c40b9 ldr      w8, [x0, #0x3c]
02a652e0: a9a40090 adrp     x9, #0x3ef9000
02a652e4: 0aa000d0 adrp     x10, #0x3e67000
02a652e8: 29613991 add      x9, x9, #0xe58
02a652ec: 1f010071 cmp      w8, #0
02a652f0: 40c144bd ldr      s0, [x10, #0x4c0]
02a652f4: 07000014 b        #0x2a65310
02a652f8: 0aa000d0 adrp     x10, #0x3e67000
02a652fc: 083c40b9 ldr      w8, [x0, #0x3c]
02a65300: 409544bd ldr      s0, [x10, #0x494]
02a65304: a9a40090 adrp     x9, #0x3ef9000
02a65308: 29813991 add      x9, x9, #0xe60
02a6530c: 1f010071 cmp      w8, #0
02a65310: ea179f1a cset     w10, eq
02a65314: 21596abc ldr      s1, [x9, w10, uxtw #2]
02a65318: 1f0d0071 cmp      w8, #3
02a6531c: 2028201e fadd     s0, s1, s0
02a65320: 000c211e fcsel    s0, s0, s1, eq
02a65324: c0035fd6 ret
02a65328: 200548bd ldr      s0, [x9, #0x804]
02a6532c: c0035fd6 ret
