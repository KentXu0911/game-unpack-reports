# Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$UnFreezeFall
# Next metadata method 0x2ac9ca8, not a proven function boundary.
02ac9bcc: f40f1ef8 str      x20, [sp, #-0x20]!
02ac9bd0: f37b01a9 stp      x19, x30, [sp, #0x10]
02ac9bd4: d45501b0 adrp     x20, #0x5582000
02ac9bd8: 882a4639 ldrb     w8, [x20, #0x18a]
02ac9bdc: f30300aa mov      x19, x0
02ac9be0: 28010037 tbnz     w8, #0, #0x2ac9c04
02ac9be4: c03a01b0 adrp     x0, #0x5222000
02ac9be8: 00ec42f9 ldr      x0, [x0, #0x5d8]
02ac9bec: c59d9397 bl       #0xfb1300
02ac9bf0: e03901d0 adrp     x0, #0x5207000
02ac9bf4: 008446f9 ldr      x0, [x0, #0xd08]
02ac9bf8: c29d9397 bl       #0xfb1300
02ac9bfc: 28008052 mov      w8, #1
02ac9c00: 882a0639 strb     w8, [x20, #0x18a]
02ac9c04: 682a40b9 ldr      w8, [x19, #0x28]
02ac9c08: 603a40f9 ldr      x0, [x19, #0x70]
02ac9c0c: 08050051 sub      w8, w8, #1
02ac9c10: 682a00b9 str      w8, [x19, #0x28]
02ac9c14: 800400b4 cbz      x0, #0x2ac9ca4
02ac9c18: 21008052 mov      w1, #1
02ac9c1c: e2031faa mov      x2, xzr
02ac9c20: 0dbffd97 bl       #0x2a39854 ; Royal.Scenes.Game.Levels.Units.State.GameStateManager$$OperationFinish
02ac9c24: 682a40b9 ldr      w8, [x19, #0x28]
02ac9c28: 8800f837 tbnz     w8, #0x1f, #0x2ac9c38
02ac9c2c: f37b41a9 ldp      x19, x30, [sp, #0x10]
02ac9c30: f40742f8 ldr      x20, [sp], #0x20
02ac9c34: c0035fd6 ret      
02ac9c38: c83a01b0 adrp     x8, #0x5222000
02ac9c3c: 08ed42f9 ldr      x8, [x8, #0x5d8]
02ac9c40: 140140f9 ldr      x20, [x8]
02ac9c44: 881e40f9 ldr      x8, [x20, #0x38]
02ac9c48: 000140f9 ldr      x0, [x8]
02ac9c4c: 08c84439 ldrb     w8, [x0, #0x132]
02ac9c50: 48000037 tbnz     w8, #0, #0x2ac9c58
02ac9c54: e4dc9297 bl       #0xf80fe4
02ac9c58: 08e040b9 ldr      w8, [x0, #0xe0]
02ac9c5c: 48000035 cbnz     w8, #0x2ac9c64
02ac9c60: e99d9397 bl       #0xfb1404
02ac9c64: 881e40f9 ldr      x8, [x20, #0x38]
02ac9c68: f43901d0 adrp     x20, #0x5207000
02ac9c6c: 000140f9 ldr      x0, [x8]
02ac9c70: 08c84439 ldrb     w8, [x0, #0x132]
02ac9c74: 948646f9 ldr      x20, [x20, #0xd08]
02ac9c78: 48000037 tbnz     w8, #0, #0x2ac9c80
02ac9c7c: dadc9297 bl       #0xf80fe4
02ac9c80: 085c40f9 ldr      x8, [x0, #0xb8]
02ac9c84: 820240f9 ldr      x2, [x20]
02ac9c88: e00313aa mov      x0, x19
02ac9c8c: f37b41a9 ldp      x19, x30, [sp, #0x10]
02ac9c90: 030140f9 ldr      x3, [x8]
02ac9c94: 61018052 mov      w1, #0xb
02ac9c98: e4031faa mov      x4, xzr
02ac9c9c: f40742f8 ldr      x20, [sp], #0x20
02ac9ca0: 17ddf417 b        #0x28010fc ; Royal.Infrastructure.Services.Logs.Log$$Error
02ac9ca4: e19d9397 bl       #0xfb1428
