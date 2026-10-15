# Royal.Scenes.Game.Levels.Units.BoardManager$$StartChangingBoard
# Next metadata method 0x2755f18, not a proven function boundary.
02755b48: eb2bba6d stp      d11, d10, [sp, #-0x60]!
02755b4c: e923016d stp      d9, d8, [sp, #0x10]
02755b50: f81300f9 str      x24, [sp, #0x20]
02755b54: f75b03a9 stp      x23, x22, [sp, #0x30]
02755b58: f55304a9 stp      x21, x20, [sp, #0x40]
02755b5c: f37b05a9 stp      x19, x30, [sp, #0x50]
02755b60: 547101f0 adrp     x20, #0x5580000
02755b64: 375301d0 adrp     x23, #0x51bb000
02755b68: 88825639 ldrb     w8, [x20, #0x5a0]
02755b6c: f73a41f9 ldr      x23, [x23, #0x270]
02755b70: 681ca34e mov      v8.16b, v3.16b
02755b74: f50302aa mov      x21, x2
02755b78: f60301aa mov      x22, x1
02755b7c: 491ca24e mov      v9.16b, v2.16b
02755b80: 2a1ca14e mov      v10.16b, v1.16b
02755b84: 0b1ca04e mov      v11.16b, v0.16b
02755b88: f30300aa mov      x19, x0
02755b8c: 28040037 tbnz     w8, #0, #0x2755c10
02755b90: e05201b0 adrp     x0, #0x51b2000
02755b94: 004c47f9 ldr      x0, [x0, #0xe98]
02755b98: da6da197 bl       #0xfb1300
02755b9c: 805201f0 adrp     x0, #0x51a8000
02755ba0: 001047f9 ldr      x0, [x0, #0xe20]
02755ba4: d76da197 bl       #0xfb1300
02755ba8: 405201f0 adrp     x0, #0x51a0000
02755bac: 00bc46f9 ldr      x0, [x0, #0xd78]
02755bb0: d46da197 bl       #0xfb1300
02755bb4: 20530190 adrp     x0, #0x51b9000
02755bb8: 007045f9 ldr      x0, [x0, #0xae0]
02755bbc: d16da197 bl       #0xfb1300
02755bc0: 00520190 adrp     x0, #0x5195000
02755bc4: 000c42f9 ldr      x0, [x0, #0x418]
02755bc8: ce6da197 bl       #0xfb1300
02755bcc: a05301d0 adrp     x0, #0x51cb000
02755bd0: 002844f9 ldr      x0, [x0, #0x850]
02755bd4: cb6da197 bl       #0xfb1300
02755bd8: 605601d0 adrp     x0, #0x5223000
02755bdc: 000c47f9 ldr      x0, [x0, #0xe18]
02755be0: c86da197 bl       #0xfb1300
02755be4: 205301d0 adrp     x0, #0x51bb000
02755be8: 003841f9 ldr      x0, [x0, #0x270]
02755bec: c56da197 bl       #0xfb1300
02755bf0: 805201f0 adrp     x0, #0x51a8000
02755bf4: 005043f9 ldr      x0, [x0, #0x6a0]
02755bf8: c26da197 bl       #0xfb1300
02755bfc: e05201d0 adrp     x0, #0x51b3000
02755c00: 00a041f9 ldr      x0, [x0, #0x340]
02755c04: bf6da197 bl       #0xfb1300
02755c08: 28008052 mov      w8, #1
02755c0c: 88821639 strb     w8, [x20, #0x5a0]
02755c10: e00240f9 ldr      x0, [x23]
02755c14: 016ea197 bl       #0xfb1418
02755c18: e01700b4 cbz      x0, #0x2755f14
02755c1c: e1031faa mov      x1, xzr
02755c20: f40300aa mov      x20, x0
02755c24: 7476ec97 bl       #0x22735f4 ; System.Object$$.ctor
02755c28: e00314aa mov      x0, x20
02755c2c: 130c01f8 str      x19, [x0, #0x10]!
02755c30: e10313aa mov      x1, x19
02755c34: 9e6da197 bl       #0xfb12ac
02755c38: e00314aa mov      x0, x20
02755c3c: 168c02f8 str      x22, [x0, #0x28]!
02755c40: e10316aa mov      x1, x22
02755c44: 0b283e2d stp      s11, s10, [x0, #-0x10]
02755c48: 09801fbc stur     s9, [x0, #-8]
02755c4c: 986da197 bl       #0xfb12ac
02755c50: 601240f9 ldr      x0, [x19, #0x20]
02755c54: 28008052 mov      w8, #1
02755c58: 68120139 strb     w8, [x19, #0x44]
02755c5c: c01500b4 cbz      x0, #0x2755f14
02755c60: 585201f0 adrp     x24, #0x51a0000
02755c64: 975201f0 adrp     x23, #0x51a8000
02755c68: 18bf46f9 ldr      x24, [x24, #0xd78]
02755c6c: f71247f9 ldr      x23, [x23, #0xe20]
02755c70: a1018052 mov      w1, #0xd
02755c74: e2031faa mov      x2, xzr
02755c78: 46590b94 bl       #0x2a2c190 ; Royal.Scenes.Game.Levels.Units.State.GameStateManager$$OperationStart
02755c7c: e00313aa mov      x0, x19
02755c80: a8000094 bl       #0x2755f20 ; Royal.Scenes.Game.Levels.Units.BoardManager$$CalculateHeightDiffBetweenBoards
02755c84: 080340f9 ldr      x8, [x24]
02755c88: f603002a mov      w22, w0
02755c8c: 09e140b9 ldr      w9, [x8, #0xe0]
02755c90: 69000035 cbnz     w9, #0x2755c9c
02755c94: e00308aa mov      x0, x8
02755c98: db6da197 bl       #0xfb1404
02755c9c: e10240f9 ldr      x1, [x23]
02755ca0: e0031f2a mov      w0, wzr
02755ca4: 684ce397 bl       #0x2028e44 ; Royal.Scenes.Game.Context.GameContext$$Get<object>
02755ca8: f70314aa mov      x23, x20
02755cac: e00e03f8 str      x0, [x23, #0x30]!
02755cb0: e10300aa mov      x1, x0
02755cb4: e00317aa mov      x0, x23
02755cb8: 7d6da197 bl       #0xfb12ac
02755cbc: e00240f9 ldr      x0, [x23]
02755cc0: a01200b4 cbz      x0, #0x2755f14
02755cc4: 37530190 adrp     x23, #0x51b9000
02755cc8: f77245f9 ldr      x23, [x23, #0xae0]
02755ccc: e1031faa mov      x1, xzr
02755cd0: 2d8cf397 bl       #0x2438d84 ; Royal.Scenes.Game.Context.Units.GameTouchListener$$DisableTouch
02755cd4: e8b800d0 adrp     x8, #0x3e73000
02755cd8: 016d4cbd ldr      s1, [x8, #0xc6c]
02755cdc: 88b800d0 adrp     x8, #0x3e67000
02755ce0: c002221e scvtf    s0, w22
02755ce4: 023544bd ldr      s2, [x8, #0x434]
02755ce8: 00c0211e fsqrt    s0, s0
02755cec: 0008211e fmul     s0, s0, s1
02755cf0: 0008281e fmul     s0, s0, s8
02755cf4: 0028221e fadd     s0, s0, s2
02755cf8: 802600bd str      s0, [x20, #0x24]
02755cfc: e00240f9 ldr      x0, [x23]
02755d00: 08e040b9 ldr      w8, [x0, #0xe0]
02755d04: 48000035 cbnz     w8, #0x2755d0c
02755d08: bf6da197 bl       #0xfb1404
02755d0c: e0031faa mov      x0, xzr
02755d10: 5d12e497 bl       #0x205a684 ; Royal.Player.Context.Units.LevelManager$$get_IsLavaLevel
02755d14: 80020036 tbz      w0, #0, #0x2755d64
02755d18: e85201d0 adrp     x8, #0x51b3000
02755d1c: 08a141f9 ldr      x8, [x8, #0x340]
02755d20: 965201f0 adrp     x22, #0x51a8000
02755d24: 000140f9 ldr      x0, [x8]
02755d28: 08e040b9 ldr      w8, [x0, #0xe0]
02755d2c: d65243f9 ldr      x22, [x22, #0x6a0]
02755d30: 48000035 cbnz     w8, #0x2755d38
02755d34: b46da197 bl       #0xfb1404
02755d38: c10240f9 ldr      x1, [x22]
02755d3c: 40048052 mov      w0, #0x22
02755d40: 89010494 bl       #0x2856364 ; Royal.Player.Context.UserContext$$Get<object>
02755d44: 800e00b4 cbz      x0, #0x2755f14
02755d48: 002c40f9 ldr      x0, [x0, #0x58]
02755d4c: 400e00b4 cbz      x0, #0x2755f14
02755d50: 802640bd ldr      s0, [x20, #0x24]
02755d54: e10315aa mov      x1, x21
02755d58: e2031faa mov      x2, xzr
02755d5c: a074bb97 bl       #0x1632fdc ; Royal.Scenes.Home.Ui.Dialogs.LavaQuest.LavaQuestCompetitionSceneView$$AnimateBackgroundForScroll
02755d60: 2b000014 b        #0x2755e0c
02755d64: e00240f9 ldr      x0, [x23]
02755d68: 08e040b9 ldr      w8, [x0, #0xe0]
02755d6c: 48000035 cbnz     w8, #0x2755d74
02755d70: a56da197 bl       #0xfb1404
02755d74: 167101d0 adrp     x22, #0x5577000
02755d78: c84e7d39 ldrb     w8, [x22, #0xf53]
02755d7c: c8000035 cbnz     w8, #0x2755d94
02755d80: 20530190 adrp     x0, #0x51b9000
02755d84: 007045f9 ldr      x0, [x0, #0xae0]
02755d88: 5e6da197 bl       #0xfb1300
02755d8c: 28008052 mov      w8, #1
02755d90: c84e3d39 strb     w8, [x22, #0xf53]
02755d94: e00240f9 ldr      x0, [x23]
02755d98: 08e040b9 ldr      w8, [x0, #0xe0]
02755d9c: 68000035 cbnz     w8, #0x2755da8
02755da0: 996da197 bl       #0xfb1404
02755da4: e00240f9 ldr      x0, [x23]
02755da8: 085c40f9 ldr      x8, [x0, #0xb8]
02755dac: 08514039 ldrb     w8, [x8, #0x14]
02755db0: 68000034 cbz      w8, #0x2755dbc
02755db4: f6031faa mov      x22, xzr
02755db8: 16000014 b        #0x2755e10
02755dbc: 681a40f9 ldr      x8, [x19, #0x30]
02755dc0: a80a00b4 cbz      x8, #0x2755f14
02755dc4: 000d40f9 ldr      x0, [x8, #0x18]
02755dc8: 600a00b4 cbz      x0, #0x2755f14
02755dcc: e1031faa mov      x1, xzr
02755dd0: f6b35694 bl       #0x3d02da8 ; UnityEngine.Component$$get_transform
02755dd4: 000a00b4 cbz      x0, #0x2755f14
02755dd8: e1031faa mov      x1, xzr
02755ddc: 6ad15694 bl       #0x3d0a384 ; UnityEngine.Transform$$get_localScale
02755de0: 681a40f9 ldr      x8, [x19, #0x30]
02755de4: 880900b4 cbz      x8, #0x2755f14
02755de8: 000d40f9 ldr      x0, [x8, #0x18]
02755dec: 400900b4 cbz      x0, #0x2755f14
02755df0: 822640bd ldr      s2, [x20, #0x24]
02755df4: 0010211e fmov     s0, #3.00000000
02755df8: 2008201e fmul     s0, s1, s0
02755dfc: e10315aa mov      x1, x21
02755e00: 411ca24e mov      v1.16b, v2.16b
02755e04: e2031faa mov      x2, xzr
02755e08: f0c43294 bl       #0x34071c8 ; Royal.Scenes.Home.Areas.Scripts.AreaView$$AnimateBackgroundForScroll
02755e0c: f60300aa mov      x22, x0
02755e10: e85201b0 adrp     x8, #0x51b2000
02755e14: 084d47f9 ldr      x8, [x8, #0xe98]
02755e18: 17520190 adrp     x23, #0x5195000
02755e1c: 000140f9 ldr      x0, [x8]
02755e20: 08e040b9 ldr      w8, [x0, #0xe0]
02755e24: f70e42f9 ldr      x23, [x23, #0x418]
02755e28: 48000035 cbnz     w8, #0x2755e30
02755e2c: 766da197 bl       #0xfb1404
02755e30: e0031faa mov      x0, xzr
02755e34: 55e8d697 bl       #0x1d0ff88 ; DG.Tweening.DOTween$$Sequence
02755e38: e003271e fmov     s0, wzr
02755e3c: e10316aa mov      x1, x22
02755e40: e2031faa mov      x2, xzr
02755e44: f50300aa mov      x21, x0
02755e48: 7f0bd797 bl       #0x1d18c44 ; DG.Tweening.TweenSettingsExtensions$$Insert
02755e4c: e00240f9 ldr      x0, [x23]
02755e50: 726da197 bl       #0xfb1418
02755e54: 000600b4 cbz      x0, #0x2755f14
02755e58: a85301d0 adrp     x8, #0x51cb000
02755e5c: 082944f9 ldr      x8, [x8, #0x850]
02755e60: e10314aa mov      x1, x20
02755e64: e3031faa mov      x3, xzr
02755e68: f60300aa mov      x22, x0
02755e6c: 020140f9 ldr      x2, [x8]
02755e70: 35dfd697 bl       #0x1d0db44 ; DG.Tweening.TweenCallback$$.ctor
02755e74: e003271e fmov     s0, wzr
02755e78: e00315aa mov      x0, x21
02755e7c: e10316aa mov      x1, x22
02755e80: e2031faa mov      x2, xzr
02755e84: 920bd797 bl       #0x1d18ccc ; DG.Tweening.TweenSettingsExtensions$$InsertCallback
02755e88: e00240f9 ldr      x0, [x23]
02755e8c: 882640bd ldr      s8, [x20, #0x24]
02755e90: 626da197 bl       #0xfb1418
02755e94: 000400b4 cbz      x0, #0x2755f14
02755e98: 685601d0 adrp     x8, #0x5223000
02755e9c: 080d47f9 ldr      x8, [x8, #0xe18]
02755ea0: e10314aa mov      x1, x20
02755ea4: e3031faa mov      x3, xzr
02755ea8: f60300aa mov      x22, x0
02755eac: 020140f9 ldr      x2, [x8]
02755eb0: 25dfd697 bl       #0x1d0db44 ; DG.Tweening.TweenCallback$$.ctor
02755eb4: e00315aa mov      x0, x21
02755eb8: 001da84e mov      v0.16b, v8.16b
02755ebc: e10316aa mov      x1, x22
02755ec0: e2031faa mov      x2, xzr
02755ec4: 820bd797 bl       #0x1d18ccc ; DG.Tweening.TweenSettingsExtensions$$InsertCallback
02755ec8: e00313aa mov      x0, x19
02755ecc: e1031f2a mov      w1, wzr
02755ed0: 29000094 bl       #0x2755f74 ; Royal.Scenes.Game.Levels.Units.BoardManager$$WaitForCompletion
02755ed4: 080340f9 ldr      x8, [x24]
02755ed8: f30300aa mov      x19, x0
02755edc: 09e140b9 ldr      w9, [x8, #0xe0]
02755ee0: 69000035 cbnz     w9, #0x2755eec
02755ee4: e00308aa mov      x0, x8
02755ee8: 476da197 bl       #0xfb1404
02755eec: e00313aa mov      x0, x19
02755ef0: f37b45a9 ldp      x19, x30, [sp, #0x50]
02755ef4: f55344a9 ldp      x21, x20, [sp, #0x40]
02755ef8: f75b43a9 ldp      x23, x22, [sp, #0x30]
02755efc: f81340f9 ldr      x24, [sp, #0x20]
02755f00: e923416d ldp      d9, d8, [sp, #0x10]
02755f04: e1031faa mov      x1, xzr
02755f08: e2031faa mov      x2, xzr
02755f0c: eb2bc66c ldp      d11, d10, [sp], #0x60
02755f10: fb8bf317 b        #0x2438efc ; Royal.Scenes.Game.Context.GameContext$$ManualStartCoroutine
02755f14: 456da197 bl       #0xfb1428
