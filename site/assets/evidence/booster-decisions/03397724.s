# Royal.Scenes.Game.Mechanics.Items.SpecialItems.PropellerItem.PropellerItemModel$$TryExplode
# Linear span; next metadata entry is not a proven CFG boundary.
03397724: ff4302d1 sub      sp, sp, #0x90
03397728: ea2300fd str      d10, [sp, #0x40]
0339772c: e923056d stp      d9, d8, [sp, #0x50]
03397730: f75b06a9 stp      x23, x22, [sp, #0x60]
03397734: f55307a9 stp      x21, x20, [sp, #0x70]
03397738: f37b08a9 stp      x19, x30, [sp, #0x80]
0339773c: 750f01f0 adrp     x21, #0x5586000
03397740: a82e6639 ldrb     w8, [x21, #0x98b]
03397744: f40301aa mov      x20, x1
03397748: f30300aa mov      x19, x0
0339774c: 28010037 tbnz     w8, #0, #0x3397770
03397750: 80f400b0 adrp     x0, #0x5228000
03397754: 000444f9 ldr      x0, [x0, #0x808]
03397758: ea667097 bl       #0xfb1300
0339775c: a0f20090 adrp     x0, #0x51eb000
03397760: 006c46f9 ldr      x0, [x0, #0xcd8]
03397764: e7667097 bl       #0xfb1300
03397768: 28008052 mov      w8, #1
0339776c: a82e2639 strb     w8, [x21, #0x98b]
03397770: 601e40f9 ldr      x0, [x19, #0x38]
03397774: 601100b4 cbz      x0, #0x33979a0
03397778: e1031faa mov      x1, xzr
0339777c: 44d2ff97 bl       #0x338c08c ; Royal.Scenes.Game.Mechanics.Items.Config.ItemMediator$$get_CurrentCell
03397780: 600000b4 cbz      x0, #0x339778c
03397784: e00313aa mov      x0, x19
03397788: 87000094 bl       #0x33979a4 ; Royal.Scenes.Game.Mechanics.Items.SpecialItems.PropellerItem.PropellerItemModel$$TryCollectRemainingMoveCoins
0339778c: 757240f9 ldr      x21, [x19, #0xe0]
03397790: 951000b4 cbz      x21, #0x33979a0
03397794: 8af400b0 adrp     x10, #0x5228000
03397798: a80240f9 ldr      x8, [x21]
0339779c: 4a0544f9 ldr      x10, [x10, #0x808]
033977a0: 09554279 ldrh     w9, [x8, #0x12a]
033977a4: 410140f9 ldr      x1, [x10]
033977a8: 290100b4 cbz      x9, #0x33977cc
033977ac: 0a5940f9 ldr      x10, [x8, #0xb0]
033977b0: 4a210091 add      x10, x10, #8
033977b4: 4b815ff8 ldur     x11, [x10, #-8]
033977b8: 7f0101eb cmp      x11, x1
033977bc: 00010054 b.eq     #0x33977dc
033977c0: 290500f1 subs     x9, x9, #1
033977c4: 4a410091 add      x10, x10, #0x10
033977c8: 61ffff54 b.ne     #0x33977b4
033977cc: 02018052 mov      w2, #8
033977d0: e00315aa mov      x0, x21
033977d4: c0a66f97 bl       #0xf812d4
033977d8: 05000014 b        #0x33977ec
033977dc: 490140b9 ldr      w9, [x10]
033977e0: 29210011 add      w9, w9, #8
033977e4: 08d1298b add      x8, x8, w9, sxtw #4
033977e8: 00e10491 add      x0, x8, #0x138
033977ec: 080440a9 ldp      x8, x1, [x0]
033977f0: e00315aa mov      x0, x21
033977f4: 00013fd6 blr      x8
033977f8: 200b0037 tbnz     w0, #0, #0x339795c
033977fc: 68ca4239 ldrb     w8, [x19, #0xb2]
03397800: e80a0035 cbnz     w8, #0x339795c
03397804: a8f20090 adrp     x8, #0x51eb000
03397808: 086d46f9 ldr      x8, [x8, #0xcd8]
0339780c: 800b8052 mov      w0, #0x5c
03397810: 010140f9 ldr      x1, [x8]
03397814: 789cc697 bl       #0x253e9f4 ; Royal.Scenes.Game.Levels.LevelContext$$Get<object>
03397818: 680240f9 ldr      x8, [x19]
0339781c: f50300aa mov      x21, x0
03397820: e00313aa mov      x0, x19
03397824: 09bd42f9 ldr      x9, [x8, #0x578]
03397828: 01c142f9 ldr      x1, [x8, #0x580]
0339782c: 20013fd6 blr      x9
03397830: 680240f9 ldr      x8, [x19]
03397834: e00313aa mov      x0, x19
03397838: 081ca04e mov      v8.16b, v0.16b
0339783c: 291ca14e mov      v9.16b, v1.16b
03397840: 09bd41f9 ldr      x9, [x8, #0x378]
03397844: 01c141f9 ldr      x1, [x8, #0x380]
03397848: 4a1ca24e mov      v10.16b, v2.16b
0339784c: 20013fd6 blr      x9
03397850: 950a00b4 cbz      x21, #0x33979a0
03397854: 62f24239 ldrb     w2, [x19, #0xbc]
03397858: e103002a mov      w1, w0
0339785c: e00315aa mov      x0, x21
03397860: 001da84e mov      v0.16b, v8.16b
03397864: 211da94e mov      v1.16b, v9.16b
03397868: 421daa4e mov      v2.16b, v10.16b
0339786c: e3031faa mov      x3, xzr
03397870: fad5ce97 bl       #0x274d058 ; Royal.Scenes.Game.MagicDuke.Charger.ChargerManager$$CollectSingleItemForCharger
03397874: 68f24239 ldrb     w8, [x19, #0xbc]
03397878: 28070035 cbnz     w8, #0x339795c
0339787c: f60e01f0 adrp     x22, #0x5576000
03397880: c8ae7c39 ldrb     w8, [x22, #0xf2b]
03397884: c8000035 cbnz     w8, #0x339789c
03397888: 80f300b0 adrp     x0, #0x5208000
0339788c: 00c041f9 ldr      x0, [x0, #0x380]
03397890: 9c667097 bl       #0xfb1300
03397894: 28008052 mov      w8, #1
03397898: c8ae3c39 strb     w8, [x22, #0xf2b]
0339789c: 97f300b0 adrp     x23, #0x5208000
033978a0: f7c241f9 ldr      x23, [x23, #0x380]
033978a4: e80240f9 ldr      x8, [x23]
033978a8: 085d40f9 ldr      x8, [x8, #0xb8]
033978ac: 080140f9 ldr      x8, [x8]
033978b0: 880700b4 cbz      x8, #0x33979a0
033978b4: 081d40f9 ldr      x8, [x8, #0x38]
033978b8: 480700b4 cbz      x8, #0x33979a0
033978bc: 690240f9 ldr      x9, [x19]
033978c0: 150d40f9 ldr      x21, [x8, #0x18]
033978c4: e00313aa mov      x0, x19
033978c8: 28bd41f9 ldr      x8, [x9, #0x378]
033978cc: 21c141f9 ldr      x1, [x9, #0x380]
033978d0: 00013fd6 blr      x8
033978d4: 750600b4 cbz      x21, #0x33979a0
033978d8: e103002a mov      w1, w0
033978dc: e00315aa mov      x0, x21
033978e0: e2031faa mov      x2, xzr
033978e4: dc1ac397 bl       #0x245e454 ; Royal.Player.Context.Data.Session.UserActiveLevelData$$IncrementClashOfChampionsScoreForItem
033978e8: c8ae7c39 ldrb     w8, [x22, #0xf2b]
033978ec: f503002a mov      w21, w0
033978f0: c8000035 cbnz     w8, #0x3397908
033978f4: 80f300b0 adrp     x0, #0x5208000
033978f8: 00c041f9 ldr      x0, [x0, #0x380]
033978fc: 81667097 bl       #0xfb1300
03397900: 28008052 mov      w8, #1
03397904: c8ae3c39 strb     w8, [x22, #0xf2b]
03397908: e80240f9 ldr      x8, [x23]
0339790c: 085d40f9 ldr      x8, [x8, #0xb8]
03397910: 080140f9 ldr      x8, [x8]
03397914: 680400b4 cbz      x8, #0x33979a0
03397918: 081d40f9 ldr      x8, [x8, #0x38]
0339791c: 280400b4 cbz      x8, #0x33979a0
03397920: 690240f9 ldr      x9, [x19]
03397924: 160d40f9 ldr      x22, [x8, #0x18]
03397928: e00313aa mov      x0, x19
0339792c: 28b542f9 ldr      x8, [x9, #0x568]
03397930: 21b942f9 ldr      x1, [x9, #0x570]
03397934: 00013fd6 blr      x8
03397938: 560300b4 cbz      x22, #0x33979a0
0339793c: e303271e fmov     s3, wzr
03397940: e00316aa mov      x0, x22
03397944: e103152a mov      w1, w21
03397948: e2031f2a mov      w2, wzr
0339794c: e3031faa mov      x3, xzr
03397950: e4031faa mov      x4, xzr
03397954: e5031faa mov      x5, xzr
03397958: cf1ac397 bl       #0x245e494 ; Royal.Player.Context.Data.Session.UserActiveLevelData$$TryShowClashOfChampionsGameplayCollectView
0339795c: 881a40f9 ldr      x8, [x20, #0x30]
03397960: 818240ad ldp      q1, q0, [x20, #0x10]
03397964: 8202c03d ldr      q2, [x20]
03397968: e1030091 mov      x1, sp
0339796c: e00313aa mov      x0, x19
03397970: e2031faa mov      x2, xzr
03397974: e81b00f9 str      x8, [sp, #0x30]
03397978: e18300ad stp      q1, q0, [sp, #0x10]
0339797c: e203803d str      q2, [sp]
03397980: 612fcc97 bl       #0x26a3704 ; Royal.Scenes.Game.Levels.Units.Explode.GuidedExploderItemModel$$TryExplode
03397984: f37b48a9 ldp      x19, x30, [sp, #0x80]
03397988: f55347a9 ldp      x21, x20, [sp, #0x70]
0339798c: f75b46a9 ldp      x23, x22, [sp, #0x60]
03397990: e923456d ldp      d9, d8, [sp, #0x50]
03397994: ea2340fd ldr      d10, [sp, #0x40]
03397998: ff430291 add      sp, sp, #0x90
0339799c: c0035fd6 ret      
033979a0: a2667097 bl       #0xfb1428
