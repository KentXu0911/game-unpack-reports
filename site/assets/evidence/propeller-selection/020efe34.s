# Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindSingleTarget
# Next metadata method 0x20eff70, not a proven function boundary.
020efe34: ffc304d1 sub      sp, sp, #0x130
020efe38: fc8300f9 str      x28, [sp, #0x100]
020efe3c: f55311a9 stp      x21, x20, [sp, #0x110]
020efe40: f37b12a9 stp      x19, x30, [sp, #0x120]
020efe44: 75a401d0 adrp     x21, #0x557d000
020efe48: a8265539 ldrb     w8, [x21, #0x549]
020efe4c: f40301aa mov      x20, x1
020efe50: f30300aa mov      x19, x0
020efe54: c8000037 tbnz     w8, #0, #0x20efe6c
020efe58: 808801f0 adrp     x0, #0x5202000
020efe5c: 00c041f9 ldr      x0, [x0, #0x380]
020efe60: 2805bb97 bl       #0xfb1300
020efe64: 28008052 mov      w8, #1
020efe68: a8261539 strb     w8, [x21, #0x549]
020efe6c: 140800b4 cbz      x20, #0x20eff6c
020efe70: 95320491 add      x21, x20, #0x10c
020efe74: a81a40f9 ldr      x8, [x21, #0x30]
020efe78: a18240ad ldp      q1, q0, [x21, #0x10]
020efe7c: a202c03d ldr      q2, [x21]
020efe80: e1030391 add      x1, sp, #0xc0
020efe84: e87b00f9 str      x8, [sp, #0xf0]
020efe88: e18306ad stp      q1, q0, [sp, #0xd0]
020efe8c: e233803d str      q2, [sp, #0xc0]
020efe90: 82a640f9 ldr      x2, [x20, #0x148]
020efe94: e00313aa mov      x0, x19
020efe98: e3070094 bl       #0x20f1e24 ; Royal.Scenes.Game.Levels.Units.Explode.ExplodeTargetFinder$$FindSingleTargetCellForExploder
020efe9c: 80050037 tbnz     w0, #0, #0x20eff4c
020efea0: f30301aa mov      x19, x1
020efea4: 810500b4 cbz      x1, #0x20eff54
020efea8: 888801f0 adrp     x8, #0x5202000
020efeac: 08c141f9 ldr      x8, [x8, #0x380]
020efeb0: 000140f9 ldr      x0, [x8]
020efeb4: 08e040b9 ldr      w8, [x0, #0xe0]
020efeb8: 48000035 cbnz     w8, #0x20efec0
020efebc: 5205bb97 bl       #0xfb1404
020efec0: 0cc0ff97 bl       #0x20dfef0 ; Royal.Scenes.Game.Levels.Units.KingAnimation.KingAnimationStateManager$$get_Current
020efec4: a28240ad ldp      q2, q0, [x21, #0x10]
020efec8: a81a40f9 ldr      x8, [x21, #0x30]
020efecc: a102c03d ldr      q1, [x21]
020efed0: 610e40f9 ldr      x1, [x19, #0x18]
020efed4: e28304ad stp      q2, q0, [sp, #0x90]
020efed8: e85b00f9 str      x8, [sp, #0xb0]
020efedc: e123803d str      q1, [sp, #0x80]
020efee0: 600400b4 cbz      x0, #0x20eff6c
020efee4: e10344ad ldp      q1, q0, [sp, #0x80]
020efee8: e22bc03d ldr      q2, [sp, #0xa0]
020efeec: e85b40f9 ldr      x8, [sp, #0xb0]
020efef0: e2030191 add      x2, sp, #0x40
020efef4: e10302ad stp      q1, q0, [sp, #0x40]
020efef8: e21b803d str      q2, [sp, #0x60]
020efefc: e83b00f9 str      x8, [sp, #0x70]
020eff00: bbc6ff97 bl       #0x20e19ec ; Royal.Scenes.Game.Levels.Units.KingAnimation.KingAnimationStateManager$$SetSinglePropeller
020eff04: a28240ad ldp      q2, q0, [x21, #0x10]
020eff08: a81a40f9 ldr      x8, [x21, #0x30]
020eff0c: a102c03d ldr      q1, [x21]
020eff10: 605a40f9 ldr      x0, [x19, #0xb0]
020eff14: e28304ad stp      q2, q0, [sp, #0x90]
020eff18: e85b00f9 str      x8, [sp, #0xb0]
020eff1c: e123803d str      q1, [sp, #0x80]
020eff20: 600200b4 cbz      x0, #0x20eff6c
020eff24: e10344ad ldp      q1, q0, [sp, #0x80]
020eff28: e22bc03d ldr      q2, [sp, #0xa0]
020eff2c: e85b40f9 ldr      x8, [sp, #0xb0]
020eff30: e1030091 mov      x1, sp
020eff34: e2031faa mov      x2, xzr
020eff38: e10300ad stp      q1, q0, [sp]
020eff3c: e20b803d str      q2, [sp, #0x20]
020eff40: e81b00f9 str      x8, [sp, #0x30]
020eff44: 2f7e2794 bl       #0x2acf800 ; Royal.Scenes.Game.Mechanics.Board.Cell.ExplodeTargetMediator$$AddIncomingExploder
020eff48: 04000014 b        #0x20eff58
020eff4c: 80a640f9 ldr      x0, [x20, #0x148]
020eff50: 02000014 b        #0x20eff58
020eff54: e0031faa mov      x0, xzr
020eff58: f37b52a9 ldp      x19, x30, [sp, #0x120]
020eff5c: f55351a9 ldp      x21, x20, [sp, #0x110]
020eff60: fc8340f9 ldr      x28, [sp, #0x100]
020eff64: ffc30491 add      sp, sp, #0x130
020eff68: c0035fd6 ret      
020eff6c: 2f05bb97 bl       #0xfb1428
