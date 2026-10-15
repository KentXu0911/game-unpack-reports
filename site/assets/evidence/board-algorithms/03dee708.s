# Royal.Infrastructure.Contexts.ContextContainer<object>$$ManualUpdate
# Next metadata method 0x3dee804, not a proven function boundary.
03dee708: f75bbda9 stp      x23, x22, [sp, #-0x30]!
03dee70c: f55301a9 stp      x21, x20, [sp, #0x10]
03dee710: f37b02a9 stp      x19, x30, [sp, #0x20]
03dee714: f4bc00f0 adrp     x20, #0x558d000
03dee718: 883a5639 ldrb     w8, [x20, #0x58e]
03dee71c: f30300aa mov      x19, x0
03dee720: 88010037 tbnz     w8, #0, #0x3dee750
03dee724: e0a100b0 adrp     x0, #0x522b000
03dee728: 003c46f9 ldr      x0, [x0, #0xc78]
03dee72c: f50a4797 bl       #0xfb1300
03dee730: 609e0090 adrp     x0, #0x51ba000
03dee734: 005445f9 ldr      x0, [x0, #0xaa8]
03dee738: f20a4797 bl       #0xfb1300
03dee73c: 60a000d0 adrp     x0, #0x51fc000
03dee740: 004847f9 ldr      x0, [x0, #0xe90]
03dee744: ef0a4797 bl       #0xfb1300
03dee748: 28008052 mov      w8, #1
03dee74c: 883a1639 strb     w8, [x20, #0x58e]
03dee750: 600a40f9 ldr      x0, [x19, #0x10]
03dee754: e00400b4 cbz      x0, #0x3dee7f0
03dee758: 76a000d0 adrp     x22, #0x51fc000
03dee75c: f7a100b0 adrp     x23, #0x522b000
03dee760: d64a47f9 ldr      x22, [x22, #0xe90]
03dee764: f73e46f9 ldr      x23, [x23, #0xc78]
03dee768: f4031f2a mov      w20, wzr
03dee76c: 081840b9 ldr      w8, [x0, #0x18]
03dee770: 9f02086b cmp      w20, w8
03dee774: 0a040054 b.ge     #0x3dee7f4
03dee778: c20240f9 ldr      x2, [x22]
03dee77c: e103142a mov      w1, w20
03dee780: 1b7faf97 bl       #0x29ce3ec ; System.Collections.Generic.List<object>$$get_Item
03dee784: 600300b4 cbz      x0, #0x3dee7f0
03dee788: 080040f9 ldr      x8, [x0]
03dee78c: e10240f9 ldr      x1, [x23]
03dee790: f50300aa mov      x21, x0
03dee794: 09554279 ldrh     w9, [x8, #0x12a]
03dee798: 290100b4 cbz      x9, #0x3dee7bc
03dee79c: 0a5940f9 ldr      x10, [x8, #0xb0]
03dee7a0: 4a210091 add      x10, x10, #8
03dee7a4: 4b815ff8 ldur     x11, [x10, #-8]
03dee7a8: 7f0101eb cmp      x11, x1
03dee7ac: 00010054 b.eq     #0x3dee7cc
03dee7b0: 290500f1 subs     x9, x9, #1
03dee7b4: 4a410091 add      x10, x10, #0x10
03dee7b8: 61ffff54 b.ne     #0x3dee7a4
03dee7bc: e00315aa mov      x0, x21
03dee7c0: e2031f2a mov      w2, wzr
03dee7c4: c44a4697 bl       #0xf812d4
03dee7c8: 04000014 b        #0x3dee7d8
03dee7cc: 490180b9 ldrsw    x9, [x10]
03dee7d0: 0811098b add      x8, x8, x9, lsl #4
03dee7d4: 00e10491 add      x0, x8, #0x138
03dee7d8: 080440a9 ldp      x8, x1, [x0]
03dee7dc: e00315aa mov      x0, x21
03dee7e0: 00013fd6 blr      x8
03dee7e4: 600a40f9 ldr      x0, [x19, #0x10]
03dee7e8: 94060011 add      w20, w20, #1
03dee7ec: 00fcffb5 cbnz     x0, #0x3dee76c
03dee7f0: 0e0b4797 bl       #0xfb1428
03dee7f4: f37b42a9 ldp      x19, x30, [sp, #0x20]
03dee7f8: f55341a9 ldp      x21, x20, [sp, #0x10]
03dee7fc: f75bc3a8 ldp      x23, x22, [sp], #0x30
03dee800: c0035fd6 ret      
