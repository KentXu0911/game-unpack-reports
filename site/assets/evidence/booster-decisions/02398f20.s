# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.DefaultLightballStrategy$$GetMatchTypeCount
# Linear span; next metadata entry is not a proven CFG boundary.
02398f20: f75bbda9 stp      x23, x22, [sp, #-0x30]!
02398f24: f55301a9 stp      x21, x20, [sp, #0x10]
02398f28: f37b02a9 stp      x19, x30, [sp, #0x20]
02398f2c: 358f01d0 adrp     x21, #0x557e000
02398f30: a8d66639 ldrb     w8, [x21, #0x9b5]
02398f34: f303012a mov      w19, w1
02398f38: f40300aa mov      x20, x0
02398f3c: 28010037 tbnz     w8, #0, #0x2398f60
02398f40: 407301b0 adrp     x0, #0x5201000
02398f44: 00d043f9 ldr      x0, [x0, #0x7a0]
02398f48: ee60b097 bl       #0xfb1300
02398f4c: 807201f0 adrp     x0, #0x51eb000
02398f50: 002c44f9 ldr      x0, [x0, #0x858]
02398f54: eb60b097 bl       #0xfb1300
02398f58: 28008052 mov      w8, #1
02398f5c: a8d62639 strb     w8, [x21, #0x9b5]
02398f60: 804240f9 ldr      x0, [x20, #0x80]
02398f64: 400200b4 cbz      x0, #0x2398fac
02398f68: 977201f0 adrp     x23, #0x51eb000
02398f6c: f72e44f9 ldr      x23, [x23, #0x858]
02398f70: f5031f2a mov      w21, wzr
02398f74: f6031f2a mov      w22, wzr
02398f78: 081840b9 ldr      w8, [x0, #0x18]
02398f7c: df02086b cmp      w22, w8
02398f80: 8a010054 b.ge     #0x2398fb0
02398f84: e20240f9 ldr      x2, [x23]
02398f88: e103162a mov      w1, w22
02398f8c: 18d51894 bl       #0x29ce3ec ; System.Collections.Generic.List<object>$$get_Item
02398f90: e00000b4 cbz      x0, #0x2398fac
02398f94: 081840b9 ldr      w8, [x0, #0x18]
02398f98: 804240f9 ldr      x0, [x20, #0x80]
02398f9c: d6060011 add      w22, w22, #1
02398fa0: 1f01136b cmp      w8, w19
02398fa4: b516951a cinc     w21, w21, eq
02398fa8: 80feffb5 cbnz     x0, #0x2398f78
02398fac: 1f61b097 bl       #0xfb1428
02398fb0: e003152a mov      w0, w21
02398fb4: f37b42a9 ldp      x19, x30, [sp, #0x20]
02398fb8: f55341a9 ldp      x21, x20, [sp, #0x10]
02398fbc: f75bc3a8 ldp      x23, x22, [sp], #0x30
02398fc0: c0035fd6 ret      
