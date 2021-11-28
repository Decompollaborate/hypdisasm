.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004A440 # 0
/* 049FF0 8004A440 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 049FF4 8004A444 24010003 */  addiu       $at, $zero, 0x3
/* 049FF8 8004A448 10A10009 */  beq         $a1, $at, .L8004A470
/* 049FFC 8004A44C AFBF0014 */   sw         $ra, 0x14($sp)
/* 04A000 8004A450 24010004 */  addiu       $at, $zero, 0x4
/* 04A004 8004A454 10A1000E */  beq         $a1, $at, .L8004A490
/* 04A008 8004A458 24020001 */   addiu      $v0, $zero, 0x1
/* 04A00C 8004A45C 24010009 */  addiu       $at, $zero, 0x9
/* 04A010 8004A460 10A10016 */  beq         $a1, $at, .L8004A4BC
/* 04A014 8004A464 24020001 */   addiu      $v0, $zero, 0x1
/* 04A018 8004A468 10000016 */  b           .L8004A4C4
/* 04A01C 8004A46C 00000000 */   nop
.L8004A470:
/* 04A020 8004A470 8C820080 */  lw          $v0, 0x80($a0)
/* 04A024 8004A474 50400004 */  beql        $v0, $zero, .L8004A488
/* 04A028 8004A478 AC86007C */   sw         $a2, 0x7c($a0)
/* 04A02C 8004A47C 10000002 */  b           .L8004A488
/* 04A030 8004A480 AC460000 */   sw         $a2, 0x0($v0)
/* 04A034 8004A484 AC86007C */  sw          $a2, 0x7c($a0)
.L8004A488:
/* 04A038 8004A488 10000010 */  b           .L8004A4CC
/* 04A03C 8004A48C AC860080 */   sw         $a2, 0x80($a0)
.L8004A490:
/* 04A040 8004A490 44802000 */  mtc1        $zero, $f4
/* 04A044 8004A494 AC820078 */  sw          $v0, 0x78($a0)
/* 04A048 8004A498 AC800084 */  sw          $zero, 0x84($a0)
/* 04A04C 8004A49C A482005A */  sh          $v0, 0x5a($a0)
/* 04A050 8004A4A0 AC820050 */  sw          $v0, 0x50($a0)
/* 04A054 8004A4A4 AC800048 */  sw          $zero, 0x48($a0)
/* 04A058 8004A4A8 24050004 */  addiu       $a1, $zero, 0x4
/* 04A05C 8004A4AC 0C013000 */  jal         func_8004C000
/* 04A060 8004A4B0 E484004C */   swc1       $f4, 0x4c($a0)
/* 04A064 8004A4B4 10000006 */  b           .L8004A4D0
/* 04A068 8004A4B8 8FBF0014 */   lw         $ra, 0x14($sp)
.L8004A4BC:
/* 04A06C 8004A4BC 10000003 */  b           .L8004A4CC
/* 04A070 8004A4C0 AC820084 */   sw         $v0, 0x84($a0)
.L8004A4C4:
/* 04A074 8004A4C4 0C013000 */  jal         func_8004C000
/* 04A078 8004A4C8 00000000 */   nop
.L8004A4CC:
/* 04A07C 8004A4CC 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004A4D0:
/* 04A080 8004A4D0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04A084 8004A4D4 00001025 */  move        $v0, $zero
/* 04A088 8004A4D8 03E00008 */  jr          $ra
/* 04A08C 8004A4DC 00000000 */   nop

glabel func_8004A4E0 # 1
/* 04A090 8004A4E0 1480000B */  bnez        $a0, .L8004A510
/* 04A094 8004A4E4 3C013FF0 */   lui        $at, 0x3ff0
/* 04A098 8004A4E8 462C703E */  c.le.d      $f14, $f12
/* 04A09C 8004A4EC 340EFFFF */  ori         $t6, $zero, 0xffff
/* 04A0A0 8004A4F0 00001025 */  move        $v0, $zero
/* 04A0A4 8004A4F4 45000004 */  bc1f        .L8004A508
/* 04A0A8 8004A4F8 00000000 */   nop
/* 04A0AC 8004A4FC A4AE0000 */  sh          $t6, 0x0($a1)
/* 04A0B0 8004A500 03E00008 */  jr          $ra
/* 04A0B4 8004A504 24027FFF */   addiu      $v0, $zero, 0x7fff
.L8004A508:
/* 04A0B8 8004A508 03E00008 */  jr          $ra
/* 04A0BC 8004A50C A4A00000 */   sh         $zero, 0x0($a1)
.L8004A510:
/* 04A0C0 8004A510 44819800 */  mtc1        $at, $f19
/* 04A0C4 8004A514 44809000 */  mtc1        $zero, $f18
/* 04A0C8 8004A518 44842000 */  mtc1        $a0, $f4
/* 04A0CC 8004A51C 44804800 */  mtc1        $zero, $f9
/* 04A0D0 8004A520 4632603C */  c.lt.d      $f12, $f18
/* 04A0D4 8004A524 44804000 */  mtc1        $zero, $f8
/* 04A0D8 8004A528 468021A1 */  cvt.d.w     $f6, $f4
/* 04A0DC 8004A52C 45000002 */  bc1f        .L8004A538
/* 04A0E0 8004A530 46269003 */   div.d      $f0, $f18, $f6
/* 04A0E4 8004A534 46209306 */  mov.d       $f12, $f18
.L8004A538:
/* 04A0E8 8004A538 4628703E */  c.le.d      $f14, $f8
/* 04A0EC 8004A53C 00000000 */  nop
/* 04A0F0 8004A540 45020003 */  bc1fl       .L8004A550
/* 04A0F4 8004A544 462E6281 */   sub.d      $f10, $f12, $f14
/* 04A0F8 8004A548 46209386 */  mov.d       $f14, $f18
/* 04A0FC 8004A54C 462E6281 */  sub.d       $f10, $f12, $f14
.L8004A550:
/* 04A100 8004A550 3C014020 */  lui         $at, 0x4020
/* 04A104 8004A554 44813800 */  mtc1        $at, $f7
/* 04A108 8004A558 44803000 */  mtc1        $zero, $f6
/* 04A10C 8004A55C 46205102 */  mul.d       $f4, $f10, $f0
/* 04A110 8004A560 3C01800B */  lui         $at, %hi(D_800AC880)
/* 04A114 8004A564 240E0001 */  addiu       $t6, $zero, 0x1
/* 04A118 8004A568 46262082 */  mul.d       $f2, $f4, $f6
/* 04A11C 8004A56C 4620120D */  trunc.w.d   $f8, $f2
/* 04A120 8004A570 44034000 */  mfc1        $v1, $f8
/* 04A124 8004A574 00000000 */  nop
/* 04A128 8004A578 0003C400 */  sll         $t8, $v1, 16
/* 04A12C 8004A57C 00181C03 */  sra         $v1, $t8, 16
/* 04A130 8004A580 44835000 */  mtc1        $v1, $f10
/* 04A134 8004A584 00000000 */  nop
/* 04A138 8004A588 46805121 */  cvt.d.w     $f4, $f10
/* 04A13C 8004A58C D42AC880 */  ldc1        $f10, %lo(D_800AC880)($at)
/* 04A140 8004A590 3C0141E0 */  lui         $at, 0x41e0
/* 04A144 8004A594 46241181 */  sub.d       $f6, $f2, $f4
/* 04A148 8004A598 46323400 */  add.d       $f16, $f6, $f18
/* 04A14C 8004A59C 4620820D */  trunc.w.d   $f8, $f16
/* 04A150 8004A5A0 44044000 */  mfc1        $a0, $f8
/* 04A154 8004A5A4 00000000 */  nop
/* 04A158 8004A5A8 00047C00 */  sll         $t7, $a0, 16
/* 04A15C 8004A5AC 000F2403 */  sra         $a0, $t7, 16
/* 04A160 8004A5B0 44842000 */  mtc1        $a0, $f4
/* 04A164 8004A5B4 00000000 */  nop
/* 04A168 8004A5B8 468021A1 */  cvt.d.w     $f6, $f4
/* 04A16C 8004A5BC 46268201 */  sub.d       $f8, $f16, $f6
/* 04A170 8004A5C0 46285102 */  mul.d       $f4, $f10, $f8
/* 04A174 8004A5C4 4459F800 */  cfc1        $t9, $31
/* 04A178 8004A5C8 44CEF800 */  ctc1        $t6, $31
/* 04A17C 8004A5CC 00000000 */  nop
/* 04A180 8004A5D0 462021A4 */  cvt.w.d     $f6, $f4
/* 04A184 8004A5D4 444EF800 */  cfc1        $t6, $31
/* 04A188 8004A5D8 00000000 */  nop
/* 04A18C 8004A5DC 31CE0078 */  andi        $t6, $t6, 0x78
/* 04A190 8004A5E0 51C00014 */  beql        $t6, $zero, .L8004A634
/* 04A194 8004A5E4 440E3000 */   mfc1       $t6, $f6
/* 04A198 8004A5E8 44813800 */  mtc1        $at, $f7
/* 04A19C 8004A5EC 44803000 */  mtc1        $zero, $f6
/* 04A1A0 8004A5F0 240E0001 */  addiu       $t6, $zero, 0x1
/* 04A1A4 8004A5F4 46262181 */  sub.d       $f6, $f4, $f6
/* 04A1A8 8004A5F8 44CEF800 */  ctc1        $t6, $31
/* 04A1AC 8004A5FC 00000000 */  nop
/* 04A1B0 8004A600 462031A4 */  cvt.w.d     $f6, $f6
/* 04A1B4 8004A604 444EF800 */  cfc1        $t6, $31
/* 04A1B8 8004A608 00000000 */  nop
/* 04A1BC 8004A60C 31CE0078 */  andi        $t6, $t6, 0x78
/* 04A1C0 8004A610 15C00005 */  bnez        $t6, .L8004A628
/* 04A1C4 8004A614 00000000 */   nop
/* 04A1C8 8004A618 440E3000 */  mfc1        $t6, $f6
/* 04A1CC 8004A61C 3C018000 */  lui         $at, 0x8000
/* 04A1D0 8004A620 10000007 */  b           .L8004A640
/* 04A1D4 8004A624 01C17025 */   or         $t6, $t6, $at
.L8004A628:
/* 04A1D8 8004A628 10000005 */  b           .L8004A640
/* 04A1DC 8004A62C 240EFFFF */   addiu      $t6, $zero, -0x1
/* 04A1E0 8004A630 440E3000 */  mfc1        $t6, $f6
.L8004A634:
/* 04A1E4 8004A634 00000000 */  nop
/* 04A1E8 8004A638 05C0FFFB */  bltz        $t6, .L8004A628
/* 04A1EC 8004A63C 00000000 */   nop
.L8004A640:
/* 04A1F0 8004A640 44D9F800 */  ctc1        $t9, $31
/* 04A1F4 8004A644 2479FFFF */  addiu       $t9, $v1, -0x1
/* 04A1F8 8004A648 A4AE0000 */  sh          $t6, 0x0($a1)
/* 04A1FC 8004A64C 03241021 */  addu        $v0, $t9, $a0
/* 04A200 8004A650 00027400 */  sll         $t6, $v0, 16
/* 04A204 8004A654 000E1403 */  sra         $v0, $t6, 16
/* 04A208 8004A658 03E00008 */  jr          $ra
/* 04A20C 8004A65C 00000000 */   nop

glabel func_8004A660 # 2
/* 04A210 8004A660 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 04A214 8004A664 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04A218 8004A668 8E0E0084 */  lw          $t6, 0x84($s0)
/* 04A21C 8004A66C 24010001 */  addiu       $at, $zero, 0x1
/* 04A220 8004A670 15C10003 */  bne         $t6, $at, .L8004A680
/* 04A224 8004A674 00000000 */   nop
/* 04A228 8004A678 14800003 */  bnez        $a0, .L8004A688
/* 04A22C 8004A67C 02602825 */   move       $a1, $s3
.L8004A680:
/* 04A230 8004A680 10000070 */  b           .L8004A844
/* 04A234 8004A684 00C01025 */   move       $v0, $a2
.L8004A688:
/* 04A238 8004A688 0C0131ED */  jal         func_8004C7B4
/* 04A23C 8004A68C 02002025 */   move       $a0, $s0
/* 04A240 8004A690 8E0F0078 */  lw          $t7, 0x78($s0)
/* 04A244 8004A694 00408825 */  move        $s1, $v0
/* 04A248 8004A698 02209025 */  move        $s2, $s1
/* 04A24C 8004A69C 11E0005D */  beqz        $t7, .L8004A814
/* 04A250 8004A6A0 3C180300 */   lui        $t8, 0x300
/* 04A254 8004A6A4 86180058 */  lh          $t8, 0x58($s0)
/* 04A258 8004A6A8 3C0E800A */  lui         $t6, %hi(D_800A2E80)
/* 04A25C 8004A6AC AE000078 */  sw          $zero, 0x78($s0)
/* 04A260 8004A6B0 0018C840 */  sll         $t9, $t8, 1
/* 04A264 8004A6B4 01D97021 */  addu        $t6, $t6, $t9
/* 04A268 8004A6B8 85CE2E80 */  lh          $t6, %lo(D_800A2E80)($t6)
/* 04A26C 8004A6BC 860F005A */  lh          $t7, 0x5a($s0)
/* 04A270 8004A6C0 8E040074 */  lw          $a0, 0x74($s0)
/* 04A274 8004A6C4 26050064 */  addiu       $a1, $s0, 0x64
/* 04A278 8004A6C8 01CF0019 */  multu       $t6, $t7
/* 04A27C 8004A6CC 860E005C */  lh          $t6, 0x5c($s0)
/* 04A280 8004A6D0 448E2000 */  mtc1        $t6, $f4
/* 04A284 8004A6D4 00000000 */  nop
/* 04A288 8004A6D8 468023A1 */  cvt.d.w     $f14, $f4
/* 04A28C 8004A6DC 0000C012 */  mflo        $t8
/* 04A290 8004A6E0 0018CBC3 */  sra         $t9, $t8, 15
/* 04A294 8004A6E4 A6190068 */  sh          $t9, 0x68($s0)
/* 04A298 8004A6E8 860F0068 */  lh          $t7, 0x68($s0)
/* 04A29C 8004A6EC 448F3000 */  mtc1        $t7, $f6
/* 04A2A0 8004A6F0 0C012938 */  jal         func_8004A4E0
/* 04A2A4 8004A6F4 46803321 */   cvt.d.w    $f12, $f6
/* 04A2A8 8004A6F8 86180058 */  lh          $t8, 0x58($s0)
/* 04A2AC 8004A6FC 3C0F800A */  lui         $t7, %hi(D_800A2F7E)
/* 04A2B0 8004A700 A6020066 */  sh          $v0, 0x66($s0)
/* 04A2B4 8004A704 0018C840 */  sll         $t9, $t8, 1
/* 04A2B8 8004A708 00197023 */  negu        $t6, $t9
/* 04A2BC 8004A70C 01EE7821 */  addu        $t7, $t7, $t6
/* 04A2C0 8004A710 85EF2F7E */  lh          $t7, %lo(D_800A2F7E)($t7)
/* 04A2C4 8004A714 8618005A */  lh          $t8, 0x5a($s0)
/* 04A2C8 8004A718 8E040074 */  lw          $a0, 0x74($s0)
/* 04A2CC 8004A71C 2605006A */  addiu       $a1, $s0, 0x6a
/* 04A2D0 8004A720 01F80019 */  multu       $t7, $t8
/* 04A2D4 8004A724 860F005E */  lh          $t7, 0x5e($s0)
/* 04A2D8 8004A728 448F4000 */  mtc1        $t7, $f8
/* 04A2DC 8004A72C 00000000 */  nop
/* 04A2E0 8004A730 468043A1 */  cvt.d.w     $f14, $f8
/* 04A2E4 8004A734 0000C812 */  mflo        $t9
/* 04A2E8 8004A738 001973C3 */  sra         $t6, $t9, 15
/* 04A2EC 8004A73C A60E006E */  sh          $t6, 0x6e($s0)
/* 04A2F0 8004A740 8618006E */  lh          $t8, 0x6e($s0)
/* 04A2F4 8004A744 44985000 */  mtc1        $t8, $f10
/* 04A2F8 8004A748 0C012938 */  jal         func_8004A4E0
/* 04A2FC 8004A74C 46805321 */   cvt.d.w    $f12, $f10
/* 04A300 8004A750 86190068 */  lh          $t9, 0x68($s0)
/* 04A304 8004A754 3C010900 */  lui         $at, 0x900
/* 04A308 8004A758 A602006C */  sh          $v0, 0x6c($s0)
/* 04A30C 8004A75C 332EFFFF */  andi        $t6, $t9, 0xffff
/* 04A310 8004A760 01C17825 */  or          $t7, $t6, $at
/* 04A314 8004A764 02201825 */  move        $v1, $s1
/* 04A318 8004A768 AC6F0000 */  sw          $t7, 0x0($v1)
/* 04A31C 8004A76C 86190066 */  lh          $t9, 0x66($s0)
/* 04A320 8004A770 96180064 */  lhu         $t8, 0x64($s0)
/* 04A324 8004A774 26310008 */  addiu       $s1, $s1, 0x8
/* 04A328 8004A778 00197400 */  sll         $t6, $t9, 16
/* 04A32C 8004A77C 01D8C825 */  or          $t9, $t6, $t8
/* 04A330 8004A780 AC790004 */  sw          $t9, 0x4($v1)
/* 04A334 8004A784 860F005C */  lh          $t7, 0x5c($s0)
/* 04A338 8004A788 3C010906 */  lui         $at, 0x906
/* 04A33C 8004A78C 02202025 */  move        $a0, $s1
/* 04A340 8004A790 31EEFFFF */  andi        $t6, $t7, 0xffff
/* 04A344 8004A794 01C1C025 */  or          $t8, $t6, $at
/* 04A348 8004A798 AC980000 */  sw          $t8, 0x0($a0)
/* 04A34C 8004A79C 86180062 */  lh          $t8, 0x62($s0)
/* 04A350 8004A7A0 860F0060 */  lh          $t7, 0x60($s0)
/* 04A354 8004A7A4 3C010904 */  lui         $at, 0x904
/* 04A358 8004A7A8 3319FFFF */  andi        $t9, $t8, 0xffff
/* 04A35C 8004A7AC 000F7400 */  sll         $t6, $t7, 16
/* 04A360 8004A7B0 01D97825 */  or          $t7, $t6, $t9
/* 04A364 8004A7B4 AC8F0004 */  sw          $t7, 0x4($a0)
/* 04A368 8004A7B8 8618006E */  lh          $t8, 0x6e($s0)
/* 04A36C 8004A7BC 26310008 */  addiu       $s1, $s1, 0x8
/* 04A370 8004A7C0 02202825 */  move        $a1, $s1
/* 04A374 8004A7C4 330EFFFF */  andi        $t6, $t8, 0xffff
/* 04A378 8004A7C8 01C1C825 */  or          $t9, $t6, $at
/* 04A37C 8004A7CC ACB90000 */  sw          $t9, 0x0($a1)
/* 04A380 8004A7D0 8618006C */  lh          $t8, 0x6c($s0)
/* 04A384 8004A7D4 960F006A */  lhu         $t7, 0x6a($s0)
/* 04A388 8004A7D8 3C010301 */  lui         $at, 0x301
/* 04A38C 8004A7DC 00187400 */  sll         $t6, $t8, 16
/* 04A390 8004A7E0 01CFC025 */  or          $t8, $t6, $t7
/* 04A394 8004A7E4 ACB80004 */  sw          $t8, 0x4($a1)
/* 04A398 8004A7E8 8619005E */  lh          $t9, 0x5e($s0)
/* 04A39C 8004A7EC 26310008 */  addiu       $s1, $s1, 0x8
/* 04A3A0 8004A7F0 02209025 */  move        $s2, $s1
/* 04A3A4 8004A7F4 332EFFFF */  andi        $t6, $t9, 0xffff
/* 04A3A8 8004A7F8 01C17825 */  or          $t7, $t6, $at
/* 04A3AC 8004A7FC AE4F0000 */  sw          $t7, 0x0($s2)
/* 04A3B0 8004A800 8E040054 */  lw          $a0, 0x54($s0)
/* 04A3B4 8004A804 0C0140F4 */  jal         osVirtualToPhysical
/* 04A3B8 8004A808 26310008 */   addiu      $s1, $s1, 0x8
/* 04A3BC 8004A80C 10000006 */  b           .L8004A828
/* 04A3C0 8004A810 AE420004 */   sw         $v0, 0x4($s2)
.L8004A814:
/* 04A3C4 8004A814 AE580000 */  sw          $t8, 0x0($s2)
/* 04A3C8 8004A818 8E040054 */  lw          $a0, 0x54($s0)
/* 04A3CC 8004A81C 0C0140F4 */  jal         osVirtualToPhysical
/* 04A3D0 8004A820 26310008 */   addiu      $s1, $s1, 0x8
/* 04A3D4 8004A824 AE420004 */  sw          $v0, 0x4($s2)
.L8004A828:
/* 04A3D8 8004A828 86790000 */  lh          $t9, 0x0($s3)
/* 04A3DC 8004A82C 02201025 */  move        $v0, $s1
/* 04A3E0 8004A830 272E0170 */  addiu       $t6, $t9, 0x170
/* 04A3E4 8004A834 A66E0000 */  sh          $t6, 0x0($s3)
/* 04A3E8 8004A838 8E0F0070 */  lw          $t7, 0x70($s0)
/* 04A3EC 8004A83C 25F800B8 */  addiu       $t8, $t7, 0xb8
/* 04A3F0 8004A840 AE180070 */  sw          $t8, 0x70($s0)
.L8004A844:
/* 04A3F4 8004A844 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04A3F8 8004A848 27BD0020 */  addiu       $sp, $sp, 0x20
/* 04A3FC 8004A84C 03E00008 */  jr          $ra
/* 04A400 8004A850 00000000 */   nop

glabel func_8004A854 # 3
/* 04A404 8004A854 AFA50000 */  sw          $a1, 0x0($sp)
/* 04A408 8004A858 00057400 */  sll         $t6, $a1, 16
/* 04A40C 8004A85C AFA6000C */  sw          $a2, 0xc($sp)
/* 04A410 8004A860 30D8FFFF */  andi        $t8, $a2, 0xffff
/* 04A414 8004A864 AFA70008 */  sw          $a3, 0x8($sp)
/* 04A418 8004A868 0007CC00 */  sll         $t9, $a3, 16
/* 04A41C 8004A86C 000478C3 */  sra         $t7, $a0, 3
/* 04A420 8004A870 00193C03 */  sra         $a3, $t9, 16
/* 04A424 8004A874 03003025 */  move        $a2, $t8
/* 04A428 8004A878 000E2C03 */  sra         $a1, $t6, 16
/* 04A42C 8004A87C 15E00003 */  bnez        $t7, .L8004A88C
/* 04A430 8004A880 01E02025 */   move       $a0, $t7
/* 04A434 8004A884 03E00008 */  jr          $ra
/* 04A438 8004A888 00A01025 */   move       $v0, $a1
.L8004A88C:
/* 04A43C 8004A88C 00C40019 */  multu       $a2, $a0
/* 04A440 8004A890 0000C012 */  mflo        $t8
/* 04A444 8004A894 0018CC03 */  sra         $t9, $t8, 16
/* 04A448 8004A898 00000000 */  nop
/* 04A44C 8004A89C 00E40019 */  multu       $a3, $a0
/* 04A450 8004A8A0 00007012 */  mflo        $t6
/* 04A454 8004A8A4 032E7821 */  addu        $t7, $t9, $t6
/* 04A458 8004A8A8 00AF2821 */  addu        $a1, $a1, $t7
/* 04A45C 8004A8AC 0005C400 */  sll         $t8, $a1, 16
/* 04A460 8004A8B0 00181403 */  sra         $v0, $t8, 16
/* 04A464 8004A8B4 03E00008 */  jr          $ra
/* 04A468 8004A8B8 00000000 */   nop

glabel func_8004A8BC # 4
/* 04A46C 8004A8BC 27BDFF68 */  addiu       $sp, $sp, -0x98
/* 04A470 8004A8C0 240E00B8 */  addiu       $t6, $zero, 0xb8
/* 04A474 8004A8C4 AFBF0044 */  sw          $ra, 0x44($sp)
/* 04A478 8004A8C8 AFBE0040 */  sw          $fp, 0x40($sp)
/* 04A47C 8004A8CC AFB7003C */  sw          $s7, 0x3c($sp)
/* 04A480 8004A8D0 AFB60038 */  sw          $s6, 0x38($sp)
/* 04A484 8004A8D4 AFB50034 */  sw          $s5, 0x34($sp)
/* 04A488 8004A8D8 AFB40030 */  sw          $s4, 0x30($sp)
/* 04A48C 8004A8DC AFB3002C */  sw          $s3, 0x2c($sp)
/* 04A490 8004A8E0 AFB20028 */  sw          $s2, 0x28($sp)
/* 04A494 8004A8E4 AFB10024 */  sw          $s1, 0x24($sp)
/* 04A498 8004A8E8 AFB00020 */  sw          $s0, 0x20($sp)
/* 04A49C 8004A8EC AFA40090 */  sw          $a0, 0x90($sp)
/* 04A4A0 8004A8F0 AFA50084 */  sw          $a1, 0x84($sp)
/* 04A4A4 8004A8F4 A7A0007E */  sh          $zero, 0x7e($sp)
/* 04A4A8 8004A8F8 AFAE0070 */  sw          $t6, 0x70($sp)
/* 04A4AC 8004A8FC A7A0008E */  sh          $zero, 0x8e($sp)
/* 04A4B0 8004A900 8C8F007C */  lw          $t7, 0x7c($a0)
/* 04A4B4 8004A904 0080A025 */  move        $s4, $a0
/* 04A4B8 8004A908 00C0B025 */  move        $s6, $a2
/* 04A4BC 8004A90C 11E0013E */  beqz        $t7, .L8004AE08
/* 04A4C0 8004A910 24150001 */   addiu      $s5, $zero, 0x1
/* 04A4C4 8004A914 241E00B8 */  addiu       $fp, $zero, 0xb8
/* 04A4C8 8004A918 8E83007C */  lw          $v1, 0x7c($s4)
.L8004A91C:
/* 04A4CC 8004A91C 8FA20084 */  lw          $v0, 0x84($sp)
/* 04A4D0 8004A920 8C780004 */  lw          $t8, 0x4($v1)
/* 04A4D4 8004A924 03027023 */  subu        $t6, $t8, $v0
/* 04A4D8 8004A928 25CF005C */  addiu       $t7, $t6, 0x5c
/* 04A4DC 8004A92C 01FE001A */  div         $zero, $t7, $fp
/* 04A4E0 8004A930 AFB80084 */  sw          $t8, 0x84($sp)
/* 04A4E4 8004A934 0300C825 */  move        $t9, $t8
/* 04A4E8 8004A938 0000C012 */  mflo        $t8
/* 04A4EC 8004A93C 8FB90070 */  lw          $t9, 0x70($sp)
/* 04A4F0 8004A940 17C00002 */  bnez        $fp, .L8004A94C
/* 04A4F4 8004A944 00000000 */   nop
/* 04A4F8 8004A948 0007000D */  break       7
.L8004A94C:
/* 04A4FC 8004A94C 2401FFFF */  addiu       $at, $zero, -0x1
/* 04A500 8004A950 17C10004 */  bne         $fp, $at, .L8004A964
/* 04A504 8004A954 3C018000 */   lui        $at, 0x8000
/* 04A508 8004A958 15E10002 */  bne         $t7, $at, .L8004A964
/* 04A50C 8004A95C 00000000 */   nop
/* 04A510 8004A960 0006000D */  break       6
.L8004A964:
/* 04A514 8004A964 031E0019 */  multu       $t8, $fp
/* 04A518 8004A968 0000B812 */  mflo        $s7
/* 04A51C 8004A96C 0337082A */  slt         $at, $t9, $s7
/* 04A520 8004A970 54200126 */  bnel        $at, $zero, .L8004AE0C
/* 04A524 8004A974 27AE007E */   addiu      $t6, $sp, 0x7e
/* 04A528 8004A978 946E0008 */  lhu         $t6, 0x8($v1)
/* 04A52C 8004A97C 2DC10011 */  sltiu       $at, $t6, 0x11
/* 04A530 8004A980 10200102 */  beqz        $at, L8004AD8C
/* 04A534 8004A984 000E7080 */   sll        $t6, $t6, 2
/* 04A538 8004A988 3C01800B */  lui         $at, %hi(jtbl_800AC888)
/* 04A53C 8004A98C 002E0821 */  addu        $at, $at, $t6
/* 04A540 8004A990 8C2EC888 */  lw          $t6, %lo(jtbl_800AC888)($at)
/* 04A544 8004A994 01C00008 */  jr          $t6
/* 04A548 8004A998 00000000 */   nop
glabel L8004A99C
/* 04A54C 8004A99C 846F000A */  lh          $t7, 0xa($v1)
/* 04A550 8004A9A0 00608025 */  move        $s0, $v1
/* 04A554 8004A9A4 02802025 */  move        $a0, $s4
/* 04A558 8004A9A8 11E00002 */  beqz        $t7, .L8004A9B4
/* 04A55C 8004A9AC 24050005 */   addiu      $a1, $zero, 0x5
/* 04A560 8004A9B0 AE950048 */  sw          $s5, 0x48($s4)
.L8004A9B4:
/* 04A564 8004A9B4 0C013000 */  jal         func_8004C000
/* 04A568 8004A9B8 8E060018 */   lw         $a2, 0x18($s0)
/* 04A56C 8004A9BC AE950084 */  sw          $s5, 0x84($s4)
/* 04A570 8004A9C0 AE950078 */  sw          $s5, 0x78($s4)
/* 04A574 8004A9C4 AE800070 */  sw          $zero, 0x70($s4)
/* 04A578 8004A9C8 8E180014 */  lw          $t8, 0x14($s0)
/* 04A57C 8004A9CC 2719005C */  addiu       $t9, $t8, 0x5c
/* 04A580 8004A9D0 033E001A */  div         $zero, $t9, $fp
/* 04A584 8004A9D4 00007012 */  mflo        $t6
/* 04A588 8004A9D8 17C00002 */  bnez        $fp, .L8004A9E4
/* 04A58C 8004A9DC 00000000 */   nop
/* 04A590 8004A9E0 0007000D */  break       7
.L8004A9E4:
/* 04A594 8004A9E4 2401FFFF */  addiu       $at, $zero, -0x1
/* 04A598 8004A9E8 17C10004 */  bne         $fp, $at, .L8004A9FC
/* 04A59C 8004A9EC 3C018000 */   lui        $at, 0x8000
/* 04A5A0 8004A9F0 17210002 */  bne         $t9, $at, .L8004A9FC
/* 04A5A4 8004A9F4 00000000 */   nop
/* 04A5A8 8004A9F8 0006000D */  break       6
.L8004A9FC:
/* 04A5AC 8004A9FC 01DE0019 */  multu       $t6, $fp
/* 04A5B0 8004AA00 00007812 */  mflo        $t7
/* 04A5B4 8004AA04 AE8F0074 */  sw          $t7, 0x74($s4)
/* 04A5B8 8004AA08 86030010 */  lh          $v1, 0x10($s0)
/* 04A5BC 8004AA0C 00630019 */  multu       $v1, $v1
/* 04A5C0 8004AA10 00002012 */  mflo        $a0
/* 04A5C4 8004AA14 0004C3C3 */  sra         $t8, $a0, 15
/* 04A5C8 8004AA18 A698005A */  sh          $t8, 0x5a($s4)
/* 04A5CC 8004AA1C 92190012 */  lbu         $t9, 0x12($s0)
/* 04A5D0 8004AA20 03002025 */  move        $a0, $t8
/* 04A5D4 8004AA24 3C18800A */  lui         $t8, %hi(D_800A2E80)
/* 04A5D8 8004AA28 A6990058 */  sh          $t9, 0x58($s4)
/* 04A5DC 8004AA2C 920E0013 */  lbu         $t6, 0x13($s0)
/* 04A5E0 8004AA30 000E7840 */  sll         $t7, $t6, 1
/* 04A5E4 8004AA34 030FC021 */  addu        $t8, $t8, $t7
/* 04A5E8 8004AA38 87182E80 */  lh          $t8, %lo(D_800A2E80)($t8)
/* 04A5EC 8004AA3C A6980060 */  sh          $t8, 0x60($s4)
/* 04A5F0 8004AA40 92190013 */  lbu         $t9, 0x13($s0)
/* 04A5F4 8004AA44 3C18800A */  lui         $t8, %hi(D_800A2F7E)
/* 04A5F8 8004AA48 00197040 */  sll         $t6, $t9, 1
/* 04A5FC 8004AA4C 000E7823 */  negu        $t7, $t6
/* 04A600 8004AA50 030FC021 */  addu        $t8, $t8, $t7
/* 04A604 8004AA54 87182F7E */  lh          $t8, %lo(D_800A2F7E)($t8)
/* 04A608 8004AA58 A6980062 */  sh          $t8, 0x62($s4)
/* 04A60C 8004AA5C 8E190014 */  lw          $t9, 0x14($s0)
/* 04A610 8004AA60 53200005 */  beql        $t9, $zero, .L8004AA78
/* 04A614 8004AA64 86820058 */   lh         $v0, 0x58($s4)
/* 04A618 8004AA68 A695005C */  sh          $s5, 0x5c($s4)
/* 04A61C 8004AA6C 10000013 */  b           .L8004AABC
/* 04A620 8004AA70 A695005E */   sh         $s5, 0x5e($s4)
/* 04A624 8004AA74 86820058 */  lh          $v0, 0x58($s4)
.L8004AA78:
/* 04A628 8004AA78 3C0F800A */  lui         $t7, %hi(D_800A2E80)
/* 04A62C 8004AA7C 8683005A */  lh          $v1, 0x5a($s4)
/* 04A630 8004AA80 00027040 */  sll         $t6, $v0, 1
/* 04A634 8004AA84 01EE7821 */  addu        $t7, $t7, $t6
/* 04A638 8004AA88 85EF2E80 */  lh          $t7, %lo(D_800A2E80)($t7)
/* 04A63C 8004AA8C 000E7023 */  negu        $t6, $t6
/* 04A640 8004AA90 01E30019 */  multu       $t7, $v1
/* 04A644 8004AA94 3C0F800A */  lui         $t7, %hi(D_800A2F7E)
/* 04A648 8004AA98 01EE7821 */  addu        $t7, $t7, $t6
/* 04A64C 8004AA9C 0000C012 */  mflo        $t8
/* 04A650 8004AAA0 0018CBC3 */  sra         $t9, $t8, 15
/* 04A654 8004AAA4 A699005C */  sh          $t9, 0x5c($s4)
/* 04A658 8004AAA8 85EF2F7E */  lh          $t7, %lo(D_800A2F7E)($t7)
/* 04A65C 8004AAAC 01E30019 */  multu       $t7, $v1
/* 04A660 8004AAB0 0000C012 */  mflo        $t8
/* 04A664 8004AAB4 0018CBC3 */  sra         $t9, $t8, 15
/* 04A668 8004AAB8 A699005E */  sh          $t9, 0x5e($s4)
.L8004AABC:
/* 04A66C 8004AABC C604000C */  lwc1        $f4, 0xc($s0)
/* 04A670 8004AAC0 100000BF */  b           .L8004ADC0
/* 04A674 8004AAC4 E6840044 */   swc1       $f4, 0x44($s4)
glabel L8004AAC8
/* 04A678 8004AAC8 27AE007E */  addiu       $t6, $sp, 0x7e
/* 04A67C 8004AACC AFAE0008 */  sw          $t6, 0x8($sp)
/* 04A680 8004AAD0 02808025 */  move        $s0, $s4
/* 04A684 8004AAD4 27B3008E */  addiu       $s3, $sp, 0x8e
/* 04A688 8004AAD8 02E02025 */  move        $a0, $s7
/* 04A68C 8004AADC 0C012998 */  jal         func_8004A660
/* 04A690 8004AAE0 02C03025 */   move       $a2, $s6
/* 04A694 8004AAE4 8E880070 */  lw          $t0, 0x70($s4)
/* 04A698 8004AAE8 8E840074 */  lw          $a0, 0x74($s4)
/* 04A69C 8004AAEC 0040B025 */  move        $s6, $v0
/* 04A6A0 8004AAF0 0104082A */  slt         $at, $t0, $a0
/* 04A6A4 8004AAF4 5420001A */  bnel        $at, $zero, .L8004AB60
/* 04A6A8 8004AAF8 8685005C */   lh         $a1, 0x5c($s4)
/* 04A6AC 8004AAFC 86820058 */  lh          $v0, 0x58($s4)
/* 04A6B0 8004AB00 3C18800A */  lui         $t8, %hi(D_800A2E80)
/* 04A6B4 8004AB04 8683005A */  lh          $v1, 0x5a($s4)
/* 04A6B8 8004AB08 00027840 */  sll         $t7, $v0, 1
/* 04A6BC 8004AB0C 030FC021 */  addu        $t8, $t8, $t7
/* 04A6C0 8004AB10 87182E80 */  lh          $t8, %lo(D_800A2E80)($t8)
/* 04A6C4 8004AB14 000F7823 */  negu        $t7, $t7
/* 04A6C8 8004AB18 03030019 */  multu       $t8, $v1
/* 04A6CC 8004AB1C 3C18800A */  lui         $t8, %hi(D_800A2F7E)
/* 04A6D0 8004AB20 030FC021 */  addu        $t8, $t8, $t7
/* 04A6D4 8004AB24 0000C812 */  mflo        $t9
/* 04A6D8 8004AB28 001973C3 */  sra         $t6, $t9, 15
/* 04A6DC 8004AB2C A68E0068 */  sh          $t6, 0x68($s4)
/* 04A6E0 8004AB30 87182F7E */  lh          $t8, %lo(D_800A2F7E)($t8)
/* 04A6E4 8004AB34 868F0068 */  lh          $t7, 0x68($s4)
/* 04A6E8 8004AB38 AE840070 */  sw          $a0, 0x70($s4)
/* 04A6EC 8004AB3C 03030019 */  multu       $t8, $v1
/* 04A6F0 8004AB40 A68F005C */  sh          $t7, 0x5c($s4)
/* 04A6F4 8004AB44 0000C812 */  mflo        $t9
/* 04A6F8 8004AB48 001973C3 */  sra         $t6, $t9, 15
/* 04A6FC 8004AB4C A68E006E */  sh          $t6, 0x6e($s4)
/* 04A700 8004AB50 8698006E */  lh          $t8, 0x6e($s4)
/* 04A704 8004AB54 1000000D */  b           .L8004AB8C
/* 04A708 8004AB58 A698005E */   sh         $t8, 0x5e($s4)
/* 04A70C 8004AB5C 8685005C */  lh          $a1, 0x5c($s4)
.L8004AB60:
/* 04A710 8004AB60 01002025 */  move        $a0, $t0
/* 04A714 8004AB64 86870066 */  lh          $a3, 0x66($s4)
/* 04A718 8004AB68 0C012A15 */  jal         func_8004A854
/* 04A71C 8004AB6C 96860064 */   lhu        $a2, 0x64($s4)
/* 04A720 8004AB70 A682005C */  sh          $v0, 0x5c($s4)
/* 04A724 8004AB74 8685005E */  lh          $a1, 0x5e($s4)
/* 04A728 8004AB78 8E840070 */  lw          $a0, 0x70($s4)
/* 04A72C 8004AB7C 8687006C */  lh          $a3, 0x6c($s4)
/* 04A730 8004AB80 0C012A15 */  jal         func_8004A854
/* 04A734 8004AB84 9686006A */   lhu        $a2, 0x6a($s4)
/* 04A738 8004AB88 A682005E */  sh          $v0, 0x5e($s4)
.L8004AB8C:
/* 04A73C 8004AB8C 8699005C */  lh          $t9, 0x5c($s4)
/* 04A740 8004AB90 57200003 */  bnel        $t9, $zero, .L8004ABA0
/* 04A744 8004AB94 868E005E */   lh         $t6, 0x5e($s4)
/* 04A748 8004AB98 A695005C */  sh          $s5, 0x5c($s4)
/* 04A74C 8004AB9C 868E005E */  lh          $t6, 0x5e($s4)
.L8004ABA0:
/* 04A750 8004ABA0 55C00003 */  bnel        $t6, $zero, .L8004ABB0
/* 04A754 8004ABA4 8E83007C */   lw         $v1, 0x7c($s4)
/* 04A758 8004ABA8 A695005E */  sh          $s5, 0x5e($s4)
/* 04A75C 8004ABAC 8E83007C */  lw          $v1, 0x7c($s4)
.L8004ABB0:
/* 04A760 8004ABB0 2401000C */  addiu       $at, $zero, 0xc
/* 04A764 8004ABB4 84640008 */  lh          $a0, 0x8($v1)
/* 04A768 8004ABB8 54810005 */  bnel        $a0, $at, .L8004ABD0
/* 04A76C 8004ABBC 2401000B */   addiu      $at, $zero, 0xb
/* 04A770 8004ABC0 8C6F000C */  lw          $t7, 0xc($v1)
/* 04A774 8004ABC4 A68F0058 */  sh          $t7, 0x58($s4)
/* 04A778 8004ABC8 84640008 */  lh          $a0, 0x8($v1)
/* 04A77C 8004ABCC 2401000B */  addiu       $at, $zero, 0xb
.L8004ABD0:
/* 04A780 8004ABD0 5481001A */  bnel        $a0, $at, .L8004AC3C
/* 04A784 8004ABD4 24010010 */   addiu      $at, $zero, 0x10
/* 04A788 8004ABD8 AE800070 */  sw          $zero, 0x70($s4)
/* 04A78C 8004ABDC 8C62000C */  lw          $v0, 0xc($v1)
/* 04A790 8004ABE0 00420019 */  multu       $v0, $v0
/* 04A794 8004ABE4 00001012 */  mflo        $v0
/* 04A798 8004ABE8 0002C3C3 */  sra         $t8, $v0, 15
/* 04A79C 8004ABEC A698005A */  sh          $t8, 0x5a($s4)
/* 04A7A0 8004ABF0 8C790010 */  lw          $t9, 0x10($v1)
/* 04A7A4 8004ABF4 03001025 */  move        $v0, $t8
/* 04A7A8 8004ABF8 272E005C */  addiu       $t6, $t9, 0x5c
/* 04A7AC 8004ABFC 01DE001A */  div         $zero, $t6, $fp
/* 04A7B0 8004AC00 00007812 */  mflo        $t7
/* 04A7B4 8004AC04 17C00002 */  bnez        $fp, .L8004AC10
/* 04A7B8 8004AC08 00000000 */   nop
/* 04A7BC 8004AC0C 0007000D */  break       7
.L8004AC10:
/* 04A7C0 8004AC10 2401FFFF */  addiu       $at, $zero, -0x1
/* 04A7C4 8004AC14 17C10004 */  bne         $fp, $at, .L8004AC28
/* 04A7C8 8004AC18 3C018000 */   lui        $at, 0x8000
/* 04A7CC 8004AC1C 15C10002 */  bne         $t6, $at, .L8004AC28
/* 04A7D0 8004AC20 00000000 */   nop
/* 04A7D4 8004AC24 0006000D */  break       6
.L8004AC28:
/* 04A7D8 8004AC28 01FE0019 */  multu       $t7, $fp
/* 04A7DC 8004AC2C 0000C012 */  mflo        $t8
/* 04A7E0 8004AC30 AE980074 */  sw          $t8, 0x74($s4)
/* 04A7E4 8004AC34 84640008 */  lh          $a0, 0x8($v1)
/* 04A7E8 8004AC38 24010010 */  addiu       $at, $zero, 0x10
.L8004AC3C:
/* 04A7EC 8004AC3C 1481000E */  bne         $a0, $at, .L8004AC78
/* 04A7F0 8004AC40 00000000 */   nop
/* 04A7F4 8004AC44 8C79000C */  lw          $t9, 0xc($v1)
/* 04A7F8 8004AC48 3C0F800A */  lui         $t7, %hi(D_800A2E80)
/* 04A7FC 8004AC4C 00197040 */  sll         $t6, $t9, 1
/* 04A800 8004AC50 01EE7821 */  addu        $t7, $t7, $t6
/* 04A804 8004AC54 85EF2E80 */  lh          $t7, %lo(D_800A2E80)($t7)
/* 04A808 8004AC58 A68F0060 */  sh          $t7, 0x60($s4)
/* 04A80C 8004AC5C 8C78000C */  lw          $t8, 0xc($v1)
/* 04A810 8004AC60 3C0F800A */  lui         $t7, %hi(D_800A2F7E)
/* 04A814 8004AC64 0018C840 */  sll         $t9, $t8, 1
/* 04A818 8004AC68 00197023 */  negu        $t6, $t9
/* 04A81C 8004AC6C 01EE7821 */  addu        $t7, $t7, $t6
/* 04A820 8004AC70 85EF2F7E */  lh          $t7, %lo(D_800A2F7E)($t7)
/* 04A824 8004AC74 A68F0062 */  sh          $t7, 0x62($s4)
.L8004AC78:
/* 04A828 8004AC78 10000051 */  b           .L8004ADC0
/* 04A82C 8004AC7C AE950078 */   sw         $s5, 0x78($s4)
glabel L8004AC80
/* 04A830 8004AC80 8478000A */  lh          $t8, 0xa($v1)
/* 04A834 8004AC84 00601025 */  move        $v0, $v1
/* 04A838 8004AC88 02802025 */  move        $a0, $s4
/* 04A83C 8004AC8C 13000002 */  beqz        $t8, .L8004AC98
/* 04A840 8004AC90 24050005 */   addiu      $a1, $zero, 0x5
/* 04A844 8004AC94 AE950048 */  sw          $s5, 0x48($s4)
.L8004AC98:
/* 04A848 8004AC98 0C013000 */  jal         func_8004C000
/* 04A84C 8004AC9C 8C46000C */   lw         $a2, 0xc($v0)
/* 04A850 8004ACA0 10000047 */  b           .L8004ADC0
/* 04A854 8004ACA4 AE950084 */   sw         $s5, 0x84($s4)
glabel L8004ACA8
/* 04A858 8004ACA8 27B9007E */  addiu       $t9, $sp, 0x7e
/* 04A85C 8004ACAC AFB90008 */  sw          $t9, 0x8($sp)
/* 04A860 8004ACB0 02808025 */  move        $s0, $s4
/* 04A864 8004ACB4 27B3008E */  addiu       $s3, $sp, 0x8e
/* 04A868 8004ACB8 02E02025 */  move        $a0, $s7
/* 04A86C 8004ACBC 0C012998 */  jal         func_8004A660
/* 04A870 8004ACC0 02C03025 */   move       $a2, $s6
/* 04A874 8004ACC4 0040B025 */  move        $s6, $v0
/* 04A878 8004ACC8 02802025 */  move        $a0, $s4
/* 04A87C 8004ACCC 24050004 */  addiu       $a1, $zero, 0x4
/* 04A880 8004ACD0 0C012910 */  jal         func_8004A440
/* 04A884 8004ACD4 00003025 */   move       $a2, $zero
/* 04A888 8004ACD8 1000003A */  b           .L8004ADC4
/* 04A88C 8004ACDC 87B9007E */   lh         $t9, 0x7e($sp)
glabel L8004ACE0
/* 04A890 8004ACE0 8C6E000C */  lw          $t6, 0xc($v1)
/* 04A894 8004ACE4 ADC00088 */  sw          $zero, 0x88($t6)
/* 04A898 8004ACE8 0C01272E */  jal         func_80049CB8
/* 04A89C 8004ACEC 8C64000C */   lw         $a0, 0xc($v1)
/* 04A8A0 8004ACF0 10000034 */  b           .L8004ADC4
/* 04A8A4 8004ACF4 87B9007E */   lh         $t9, 0x7e($sp)
glabel L8004ACF8
/* 04A8A8 8004ACF8 27AF007E */  addiu       $t7, $sp, 0x7e
/* 04A8AC 8004ACFC AFAF0008 */  sw          $t7, 0x8($sp)
/* 04A8B0 8004AD00 02808025 */  move        $s0, $s4
/* 04A8B4 8004AD04 27B3008E */  addiu       $s3, $sp, 0x8e
/* 04A8B8 8004AD08 02E02025 */  move        $a0, $s7
/* 04A8BC 8004AD0C 0C012998 */  jal         func_8004A660
/* 04A8C0 8004AD10 02C03025 */   move       $a2, $s6
/* 04A8C4 8004AD14 8E98007C */  lw          $t8, 0x7c($s4)
/* 04A8C8 8004AD18 0040B025 */  move        $s6, $v0
/* 04A8CC 8004AD1C C706000C */  lwc1        $f6, 0xc($t8)
/* 04A8D0 8004AD20 10000027 */  b           .L8004ADC0
/* 04A8D4 8004AD24 E6860044 */   swc1       $f6, 0x44($s4)
glabel L8004AD28
/* 04A8D8 8004AD28 27B9007E */  addiu       $t9, $sp, 0x7e
/* 04A8DC 8004AD2C AFB90008 */  sw          $t9, 0x8($sp)
/* 04A8E0 8004AD30 02808025 */  move        $s0, $s4
/* 04A8E4 8004AD34 27B3008E */  addiu       $s3, $sp, 0x8e
/* 04A8E8 8004AD38 02E02025 */  move        $a0, $s7
/* 04A8EC 8004AD3C 0C012998 */  jal         func_8004A660
/* 04A8F0 8004AD40 02C03025 */   move       $a2, $s6
/* 04A8F4 8004AD44 0040B025 */  move        $s6, $v0
/* 04A8F8 8004AD48 1000001D */  b           .L8004ADC0
/* 04A8FC 8004AD4C AE950048 */   sw         $s5, 0x48($s4)
glabel L8004AD50
/* 04A900 8004AD50 27AE007E */  addiu       $t6, $sp, 0x7e
/* 04A904 8004AD54 AFAE0008 */  sw          $t6, 0x8($sp)
/* 04A908 8004AD58 02808025 */  move        $s0, $s4
/* 04A90C 8004AD5C 27B3008E */  addiu       $s3, $sp, 0x8e
/* 04A910 8004AD60 02E02025 */  move        $a0, $s7
/* 04A914 8004AD64 0C012998 */  jal         func_8004A660
/* 04A918 8004AD68 02C03025 */   move       $a2, $s6
/* 04A91C 8004AD6C 8E8F007C */  lw          $t7, 0x7c($s4)
/* 04A920 8004AD70 0040B025 */  move        $s6, $v0
/* 04A924 8004AD74 02802025 */  move        $a0, $s4
/* 04A928 8004AD78 24050005 */  addiu       $a1, $zero, 0x5
/* 04A92C 8004AD7C 0C013000 */  jal         func_8004C000
/* 04A930 8004AD80 8DE6000C */   lw         $a2, 0xc($t7)
/* 04A934 8004AD84 1000000F */  b           .L8004ADC4
/* 04A938 8004AD88 87B9007E */   lh         $t9, 0x7e($sp)
glabel L8004AD8C
/* 04A93C 8004AD8C 27B8007E */  addiu       $t8, $sp, 0x7e
/* 04A940 8004AD90 AFB80008 */  sw          $t8, 0x8($sp)
/* 04A944 8004AD94 02808025 */  move        $s0, $s4
/* 04A948 8004AD98 27B3008E */  addiu       $s3, $sp, 0x8e
/* 04A94C 8004AD9C 02E02025 */  move        $a0, $s7
/* 04A950 8004ADA0 0C012998 */  jal         func_8004A660
/* 04A954 8004ADA4 02C03025 */   move       $a2, $s6
/* 04A958 8004ADA8 8E83007C */  lw          $v1, 0x7c($s4)
/* 04A95C 8004ADAC 0040B025 */  move        $s6, $v0
/* 04A960 8004ADB0 02802025 */  move        $a0, $s4
/* 04A964 8004ADB4 84650008 */  lh          $a1, 0x8($v1)
/* 04A968 8004ADB8 0C012910 */  jal         func_8004A440
/* 04A96C 8004ADBC 8C66000C */   lw         $a2, 0xc($v1)
.L8004ADC0:
/* 04A970 8004ADC0 87B9007E */  lh          $t9, 0x7e($sp)
.L8004ADC4:
/* 04A974 8004ADC4 8FB80070 */  lw          $t8, 0x70($sp)
/* 04A978 8004ADC8 00177040 */  sll         $t6, $s7, 1
/* 04A97C 8004ADCC 032E7821 */  addu        $t7, $t9, $t6
/* 04A980 8004ADD0 0317C823 */  subu        $t9, $t8, $s7
/* 04A984 8004ADD4 A7AF007E */  sh          $t7, 0x7e($sp)
/* 04A988 8004ADD8 AFB90070 */  sw          $t9, 0x70($sp)
/* 04A98C 8004ADDC 8E84007C */  lw          $a0, 0x7c($s4)
/* 04A990 8004ADE0 8C8E0000 */  lw          $t6, 0x0($a0)
/* 04A994 8004ADE4 15C00002 */  bnez        $t6, .L8004ADF0
/* 04A998 8004ADE8 AE8E007C */   sw         $t6, 0x7c($s4)
/* 04A99C 8004ADEC AE800080 */  sw          $zero, 0x80($s4)
.L8004ADF0:
/* 04A9A0 8004ADF0 0C012754 */  jal         func_80049D50
/* 04A9A4 8004ADF4 00000000 */   nop
/* 04A9A8 8004ADF8 8FB80090 */  lw          $t8, 0x90($sp)
/* 04A9AC 8004ADFC 8F19007C */  lw          $t9, 0x7c($t8)
/* 04A9B0 8004AE00 5720FEC6 */  bnel        $t9, $zero, .L8004A91C
/* 04A9B4 8004AE04 8E83007C */   lw         $v1, 0x7c($s4)
.L8004AE08:
/* 04A9B8 8004AE08 27AE007E */  addiu       $t6, $sp, 0x7e
.L8004AE0C:
/* 04A9BC 8004AE0C AFAE0008 */  sw          $t6, 0x8($sp)
/* 04A9C0 8004AE10 02808025 */  move        $s0, $s4
/* 04A9C4 8004AE14 27B3008E */  addiu       $s3, $sp, 0x8e
/* 04A9C8 8004AE18 8FA40070 */  lw          $a0, 0x70($sp)
/* 04A9CC 8004AE1C 0C012998 */  jal         func_8004A660
/* 04A9D0 8004AE20 02C03025 */   move       $a2, $s6
/* 04A9D4 8004AE24 8E840074 */  lw          $a0, 0x74($s4)
/* 04A9D8 8004AE28 8E8F0070 */  lw          $t7, 0x70($s4)
/* 04A9DC 8004AE2C 0040B025 */  move        $s6, $v0
/* 04A9E0 8004AE30 02C01025 */  move        $v0, $s6
/* 04A9E4 8004AE34 008F082A */  slt         $at, $a0, $t7
/* 04A9E8 8004AE38 50200003 */  beql        $at, $zero, .L8004AE48
/* 04A9EC 8004AE3C 8FBF0044 */   lw         $ra, 0x44($sp)
/* 04A9F0 8004AE40 AE840070 */  sw          $a0, 0x70($s4)
/* 04A9F4 8004AE44 8FBF0044 */  lw          $ra, 0x44($sp)
.L8004AE48:
/* 04A9F8 8004AE48 8FB00020 */  lw          $s0, 0x20($sp)
/* 04A9FC 8004AE4C 8FB10024 */  lw          $s1, 0x24($sp)
/* 04AA00 8004AE50 8FB20028 */  lw          $s2, 0x28($sp)
/* 04AA04 8004AE54 8FB3002C */  lw          $s3, 0x2c($sp)
/* 04AA08 8004AE58 8FB40030 */  lw          $s4, 0x30($sp)
/* 04AA0C 8004AE5C 8FB50034 */  lw          $s5, 0x34($sp)
/* 04AA10 8004AE60 8FB60038 */  lw          $s6, 0x38($sp)
/* 04AA14 8004AE64 8FB7003C */  lw          $s7, 0x3c($sp)
/* 04AA18 8004AE68 8FBE0040 */  lw          $fp, 0x40($sp)
/* 04AA1C 8004AE6C 03E00008 */  jr          $ra
/* 04AA20 8004AE70 27BD0098 */   addiu      $sp, $sp, 0x98
/* 04AA24 8004AE74 00000000 */  nop
/* 04AA28 8004AE78 00000000 */  nop
/* 04AA2C 8004AE7C 00000000 */  nop
