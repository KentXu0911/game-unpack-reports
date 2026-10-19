# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.DefaultLightballStrategy$$Start
# Linear span; next metadata entry is not a proven CFG boundary.
023979a4: f75bbda9 stp      x23, x22, [sp, #-0x30]!
023979a8: f55301a9 stp      x21, x20, [sp, #0x10]
023979ac: f37b02a9 stp      x19, x30, [sp, #0x20]
023979b0: 368f01f0 adrp     x22, #0x557e000
023979b4: c8b26639 ldrb     w8, [x22, #0x9ac]
023979b8: f70303aa mov      x23, x3
023979bc: f50302aa mov      x21, x2
023979c0: f40301aa mov      x20, x1
023979c4: f30300aa mov      x19, x0
023979c8: c8000037 tbnz     w8, #0, #0x23979e0
023979cc: 407001b0 adrp     x0, #0x51a0000
023979d0: 00bc46f9 ldr      x0, [x0, #0xd78]
023979d4: 4b66b097 bl       #0xfb1300
023979d8: 28008052 mov      w8, #1
023979dc: c8b22639 strb     w8, [x22, #0x9ac]
023979e0: e00313aa mov      x0, x19
023979e4: e10314aa mov      x1, x20
023979e8: a5000094 bl       #0x2397c7c ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$Init
023979ec: 750000b4 cbz      x21, #0x23979f8
023979f0: b61a40b9 ldr      w22, [x21, #0x18]
023979f4: 02000014 b        #0x23979fc
023979f8: f6031f2a mov      w22, wzr
023979fc: e80a40b9 ldr      w8, [x23, #8]
02397a00: 1f090071 cmp      w8, #2
02397a04: 81000054 b.ne     #0x2397a14
02397a08: 28008052 mov      w8, #1
02397a0c: 68120339 strb     w8, [x19, #0xc4]
02397a10: 25000014 b        #0x2397aa4
02397a14: 1f0d0071 cmp      w8, #3
02397a18: e8179f1a cset     w8, eq
02397a1c: 68120339 strb     w8, [x19, #0xc4]
02397a20: 20040054 b.eq     #0x2397aa4
02397a24: 602240f9 ldr      x0, [x19, #0x40]
02397a28: 801200b4 cbz      x0, #0x2397c78
02397a2c: c1008052 mov      w1, #6
02397a30: e2031faa mov      x2, xzr
02397a34: 076a1a94 bl       #0x2a32250 ; Royal.Scenes.Game.Levels.Units.MoveManager$$CompleteMoveByType
02397a38: 141200b4 cbz      x20, #0x2397c78
02397a3c: 880240f9 ldr      x8, [x20]
02397a40: 577001b0 adrp     x23, #0x51a0000
02397a44: e00314aa mov      x0, x20
02397a48: 09b542f9 ldr      x9, [x8, #0x568]
02397a4c: 01b942f9 ldr      x1, [x8, #0x570]
02397a50: f7be46f9 ldr      x23, [x23, #0xd78]
02397a54: 20013fd6 blr      x9
02397a58: 03102c1e fmov     s3, #0.50000000
02397a5c: e00313aa mov      x0, x19
02397a60: e103162a mov      w1, w22
02397a64: e2031f2a mov      w2, wzr
02397a68: ef000094 bl       #0x2397e24 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.DefaultLightballStrategy$$SelectMatchTypeAndStartAfterDelay
02397a6c: e80240f9 ldr      x8, [x23]
02397a70: f60300aa mov      x22, x0
02397a74: 09e140b9 ldr      w9, [x8, #0xe0]
02397a78: 69000035 cbnz     w9, #0x2397a84
02397a7c: e00308aa mov      x0, x8
02397a80: 6166b097 bl       #0xfb1404
02397a84: e00316aa mov      x0, x22
02397a88: e1031faa mov      x1, xzr
02397a8c: e2031faa mov      x2, xzr
02397a90: 1b850294 bl       #0x2438efc ; Royal.Scenes.Game.Context.GameContext$$ManualStartCoroutine
02397a94: 36008052 mov      w22, #1
02397a98: 550200b5 cbnz     x21, #0x2397ae0
02397a9c: e1031f2a mov      w1, wzr
02397aa0: 16000014 b        #0x2397af8
02397aa4: b40e00b4 cbz      x20, #0x2397c78
02397aa8: 880240f9 ldr      x8, [x20]
02397aac: e00314aa mov      x0, x20
02397ab0: 09b542f9 ldr      x9, [x8, #0x568]
02397ab4: 01b942f9 ldr      x1, [x8, #0x570]
02397ab8: 20013fd6 blr      x9
02397abc: e80a40b9 ldr      w8, [x23, #8]
02397ac0: e00313aa mov      x0, x19
02397ac4: e103162a mov      w1, w22
02397ac8: 1f0d0071 cmp      w8, #3
02397acc: e2179f1a cset     w2, eq
02397ad0: 04010094 bl       #0x2397ee0 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.DefaultLightballStrategy$$SelectMatchTypeAndStart
02397ad4: 400c0036 tbz      w0, #0, #0x2397c5c
02397ad8: f6031f2a mov      w22, wzr
02397adc: 15feffb4 cbz      x21, #0x2397a9c
02397ae0: a80240f9 ldr      x8, [x21]
02397ae4: e00315aa mov      x0, x21
02397ae8: 09bd41f9 ldr      x9, [x8, #0x378]
02397aec: 01c141f9 ldr      x1, [x8, #0x380]
02397af0: 20013fd6 blr      x9
02397af4: e103002a mov      w1, w0
02397af8: e00313aa mov      x0, x19
02397afc: 34010094 bl       #0x2397fcc ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$StartShakingLightball
02397b00: 16010037 tbnz     w22, #0, #0x2397b20
02397b04: 880240f9 ldr      x8, [x20]
02397b08: e00314aa mov      x0, x20
02397b0c: 09b542f9 ldr      x9, [x8, #0x568]
02397b10: 01b942f9 ldr      x1, [x8, #0x570]
02397b14: 20013fd6 blr      x9
02397b18: e00313aa mov      x0, x19
02397b1c: 78010094 bl       #0x23980fc ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.DefaultLightballStrategy$$StartLightningRush
02397b20: 683640f9 ldr      x8, [x19, #0x68]
02397b24: a80a00b4 cbz      x8, #0x2397c78
02397b28: 001d40f9 ldr      x0, [x8, #0x38]
02397b2c: 600a00b4 cbz      x0, #0x2397c78
02397b30: e1031faa mov      x1, xzr
02397b34: 56d13f94 bl       #0x338c08c ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$get_CurrentCell
02397b38: 000a00b4 cbz      x0, #0x2397c78
02397b3c: e1031faa mov      x1, xzr
02397b40: 17c81c94 bl       #0x2ac9b9c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$FreezeFall
02397b44: 600e40f9 ldr      x0, [x19, #0x18]
02397b48: 800900b4 cbz      x0, #0x2397c78
02397b4c: e1031faa mov      x1, xzr
02397b50: 8d840294 bl       #0x2438d84 ; Royal.Scenes.Game.Context.Units.GameTouchListener$$DisableTouch
02397b54: e00314aa mov      x0, x20
02397b58: e1031faa mov      x1, xzr
02397b5c: b3d04b94 bl       #0x368be28 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.SpecialItemModel$$PrepareForSpecialUse
02397b60: f68e01f0 adrp     x22, #0x5576000
02397b64: c8ae7c39 ldrb     w8, [x22, #0xf2b]
02397b68: c8000035 cbnz     w8, #0x2397b80
02397b6c: 807301b0 adrp     x0, #0x5208000
02397b70: 00c041f9 ldr      x0, [x0, #0x380]
02397b74: e365b097 bl       #0xfb1300
02397b78: 28008052 mov      w8, #1
02397b7c: c8ae3c39 strb     w8, [x22, #0xf2b]
02397b80: 977301b0 adrp     x23, #0x5208000
02397b84: f7c241f9 ldr      x23, [x23, #0x380]
02397b88: e80240f9 ldr      x8, [x23]
02397b8c: 085d40f9 ldr      x8, [x8, #0xb8]
02397b90: 080140f9 ldr      x8, [x8]
02397b94: 280700b4 cbz      x8, #0x2397c78
02397b98: 081d40f9 ldr      x8, [x8, #0x38]
02397b9c: e80600b4 cbz      x8, #0x2397c78
02397ba0: 890240f9 ldr      x9, [x20]
02397ba4: 150d40f9 ldr      x21, [x8, #0x18]
02397ba8: e00314aa mov      x0, x20
02397bac: 28bd41f9 ldr      x8, [x9, #0x378]
02397bb0: 21c141f9 ldr      x1, [x9, #0x380]
02397bb4: 00013fd6 blr      x8
02397bb8: 150600b4 cbz      x21, #0x2397c78
02397bbc: e103002a mov      w1, w0
02397bc0: e00315aa mov      x0, x21
02397bc4: e2031faa mov      x2, xzr
02397bc8: 231a0394 bl       #0x245e454 ; Royal.Player.Context.Data.Session.UserActiveLevelData$$IncrementClashOfChampionsScoreForItem
02397bcc: c8ae7c39 ldrb     w8, [x22, #0xf2b]
02397bd0: f503002a mov      w21, w0
02397bd4: c8000035 cbnz     w8, #0x2397bec
02397bd8: 807301b0 adrp     x0, #0x5208000
02397bdc: 00c041f9 ldr      x0, [x0, #0x380]
02397be0: c865b097 bl       #0xfb1300
02397be4: 28008052 mov      w8, #1
02397be8: c8ae3c39 strb     w8, [x22, #0xf2b]
02397bec: e80240f9 ldr      x8, [x23]
02397bf0: 085d40f9 ldr      x8, [x8, #0xb8]
02397bf4: 080140f9 ldr      x8, [x8]
02397bf8: 080400b4 cbz      x8, #0x2397c78
02397bfc: 081d40f9 ldr      x8, [x8, #0x38]
02397c00: c80300b4 cbz      x8, #0x2397c78
02397c04: 890240f9 ldr      x9, [x20]
02397c08: 160d40f9 ldr      x22, [x8, #0x18]
02397c0c: e00314aa mov      x0, x20
02397c10: 28b542f9 ldr      x8, [x9, #0x568]
02397c14: 21b942f9 ldr      x1, [x9, #0x570]
02397c18: 00013fd6 blr      x8
02397c1c: f60200b4 cbz      x22, #0x2397c78
02397c20: e303271e fmov     s3, wzr
02397c24: 22008052 mov      w2, #1
02397c28: e00316aa mov      x0, x22
02397c2c: e103152a mov      w1, w21
02397c30: e3031faa mov      x3, xzr
02397c34: e4031faa mov      x4, xzr
02397c38: e5031faa mov      x5, xzr
02397c3c: 161a0394 bl       #0x245e494 ; Royal.Player.Context.Data.Session.UserActiveLevelData$$TryShowClashOfChampionsGameplayCollectView
02397c40: 608e0cf8 str      x0, [x19, #0xc8]!
02397c44: e10300aa mov      x1, x0
02397c48: e00313aa mov      x0, x19
02397c4c: f37b42a9 ldp      x19, x30, [sp, #0x20]
02397c50: f55341a9 ldp      x21, x20, [sp, #0x10]
02397c54: f75bc3a8 ldp      x23, x22, [sp], #0x30
02397c58: 9565b017 b        #0xfb12ac
02397c5c: 680240f9 ldr      x8, [x19]
02397c60: e00313aa mov      x0, x19
02397c64: f37b42a9 ldp      x19, x30, [sp, #0x20]
02397c68: f55341a9 ldp      x21, x20, [sp, #0x10]
02397c6c: 028558a9 ldp      x2, x1, [x8, #0x188]
02397c70: f75bc3a8 ldp      x23, x22, [sp], #0x30
02397c74: 40001fd6 br       x2
02397c78: ec65b097 bl       #0xfb1428
