.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8002A300 # 0
/* 029EB0 8002A300 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 029EB4 8002A304 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 029EB8 8002A308 4487B000 */  mtc1        $a3, $f22
/* 029EBC 8002A30C AFBF0034 */  sw          $ra, 0x34($sp)
/* 029EC0 8002A310 AFB00030 */  sw          $s0, 0x30($sp)
/* 029EC4 8002A314 00C08025 */  move        $s0, $a2
/* 029EC8 8002A318 F7B80028 */  sdc1        $f24, 0x28($sp)
/* 029ECC 8002A31C F7B40018 */  sdc1        $f20, 0x18($sp)
/* 029ED0 8002A320 AFA40050 */  sw          $a0, 0x50($sp)
/* 029ED4 8002A324 0C006ACD */  jal         func_8001AB34
/* 029ED8 8002A328 AFA50054 */   sw         $a1, 0x54($sp)
/* 029EDC 8002A32C 28410004 */  slti        $at, $v0, 0x4
/* 029EE0 8002A330 10200003 */  beqz        $at, .L8002A340
/* 029EE4 8002A334 00000000 */   nop
/* 029EE8 8002A338 100000A4 */  b           .L8002A5CC
/* 029EEC 8002A33C 00001025 */   move       $v0, $zero
.L8002A340:
/* 029EF0 8002A340 3C01800B */  lui         $at, %hi(D_800AA988)
/* 029EF4 8002A344 C424A988 */  lwc1        $f4, %lo(D_800AA988)($at)
/* 029EF8 8002A348 3C013F80 */  lui         $at, 0x3f80
/* 029EFC 8002A34C 4604B03C */  c.lt.s      $f22, $f4
/* 029F00 8002A350 00000000 */  nop
/* 029F04 8002A354 45020031 */  bc1fl       .L8002A41C
/* 029F08 8002A358 44819000 */   mtc1       $at, $f18
/* 029F0C 8002A35C 0C00E512 */  jal         func_80039448
/* 029F10 8002A360 00000000 */   nop
/* 029F14 8002A364 3C013DF0 */  lui         $at, 0x3df0
/* 029F18 8002A368 4481B800 */  mtc1        $at, $f23
/* 029F1C 8002A36C 44823000 */  mtc1        $v0, $f6
/* 029F20 8002A370 3C013FE0 */  lui         $at, 0x3fe0
/* 029F24 8002A374 4481C800 */  mtc1        $at, $f25
/* 029F28 8002A378 4480B000 */  mtc1        $zero, $f22
/* 029F2C 8002A37C 4480C000 */  mtc1        $zero, $f24
/* 029F30 8002A380 04410006 */  bgez        $v0, .L8002A39C
/* 029F34 8002A384 46803221 */   cvt.d.w    $f8, $f6
/* 029F38 8002A388 3C0141F0 */  lui         $at, 0x41f0
/* 029F3C 8002A38C 44815800 */  mtc1        $at, $f11
/* 029F40 8002A390 44805000 */  mtc1        $zero, $f10
/* 029F44 8002A394 00000000 */  nop
/* 029F48 8002A398 462A4200 */  add.d       $f8, $f8, $f10
.L8002A39C:
/* 029F4C 8002A39C 46364402 */  mul.d       $f16, $f8, $f22
/* 029F50 8002A3A0 3C01800B */  lui         $at, %hi(D_800AA990)
/* 029F54 8002A3A4 D424A990 */  ldc1        $f4, %lo(D_800AA990)($at)
/* 029F58 8002A3A8 3C013F00 */  lui         $at, 0x3f00
/* 029F5C 8002A3AC 44814000 */  mtc1        $at, $f8
/* 029F60 8002A3B0 00000000 */  nop
/* 029F64 8002A3B4 E7A80044 */  swc1        $f8, 0x44($sp)
/* 029F68 8002A3B8 46388481 */  sub.d       $f18, $f16, $f24
/* 029F6C 8002A3BC 46249182 */  mul.d       $f6, $f18, $f4
/* 029F70 8002A3C0 462032A0 */  cvt.s.d     $f10, $f6
/* 029F74 8002A3C4 0C00E512 */  jal         func_80039448
/* 029F78 8002A3C8 E7AA0040 */   swc1       $f10, 0x40($sp)
/* 029F7C 8002A3CC 44828000 */  mtc1        $v0, $f16
/* 029F80 8002A3D0 3C014120 */  lui         $at, 0x4120
/* 029F84 8002A3D4 44810000 */  mtc1        $at, $f0
/* 029F88 8002A3D8 04410006 */  bgez        $v0, .L8002A3F4
/* 029F8C 8002A3DC 468084A1 */   cvt.d.w    $f18, $f16
/* 029F90 8002A3E0 3C0141F0 */  lui         $at, 0x41f0
/* 029F94 8002A3E4 44812800 */  mtc1        $at, $f5
/* 029F98 8002A3E8 44802000 */  mtc1        $zero, $f4
/* 029F9C 8002A3EC 00000000 */  nop
/* 029FA0 8002A3F0 46249480 */  add.d       $f18, $f18, $f4
.L8002A3F4:
/* 029FA4 8002A3F4 46369182 */  mul.d       $f6, $f18, $f22
/* 029FA8 8002A3F8 3C01800B */  lui         $at, %hi(D_800AA998)
/* 029FAC 8002A3FC D428A998 */  ldc1        $f8, %lo(D_800AA998)($at)
/* 029FB0 8002A400 46000506 */  mov.s       $f20, $f0
/* 029FB4 8002A404 46383281 */  sub.d       $f10, $f6, $f24
/* 029FB8 8002A408 46285402 */  mul.d       $f16, $f10, $f8
/* 029FBC 8002A40C 46208120 */  cvt.s.d     $f4, $f16
/* 029FC0 8002A410 1000004B */  b           .L8002A540
/* 029FC4 8002A414 E7A40048 */   swc1       $f4, 0x48($sp)
/* 029FC8 8002A418 44819000 */  mtc1        $at, $f18
.L8002A41C:
/* 029FCC 8002A41C 0C00E512 */  jal         func_80039448
/* 029FD0 8002A420 46169503 */   div.s      $f20, $f18, $f22
/* 029FD4 8002A424 3C013DF0 */  lui         $at, 0x3df0
/* 029FD8 8002A428 4481B800 */  mtc1        $at, $f23
/* 029FDC 8002A42C 44823000 */  mtc1        $v0, $f6
/* 029FE0 8002A430 3C013FE0 */  lui         $at, 0x3fe0
/* 029FE4 8002A434 4481C800 */  mtc1        $at, $f25
/* 029FE8 8002A438 4480B000 */  mtc1        $zero, $f22
/* 029FEC 8002A43C 4480C000 */  mtc1        $zero, $f24
/* 029FF0 8002A440 04410006 */  bgez        $v0, .L8002A45C
/* 029FF4 8002A444 468032A1 */   cvt.d.w    $f10, $f6
/* 029FF8 8002A448 3C0141F0 */  lui         $at, 0x41f0
/* 029FFC 8002A44C 44814800 */  mtc1        $at, $f9
/* 02A000 8002A450 44804000 */  mtc1        $zero, $f8
/* 02A004 8002A454 00000000 */  nop
/* 02A008 8002A458 46285280 */  add.d       $f10, $f10, $f8
.L8002A45C:
/* 02A00C 8002A45C 46365402 */  mul.d       $f16, $f10, $f22
/* 02A010 8002A460 3C01800B */  lui         $at, %hi(D_800AA9A0)
/* 02A014 8002A464 D432A9A0 */  ldc1        $f18, %lo(D_800AA9A0)($at)
/* 02A018 8002A468 C6080000 */  lwc1        $f8, 0x0($s0)
/* 02A01C 8002A46C 46388101 */  sub.d       $f4, $f16, $f24
/* 02A020 8002A470 46322182 */  mul.d       $f6, $f4, $f18
/* 02A024 8002A474 00000000 */  nop
/* 02A028 8002A478 46144282 */  mul.s       $f10, $f8, $f20
/* 02A02C 8002A47C 46005421 */  cvt.d.s     $f16, $f10
/* 02A030 8002A480 46303100 */  add.d       $f4, $f6, $f16
/* 02A034 8002A484 462024A0 */  cvt.s.d     $f18, $f4
/* 02A038 8002A488 0C00E512 */  jal         func_80039448
/* 02A03C 8002A48C E6120000 */   swc1       $f18, 0x0($s0)
/* 02A040 8002A490 44824000 */  mtc1        $v0, $f8
/* 02A044 8002A494 3C0141F0 */  lui         $at, 0x41f0
/* 02A048 8002A498 04410005 */  bgez        $v0, .L8002A4B0
/* 02A04C 8002A49C 468042A1 */   cvt.d.w    $f10, $f8
/* 02A050 8002A4A0 44813800 */  mtc1        $at, $f7
/* 02A054 8002A4A4 44803000 */  mtc1        $zero, $f6
/* 02A058 8002A4A8 00000000 */  nop
/* 02A05C 8002A4AC 46265280 */  add.d       $f10, $f10, $f6
.L8002A4B0:
/* 02A060 8002A4B0 46365402 */  mul.d       $f16, $f10, $f22
/* 02A064 8002A4B4 3C01800B */  lui         $at, %hi(D_800AA9A8)
/* 02A068 8002A4B8 D432A9A8 */  ldc1        $f18, %lo(D_800AA9A8)($at)
/* 02A06C 8002A4BC C6060004 */  lwc1        $f6, 0x4($s0)
/* 02A070 8002A4C0 46388101 */  sub.d       $f4, $f16, $f24
/* 02A074 8002A4C4 46322202 */  mul.d       $f8, $f4, $f18
/* 02A078 8002A4C8 00000000 */  nop
/* 02A07C 8002A4CC 46143282 */  mul.s       $f10, $f6, $f20
/* 02A080 8002A4D0 46005421 */  cvt.d.s     $f16, $f10
/* 02A084 8002A4D4 46304100 */  add.d       $f4, $f8, $f16
/* 02A088 8002A4D8 462024A0 */  cvt.s.d     $f18, $f4
/* 02A08C 8002A4DC 0C00E512 */  jal         func_80039448
/* 02A090 8002A4E0 E6120004 */   swc1       $f18, 0x4($s0)
/* 02A094 8002A4E4 44823000 */  mtc1        $v0, $f6
/* 02A098 8002A4E8 3C014120 */  lui         $at, 0x4120
/* 02A09C 8002A4EC 44810000 */  mtc1        $at, $f0
/* 02A0A0 8002A4F0 04410006 */  bgez        $v0, .L8002A50C
/* 02A0A4 8002A4F4 468032A1 */   cvt.d.w    $f10, $f6
/* 02A0A8 8002A4F8 3C0141F0 */  lui         $at, 0x41f0
/* 02A0AC 8002A4FC 44814800 */  mtc1        $at, $f9
/* 02A0B0 8002A500 44804000 */  mtc1        $zero, $f8
/* 02A0B4 8002A504 00000000 */  nop
/* 02A0B8 8002A508 46285280 */  add.d       $f10, $f10, $f8
.L8002A50C:
/* 02A0BC 8002A50C 46365402 */  mul.d       $f16, $f10, $f22
/* 02A0C0 8002A510 3C01800B */  lui         $at, %hi(D_800AA9B0)
/* 02A0C4 8002A514 D432A9B0 */  ldc1        $f18, %lo(D_800AA9B0)($at)
/* 02A0C8 8002A518 C6080008 */  lwc1        $f8, 0x8($s0)
/* 02A0CC 8002A51C 46388101 */  sub.d       $f4, $f16, $f24
/* 02A0D0 8002A520 46322182 */  mul.d       $f6, $f4, $f18
/* 02A0D4 8002A524 00000000 */  nop
/* 02A0D8 8002A528 46144282 */  mul.s       $f10, $f8, $f20
/* 02A0DC 8002A52C 46005421 */  cvt.d.s     $f16, $f10
/* 02A0E0 8002A530 4600A502 */  mul.s       $f20, $f20, $f0
/* 02A0E4 8002A534 46303100 */  add.d       $f4, $f6, $f16
/* 02A0E8 8002A538 462024A0 */  cvt.s.d     $f18, $f4
/* 02A0EC 8002A53C E6120008 */  swc1        $f18, 0x8($s0)
.L8002A540:
/* 02A0F0 8002A540 3C01800B */  lui         $at, %hi(D_800AA9B8)
/* 02A0F4 8002A544 C428A9B8 */  lwc1        $f8, %lo(D_800AA9B8)($at)
/* 02A0F8 8002A548 02002025 */  move        $a0, $s0
/* 02A0FC 8002A54C 4608A03C */  c.lt.s      $f20, $f8
/* 02A100 8002A550 00000000 */  nop
/* 02A104 8002A554 45000003 */  bc1f        .L8002A564
/* 02A108 8002A558 00000000 */   nop
/* 02A10C 8002A55C 1000001B */  b           .L8002A5CC
/* 02A110 8002A560 24020001 */   addiu      $v0, $zero, 0x1
.L8002A564:
/* 02A114 8002A564 0C00E371 */  jal         func_80038DC4
/* 02A118 8002A568 27A5004C */   addiu      $a1, $sp, 0x4c
/* 02A11C 8002A56C 3C014120 */  lui         $at, 0x4120
/* 02A120 8002A570 44810000 */  mtc1        $at, $f0
/* 02A124 8002A574 00000000 */  nop
/* 02A128 8002A578 4600A03C */  c.lt.s      $f20, $f0
/* 02A12C 8002A57C 00000000 */  nop
/* 02A130 8002A580 45020006 */  bc1fl       .L8002A59C
/* 02A134 8002A584 4600018D */   trunc.w.s  $f6, $f0
/* 02A138 8002A588 4600A28D */  trunc.w.s   $f10, $f20
/* 02A13C 8002A58C 440F5000 */  mfc1        $t7, $f10
/* 02A140 8002A590 10000005 */  b           .L8002A5A8
/* 02A144 8002A594 A3AF004F */   sb         $t7, 0x4f($sp)
/* 02A148 8002A598 4600018D */  trunc.w.s   $f6, $f0
.L8002A59C:
/* 02A14C 8002A59C 44193000 */  mfc1        $t9, $f6
/* 02A150 8002A5A0 00000000 */  nop
/* 02A154 8002A5A4 A3B9004F */  sb          $t9, 0x4f($sp)
.L8002A5A8:
/* 02A158 8002A5A8 8BA8004C */  lwl         $t0, 0x4c($sp)
/* 02A15C 8002A5AC 9BA8004F */  lwr         $t0, 0x4f($sp)
/* 02A160 8002A5B0 8FA40050 */  lw          $a0, 0x50($sp)
/* 02A164 8002A5B4 8FA50054 */  lw          $a1, 0x54($sp)
/* 02A168 8002A5B8 ABA80008 */  swl         $t0, 0x8($sp)
/* 02A16C 8002A5BC BBA8000B */  swr         $t0, 0xb($sp)
/* 02A170 8002A5C0 0C006B09 */  jal         func_8001AC24
/* 02A174 8002A5C4 8FA60008 */   lw         $a2, 0x8($sp)
/* 02A178 8002A5C8 24020001 */  addiu       $v0, $zero, 0x1
.L8002A5CC:
/* 02A17C 8002A5CC 8FBF0034 */  lw          $ra, 0x34($sp)
/* 02A180 8002A5D0 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 02A184 8002A5D4 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 02A188 8002A5D8 D7B80028 */  ldc1        $f24, 0x28($sp)
/* 02A18C 8002A5DC 8FB00030 */  lw          $s0, 0x30($sp)
/* 02A190 8002A5E0 03E00008 */  jr          $ra
/* 02A194 8002A5E4 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_8002A5E8 # 1
/* 02A198 8002A5E8 03E00008 */  jr          $ra
/* 02A19C 8002A5EC 00000000 */   nop

glabel func_8002A5F0 # 2
/* 02A1A0 8002A5F0 03E00008 */  jr          $ra
/* 02A1A4 8002A5F4 00000000 */   nop

glabel func_8002A5F8 # 3
/* 02A1A8 8002A5F8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02A1AC 8002A5FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 02A1B0 8002A600 948E0036 */  lhu         $t6, 0x36($a0)
/* 02A1B4 8002A604 00802825 */  move        $a1, $a0
/* 02A1B8 8002A608 3C01800B */  lui         $at, %hi(D_800AA9BC)
/* 02A1BC 8002A60C 31CF00F0 */  andi        $t7, $t6, 0xf0
/* 02A1C0 8002A610 15E00009 */  bnez        $t7, .L8002A638
/* 02A1C4 8002A614 00000000 */   nop
/* 02A1C8 8002A618 C4840024 */  lwc1        $f4, 0x24($a0)
/* 02A1CC 8002A61C C426A9BC */  lwc1        $f6, %lo(D_800AA9BC)($at)
/* 02A1D0 8002A620 3C04800F */  lui         $a0, %hi(D_800F6250)
/* 02A1D4 8002A624 3C013E00 */  lui         $at, 0x3e00
/* 02A1D8 8002A628 4606203C */  c.lt.s      $f4, $f6
/* 02A1DC 8002A62C 24846250 */  addiu       $a0, $a0, %lo(D_800F6250)
/* 02A1E0 8002A630 45020004 */  bc1fl       .L8002A644
/* 02A1E4 8002A634 44810000 */   mtc1       $at, $f0
.L8002A638:
/* 02A1E8 8002A638 1000002E */  b           .L8002A6F4
/* 02A1EC 8002A63C 00001025 */   move       $v0, $zero
/* 02A1F0 8002A640 44810000 */  mtc1        $at, $f0
.L8002A644:
/* 02A1F4 8002A644 3C01800F */  lui         $at, %hi(D_800F6274)
/* 02A1F8 8002A648 C42A6274 */  lwc1        $f10, %lo(D_800F6274)($at)
/* 02A1FC 8002A64C C4A8004C */  lwc1        $f8, 0x4c($a1)
/* 02A200 8002A650 3C01800F */  lui         $at, %hi(D_800F6270)
/* 02A204 8002A654 C4A60044 */  lwc1        $f6, 0x44($a1)
/* 02A208 8002A658 460A4400 */  add.s       $f16, $f8, $f10
/* 02A20C 8002A65C C4286270 */  lwc1        $f8, %lo(D_800F6270)($at)
/* 02A210 8002A660 3C010001 */  lui         $at, 0x1
/* 02A214 8002A664 3421E240 */  ori         $at, $at, 0xe240
/* 02A218 8002A668 46083280 */  add.s       $f10, $f6, $f8
/* 02A21C 8002A66C 46008482 */  mul.s       $f18, $f16, $f0
/* 02A220 8002A670 00000000 */  nop
/* 02A224 8002A674 46005402 */  mul.s       $f16, $f10, $f0
/* 02A228 8002A678 4600910D */  trunc.w.s   $f4, $f18
/* 02A22C 8002A67C 4600848D */  trunc.w.s   $f18, $f16
/* 02A230 8002A680 44192000 */  mfc1        $t9, $f4
/* 02A234 8002A684 440A9000 */  mfc1        $t2, $f18
/* 02A238 8002A688 001940C0 */  sll         $t0, $t9, 3
/* 02A23C 8002A68C 01194021 */  addu        $t0, $t0, $t9
/* 02A240 8002A690 000A5880 */  sll         $t3, $t2, 2
/* 02A244 8002A694 016A5823 */  subu        $t3, $t3, $t2
/* 02A248 8002A698 000B5880 */  sll         $t3, $t3, 2
/* 02A24C 8002A69C 016A5823 */  subu        $t3, $t3, $t2
/* 02A250 8002A6A0 000B5880 */  sll         $t3, $t3, 2
/* 02A254 8002A6A4 00084080 */  sll         $t0, $t0, 2
/* 02A258 8002A6A8 01194023 */  subu        $t0, $t0, $t9
/* 02A25C 8002A6AC 016A5823 */  subu        $t3, $t3, $t2
/* 02A260 8002A6B0 000B5880 */  sll         $t3, $t3, 2
/* 02A264 8002A6B4 00084080 */  sll         $t0, $t0, 2
/* 02A268 8002A6B8 01194023 */  subu        $t0, $t0, $t9
/* 02A26C 8002A6BC 016A5821 */  addu        $t3, $t3, $t2
/* 02A270 8002A6C0 010B1021 */  addu        $v0, $t0, $t3
/* 02A274 8002A6C4 00411021 */  addu        $v0, $v0, $at
/* 02A278 8002A6C8 14400003 */  bnez        $v0, .L8002A6D8
/* 02A27C 8002A6CC 00403025 */   move       $a2, $v0
/* 02A280 8002A6D0 10000001 */  b           .L8002A6D8
/* 02A284 8002A6D4 24060001 */   addiu      $a2, $zero, 0x1
.L8002A6D8:
/* 02A288 8002A6D8 0C00F8F5 */  jal         func_8003E3D4
/* 02A28C 8002A6DC AFA6001C */   sw         $a2, 0x1c($sp)
/* 02A290 8002A6E0 10400003 */  beqz        $v0, .L8002A6F0
/* 02A294 8002A6E4 8FA6001C */   lw         $a2, 0x1c($sp)
/* 02A298 8002A6E8 10000002 */  b           .L8002A6F4
/* 02A29C 8002A6EC 00C01025 */   move       $v0, $a2
.L8002A6F0:
/* 02A2A0 8002A6F0 00001025 */  move        $v0, $zero
.L8002A6F4:
/* 02A2A4 8002A6F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02A2A8 8002A6F8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02A2AC 8002A6FC 03E00008 */  jr          $ra
/* 02A2B0 8002A700 00000000 */   nop

glabel func_8002A704 # 4
/* 02A2B4 8002A704 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02A2B8 8002A708 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02A2BC 8002A70C AFA40018 */  sw          $a0, 0x18($sp)
/* 02A2C0 8002A710 8CA60000 */  lw          $a2, 0x0($a1)
/* 02A2C4 8002A714 3C04800F */  lui         $a0, %hi(D_800F6250)
/* 02A2C8 8002A718 00A03825 */  move        $a3, $a1
/* 02A2CC 8002A71C 10C00006 */  beqz        $a2, .L8002A738
/* 02A2D0 8002A720 24846250 */   addiu      $a0, $a0, %lo(D_800F6250)
/* 02A2D4 8002A724 8FA50018 */  lw          $a1, 0x18($sp)
/* 02A2D8 8002A728 0C00FA2F */  jal         func_8003E8BC
/* 02A2DC 8002A72C AFA7001C */   sw         $a3, 0x1c($sp)
/* 02A2E0 8002A730 8FA7001C */  lw          $a3, 0x1c($sp)
/* 02A2E4 8002A734 ACE00000 */  sw          $zero, 0x0($a3)
.L8002A738:
/* 02A2E8 8002A738 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02A2EC 8002A73C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02A2F0 8002A740 03E00008 */  jr          $ra
/* 02A2F4 8002A744 00000000 */   nop

glabel func_8002A748 # 5
/* 02A2F8 8002A748 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 02A2FC 8002A74C AFBF0034 */  sw          $ra, 0x34($sp)
/* 02A300 8002A750 AFB60030 */  sw          $s6, 0x30($sp)
/* 02A304 8002A754 AFB5002C */  sw          $s5, 0x2c($sp)
/* 02A308 8002A758 AFB40028 */  sw          $s4, 0x28($sp)
/* 02A30C 8002A75C AFB30024 */  sw          $s3, 0x24($sp)
/* 02A310 8002A760 AFB20020 */  sw          $s2, 0x20($sp)
/* 02A314 8002A764 AFB1001C */  sw          $s1, 0x1c($sp)
/* 02A318 8002A768 AFB00018 */  sw          $s0, 0x18($sp)
/* 02A31C 8002A76C 3C01800B */  lui         $at, %hi(D_800AA9C0)
/* 02A320 8002A770 C426A9C0 */  lwc1        $f6, %lo(D_800AA9C0)($at)
/* 02A324 8002A774 C4840024 */  lwc1        $f4, 0x24($a0)
/* 02A328 8002A778 3C15800F */  lui         $s5, %hi(D_800F6250)
/* 02A32C 8002A77C 00808825 */  move        $s1, $a0
/* 02A330 8002A780 4606203C */  c.lt.s      $f4, $f6
/* 02A334 8002A784 26B56250 */  addiu       $s5, $s5, %lo(D_800F6250)
/* 02A338 8002A788 3C013E00 */  lui         $at, 0x3e00
/* 02A33C 8002A78C 0000A025 */  move        $s4, $zero
/* 02A340 8002A790 45000003 */  bc1f        .L8002A7A0
/* 02A344 8002A794 02A02025 */   move       $a0, $s5
/* 02A348 8002A798 10000057 */  b           .L8002A8F8
/* 02A34C 8002A79C 00001025 */   move       $v0, $zero
.L8002A7A0:
/* 02A350 8002A7A0 44810000 */  mtc1        $at, $f0
/* 02A354 8002A7A4 3C01800F */  lui         $at, %hi(D_800F6274)
/* 02A358 8002A7A8 C42A6274 */  lwc1        $f10, %lo(D_800F6274)($at)
/* 02A35C 8002A7AC C628004C */  lwc1        $f8, 0x4c($s1)
/* 02A360 8002A7B0 3C01800F */  lui         $at, %hi(D_800F6270)
/* 02A364 8002A7B4 C6260044 */  lwc1        $f6, 0x44($s1)
/* 02A368 8002A7B8 460A4400 */  add.s       $f16, $f8, $f10
/* 02A36C 8002A7BC C4286270 */  lwc1        $f8, %lo(D_800F6270)($at)
/* 02A370 8002A7C0 3C010001 */  lui         $at, 0x1
/* 02A374 8002A7C4 3421E240 */  ori         $at, $at, 0xe240
/* 02A378 8002A7C8 46083280 */  add.s       $f10, $f6, $f8
/* 02A37C 8002A7CC 46008482 */  mul.s       $f18, $f16, $f0
/* 02A380 8002A7D0 00000000 */  nop
/* 02A384 8002A7D4 46005402 */  mul.s       $f16, $f10, $f0
/* 02A388 8002A7D8 4600910D */  trunc.w.s   $f4, $f18
/* 02A38C 8002A7DC 4600848D */  trunc.w.s   $f18, $f16
/* 02A390 8002A7E0 440F2000 */  mfc1        $t7, $f4
/* 02A394 8002A7E4 44089000 */  mfc1        $t0, $f18
/* 02A398 8002A7E8 000FC0C0 */  sll         $t8, $t7, 3
/* 02A39C 8002A7EC 030FC021 */  addu        $t8, $t8, $t7
/* 02A3A0 8002A7F0 00084880 */  sll         $t1, $t0, 2
/* 02A3A4 8002A7F4 01284823 */  subu        $t1, $t1, $t0
/* 02A3A8 8002A7F8 00094880 */  sll         $t1, $t1, 2
/* 02A3AC 8002A7FC 01284823 */  subu        $t1, $t1, $t0
/* 02A3B0 8002A800 00094880 */  sll         $t1, $t1, 2
/* 02A3B4 8002A804 0018C080 */  sll         $t8, $t8, 2
/* 02A3B8 8002A808 030FC023 */  subu        $t8, $t8, $t7
/* 02A3BC 8002A80C 01284823 */  subu        $t1, $t1, $t0
/* 02A3C0 8002A810 00094880 */  sll         $t1, $t1, 2
/* 02A3C4 8002A814 0018C080 */  sll         $t8, $t8, 2
/* 02A3C8 8002A818 030FC023 */  subu        $t8, $t8, $t7
/* 02A3CC 8002A81C 01284821 */  addu        $t1, $t1, $t0
/* 02A3D0 8002A820 03091021 */  addu        $v0, $t8, $t1
/* 02A3D4 8002A824 00411021 */  addu        $v0, $v0, $at
/* 02A3D8 8002A828 14400003 */  bnez        $v0, .L8002A838
/* 02A3DC 8002A82C 00409825 */   move       $s3, $v0
/* 02A3E0 8002A830 10000001 */  b           .L8002A838
/* 02A3E4 8002A834 24130001 */   addiu      $s3, $zero, 0x1
.L8002A838:
/* 02A3E8 8002A838 0C00FA7E */  jal         func_8003E9F8
/* 02A3EC 8002A83C 02602825 */   move       $a1, $s3
/* 02A3F0 8002A840 1040002C */  beqz        $v0, .L8002A8F4
/* 02A3F4 8002A844 00408025 */   move       $s0, $v0
/* 02A3F8 8002A848 24160086 */  addiu       $s6, $zero, 0x86
/* 02A3FC 8002A84C 27B20040 */  addiu       $s2, $sp, 0x40
.L8002A850:
/* 02A400 8002A850 50510024 */  beql        $v0, $s1, .L8002A8E4
/* 02A404 8002A854 02A02025 */   move       $a0, $s5
/* 02A408 8002A858 944A0036 */  lhu         $t2, 0x36($v0)
/* 02A40C 8002A85C 314B00C0 */  andi        $t3, $t2, 0xc0
/* 02A410 8002A860 55600020 */  bnel        $t3, $zero, .L8002A8E4
/* 02A414 8002A864 02A02025 */   move       $a0, $s5
/* 02A418 8002A868 C6040044 */  lwc1        $f4, 0x44($s0)
/* 02A41C 8002A86C C6260044 */  lwc1        $f6, 0x44($s1)
/* 02A420 8002A870 02402025 */  move        $a0, $s2
/* 02A424 8002A874 46062201 */  sub.s       $f8, $f4, $f6
/* 02A428 8002A878 E7A80040 */  swc1        $f8, 0x40($sp)
/* 02A42C 8002A87C C6300048 */  lwc1        $f16, 0x48($s1)
/* 02A430 8002A880 C60A0048 */  lwc1        $f10, 0x48($s0)
/* 02A434 8002A884 46105481 */  sub.s       $f18, $f10, $f16
/* 02A438 8002A888 E7B20044 */  swc1        $f18, 0x44($sp)
/* 02A43C 8002A88C C626004C */  lwc1        $f6, 0x4c($s1)
/* 02A440 8002A890 C604004C */  lwc1        $f4, 0x4c($s0)
/* 02A444 8002A894 46062201 */  sub.s       $f8, $f4, $f6
/* 02A448 8002A898 0C00E3AC */  jal         func_80038EB0
/* 02A44C 8002A89C E7A80048 */   swc1       $f8, 0x48($sp)
/* 02A450 8002A8A0 C62A0024 */  lwc1        $f10, 0x24($s1)
/* 02A454 8002A8A4 C6100024 */  lwc1        $f16, 0x24($s0)
/* 02A458 8002A8A8 46105480 */  add.s       $f18, $f10, $f16
/* 02A45C 8002A8AC 4600903C */  c.lt.s      $f18, $f0
/* 02A460 8002A8B0 00000000 */  nop
/* 02A464 8002A8B4 4503000B */  bc1tl       .L8002A8E4
/* 02A468 8002A8B8 02A02025 */   move       $a0, $s5
/* 02A46C 8002A8BC 960C0034 */  lhu         $t4, 0x34($s0)
/* 02A470 8002A8C0 0200A025 */  move        $s4, $s0
/* 02A474 8002A8C4 02202025 */  move        $a0, $s1
/* 02A478 8002A8C8 16CC0005 */  bne         $s6, $t4, .L8002A8E0
/* 02A47C 8002A8CC 02002825 */   move       $a1, $s0
/* 02A480 8002A8D0 44070000 */  mfc1        $a3, $f0
/* 02A484 8002A8D4 0C00A8C0 */  jal         func_8002A300
/* 02A488 8002A8D8 02403025 */   move       $a2, $s2
/* 02A48C 8002A8DC 10400005 */  beqz        $v0, .L8002A8F4
.L8002A8E0:
/* 02A490 8002A8E0 02A02025 */   move       $a0, $s5
.L8002A8E4:
/* 02A494 8002A8E4 0C00FA8D */  jal         func_8003EA34
/* 02A498 8002A8E8 02602825 */   move       $a1, $s3
/* 02A49C 8002A8EC 1440FFD8 */  bnez        $v0, .L8002A850
/* 02A4A0 8002A8F0 00408025 */   move       $s0, $v0
.L8002A8F4:
/* 02A4A4 8002A8F4 02801025 */  move        $v0, $s4
.L8002A8F8:
/* 02A4A8 8002A8F8 8FBF0034 */  lw          $ra, 0x34($sp)
/* 02A4AC 8002A8FC 8FB00018 */  lw          $s0, 0x18($sp)
/* 02A4B0 8002A900 8FB1001C */  lw          $s1, 0x1c($sp)
/* 02A4B4 8002A904 8FB20020 */  lw          $s2, 0x20($sp)
/* 02A4B8 8002A908 8FB30024 */  lw          $s3, 0x24($sp)
/* 02A4BC 8002A90C 8FB40028 */  lw          $s4, 0x28($sp)
/* 02A4C0 8002A910 8FB5002C */  lw          $s5, 0x2c($sp)
/* 02A4C4 8002A914 8FB60030 */  lw          $s6, 0x30($sp)
/* 02A4C8 8002A918 03E00008 */  jr          $ra
/* 02A4CC 8002A91C 27BD0058 */   addiu      $sp, $sp, 0x58

glabel func_8002A920 # 6
/* 02A4D0 8002A920 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02A4D4 8002A924 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02A4D8 8002A928 0C00E512 */  jal         func_80039448
/* 02A4DC 8002A92C 00000000 */   nop
/* 02A4E0 8002A930 44822000 */  mtc1        $v0, $f4
/* 02A4E4 8002A934 44805000 */  mtc1        $zero, $f10
/* 02A4E8 8002A938 04410006 */  bgez        $v0, .L8002A954
/* 02A4EC 8002A93C 468021A1 */   cvt.d.w    $f6, $f4
/* 02A4F0 8002A940 3C0141F0 */  lui         $at, 0x41f0
/* 02A4F4 8002A944 44814800 */  mtc1        $at, $f9
/* 02A4F8 8002A948 44804000 */  mtc1        $zero, $f8
/* 02A4FC 8002A94C 00000000 */  nop
/* 02A500 8002A950 46283180 */  add.d       $f6, $f6, $f8
.L8002A954:
/* 02A504 8002A954 3C013DF0 */  lui         $at, 0x3df0
/* 02A508 8002A958 44815800 */  mtc1        $at, $f11
/* 02A50C 8002A95C 3C013FE0 */  lui         $at, 0x3fe0
/* 02A510 8002A960 44819800 */  mtc1        $at, $f19
/* 02A514 8002A964 462A3402 */  mul.d       $f16, $f6, $f10
/* 02A518 8002A968 44809000 */  mtc1        $zero, $f18
/* 02A51C 8002A96C 3C014020 */  lui         $at, 0x4020
/* 02A520 8002A970 44814800 */  mtc1        $at, $f9
/* 02A524 8002A974 44804000 */  mtc1        $zero, $f8
/* 02A528 8002A978 3C01800F */  lui         $at, %hi(D_800F6270)
/* 02A52C 8002A97C 46309101 */  sub.d       $f4, $f18, $f16
/* 02A530 8002A980 46282182 */  mul.d       $f6, $f4, $f8
/* 02A534 8002A984 462032A0 */  cvt.s.d     $f10, $f6
/* 02A538 8002A988 0C00E512 */  jal         func_80039448
/* 02A53C 8002A98C E42A6270 */   swc1       $f10, %lo(D_800F6270)($at)
/* 02A540 8002A990 44829000 */  mtc1        $v0, $f18
/* 02A544 8002A994 44804000 */  mtc1        $zero, $f8
/* 02A548 8002A998 04410006 */  bgez        $v0, .L8002A9B4
/* 02A54C 8002A99C 46809421 */   cvt.d.w    $f16, $f18
/* 02A550 8002A9A0 3C0141F0 */  lui         $at, 0x41f0
/* 02A554 8002A9A4 44812800 */  mtc1        $at, $f5
/* 02A558 8002A9A8 44802000 */  mtc1        $zero, $f4
/* 02A55C 8002A9AC 00000000 */  nop
/* 02A560 8002A9B0 46248400 */  add.d       $f16, $f16, $f4
.L8002A9B4:
/* 02A564 8002A9B4 3C013DF0 */  lui         $at, 0x3df0
/* 02A568 8002A9B8 44814800 */  mtc1        $at, $f9
/* 02A56C 8002A9BC 3C013FE0 */  lui         $at, 0x3fe0
/* 02A570 8002A9C0 44815800 */  mtc1        $at, $f11
/* 02A574 8002A9C4 46288182 */  mul.d       $f6, $f16, $f8
/* 02A578 8002A9C8 44805000 */  mtc1        $zero, $f10
/* 02A57C 8002A9CC 3C014020 */  lui         $at, 0x4020
/* 02A580 8002A9D0 44812800 */  mtc1        $at, $f5
/* 02A584 8002A9D4 44802000 */  mtc1        $zero, $f4
/* 02A588 8002A9D8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02A58C 8002A9DC 3C01800F */  lui         $at, %hi(D_800F6274)
/* 02A590 8002A9E0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02A594 8002A9E4 46265481 */  sub.d       $f18, $f10, $f6
/* 02A598 8002A9E8 46249402 */  mul.d       $f16, $f18, $f4
/* 02A59C 8002A9EC 46208220 */  cvt.s.d     $f8, $f16
/* 02A5A0 8002A9F0 03E00008 */  jr          $ra
/* 02A5A4 8002A9F4 E4286274 */   swc1       $f8, %lo(D_800F6274)($at)

glabel func_8002A9F8 # 7
/* 02A5A8 8002A9F8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02A5AC 8002A9FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 02A5B0 8002AA00 3C04800F */  lui         $a0, %hi(D_800F6250)
/* 02A5B4 8002AA04 24846250 */  addiu       $a0, $a0, %lo(D_800F6250)
/* 02A5B8 8002AA08 0C00F7FC */  jal         func_8003DFF0
/* 02A5BC 8002AA0C 240501F3 */   addiu      $a1, $zero, 0x1f3
/* 02A5C0 8002AA10 44800000 */  mtc1        $zero, $f0
/* 02A5C4 8002AA14 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02A5C8 8002AA18 3C01800F */  lui         $at, %hi(D_800F6270)
/* 02A5CC 8002AA1C E4206270 */  swc1        $f0, %lo(D_800F6270)($at)
/* 02A5D0 8002AA20 3C01800F */  lui         $at, %hi(D_800F6274)
/* 02A5D4 8002AA24 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02A5D8 8002AA28 03E00008 */  jr          $ra
/* 02A5DC 8002AA2C E4206274 */   swc1       $f0, %lo(D_800F6274)($at)

glabel func_8002AA30 # 8
/* 02A5E0 8002AA30 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02A5E4 8002AA34 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02A5E8 8002AA38 3C04800F */  lui         $a0, %hi(D_800F6250)
/* 02A5EC 8002AA3C 0C00F85B */  jal         func_8003E16C
/* 02A5F0 8002AA40 24846250 */   addiu      $a0, $a0, %lo(D_800F6250)
/* 02A5F4 8002AA44 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02A5F8 8002AA48 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02A5FC 8002AA4C 03E00008 */  jr          $ra
/* 02A600 8002AA50 00000000 */   nop
/* 02A604 8002AA54 00000000 */  nop
/* 02A608 8002AA58 00000000 */  nop
/* 02A60C 8002AA5C 00000000 */  nop
