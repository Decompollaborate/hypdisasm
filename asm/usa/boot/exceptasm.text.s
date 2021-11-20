.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osExceptionPreamble # 0
/* 0571B0 80057600 3C1A8005 */  lui         $k0, %hi(__osException)
/* 0571B4 80057604 275A7610 */  addiu       $k0, $k0, %lo(__osException)
/* 0571B8 80057608 03400008 */  jr          $k0
/* 0571BC 8005760C 00000000 */   nop

glabel __osException # 1
/* 0571C0 80057610 3C1A8010 */  lui         $k0, %hi(__osThreadSave)
/* 0571C4 80057614 275A03D0 */  addiu       $k0, $k0, %lo(__osThreadSave)
/* 0571C8 80057618 FF410020 */  sd          $at, 0x20($k0)
/* 0571CC 8005761C 401B6000 */  mfc0        $k1, Status
/* 0571D0 80057620 AF5B0118 */  sw          $k1, 0x118($k0)
/* 0571D4 80057624 2401FFFC */  addiu       $at, $zero, -0x4
/* 0571D8 80057628 0361D824 */  and         $k1, $k1, $at
/* 0571DC 8005762C 409B6000 */  mtc0        $k1, Status
/* 0571E0 80057630 FF480058 */  sd          $t0, 0x58($k0)
/* 0571E4 80057634 FF490060 */  sd          $t1, 0x60($k0)
/* 0571E8 80057638 FF4A0068 */  sd          $t2, 0x68($k0)
/* 0571EC 8005763C AF400018 */  sw          $zero, 0x18($k0)
/* 0571F0 80057640 40086800 */  mfc0        $t0, Cause
/* 0571F4 80057644 03404025 */  move        $t0, $k0
/* 0571F8 80057648 3C1A800A */  lui         $k0, %hi(__osRunningThread)
/* 0571FC 8005764C 8F5AF8A0 */  lw          $k0, %lo(__osRunningThread)($k0)
/* 057200 80057650 DD090020 */  ld          $t1, 0x20($t0)
/* 057204 80057654 FF490020 */  sd          $t1, 0x20($k0)
/* 057208 80057658 DD090118 */  ld          $t1, 0x118($t0)
/* 05720C 8005765C FF490118 */  sd          $t1, 0x118($k0)
/* 057210 80057660 DD090058 */  ld          $t1, 0x58($t0)
/* 057214 80057664 FF490058 */  sd          $t1, 0x58($k0)
/* 057218 80057668 DD090060 */  ld          $t1, 0x60($t0)
/* 05721C 8005766C FF490060 */  sd          $t1, 0x60($k0)
/* 057220 80057670 DD090068 */  ld          $t1, 0x68($t0)
/* 057224 80057674 FF490068 */  sd          $t1, 0x68($k0)
/* 057228 80057678 8F5B0118 */  lw          $k1, 0x118($k0)
/* 05722C 8005767C 00004012 */  mflo        $t0
/* 057230 80057680 FF480108 */  sd          $t0, 0x108($k0)
/* 057234 80057684 00004010 */  mfhi        $t0
/* 057238 80057688 3369FF00 */  andi        $t1, $k1, 0xff00
/* 05723C 8005768C FF420028 */  sd          $v0, 0x28($k0)
/* 057240 80057690 FF430030 */  sd          $v1, 0x30($k0)
/* 057244 80057694 FF440038 */  sd          $a0, 0x38($k0)
/* 057248 80057698 FF450040 */  sd          $a1, 0x40($k0)
/* 05724C 8005769C FF460048 */  sd          $a2, 0x48($k0)
/* 057250 800576A0 FF470050 */  sd          $a3, 0x50($k0)
/* 057254 800576A4 FF4B0070 */  sd          $t3, 0x70($k0)
/* 057258 800576A8 FF4C0078 */  sd          $t4, 0x78($k0)
/* 05725C 800576AC FF4D0080 */  sd          $t5, 0x80($k0)
/* 057260 800576B0 FF4E0088 */  sd          $t6, 0x88($k0)
/* 057264 800576B4 FF4F0090 */  sd          $t7, 0x90($k0)
/* 057268 800576B8 FF500098 */  sd          $s0, 0x98($k0)
/* 05726C 800576BC FF5100A0 */  sd          $s1, 0xa0($k0)
/* 057270 800576C0 FF5200A8 */  sd          $s2, 0xa8($k0)
/* 057274 800576C4 FF5300B0 */  sd          $s3, 0xb0($k0)
/* 057278 800576C8 FF5400B8 */  sd          $s4, 0xb8($k0)
/* 05727C 800576CC FF5500C0 */  sd          $s5, 0xc0($k0)
/* 057280 800576D0 FF5600C8 */  sd          $s6, 0xc8($k0)
/* 057284 800576D4 FF5700D0 */  sd          $s7, 0xd0($k0)
/* 057288 800576D8 FF5800D8 */  sd          $t8, 0xd8($k0)
/* 05728C 800576DC FF5900E0 */  sd          $t9, 0xe0($k0)
/* 057290 800576E0 FF5C00E8 */  sd          $gp, 0xe8($k0)
/* 057294 800576E4 FF5D00F0 */  sd          $sp, 0xf0($k0)
/* 057298 800576E8 FF5E00F8 */  sd          $fp, 0xf8($k0)
/* 05729C 800576EC FF5F0100 */  sd          $ra, 0x100($k0)
/* 0572A0 800576F0 11200011 */  beqz        $t1, .L80057738
/* 0572A4 800576F4 FF480110 */   sd         $t0, 0x110($k0)
/* 0572A8 800576F8 3C08800A */  lui         $t0, %hi(__OSGlobalIntMask)
/* 0572AC 800576FC 2508DC80 */  addiu       $t0, $t0, %lo(__OSGlobalIntMask)
/* 0572B0 80057700 8D080000 */  lw          $t0, 0x0($t0)
/* 0572B4 80057704 2401FFFF */  addiu       $at, $zero, -0x1
/* 0572B8 80057708 01015026 */  xor         $t2, $t0, $at
/* 0572BC 8005770C 3C01FFFF */  lui         $at, 0xffff
/* 0572C0 80057710 314AFF00 */  andi        $t2, $t2, 0xff00
/* 0572C4 80057714 342100FF */  ori         $at, $at, 0xff
/* 0572C8 80057718 012A6025 */  or          $t4, $t1, $t2
/* 0572CC 8005771C 03615824 */  and         $t3, $k1, $at
/* 0572D0 80057720 3108FF00 */  andi        $t0, $t0, 0xff00
/* 0572D4 80057724 016C5825 */  or          $t3, $t3, $t4
/* 0572D8 80057728 01284824 */  and         $t1, $t1, $t0
/* 0572DC 8005772C 0361D824 */  and         $k1, $k1, $at
/* 0572E0 80057730 AF4B0118 */  sw          $t3, 0x118($k0)
/* 0572E4 80057734 0369D825 */  or          $k1, $k1, $t1
.L80057738:
/* 0572E8 80057738 3C09A430 */  lui         $t1, %hi(D_A430000C)
/* 0572EC 8005773C 8D29000C */  lw          $t1, %lo(D_A430000C)($t1)
/* 0572F0 80057740 1120000B */  beqz        $t1, .L80057770
/* 0572F4 80057744 00000000 */   nop
/* 0572F8 80057748 3C08800A */  lui         $t0, %hi(__OSGlobalIntMask)
/* 0572FC 8005774C 2508DC80 */  addiu       $t0, $t0, %lo(__OSGlobalIntMask)
/* 057300 80057750 8D080000 */  lw          $t0, 0x0($t0)
/* 057304 80057754 8F4C0128 */  lw          $t4, 0x128($k0)
/* 057308 80057758 2401FFFF */  addiu       $at, $zero, -0x1
/* 05730C 8005775C 00084402 */  srl         $t0, $t0, 16
/* 057310 80057760 01014026 */  xor         $t0, $t0, $at
/* 057314 80057764 3108003F */  andi        $t0, $t0, 0x3f
/* 057318 80057768 010C4024 */  and         $t0, $t0, $t4
/* 05731C 8005776C 01284825 */  or          $t1, $t1, $t0
.L80057770:
/* 057320 80057770 AF490128 */  sw          $t1, 0x128($k0)
/* 057324 80057774 40087000 */  mfc0        $t0, EPC
/* 057328 80057778 AF48011C */  sw          $t0, 0x11c($k0)
/* 05732C 8005777C 8F480018 */  lw          $t0, 0x18($k0)
/* 057330 80057780 11000014 */  beqz        $t0, .L800577D4
/* 057334 80057784 00000000 */   nop
/* 057338 80057788 4448F800 */  cfc1        $t0, $31
/* 05733C 8005778C 00000000 */  nop
/* 057340 80057790 AF48012C */  sw          $t0, 0x12c($k0)
/* 057344 80057794 F7400130 */  sdc1        $f0, 0x130($k0)
/* 057348 80057798 F7420138 */  sdc1        $f2, 0x138($k0)
/* 05734C 8005779C F7440140 */  sdc1        $f4, 0x140($k0)
/* 057350 800577A0 F7460148 */  sdc1        $f6, 0x148($k0)
/* 057354 800577A4 F7480150 */  sdc1        $f8, 0x150($k0)
/* 057358 800577A8 F74A0158 */  sdc1        $f10, 0x158($k0)
/* 05735C 800577AC F74C0160 */  sdc1        $f12, 0x160($k0)
/* 057360 800577B0 F74E0168 */  sdc1        $f14, 0x168($k0)
/* 057364 800577B4 F7500170 */  sdc1        $f16, 0x170($k0)
/* 057368 800577B8 F7520178 */  sdc1        $f18, 0x178($k0)
/* 05736C 800577BC F7540180 */  sdc1        $f20, 0x180($k0)
/* 057370 800577C0 F7560188 */  sdc1        $f22, 0x188($k0)
/* 057374 800577C4 F7580190 */  sdc1        $f24, 0x190($k0)
/* 057378 800577C8 F75A0198 */  sdc1        $f26, 0x198($k0)
/* 05737C 800577CC F75C01A0 */  sdc1        $f28, 0x1a0($k0)
/* 057380 800577D0 F75E01A8 */  sdc1        $f30, 0x1a8($k0)
.L800577D4:
/* 057384 800577D4 40086800 */  mfc0        $t0, Cause
/* 057388 800577D8 AF480120 */  sw          $t0, 0x120($k0)
/* 05738C 800577DC 24090002 */  addiu       $t1, $zero, 0x2
/* 057390 800577E0 A7490010 */  sh          $t1, 0x10($k0)
/* 057394 800577E4 3109007C */  andi        $t1, $t0, 0x7c
/* 057398 800577E8 240A0024 */  addiu       $t2, $zero, 0x24
/* 05739C 800577EC 112A00B6 */  beq         $t1, $t2, .L80057AC8
/* 0573A0 800577F0 00000000 */   nop
/* 0573A4 800577F4 240A002C */  addiu       $t2, $zero, 0x2c
/* 0573A8 800577F8 112A0105 */  beq         $t1, $t2, handle_CpU
/* 0573AC 800577FC 00000000 */   nop
/* 0573B0 80057800 240A0000 */  addiu       $t2, $zero, 0x0
/* 0573B4 80057804 152A00C9 */  bne         $t1, $t2, .L80057B2C
/* 0573B8 80057808 00000000 */   nop
/* 0573BC 8005780C 03688024 */  and         $s0, $k1, $t0
.L80057810:
/* 0573C0 80057810 3209FF00 */  andi        $t1, $s0, 0xff00
/* 0573C4 80057814 00095302 */  srl         $t2, $t1, 12
/* 0573C8 80057818 15400003 */  bnez        $t2, .L80057828
/* 0573CC 8005781C 00000000 */   nop
/* 0573D0 80057820 00095202 */  srl         $t2, $t1, 8
/* 0573D4 80057824 214A0010 */  addi        $t2, $t2, 0x10
.L80057828:
/* 0573D8 80057828 3C01800A */  lui         $at, %hi(D_800A7EC0)
/* 0573DC 8005782C 002A0821 */  addu        $at, $at, $t2
/* 0573E0 80057830 902A7EC0 */  lbu         $t2, %lo(D_800A7EC0)($at)
/* 0573E4 80057834 3C01800A */  lui         $at, %hi(jtbl_800A7EE0)
/* 0573E8 80057838 002A0821 */  addu        $at, $at, $t2
/* 0573EC 8005783C 8C2A7EE0 */  lw          $t2, %lo(jtbl_800A7EE0)($at)
/* 0573F0 80057840 01400008 */  jr          $t2
/* 0573F4 80057844 00000000 */   nop
glabel L80057848
/* 0573F8 80057848 2401DFFF */  addiu       $at, $zero, -0x2001
/* 0573FC 8005784C 1000FFF0 */  b           .L80057810
/* 057400 80057850 02018024 */   and        $s0, $s0, $at
glabel L80057854
/* 057404 80057854 2401BFFF */  addiu       $at, $zero, -0x4001
/* 057408 80057858 1000FFED */  b           .L80057810
/* 05740C 8005785C 02018024 */   and        $s0, $s0, $at
glabel L80057860
/* 057410 80057860 40095800 */  mfc0        $t1, Compare
/* 057414 80057864 40895800 */  mtc0        $t1, Compare
/* 057418 80057868 0C015ED7 */  jal         send_mesg
/* 05741C 8005786C 24040018 */   addiu      $a0, $zero, 0x18
/* 057420 80057870 3C01FFFF */  lui         $at, 0xffff
/* 057424 80057874 34217FFF */  ori         $at, $at, 0x7fff
/* 057428 80057878 1000FFE5 */  b           .L80057810
/* 05742C 8005787C 02018024 */   and        $s0, $s0, $at
glabel L80057880
/* 057430 80057880 3C09800A */  lui         $t1, %hi(__osIntTable)
/* 057434 80057884 2529F860 */  addiu       $t1, $t1, %lo(__osIntTable)
/* 057438 80057888 8D2A0008 */  lw          $t2, 0x8($t1)
/* 05743C 8005788C 2401F7FF */  addiu       $at, $zero, -0x801
/* 057440 80057890 02018024 */  and         $s0, $s0, $at
/* 057444 80057894 11400007 */  beqz        $t2, .L800578B4
/* 057448 80057898 21290008 */   addi       $t1, $t1, 0x8
/* 05744C 8005789C 0140F809 */  jalr        $t2
/* 057450 800578A0 8D3D0004 */   lw         $sp, 0x4($t1)
/* 057454 800578A4 10400003 */  beqz        $v0, .L800578B4
/* 057458 800578A8 00000000 */   nop
/* 05745C 800578AC 1000008C */  b           L80057AE0
/* 057460 800578B0 00000000 */   nop
.L800578B4:
/* 057464 800578B4 0C015ED7 */  jal         send_mesg
/* 057468 800578B8 24040010 */   addiu      $a0, $zero, 0x10
/* 05746C 800578BC 1000FFD4 */  b           .L80057810
/* 057470 800578C0 00000000 */   nop
glabel L800578C4
/* 057474 800578C4 3C08800A */  lui         $t0, %hi(__OSGlobalIntMask)
/* 057478 800578C8 2508DC80 */  addiu       $t0, $t0, %lo(__OSGlobalIntMask)
/* 05747C 800578CC 8D080000 */  lw          $t0, 0x0($t0)
/* 057480 800578D0 3C11A430 */  lui         $s1, %hi(D_A4300008)
/* 057484 800578D4 8E310008 */  lw          $s1, %lo(D_A4300008)($s1)
/* 057488 800578D8 00084402 */  srl         $t0, $t0, 16
/* 05748C 800578DC 02288824 */  and         $s1, $s1, $t0
/* 057490 800578E0 32290001 */  andi        $t1, $s1, 0x1
/* 057494 800578E4 11200013 */  beqz        $t1, .L80057934
/* 057498 800578E8 00000000 */   nop
/* 05749C 800578EC 3C0CA404 */  lui         $t4, %hi(D_A4040010)
/* 0574A0 800578F0 8D8C0010 */  lw          $t4, %lo(D_A4040010)($t4)
/* 0574A4 800578F4 34098008 */  ori         $t1, $zero, 0x8008
/* 0574A8 800578F8 3C01A404 */  lui         $at, %hi(D_A4040010)
/* 0574AC 800578FC 318C0300 */  andi        $t4, $t4, 0x300
/* 0574B0 80057900 3231003E */  andi        $s1, $s1, 0x3e
/* 0574B4 80057904 11800007 */  beqz        $t4, .L80057924
/* 0574B8 80057908 AC290010 */   sw         $t1, %lo(D_A4040010)($at)
/* 0574BC 8005790C 0C015ED7 */  jal         send_mesg
/* 0574C0 80057910 24040020 */   addiu      $a0, $zero, 0x20
/* 0574C4 80057914 12200042 */  beqz        $s1, .L80057A20
/* 0574C8 80057918 00000000 */   nop
/* 0574CC 8005791C 10000005 */  b           .L80057934
/* 0574D0 80057920 00000000 */   nop
.L80057924:
/* 0574D4 80057924 0C015ED7 */  jal         send_mesg
/* 0574D8 80057928 24040058 */   addiu      $a0, $zero, 0x58
/* 0574DC 8005792C 1220003C */  beqz        $s1, .L80057A20
/* 0574E0 80057930 00000000 */   nop
.L80057934:
/* 0574E4 80057934 32290008 */  andi        $t1, $s1, 0x8
/* 0574E8 80057938 11200007 */  beqz        $t1, .L80057958
/* 0574EC 8005793C 3C01A440 */   lui        $at, %hi(D_A4400010)
/* 0574F0 80057940 32310037 */  andi        $s1, $s1, 0x37
/* 0574F4 80057944 AC200010 */  sw          $zero, %lo(D_A4400010)($at)
/* 0574F8 80057948 0C015ED7 */  jal         send_mesg
/* 0574FC 8005794C 24040038 */   addiu      $a0, $zero, 0x38
/* 057500 80057950 12200033 */  beqz        $s1, .L80057A20
/* 057504 80057954 00000000 */   nop
.L80057958:
/* 057508 80057958 32290004 */  andi        $t1, $s1, 0x4
/* 05750C 8005795C 11200009 */  beqz        $t1, .L80057984
/* 057510 80057960 00000000 */   nop
/* 057514 80057964 24090001 */  addiu       $t1, $zero, 0x1
/* 057518 80057968 3C01A450 */  lui         $at, %hi(D_A450000C)
/* 05751C 8005796C 3231003B */  andi        $s1, $s1, 0x3b
/* 057520 80057970 AC29000C */  sw          $t1, %lo(D_A450000C)($at)
/* 057524 80057974 0C015ED7 */  jal         send_mesg
/* 057528 80057978 24040030 */   addiu      $a0, $zero, 0x30
/* 05752C 8005797C 12200028 */  beqz        $s1, .L80057A20
/* 057530 80057980 00000000 */   nop
.L80057984:
/* 057534 80057984 32290002 */  andi        $t1, $s1, 0x2
/* 057538 80057988 11200007 */  beqz        $t1, .L800579A8
/* 05753C 8005798C 3C01A480 */   lui        $at, %hi(D_A4800018)
/* 057540 80057990 3231003D */  andi        $s1, $s1, 0x3d
/* 057544 80057994 AC200018 */  sw          $zero, %lo(D_A4800018)($at)
/* 057548 80057998 0C015ED7 */  jal         send_mesg
/* 05754C 8005799C 24040028 */   addiu      $a0, $zero, 0x28
/* 057550 800579A0 1220001F */  beqz        $s1, .L80057A20
/* 057554 800579A4 00000000 */   nop
.L800579A8:
/* 057558 800579A8 32290010 */  andi        $t1, $s1, 0x10
/* 05755C 800579AC 11200013 */  beqz        $t1, .L800579FC
/* 057560 800579B0 00000000 */   nop
/* 057564 800579B4 24090002 */  addiu       $t1, $zero, 0x2
/* 057568 800579B8 3C01A460 */  lui         $at, %hi(D_A4600010)
/* 05756C 800579BC AC290010 */  sw          $t1, %lo(D_A4600010)($at)
/* 057570 800579C0 3C09800A */  lui         $t1, %hi(__osPiIntTable)
/* 057574 800579C4 2529F888 */  addiu       $t1, $t1, %lo(__osPiIntTable)
/* 057578 800579C8 8D2A0000 */  lw          $t2, 0x0($t1)
/* 05757C 800579CC 3231002F */  andi        $s1, $s1, 0x2f
/* 057580 800579D0 11400006 */  beqz        $t2, .L800579EC
/* 057584 800579D4 00000000 */   nop
/* 057588 800579D8 8D3D0004 */  lw          $sp, 0x4($t1)
/* 05758C 800579DC 0140F809 */  jalr        $t2
/* 057590 800579E0 00402025 */   move       $a0, $v0
/* 057594 800579E4 14400003 */  bnez        $v0, .L800579F4
/* 057598 800579E8 00000000 */   nop
.L800579EC:
/* 05759C 800579EC 0C015ED7 */  jal         send_mesg
/* 0575A0 800579F0 24040040 */   addiu      $a0, $zero, 0x40
.L800579F4:
/* 0575A4 800579F4 1220000A */  beqz        $s1, .L80057A20
/* 0575A8 800579F8 00000000 */   nop
.L800579FC:
/* 0575AC 800579FC 32290020 */  andi        $t1, $s1, 0x20
/* 0575B0 80057A00 11200007 */  beqz        $t1, .L80057A20
/* 0575B4 80057A04 00000000 */   nop
/* 0575B8 80057A08 24090800 */  addiu       $t1, $zero, 0x800
/* 0575BC 80057A0C 3C01A430 */  lui         $at, %hi(D_A4300000)
/* 0575C0 80057A10 3231001F */  andi        $s1, $s1, 0x1f
/* 0575C4 80057A14 AC290000 */  sw          $t1, %lo(D_A4300000)($at)
/* 0575C8 80057A18 0C015ED7 */  jal         send_mesg
/* 0575CC 80057A1C 24040048 */   addiu      $a0, $zero, 0x48
.L80057A20:
/* 0575D0 80057A20 2401FBFF */  addiu       $at, $zero, -0x401
/* 0575D4 80057A24 1000FF7A */  b           .L80057810
/* 0575D8 80057A28 02018024 */   and        $s0, $s0, $at
glabel L80057A2C
/* 0575DC 80057A2C 8F5B0118 */  lw          $k1, 0x118($k0)
/* 0575E0 80057A30 2401EFFF */  addiu       $at, $zero, -0x1001
/* 0575E4 80057A34 3C09800A */  lui         $t1, %hi(__osShutdown)
/* 0575E8 80057A38 0361D824 */  and         $k1, $k1, $at
/* 0575EC 80057A3C AF5B0118 */  sw          $k1, 0x118($k0)
/* 0575F0 80057A40 2529DC7C */  addiu       $t1, $t1, %lo(__osShutdown)
/* 0575F4 80057A44 8D2A0000 */  lw          $t2, 0x0($t1)
/* 0575F8 80057A48 11400003 */  beqz        $t2, .L80057A58
/* 0575FC 80057A4C 2401EFFF */   addiu      $at, $zero, -0x1001
/* 057600 80057A50 10000023 */  b           L80057AE0
/* 057604 80057A54 02018024 */   and        $s0, $s0, $at
.L80057A58:
/* 057608 80057A58 240A0001 */  addiu       $t2, $zero, 0x1
/* 05760C 80057A5C AD2A0000 */  sw          $t2, 0x0($t1)
/* 057610 80057A60 0C015ED7 */  jal         send_mesg
/* 057614 80057A64 24040070 */   addiu      $a0, $zero, 0x70
/* 057618 80057A68 3C0A800A */  lui         $t2, %hi(__osRunQueue)
/* 05761C 80057A6C 8D4AF898 */  lw          $t2, %lo(__osRunQueue)($t2)
/* 057620 80057A70 2401EFFF */  addiu       $at, $zero, -0x1001
/* 057624 80057A74 02018024 */  and         $s0, $s0, $at
/* 057628 80057A78 8D5B0118 */  lw          $k1, 0x118($t2)
/* 05762C 80057A7C 0361D824 */  and         $k1, $k1, $at
/* 057630 80057A80 10000017 */  b           L80057AE0
/* 057634 80057A84 AD5B0118 */   sw         $k1, 0x118($t2)
glabel L80057A88
/* 057638 80057A88 2401FDFF */  addiu       $at, $zero, -0x201
/* 05763C 80057A8C 01014024 */  and         $t0, $t0, $at
/* 057640 80057A90 40886800 */  mtc0        $t0, Cause
/* 057644 80057A94 0C015ED7 */  jal         send_mesg
/* 057648 80057A98 24040008 */   addiu      $a0, $zero, 0x8
/* 05764C 80057A9C 2401FDFF */  addiu       $at, $zero, -0x201
/* 057650 80057AA0 1000FF5B */  b           .L80057810
/* 057654 80057AA4 02018024 */   and        $s0, $s0, $at
glabel L80057AA8
/* 057658 80057AA8 2401FEFF */  addiu       $at, $zero, -0x101
/* 05765C 80057AAC 01014024 */  and         $t0, $t0, $at
/* 057660 80057AB0 40886800 */  mtc0        $t0, Cause
/* 057664 80057AB4 0C015ED7 */  jal         send_mesg
/* 057668 80057AB8 24040000 */   addiu      $a0, $zero, 0x0
/* 05766C 80057ABC 2401FEFF */  addiu       $at, $zero, -0x101
/* 057670 80057AC0 1000FF53 */  b           .L80057810
/* 057674 80057AC4 02018024 */   and        $s0, $s0, $at
.L80057AC8:
/* 057678 80057AC8 24090001 */  addiu       $t1, $zero, 0x1
/* 05767C 80057ACC A7490012 */  sh          $t1, 0x12($k0)
/* 057680 80057AD0 0C015ED7 */  jal         send_mesg
/* 057684 80057AD4 24040050 */   addiu      $a0, $zero, 0x50
/* 057688 80057AD8 10000001 */  b           L80057AE0
/* 05768C 80057ADC 00000000 */   nop
glabel L80057AE0
/* 057690 80057AE0 3C0A800A */  lui         $t2, %hi(__osRunQueue)
/* 057694 80057AE4 8D4AF898 */  lw          $t2, %lo(__osRunQueue)($t2)
/* 057698 80057AE8 8F490004 */  lw          $t1, 0x4($k0)
/* 05769C 80057AEC 8D4B0004 */  lw          $t3, 0x4($t2)
/* 0576A0 80057AF0 012B082A */  slt         $at, $t1, $t3
/* 0576A4 80057AF4 10200007 */  beqz        $at, .L80057B14
/* 0576A8 80057AF8 00000000 */   nop
/* 0576AC 80057AFC 3C04800A */  lui         $a0, %hi(__osRunQueue)
/* 0576B0 80057B00 03402825 */  move        $a1, $k0
/* 0576B4 80057B04 0C015F51 */  jal         __osEnqueueThread
/* 0576B8 80057B08 2484F898 */   addiu      $a0, $a0, %lo(__osRunQueue)
/* 0576BC 80057B0C 08015F69 */  j           __osDispatchThread
/* 0576C0 80057B10 00000000 */   nop
.L80057B14:
/* 0576C4 80057B14 3C09800A */  lui         $t1, %hi(__osRunQueue)
/* 0576C8 80057B18 2529F898 */  addiu       $t1, $t1, %lo(__osRunQueue)
/* 0576CC 80057B1C 8D2A0000 */  lw          $t2, 0x0($t1)
/* 0576D0 80057B20 AF4A0000 */  sw          $t2, 0x0($k0)
/* 0576D4 80057B24 08015F69 */  j           __osDispatchThread
/* 0576D8 80057B28 AD3A0000 */   sw         $k0, 0x0($t1)
.L80057B2C:
/* 0576DC 80057B2C 3C01800A */  lui         $at, %hi(__osFaultedThread)
/* 0576E0 80057B30 AC3AF8A4 */  sw          $k0, %lo(__osFaultedThread)($at)
/* 0576E4 80057B34 24090001 */  addiu       $t1, $zero, 0x1
/* 0576E8 80057B38 A7490010 */  sh          $t1, 0x10($k0)
/* 0576EC 80057B3C 24090002 */  addiu       $t1, $zero, 0x2
/* 0576F0 80057B40 A7490012 */  sh          $t1, 0x12($k0)
/* 0576F4 80057B44 400A4000 */  mfc0        $t2, BadVaddr
/* 0576F8 80057B48 AF4A0124 */  sw          $t2, 0x124($k0)
/* 0576FC 80057B4C 0C015ED7 */  jal         send_mesg
/* 057700 80057B50 24040060 */   addiu      $a0, $zero, 0x60
/* 057704 80057B54 08015F69 */  j           __osDispatchThread
/* 057708 80057B58 00000000 */   nop

glabel send_mesg # 2
/* 05770C 80057B5C 3C0A8010 */  lui         $t2, %hi(__osEventStateTab)
/* 057710 80057B60 254ADB90 */  addiu       $t2, $t2, %lo(__osEventStateTab)
/* 057714 80057B64 01445021 */  addu        $t2, $t2, $a0
/* 057718 80057B68 8D490000 */  lw          $t1, 0x0($t2)
/* 05771C 80057B6C 03E09025 */  move        $s2, $ra
/* 057720 80057B70 11200025 */  beqz        $t1, .L80057C08
/* 057724 80057B74 00000000 */   nop
/* 057728 80057B78 8D2B0008 */  lw          $t3, 0x8($t1)
/* 05772C 80057B7C 8D2C0010 */  lw          $t4, 0x10($t1)
/* 057730 80057B80 016C082A */  slt         $at, $t3, $t4
/* 057734 80057B84 10200020 */  beqz        $at, .L80057C08
/* 057738 80057B88 00000000 */   nop
/* 05773C 80057B8C 8D2D000C */  lw          $t5, 0xc($t1)
/* 057740 80057B90 01AB6821 */  addu        $t5, $t5, $t3
/* 057744 80057B94 01AC001A */  div         $zero, $t5, $t4
/* 057748 80057B98 15800002 */  bnez        $t4, .L80057BA4
/* 05774C 80057B9C 00000000 */   nop
/* 057750 80057BA0 0007000D */  break       7
.L80057BA4:
/* 057754 80057BA4 2401FFFF */  addiu       $at, $zero, -0x1
/* 057758 80057BA8 15810004 */  bne         $t4, $at, .L80057BBC
/* 05775C 80057BAC 3C018000 */   lui        $at, 0x8000
/* 057760 80057BB0 15A10002 */  bne         $t5, $at, .L80057BBC
/* 057764 80057BB4 00000000 */   nop
/* 057768 80057BB8 0006000D */  break       6
.L80057BBC:
/* 05776C 80057BBC 8D2C0014 */  lw          $t4, 0x14($t1)
/* 057770 80057BC0 00006810 */  mfhi        $t5
/* 057774 80057BC4 000D6880 */  sll         $t5, $t5, 2
/* 057778 80057BC8 018D6021 */  addu        $t4, $t4, $t5
/* 05777C 80057BCC 8D4D0004 */  lw          $t5, 0x4($t2)
/* 057780 80057BD0 256A0001 */  addiu       $t2, $t3, 0x1
/* 057784 80057BD4 AD8D0000 */  sw          $t5, 0x0($t4)
/* 057788 80057BD8 AD2A0008 */  sw          $t2, 0x8($t1)
/* 05778C 80057BDC 8D2A0000 */  lw          $t2, 0x0($t1)
/* 057790 80057BE0 8D4B0000 */  lw          $t3, 0x0($t2)
/* 057794 80057BE4 11600008 */  beqz        $t3, .L80057C08
/* 057798 80057BE8 00000000 */   nop
/* 05779C 80057BEC 0C015F63 */  jal         __osPopThread
/* 0577A0 80057BF0 01202025 */   move       $a0, $t1
/* 0577A4 80057BF4 00405025 */  move        $t2, $v0
/* 0577A8 80057BF8 3C04800A */  lui         $a0, %hi(__osRunQueue)
/* 0577AC 80057BFC 01402825 */  move        $a1, $t2
/* 0577B0 80057C00 0C015F51 */  jal         __osEnqueueThread
/* 0577B4 80057C04 2484F898 */   addiu      $a0, $a0, %lo(__osRunQueue)
.L80057C08:
/* 0577B8 80057C08 02400008 */  jr          $s2
/* 0577BC 80057C0C 00000000 */   nop

glabel handle_CpU # 3
/* 0577C0 80057C10 3C013000 */  lui         $at, 0x3000
/* 0577C4 80057C14 01014824 */  and         $t1, $t0, $at
/* 0577C8 80057C18 00094F02 */  srl         $t1, $t1, 28
/* 0577CC 80057C1C 240A0001 */  addiu       $t2, $zero, 0x1
/* 0577D0 80057C20 152AFFC2 */  bne         $t1, $t2, .L80057B2C
/* 0577D4 80057C24 00000000 */   nop
/* 0577D8 80057C28 8F5B0118 */  lw          $k1, 0x118($k0)
/* 0577DC 80057C2C 3C012000 */  lui         $at, 0x2000
/* 0577E0 80057C30 24090001 */  addiu       $t1, $zero, 0x1
/* 0577E4 80057C34 0361D825 */  or          $k1, $k1, $at
/* 0577E8 80057C38 AF490018 */  sw          $t1, 0x18($k0)
/* 0577EC 80057C3C 1000FFB5 */  b           .L80057B14
/* 0577F0 80057C40 AF5B0118 */   sw         $k1, 0x118($k0)

glabel __osEnqueueAndYield # 4
/* 0577F4 80057C44 3C05800A */  lui         $a1, %hi(__osRunningThread)
/* 0577F8 80057C48 8CA5F8A0 */  lw          $a1, %lo(__osRunningThread)($a1)
/* 0577FC 80057C4C 40086000 */  mfc0        $t0, Status
/* 057800 80057C50 8CBB0018 */  lw          $k1, 0x18($a1)
/* 057804 80057C54 35080002 */  ori         $t0, $t0, 0x2
/* 057808 80057C58 ACA80118 */  sw          $t0, 0x118($a1)
/* 05780C 80057C5C FCB00098 */  sd          $s0, 0x98($a1)
/* 057810 80057C60 FCB100A0 */  sd          $s1, 0xa0($a1)
/* 057814 80057C64 FCB200A8 */  sd          $s2, 0xa8($a1)
/* 057818 80057C68 FCB300B0 */  sd          $s3, 0xb0($a1)
/* 05781C 80057C6C FCB400B8 */  sd          $s4, 0xb8($a1)
/* 057820 80057C70 FCB500C0 */  sd          $s5, 0xc0($a1)
/* 057824 80057C74 FCB600C8 */  sd          $s6, 0xc8($a1)
/* 057828 80057C78 FCB700D0 */  sd          $s7, 0xd0($a1)
/* 05782C 80057C7C FCBC00E8 */  sd          $gp, 0xe8($a1)
/* 057830 80057C80 FCBD00F0 */  sd          $sp, 0xf0($a1)
/* 057834 80057C84 FCBE00F8 */  sd          $fp, 0xf8($a1)
/* 057838 80057C88 FCBF0100 */  sd          $ra, 0x100($a1)
/* 05783C 80057C8C 13600009 */  beqz        $k1, .L80057CB4
/* 057840 80057C90 ACBF011C */   sw         $ra, 0x11c($a1)
/* 057844 80057C94 445BF800 */  cfc1        $k1, $31
/* 057848 80057C98 F4B40180 */  sdc1        $f20, 0x180($a1)
/* 05784C 80057C9C F4B60188 */  sdc1        $f22, 0x188($a1)
/* 057850 80057CA0 F4B80190 */  sdc1        $f24, 0x190($a1)
/* 057854 80057CA4 F4BA0198 */  sdc1        $f26, 0x198($a1)
/* 057858 80057CA8 F4BC01A0 */  sdc1        $f28, 0x1a0($a1)
/* 05785C 80057CAC F4BE01A8 */  sdc1        $f30, 0x1a8($a1)
/* 057860 80057CB0 ACBB012C */  sw          $k1, 0x12c($a1)
.L80057CB4:
/* 057864 80057CB4 8CBB0118 */  lw          $k1, 0x118($a1)
/* 057868 80057CB8 3369FF00 */  andi        $t1, $k1, 0xff00
/* 05786C 80057CBC 1120000D */  beqz        $t1, .L80057CF4
/* 057870 80057CC0 00000000 */   nop
/* 057874 80057CC4 3C08800A */  lui         $t0, %hi(__OSGlobalIntMask)
/* 057878 80057CC8 2508DC80 */  addiu       $t0, $t0, %lo(__OSGlobalIntMask)
/* 05787C 80057CCC 8D080000 */  lw          $t0, 0x0($t0)
/* 057880 80057CD0 2401FFFF */  addiu       $at, $zero, -0x1
/* 057884 80057CD4 01014026 */  xor         $t0, $t0, $at
/* 057888 80057CD8 3C01FFFF */  lui         $at, 0xffff
/* 05788C 80057CDC 3108FF00 */  andi        $t0, $t0, 0xff00
/* 057890 80057CE0 342100FF */  ori         $at, $at, 0xff
/* 057894 80057CE4 01284825 */  or          $t1, $t1, $t0
/* 057898 80057CE8 0361D824 */  and         $k1, $k1, $at
/* 05789C 80057CEC 0369D825 */  or          $k1, $k1, $t1
/* 0578A0 80057CF0 ACBB0118 */  sw          $k1, 0x118($a1)
.L80057CF4:
/* 0578A4 80057CF4 3C1BA430 */  lui         $k1, %hi(D_A430000C)
/* 0578A8 80057CF8 8F7B000C */  lw          $k1, %lo(D_A430000C)($k1)
/* 0578AC 80057CFC 1360000B */  beqz        $k1, .L80057D2C
/* 0578B0 80057D00 00000000 */   nop
/* 0578B4 80057D04 3C1A800A */  lui         $k0, %hi(__OSGlobalIntMask)
/* 0578B8 80057D08 275ADC80 */  addiu       $k0, $k0, %lo(__OSGlobalIntMask)
/* 0578BC 80057D0C 8F5A0000 */  lw          $k0, 0x0($k0)
/* 0578C0 80057D10 8CA80128 */  lw          $t0, 0x128($a1)
/* 0578C4 80057D14 2401FFFF */  addiu       $at, $zero, -0x1
/* 0578C8 80057D18 001AD402 */  srl         $k0, $k0, 16
/* 0578CC 80057D1C 0341D026 */  xor         $k0, $k0, $at
/* 0578D0 80057D20 335A003F */  andi        $k0, $k0, 0x3f
/* 0578D4 80057D24 0348D024 */  and         $k0, $k0, $t0
/* 0578D8 80057D28 037AD825 */  or          $k1, $k1, $k0
.L80057D2C:
/* 0578DC 80057D2C 10800003 */  beqz        $a0, .L80057D3C
/* 0578E0 80057D30 ACBB0128 */   sw         $k1, 0x128($a1)
/* 0578E4 80057D34 0C015F51 */  jal         __osEnqueueThread
/* 0578E8 80057D38 00000000 */   nop
.L80057D3C:
/* 0578EC 80057D3C 08015F69 */  j           __osDispatchThread
/* 0578F0 80057D40 00000000 */   nop

glabel __osEnqueueThread # 5
/* 0578F4 80057D44 8C980000 */  lw          $t8, 0x0($a0)
/* 0578F8 80057D48 8CAF0004 */  lw          $t7, 0x4($a1)
/* 0578FC 80057D4C 0080C825 */  move        $t9, $a0
/* 057900 80057D50 8F0E0004 */  lw          $t6, 0x4($t8)
/* 057904 80057D54 01CF082A */  slt         $at, $t6, $t7
/* 057908 80057D58 14200007 */  bnez        $at, .L80057D78
/* 05790C 80057D5C 00000000 */   nop
.L80057D60:
/* 057910 80057D60 0300C825 */  move        $t9, $t8
/* 057914 80057D64 8F180000 */  lw          $t8, 0x0($t8)
/* 057918 80057D68 8F0E0004 */  lw          $t6, 0x4($t8)
/* 05791C 80057D6C 01CF082A */  slt         $at, $t6, $t7
/* 057920 80057D70 1020FFFB */  beqz        $at, .L80057D60
/* 057924 80057D74 00000000 */   nop
.L80057D78:
/* 057928 80057D78 8F380000 */  lw          $t8, 0x0($t9)
/* 05792C 80057D7C ACB80000 */  sw          $t8, 0x0($a1)
/* 057930 80057D80 AF250000 */  sw          $a1, 0x0($t9)
/* 057934 80057D84 03E00008 */  jr          $ra
/* 057938 80057D88 ACA40008 */   sw         $a0, 0x8($a1)

glabel __osPopThread # 6
/* 05793C 80057D8C 8C820000 */  lw          $v0, 0x0($a0)
/* 057940 80057D90 8C590000 */  lw          $t9, 0x0($v0)
/* 057944 80057D94 03E00008 */  jr          $ra
/* 057948 80057D98 AC990000 */   sw         $t9, 0x0($a0)

glabel __osNop # 7
/* 05794C 80057D9C 03E00008 */  jr          $ra
/* 057950 80057DA0 00000000 */   nop

glabel __osDispatchThread # 8
/* 057954 80057DA4 3C04800A */  lui         $a0, %hi(__osRunQueue)
/* 057958 80057DA8 0C015F63 */  jal         __osPopThread
/* 05795C 80057DAC 2484F898 */   addiu      $a0, $a0, %lo(__osRunQueue)
/* 057960 80057DB0 3C01800A */  lui         $at, %hi(__osRunningThread)
/* 057964 80057DB4 AC22F8A0 */  sw          $v0, %lo(__osRunningThread)($at)
/* 057968 80057DB8 24080004 */  addiu       $t0, $zero, 0x4
/* 05796C 80057DBC A4480010 */  sh          $t0, 0x10($v0)
/* 057970 80057DC0 0040D025 */  move        $k0, $v0
/* 057974 80057DC4 3C08800A */  lui         $t0, %hi(__OSGlobalIntMask)
/* 057978 80057DC8 8F5B0118 */  lw          $k1, 0x118($k0)
/* 05797C 80057DCC 2508DC80 */  addiu       $t0, $t0, %lo(__OSGlobalIntMask)
/* 057980 80057DD0 8D080000 */  lw          $t0, 0x0($t0)
/* 057984 80057DD4 3C01FFFF */  lui         $at, 0xffff
/* 057988 80057DD8 3369FF00 */  andi        $t1, $k1, 0xff00
/* 05798C 80057DDC 342100FF */  ori         $at, $at, 0xff
/* 057990 80057DE0 3108FF00 */  andi        $t0, $t0, 0xff00
/* 057994 80057DE4 01284824 */  and         $t1, $t1, $t0
/* 057998 80057DE8 0361D824 */  and         $k1, $k1, $at
/* 05799C 80057DEC 0369D825 */  or          $k1, $k1, $t1
/* 0579A0 80057DF0 409B6000 */  mtc0        $k1, Status
/* 0579A4 80057DF4 DF5B0108 */  ld          $k1, 0x108($k0)
/* 0579A8 80057DF8 DF410020 */  ld          $at, 0x20($k0)
/* 0579AC 80057DFC DF420028 */  ld          $v0, 0x28($k0)
/* 0579B0 80057E00 03600013 */  mtlo        $k1
/* 0579B4 80057E04 DF5B0110 */  ld          $k1, 0x110($k0)
/* 0579B8 80057E08 DF430030 */  ld          $v1, 0x30($k0)
/* 0579BC 80057E0C DF440038 */  ld          $a0, 0x38($k0)
/* 0579C0 80057E10 DF450040 */  ld          $a1, 0x40($k0)
/* 0579C4 80057E14 DF460048 */  ld          $a2, 0x48($k0)
/* 0579C8 80057E18 DF470050 */  ld          $a3, 0x50($k0)
/* 0579CC 80057E1C DF480058 */  ld          $t0, 0x58($k0)
/* 0579D0 80057E20 DF490060 */  ld          $t1, 0x60($k0)
/* 0579D4 80057E24 DF4A0068 */  ld          $t2, 0x68($k0)
/* 0579D8 80057E28 DF4B0070 */  ld          $t3, 0x70($k0)
/* 0579DC 80057E2C DF4C0078 */  ld          $t4, 0x78($k0)
/* 0579E0 80057E30 DF4D0080 */  ld          $t5, 0x80($k0)
/* 0579E4 80057E34 DF4E0088 */  ld          $t6, 0x88($k0)
/* 0579E8 80057E38 DF4F0090 */  ld          $t7, 0x90($k0)
/* 0579EC 80057E3C DF500098 */  ld          $s0, 0x98($k0)
/* 0579F0 80057E40 DF5100A0 */  ld          $s1, 0xa0($k0)
/* 0579F4 80057E44 DF5200A8 */  ld          $s2, 0xa8($k0)
/* 0579F8 80057E48 DF5300B0 */  ld          $s3, 0xb0($k0)
/* 0579FC 80057E4C DF5400B8 */  ld          $s4, 0xb8($k0)
/* 057A00 80057E50 DF5500C0 */  ld          $s5, 0xc0($k0)
/* 057A04 80057E54 DF5600C8 */  ld          $s6, 0xc8($k0)
/* 057A08 80057E58 DF5700D0 */  ld          $s7, 0xd0($k0)
/* 057A0C 80057E5C DF5800D8 */  ld          $t8, 0xd8($k0)
/* 057A10 80057E60 DF5900E0 */  ld          $t9, 0xe0($k0)
/* 057A14 80057E64 DF5C00E8 */  ld          $gp, 0xe8($k0)
/* 057A18 80057E68 03600011 */  mthi        $k1
/* 057A1C 80057E6C DF5D00F0 */  ld          $sp, 0xf0($k0)
/* 057A20 80057E70 DF5E00F8 */  ld          $fp, 0xf8($k0)
/* 057A24 80057E74 DF5F0100 */  ld          $ra, 0x100($k0)
/* 057A28 80057E78 8F5B011C */  lw          $k1, 0x11c($k0)
/* 057A2C 80057E7C 409B7000 */  mtc0        $k1, EPC
/* 057A30 80057E80 8F5B0018 */  lw          $k1, 0x18($k0)
/* 057A34 80057E84 13600013 */  beqz        $k1, .L80057ED4
/* 057A38 80057E88 00000000 */   nop
/* 057A3C 80057E8C 8F5B012C */  lw          $k1, 0x12c($k0)
/* 057A40 80057E90 44DBF800 */  ctc1        $k1, $31
/* 057A44 80057E94 D7400130 */  ldc1        $f0, 0x130($k0)
/* 057A48 80057E98 D7420138 */  ldc1        $f2, 0x138($k0)
/* 057A4C 80057E9C D7440140 */  ldc1        $f4, 0x140($k0)
/* 057A50 80057EA0 D7460148 */  ldc1        $f6, 0x148($k0)
/* 057A54 80057EA4 D7480150 */  ldc1        $f8, 0x150($k0)
/* 057A58 80057EA8 D74A0158 */  ldc1        $f10, 0x158($k0)
/* 057A5C 80057EAC D74C0160 */  ldc1        $f12, 0x160($k0)
/* 057A60 80057EB0 D74E0168 */  ldc1        $f14, 0x168($k0)
/* 057A64 80057EB4 D7500170 */  ldc1        $f16, 0x170($k0)
/* 057A68 80057EB8 D7520178 */  ldc1        $f18, 0x178($k0)
/* 057A6C 80057EBC D7540180 */  ldc1        $f20, 0x180($k0)
/* 057A70 80057EC0 D7560188 */  ldc1        $f22, 0x188($k0)
/* 057A74 80057EC4 D7580190 */  ldc1        $f24, 0x190($k0)
/* 057A78 80057EC8 D75A0198 */  ldc1        $f26, 0x198($k0)
/* 057A7C 80057ECC D75C01A0 */  ldc1        $f28, 0x1a0($k0)
/* 057A80 80057ED0 D75E01A8 */  ldc1        $f30, 0x1a8($k0)
.L80057ED4:
/* 057A84 80057ED4 8F5B0128 */  lw          $k1, 0x128($k0)
/* 057A88 80057ED8 3C1A800A */  lui         $k0, %hi(__OSGlobalIntMask)
/* 057A8C 80057EDC 275ADC80 */  addiu       $k0, $k0, %lo(__OSGlobalIntMask)
/* 057A90 80057EE0 8F5A0000 */  lw          $k0, 0x0($k0)
/* 057A94 80057EE4 001AD402 */  srl         $k0, $k0, 16
/* 057A98 80057EE8 037AD824 */  and         $k1, $k1, $k0
/* 057A9C 80057EEC 001BD840 */  sll         $k1, $k1, 1
/* 057AA0 80057EF0 3C1A800A */  lui         $k0, %hi(D_800A7D40)
/* 057AA4 80057EF4 275A7D40 */  addiu       $k0, $k0, %lo(D_800A7D40)
/* 057AA8 80057EF8 037AD821 */  addu        $k1, $k1, $k0
/* 057AAC 80057EFC 977B0000 */  lhu         $k1, 0x0($k1)
/* 057AB0 80057F00 3C1AA430 */  lui         $k0, %hi(D_A430000C)
/* 057AB4 80057F04 275A000C */  addiu       $k0, $k0, %lo(D_A430000C)
/* 057AB8 80057F08 AF5B0000 */  sw          $k1, 0x0($k0)
/* 057ABC 80057F0C 00000000 */  nop
/* 057AC0 80057F10 00000000 */  nop
/* 057AC4 80057F14 00000000 */  nop
/* 057AC8 80057F18 00000000 */  nop
/* 057ACC 80057F1C 42000018 */  eret

glabel __osCleanupThread # 9
/* 057AD0 80057F20 0C01755C */  jal         osDestroyThread
/* 057AD4 80057F24 00002025 */   move       $a0, $zero
/* 057AD8 80057F28 00000000 */  nop
/* 057ADC 80057F2C 00000000 */  nop
