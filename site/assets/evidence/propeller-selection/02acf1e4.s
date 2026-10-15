# Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$GetScore
# RVA 0x2acf1e4; next distinct symbol 0x2acf360; span 380; binary bytes retained, boundary heuristic
02acf1e4: f963bca9 stp      x25, x24, [sp, #-0x40]!
02acf1e8: f75b01a9 stp      x23, x22, [sp, #0x10]
02acf1ec: f55302a9 stp      x21, x20, [sp, #0x20]
02acf1f0: f37b03a9 stp      x19, x30, [sp, #0x30]
02acf1f4: f30300aa mov      x19, x0
02acf1f8: 001440f9 ldr      x0, [x0, #0x28]
02acf1fc: 000b00b4 cbz      x0, #0x2acf35c
02acf200: f603012a mov      w22, w1
02acf204: e1031faa mov      x1, xzr
02acf208: f40303aa mov      x20, x3
02acf20c: f503022a mov      w21, w2
02acf210: 332ed697 bl       #0x205aadc ; Royal.Player.Context.Units.LevelManager$$IsThereBottomCollectInLevel
02acf214: 40010036 tbz      w0, #0, #0x2acf23c
02acf218: 681240f9 ldr      x8, [x19, #0x20]
02acf21c: 080a00b4 cbz      x8, #0x2acf35c
02acf220: 000940f9 ldr      x0, [x8, #0x10]
02acf224: c00900b4 cbz      x0, #0x2acf35c
02acf228: e1031faa mov      x1, xzr
02acf22c: 0ddbf197 bl       #0x2745e60 ; Royal.Scenes.Game.Mechanics.Board.Cell.Mediator.CellMediator$$get_CurrentItem
02acf230: 1f0000f1 cmp      x0, #0
02acf234: f7179f1a cset     w23, eq
02acf238: 02000014 b        #0x2acf240 ; unresolved direct target
02acf23c: 37008052 mov      w23, #1
02acf240: 601640f9 ldr      x0, [x19, #0x28]
02acf244: c00800b4 cbz      x0, #0x2acf35c
02acf248: 61008052 mov      w1, #3
02acf24c: e2031faa mov      x2, xzr
02acf250: 0d2ed697 bl       #0x205aa84 ; Royal.Player.Context.Units.LevelManager$$IsThereItemInLevel
02acf254: c0000036 tbz      w0, #0, #0x2acf26c
02acf258: 68724039 ldrb     w8, [x19, #0x1c]
02acf25c: e903352a mvn      w9, w21
02acf260: 29010012 and      w9, w9, #1
02acf264: 3801084a eor      w24, w9, w8
02acf268: 02000014 b        #0x2acf270 ; unresolved direct target
02acf26c: 38008052 mov      w24, #1
02acf270: 791240b9 ldr      w25, [x19, #0x10]
02acf274: e0031faa mov      x0, xzr
02acf278: 3c0ef297 bl       #0x2752b68 ; Royal.Scenes.Game.Levels.LevelContext$$get_FrameCount
02acf27c: 3f03006b cmp      w25, w0
02acf280: 01010054 b.ne     #0x2acf2a0
02acf284: 681a40b9 ldr      w8, [x19, #0x18]
02acf288: 1f01166b cmp      w8, w22
02acf28c: a1000054 b.ne     #0x2acf2a0
02acf290: e003162a mov      w0, w22
02acf294: e1031faa mov      x1, xzr
02acf298: a9d52294 bl       #0x338493c ; Royal.Scenes.Game.Mechanics.Items.Config.GameplayExtensions$$IsSingleExploderStrategy
02acf29c: 00050036 tbz      w0, #0, #0x2acf33c
02acf2a0: e8031f2a mov      w8, wzr
02acf2a4: 0903170a and      w9, w24, w23
02acf2a8: 3f01086a tst      w9, w8
02acf2ac: e1010054 b.ne     #0x2acf2e8
02acf2b0: e0031faa mov      x0, xzr
02acf2b4: b7020012 and      w23, w21, #1
02acf2b8: 2c0ef297 bl       #0x2752b68 ; Royal.Scenes.Game.Levels.LevelContext$$get_FrameCount
02acf2bc: 680240f9 ldr      x8, [x19]
02acf2c0: 601200b9 str      w0, [x19, #0x10]
02acf2c4: 761a00b9 str      w22, [x19, #0x18]
02acf2c8: 77720039 strb     w23, [x19, #0x1c]
02acf2cc: 099157a9 ldp      x9, x4, [x8, #0x178]
02acf2d0: a2020012 and      w2, w21, #1
02acf2d4: e00313aa mov      x0, x19
02acf2d8: e103162a mov      w1, w22
02acf2dc: e30314aa mov      x3, x20
02acf2e0: 20013fd6 blr      x9
02acf2e4: 601600b9 str      w0, [x19, #0x14]
02acf2e8: 601240f9 ldr      x0, [x19, #0x20]
02acf2ec: 800300b4 cbz      x0, #0x2acf35c
02acf2f0: a6f4ff97 bl       #0x2acc588 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsBlockedByAnyLog
02acf2f4: 20010037 tbnz     w0, #0, #0x2acf318
02acf2f8: 601240f9 ldr      x0, [x19, #0x20]
02acf2fc: 000300b4 cbz      x0, #0x2acf35c
02acf300: 07f5ff97 bl       #0x2acc71c ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsBlockedByAnyBoxingGlove
02acf304: a0000037 tbnz     w0, #0, #0x2acf318
02acf308: 601240f9 ldr      x0, [x19, #0x20]
02acf30c: 800200b4 cbz      x0, #0x2acf35c
02acf310: 42f4ff97 bl       #0x2acc418 ; Royal.Scenes.Game.Mechanics.Board.Cell.CellModel$$IsBlockedByAnyDrill
02acf314: 00020036 tbz      w0, #0, #0x2acf354
02acf318: 681640b9 ldr      w8, [x19, #0x14]
02acf31c: 293b8252 mov      w9, #0x11d9
02acf320: 1f050071 cmp      w8, #1
02acf324: 00b1891a csel     w0, w8, w9, lt
02acf328: f37b43a9 ldp      x19, x30, [sp, #0x30]
02acf32c: f55342a9 ldp      x21, x20, [sp, #0x20]
02acf330: f75b41a9 ldp      x23, x22, [sp, #0x10]
02acf334: f963c4a8 ldp      x25, x24, [sp], #0x40
02acf338: c0035fd6 ret      
02acf33c: e00313aa mov      x0, x19
02acf340: e103162a mov      w1, w22
02acf344: 4fffff97 bl       #0x2acf080 ; Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$ShouldInvalidateCacheForNonSingleExploder
02acf348: e803202a mvn      w8, w0
02acf34c: 08010012 and      w8, w8, #1
02acf350: d5ffff17 b        #0x2acf2a4 ; unresolved direct target
02acf354: 601640b9 ldr      w0, [x19, #0x14]
02acf358: f4ffff17 b        #0x2acf328 ; unresolved direct target
02acf35c: 33889397 bl       #0xfb1428 ; unresolved direct target
