# Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindForExploder
# Next metadata method 0x20ef5bc, not a proven function boundary.
020ef310: ffc307d1 sub      sp, sp, #0x1f0
020ef314: fccb00f9 str      x28, [sp, #0x190]
020ef318: fb6b1aa9 stp      x27, x26, [sp, #0x1a0]
020ef31c: f9631ba9 stp      x25, x24, [sp, #0x1b0]
020ef320: f75b1ca9 stp      x23, x22, [sp, #0x1c0]
020ef324: f5531da9 stp      x21, x20, [sp, #0x1d0]
020ef328: f37b1ea9 stp      x19, x30, [sp, #0x1e0]
020ef32c: 57d03bd5 mrs      x23, tpidr_el0
020ef330: e81640f9 ldr      x8, [x23, #0x28]
020ef334: f8030291 add      x24, sp, #0x80
020ef338: 00e4006f movi     v0.2d, #0000000000000000
020ef33c: e8c700f9 str      x8, [sp, #0x188]
020ef340: 1ff30fb8 stur     wzr, [x24, #0xff]
020ef344: e0030bad stp      q0, q0, [sp, #0x160]
020ef348: 611300b4 cbz      x1, #0x20ef5b4
020ef34c: 28300491 add      x8, x1, #0x10c
020ef350: 160940b9 ldr      w22, [x8, #8]
020ef354: 294041b9 ldr      w9, [x1, #0x140]
020ef358: 0051c23c ldur     q0, [x8, #0x25]
020ef35c: 0151c13c ldur     q1, [x8, #0x15]
020ef360: 3a8c40f9 ldr      x26, [x1, #0x118]
020ef364: 39804439 ldrb     w25, [x1, #0x120]
020ef368: 1b0140f9 ldr      x27, [x8]
020ef36c: f30301aa mov      x19, x1
020ef370: f40300aa mov      x20, x0
020ef374: e003162a mov      w0, w22
020ef378: e1031faa mov      x1, xzr
020ef37c: 09f30fb8 stur     w9, [x24, #0xff]
020ef380: e1030bad stp      q1, q0, [sp, #0x160]
020ef384: ab2c3194 bl       #0x2d3a630 ; Royal.Scenes.Game.Mechanics.Explode.TriggerExtensions$$AsGuidedExploderType
020ef388: 883a40f9 ldr      x8, [x20, #0x70]
020ef38c: 481100b4 cbz      x8, #0x20ef5b4
020ef390: 090140f9 ldr      x9, [x8]
020ef394: f503002a mov      w21, w0
020ef398: e00308aa mov      x0, x8
020ef39c: 2a8557a9 ldp      x10, x1, [x9, #0x178]
020ef3a0: 40013fd6 blr      x10
020ef3a4: df360071 cmp      w22, #0xd
020ef3a8: c1040054 b.ne     #0x20ef440
020ef3ac: e1034bad ldp      q1, q0, [sp, #0x160]
020ef3b0: 08f34fb8 ldur     w8, [x24, #0xff]
020ef3b4: e1a30491 add      x1, sp, #0x128
020ef3b8: e00314aa mov      x0, x20
020ef3bc: fb9700f9 str      x27, [sp, #0x128]
020ef3c0: f63301b9 str      w22, [sp, #0x130]
020ef3c4: 1a430bf8 stur     x26, [x24, #0xb4]
020ef3c8: f9f30439 strb     w25, [sp, #0x13c]
020ef3cc: 01d38b3c stur     q1, [x24, #0xbd]
020ef3d0: 00d38c3c stur     q0, [x24, #0xcd]
020ef3d4: e85f01b9 str      w8, [sp, #0x15c]
020ef3d8: 7a000094 bl       #0x20ef5c0 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindPowerCubeOrSoilTargetForWinCondition
020ef3dc: e10300aa mov      x1, x0
020ef3e0: c00b00b5 cbnz     x0, #0x20ef558
020ef3e4: e1034bad ldp      q1, q0, [sp, #0x160]
020ef3e8: 08f34fb8 ldur     w8, [x24, #0xff]
020ef3ec: f6fb00b9 str      w22, [sp, #0xf8]
020ef3f0: 36030012 and      w22, w25, #1
020ef3f4: e1c30391 add      x1, sp, #0xf0
020ef3f8: e00314aa mov      x0, x20
020ef3fc: e203162a mov      w2, w22
020ef400: fb7b00f9 str      x27, [sp, #0xf0]
020ef404: 1ac307f8 stur     x26, [x24, #0x7c]
020ef408: f9130439 strb     w25, [sp, #0x104]
020ef40c: 0153883c stur     q1, [x24, #0x85]
020ef410: 0053893c stur     q0, [x24, #0x95]
020ef414: e82701b9 str      w8, [sp, #0x124]
020ef418: dd000094 bl       #0x20ef78c ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindAreaTarget
020ef41c: e10300aa mov      x1, x0
020ef420: c00900b5 cbnz     x0, #0x20ef558
020ef424: e00314aa mov      x0, x20
020ef428: 0cffff97 bl       #0x20ef058 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$ClearLists
020ef42c: e00314aa mov      x0, x20
020ef430: e103152a mov      w1, w21
020ef434: e203162a mov      w2, w22
020ef438: 03010094 bl       #0x20ef844 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FillScores
020ef43c: 49000014 b        #0x20ef560
020ef440: e00314aa mov      x0, x20
020ef444: e1031f2a mov      w1, wzr
020ef448: 04ffff97 bl       #0x20ef058 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$ClearLists
020ef44c: 22030012 and      w2, w25, #1
020ef450: e00314aa mov      x0, x20
020ef454: e103152a mov      w1, w21
020ef458: fb000094 bl       #0x20ef844 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FillScores
020ef45c: df2a0071 cmp      w22, #0xa
020ef460: 00040054 b.eq     #0x20ef4e0
020ef464: df2e0071 cmp      w22, #0xb
020ef468: c1070054 b.ne     #0x20ef560
020ef46c: e1034bad ldp      q1, q0, [sp, #0x160]
020ef470: 08f34fb8 ldur     w8, [x24, #0xff]
020ef474: e1e30291 add      x1, sp, #0xb8
020ef478: e00314aa mov      x0, x20
020ef47c: fb5f00f9 str      x27, [sp, #0xb8]
020ef480: f6c300b9 str      w22, [sp, #0xc0]
020ef484: 1a4304f8 stur     x26, [x24, #0x44]
020ef488: f9330339 strb     w25, [sp, #0xcc]
020ef48c: 01d3843c stur     q1, [x24, #0x4d]
020ef490: 00d3853c stur     q0, [x24, #0x5d]
020ef494: e8ef00b9 str      w8, [sp, #0xec]
020ef498: 4a000094 bl       #0x20ef5c0 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindPowerCubeOrSoilTargetForWinCondition
020ef49c: e10300aa mov      x1, x0
020ef4a0: c00500b5 cbnz     x0, #0x20ef558
020ef4a4: e1034bad ldp      q1, q0, [sp, #0x160]
020ef4a8: 08f34fb8 ldur     w8, [x24, #0xff]
020ef4ac: 23030012 and      w3, w25, #1
020ef4b0: e1030291 add      x1, sp, #0x80
020ef4b4: e00314aa mov      x0, x20
020ef4b8: e203152a mov      w2, w21
020ef4bc: fb4300f9 str      x27, [sp, #0x80]
020ef4c0: f68b00b9 str      w22, [sp, #0x88]
020ef4c4: fac308f8 stur     x26, [sp, #0x8c]
020ef4c8: f9530239 strb     w25, [sp, #0x94]
020ef4cc: 0153813c stur     q1, [x24, #0x15]
020ef4d0: 0053823c stur     q0, [x24, #0x25]
020ef4d4: e8b700b9 str      w8, [sp, #0xb4]
020ef4d8: fe010094 bl       #0x20efcd0 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindRowTarget
020ef4dc: 1d000014 b        #0x20ef550
020ef4e0: e1034bad ldp      q1, q0, [sp, #0x160]
020ef4e4: 08f34fb8 ldur     w8, [x24, #0xff]
020ef4e8: e1230191 add      x1, sp, #0x48
020ef4ec: e00314aa mov      x0, x20
020ef4f0: fb2700f9 str      x27, [sp, #0x48]
020ef4f4: fa4305f8 stur     x26, [sp, #0x54]
020ef4f8: f9730139 strb     w25, [sp, #0x5c]
020ef4fc: f65300b9 str      w22, [sp, #0x50]
020ef500: e1d3853c stur     q1, [sp, #0x5d]
020ef504: e0d3863c stur     q0, [sp, #0x6d]
020ef508: e87f00b9 str      w8, [sp, #0x7c]
020ef50c: 2d000094 bl       #0x20ef5c0 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindPowerCubeOrSoilTargetForWinCondition
020ef510: e10300aa mov      x1, x0
020ef514: 200200b5 cbnz     x0, #0x20ef558
020ef518: e1034bad ldp      q1, q0, [sp, #0x160]
020ef51c: 08f34fb8 ldur     w8, [x24, #0xff]
020ef520: 23030012 and      w3, w25, #1
020ef524: e1430091 add      x1, sp, #0x10
020ef528: e00314aa mov      x0, x20
020ef52c: e203152a mov      w2, w21
020ef530: fb0b00f9 str      x27, [sp, #0x10]
020ef534: f61b00b9 str      w22, [sp, #0x18]
020ef538: fac301f8 stur     x26, [sp, #0x1c]
020ef53c: f9930039 strb     w25, [sp, #0x24]
020ef540: e153823c stur     q1, [sp, #0x25]
020ef544: e053833c stur     q0, [sp, #0x35]
020ef548: e84700b9 str      w8, [sp, #0x44]
020ef54c: 0d020094 bl       #0x20efd80 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindColumnTarget
020ef550: e10300aa mov      x1, x0
020ef554: 600000b4 cbz      x0, #0x20ef560
020ef558: 680240f9 ldr      x8, [x19]
020ef55c: 06000014 b        #0x20ef574
020ef560: e00314aa mov      x0, x20
020ef564: e10313aa mov      x1, x19
020ef568: 33020094 bl       #0x20efe34 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindSingleTarget
020ef56c: 680240f9 ldr      x8, [x19]
020ef570: e10300aa mov      x1, x0
020ef574: 09bd45f9 ldr      x9, [x8, #0xb78]
020ef578: 02c145f9 ldr      x2, [x8, #0xb80]
020ef57c: e00313aa mov      x0, x19
020ef580: 20013fd6 blr      x9
020ef584: e81640f9 ldr      x8, [x23, #0x28]
020ef588: e9c740f9 ldr      x9, [sp, #0x188]
020ef58c: 1f0109eb cmp      x8, x9
020ef590: 41010054 b.ne     #0x20ef5b8
020ef594: f37b5ea9 ldp      x19, x30, [sp, #0x1e0]
020ef598: f5535da9 ldp      x21, x20, [sp, #0x1d0]
020ef59c: f75b5ca9 ldp      x23, x22, [sp, #0x1c0]
020ef5a0: f9635ba9 ldp      x25, x24, [sp, #0x1b0]
020ef5a4: fb6b5aa9 ldp      x27, x26, [sp, #0x1a0]
020ef5a8: fccb40f9 ldr      x28, [sp, #0x190]
020ef5ac: ffc30791 add      sp, sp, #0x1f0
020ef5b0: c0035fd6 ret      
020ef5b4: 9d07bb97 bl       #0xfb1428
020ef5b8: e64eaf97 bl       #0xcc3150
