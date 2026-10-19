# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.DefaultLightballStrategy$$SelectMatchTypeAndStart
# Linear span; next metadata entry is not a proven CFG boundary.
02397ee0: f60f1df8 str      x22, [sp, #-0x30]!
02397ee4: f55301a9 stp      x21, x20, [sp, #0x10]
02397ee8: f37b02a9 stp      x19, x30, [sp, #0x20]
02397eec: 368f01f0 adrp     x22, #0x557e000
02397ef0: c8be6639 ldrb     w8, [x22, #0x9af]
02397ef4: f403022a mov      w20, w2
02397ef8: f503012a mov      w21, w1
02397efc: f30300aa mov      x19, x0
02397f00: 88000036 tbz      w8, #0, #0x2397f10
02397f04: 95010034 cbz      w21, #0x2397f34
02397f08: f30100b5 cbnz     x19, #0x2397f44
02397f0c: 2f000014 b        #0x2397fc8
02397f10: 60730190 adrp     x0, #0x5203000
02397f14: 005c40f9 ldr      x0, [x0, #0xb8]
02397f18: fa64b097 bl       #0xfb1300
02397f1c: 407301d0 adrp     x0, #0x5201000
02397f20: 00d043f9 ldr      x0, [x0, #0x7a0]
02397f24: f764b097 bl       #0xfb1300
02397f28: 28008052 mov      w8, #1
02397f2c: c8be2639 strb     w8, [x22, #0x9af]
02397f30: d5feff35 cbnz     w21, #0x2397f08
02397f34: e00313aa mov      x0, x19
02397f38: dd000094 bl       #0x23982ac ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$FindMostCommonItem
02397f3c: f503002a mov      w21, w0
02397f40: 530400b4 cbz      x19, #0x2397fc8
02397f44: e00313aa mov      x0, x19
02397f48: e103152a mov      w1, w21
02397f4c: 759a00b9 str      w21, [x19, #0x98]
02397f50: d1010094 bl       #0x2398694 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$FindItemsByType
02397f54: 614240f9 ldr      x1, [x19, #0x80]
02397f58: 810300b4 cbz      x1, #0x2397fc8
02397f5c: 281840b9 ldr      w8, [x1, #0x18]
02397f60: c8010034 cbz      w8, #0x2397f98
02397f64: 600a40f9 ldr      x0, [x19, #0x10]
02397f68: 000300b4 cbz      x0, #0x2397fc8
02397f6c: 68730190 adrp     x8, #0x5203000
02397f70: 085d40f9 ldr      x8, [x8, #0xb8]
02397f74: 020140f9 ldr      x2, [x8]
02397f78: e09d0694 bl       #0x253f6f8 ; Royal.Scenes.Game.Levels.Units.LevelRandomManager$$ShuffleList<object>
02397f7c: e00313aa mov      x0, x19
02397f80: 07020094 bl       #0x239879c ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$StartSendingRays
02397f84: 20008052 mov      w0, #1
02397f88: f37b42a9 ldp      x19, x30, [sp, #0x20]
02397f8c: f55341a9 ldp      x21, x20, [sp, #0x10]
02397f90: f60743f8 ldr      x22, [sp], #0x30
02397f94: c0035fd6 ret      
02397f98: 74000036 tbz      w20, #0, #0x2397fa4
02397f9c: e0031f2a mov      w0, wzr
02397fa0: faffff17 b        #0x2397f88
02397fa4: 68e24239 ldrb     w8, [x19, #0xb8]
02397fa8: 68000034 cbz      w8, #0x2397fb4
02397fac: 7f9a00b9 str      wzr, [x19, #0x98]
02397fb0: edffff17 b        #0x2397f64
02397fb4: 680240f9 ldr      x8, [x19]
02397fb8: e00313aa mov      x0, x19
02397fbc: 09855aa9 ldp      x9, x1, [x8, #0x1a8]
02397fc0: 20013fd6 blr      x9
02397fc4: f0ffff17 b        #0x2397f84
02397fc8: 1865b097 bl       #0xfb1428
