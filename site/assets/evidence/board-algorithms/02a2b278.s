# Royal.Scenes.Game.Levels.Units.FallManager$$ManualUpdate
# Next metadata method 0x2a2b574, not a proven function boundary.
02a2b278: ff4302d1 sub      sp, sp, #0x90
02a2b27c: fa2300f9 str      x26, [sp, #0x40]
02a2b280: f96305a9 stp      x25, x24, [sp, #0x50]
02a2b284: f75b06a9 stp      x23, x22, [sp, #0x60]
02a2b288: f55307a9 stp      x21, x20, [sp, #0x70]
02a2b28c: f37b08a9 stp      x19, x30, [sp, #0x80]
02a2b290: b45a01d0 adrp     x20, #0x5581000
02a2b294: 88ca7939 ldrb     w8, [x20, #0xe72]
02a2b298: f30300aa mov      x19, x0
02a2b29c: 88040037 tbnz     w8, #0, #0x2a2b32c
02a2b2a0: 603b01f0 adrp     x0, #0x519a000
02a2b2a4: 00e043f9 ldr      x0, [x0, #0x7c0]
02a2b2a8: 16189697 bl       #0xfb1300
02a2b2ac: 603e01d0 adrp     x0, #0x51f9000
02a2b2b0: 008046f9 ldr      x0, [x0, #0xd00]
02a2b2b4: 13189697 bl       #0xfb1300
02a2b2b8: 003d01b0 adrp     x0, #0x51cc000
02a2b2bc: 00e442f9 ldr      x0, [x0, #0x5c8]
02a2b2c0: 10189697 bl       #0xfb1300
02a2b2c4: 803f0190 adrp     x0, #0x521b000
02a2b2c8: 005840f9 ldr      x0, [x0, #0xb0]
02a2b2cc: 0d189697 bl       #0xfb1300
02a2b2d0: c03b01b0 adrp     x0, #0x51a4000
02a2b2d4: 00e844f9 ldr      x0, [x0, #0x9d0]
02a2b2d8: 0a189697 bl       #0xfb1300
02a2b2dc: 003c01b0 adrp     x0, #0x51ac000
02a2b2e0: 008844f9 ldr      x0, [x0, #0x910]
02a2b2e4: 07189697 bl       #0xfb1300
02a2b2e8: 40400190 adrp     x0, #0x5233000
02a2b2ec: 00f043f9 ldr      x0, [x0, #0x7e0]
02a2b2f0: 04189697 bl       #0xfb1300
02a2b2f4: a03c01b0 adrp     x0, #0x51c0000
02a2b2f8: 00dc41f9 ldr      x0, [x0, #0x3b8]
02a2b2fc: 01189697 bl       #0xfb1300
02a2b300: 003e01f0 adrp     x0, #0x51ee000
02a2b304: 00a847f9 ldr      x0, [x0, #0xf50]
02a2b308: fe179697 bl       #0xfb1300
02a2b30c: 003c01b0 adrp     x0, #0x51ac000
02a2b310: 00b443f9 ldr      x0, [x0, #0x768]
02a2b314: fb179697 bl       #0xfb1300
02a2b318: 603e01f0 adrp     x0, #0x51fa000
02a2b31c: 005440f9 ldr      x0, [x0, #0xa8]
02a2b320: f8179697 bl       #0xfb1300
02a2b324: 28008052 mov      w8, #1
02a2b328: 88ca3939 strb     w8, [x20, #0xe72]
02a2b32c: ffff02a9 stp      xzr, xzr, [sp, #0x28]
02a2b330: ff1300f9 str      xzr, [sp, #0x20]
02a2b334: 68624239 ldrb     w8, [x19, #0x98]
02a2b338: 880c0034 cbz      w8, #0x2a2b4c8
02a2b33c: e00313aa mov      x0, x19
02a2b340: 9e000094 bl       #0x2a2b5b8 ; Royal.Scenes.Game.Levels.Units.FallManager$$ClearTargetItems
02a2b344: e00313aa mov      x0, x19
02a2b348: c2000094 bl       #0x2a2b650 ; Royal.Scenes.Game.Levels.Units.FallManager$$CalculateStraightFalls
02a2b34c: e00313aa mov      x0, x19
02a2b350: e7000094 bl       #0x2a2b6ec ; Royal.Scenes.Game.Levels.Units.FallManager$$CalculateCrossFalls
02a2b354: e00313aa mov      x0, x19
02a2b358: 09010094 bl       #0x2a2b77c ; Royal.Scenes.Game.Levels.Units.FallManager$$CallFallUpdates
02a2b35c: 680e40f9 ldr      x8, [x19, #0x18]
02a2b360: a80c00b4 cbz      x8, #0x2a2b4f4
02a2b364: 152140b9 ldr      w21, [x8, #0x20]
02a2b368: bf060071 cmp      w21, #1
02a2b36c: 6b0b0054 b.lt     #0x2a2b4d8
02a2b370: 683e01f0 adrp     x8, #0x51fa000
02a2b374: 085540f9 ldr      x8, [x8, #0xa8]
02a2b378: 000140f9 ldr      x0, [x8]
02a2b37c: 27189697 bl       #0xfb1418
02a2b380: a00b00b4 cbz      x0, #0x2a2b4f4
02a2b384: a83c01b0 adrp     x8, #0x51c0000
02a2b388: 08dd41f9 ldr      x8, [x8, #0x3b8]
02a2b38c: e103152a mov      w1, w21
02a2b390: f40300aa mov      x20, x0
02a2b394: 020140f9 ldr      x2, [x8]
02a2b398: deb7cf97 bl       #0x1e19310 ; System.Collections.Generic.List<int>$$.ctor
02a2b39c: 600e40f9 ldr      x0, [x19, #0x18]
02a2b3a0: a00a00b4 cbz      x0, #0x2a2b4f4
02a2b3a4: 883f0190 adrp     x8, #0x521b000
02a2b3a8: 085940f9 ldr      x8, [x8, #0xb0]
02a2b3ac: 793e01d0 adrp     x25, #0x51f9000
02a2b3b0: 5a400190 adrp     x26, #0x5233000
02a2b3b4: 398346f9 ldr      x25, [x25, #0xd00]
02a2b3b8: 5af343f9 ldr      x26, [x26, #0x7e0]
02a2b3bc: 010140f9 ldr      x1, [x8]
02a2b3c0: 173c01b0 adrp     x23, #0x51ac000
02a2b3c4: d83b01b0 adrp     x24, #0x51a4000
02a2b3c8: 763b01f0 adrp     x22, #0x519a000
02a2b3cc: f7b643f9 ldr      x23, [x23, #0x768]
02a2b3d0: 18eb44f9 ldr      x24, [x24, #0x9d0]
02a2b3d4: d6e243f9 ldr      x22, [x22, #0x7c0]
02a2b3d8: e8230091 add      x8, sp, #8
02a2b3dc: 64770094 bl       #0x2a4916c ; System.Collections.Generic.HashSet<int>$$GetEnumerator
02a2b3e0: e083c03c ldur     q0, [sp, #8]
02a2b3e4: e80f40f9 ldr      x8, [sp, #0x18]
02a2b3e8: e00b803d str      q0, [sp, #0x20]
02a2b3ec: e81b00f9 str      x8, [sp, #0x30]
02a2b3f0: 210340f9 ldr      x1, [x25]
02a2b3f4: e0830091 add      x0, sp, #0x20
02a2b3f8: 2d050394 bl       #0x2aec8ac ; System.Collections.Generic.HashSet.Enumerator<int>$$MoveNext
02a2b3fc: a0030036 tbz      w0, #0, #0x2a2b470
02a2b400: f53340b9 ldr      w21, [sp, #0x30]
02a2b404: e00313aa mov      x0, x19
02a2b408: e103152a mov      w1, w21
02a2b40c: 4e010094 bl       #0x2a2b944 ; Royal.Scenes.Game.Levels.Units.FallManager$$AddRemainingItemsToFillingCellQueue
02a2b410: 00ff0736 tbz      w0, #0, #0x2a2b3f0
02a2b414: 8a1e40b9 ldr      w10, [x20, #0x1c]
02a2b418: 880a40f9 ldr      x8, [x20, #0x10]
02a2b41c: 490340f9 ldr      x9, [x26]
02a2b420: 4a050011 add      w10, w10, #1
02a2b424: 8a1e00b9 str      w10, [x20, #0x1c]
02a2b428: 880600b4 cbz      x8, #0x2a2b4f8
02a2b42c: 8a1a80b9 ldrsw    x10, [x20, #0x18]
02a2b430: 0b1940b9 ldr      w11, [x8, #0x18]
02a2b434: 5f010b6b cmp      w10, w11
02a2b438: c2000054 b.hs     #0x2a2b450
02a2b43c: 49050011 add      w9, w10, #1
02a2b440: 08090a8b add      x8, x8, x10, lsl #2
02a2b444: 891a00b9 str      w9, [x20, #0x18]
02a2b448: 152100b9 str      w21, [x8, #0x20]
02a2b44c: e9ffff17 b        #0x2a2b3f0
02a2b450: 281140f9 ldr      x8, [x9, #0x20]
02a2b454: 086140f9 ldr      x8, [x8, #0xc0]
02a2b458: 022d40f9 ldr      x2, [x8, #0x58]
02a2b45c: 480440f9 ldr      x8, [x2, #8]
02a2b460: e00314aa mov      x0, x20
02a2b464: e103152a mov      w1, w21
02a2b468: 00013fd6 blr      x8
02a2b46c: e1ffff17 b        #0x2a2b3f0
02a2b470: c10240f9 ldr      x1, [x22]
02a2b474: e0830091 add      x0, sp, #0x20
02a2b478: 0c050394 bl       #0x2aec8a8 ; System.Collections.Generic.HashSet.Enumerator<int>$$Dispose
02a2b47c: 881a40b9 ldr      w8, [x20, #0x18]
02a2b480: 1f050071 cmp      w8, #1
02a2b484: ab020054 b.lt     #0x2a2b4d8
02a2b488: f5031f2a mov      w21, wzr
02a2b48c: e20240f9 ldr      x2, [x23]
02a2b490: 760e40f9 ldr      x22, [x19, #0x18]
02a2b494: e00314aa mov      x0, x20
02a2b498: e103152a mov      w1, w21
02a2b49c: ddb8cf97 bl       #0x1e19810 ; System.Collections.Generic.List<int>$$get_Item
02a2b4a0: b60200b4 cbz      x22, #0x2a2b4f4
02a2b4a4: 020340f9 ldr      x2, [x24]
02a2b4a8: e103002a mov      w1, w0
02a2b4ac: e00316aa mov      x0, x22
02a2b4b0: 7a760094 bl       #0x2a48e98 ; System.Collections.Generic.HashSet<int>$$Remove
02a2b4b4: 881a40b9 ldr      w8, [x20, #0x18]
02a2b4b8: b5060011 add      w21, w21, #1
02a2b4bc: bf02086b cmp      w21, w8
02a2b4c0: 6bfeff54 b.lt     #0x2a2b48c
02a2b4c4: 05000014 b        #0x2a2b4d8
02a2b4c8: 601640f9 ldr      x0, [x19, #0x28]
02a2b4cc: 400100b4 cbz      x0, #0x2a2b4f4
02a2b4d0: e1031f2a mov      w1, wzr
02a2b4d4: 28000094 bl       #0x2a2b574 ; Royal.Scenes.Game.Levels.Units.State.GameStateManager$$OperationReset
02a2b4d8: f37b48a9 ldp      x19, x30, [sp, #0x80]
02a2b4dc: f55347a9 ldp      x21, x20, [sp, #0x70]
02a2b4e0: f75b46a9 ldp      x23, x22, [sp, #0x60]
02a2b4e4: f96345a9 ldp      x25, x24, [sp, #0x50]
02a2b4e8: fa2340f9 ldr      x26, [sp, #0x40]
02a2b4ec: ff430291 add      sp, sp, #0x90
02a2b4f0: c0035fd6 ret      
02a2b4f4: cd179697 bl       #0xfb1428
02a2b4f8: f90316aa mov      x25, x22
02a2b4fc: cb179697 bl       #0xfb1428
02a2b500: 04000014 b        #0x2a2b510
02a2b504: 02000014 b        #0x2a2b50c
02a2b508: 01000014 b        #0x2a2b50c
02a2b50c: f90316aa mov      x25, x22
02a2b510: f50300aa mov      x21, x0
02a2b514: 3f040071 cmp      w1, #1
02a2b518: 61010054 b.ne     #0x2a2b544
02a2b51c: e00315aa mov      x0, x21
02a2b520: 2c608a97 bl       #0xcc35d0
02a2b524: 160040f9 ldr      x22, [x0]
02a2b528: a65e8a97 bl       #0xcc2fc0
02a2b52c: 210340f9 ldr      x1, [x25]
02a2b530: e0830091 add      x0, sp, #0x20
02a2b534: dd040394 bl       #0x2aec8a8 ; System.Collections.Generic.HashSet.Enumerator<int>$$Dispose
02a2b538: 36faffb4 cbz      x22, #0x2a2b47c
02a2b53c: e00316aa mov      x0, x22
02a2b540: a6c79597 bl       #0xf9d3d8
02a2b544: f6031faa mov      x22, xzr
02a2b548: 02000014 b        #0x2a2b550
02a2b54c: f50300aa mov      x21, x0
02a2b550: 210340f9 ldr      x1, [x25]
02a2b554: e0830091 add      x0, sp, #0x20
02a2b558: d4040394 bl       #0x2aec8a8 ; System.Collections.Generic.HashSet.Enumerator<int>$$Dispose
02a2b55c: 760000b5 cbnz     x22, #0x2a2b568
02a2b560: e00315aa mov      x0, x21
02a2b564: 675e8a97 bl       #0xcc2f00
02a2b568: e00316aa mov      x0, x22
02a2b56c: 9bc79597 bl       #0xf9d3d8
02a2b570: 76748a97 bl       #0xcc8748
