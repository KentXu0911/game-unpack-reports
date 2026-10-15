# Royal.Scenes.Game.Mechanics.Matches.MatchGroup$$AllCellsReadyForExplode
# Next metadata method 0x1378c34, not a proven function boundary.
013788a4: ff4302d1 sub      sp, sp, #0x90
013788a8: fc6f03a9 stp      x28, x27, [sp, #0x30]
013788ac: fa6704a9 stp      x26, x25, [sp, #0x40]
013788b0: f85f05a9 stp      x24, x23, [sp, #0x50]
013788b4: f65706a9 stp      x22, x21, [sp, #0x60]
013788b8: f44f07a9 stp      x20, x19, [sp, #0x70]
013788bc: fd7b08a9 stp      x29, x30, [sp, #0x80]
013788c0: 13100290 adrp     x19, #0x5578000
013788c4: b8f40190 adrp     x24, #0x520c000
013788c8: 68ea4439 ldrb     w8, [x19, #0x13a]
013788cc: 18df47f9 ldr      x24, [x24, #0xfb8]
013788d0: f40300aa mov      x20, x0
013788d4: 88040037 tbnz     w8, #0, #0x1378964
013788d8: 00f501f0 adrp     x0, #0x521b000
013788dc: 00e842f9 ldr      x0, [x0, #0x5d0]
013788e0: 88e2f097 bl       #0xfb1300
013788e4: 60f501b0 adrp     x0, #0x5225000
013788e8: 002047f9 ldr      x0, [x0, #0xe40]
013788ec: 85e2f097 bl       #0xfb1300
013788f0: 80f401b0 adrp     x0, #0x5209000
013788f4: 009846f9 ldr      x0, [x0, #0xd30]
013788f8: 82e2f097 bl       #0xfb1300
013788fc: 20f601b0 adrp     x0, #0x523d000
01378900: 000847f9 ldr      x0, [x0, #0xe10]
01378904: 7fe2f097 bl       #0xfb1300
01378908: c0f20190 adrp     x0, #0x51d0000
0137890c: 00e847f9 ldr      x0, [x0, #0xfd0]
01378910: 7ce2f097 bl       #0xfb1300
01378914: c0f301d0 adrp     x0, #0x51f2000
01378918: 00b444f9 ldr      x0, [x0, #0x968]
0137891c: 79e2f097 bl       #0xfb1300
01378920: 80f401b0 adrp     x0, #0x5209000
01378924: 003446f9 ldr      x0, [x0, #0xc68]
01378928: 76e2f097 bl       #0xfb1300
0137892c: 40f201d0 adrp     x0, #0x51c2000
01378930: 003044f9 ldr      x0, [x0, #0x860]
01378934: 73e2f097 bl       #0xfb1300
01378938: a0f40190 adrp     x0, #0x520c000
0137893c: 000841f9 ldr      x0, [x0, #0x210]
01378940: 70e2f097 bl       #0xfb1300
01378944: a0f40190 adrp     x0, #0x520c000
01378948: 00dc47f9 ldr      x0, [x0, #0xfb8]
0137894c: 6de2f097 bl       #0xfb1300
01378950: 20f301f0 adrp     x0, #0x51df000
01378954: 00d040f9 ldr      x0, [x0, #0x1a0]
01378958: 6ae2f097 bl       #0xfb1300
0137895c: 28008052 mov      w8, #1
01378960: 68ea0439 strb     w8, [x19, #0x13a]
01378964: 000340f9 ldr      x0, [x24]
01378968: 00e4006f movi     v0.2d, #0000000000000000
0137896c: ff7f02a9 stp      xzr, xzr, [sp, #0x20]
01378970: e00300ad stp      q0, q0, [sp]
01378974: 08e040b9 ldr      w8, [x0, #0xe0]
01378978: 68000035 cbnz     w8, #0x1378984
0137897c: a2e2f097 bl       #0xfb1404
01378980: 000340f9 ldr      x0, [x24]
01378984: 085c40f9 ldr      x8, [x0, #0xb8]
01378988: 000140f9 ldr      x0, [x8]
0137898c: e01000b4 cbz      x0, #0x1378ba8
01378990: 68f501b0 adrp     x8, #0x5225000
01378994: 082147f9 ldr      x8, [x8, #0xe40]
01378998: 1bf501f0 adrp     x27, #0x521b000
0137899c: 3cf301f0 adrp     x28, #0x51df000
013789a0: 3df601b0 adrp     x29, #0x523d000
013789a4: d7f20190 adrp     x23, #0x51d0000
013789a8: 7beb42f9 ldr      x27, [x27, #0x5d0]
013789ac: 9cd340f9 ldr      x28, [x28, #0x1a0]
013789b0: bd0b47f9 ldr      x29, [x29, #0xe10]
013789b4: f7ea47f9 ldr      x23, [x23, #0xfd0]
013789b8: 010140f9 ldr      x1, [x8]
013789bc: 9af401b0 adrp     x26, #0x5209000
013789c0: 99f401b0 adrp     x25, #0x5209000
013789c4: 5a9b46f9 ldr      x26, [x26, #0xd30]
013789c8: 393746f9 ldr      x25, [x25, #0xc68]
013789cc: 2b659494 bl       #0x3891e78 ; System.Collections.Generic.Dictionary<int, object>$$Clear
013789d0: f3031f2a mov      w19, wzr
013789d4: 94220091 add      x20, x20, #8
013789d8: 600340f9 ldr      x0, [x27]
013789dc: 08e040b9 ldr      w8, [x0, #0xe0]
013789e0: 48000035 cbnz     w8, #0x13789e8
013789e4: 88e2f097 bl       #0xfb1404
013789e8: 880240b9 ldr      w8, [x20]
013789ec: 7f02086b cmp      w19, w8
013789f0: 0a090054 b.ge     #0x1378b10
013789f4: 600340f9 ldr      x0, [x27]
013789f8: 08e040b9 ldr      w8, [x0, #0xe0]
013789fc: 48000035 cbnz     w8, #0x1378a04
01378a00: 81e2f097 bl       #0xfb1404
01378a04: e00314aa mov      x0, x20
01378a08: e103132a mov      w1, w19
01378a0c: b0fbff97 bl       #0x13778cc ; Royal.Scenes.Game.Mechanics.Matches.Cell14$$get_Item
01378a10: c00c00b4 cbz      x0, #0x1378ba8
01378a14: f50300aa mov      x21, x0
01378a18: 000840f9 ldr      x0, [x0, #0x10]
01378a1c: 600c00b4 cbz      x0, #0x1378ba8
01378a20: e1031faa mov      x1, xzr
01378a24: 0f354f94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
01378a28: 000b00b4 cbz      x0, #0x1378b88
01378a2c: 090040f9 ldr      x9, [x0]
01378a30: 880340f9 ldr      x8, [x28]
01378a34: 2bb14439 ldrb     w11, [x9, #0x12c]
01378a38: 0ab14439 ldrb     w10, [x8, #0x12c]
01378a3c: 7f010a6b cmp      w11, w10
01378a40: 43060054 b.lo     #0x1378b08
01378a44: 296540f9 ldr      x9, [x9, #0xc8]
01378a48: 290d0a8b add      x9, x9, x10, lsl #3
01378a4c: 29815ff8 ldur     x9, [x9, #-8]
01378a50: 3f0108eb cmp      x9, x8
01378a54: 16009f9a csel     x22, x0, xzr, eq
01378a58: 81050054 b.ne     #0x1378b08
01378a5c: 760a00b4 cbz      x22, #0x1378ba8
01378a60: e00316aa mov      x0, x22
01378a64: e1031faa mov      x1, xzr
01378a68: 29692c94 bl       #0x1e92f0c ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemModel$$IsReadyForAutoExplode
01378a6c: e0040036 tbz      w0, #0, #0x1378b08
01378a70: 000340f9 ldr      x0, [x24]
01378a74: 08e040b9 ldr      w8, [x0, #0xe0]
01378a78: 68000035 cbnz     w8, #0x1378a84
01378a7c: 62e2f097 bl       #0xfb1404
01378a80: 000340f9 ldr      x0, [x24]
01378a84: 085c40f9 ldr      x8, [x0, #0xb8]
01378a88: 000140f9 ldr      x0, [x8]
01378a8c: e00800b4 cbz      x0, #0x1378ba8
01378a90: a11a40b9 ldr      w1, [x21, #0x18]
01378a94: a30340f9 ldr      x3, [x29]
01378a98: e2a30091 add      x2, sp, #0x28
01378a9c: 846b9494 bl       #0x38938ac ; System.Collections.Generic.Dictionary<int, object>$$TryGetValue
01378aa0: 80010036 tbz      w0, #0, #0x1378ad0
01378aa4: e81740f9 ldr      x8, [sp, #0x28]
01378aa8: 080800b4 cbz      x8, #0x1378ba8
01378aac: 001d40f9 ldr      x0, [x8, #0x38]
01378ab0: c00700b4 cbz      x0, #0x1378ba8
01378ab4: e1031faa mov      x1, xzr
01378ab8: 754d8094 bl       #0x338c08c ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$get_CurrentCell
01378abc: 600700b4 cbz      x0, #0x1378ba8
01378ac0: 081c40b9 ldr      w8, [x0, #0x1c]
01378ac4: a91e40b9 ldr      w9, [x21, #0x1c]
01378ac8: 1f01096b cmp      w8, w9
01378acc: aa010054 b.ge     #0x1378b00
01378ad0: 000340f9 ldr      x0, [x24]
01378ad4: 08e040b9 ldr      w8, [x0, #0xe0]
01378ad8: 68000035 cbnz     w8, #0x1378ae4
01378adc: 4ae2f097 bl       #0xfb1404
01378ae0: 000340f9 ldr      x0, [x24]
01378ae4: 085c40f9 ldr      x8, [x0, #0xb8]
01378ae8: 000140f9 ldr      x0, [x8]
01378aec: e00500b4 cbz      x0, #0x1378ba8
01378af0: a11a40b9 ldr      w1, [x21, #0x18]
01378af4: e30240f9 ldr      x3, [x23]
01378af8: e20316aa mov      x2, x22
01378afc: 74649494 bl       #0x3891ccc ; System.Collections.Generic.Dictionary<int, object>$$set_Item
01378b00: 73060011 add      w19, w19, #1
01378b04: b5ffff17 b        #0x13789d8
01378b08: e0031f2a mov      w0, wzr
01378b0c: 1f000014 b        #0x1378b88
01378b10: 000340f9 ldr      x0, [x24]
01378b14: 08e040b9 ldr      w8, [x0, #0xe0]
01378b18: 68000035 cbnz     w8, #0x1378b24
01378b1c: 3ae2f097 bl       #0xfb1404
01378b20: 000340f9 ldr      x0, [x24]
01378b24: 085c40f9 ldr      x8, [x0, #0xb8]
01378b28: 000140f9 ldr      x0, [x8]
01378b2c: e00300b4 cbz      x0, #0x1378ba8
01378b30: 410340f9 ldr      x1, [x26]
01378b34: e8030091 mov      x8, sp
01378b38: 80659494 bl       #0x3892138 ; System.Collections.Generic.Dictionary<int, object>$$GetEnumerator
01378b3c: 210340f9 ldr      x1, [x25]
01378b40: e0030091 mov      x0, sp
01378b44: f4786994 bl       #0x2dd6f14 ; System.Collections.Generic.Dictionary.Enumerator<int, object>$$MoveNext
01378b48: 00010036 tbz      w0, #0, #0x1378b68
01378b4c: e00f40f9 ldr      x0, [sp, #0x18]
01378b50: e00200b4 cbz      x0, #0x1378bac
01378b54: e1031faa mov      x1, xzr
01378b58: 20692c94 bl       #0x1e92fd8 ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemModel$$ShouldWaitForFallingMatchItems
01378b5c: 00ff0736 tbz      w0, #0, #0x1378b3c
01378b60: 53018052 mov      w19, #0xa
01378b64: 02000014 b        #0x1378b6c
01378b68: 73018052 mov      w19, #0xb
01378b6c: c8f301d0 adrp     x8, #0x51f2000
01378b70: 08b544f9 ldr      x8, [x8, #0x968]
01378b74: e0030091 mov      x0, sp
01378b78: 010140f9 ldr      x1, [x8]
01378b7c: 2d796994 bl       #0x2dd7030 ; System.Collections.Generic.Dictionary.Enumerator<int, object>$$Dispose
01378b80: 7f2a0071 cmp      w19, #0xa
01378b84: e0079f1a cset     w0, ne
01378b88: fd7b48a9 ldp      x29, x30, [sp, #0x80]
01378b8c: f44f47a9 ldp      x20, x19, [sp, #0x70]
01378b90: f65746a9 ldp      x22, x21, [sp, #0x60]
01378b94: f85f45a9 ldp      x24, x23, [sp, #0x50]
01378b98: fa6744a9 ldp      x26, x25, [sp, #0x40]
01378b9c: fc6f43a9 ldp      x28, x27, [sp, #0x30]
01378ba0: ff430291 add      sp, sp, #0x90
01378ba4: c0035fd6 ret      
01378ba8: 20e2f097 bl       #0xfb1428
01378bac: 1fe2f097 bl       #0xfb1428
01378bb0: 02000014 b        #0x1378bb8
01378bb4: 01000014 b        #0x1378bb8
01378bb8: f30300aa mov      x19, x0
01378bbc: 3f040071 cmp      w1, #1
01378bc0: a1010054 b.ne     #0x1378bf4
01378bc4: e00313aa mov      x0, x19
01378bc8: 822ae597 bl       #0xcc35d0
01378bcc: 140040f9 ldr      x20, [x0]
01378bd0: fc28e597 bl       #0xcc2fc0
01378bd4: c8f301d0 adrp     x8, #0x51f2000
01378bd8: 08b544f9 ldr      x8, [x8, #0x968]
01378bdc: e0030091 mov      x0, sp
01378be0: 010140f9 ldr      x1, [x8]
01378be4: 13796994 bl       #0x2dd7030 ; System.Collections.Generic.Dictionary.Enumerator<int, object>$$Dispose
01378be8: b40000b5 cbnz     x20, #0x1378bfc
01378bec: f3031f2a mov      w19, wzr
01378bf0: e4ffff17 b        #0x1378b80
01378bf4: f4031faa mov      x20, xzr
01378bf8: 04000014 b        #0x1378c08
01378bfc: e00314aa mov      x0, x20
01378c00: f691f097 bl       #0xf9d3d8
01378c04: f30300aa mov      x19, x0
01378c08: c8f301d0 adrp     x8, #0x51f2000
01378c0c: 08b544f9 ldr      x8, [x8, #0x968]
01378c10: 010140f9 ldr      x1, [x8]
01378c14: e0030091 mov      x0, sp
01378c18: 06796994 bl       #0x2dd7030 ; System.Collections.Generic.Dictionary.Enumerator<int, object>$$Dispose
01378c1c: 740000b5 cbnz     x20, #0x1378c28
01378c20: e00313aa mov      x0, x19
01378c24: b728e597 bl       #0xcc2f00
01378c28: e00314aa mov      x0, x20
01378c2c: eb91f097 bl       #0xf9d3d8
01378c30: c63ee597 bl       #0xcc8748
