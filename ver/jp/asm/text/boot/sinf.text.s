.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __sinf # 0
/* 0522F0 80052740 E7AC0000 */  swc1        $f12, 0x0($sp)
/* 0522F4 80052744 8FA20000 */  lw          $v0, 0x0($sp)
/* 0522F8 80052748 C7A40000 */  lwc1        $f4, 0x0($sp)
/* 0522FC 8005274C 00021D83 */  sra         $v1, $v0, 22
/* 052300 80052750 306E01FF */  andi        $t6, $v1, 0x1ff
/* 052304 80052754 29C100FF */  slti        $at, $t6, 0xff
/* 052308 80052758 10200019 */  beqz        $at, .L800527C0
/* 05230C 8005275C 01C01825 */   move       $v1, $t6
/* 052310 80052760 29C100E6 */  slti        $at, $t6, 0xe6
/* 052314 80052764 14200014 */  bnez        $at, .L800527B8
/* 052318 80052768 460020A1 */   cvt.d.s    $f2, $f4
/* 05231C 8005276C 46221302 */  mul.d       $f12, $f2, $f2
/* 052320 80052770 3C03800B */  lui         $v1, %hi(D_800AC9F0)
/* 052324 80052774 2463C9F0 */  addiu       $v1, $v1, %lo(D_800AC9F0)
/* 052328 80052778 D4660020 */  ldc1        $f6, 0x20($v1)
/* 05232C 8005277C D46A0018 */  ldc1        $f10, 0x18($v1)
/* 052330 80052780 D4640010 */  ldc1        $f4, 0x10($v1)
/* 052334 80052784 462C3202 */  mul.d       $f8, $f6, $f12
/* 052338 80052788 462A4400 */  add.d       $f16, $f8, $f10
/* 05233C 8005278C D46A0008 */  ldc1        $f10, 0x8($v1)
/* 052340 80052790 462C8482 */  mul.d       $f18, $f16, $f12
/* 052344 80052794 46249180 */  add.d       $f6, $f18, $f4
/* 052348 80052798 462C3202 */  mul.d       $f8, $f6, $f12
/* 05234C 8005279C 46285380 */  add.d       $f14, $f10, $f8
/* 052350 800527A0 462C1402 */  mul.d       $f16, $f2, $f12
/* 052354 800527A4 00000000 */  nop
/* 052358 800527A8 462E8482 */  mul.d       $f18, $f16, $f14
/* 05235C 800527AC 46229100 */  add.d       $f4, $f18, $f2
/* 052360 800527B0 03E00008 */  jr          $ra
/* 052364 800527B4 46202020 */   cvt.s.d    $f0, $f4
.L800527B8:
/* 052368 800527B8 03E00008 */  jr          $ra
/* 05236C 800527BC C7A00000 */   lwc1       $f0, 0x0($sp)
.L800527C0:
/* 052370 800527C0 28610136 */  slti        $at, $v1, 0x136
/* 052374 800527C4 10200044 */  beqz        $at, .L800528D8
/* 052378 800527C8 C7A40000 */   lwc1       $f4, 0x0($sp)
/* 05237C 800527CC C7A60000 */  lwc1        $f6, 0x0($sp)
/* 052380 800527D0 3C01800B */  lui         $at, %hi(D_800ACA18)
/* 052384 800527D4 D42ACA18 */  ldc1        $f10, %lo(D_800ACA18)($at)
/* 052388 800527D8 460030A1 */  cvt.d.s     $f2, $f6
/* 05238C 800527DC 44804800 */  mtc1        $zero, $f9
/* 052390 800527E0 462A1002 */  mul.d       $f0, $f2, $f10
/* 052394 800527E4 44804000 */  mtc1        $zero, $f8
/* 052398 800527E8 3C013FE0 */  lui         $at, 0x3fe0
/* 05239C 800527EC 4620403E */  c.le.d      $f8, $f0
/* 0523A0 800527F0 00000000 */  nop
/* 0523A4 800527F4 4502000B */  bc1fl       .L80052824
/* 0523A8 800527F8 44813800 */   mtc1       $at, $f7
/* 0523AC 800527FC 3C013FE0 */  lui         $at, 0x3fe0
/* 0523B0 80052800 44818800 */  mtc1        $at, $f17
/* 0523B4 80052804 44808000 */  mtc1        $zero, $f16
/* 0523B8 80052808 00000000 */  nop
/* 0523BC 8005280C 46300480 */  add.d       $f18, $f0, $f16
/* 0523C0 80052810 4620910D */  trunc.w.d   $f4, $f18
/* 0523C4 80052814 44022000 */  mfc1        $v0, $f4
/* 0523C8 80052818 10000009 */  b           .L80052840
/* 0523CC 8005281C 44828000 */   mtc1       $v0, $f16
/* 0523D0 80052820 44813800 */  mtc1        $at, $f7
.L80052824:
/* 0523D4 80052824 44803000 */  mtc1        $zero, $f6
/* 0523D8 80052828 00000000 */  nop
/* 0523DC 8005282C 46260281 */  sub.d       $f10, $f0, $f6
/* 0523E0 80052830 4620520D */  trunc.w.d   $f8, $f10
/* 0523E4 80052834 44024000 */  mfc1        $v0, $f8
/* 0523E8 80052838 00000000 */  nop
/* 0523EC 8005283C 44828000 */  mtc1        $v0, $f16
.L80052840:
/* 0523F0 80052840 3C01800B */  lui         $at, %hi(D_800ACA20)
/* 0523F4 80052844 D432CA20 */  ldc1        $f18, %lo(D_800ACA20)($at)
/* 0523F8 80052848 46808021 */  cvt.d.w     $f0, $f16
/* 0523FC 8005284C 3C01800B */  lui         $at, %hi(D_800ACA28)
/* 052400 80052850 D426CA28 */  ldc1        $f6, %lo(D_800ACA28)($at)
/* 052404 80052854 3C03800B */  lui         $v1, %hi(D_800AC9F0)
/* 052408 80052858 2463C9F0 */  addiu       $v1, $v1, %lo(D_800AC9F0)
/* 05240C 8005285C 46320102 */  mul.d       $f4, $f0, $f18
/* 052410 80052860 D4680020 */  ldc1        $f8, 0x20($v1)
/* 052414 80052864 D4720018 */  ldc1        $f18, 0x18($v1)
/* 052418 80052868 30590001 */  andi        $t9, $v0, 0x1
/* 05241C 8005286C 46260282 */  mul.d       $f10, $f0, $f6
/* 052420 80052870 46241081 */  sub.d       $f2, $f2, $f4
/* 052424 80052874 462A1081 */  sub.d       $f2, $f2, $f10
/* 052428 80052878 D46A0010 */  ldc1        $f10, 0x10($v1)
/* 05242C 8005287C 46221302 */  mul.d       $f12, $f2, $f2
/* 052430 80052880 00000000 */  nop
/* 052434 80052884 462C4402 */  mul.d       $f16, $f8, $f12
/* 052438 80052888 46328100 */  add.d       $f4, $f16, $f18
/* 05243C 8005288C D4720008 */  ldc1        $f18, 0x8($v1)
/* 052440 80052890 462C2182 */  mul.d       $f6, $f4, $f12
/* 052444 80052894 462A3200 */  add.d       $f8, $f6, $f10
/* 052448 80052898 462C4402 */  mul.d       $f16, $f8, $f12
/* 05244C 8005289C 17200007 */  bnez        $t9, .L800528BC
/* 052450 800528A0 46309380 */   add.d      $f14, $f18, $f16
/* 052454 800528A4 462C1102 */  mul.d       $f4, $f2, $f12
/* 052458 800528A8 00000000 */  nop
/* 05245C 800528AC 462E2182 */  mul.d       $f6, $f4, $f14
/* 052460 800528B0 46223280 */  add.d       $f10, $f6, $f2
/* 052464 800528B4 03E00008 */  jr          $ra
/* 052468 800528B8 46205020 */   cvt.s.d    $f0, $f10
.L800528BC:
/* 05246C 800528BC 462C1202 */  mul.d       $f8, $f2, $f12
/* 052470 800528C0 00000000 */  nop
/* 052474 800528C4 462E4482 */  mul.d       $f18, $f8, $f14
/* 052478 800528C8 46229400 */  add.d       $f16, $f18, $f2
/* 05247C 800528CC 46208020 */  cvt.s.d     $f0, $f16
/* 052480 800528D0 03E00008 */  jr          $ra
/* 052484 800528D4 46000007 */   neg.s      $f0, $f0
.L800528D8:
/* 052488 800528D8 46042032 */  c.eq.s      $f4, $f4
/* 05248C 800528DC 3C01800B */  lui         $at, %hi(D_800ACA30)
/* 052490 800528E0 45010004 */  bc1t        .L800528F4
/* 052494 800528E4 00000000 */   nop
/* 052498 800528E8 3C01800B */  lui         $at, %hi(__libm_qnan_f)
/* 05249C 800528EC 03E00008 */  jr          $ra
/* 0524A0 800528F0 C420CA90 */   lwc1       $f0, %lo(__libm_qnan_f)($at)
.L800528F4:
/* 0524A4 800528F4 C420CA30 */  lwc1        $f0, %lo(D_800ACA30)($at)
/* 0524A8 800528F8 03E00008 */  jr          $ra
/* 0524AC 800528FC 00000000 */   nop