# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$SingleRayReached
# Linear span; next metadata entry is not a proven CFG boundary.
02398b28: ff4301d1 sub      sp, sp, #0x50
02398b2c: f55303a9 stp      x21, x20, [sp, #0x30]
02398b30: f37b04a9 stp      x19, x30, [sp, #0x40]
02398b34: 358f01d0 adrp     x21, #0x557e000
02398b38: a8526739 ldrb     w8, [x21, #0x9d4]
02398b3c: f30302aa mov      x19, x2
02398b40: f40300aa mov      x20, x0
02398b44: 88010037 tbnz     w8, #0, #0x2398b74
02398b48: 20740190 adrp     x0, #0x521c000
02398b4c: 00d446f9 ldr      x0, [x0, #0xda8]
02398b50: ec61b097 bl       #0xfb1300
02398b54: 207201f0 adrp     x0, #0x51df000
02398b58: 00f847f9 ldr      x0, [x0, #0xff0]
02398b5c: e961b097 bl       #0xfb1300
02398b60: 20730190 adrp     x0, #0x51fc000
02398b64: 00b845f9 ldr      x0, [x0, #0xb70]
02398b68: e661b097 bl       #0xfb1300
02398b6c: 28008052 mov      w8, #1
02398b70: a8522739 strb     w8, [x21, #0x9d4]
02398b74: 802640f9 ldr      x0, [x20, #0x48]
02398b78: 600600b4 cbz      x0, #0x2398c44
02398b7c: 68d600f0 adrp     x8, #0x3e67000
02398b80: 004144bd ldr      s0, [x8, #0x440]
02398b84: e103271e fmov     s1, wzr
02398b88: c1028052 mov      w1, #0x16
02398b8c: 22008052 mov      w2, #1
02398b90: e3031f2a mov      w3, wzr
02398b94: e4031faa mov      x4, xzr
02398b98: a4a04394 bl       #0x3480e28 ; Royal.Scenes.Start.Context.Units.Haptic.HapticManager$$PlayHaptic
02398b9c: 803640f9 ldr      x0, [x20, #0x68]
02398ba0: a00400b4 cbz      x0, #0x2398c34
02398ba4: e1031faa mov      x1, xzr
02398ba8: bba83f94 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
02398bac: 400400b4 cbz      x0, #0x2398c34
02398bb0: 347201f0 adrp     x20, #0x51df000
02398bb4: 94fa47f9 ldr      x20, [x20, #0xff0]
02398bb8: e1031faa mov      x1, xzr
02398bbc: 53cc1c94 bl       #0x2acbd08 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$HasJellyView
02398bc0: 820240f9 ldr      x2, [x20]
02398bc4: 01000012 and      w1, w0, #1
02398bc8: e0630091 add      x0, sp, #0x18
02398bcc: ff330079 strh     wzr, [sp, #0x18]
02398bd0: 602b2a94 bl       #0x2e23950 ; System.Nullable<bool>$$.ctor
02398bd4: e8334079 ldrh     w8, [sp, #0x18]
02398bd8: 1f010471 cmp      w8, #0x100
02398bdc: c3020054 b.lo     #0x2398c34
02398be0: 1f1d0072 tst      w8, #0xff
02398be4: 80020054 b.eq     #0x2398c34
02398be8: f30200b4 cbz      x19, #0x2398c44
02398bec: e00313aa mov      x0, x19
02398bf0: e1031faa mov      x1, xzr
02398bf4: a8a83f94 bl       #0x3382e94 ; Royal.Scenes.Game.Mechanics.Items.Config.ItemModel$$get_CurrentCell
02398bf8: e00100b4 cbz      x0, #0x2398c34
02398bfc: 136040f9 ldr      x19, [x0, #0xc0]
02398c00: b30100b4 cbz      x19, #0x2398c34
02398c04: 00102e1e fmov     s0, #1.00000000
02398c08: e8630091 add      x8, sp, #0x18
02398c0c: e0031faa mov      x0, xzr
02398c10: 4430bf97 bl       #0x1364d20 ; Royal.Scenes.Game.Mechanics.Items.StaticItems.JellyItem.View.JellySpreadData$$CreateSelfSpreading
02398c14: e083c13c ldur     q0, [sp, #0x18]
02398c18: e81740f9 ldr      x8, [sp, #0x28]
02398c1c: e1030091 mov      x1, sp
02398c20: e00313aa mov      x0, x19
02398c24: e2031faa mov      x2, xzr
02398c28: e003803d str      q0, [sp]
02398c2c: e80b00f9 str      x8, [sp, #0x10]
02398c30: fde91c94 bl       #0x2ad3424 ; Royal.Scenes.Game.Mechanics.Board.Cell.StaticItemMediator$$TryActivateJelly
02398c34: f37b44a9 ldp      x19, x30, [sp, #0x40]
02398c38: f55343a9 ldp      x21, x20, [sp, #0x30]
02398c3c: ff430191 add      sp, sp, #0x50
02398c40: c0035fd6 ret      
02398c44: f961b097 bl       #0xfb1428
