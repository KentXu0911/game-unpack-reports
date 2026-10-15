# Royal.Player.Context.Data.Persistent.AbTestHelper$$UpdateAbTestData
# Next metadata method 0x24624e8, not a proven function boundary.
024621d0: f963bca9 stp      x25, x24, [sp, #-0x40]!
024621d4: f75b01a9 stp      x23, x22, [sp, #0x10]
024621d8: f55302a9 stp      x21, x20, [sp, #0x20]
024621dc: f37b03a9 stp      x19, x30, [sp, #0x30]
024621e0: f3880190 adrp     x19, #0x557e000
024621e4: 689e7739 ldrb     w8, [x19, #0xde7]
024621e8: f603032a mov      w22, w3
024621ec: f70302aa mov      x23, x2
024621f0: f50301aa mov      x21, x1
024621f4: f40300aa mov      x20, x0
024621f8: 68030037 tbnz     w8, #0, #0x2462264
024621fc: 606c0190 adrp     x0, #0x51ee000
02462200: 00b040f9 ldr      x0, [x0, #0x160]
02462204: 3f3cad97 bl       #0xfb1300
02462208: 006e0190 adrp     x0, #0x5222000
0246220c: 00ec42f9 ldr      x0, [x0, #0x5d8]
02462210: 3c3cad97 bl       #0xfb1300
02462214: 806b01d0 adrp     x0, #0x51d4000
02462218: 004845f9 ldr      x0, [x0, #0xa90]
0246221c: 393cad97 bl       #0xfb1300
02462220: c06d01d0 adrp     x0, #0x521c000
02462224: 006047f9 ldr      x0, [x0, #0xec0]
02462228: 363cad97 bl       #0xfb1300
0246222c: 806d0190 adrp     x0, #0x5212000
02462230: 003c42f9 ldr      x0, [x0, #0x478]
02462234: 333cad97 bl       #0xfb1300
02462238: 006d01b0 adrp     x0, #0x5203000
0246223c: 004045f9 ldr      x0, [x0, #0xa80]
02462240: 303cad97 bl       #0xfb1300
02462244: 806a01b0 adrp     x0, #0x51b3000
02462248: 00a041f9 ldr      x0, [x0, #0x340]
0246224c: 2d3cad97 bl       #0xfb1300
02462250: 406b01d0 adrp     x0, #0x51cc000
02462254: 004444f9 ldr      x0, [x0, #0x888]
02462258: 2a3cad97 bl       #0xfb1300
0246225c: 28008052 mov      w8, #1
02462260: 689e3739 strb     w8, [x19, #0xde7]
02462264: e8024039 ldrb     w8, [x23]
02462268: a80f0034 cbz      w8, #0x246245c
0246226c: 936d0190 adrp     x19, #0x5212000
02462270: 733e42f9 ldr      x19, [x19, #0x478]
02462274: e00317aa mov      x0, x23
02462278: 610240f9 ldr      x1, [x19]
0246227c: fe150d94 bl       #0x27a7a74 ; System.Nullable<NewABData>$$get_Value
02462280: e20301aa mov      x2, x1
02462284: e10300aa mov      x1, x0
02462288: 98000094 bl       #0x24624e8 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$BuildDictFromResponse
0246228c: f80314aa mov      x24, x20
02462290: 088f41f8 ldr      x8, [x24, #0x18]!
02462294: f90300aa mov      x25, x0
02462298: e10319aa mov      x1, x25
0246229c: e00308aa mov      x0, x8
024622a0: ee000094 bl       #0x2462658 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$GetUpdatedAbTestKeys
024622a4: 610240f9 ldr      x1, [x19]
024622a8: f30300aa mov      x19, x0
024622ac: e00317aa mov      x0, x23
024622b0: f1150d94 bl       #0x27a7a74 ; System.Nullable<NewABData>$$get_Value
024622b4: e20300aa mov      x2, x0
024622b8: e30301aa mov      x3, x1
024622bc: e00314aa mov      x0, x20
024622c0: e10302aa mov      x1, x2
024622c4: e20303aa mov      x2, x3
024622c8: 7b010094 bl       #0x24628b4 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$UpdateNotificationRequiredAbTestKeys
024622cc: e00318aa mov      x0, x24
024622d0: e10319aa mov      x1, x25
024622d4: 190300f9 str      x25, [x24]
024622d8: f53bad97 bl       #0xfb12ac
024622dc: e10319aa mov      x1, x25
024622e0: bb010094 bl       #0x24629cc ; Royal.Player.Context.Data.Persistent.AbTestHelper$$ConvertAbTestData
024622e4: e1031faa mov      x1, xzr
024622e8: 43f42794 bl       #0x2e5f3f4 ; Royal.Infrastructure.Services.Storage.Tables.AbTestTable$$RefreshList
024622ec: e00314aa mov      x0, x20
024622f0: 52020094 bl       #0x2462c38 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$LogAbTestData
024622f4: f30e00b4 cbz      x19, #0x24624d0
024622f8: 976b01d0 adrp     x23, #0x51d4000
024622fc: f74a45f9 ldr      x23, [x23, #0xa90]
02462300: c3020012 and      w3, w22, #1
02462304: e00314aa mov      x0, x20
02462308: e10315aa mov      x1, x21
0246230c: e20313aa mov      x2, x19
02462310: 38feff97 bl       #0x2461bf0 ; Royal.Player.Context.Data.Persistent.AbTestHelper$$SendAnalytics
02462314: e0031faa mov      x0, xzr
02462318: 4bdb2d94 bl       #0x2fd9044 ; Royal.Infrastructure.Services.Notification.GameNotificationService$$UpdateAbTestStatusesTag
0246231c: e00314aa mov      x0, x20
02462320: 8f020094 bl       #0x2462d5c ; Royal.Player.Context.Data.Persistent.AbTestHelper$$RequeueRoyalBundlesForNewUserFlowChange
02462324: e20240f9 ldr      x2, [x23]
02462328: 21198052 mov      w1, #0xc9
0246232c: e00313aa mov      x0, x19
02462330: 5f9a1794 bl       #0x2a48cac ; System.Collections.Generic.HashSet<int>$$Contains
02462334: e0010036 tbz      w0, #0, #0x2462370
02462338: 886a01b0 adrp     x8, #0x51b3000
0246233c: 08a141f9 ldr      x8, [x8, #0x340]
02462340: 146d01b0 adrp     x20, #0x5203000
02462344: 000140f9 ldr      x0, [x8]
02462348: 08e040b9 ldr      w8, [x0, #0xe0]
0246234c: 944245f9 ldr      x20, [x20, #0xa80]
02462350: 48000035 cbnz     w8, #0x2462358
02462354: 2c3cad97 bl       #0xfb1404
02462358: 810240f9 ldr      x1, [x20]
0246235c: 80098052 mov      w0, #0x4c
02462360: 01d00f94 bl       #0x2856364 ; Royal.Player.Context.UserContext$$Get<object>
02462364: 000c00b4 cbz      x0, #0x24624e4
02462368: e1031faa mov      x1, xzr
0246236c: 3e7bfb97 bl       #0x2341064 ; Royal.Player.Context.Units.EventLockManager$$TryUpdateAbGroups
02462370: e20240f9 ldr      x2, [x23]
02462374: a1198052 mov      w1, #0xcd
02462378: e00313aa mov      x0, x19
0246237c: 4c9a1794 bl       #0x2a48cac ; System.Collections.Generic.HashSet<int>$$Contains
02462380: 00020037 tbnz     w0, #0, #0x24623c0
02462384: e20240f9 ldr      x2, [x23]
02462388: c1198052 mov      w1, #0xce
0246238c: e00313aa mov      x0, x19
02462390: 479a1794 bl       #0x2a48cac ; System.Collections.Generic.HashSet<int>$$Contains
02462394: 60010037 tbnz     w0, #0, #0x24623c0
02462398: e20240f9 ldr      x2, [x23]
0246239c: 811b8052 mov      w1, #0xdc
024623a0: e00313aa mov      x0, x19
024623a4: 429a1794 bl       #0x2a48cac ; System.Collections.Generic.HashSet<int>$$Contains
024623a8: c0000037 tbnz     w0, #0, #0x24623c0
024623ac: e20240f9 ldr      x2, [x23]
024623b0: a11b8052 mov      w1, #0xdd
024623b4: e00313aa mov      x0, x19
024623b8: 3d9a1794 bl       #0x2a48cac ; System.Collections.Generic.HashSet<int>$$Contains
024623bc: 80010036 tbz      w0, #0, #0x24623ec
024623c0: 686c0190 adrp     x8, #0x51ee000
024623c4: 08b140f9 ldr      x8, [x8, #0x160]
024623c8: 000140f9 ldr      x0, [x8]
024623cc: 08e040b9 ldr      w8, [x0, #0xe0]
024623d0: 48000035 cbnz     w8, #0x24623d8
024623d4: 0c3cad97 bl       #0xfb1404
024623d8: e0031faa mov      x0, xzr
024623dc: abc26394 bl       #0x3d52e88 ; Royal.Scenes.Start.Context.Units.Ads.AdManager$$get_Current
024623e0: 200800b4 cbz      x0, #0x24624e4
024623e4: e1031faa mov      x1, xzr
024623e8: 0dde6394 bl       #0x3d59c1c ; Royal.Scenes.Start.Context.Units.Ads.AdManager$$OnInGameAdsAbTestDataUpdated
024623ec: e20240f9 ldr      x2, [x23]
024623f0: a1168052 mov      w1, #0xb5
024623f4: e00313aa mov      x0, x19
024623f8: 2d9a1794 bl       #0x2a48cac ; System.Collections.Generic.HashSet<int>$$Contains
024623fc: 00020037 tbnz     w0, #0, #0x246243c
02462400: e20240f9 ldr      x2, [x23]
02462404: c1168052 mov      w1, #0xb6
02462408: e00313aa mov      x0, x19
0246240c: 289a1794 bl       #0x2a48cac ; System.Collections.Generic.HashSet<int>$$Contains
02462410: 60010037 tbnz     w0, #0, #0x246243c
02462414: e20240f9 ldr      x2, [x23]
02462418: c11b8052 mov      w1, #0xde
0246241c: e00313aa mov      x0, x19
02462420: 239a1794 bl       #0x2a48cac ; System.Collections.Generic.HashSet<int>$$Contains
02462424: c0000037 tbnz     w0, #0, #0x246243c
02462428: e20240f9 ldr      x2, [x23]
0246242c: e11b8052 mov      w1, #0xdf
02462430: e00313aa mov      x0, x19
02462434: 1e9a1794 bl       #0x2a48cac ; System.Collections.Generic.HashSet<int>$$Contains
02462438: c0040036 tbz      w0, #0, #0x24624d0
0246243c: e0031faa mov      x0, xzr
02462440: f8960e94 bl       #0x2808020 ; Royal.Infrastructure.Services.Native.Purchase.Xsolla.XsollaPurchaseManager$$OnAbTestDataUpdated
02462444: f37b43a9 ldp      x19, x30, [sp, #0x30]
02462448: f55342a9 ldp      x21, x20, [sp, #0x20]
0246244c: f75b41a9 ldp      x23, x22, [sp, #0x10]
02462450: e0031faa mov      x0, xzr
02462454: f963c4a8 ldp      x25, x24, [sp], #0x40
02462458: 5904e017 b        #0x1c635bc ; Royal.Player.Context.Units.ExternalPaymentFirstPurchaseBonusHelper$$OnAbTestDataUpdated
0246245c: 086e0190 adrp     x8, #0x5222000
02462460: 08ed42f9 ldr      x8, [x8, #0x5d8]
02462464: 130140f9 ldr      x19, [x8]
02462468: 681e40f9 ldr      x8, [x19, #0x38]
0246246c: 000140f9 ldr      x0, [x8]
02462470: 08c84439 ldrb     w8, [x0, #0x132]
02462474: 48000037 tbnz     w8, #0, #0x246247c
02462478: db7aac97 bl       #0xf80fe4
0246247c: 08e040b9 ldr      w8, [x0, #0xe0]
02462480: 48000035 cbnz     w8, #0x2462488
02462484: e03bad97 bl       #0xfb1404
02462488: 681e40f9 ldr      x8, [x19, #0x38]
0246248c: 536b01d0 adrp     x19, #0x51cc000
02462490: 000140f9 ldr      x0, [x8]
02462494: 08c84439 ldrb     w8, [x0, #0x132]
02462498: 734644f9 ldr      x19, [x19, #0x888]
0246249c: 48000037 tbnz     w8, #0, #0x24624a4
024624a0: d17aac97 bl       #0xf80fe4
024624a4: 085c40f9 ldr      x8, [x0, #0xb8]
024624a8: 620240f9 ldr      x2, [x19]
024624ac: e00314aa mov      x0, x20
024624b0: f37b43a9 ldp      x19, x30, [sp, #0x30]
024624b4: 030140f9 ldr      x3, [x8]
024624b8: f55342a9 ldp      x21, x20, [sp, #0x20]
024624bc: f75b41a9 ldp      x23, x22, [sp, #0x10]
024624c0: c1018052 mov      w1, #0xe
024624c4: e4031faa mov      x4, xzr
024624c8: f963c4a8 ldp      x25, x24, [sp], #0x40
024624cc: 15790e14 b        #0x2800920 ; Royal.Infrastructure.Services.Logs.Log$$Debug
024624d0: f37b43a9 ldp      x19, x30, [sp, #0x30]
024624d4: f55342a9 ldp      x21, x20, [sp, #0x20]
024624d8: f75b41a9 ldp      x23, x22, [sp, #0x10]
024624dc: f963c4a8 ldp      x25, x24, [sp], #0x40
024624e0: c0035fd6 ret      
024624e4: d13bad97 bl       #0xfb1428
