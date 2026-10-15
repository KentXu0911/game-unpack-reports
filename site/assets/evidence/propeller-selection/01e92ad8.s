# Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemModel$$GetExplodeScore
# Next metadata method 0x1e92e48, not a proven function boundary.
01e92ad8: ff0301d1 sub      sp, sp, #0x40
01e92adc: f75b01a9 stp      x23, x22, [sp, #0x10]
01e92ae0: f55302a9 stp      x21, x20, [sp, #0x20]
01e92ae4: f37b03a9 stp      x19, x30, [sp, #0x30]
01e92ae8: 53b701d0 adrp     x19, #0x557c000
01e92aec: 68d65339 ldrb     w8, [x19, #0x4f5]
01e92af0: f403012a mov      w20, w1
01e92af4: f50300aa mov      x21, x0
01e92af8: a8020037 tbnz     w8, #0, #0x1e92b4c
01e92afc: 609c01d0 adrp     x0, #0x5220000
01e92b00: 00d847f9 ldr      x0, [x0, #0xfb0]
01e92b04: ff79c497 bl       #0xfb1300
01e92b08: 209c01b0 adrp     x0, #0x5217000
01e92b0c: 000846f9 ldr      x0, [x0, #0xc10]
01e92b10: fc79c497 bl       #0xfb1300
01e92b14: 409b0190 adrp     x0, #0x51fa000
01e92b18: 00f840f9 ldr      x0, [x0, #0x1f0]
01e92b1c: f979c497 bl       #0xfb1300
01e92b20: 409c01b0 adrp     x0, #0x521b000
01e92b24: 002847f9 ldr      x0, [x0, #0xe50]
01e92b28: f679c497 bl       #0xfb1300
01e92b2c: c09c0190 adrp     x0, #0x522a000
01e92b30: 003440f9 ldr      x0, [x0, #0x68]
01e92b34: f379c497 bl       #0xfb1300
01e92b38: a09801b0 adrp     x0, #0x51a7000
01e92b3c: 009c45f9 ldr      x0, [x0, #0xb38]
01e92b40: f079c497 bl       #0xfb1300
01e92b44: 28008052 mov      w8, #1
01e92b48: 68d61339 strb     w8, [x19, #0x4f5]
01e92b4c: ff0f00b9 str      wzr, [sp, #0xc]
01e92b50: a8e64939 ldrb     w8, [x21, #0x279]
01e92b54: f3031f2a mov      w19, wzr
01e92b58: e8100035 cbnz     w8, #0x1e92d74
01e92b5c: e00315aa mov      x0, x21
01e92b60: e103142a mov      w1, w20
01e92b64: e4faff97 bl       #0x1e916f4 ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemExplodeScoreCalculator$$CalculateScoreForMatchItem
01e92b68: f303002a mov      w19, w0
01e92b6c: e00315aa mov      x0, x21
01e92b70: e1031faa mov      x1, xzr
01e92b74: c8c05394 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
01e92b78: e00f00b4 cbz      x0, #0x1e92d74
01e92b7c: 20068052 mov      w0, #0x31
01e92b80: e1031faa mov      x1, xzr
01e92b84: c5042394 bl       #0x2753e98 ; Royal.Scenes.Game.Levels.LevelContext$$Has
01e92b88: 60030036 tbz      w0, #0, #0x1e92bf4
01e92b8c: 489b0190 adrp     x8, #0x51fa000
01e92b90: 08f940f9 ldr      x8, [x8, #0x1f0]
01e92b94: 20068052 mov      w0, #0x31
01e92b98: 010140f9 ldr      x1, [x8]
01e92b9c: b4af1a94 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
01e92ba0: f60300aa mov      x22, x0
01e92ba4: e00315aa mov      x0, x21
01e92ba8: e1031faa mov      x1, xzr
01e92bac: bac05394 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
01e92bb0: b61400b4 cbz      x22, #0x1e92e44
01e92bb4: a4c242f8 ldur     x4, [x21, #0x2c]
01e92bb8: e10300aa mov      x1, x0
01e92bbc: e2330091 add      x2, sp, #0xc
01e92bc0: e00316aa mov      x0, x22
01e92bc4: e303142a mov      w3, w20
01e92bc8: e5031faa mov      x5, xzr
01e92bcc: eb340a94 bl       #0x211ff78 ; Royal.Scenes.Game.Mechanics.Items.IceCubeItem.IceCubeItemHelper$$GetAvailableIceCubeScoreAboveCell
01e92bd0: 1f040071 cmp      w0, #1
01e92bd4: 0b010054 b.lt     #0x1e92bf4
01e92bd8: f70f40b9 ldr      w23, [sp, #0xc]
01e92bdc: 28e18552 mov      w8, #0x2f09
01e92be0: 8800a072 movk     w8, #4, lsl #16
01e92be4: ff02086b cmp      w23, w8
01e92be8: f302130b add      w19, w23, w19
01e92bec: 6d000054 b.le     #0x1e92bf8
01e92bf0: 61000014 b        #0x1e92d74
01e92bf4: f7031f2a mov      w23, wzr
01e92bf8: 200a8052 mov      w0, #0x51
01e92bfc: e1031faa mov      x1, xzr
01e92c00: a6042394 bl       #0x2753e98 ; Royal.Scenes.Game.Levels.LevelContext$$Has
01e92c04: 80020036 tbz      w0, #0, #0x1e92c54
01e92c08: c89c0190 adrp     x8, #0x522a000
01e92c0c: 083540f9 ldr      x8, [x8, #0x68]
01e92c10: 200a8052 mov      w0, #0x51
01e92c14: 010140f9 ldr      x1, [x8]
01e92c18: 95af1a94 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
01e92c1c: f60300aa mov      x22, x0
01e92c20: e00315aa mov      x0, x21
01e92c24: e1031faa mov      x1, xzr
01e92c28: 9bc05394 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
01e92c2c: d61000b4 cbz      x22, #0x1e92e44
01e92c30: a4c242f8 ldur     x4, [x21, #0x2c]
01e92c34: e10300aa mov      x1, x0
01e92c38: e2330091 add      x2, sp, #0xc
01e92c3c: e00316aa mov      x0, x22
01e92c40: e303142a mov      w3, w20
01e92c44: e5031faa mov      x5, xzr
01e92c48: f2630b94 bl       #0x216bc10 ; Royal.Scenes.Game.Mechanics.Items.ShuttleItem.ShuttleItemHelper$$GetAvailableShuttleScoreAboveCell
01e92c4c: 1f040071 cmp      w0, #1
01e92c50: ca080054 b.ge     #0x1e92d68
01e92c54: e0028052 mov      w0, #0x17
01e92c58: e1031faa mov      x1, xzr
01e92c5c: 8f042394 bl       #0x2753e98 ; Royal.Scenes.Game.Levels.LevelContext$$Has
01e92c60: 80020036 tbz      w0, #0, #0x1e92cb0
01e92c64: 689c01d0 adrp     x8, #0x5220000
01e92c68: 08d947f9 ldr      x8, [x8, #0xfb0]
01e92c6c: e0028052 mov      w0, #0x17
01e92c70: 010140f9 ldr      x1, [x8]
01e92c74: 7eaf1a94 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
01e92c78: f60300aa mov      x22, x0
01e92c7c: e00315aa mov      x0, x21
01e92c80: e1031faa mov      x1, xzr
01e92c84: 84c05394 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
01e92c88: f60d00b4 cbz      x22, #0x1e92e44
01e92c8c: a4c242f8 ldur     x4, [x21, #0x2c]
01e92c90: e10300aa mov      x1, x0
01e92c94: e2330091 add      x2, sp, #0xc
01e92c98: e00316aa mov      x0, x22
01e92c9c: e303142a mov      w3, w20
01e92ca0: e5031faa mov      x5, xzr
01e92ca4: 7c780b94 bl       #0x2170e94 ; Royal.Scenes.Game.Mechanics.Items.BirdItem.BirdItemHelper$$GetAvailableBirdScoreAboveCell
01e92ca8: 1f040071 cmp      w0, #1
01e92cac: ea050054 b.ge     #0x1e92d68
01e92cb0: 200d8052 mov      w0, #0x69
01e92cb4: e1031faa mov      x1, xzr
01e92cb8: 78042394 bl       #0x2753e98 ; Royal.Scenes.Game.Levels.LevelContext$$Has
01e92cbc: 80020036 tbz      w0, #0, #0x1e92d0c
01e92cc0: a89801b0 adrp     x8, #0x51a7000
01e92cc4: 089d45f9 ldr      x8, [x8, #0xb38]
01e92cc8: 200d8052 mov      w0, #0x69
01e92ccc: 010140f9 ldr      x1, [x8]
01e92cd0: 67af1a94 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
01e92cd4: f60300aa mov      x22, x0
01e92cd8: e00315aa mov      x0, x21
01e92cdc: e1031faa mov      x1, xzr
01e92ce0: 6dc05394 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
01e92ce4: 160b00b4 cbz      x22, #0x1e92e44
01e92ce8: a4c242f8 ldur     x4, [x21, #0x2c]
01e92cec: e10300aa mov      x1, x0
01e92cf0: e2330091 add      x2, sp, #0xc
01e92cf4: e00316aa mov      x0, x22
01e92cf8: e303142a mov      w3, w20
01e92cfc: e5031faa mov      x5, xzr
01e92d00: 562c7d94 bl       #0x3ddde58 ; Royal.Scenes.Game.Mechanics.Items.TurtleItem.TurtleItemHelper$$GetAvailableTurtleScoreAboveCell
01e92d04: 1f040071 cmp      w0, #1
01e92d08: 0a030054 b.ge     #0x1e92d68
01e92d0c: c00b8052 mov      w0, #0x5e
01e92d10: e1031faa mov      x1, xzr
01e92d14: 61042394 bl       #0x2753e98 ; Royal.Scenes.Game.Levels.LevelContext$$Has
01e92d18: a0030036 tbz      w0, #0, #0x1e92d8c
01e92d1c: 489c01b0 adrp     x8, #0x521b000
01e92d20: 082947f9 ldr      x8, [x8, #0xe50]
01e92d24: c00b8052 mov      w0, #0x5e
01e92d28: 010140f9 ldr      x1, [x8]
01e92d2c: 50af1a94 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
01e92d30: f60300aa mov      x22, x0
01e92d34: e00315aa mov      x0, x21
01e92d38: e1031faa mov      x1, xzr
01e92d3c: 56c05394 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
01e92d40: 360800b4 cbz      x22, #0x1e92e44
01e92d44: a4c242f8 ldur     x4, [x21, #0x2c]
01e92d48: e10300aa mov      x1, x0
01e92d4c: e2330091 add      x2, sp, #0xc
01e92d50: e00316aa mov      x0, x22
01e92d54: e303142a mov      w3, w20
01e92d58: e5031faa mov      x5, xzr
01e92d5c: 24ef0094 bl       #0x1ece9ec ; Royal.Scenes.Game.Mechanics.Items.RoyalBotItem.RoyalBotItemHelper$$GetAvailableRoyalBotScoreAboveCell
01e92d60: 1f040071 cmp      w0, #1
01e92d64: 4b010054 b.lt     #0x1e92d8c
01e92d68: e80f40b9 ldr      w8, [sp, #0xc]
01e92d6c: 6902174b sub      w9, w19, w23
01e92d70: 3301080b add      w19, w9, w8
01e92d74: e003132a mov      w0, w19
01e92d78: f37b43a9 ldp      x19, x30, [sp, #0x30]
01e92d7c: f55342a9 ldp      x21, x20, [sp, #0x20]
01e92d80: f75b41a9 ldp      x23, x22, [sp, #0x10]
01e92d84: ff030191 add      sp, sp, #0x40
01e92d88: c0035fd6 ret      
01e92d8c: 40048052 mov      w0, #0x22
01e92d90: e1031faa mov      x1, xzr
01e92d94: 41042394 bl       #0x2753e98 ; Royal.Scenes.Game.Levels.LevelContext$$Has
01e92d98: e0fe0736 tbz      w0, #0, #0x1e92d74
01e92d9c: 289c01b0 adrp     x8, #0x5217000
01e92da0: 080946f9 ldr      x8, [x8, #0xc10]
01e92da4: 40048052 mov      w0, #0x22
01e92da8: 010140f9 ldr      x1, [x8]
01e92dac: 30af1a94 bl       #0x253ea6c ; Royal.Scenes.Game.Levels.LevelContext$$GetLate<object>
01e92db0: f60300aa mov      x22, x0
01e92db4: e00315aa mov      x0, x21
01e92db8: e1031faa mov      x1, xzr
01e92dbc: 36c05394 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
01e92dc0: 360400b4 cbz      x22, #0x1e92e44
01e92dc4: a4c242f8 ldur     x4, [x21, #0x2c]
01e92dc8: e10300aa mov      x1, x0
01e92dcc: e2330091 add      x2, sp, #0xc
01e92dd0: e00316aa mov      x0, x22
01e92dd4: e303142a mov      w3, w20
01e92dd8: e5031faa mov      x5, xzr
01e92ddc: a6943b94 bl       #0x2d78074 ; Royal.Scenes.Game.Mechanics.Items.FrogItem.FrogItemHelper$$GetAvailableFrogScoreAboveCell
01e92de0: 1f040071 cmp      w0, #1
01e92de4: 8bfcff54 b.lt     #0x1e92d74
01e92de8: e80f40b9 ldr      w8, [sp, #0xc]
01e92dec: 09958852 mov      w9, #0x44a8
01e92df0: 1f01096b cmp      w8, w9
01e92df4: 81010054 b.ne     #0x1e92e24
01e92df8: 9f0a0071 cmp      w20, #2
01e92dfc: a0000054 b.eq     #0x1e92e10
01e92e00: e003142a mov      w0, w20
01e92e04: e1031faa mov      x1, xzr
01e92e08: cdc65394 bl       #0x338493c ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsSingleExploderStrategy
01e92e0c: a0000036 tbz      w0, #0, #0x1e92e20
01e92e10: 08229f52 mov      w8, #0xf910
01e92e14: c800a072 movk     w8, #6, lsl #16
01e92e18: e80f00b9 str      w8, [sp, #0xc]
01e92e1c: 02000014 b        #0x1e92e24
01e92e20: e80f40b9 ldr      w8, [sp, #0xc]
01e92e24: e9cc8c52 mov      w9, #0x6667
01e92e28: c9ccac72 movk     w9, #0x6666, lsl #16
01e92e2c: 087d299b smull    x8, w8, w9
01e92e30: 09fd7fd3 lsr      x9, x8, #0x3f
01e92e34: 08fd6193 asr      x8, x8, #0x21
01e92e38: 0801090b add      w8, w8, w9
01e92e3c: 0805080b add      w8, w8, w8, lsl #1
01e92e40: cbffff17 b        #0x1e92d6c
01e92e44: 7979c497 bl       #0xfb1428
