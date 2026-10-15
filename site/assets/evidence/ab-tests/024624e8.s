# Royal.Player.Context.Data.Persistent.AbTestHelper$$BuildDictFromResponse
# Next metadata method 0x2462658, not a proven function boundary.
024624e8: ff8302d1 sub      sp, sp, #0xa0
024624ec: e2e305a9 stp      x2, x24, [sp, #0x58]
024624f0: f75b07a9 stp      x23, x22, [sp, #0x70]
024624f4: f55308a9 stp      x21, x20, [sp, #0x80]
024624f8: f37b09a9 stp      x19, x30, [sp, #0x90]
024624fc: f4880190 adrp     x20, #0x557e000
02462500: e12b00f9 str      x1, [sp, #0x50]
02462504: 936901f0 adrp     x19, #0x5195000
02462508: 88ba7739 ldrb     w8, [x20, #0xdee]
0246250c: 73e240f9 ldr      x19, [x19, #0x1c0]
02462510: 48020037 tbnz     w8, #0, #0x2462558
02462514: 206b0190 adrp     x0, #0x51c6000
02462518: 00f841f9 ldr      x0, [x0, #0x3f0]
0246251c: 793bad97 bl       #0xfb1300
02462520: 606b01f0 adrp     x0, #0x51d1000
02462524: 00f047f9 ldr      x0, [x0, #0xfe0]
02462528: 763bad97 bl       #0xfb1300
0246252c: 806901f0 adrp     x0, #0x5195000
02462530: 00e040f9 ldr      x0, [x0, #0x1c0]
02462534: 733bad97 bl       #0xfb1300
02462538: 006c0190 adrp     x0, #0x51e2000
0246253c: 00fc46f9 ldr      x0, [x0, #0xdf8]
02462540: 703bad97 bl       #0xfb1300
02462544: 606a0190 adrp     x0, #0x51ae000
02462548: 00c043f9 ldr      x0, [x0, #0x780]
0246254c: 6d3bad97 bl       #0xfb1300
02462550: 28008052 mov      w8, #1
02462554: 88ba3739 strb     w8, [x20, #0xdee]
02462558: 600240f9 ldr      x0, [x19]
0246255c: ffff03a9 stp      xzr, xzr, [sp, #0x38]
02462560: ffff02a9 stp      xzr, xzr, [sp, #0x28]
02462564: ff1300f9 str      xzr, [sp, #0x20]
02462568: ac3bad97 bl       #0xfb1418
0246256c: 400700b4 cbz      x0, #0x2462654
02462570: 686b01f0 adrp     x8, #0x51d1000
02462574: 08f147f9 ldr      x8, [x8, #0xfe0]
02462578: f30300aa mov      x19, x0
0246257c: 010140f9 ldr      x1, [x8]
02462580: 56344a94 bl       #0x36ef6d8 ; System.Collections.Generic.Dictionary<int, int>$$.ctor
02462584: e0430191 add      x0, sp, #0x50
02462588: e1031faa mov      x1, xzr
0246258c: fa680e94 bl       #0x27fc974 ; Royal.Infrastructure.Services.Backend.Protocol.NewABData$$get_AllTestsLength
02462590: 1f040071 cmp      w0, #1
02462594: 2b050054 b.lt     #0x2462638
02462598: 776a0190 adrp     x23, #0x51ae000
0246259c: 386b0190 adrp     x24, #0x51c6000
024625a0: f7c243f9 ldr      x23, [x23, #0x780]
024625a4: 18fb41f9 ldr      x24, [x24, #0x3f0]
024625a8: f403002a mov      w20, w0
024625ac: f5031f2a mov      w21, wzr
024625b0: e8230091 add      x8, sp, #8
024625b4: e0430191 add      x0, sp, #0x50
024625b8: e103152a mov      w1, w21
024625bc: e2031faa mov      x2, xzr
024625c0: b7680e94 bl       #0x27fc89c ; Royal.Infrastructure.Services.Backend.Protocol.NewABData$$AllTests
024625c4: e083c03c ldur     q0, [sp, #8]
024625c8: e80f40f9 ldr      x8, [sp, #0x18]
024625cc: e00f803d str      q0, [sp, #0x30]
024625d0: e9c34039 ldrb     w9, [sp, #0x30]
024625d4: e82300f9 str      x8, [sp, #0x40]
024625d8: a9020034 cbz      w9, #0x246262c
024625dc: e10240f9 ldr      x1, [x23]
024625e0: e0c30091 add      x0, sp, #0x30
024625e4: b2bf1a94 bl       #0x2b124ac ; System.Nullable<SingleABData>$$get_Value
024625e8: e00702a9 stp      x0, x1, [sp, #0x20]
024625ec: e0830091 add      x0, sp, #0x20
024625f0: e1031faa mov      x1, xzr
024625f4: 727d1f94 bl       #0x2c41bbc ; Royal.Infrastructure.Services.Backend.Protocol.SingleABData$$get_Key
024625f8: e10240f9 ldr      x1, [x23]
024625fc: f603002a mov      w22, w0
02462600: e0c30091 add      x0, sp, #0x30
02462604: aabf1a94 bl       #0x2b124ac ; System.Nullable<SingleABData>$$get_Value
02462608: e00702a9 stp      x0, x1, [sp, #0x20]
0246260c: e0830091 add      x0, sp, #0x20
02462610: e1031faa mov      x1, xzr
02462614: 7b7d1f94 bl       #0x2c41c00 ; Royal.Infrastructure.Services.Backend.Protocol.SingleABData$$get_Value
02462618: 030340f9 ldr      x3, [x24]
0246261c: e203002a mov      w2, w0
02462620: e00313aa mov      x0, x19
02462624: e103162a mov      w1, w22
02462628: c8364a94 bl       #0x36f0148 ; System.Collections.Generic.Dictionary<int, int>$$Add
0246262c: b5060011 add      w21, w21, #1
02462630: 9f02156b cmp      w20, w21
02462634: e1fbff54 b.ne     #0x24625b0
02462638: e00313aa mov      x0, x19
0246263c: f37b49a9 ldp      x19, x30, [sp, #0x90]
02462640: f55348a9 ldp      x21, x20, [sp, #0x80]
02462644: f75b47a9 ldp      x23, x22, [sp, #0x70]
02462648: f83340f9 ldr      x24, [sp, #0x60]
0246264c: ff830291 add      sp, sp, #0xa0
02462650: c0035fd6 ret      
02462654: 753bad97 bl       #0xfb1428
