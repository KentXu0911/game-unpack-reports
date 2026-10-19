# Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$FindMostCommonItem
# Linear span; next metadata entry is not a proven CFG boundary.
023982ac: ff8302d1 sub      sp, sp, #0xa0
023982b0: fc6f04a9 stp      x28, x27, [sp, #0x40]
023982b4: fa6705a9 stp      x26, x25, [sp, #0x50]
023982b8: f85f06a9 stp      x24, x23, [sp, #0x60]
023982bc: f65707a9 stp      x22, x21, [sp, #0x70]
023982c0: f44f08a9 stp      x20, x19, [sp, #0x80]
023982c4: fd7b09a9 stp      x29, x30, [sp, #0x90]
023982c8: 358f01d0 adrp     x21, #0x557e000
023982cc: f46f01b0 adrp     x20, #0x5195000
023982d0: a87e6739 ldrb     w8, [x21, #0x9df]
023982d4: 94e240f9 ldr      x20, [x20, #0x1c0]
023982d8: f30300aa mov      x19, x0
023982dc: 48050037 tbnz     w8, #0, #0x2398384
023982e0: 607101d0 adrp     x0, #0x51c6000
023982e4: 00f841f9 ldr      x0, [x0, #0x3f0]
023982e8: 0664b097 bl       #0xfb1300
023982ec: 607401d0 adrp     x0, #0x5226000
023982f0: 00bc44f9 ldr      x0, [x0, #0x978]
023982f4: 0364b097 bl       #0xfb1300
023982f8: c07101b0 adrp     x0, #0x51d1000
023982fc: 00f047f9 ldr      x0, [x0, #0xfe0]
02398300: 0064b097 bl       #0xfb1300
02398304: 407001d0 adrp     x0, #0x51a2000
02398308: 004c47f9 ldr      x0, [x0, #0xe98]
0239830c: fd63b097 bl       #0xfb1300
02398310: c06f01b0 adrp     x0, #0x5191000
02398314: 00bc42f9 ldr      x0, [x0, #0x578]
02398318: fa63b097 bl       #0xfb1300
0239831c: c07201d0 adrp     x0, #0x51f2000
02398320: 000047f9 ldr      x0, [x0, #0xe00]
02398324: f763b097 bl       #0xfb1300
02398328: e06f01b0 adrp     x0, #0x5195000
0239832c: 00e040f9 ldr      x0, [x0, #0x1c0]
02398330: f463b097 bl       #0xfb1300
02398334: c0740190 adrp     x0, #0x5230000
02398338: 006447f9 ldr      x0, [x0, #0xec8]
0239833c: f163b097 bl       #0xfb1300
02398340: 007001d0 adrp     x0, #0x519a000
02398344: 00dc43f9 ldr      x0, [x0, #0x7b8]
02398348: ee63b097 bl       #0xfb1300
0239834c: a07301b0 adrp     x0, #0x520d000
02398350: 000841f9 ldr      x0, [x0, #0x210]
02398354: eb63b097 bl       #0xfb1300
02398358: 607001d0 adrp     x0, #0x51a6000
0239835c: 002843f9 ldr      x0, [x0, #0x650]
02398360: e863b097 bl       #0xfb1300
02398364: 607301f0 adrp     x0, #0x5207000
02398368: 004845f9 ldr      x0, [x0, #0xa90]
0239836c: e563b097 bl       #0xfb1300
02398370: 207201f0 adrp     x0, #0x51df000
02398374: 00d040f9 ldr      x0, [x0, #0x1a0]
02398378: e263b097 bl       #0xfb1300
0239837c: 28008052 mov      w8, #1
02398380: a87e2739 strb     w8, [x21, #0x9df]
02398384: 800240f9 ldr      x0, [x20]
02398388: ff3f00b9 str      wzr, [sp, #0x3c]
0239838c: ffff02a9 stp      xzr, xzr, [sp, #0x28]
02398390: ff1300f9 str      xzr, [sp, #0x20]
02398394: 2164b097 bl       #0xfb1418
02398398: a00c00b4 cbz      x0, #0x239852c
0239839c: c87101b0 adrp     x8, #0x51d1000
023983a0: 08f147f9 ldr      x8, [x8, #0xfe0]
023983a4: f40300aa mov      x20, x0
023983a8: 010140f9 ldr      x1, [x8]
023983ac: cb5c4d94 bl       #0x36ef6d8 ; System.Collections.Generic.Dictionary<int, int>$$.ctor
023983b0: 601240f9 ldr      x0, [x19, #0x20]
023983b4: c00b00b4 cbz      x0, #0x239852c
023983b8: 3d7201f0 adrp     x29, #0x51df000
023983bc: 787401d0 adrp     x24, #0x5226000
023983c0: db7201d0 adrp     x27, #0x51f2000
023983c4: 7c7101d0 adrp     x28, #0x51c6000
023983c8: 197001d0 adrp     x25, #0x519a000
023983cc: 7a7001d0 adrp     x26, #0x51a6000
023983d0: bdd340f9 ldr      x29, [x29, #0x1a0]
023983d4: 18bf44f9 ldr      x24, [x24, #0x978]
023983d8: 7b0347f9 ldr      x27, [x27, #0xe00]
023983dc: 9cfb41f9 ldr      x28, [x28, #0x3f0]
023983e0: 39df43f9 ldr      x25, [x25, #0x7b8]
023983e4: 5a2b43f9 ldr      x26, [x26, #0x650]
023983e8: f5031f2a mov      w21, wzr
023983ec: e1031faa mov      x1, xzr
023983f0: fcfa0e94 bl       #0x2756fe0 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_Width
023983f4: bf02006b cmp      w21, w0
023983f8: ca090054 b.ge     #0x2398530
023983fc: 601240f9 ldr      x0, [x19, #0x20]
02398400: 600900b4 cbz      x0, #0x239852c
02398404: e1031faa mov      x1, xzr
02398408: fffa0e94 bl       #0x2757004 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_BoardStartY
0239840c: 681240f9 ldr      x8, [x19, #0x20]
02398410: e80800b4 cbz      x8, #0x239852c
02398414: f603002a mov      w22, w0
02398418: e00308aa mov      x0, x8
0239841c: e1031faa mov      x1, xzr
02398420: 0afb0e94 bl       #0x2757048 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_BoardEndY
02398424: df02006b cmp      w22, w0
02398428: cc070054 b.gt     #0x2398520
0239842c: 771240f9 ldr      x23, [x19, #0x20]
02398430: e0230091 add      x0, sp, #8
02398434: e103152a mov      w1, w21
02398438: e203162a mov      w2, w22
0239843c: e3031faa mov      x3, xzr
02398440: ff0700f9 str      xzr, [sp, #8]
02398444: 0cbf1c94 bl       #0x2ac8074 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellPoint$$.ctor
02398448: 370700b4 cbz      x23, #0x239852c
0239844c: e10740f9 ldr      x1, [sp, #8]
02398450: e00317aa mov      x0, x23
02398454: e2031faa mov      x2, xzr
02398458: 2ef00e94 bl       #0x2754510 ; Royal.Scenes.Game.Levels.Units.CellGridManager$$get_Item
0239845c: e10300aa mov      x1, x0
02398460: f70300aa mov      x23, x0
02398464: 8b130094 bl       #0x239d290 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.LightballItem.Strategy.LightballStrategy$$IsReadyForLightball
02398468: 40050036 tbz      w0, #0, #0x2398510
0239846c: 170600b4 cbz      x23, #0x239852c
02398470: e00a40f9 ldr      x0, [x23, #0x10]
02398474: c00500b4 cbz      x0, #0x239852c
02398478: e1031faa mov      x1, xzr
0239847c: 79b60e94 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
02398480: 800400b4 cbz      x0, #0x2398510
02398484: 090040f9 ldr      x9, [x0]
02398488: a80340f9 ldr      x8, [x29]
0239848c: f70300aa mov      x23, x0
02398490: 2bb14439 ldrb     w11, [x9, #0x12c]
02398494: 0ab14439 ldrb     w10, [x8, #0x12c]
02398498: 7f010a6b cmp      w11, w10
0239849c: a3030054 b.lo     #0x2398510
023984a0: 296540f9 ldr      x9, [x9, #0xc8]
023984a4: 290d0a8b add      x9, x9, x10, lsl #3
023984a8: 29815ff8 ldur     x9, [x9, #-8]
023984ac: 3f0108eb cmp      x9, x8
023984b0: 01030054 b.ne     #0x2398510
023984b4: e00317aa mov      x0, x23
023984b8: e1031faa mov      x1, xzr
023984bc: 90eaeb97 bl       #0x1e92efc ; Royal.Scenes.Game.Mechanics.Items.MatchItem.MatchItemModel$$IsReserved
023984c0: 80020037 tbnz     w0, #0, #0x2398510
023984c4: f71a40b9 ldr      w23, [x23, #0x18]
023984c8: 030340f9 ldr      x3, [x24]
023984cc: e2f30091 add      x2, sp, #0x3c
023984d0: e00314aa mov      x0, x20
023984d4: e103172a mov      w1, w23
023984d8: bf654d94 bl       #0x36f1bd4 ; System.Collections.Generic.Dictionary<int, int>$$TryGetValue
023984dc: 00010036 tbz      w0, #0, #0x23984fc
023984e0: e83f40b9 ldr      w8, [sp, #0x3c]
023984e4: 630340f9 ldr      x3, [x27]
023984e8: e00314aa mov      x0, x20
023984ec: e103172a mov      w1, w23
023984f0: 02050011 add      w2, w8, #1
023984f4: 0f5f4d94 bl       #0x36f0130 ; System.Collections.Generic.Dictionary<int, int>$$set_Item
023984f8: 06000014 b        #0x2398510
023984fc: 830340f9 ldr      x3, [x28]
02398500: 22008052 mov      w2, #1
02398504: e00314aa mov      x0, x20
02398508: e103172a mov      w1, w23
0239850c: 0f5f4d94 bl       #0x36f0148 ; System.Collections.Generic.Dictionary<int, int>$$Add
02398510: 681240f9 ldr      x8, [x19, #0x20]
02398514: d6060011 add      w22, w22, #1
02398518: 08f8ffb5 cbnz     x8, #0x2398418
0239851c: 04000014 b        #0x239852c
02398520: 601240f9 ldr      x0, [x19, #0x20]
02398524: b5060011 add      w21, w21, #1
02398528: 20f6ffb5 cbnz     x0, #0x23983ec
0239852c: bf63b097 bl       #0xfb1428
02398530: c86f01b0 adrp     x8, #0x5191000
02398534: 08bd42f9 ldr      x8, [x8, #0x578]
02398538: e00314aa mov      x0, x20
0239853c: 010140f9 ldr      x1, [x8]
02398540: 105e4d94 bl       #0x36efd80 ; System.Collections.Generic.Dictionary<int, int>$$get_Keys
02398544: 40ffffb4 cbz      x0, #0x239852c
02398548: 687301f0 adrp     x8, #0x5207000
0239854c: 084945f9 ldr      x8, [x8, #0xa90]
02398550: 010140f9 ldr      x1, [x8]
02398554: e8230091 add      x8, sp, #8
02398558: 25710094 bl       #0x23b49ec ; System.Collections.Generic.Dictionary.KeyCollection<int, int>$$GetEnumerator
0239855c: e083c03c ldur     q0, [sp, #8]
02398560: e80f40f9 ldr      x8, [sp, #0x18]
02398564: f5031f2a mov      w21, wzr
02398568: f7031f2a mov      w23, wzr
0239856c: e00b803d str      q0, [sp, #0x20]
02398570: e81b00f9 str      x8, [sp, #0x30]
02398574: 210340f9 ldr      x1, [x25]
02398578: e0830091 add      x0, sp, #0x20
0239857c: fa231b94 bl       #0x2a61564 ; System.Collections.Generic.Dictionary.KeyCollection.Enumerator<int, int>$$MoveNext
02398580: 80020036 tbz      w0, #0, #0x23985d0
02398584: 681a40f9 ldr      x8, [x19, #0x30]
02398588: 080400b4 cbz      x8, #0x2398608
0239858c: 000940f9 ldr      x0, [x8, #0x10]
02398590: e00300b4 cbz      x0, #0x239860c
02398594: f63340b9 ldr      w22, [sp, #0x30]
02398598: 420340f9 ldr      x2, [x26]
0239859c: e103162a mov      w1, w22
023985a0: 6bca1a94 bl       #0x2a4af4c ; System.Collections.Generic.HashSet<Int32Enum>$$Contains
023985a4: 80fe0737 tbnz     w0, #0, #0x2398574
023985a8: 487001d0 adrp     x8, #0x51a2000
023985ac: 084d47f9 ldr      x8, [x8, #0xe98]
023985b0: 020140f9 ldr      x2, [x8]
023985b4: e00314aa mov      x0, x20
023985b8: e103162a mov      w1, w22
023985bc: b75e4d94 bl       #0x36f0098 ; System.Collections.Generic.Dictionary<int, int>$$get_Item
023985c0: 1f00176b cmp      w0, w23
023985c4: 17c0971a csel     w23, w0, w23, gt
023985c8: d5c2951a csel     w21, w22, w21, gt
023985cc: eaffff17 b        #0x2398574
023985d0: c8740190 adrp     x8, #0x5230000
023985d4: 086547f9 ldr      x8, [x8, #0xec8]
023985d8: e0830091 add      x0, sp, #0x20
023985dc: 010140f9 ldr      x1, [x8]
023985e0: e0231b94 bl       #0x2a61560 ; System.Collections.Generic.Dictionary.KeyCollection.Enumerator<int, int>$$Dispose
023985e4: e003152a mov      w0, w21
023985e8: fd7b49a9 ldp      x29, x30, [sp, #0x90]
023985ec: f44f48a9 ldp      x20, x19, [sp, #0x80]
023985f0: f65747a9 ldp      x22, x21, [sp, #0x70]
023985f4: f85f46a9 ldp      x24, x23, [sp, #0x60]
023985f8: fa6745a9 ldp      x26, x25, [sp, #0x50]
023985fc: fc6f44a9 ldp      x28, x27, [sp, #0x40]
02398600: ff830291 add      sp, sp, #0xa0
02398604: c0035fd6 ret      
02398608: 8863b097 bl       #0xfb1428
0239860c: 8763b097 bl       #0xfb1428
02398610: 04000014 b        #0x2398620
02398614: 03000014 b        #0x2398620
02398618: 02000014 b        #0x2398620
0239861c: 01000014 b        #0x2398620
02398620: f30300aa mov      x19, x0
02398624: 3f040071 cmp      w1, #1
02398628: a1010054 b.ne     #0x239865c
0239862c: e00313aa mov      x0, x19
02398630: e8aba497 bl       #0xcc35d0
02398634: 140040f9 ldr      x20, [x0]
02398638: 62aaa497 bl       #0xcc2fc0
0239863c: c8740190 adrp     x8, #0x5230000
02398640: 086547f9 ldr      x8, [x8, #0xec8]
02398644: e0830091 add      x0, sp, #0x20
02398648: 010140f9 ldr      x1, [x8]
0239864c: c5231b94 bl       #0x2a61560 ; System.Collections.Generic.Dictionary.KeyCollection.Enumerator<int, int>$$Dispose
02398650: b4fcffb4 cbz      x20, #0x23985e4
02398654: e00314aa mov      x0, x20
02398658: 6013b097 bl       #0xf9d3d8
0239865c: f4031faa mov      x20, xzr
02398660: 02000014 b        #0x2398668
02398664: f30300aa mov      x19, x0
02398668: c8740190 adrp     x8, #0x5230000
0239866c: 086547f9 ldr      x8, [x8, #0xec8]
02398670: 010140f9 ldr      x1, [x8]
02398674: e0830091 add      x0, sp, #0x20
02398678: ba231b94 bl       #0x2a61560 ; System.Collections.Generic.Dictionary.KeyCollection.Enumerator<int, int>$$Dispose
0239867c: 740000b5 cbnz     x20, #0x2398688
02398680: e00313aa mov      x0, x19
02398684: 1faaa497 bl       #0xcc2f00
02398688: e00314aa mov      x0, x20
0239868c: 5313b097 bl       #0xf9d3d8
02398690: 2ec0a497 bl       #0xcc8748
