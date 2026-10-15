# Royal.Scenes.Game.Mechanics.Matches.MatchManager$$IsValidToPatternSearch
# Next metadata method 0x137aaa0, not a proven function boundary.
0137a888: f80f1cf8 str      x24, [sp, #-0x40]!
0137a88c: f75b01a9 stp      x23, x22, [sp, #0x10]
0137a890: f55302a9 stp      x21, x20, [sp, #0x20]
0137a894: f37b03a9 stp      x19, x30, [sp, #0x30]
0137a898: f70f02d0 adrp     x23, #0x5578000
0137a89c: e84a4539 ldrb     w8, [x23, #0x152]
0137a8a0: f603042a mov      w22, w4
0137a8a4: f503032a mov      w21, w3
0137a8a8: f30302aa mov      x19, x2
0137a8ac: f40301aa mov      x20, x1
0137a8b0: c8000037 tbnz     w8, #0, #0x137a8c8
0137a8b4: 20f301b0 adrp     x0, #0x51df000
0137a8b8: 00d040f9 ldr      x0, [x0, #0x1a0]
0137a8bc: 91daf097 bl       #0xfb1300
0137a8c0: 28008052 mov      w8, #1
0137a8c4: e84a0539 strb     w8, [x23, #0x152]
0137a8c8: e0031f2a mov      w0, wzr
0137a8cc: 340700b4 cbz      x20, #0x137a9b0
0137a8d0: 130700b4 cbz      x19, #0x137a9b0
0137a8d4: 880a40f9 ldr      x8, [x20, #0x10]
0137a8d8: c80d00b4 cbz      x8, #0x137aa90
0137a8dc: 080940f9 ldr      x8, [x8, #0x10]
0137a8e0: 880d00b4 cbz      x8, #0x137aa90
0137a8e4: 080d40f9 ldr      x8, [x8, #0x18]
0137a8e8: 280600b4 cbz      x8, #0x137a9ac
0137a8ec: 38f301b0 adrp     x24, #0x51df000
0137a8f0: 18d340f9 ldr      x24, [x24, #0x1a0]
0137a8f4: 090140f9 ldr      x9, [x8]
0137a8f8: 080340f9 ldr      x8, [x24]
0137a8fc: 2bb14439 ldrb     w11, [x9, #0x12c]
0137a900: 0ab14439 ldrb     w10, [x8, #0x12c]
0137a904: 7f010a6b cmp      w11, w10
0137a908: 23050054 b.lo     #0x137a9ac
0137a90c: 296540f9 ldr      x9, [x9, #0xc8]
0137a910: 290d0a8b add      x9, x9, x10, lsl #3
0137a914: 29815ff8 ldur     x9, [x9, #-8]
0137a918: 3f0108eb cmp      x9, x8
0137a91c: 81040054 b.ne     #0x137a9ac
0137a920: 806240f9 ldr      x0, [x20, #0xc0]
0137a924: 600b00b4 cbz      x0, #0x137aa90
0137a928: e1031faa mov      x1, xzr
0137a92c: ef435d94 bl       #0x2acb8e8 ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$HasTouchBlockingItemExceptChain
0137a930: e0030037 tbnz     w0, #0, #0x137a9ac
0137a934: e00314aa mov      x0, x20
0137a938: e1031faa mov      x1, xzr
0137a93c: 14445d94 bl       #0x2acb98c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$HasIncomingTouchBlockingItem
0137a940: 60030037 tbnz     w0, #0, #0x137a9ac
0137a944: 680a40f9 ldr      x8, [x19, #0x10]
0137a948: 480a00b4 cbz      x8, #0x137aa90
0137a94c: 080940f9 ldr      x8, [x8, #0x10]
0137a950: 080a00b4 cbz      x8, #0x137aa90
0137a954: 170d40f9 ldr      x23, [x8, #0x18]
0137a958: b70200b4 cbz      x23, #0x137a9ac
0137a95c: e90240f9 ldr      x9, [x23]
0137a960: 080340f9 ldr      x8, [x24]
0137a964: 2bb14439 ldrb     w11, [x9, #0x12c]
0137a968: 0ab14439 ldrb     w10, [x8, #0x12c]
0137a96c: 7f010a6b cmp      w11, w10
0137a970: e3010054 b.lo     #0x137a9ac
0137a974: 296540f9 ldr      x9, [x9, #0xc8]
0137a978: 290d0a8b add      x9, x9, x10, lsl #3
0137a97c: 29815ff8 ldur     x9, [x9, #-8]
0137a980: 3f0108eb cmp      x9, x8
0137a984: 41010054 b.ne     #0x137a9ac
0137a988: e00313aa mov      x0, x19
0137a98c: e1031faa mov      x1, xzr
0137a990: ff435d94 bl       #0x2acb98c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$HasIncomingTouchBlockingItem
0137a994: c0000037 tbnz     w0, #0, #0x137a9ac
0137a998: 606240f9 ldr      x0, [x19, #0xc0]
0137a99c: a00700b4 cbz      x0, #0x137aa90
0137a9a0: e1031faa mov      x1, xzr
0137a9a4: d1435d94 bl       #0x2acb8e8 ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$HasTouchBlockingItemExceptChain
0137a9a8: e0000036 tbz      w0, #0, #0x137a9c4
0137a9ac: e0031f2a mov      w0, wzr
0137a9b0: f37b43a9 ldp      x19, x30, [sp, #0x30]
0137a9b4: f55342a9 ldp      x21, x20, [sp, #0x20]
0137a9b8: f75b41a9 ldp      x23, x22, [sp, #0x10]
0137a9bc: f80744f8 ldr      x24, [sp], #0x40
0137a9c0: c0035fd6 ret      
0137a9c4: 96000036 tbz      w22, #0, #0x137a9d4
0137a9c8: e00317aa mov      x0, x23
0137a9cc: 62030094 bl       #0x137b754 ; Royal.Scenes.Game.Mechanics.Matches.MatchManager$$IsFallStateValidForMatch
0137a9d0: e0fe0736 tbz      w0, #0, #0x137a9ac
0137a9d4: bf0a0071 cmp      w21, #2
0137a9d8: c0000054 b.eq     #0x137a9f0
0137a9dc: bf060071 cmp      w21, #1
0137a9e0: 01010054 b.ne     #0x137aa00
0137a9e4: 881a40b9 ldr      w8, [x20, #0x18]
0137a9e8: 691a40b9 ldr      w9, [x19, #0x18]
0137a9ec: 03000014 b        #0x137a9f8
0137a9f0: 881e40b9 ldr      w8, [x20, #0x1c]
0137a9f4: 691e40b9 ldr      w9, [x19, #0x1c]
0137a9f8: 1f01096b cmp      w8, w9
0137a9fc: 81fdff54 b.ne     #0x137a9ac
0137aa00: 880a40f9 ldr      x8, [x20, #0x10]
0137aa04: 680400b4 cbz      x8, #0x137aa90
0137aa08: 080940f9 ldr      x8, [x8, #0x10]
0137aa0c: 280400b4 cbz      x8, #0x137aa90
0137aa10: 000d40f9 ldr      x0, [x8, #0x18]
0137aa14: e00300b4 cbz      x0, #0x137aa90
0137aa18: 080040f9 ldr      x8, [x0]
0137aa1c: 010340f9 ldr      x1, [x24]
0137aa20: 0ab14439 ldrb     w10, [x8, #0x12c]
0137aa24: 29b04439 ldrb     w9, [x1, #0x12c]
0137aa28: 5f01096b cmp      w10, w9
0137aa2c: 43030054 b.lo     #0x137aa94
0137aa30: 086540f9 ldr      x8, [x8, #0xc8]
0137aa34: 2a0500d1 sub      x10, x9, #1
0137aa38: 08796af8 ldr      x8, [x8, x10, lsl #3]
0137aa3c: 1f0101eb cmp      x8, x1
0137aa40: a1020054 b.ne     #0x137aa94
0137aa44: 680a40f9 ldr      x8, [x19, #0x10]
0137aa48: 480200b4 cbz      x8, #0x137aa90
0137aa4c: 080940f9 ldr      x8, [x8, #0x10]
0137aa50: 080200b4 cbz      x8, #0x137aa90
0137aa54: 080d40f9 ldr      x8, [x8, #0x18]
0137aa58: c80100b4 cbz      x8, #0x137aa90
0137aa5c: 0b0140f9 ldr      x11, [x8]
0137aa60: 6cb14439 ldrb     w12, [x11, #0x12c]
0137aa64: 9f01096b cmp      w12, w9
0137aa68: 83010054 b.lo     #0x137aa98
0137aa6c: 696540f9 ldr      x9, [x11, #0xc8]
0137aa70: 29796af8 ldr      x9, [x9, x10, lsl #3]
0137aa74: 3f0101eb cmp      x9, x1
0137aa78: 01010054 b.ne     #0x137aa98
0137aa7c: 091840b9 ldr      w9, [x0, #0x18]
0137aa80: 081940b9 ldr      w8, [x8, #0x18]
0137aa84: 3f01086b cmp      w9, w8
0137aa88: e0179f1a cset     w0, eq
0137aa8c: c9ffff17 b        #0x137a9b0
0137aa90: 66daf097 bl       #0xfb1428
0137aa94: 4bdbf097 bl       #0xfb17c0
0137aa98: e00308aa mov      x0, x8
0137aa9c: 49dbf097 bl       #0xfb17c0
