# Royal.Scenes.Game.Mechanics.Items.StaticItems.WaterSoilItem.WaterSoilItemModel$$GetExplodeScore
# Linear span; next metadata entry is not a proven CFG boundary.
01104b28: f80f1cf8 str      x24, [sp, #-0x40]!
01104b2c: f75b01a9 stp      x23, x22, [sp, #0x10]
01104b30: f55302a9 stp      x21, x20, [sp, #0x20]
01104b34: f37b03a9 stp      x19, x30, [sp, #0x30]
01104b38: 932302d0 adrp     x19, #0x5576000
01104b3c: 68a27f39 ldrb     w8, [x19, #0xfe8]
01104b40: f503012a mov      w21, w1
01104b44: f40300aa mov      x20, x0
01104b48: 28010037 tbnz     w8, #0, #0x1104b6c
01104b4c: 800802d0 adrp     x0, #0x5216000
01104b50: 005447f9 ldr      x0, [x0, #0xea8]
01104b54: ebb1fa97 bl       #0xfb1300
01104b58: c00602f0 adrp     x0, #0x51df000
01104b5c: 00d040f9 ldr      x0, [x0, #0x1a0]
01104b60: e8b1fa97 bl       #0xfb1300
01104b64: 28008052 mov      w8, #1
01104b68: 68a23f39 strb     w8, [x19, #0xfe8]
01104b6c: a0018052 mov      w0, #0xd
01104b70: e1031faa mov      x1, xzr
01104b74: f91b8a94 bl       #0x338bb58 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemExtensions$$ExplodeScore
01104b78: 881640f9 ldr      x8, [x20, #0x28]
01104b7c: f303002a mov      w19, w0
01104b80: c80800b4 cbz      x8, #0x1104c98
01104b84: 000940f9 ldr      x0, [x8, #0x10]
01104b88: 200c00b4 cbz      x0, #0x1104d0c
01104b8c: e1031faa mov      x1, xzr
01104b90: bb045994 bl       #0x2745e7c ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$HasCurrentItem
01104b94: 20080036 tbz      w0, #0, #0x1104c98
01104b98: 801640f9 ldr      x0, [x20, #0x28]
01104b9c: 800b00b4 cbz      x0, #0x1104d0c
01104ba0: e1031faa mov      x1, xzr
01104ba4: af0f6794 bl       #0x2ac8a60 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$get_CurrentItem
01104ba8: 200b00b4 cbz      x0, #0x1104d0c
01104bac: 080040f9 ldr      x8, [x0]
01104bb0: f60300aa mov      x22, x0
01104bb4: 09ad42f9 ldr      x9, [x8, #0x558]
01104bb8: 01b142f9 ldr      x1, [x8, #0x560]
01104bbc: 20013fd6 blr      x9
01104bc0: a0030036 tbz      w0, #0, #0x1104c34
01104bc4: 804240f9 ldr      x0, [x20, #0x80]
01104bc8: 200a00b4 cbz      x0, #0x1104d0c
01104bcc: 811640f9 ldr      x1, [x20, #0x28]
01104bd0: 980802d0 adrp     x24, #0x5216000
01104bd4: 185747f9 ldr      x24, [x24, #0xea8]
01104bd8: 50000094 bl       #0x1104d18 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.WaterItem.WaterItemHelper$$IsInBoostingArea
01104bdc: f703002a mov      w23, w0
01104be0: e003152a mov      w0, w21
01104be4: e1031faa mov      x1, xzr
01104be8: 55ff8994 bl       #0x338493c ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsSingleExploderStrategy
01104bec: c90240f9 ldr      x9, [x22]
01104bf0: 080340f9 ldr      x8, [x24]
01104bf4: 2bb14439 ldrb     w11, [x9, #0x12c]
01104bf8: 0ab14439 ldrb     w10, [x8, #0x12c]
01104bfc: 7f010a6b cmp      w11, w10
01104c00: 82050054 b.hs     #0x1104cb0
01104c04: e8031f2a mov      w8, wzr
01104c08: 17060037 tbnz     w23, #0, #0x1104cc8
01104c0c: 02000012 and      w2, w0, #1
01104c10: e00314aa mov      x0, x20
01104c14: e303132a mov      w3, w19
01104c18: f37b43a9 ldp      x19, x30, [sp, #0x30]
01104c1c: f55342a9 ldp      x21, x20, [sp, #0x20]
01104c20: f75b41a9 ldp      x23, x22, [sp, #0x10]
01104c24: e103082a mov      w1, w8
01104c28: e4031faa mov      x4, xzr
01104c2c: f80744f8 ldr      x24, [sp], #0x40
01104c30: 40a37f14 b        #0x30ed930 ; Royal.Scenes.Game.Mechanics.Items.Config.StaticItemModel$$GetSpecialItemExplodeScore
01104c34: c80240f9 ldr      x8, [x22]
01104c38: e00316aa mov      x0, x22
01104c3c: 09a542f9 ldr      x9, [x8, #0x548]
01104c40: 01a942f9 ldr      x1, [x8, #0x550]
01104c44: 20013fd6 blr      x9
01104c48: 80020036 tbz      w0, #0, #0x1104c98
01104c4c: c90602f0 adrp     x9, #0x51df000
01104c50: 29d140f9 ldr      x9, [x9, #0x1a0]
01104c54: c80240f9 ldr      x8, [x22]
01104c58: 210140f9 ldr      x1, [x9]
01104c5c: 0ab14439 ldrb     w10, [x8, #0x12c]
01104c60: 29b04439 ldrb     w9, [x1, #0x12c]
01104c64: 5f01096b cmp      w10, w9
01104c68: 43050054 b.lo     #0x1104d10
01104c6c: 086540f9 ldr      x8, [x8, #0xc8]
01104c70: 080d098b add      x8, x8, x9, lsl #3
01104c74: 08815ff8 ldur     x8, [x8, #-8]
01104c78: 1f0101eb cmp      x8, x1
01104c7c: a1040054 b.ne     #0x1104d10
01104c80: e00316aa mov      x0, x22
01104c84: e1031faa mov      x1, xzr
01104c88: 14343694 bl       #0x1e91cd8 ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemExplodeScoreCalculator$$IsLastTwoPinkItem
01104c8c: 00030036 tbz      w0, #0, #0x1104cec
01104c90: 33408a52 mov      w19, #0x5201
01104c94: f300a072 movk     w19, #7, lsl #16
01104c98: e003132a mov      w0, w19
01104c9c: f37b43a9 ldp      x19, x30, [sp, #0x30]
01104ca0: f55342a9 ldp      x21, x20, [sp, #0x20]
01104ca4: f75b41a9 ldp      x23, x22, [sp, #0x10]
01104ca8: f80744f8 ldr      x24, [sp], #0x40
01104cac: c0035fd6 ret      
01104cb0: 296540f9 ldr      x9, [x9, #0xc8]
01104cb4: 290d0a8b add      x9, x9, x10, lsl #3
01104cb8: 29815ff8 ldur     x9, [x9, #-8]
01104cbc: 3f0108eb cmp      x9, x8
01104cc0: e8179f1a cset     w8, eq
01104cc4: 57fa0736 tbz      w23, #0, #0x1104c0c
01104cc8: e203132a mov      w2, w19
01104ccc: f37b43a9 ldp      x19, x30, [sp, #0x30]
01104cd0: f55342a9 ldp      x21, x20, [sp, #0x20]
01104cd4: f75b41a9 ldp      x23, x22, [sp, #0x10]
01104cd8: 01000012 and      w1, w0, #1
01104cdc: e003082a mov      w0, w8
01104ce0: e3031faa mov      x3, xzr
01104ce4: f80744f8 ldr      x24, [sp], #0x40
01104ce8: 1ea37f14 b        #0x30ed960 ; Royal.Scenes.Game.Mechanics.Items.Config.StaticItemModel$$GetSpecialItemExplodeScoreForWaterLevel
01104cec: e00316aa mov      x0, x22
01104cf0: e1031faa mov      x1, xzr
01104cf4: e1343694 bl       #0x1e92078 ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemExplodeScoreCalculator$$WillCollectMatchItem
01104cf8: 28b59452 mov      w8, #0xa5a9
01104cfc: 1f000072 tst      w0, #1
01104d00: a800a072 movk     w8, #5, lsl #16
01104d04: 0011931a csel     w0, w8, w19, ne
01104d08: e5ffff17 b        #0x1104c9c
01104d0c: c7b1fa97 bl       #0xfb1428
01104d10: e00316aa mov      x0, x22
01104d14: abb2fa97 bl       #0xfb17c0
