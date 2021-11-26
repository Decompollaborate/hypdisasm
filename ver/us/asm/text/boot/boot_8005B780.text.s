.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005B780 # 0
/* 05B330 8005B780 27BDFF68 */  addiu       $sp, $sp, -0x98
/* 05B334 8005B784 AFBF0044 */  sw          $ra, 0x44($sp)
/* 05B338 8005B788 AFBE0040 */  sw          $fp, 0x40($sp)
/* 05B33C 8005B78C AFB7003C */  sw          $s7, 0x3c($sp)
/* 05B340 8005B790 AFB60038 */  sw          $s6, 0x38($sp)
/* 05B344 8005B794 AFB50034 */  sw          $s5, 0x34($sp)
/* 05B348 8005B798 AFB40030 */  sw          $s4, 0x30($sp)
/* 05B34C 8005B79C AFB3002C */  sw          $s3, 0x2c($sp)
/* 05B350 8005B7A0 AFB20028 */  sw          $s2, 0x28($sp)
/* 05B354 8005B7A4 AFB10024 */  sw          $s1, 0x24($sp)
/* 05B358 8005B7A8 AFB00020 */  sw          $s0, 0x20($sp)
/* 05B35C 8005B7AC AFA5009C */  sw          $a1, 0x9c($sp)
/* 05B360 8005B7B0 AFA600A0 */  sw          $a2, 0xa0($sp)
/* 05B364 8005B7B4 AFA40090 */  sw          $a0, 0x90($sp)
/* 05B368 8005B7B8 A7A0007E */  sh          $zero, 0x7e($sp)
/* 05B36C 8005B7BC A7A0008E */  sh          $zero, 0x8e($sp)
/* 05B370 8005B7C0 8C8E003C */  lw          $t6, 0x3c($a0)
/* 05B374 8005B7C4 00808025 */  move        $s0, $a0
/* 05B378 8005B7C8 00E0F025 */  move        $fp, $a3
/* 05B37C 8005B7CC 8FB400A8 */  lw          $s4, 0xa8($sp)
/* 05B380 8005B7D0 11C00112 */  beqz        $t6, .L8005BC1C
/* 05B384 8005B7D4 00E0B825 */   move       $s7, $a3
/* 05B388 8005B7D8 3C16800A */  lui         $s6, %hi(D_8009FAB0)
/* 05B38C 8005B7DC 3C15800A */  lui         $s5, %hi(D_8009F9B0)
/* 05B390 8005B7E0 26B5F9B0 */  addiu       $s5, $s5, %lo(D_8009F9B0)
/* 05B394 8005B7E4 26D6FAB0 */  addiu       $s6, $s6, %lo(D_8009FAB0)
/* 05B398 8005B7E8 24130001 */  addiu       $s3, $zero, 0x1
/* 05B39C 8005B7EC 8E03003C */  lw          $v1, 0x3c($s0)
.L8005B7F0:
/* 05B3A0 8005B7F0 02E01025 */  move        $v0, $s7
/* 05B3A4 8005B7F4 8FAF00A0 */  lw          $t7, 0xa0($sp)
/* 05B3A8 8005B7F8 8C770004 */  lw          $s7, 0x4($v1)
/* 05B3AC 8005B7FC 02E29023 */  subu        $s2, $s7, $v0
/* 05B3B0 8005B800 01F2082A */  slt         $at, $t7, $s2
/* 05B3B4 8005B804 54200106 */  bnel        $at, $zero, .L8005BC20
/* 05B3B8 8005B808 02002025 */   move       $a0, $s0
/* 05B3BC 8005B80C 94780008 */  lhu         $t8, 0x8($v1)
/* 05B3C0 8005B810 2F010011 */  sltiu       $at, $t8, 0x11
/* 05B3C4 8005B814 102000E1 */  beqz        $at, L8005BB9C
/* 05B3C8 8005B818 0018C080 */   sll        $t8, $t8, 2
/* 05B3CC 8005B81C 3C01800B */  lui         $at, %hi(jtbl_800A8040)
/* 05B3D0 8005B820 00380821 */  addu        $at, $at, $t8
/* 05B3D4 8005B824 8C388040 */  lw          $t8, %lo(jtbl_800A8040)($at)
/* 05B3D8 8005B828 03000008 */  jr          $t8
/* 05B3DC 8005B82C 00000000 */   nop
glabel L8005B830
/* 05B3E0 8005B830 8479000A */  lh          $t9, 0xa($v1)
/* 05B3E4 8005B834 00608825 */  move        $s1, $v1
/* 05B3E8 8005B838 53200007 */  beql        $t9, $zero, .L8005B858
/* 05B3EC 8005B83C 8E190008 */   lw         $t9, 0x8($s0)
/* 05B3F0 8005B840 8E190008 */  lw          $t9, 0x8($s0)
/* 05B3F4 8005B844 02002025 */  move        $a0, $s0
/* 05B3F8 8005B848 24050008 */  addiu       $a1, $zero, 0x8
/* 05B3FC 8005B84C 0320F809 */  jalr        $t9
/* 05B400 8005B850 00003025 */   move       $a2, $zero
/* 05B404 8005B854 8E190008 */  lw          $t9, 0x8($s0)
.L8005B858:
/* 05B408 8005B858 02002025 */  move        $a0, $s0
/* 05B40C 8005B85C 24050005 */  addiu       $a1, $zero, 0x5
/* 05B410 8005B860 0320F809 */  jalr        $t9
/* 05B414 8005B864 8E260018 */   lw         $a2, 0x18($s1)
/* 05B418 8005B868 8E190008 */  lw          $t9, 0x8($s0)
/* 05B41C 8005B86C 02002025 */  move        $a0, $s0
/* 05B420 8005B870 24050009 */  addiu       $a1, $zero, 0x9
/* 05B424 8005B874 0320F809 */  jalr        $t9
/* 05B428 8005B878 00003025 */   move       $a2, $zero
/* 05B42C 8005B87C AE130038 */  sw          $s3, 0x38($s0)
/* 05B430 8005B880 AE000030 */  sw          $zero, 0x30($s0)
/* 05B434 8005B884 8E280014 */  lw          $t0, 0x14($s1)
/* 05B438 8005B888 AE080034 */  sw          $t0, 0x34($s0)
/* 05B43C 8005B88C 86230010 */  lh          $v1, 0x10($s1)
/* 05B440 8005B890 00630019 */  multu       $v1, $v1
/* 05B444 8005B894 00002012 */  mflo        $a0
/* 05B448 8005B898 00044BC3 */  sra         $t1, $a0, 15
/* 05B44C 8005B89C A609001A */  sh          $t1, 0x1a($s0)
/* 05B450 8005B8A0 922A0012 */  lbu         $t2, 0x12($s1)
/* 05B454 8005B8A4 A60A0018 */  sh          $t2, 0x18($s0)
/* 05B458 8005B8A8 922B0013 */  lbu         $t3, 0x13($s1)
/* 05B45C 8005B8AC 000B6040 */  sll         $t4, $t3, 1
/* 05B460 8005B8B0 02AC6821 */  addu        $t5, $s5, $t4
/* 05B464 8005B8B4 85AE0000 */  lh          $t6, 0x0($t5)
/* 05B468 8005B8B8 A60E0020 */  sh          $t6, 0x20($s0)
/* 05B46C 8005B8BC 922F0013 */  lbu         $t7, 0x13($s1)
/* 05B470 8005B8C0 000FC040 */  sll         $t8, $t7, 1
/* 05B474 8005B8C4 0018C823 */  negu        $t9, $t8
/* 05B478 8005B8C8 02D94021 */  addu        $t0, $s6, $t9
/* 05B47C 8005B8CC 8509FFFE */  lh          $t1, -0x2($t0)
/* 05B480 8005B8D0 A6090022 */  sh          $t1, 0x22($s0)
/* 05B484 8005B8D4 8E2A0014 */  lw          $t2, 0x14($s1)
/* 05B488 8005B8D8 51400005 */  beql        $t2, $zero, .L8005B8F0
/* 05B48C 8005B8DC 86020018 */   lh         $v0, 0x18($s0)
/* 05B490 8005B8E0 A613001C */  sh          $s3, 0x1c($s0)
/* 05B494 8005B8E4 10000011 */  b           .L8005B92C
/* 05B498 8005B8E8 A613001E */   sh         $s3, 0x1e($s0)
/* 05B49C 8005B8EC 86020018 */  lh          $v0, 0x18($s0)
.L8005B8F0:
/* 05B4A0 8005B8F0 8603001A */  lh          $v1, 0x1a($s0)
/* 05B4A4 8005B8F4 00025840 */  sll         $t3, $v0, 1
/* 05B4A8 8005B8F8 02AB6021 */  addu        $t4, $s5, $t3
/* 05B4AC 8005B8FC 858D0000 */  lh          $t5, 0x0($t4)
/* 05B4B0 8005B900 000BC023 */  negu        $t8, $t3
/* 05B4B4 8005B904 02D8C821 */  addu        $t9, $s6, $t8
/* 05B4B8 8005B908 01A30019 */  multu       $t5, $v1
/* 05B4BC 8005B90C 00007012 */  mflo        $t6
/* 05B4C0 8005B910 000E7BC3 */  sra         $t7, $t6, 15
/* 05B4C4 8005B914 A60F001C */  sh          $t7, 0x1c($s0)
/* 05B4C8 8005B918 8728FFFE */  lh          $t0, -0x2($t9)
/* 05B4CC 8005B91C 01030019 */  multu       $t0, $v1
/* 05B4D0 8005B920 00004812 */  mflo        $t1
/* 05B4D4 8005B924 000953C3 */  sra         $t2, $t1, 15
/* 05B4D8 8005B928 A60A001E */  sh          $t2, 0x1e($s0)
.L8005B92C:
/* 05B4DC 8005B92C 8E0B0000 */  lw          $t3, 0x0($s0)
/* 05B4E0 8005B930 516000A9 */  beql        $t3, $zero, .L8005BBD8
/* 05B4E4 8005B934 87B8007E */   lh         $t8, 0x7e($sp)
/* 05B4E8 8005B938 C624000C */  lwc1        $f4, 0xc($s1)
/* 05B4EC 8005B93C 24050007 */  addiu       $a1, $zero, 0x7
/* 05B4F0 8005B940 E7A40064 */  swc1        $f4, 0x64($sp)
/* 05B4F4 8005B944 8E040000 */  lw          $a0, 0x0($s0)
/* 05B4F8 8005B948 8FA60064 */  lw          $a2, 0x64($sp)
/* 05B4FC 8005B94C 8C990008 */  lw          $t9, 0x8($a0)
/* 05B500 8005B950 0320F809 */  jalr        $t9
/* 05B504 8005B954 00000000 */   nop
/* 05B508 8005B958 1000009F */  b           .L8005BBD8
/* 05B50C 8005B95C 87B8007E */   lh         $t8, 0x7e($sp)
glabel L8005B960
/* 05B510 8005B960 02002025 */  move        $a0, $s0
/* 05B514 8005B964 27A5008E */  addiu       $a1, $sp, 0x8e
/* 05B518 8005B968 27A6007E */  addiu       $a2, $sp, 0x7e
/* 05B51C 8005B96C 02403825 */  move        $a3, $s2
/* 05B520 8005B970 AFBE0010 */  sw          $fp, 0x10($sp)
/* 05B524 8005B974 0C016F5A */  jal         func_8005BD68
/* 05B528 8005B978 AFB40014 */   sw         $s4, 0x14($sp)
/* 05B52C 8005B97C 8E050030 */  lw          $a1, 0x30($s0)
/* 05B530 8005B980 8E040034 */  lw          $a0, 0x34($s0)
/* 05B534 8005B984 0040A025 */  move        $s4, $v0
/* 05B538 8005B988 00A4082A */  slt         $at, $a1, $a0
/* 05B53C 8005B98C 54200018 */  bnel        $at, $zero, .L8005B9F0
/* 05B540 8005B990 860E001C */   lh         $t6, 0x1c($s0)
/* 05B544 8005B994 86020018 */  lh          $v0, 0x18($s0)
/* 05B548 8005B998 8603001A */  lh          $v1, 0x1a($s0)
/* 05B54C 8005B99C 00026040 */  sll         $t4, $v0, 1
/* 05B550 8005B9A0 02AC6821 */  addu        $t5, $s5, $t4
/* 05B554 8005B9A4 85AE0000 */  lh          $t6, 0x0($t5)
/* 05B558 8005B9A8 000C4023 */  negu        $t0, $t4
/* 05B55C 8005B9AC 02C84821 */  addu        $t1, $s6, $t0
/* 05B560 8005B9B0 01C30019 */  multu       $t6, $v1
/* 05B564 8005B9B4 00007812 */  mflo        $t7
/* 05B568 8005B9B8 000FC3C3 */  sra         $t8, $t7, 15
/* 05B56C 8005B9BC A6180028 */  sh          $t8, 0x28($s0)
/* 05B570 8005B9C0 852AFFFE */  lh          $t2, -0x2($t1)
/* 05B574 8005B9C4 860C0028 */  lh          $t4, 0x28($s0)
/* 05B578 8005B9C8 AE040030 */  sw          $a0, 0x30($s0)
/* 05B57C 8005B9CC 01430019 */  multu       $t2, $v1
/* 05B580 8005B9D0 A60C001C */  sh          $t4, 0x1c($s0)
/* 05B584 8005B9D4 00005812 */  mflo        $t3
/* 05B588 8005B9D8 000BCBC3 */  sra         $t9, $t3, 15
/* 05B58C 8005B9DC A619002E */  sh          $t9, 0x2e($s0)
/* 05B590 8005B9E0 860D002E */  lh          $t5, 0x2e($s0)
/* 05B594 8005B9E4 10000015 */  b           .L8005BA3C
/* 05B598 8005B9E8 A60D001E */   sh         $t5, 0x1e($s0)
/* 05B59C 8005B9EC 860E001C */  lh          $t6, 0x1c($s0)
.L8005B9F0:
/* 05B5A0 8005B9F0 86060026 */  lh          $a2, 0x26($s0)
/* 05B5A4 8005B9F4 96070024 */  lhu         $a3, 0x24($s0)
/* 05B5A8 8005B9F8 448E3000 */  mtc1        $t6, $f6
/* 05B5AC 8005B9FC 0C0170D2 */  jal         func_8005C348
/* 05B5B0 8005BA00 46803320 */   cvt.s.w    $f12, $f6
/* 05B5B4 8005BA04 4600020D */  trunc.w.s   $f8, $f0
/* 05B5B8 8005BA08 8608001E */  lh          $t0, 0x1e($s0)
/* 05B5BC 8005BA0C 8E050030 */  lw          $a1, 0x30($s0)
/* 05B5C0 8005BA10 8606002C */  lh          $a2, 0x2c($s0)
/* 05B5C4 8005BA14 44184000 */  mfc1        $t8, $f8
/* 05B5C8 8005BA18 44885000 */  mtc1        $t0, $f10
/* 05B5CC 8005BA1C 9607002A */  lhu         $a3, 0x2a($s0)
/* 05B5D0 8005BA20 A618001C */  sh          $t8, 0x1c($s0)
/* 05B5D4 8005BA24 0C0170D2 */  jal         func_8005C348
/* 05B5D8 8005BA28 46805320 */   cvt.s.w    $f12, $f10
/* 05B5DC 8005BA2C 4600040D */  trunc.w.s   $f16, $f0
/* 05B5E0 8005BA30 440A8000 */  mfc1        $t2, $f16
/* 05B5E4 8005BA34 00000000 */  nop
/* 05B5E8 8005BA38 A60A001E */  sh          $t2, 0x1e($s0)
.L8005BA3C:
/* 05B5EC 8005BA3C 860B001C */  lh          $t3, 0x1c($s0)
/* 05B5F0 8005BA40 55600003 */  bnel        $t3, $zero, .L8005BA50
/* 05B5F4 8005BA44 8619001E */   lh         $t9, 0x1e($s0)
/* 05B5F8 8005BA48 A613001C */  sh          $s3, 0x1c($s0)
/* 05B5FC 8005BA4C 8619001E */  lh          $t9, 0x1e($s0)
.L8005BA50:
/* 05B600 8005BA50 57200003 */  bnel        $t9, $zero, .L8005BA60
/* 05B604 8005BA54 8E03003C */   lw         $v1, 0x3c($s0)
/* 05B608 8005BA58 A613001E */  sh          $s3, 0x1e($s0)
/* 05B60C 8005BA5C 8E03003C */  lw          $v1, 0x3c($s0)
.L8005BA60:
/* 05B610 8005BA60 2401000C */  addiu       $at, $zero, 0xc
/* 05B614 8005BA64 84640008 */  lh          $a0, 0x8($v1)
/* 05B618 8005BA68 54810005 */  bnel        $a0, $at, .L8005BA80
/* 05B61C 8005BA6C 2401000B */   addiu      $at, $zero, 0xb
/* 05B620 8005BA70 8C6C000C */  lw          $t4, 0xc($v1)
/* 05B624 8005BA74 A60C0018 */  sh          $t4, 0x18($s0)
/* 05B628 8005BA78 84640008 */  lh          $a0, 0x8($v1)
/* 05B62C 8005BA7C 2401000B */  addiu       $at, $zero, 0xb
.L8005BA80:
/* 05B630 8005BA80 5481000B */  bnel        $a0, $at, .L8005BAB0
/* 05B634 8005BA84 24010010 */   addiu      $at, $zero, 0x10
/* 05B638 8005BA88 AE000030 */  sw          $zero, 0x30($s0)
/* 05B63C 8005BA8C 8C62000C */  lw          $v0, 0xc($v1)
/* 05B640 8005BA90 00420019 */  multu       $v0, $v0
/* 05B644 8005BA94 00001012 */  mflo        $v0
/* 05B648 8005BA98 00026BC3 */  sra         $t5, $v0, 15
/* 05B64C 8005BA9C A60D001A */  sh          $t5, 0x1a($s0)
/* 05B650 8005BAA0 8C6E0010 */  lw          $t6, 0x10($v1)
/* 05B654 8005BAA4 AE0E0034 */  sw          $t6, 0x34($s0)
/* 05B658 8005BAA8 84640008 */  lh          $a0, 0x8($v1)
/* 05B65C 8005BAAC 24010010 */  addiu       $at, $zero, 0x10
.L8005BAB0:
/* 05B660 8005BAB0 1481000C */  bne         $a0, $at, .L8005BAE4
/* 05B664 8005BAB4 00000000 */   nop
/* 05B668 8005BAB8 8C6F000C */  lw          $t7, 0xc($v1)
/* 05B66C 8005BABC 000FC040 */  sll         $t8, $t7, 1
/* 05B670 8005BAC0 02B84021 */  addu        $t0, $s5, $t8
/* 05B674 8005BAC4 85090000 */  lh          $t1, 0x0($t0)
/* 05B678 8005BAC8 A6090020 */  sh          $t1, 0x20($s0)
/* 05B67C 8005BACC 8C6A000C */  lw          $t2, 0xc($v1)
/* 05B680 8005BAD0 000A5840 */  sll         $t3, $t2, 1
/* 05B684 8005BAD4 000BC823 */  negu        $t9, $t3
/* 05B688 8005BAD8 02D96021 */  addu        $t4, $s6, $t9
/* 05B68C 8005BADC 858DFFFE */  lh          $t5, -0x2($t4)
/* 05B690 8005BAE0 A60D0022 */  sh          $t5, 0x22($s0)
.L8005BAE4:
/* 05B694 8005BAE4 1000003B */  b           .L8005BBD4
/* 05B698 8005BAE8 AE130038 */   sw         $s3, 0x38($s0)
glabel L8005BAEC
/* 05B69C 8005BAEC 846E000A */  lh          $t6, 0xa($v1)
/* 05B6A0 8005BAF0 00608825 */  move        $s1, $v1
/* 05B6A4 8005BAF4 51C00007 */  beql        $t6, $zero, .L8005BB14
/* 05B6A8 8005BAF8 8E190008 */   lw         $t9, 0x8($s0)
/* 05B6AC 8005BAFC 8E190008 */  lw          $t9, 0x8($s0)
/* 05B6B0 8005BB00 02002025 */  move        $a0, $s0
/* 05B6B4 8005BB04 24050008 */  addiu       $a1, $zero, 0x8
/* 05B6B8 8005BB08 0320F809 */  jalr        $t9
/* 05B6BC 8005BB0C 00003025 */   move       $a2, $zero
/* 05B6C0 8005BB10 8E190008 */  lw          $t9, 0x8($s0)
.L8005BB14:
/* 05B6C4 8005BB14 02002025 */  move        $a0, $s0
/* 05B6C8 8005BB18 24050005 */  addiu       $a1, $zero, 0x5
/* 05B6CC 8005BB1C 0320F809 */  jalr        $t9
/* 05B6D0 8005BB20 8E26000C */   lw         $a2, 0xc($s1)
/* 05B6D4 8005BB24 8E190008 */  lw          $t9, 0x8($s0)
/* 05B6D8 8005BB28 02002025 */  move        $a0, $s0
/* 05B6DC 8005BB2C 24050009 */  addiu       $a1, $zero, 0x9
/* 05B6E0 8005BB30 0320F809 */  jalr        $t9
/* 05B6E4 8005BB34 00003025 */   move       $a2, $zero
/* 05B6E8 8005BB38 10000027 */  b           .L8005BBD8
/* 05B6EC 8005BB3C 87B8007E */   lh         $t8, 0x7e($sp)
glabel L8005BB40
/* 05B6F0 8005BB40 02002025 */  move        $a0, $s0
/* 05B6F4 8005BB44 27A5008E */  addiu       $a1, $sp, 0x8e
/* 05B6F8 8005BB48 27A6007E */  addiu       $a2, $sp, 0x7e
/* 05B6FC 8005BB4C 02403825 */  move        $a3, $s2
/* 05B700 8005BB50 AFBE0010 */  sw          $fp, 0x10($sp)
/* 05B704 8005BB54 0C016F5A */  jal         func_8005BD68
/* 05B708 8005BB58 AFB40014 */   sw         $s4, 0x14($sp)
/* 05B70C 8005BB5C 8E190008 */  lw          $t9, 0x8($s0)
/* 05B710 8005BB60 0040A025 */  move        $s4, $v0
/* 05B714 8005BB64 02002025 */  move        $a0, $s0
/* 05B718 8005BB68 24050004 */  addiu       $a1, $zero, 0x4
/* 05B71C 8005BB6C 0320F809 */  jalr        $t9
/* 05B720 8005BB70 00003025 */   move       $a2, $zero
/* 05B724 8005BB74 10000018 */  b           .L8005BBD8
/* 05B728 8005BB78 87B8007E */   lh         $t8, 0x7e($sp)
glabel L8005BB7C
/* 05B72C 8005BB7C 8C6F000C */  lw          $t7, 0xc($v1)
/* 05B730 8005BB80 3C04800A */  lui         $a0, %hi(D_8009F6A0)
/* 05B734 8005BB84 8C84F6A0 */  lw          $a0, %lo(D_8009F6A0)($a0)
/* 05B738 8005BB88 ADE000D8 */  sw          $zero, 0xd8($t7)
/* 05B73C 8005BB8C 0C016D92 */  jal         func_8005B648
/* 05B740 8005BB90 8C65000C */   lw         $a1, 0xc($v1)
/* 05B744 8005BB94 10000010 */  b           .L8005BBD8
/* 05B748 8005BB98 87B8007E */   lh         $t8, 0x7e($sp)
glabel L8005BB9C
/* 05B74C 8005BB9C 02002025 */  move        $a0, $s0
/* 05B750 8005BBA0 27A5008E */  addiu       $a1, $sp, 0x8e
/* 05B754 8005BBA4 27A6007E */  addiu       $a2, $sp, 0x7e
/* 05B758 8005BBA8 02403825 */  move        $a3, $s2
/* 05B75C 8005BBAC AFBE0010 */  sw          $fp, 0x10($sp)
/* 05B760 8005BBB0 0C016F5A */  jal         func_8005BD68
/* 05B764 8005BBB4 AFB40014 */   sw         $s4, 0x14($sp)
/* 05B768 8005BBB8 8E03003C */  lw          $v1, 0x3c($s0)
/* 05B76C 8005BBBC 8E190008 */  lw          $t9, 0x8($s0)
/* 05B770 8005BBC0 0040A025 */  move        $s4, $v0
/* 05B774 8005BBC4 02002025 */  move        $a0, $s0
/* 05B778 8005BBC8 84650008 */  lh          $a1, 0x8($v1)
/* 05B77C 8005BBCC 0320F809 */  jalr        $t9
/* 05B780 8005BBD0 8C66000C */   lw         $a2, 0xc($v1)
.L8005BBD4:
/* 05B784 8005BBD4 87B8007E */  lh          $t8, 0x7e($sp)
.L8005BBD8:
/* 05B788 8005BBD8 8FAA00A0 */  lw          $t2, 0xa0($sp)
/* 05B78C 8005BBDC 00124040 */  sll         $t0, $s2, 1
/* 05B790 8005BBE0 03084821 */  addu        $t1, $t8, $t0
/* 05B794 8005BBE4 01525823 */  subu        $t3, $t2, $s2
/* 05B798 8005BBE8 A7A9007E */  sh          $t1, 0x7e($sp)
/* 05B79C 8005BBEC AFAB00A0 */  sw          $t3, 0xa0($sp)
/* 05B7A0 8005BBF0 8E04003C */  lw          $a0, 0x3c($s0)
/* 05B7A4 8005BBF4 8C8C0000 */  lw          $t4, 0x0($a0)
/* 05B7A8 8005BBF8 15800002 */  bnez        $t4, .L8005BC04
/* 05B7AC 8005BBFC AE0C003C */   sw         $t4, 0x3c($s0)
/* 05B7B0 8005BC00 AE000040 */  sw          $zero, 0x40($s0)
.L8005BC04:
/* 05B7B4 8005BC04 0C016D74 */  jal         func_8005B5D0
/* 05B7B8 8005BC08 00000000 */   nop
/* 05B7BC 8005BC0C 8FAE0090 */  lw          $t6, 0x90($sp)
/* 05B7C0 8005BC10 8DCF003C */  lw          $t7, 0x3c($t6)
/* 05B7C4 8005BC14 55E0FEF6 */  bnel        $t7, $zero, .L8005B7F0
/* 05B7C8 8005BC18 8E03003C */   lw         $v1, 0x3c($s0)
.L8005BC1C:
/* 05B7CC 8005BC1C 02002025 */  move        $a0, $s0
.L8005BC20:
/* 05B7D0 8005BC20 27A5008E */  addiu       $a1, $sp, 0x8e
/* 05B7D4 8005BC24 27A6007E */  addiu       $a2, $sp, 0x7e
/* 05B7D8 8005BC28 8FA700A0 */  lw          $a3, 0xa0($sp)
/* 05B7DC 8005BC2C AFBE0010 */  sw          $fp, 0x10($sp)
/* 05B7E0 8005BC30 0C016F5A */  jal         func_8005BD68
/* 05B7E4 8005BC34 AFB40014 */   sw         $s4, 0x14($sp)
/* 05B7E8 8005BC38 8E040034 */  lw          $a0, 0x34($s0)
/* 05B7EC 8005BC3C 8E190030 */  lw          $t9, 0x30($s0)
/* 05B7F0 8005BC40 0040A025 */  move        $s4, $v0
/* 05B7F4 8005BC44 02801025 */  move        $v0, $s4
/* 05B7F8 8005BC48 0099082A */  slt         $at, $a0, $t9
/* 05B7FC 8005BC4C 50200003 */  beql        $at, $zero, .L8005BC5C
/* 05B800 8005BC50 8FBF0044 */   lw         $ra, 0x44($sp)
/* 05B804 8005BC54 AE040030 */  sw          $a0, 0x30($s0)
/* 05B808 8005BC58 8FBF0044 */  lw          $ra, 0x44($sp)
.L8005BC5C:
/* 05B80C 8005BC5C 8FB00020 */  lw          $s0, 0x20($sp)
/* 05B810 8005BC60 8FB10024 */  lw          $s1, 0x24($sp)
/* 05B814 8005BC64 8FB20028 */  lw          $s2, 0x28($sp)
/* 05B818 8005BC68 8FB3002C */  lw          $s3, 0x2c($sp)
/* 05B81C 8005BC6C 8FB40030 */  lw          $s4, 0x30($sp)
/* 05B820 8005BC70 8FB50034 */  lw          $s5, 0x34($sp)
/* 05B824 8005BC74 8FB60038 */  lw          $s6, 0x38($sp)
/* 05B828 8005BC78 8FB7003C */  lw          $s7, 0x3c($sp)
/* 05B82C 8005BC7C 8FBE0040 */  lw          $fp, 0x40($sp)
/* 05B830 8005BC80 03E00008 */  jr          $ra
/* 05B834 8005BC84 27BD0098 */   addiu      $sp, $sp, 0x98

glabel func_8005BC88 # 1
/* 05B838 8005BC88 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05B83C 8005BC8C 24020001 */  addiu       $v0, $zero, 0x1
/* 05B840 8005BC90 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05B844 8005BC94 10A20027 */  beq         $a1, $v0, .L8005BD34
/* 05B848 8005BC98 00803825 */   move       $a3, $a0
/* 05B84C 8005BC9C 24010003 */  addiu       $at, $zero, 0x3
/* 05B850 8005BCA0 10A10007 */  beq         $a1, $at, .L8005BCC0
/* 05B854 8005BCA4 24010004 */   addiu      $at, $zero, 0x4
/* 05B858 8005BCA8 10A1000D */  beq         $a1, $at, .L8005BCE0
/* 05B85C 8005BCAC 24010009 */   addiu      $at, $zero, 0x9
/* 05B860 8005BCB0 50A10017 */  beql        $a1, $at, .L8005BD10
/* 05B864 8005BCB4 8CE40000 */   lw         $a0, 0x0($a3)
/* 05B868 8005BCB8 10000021 */  b           .L8005BD40
/* 05B86C 8005BCBC 8CE40000 */   lw         $a0, 0x0($a3)
.L8005BCC0:
/* 05B870 8005BCC0 8CE20040 */  lw          $v0, 0x40($a3)
/* 05B874 8005BCC4 50400004 */  beql        $v0, $zero, .L8005BCD8
/* 05B878 8005BCC8 ACE6003C */   sw         $a2, 0x3c($a3)
/* 05B87C 8005BCCC 10000002 */  b           .L8005BCD8
/* 05B880 8005BCD0 AC460000 */   sw         $a2, 0x0($v0)
/* 05B884 8005BCD4 ACE6003C */  sw          $a2, 0x3c($a3)
.L8005BCD8:
/* 05B888 8005BCD8 1000001E */  b           .L8005BD54
/* 05B88C 8005BCDC ACE60040 */   sw         $a2, 0x40($a3)
.L8005BCE0:
/* 05B890 8005BCE0 8CE40000 */  lw          $a0, 0x0($a3)
/* 05B894 8005BCE4 ACE20038 */  sw          $v0, 0x38($a3)
/* 05B898 8005BCE8 ACE00048 */  sw          $zero, 0x48($a3)
/* 05B89C 8005BCEC 10800019 */  beqz        $a0, .L8005BD54
/* 05B8A0 8005BCF0 A4E2001A */   sh         $v0, 0x1a($a3)
/* 05B8A4 8005BCF4 8C990008 */  lw          $t9, 0x8($a0)
/* 05B8A8 8005BCF8 24050004 */  addiu       $a1, $zero, 0x4
/* 05B8AC 8005BCFC 0320F809 */  jalr        $t9
/* 05B8B0 8005BD00 00000000 */   nop
/* 05B8B4 8005BD04 10000014 */  b           .L8005BD58
/* 05B8B8 8005BD08 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05B8BC 8005BD0C 8CE40000 */  lw          $a0, 0x0($a3)
.L8005BD10:
/* 05B8C0 8005BD10 ACE20048 */  sw          $v0, 0x48($a3)
/* 05B8C4 8005BD14 50800010 */  beql        $a0, $zero, .L8005BD58
/* 05B8C8 8005BD18 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05B8CC 8005BD1C 8C990008 */  lw          $t9, 0x8($a0)
/* 05B8D0 8005BD20 24050009 */  addiu       $a1, $zero, 0x9
/* 05B8D4 8005BD24 0320F809 */  jalr        $t9
/* 05B8D8 8005BD28 00000000 */   nop
/* 05B8DC 8005BD2C 1000000A */  b           .L8005BD58
/* 05B8E0 8005BD30 8FBF0014 */   lw         $ra, 0x14($sp)
.L8005BD34:
/* 05B8E4 8005BD34 10000007 */  b           .L8005BD54
/* 05B8E8 8005BD38 ACE60000 */   sw         $a2, 0x0($a3)
/* 05B8EC 8005BD3C 8CE40000 */  lw          $a0, 0x0($a3)
.L8005BD40:
/* 05B8F0 8005BD40 50800005 */  beql        $a0, $zero, .L8005BD58
/* 05B8F4 8005BD44 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05B8F8 8005BD48 8C990008 */  lw          $t9, 0x8($a0)
/* 05B8FC 8005BD4C 0320F809 */  jalr        $t9
/* 05B900 8005BD50 00000000 */   nop
.L8005BD54:
/* 05B904 8005BD54 8FBF0014 */  lw          $ra, 0x14($sp)
.L8005BD58:
/* 05B908 8005BD58 27BD0018 */  addiu       $sp, $sp, 0x18
/* 05B90C 8005BD5C 00001025 */  move        $v0, $zero
/* 05B910 8005BD60 03E00008 */  jr          $ra
/* 05B914 8005BD64 00000000 */   nop

glabel func_8005BD68 # 2
/* 05B918 8005BD68 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 05B91C 8005BD6C AFBF0024 */  sw          $ra, 0x24($sp)
/* 05B920 8005BD70 AFB10020 */  sw          $s1, 0x20($sp)
/* 05B924 8005BD74 AFB0001C */  sw          $s0, 0x1c($sp)
/* 05B928 8005BD78 AFA50064 */  sw          $a1, 0x64($sp)
/* 05B92C 8005BD7C AFA60068 */  sw          $a2, 0x68($sp)
/* 05B930 8005BD80 AFA7006C */  sw          $a3, 0x6c($sp)
/* 05B934 8005BD84 8C8E0048 */  lw          $t6, 0x48($a0)
/* 05B938 8005BD88 24010001 */  addiu       $at, $zero, 0x1
/* 05B93C 8005BD8C 00808025 */  move        $s0, $a0
/* 05B940 8005BD90 15C10003 */  bne         $t6, $at, .L8005BDA0
/* 05B944 8005BD94 8C910000 */   lw         $s1, 0x0($a0)
/* 05B948 8005BD98 14E00003 */  bnez        $a3, .L8005BDA8
/* 05B94C 8005BD9C 8FB80074 */   lw         $t8, 0x74($sp)
.L8005BDA0:
/* 05B950 8005BDA0 100000A6 */  b           .L8005C03C
/* 05B954 8005BDA4 8FA20074 */   lw         $v0, 0x74($sp)
.L8005BDA8:
/* 05B958 8005BDA8 AFB80010 */  sw          $t8, 0x10($sp)
/* 05B95C 8005BDAC 8E390004 */  lw          $t9, 0x4($s1)
/* 05B960 8005BDB0 02202025 */  move        $a0, $s1
/* 05B964 8005BDB4 8FA50064 */  lw          $a1, 0x64($sp)
/* 05B968 8005BDB8 8FA6006C */  lw          $a2, 0x6c($sp)
/* 05B96C 8005BDBC 0320F809 */  jalr        $t9
/* 05B970 8005BDC0 8FA70070 */   lw         $a3, 0x70($sp)
/* 05B974 8005BDC4 8FA80064 */  lw          $t0, 0x64($sp)
/* 05B978 8005BDC8 3C010800 */  lui         $at, 0x800
/* 05B97C 8005BDCC 8FA40068 */  lw          $a0, 0x68($sp)
/* 05B980 8005BDD0 85090000 */  lh          $t1, 0x0($t0)
/* 05B984 8005BDD4 24510010 */  addiu       $s1, $v0, 0x10
/* 05B988 8005BDD8 312AFFFF */  andi        $t2, $t1, 0xffff
/* 05B98C 8005BDDC 01415825 */  or          $t3, $t2, $at
/* 05B990 8005BDE0 AC4B0000 */  sw          $t3, 0x0($v0)
/* 05B994 8005BDE4 8FAC006C */  lw          $t4, 0x6c($sp)
/* 05B998 8005BDE8 3C010808 */  lui         $at, 0x808
/* 05B99C 8005BDEC 000C6840 */  sll         $t5, $t4, 1
/* 05B9A0 8005BDF0 AFAD002C */  sw          $t5, 0x2c($sp)
/* 05B9A4 8005BDF4 848E0000 */  lh          $t6, 0x0($a0)
/* 05B9A8 8005BDF8 31A8FFFF */  andi        $t0, $t5, 0xffff
/* 05B9AC 8005BDFC 25D80440 */  addiu       $t8, $t6, 0x440
/* 05B9B0 8005BE00 0018CC00 */  sll         $t9, $t8, 16
/* 05B9B4 8005BE04 03284825 */  or          $t1, $t9, $t0
/* 05B9B8 8005BE08 AC490004 */  sw          $t1, 0x4($v0)
/* 05B9BC 8005BE0C 848A0000 */  lh          $t2, 0x0($a0)
/* 05B9C0 8005BE10 254B0580 */  addiu       $t3, $t2, 0x580
/* 05B9C4 8005BE14 316CFFFF */  andi        $t4, $t3, 0xffff
/* 05B9C8 8005BE18 01817025 */  or          $t6, $t4, $at
/* 05B9CC 8005BE1C AC4E0008 */  sw          $t6, 0x8($v0)
/* 05B9D0 8005BE20 84830000 */  lh          $v1, 0x0($a0)
/* 05B9D4 8005BE24 3C0E800A */  lui         $t6, %hi(D_8009F9B0)
/* 05B9D8 8005BE28 246F0800 */  addiu       $t7, $v1, 0x800
/* 05B9DC 8005BE2C 247906C0 */  addiu       $t9, $v1, 0x6c0
/* 05B9E0 8005BE30 00194400 */  sll         $t0, $t9, 16
/* 05B9E4 8005BE34 31F8FFFF */  andi        $t8, $t7, 0xffff
/* 05B9E8 8005BE38 03084825 */  or          $t1, $t8, $t0
/* 05B9EC 8005BE3C AC49000C */  sw          $t1, 0xc($v0)
/* 05B9F0 8005BE40 8E0A0038 */  lw          $t2, 0x38($s0)
/* 05B9F4 8005BE44 3C0F0308 */  lui         $t7, 0x308
/* 05B9F8 8005BE48 02201825 */  move        $v1, $s1
/* 05B9FC 8005BE4C 5140006B */  beql        $t2, $zero, .L8005BFFC
/* 05BA00 8005BE50 AC6F0000 */   sw         $t7, 0x0($v1)
/* 05BA04 8005BE54 860B0018 */  lh          $t3, 0x18($s0)
/* 05BA08 8005BE58 AE000038 */  sw          $zero, 0x38($s0)
/* 05BA0C 8005BE5C 860F001A */  lh          $t7, 0x1a($s0)
/* 05BA10 8005BE60 000B6040 */  sll         $t4, $t3, 1
/* 05BA14 8005BE64 01CC7021 */  addu        $t6, $t6, $t4
/* 05BA18 8005BE68 85CEF9B0 */  lh          $t6, %lo(D_8009F9B0)($t6)
/* 05BA1C 8005BE6C 8618001C */  lh          $t8, 0x1c($s0)
/* 05BA20 8005BE70 8E090034 */  lw          $t1, 0x34($s0)
/* 05BA24 8005BE74 01CF0019 */  multu       $t6, $t7
/* 05BA28 8005BE78 44982000 */  mtc1        $t8, $f4
/* 05BA2C 8005BE7C 260A0024 */  addiu       $t2, $s0, 0x24
/* 05BA30 8005BE80 46802321 */  cvt.d.w     $f12, $f4
/* 05BA34 8005BE84 00006812 */  mflo        $t5
/* 05BA38 8005BE88 000DCBC3 */  sra         $t9, $t5, 15
/* 05BA3C 8005BE8C A6190028 */  sh          $t9, 0x28($s0)
/* 05BA40 8005BE90 86080028 */  lh          $t0, 0x28($s0)
/* 05BA44 8005BE94 AFAA0014 */  sw          $t2, 0x14($sp)
/* 05BA48 8005BE98 AFA90010 */  sw          $t1, 0x10($sp)
/* 05BA4C 8005BE9C 44883000 */  mtc1        $t0, $f6
/* 05BA50 8005BEA0 0C017059 */  jal         func_8005C164
/* 05BA54 8005BEA4 468033A1 */   cvt.d.w    $f14, $f6
/* 05BA58 8005BEA8 860B0018 */  lh          $t3, 0x18($s0)
/* 05BA5C 8005BEAC 3C0F800A */  lui         $t7, %hi(D_8009F9B0 + 0xFE)
/* 05BA60 8005BEB0 A6020026 */  sh          $v0, 0x26($s0)
/* 05BA64 8005BEB4 000B6040 */  sll         $t4, $t3, 1
/* 05BA68 8005BEB8 000C7023 */  negu        $t6, $t4
/* 05BA6C 8005BEBC 01EE7821 */  addu        $t7, $t7, $t6
/* 05BA70 8005BEC0 85EFFAAE */  lh          $t7, %lo(D_8009F9B0 + 0xFE)($t7)
/* 05BA74 8005BEC4 860D001A */  lh          $t5, 0x1a($s0)
/* 05BA78 8005BEC8 8608001E */  lh          $t0, 0x1e($s0)
/* 05BA7C 8005BECC 8E0A0034 */  lw          $t2, 0x34($s0)
/* 05BA80 8005BED0 01ED0019 */  multu       $t7, $t5
/* 05BA84 8005BED4 44884000 */  mtc1        $t0, $f8
/* 05BA88 8005BED8 260B002A */  addiu       $t3, $s0, 0x2a
/* 05BA8C 8005BEDC 46804321 */  cvt.d.w     $f12, $f8
/* 05BA90 8005BEE0 0000C812 */  mflo        $t9
/* 05BA94 8005BEE4 0019C3C3 */  sra         $t8, $t9, 15
/* 05BA98 8005BEE8 A618002E */  sh          $t8, 0x2e($s0)
/* 05BA9C 8005BEEC 8609002E */  lh          $t1, 0x2e($s0)
/* 05BAA0 8005BEF0 AFAB0014 */  sw          $t3, 0x14($sp)
/* 05BAA4 8005BEF4 AFAA0010 */  sw          $t2, 0x10($sp)
/* 05BAA8 8005BEF8 44895000 */  mtc1        $t1, $f10
/* 05BAAC 8005BEFC 0C017059 */  jal         func_8005C164
/* 05BAB0 8005BF00 468053A1 */   cvt.d.w    $f14, $f10
/* 05BAB4 8005BF04 860C001C */  lh          $t4, 0x1c($s0)
/* 05BAB8 8005BF08 A602002C */  sh          $v0, 0x2c($s0)
/* 05BABC 8005BF0C 02201825 */  move        $v1, $s1
/* 05BAC0 8005BF10 3C010906 */  lui         $at, 0x906
/* 05BAC4 8005BF14 318EFFFF */  andi        $t6, $t4, 0xffff
/* 05BAC8 8005BF18 01C17825 */  or          $t7, $t6, $at
/* 05BACC 8005BF1C AC6F0000 */  sw          $t7, 0x0($v1)
/* 05BAD0 8005BF20 AC600004 */  sw          $zero, 0x4($v1)
/* 05BAD4 8005BF24 860D001E */  lh          $t5, 0x1e($s0)
/* 05BAD8 8005BF28 26310008 */  addiu       $s1, $s1, 0x8
/* 05BADC 8005BF2C 02202025 */  move        $a0, $s1
/* 05BAE0 8005BF30 3C010904 */  lui         $at, 0x904
/* 05BAE4 8005BF34 31B9FFFF */  andi        $t9, $t5, 0xffff
/* 05BAE8 8005BF38 0321C025 */  or          $t8, $t9, $at
/* 05BAEC 8005BF3C AC980000 */  sw          $t8, 0x0($a0)
/* 05BAF0 8005BF40 AC800004 */  sw          $zero, 0x4($a0)
/* 05BAF4 8005BF44 86080028 */  lh          $t0, 0x28($s0)
/* 05BAF8 8005BF48 26310008 */  addiu       $s1, $s1, 0x8
/* 05BAFC 8005BF4C 3C010902 */  lui         $at, 0x902
/* 05BB00 8005BF50 3109FFFF */  andi        $t1, $t0, 0xffff
/* 05BB04 8005BF54 01215025 */  or          $t2, $t1, $at
/* 05BB08 8005BF58 02202825 */  move        $a1, $s1
/* 05BB0C 8005BF5C ACAA0000 */  sw          $t2, 0x0($a1)
/* 05BB10 8005BF60 860C0026 */  lh          $t4, 0x26($s0)
/* 05BB14 8005BF64 960D0024 */  lhu         $t5, 0x24($s0)
/* 05BB18 8005BF68 26310008 */  addiu       $s1, $s1, 0x8
/* 05BB1C 8005BF6C 000C7400 */  sll         $t6, $t4, 16
/* 05BB20 8005BF70 01CDC825 */  or          $t9, $t6, $t5
/* 05BB24 8005BF74 ACB90004 */  sw          $t9, 0x4($a1)
/* 05BB28 8005BF78 8618002E */  lh          $t8, 0x2e($s0)
/* 05BB2C 8005BF7C 3C010900 */  lui         $at, 0x900
/* 05BB30 8005BF80 02203025 */  move        $a2, $s1
/* 05BB34 8005BF84 3308FFFF */  andi        $t0, $t8, 0xffff
/* 05BB38 8005BF88 01014825 */  or          $t1, $t0, $at
/* 05BB3C 8005BF8C ACC90000 */  sw          $t1, 0x0($a2)
/* 05BB40 8005BF90 860B002C */  lh          $t3, 0x2c($s0)
/* 05BB44 8005BF94 960E002A */  lhu         $t6, 0x2a($s0)
/* 05BB48 8005BF98 26310008 */  addiu       $s1, $s1, 0x8
/* 05BB4C 8005BF9C 000B6400 */  sll         $t4, $t3, 16
/* 05BB50 8005BFA0 018E6825 */  or          $t5, $t4, $t6
/* 05BB54 8005BFA4 ACCD0004 */  sw          $t5, 0x4($a2)
/* 05BB58 8005BFA8 86190020 */  lh          $t9, 0x20($s0)
/* 05BB5C 8005BFAC 3C010908 */  lui         $at, 0x908
/* 05BB60 8005BFB0 02201025 */  move        $v0, $s1
/* 05BB64 8005BFB4 3338FFFF */  andi        $t8, $t9, 0xffff
/* 05BB68 8005BFB8 03014025 */  or          $t0, $t8, $at
/* 05BB6C 8005BFBC AC480000 */  sw          $t0, 0x0($v0)
/* 05BB70 8005BFC0 86090022 */  lh          $t1, 0x22($s0)
/* 05BB74 8005BFC4 26310008 */  addiu       $s1, $s1, 0x8
/* 05BB78 8005BFC8 02201825 */  move        $v1, $s1
/* 05BB7C 8005BFCC 312AFFFF */  andi        $t2, $t1, 0xffff
/* 05BB80 8005BFD0 AC4A0004 */  sw          $t2, 0x4($v0)
/* 05BB84 8005BFD4 3C0B0309 */  lui         $t3, 0x309
/* 05BB88 8005BFD8 AC6B0000 */  sw          $t3, 0x0($v1)
/* 05BB8C 8005BFDC 8E040014 */  lw          $a0, 0x14($s0)
/* 05BB90 8005BFE0 AFA30034 */  sw          $v1, 0x34($sp)
/* 05BB94 8005BFE4 0C0143B0 */  jal         osVirtualToPhysical
/* 05BB98 8005BFE8 26310008 */   addiu      $s1, $s1, 0x8
/* 05BB9C 8005BFEC 8FA30034 */  lw          $v1, 0x34($sp)
/* 05BBA0 8005BFF0 10000008 */  b           .L8005C014
/* 05BBA4 8005BFF4 AC620004 */   sw         $v0, 0x4($v1)
/* 05BBA8 8005BFF8 AC6F0000 */  sw          $t7, 0x0($v1)
.L8005BFFC:
/* 05BBAC 8005BFFC 8E040014 */  lw          $a0, 0x14($s0)
/* 05BBB0 8005C000 AFA30030 */  sw          $v1, 0x30($sp)
/* 05BBB4 8005C004 0C0143B0 */  jal         osVirtualToPhysical
/* 05BBB8 8005C008 26310008 */   addiu      $s1, $s1, 0x8
/* 05BBBC 8005C00C 8FA30030 */  lw          $v1, 0x30($sp)
/* 05BBC0 8005C010 AC620004 */  sw          $v0, 0x4($v1)
.L8005C014:
/* 05BBC4 8005C014 8FAC0064 */  lw          $t4, 0x64($sp)
/* 05BBC8 8005C018 8FAD002C */  lw          $t5, 0x2c($sp)
/* 05BBCC 8005C01C 02201025 */  move        $v0, $s1
/* 05BBD0 8005C020 858E0000 */  lh          $t6, 0x0($t4)
/* 05BBD4 8005C024 01CDC821 */  addu        $t9, $t6, $t5
/* 05BBD8 8005C028 A5990000 */  sh          $t9, 0x0($t4)
/* 05BBDC 8005C02C 8E180030 */  lw          $t8, 0x30($s0)
/* 05BBE0 8005C030 8FA8006C */  lw          $t0, 0x6c($sp)
/* 05BBE4 8005C034 03084821 */  addu        $t1, $t8, $t0
/* 05BBE8 8005C038 AE090030 */  sw          $t1, 0x30($s0)
.L8005C03C:
/* 05BBEC 8005C03C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 05BBF0 8005C040 8FB0001C */  lw          $s0, 0x1c($sp)
/* 05BBF4 8005C044 8FB10020 */  lw          $s1, 0x20($sp)
/* 05BBF8 8005C048 03E00008 */  jr          $ra
/* 05BBFC 8005C04C 27BD0060 */   addiu      $sp, $sp, 0x60

glabel func_8005C050 # 3
/* 05BC00 8005C050 44801800 */  mtc1        $zero, $f3
/* 05BC04 8005C054 44801000 */  mtc1        $zero, $f2
/* 05BC08 8005C058 ACC00000 */  sw          $zero, 0x0($a2)
/* 05BC0C 8005C05C 3C013FF0 */  lui         $at, 0x3ff0
/* 05BC10 8005C060 46226032 */  c.eq.d      $f12, $f2
/* 05BC14 8005C064 00000000 */  nop
/* 05BC18 8005C068 45020004 */  bc1fl       .L8005C07C
/* 05BC1C 8005C06C 462C103C */   c.lt.d     $f2, $f12
/* 05BC20 8005C070 03E00008 */  jr          $ra
/* 05BC24 8005C074 46206006 */   mov.d      $f0, $f12
/* 05BC28 8005C078 462C103C */  c.lt.d      $f2, $f12
.L8005C07C:
/* 05BC2C 8005C07C 44817800 */  mtc1        $at, $f15
/* 05BC30 8005C080 44807000 */  mtc1        $zero, $f14
/* 05BC34 8005C084 3C013FE0 */  lui         $at, 0x3fe0
/* 05BC38 8005C088 45020004 */  bc1fl       .L8005C09C
/* 05BC3C 8005C08C 46206007 */   neg.d      $f0, $f12
/* 05BC40 8005C090 10000002 */  b           .L8005C09C
/* 05BC44 8005C094 46206006 */   mov.d      $f0, $f12
/* 05BC48 8005C098 46206007 */  neg.d       $f0, $f12
.L8005C09C:
/* 05BC4C 8005C09C 4620703E */  c.le.d      $f14, $f0
/* 05BC50 8005C0A0 00000000 */  nop
/* 05BC54 8005C0A4 4502000D */  bc1fl       .L8005C0DC
/* 05BC58 8005C0A8 3C013FE0 */   lui        $at, 0x3fe0
/* 05BC5C 8005C0AC 44818800 */  mtc1        $at, $f17
/* 05BC60 8005C0B0 44808000 */  mtc1        $zero, $f16
/* 05BC64 8005C0B4 00000000 */  nop
.L8005C0B8:
/* 05BC68 8005C0B8 46300002 */  mul.d       $f0, $f0, $f16
/* 05BC6C 8005C0BC 8CCE0000 */  lw          $t6, 0x0($a2)
/* 05BC70 8005C0C0 25CF0001 */  addiu       $t7, $t6, 0x1
/* 05BC74 8005C0C4 ACCF0000 */  sw          $t7, 0x0($a2)
/* 05BC78 8005C0C8 4620703E */  c.le.d      $f14, $f0
/* 05BC7C 8005C0CC 00000000 */  nop
/* 05BC80 8005C0D0 4501FFF9 */  bc1t        .L8005C0B8
/* 05BC84 8005C0D4 00000000 */   nop
/* 05BC88 8005C0D8 3C013FE0 */  lui         $at, 0x3fe0
.L8005C0DC:
/* 05BC8C 8005C0DC 44818800 */  mtc1        $at, $f17
/* 05BC90 8005C0E0 44808000 */  mtc1        $zero, $f16
/* 05BC94 8005C0E4 00000000 */  nop
/* 05BC98 8005C0E8 4630003C */  c.lt.d      $f0, $f16
/* 05BC9C 8005C0EC 00000000 */  nop
/* 05BCA0 8005C0F0 45020009 */  bc1fl       .L8005C118
/* 05BCA4 8005C0F4 462C103C */   c.lt.d     $f2, $f12
/* 05BCA8 8005C0F8 46200000 */  add.d       $f0, $f0, $f0
.L8005C0FC:
/* 05BCAC 8005C0FC 8CD80000 */  lw          $t8, 0x0($a2)
/* 05BCB0 8005C100 4630003C */  c.lt.d      $f0, $f16
/* 05BCB4 8005C104 2719FFFF */  addiu       $t9, $t8, -0x1
/* 05BCB8 8005C108 ACD90000 */  sw          $t9, 0x0($a2)
/* 05BCBC 8005C10C 4503FFFB */  bc1tl       .L8005C0FC
/* 05BCC0 8005C110 46200000 */   add.d      $f0, $f0, $f0
/* 05BCC4 8005C114 462C103C */  c.lt.d      $f2, $f12
.L8005C118:
/* 05BCC8 8005C118 00000000 */  nop
/* 05BCCC 8005C11C 45020004 */  bc1fl       .L8005C130
/* 05BCD0 8005C120 46200087 */   neg.d      $f2, $f0
/* 05BCD4 8005C124 10000002 */  b           .L8005C130
/* 05BCD8 8005C128 46200086 */   mov.d      $f2, $f0
/* 05BCDC 8005C12C 46200087 */  neg.d       $f2, $f0
.L8005C130:
/* 05BCE0 8005C130 46201006 */  mov.d       $f0, $f2
/* 05BCE4 8005C134 03E00008 */  jr          $ra
/* 05BCE8 8005C138 00000000 */   nop

glabel func_8005C13C # 4
/* 05BCEC 8005C13C 10C00007 */  beqz        $a2, .L8005C15C
/* 05BCF0 8005C140 240E0001 */   addiu      $t6, $zero, 0x1
/* 05BCF4 8005C144 00CE7804 */  sllv        $t7, $t6, $a2
/* 05BCF8 8005C148 448F2000 */  mtc1        $t7, $f4
/* 05BCFC 8005C14C 00000000 */  nop
/* 05BD00 8005C150 468021A1 */  cvt.d.w     $f6, $f4
/* 05BD04 8005C154 46266302 */  mul.d       $f12, $f12, $f6
/* 05BD08 8005C158 00000000 */  nop
.L8005C15C:
/* 05BD0C 8005C15C 03E00008 */  jr          $ra
/* 05BD10 8005C160 46206006 */   mov.d      $f0, $f12

glabel func_8005C164 # 5
/* 05BD14 8005C164 27BDFF48 */  addiu       $sp, $sp, -0xb8
/* 05BD18 8005C168 8FA400C8 */  lw          $a0, 0xc8($sp)
/* 05BD1C 8005C16C F7B40010 */  sdc1        $f20, 0x10($sp)
/* 05BD20 8005C170 46206506 */  mov.d       $f20, $f12
/* 05BD24 8005C174 AFBF0024 */  sw          $ra, 0x24($sp)
/* 05BD28 8005C178 1480000C */  bnez        $a0, .L8005C1AC
/* 05BD2C 8005C17C F7B60018 */   sdc1       $f22, 0x18($sp)
/* 05BD30 8005C180 462E603E */  c.le.d      $f12, $f14
/* 05BD34 8005C184 340EFFFF */  ori         $t6, $zero, 0xffff
/* 05BD38 8005C188 8FAF00CC */  lw          $t7, 0xcc($sp)
/* 05BD3C 8005C18C 8FB800CC */  lw          $t8, 0xcc($sp)
/* 05BD40 8005C190 45000004 */  bc1f        .L8005C1A4
/* 05BD44 8005C194 00001025 */   move       $v0, $zero
/* 05BD48 8005C198 A5EE0000 */  sh          $t6, 0x0($t7)
/* 05BD4C 8005C19C 10000065 */  b           .L8005C334
/* 05BD50 8005C1A0 24027FFF */   addiu      $v0, $zero, 0x7fff
.L8005C1A4:
/* 05BD54 8005C1A4 10000063 */  b           .L8005C334
/* 05BD58 8005C1A8 A7000000 */   sh         $zero, 0x0($t8)
.L8005C1AC:
/* 05BD5C 8005C1AC 3C013FF0 */  lui         $at, 0x3ff0
/* 05BD60 8005C1B0 4481B800 */  mtc1        $at, $f23
/* 05BD64 8005C1B4 4480B000 */  mtc1        $zero, $f22
/* 05BD68 8005C1B8 3C08800A */  lui         $t0, %hi(D_8009FAB0)
/* 05BD6C 8005C1BC 44802800 */  mtc1        $zero, $f5
/* 05BD70 8005C1C0 4636703C */  c.lt.d      $f14, $f22
/* 05BD74 8005C1C4 44802000 */  mtc1        $zero, $f4
/* 05BD78 8005C1C8 2508FAB0 */  addiu       $t0, $t0, %lo(D_8009FAB0)
/* 05BD7C 8005C1CC 250A003C */  addiu       $t2, $t0, 0x3c
/* 05BD80 8005C1D0 45000002 */  bc1f        .L8005C1DC
/* 05BD84 8005C1D4 27B90038 */   addiu      $t9, $sp, 0x38
/* 05BD88 8005C1D8 4620B386 */  mov.d       $f14, $f22
.L8005C1DC:
/* 05BD8C 8005C1DC 4624A03E */  c.le.d      $f20, $f4
/* 05BD90 8005C1E0 44843000 */  mtc1        $a0, $f6
/* 05BD94 8005C1E4 3C013FF0 */  lui         $at, 0x3ff0
/* 05BD98 8005C1E8 45000004 */  bc1f        .L8005C1FC
/* 05BD9C 8005C1EC 46803221 */   cvt.d.w    $f8, $f6
/* 05BDA0 8005C1F0 4481A800 */  mtc1        $at, $f21
/* 05BDA4 8005C1F4 4480A000 */  mtc1        $zero, $f20
/* 05BDA8 8005C1F8 00000000 */  nop
.L8005C1FC:
/* 05BDAC 8005C1FC 8D010000 */  lw          $at, 0x0($t0)
/* 05BDB0 8005C200 2508000C */  addiu       $t0, $t0, 0xc
/* 05BDB4 8005C204 2739000C */  addiu       $t9, $t9, 0xc
/* 05BDB8 8005C208 AF21FFF4 */  sw          $at, -0xc($t9)
/* 05BDBC 8005C20C 8D01FFF8 */  lw          $at, -0x8($t0)
/* 05BDC0 8005C210 AF21FFF8 */  sw          $at, -0x8($t9)
/* 05BDC4 8005C214 8D01FFFC */  lw          $at, -0x4($t0)
/* 05BDC8 8005C218 150AFFF8 */  bne         $t0, $t2, .L8005C1FC
/* 05BDCC 8005C21C AF21FFFC */   sw         $at, -0x4($t9)
/* 05BDD0 8005C220 8D010000 */  lw          $at, 0x0($t0)
/* 05BDD4 8005C224 4628B303 */  div.d       $f12, $f22, $f8
/* 05BDD8 8005C228 2406001E */  addiu       $a2, $zero, 0x1e
/* 05BDDC 8005C22C AF210000 */  sw          $at, 0x0($t9)
/* 05BDE0 8005C230 0C01704F */  jal         func_8005C13C
/* 05BDE4 8005C234 F7AE00C0 */   sdc1       $f14, 0xc0($sp)
/* 05BDE8 8005C238 4620028D */  trunc.w.d   $f10, $f0
/* 05BDEC 8005C23C D7AE00C0 */  ldc1        $f14, 0xc0($sp)
/* 05BDF0 8005C240 27A60080 */  addiu       $a2, $sp, 0x80
/* 05BDF4 8005C244 44025000 */  mfc1        $v0, $f10
/* 05BDF8 8005C248 46347303 */  div.d       $f12, $f14, $f20
/* 05BDFC 8005C24C 0C017014 */  jal         func_8005C050
/* 05BE00 8005C250 AFA20084 */   sw         $v0, 0x84($sp)
/* 05BE04 8005C254 46200306 */  mov.d       $f12, $f0
/* 05BE08 8005C258 0C01704F */  jal         func_8005C13C
/* 05BE0C 8005C25C 24060004 */   addiu      $a2, $zero, 0x4
/* 05BE10 8005C260 4620048D */  trunc.w.d   $f18, $f0
/* 05BE14 8005C264 8FB80080 */  lw          $t8, 0x80($sp)
/* 05BE18 8005C268 3C01800B */  lui         $at, %hi(D_800A8088)
/* 05BE1C 8005C26C 44806000 */  mtc1        $zero, $f12
/* 05BE20 8005C270 440D9000 */  mfc1        $t5, $f18
/* 05BE24 8005C274 44983000 */  mtc1        $t8, $f6
/* 05BE28 8005C278 D4328088 */  ldc1        $f18, %lo(D_800A8088)($at)
/* 05BE2C 8005C27C 000D70C0 */  sll         $t6, $t5, 3
/* 05BE30 8005C280 46803221 */  cvt.d.w     $f8, $f6
/* 05BE34 8005C284 03AE7821 */  addu        $t7, $sp, $t6
/* 05BE38 8005C288 D5E4FFF8 */  ldc1        $f4, -0x8($t7)
/* 05BE3C 8005C28C 3C013FF0 */  lui         $at, 0x3ff0
/* 05BE40 8005C290 44816800 */  mtc1        $at, $f13
/* 05BE44 8005C294 46282280 */  add.d       $f10, $f4, $f8
/* 05BE48 8005C298 2406001E */  addiu       $a2, $zero, 0x1e
/* 05BE4C 8005C29C 46325382 */  mul.d       $f14, $f10, $f18
/* 05BE50 8005C2A0 0C01704F */  jal         func_8005C13C
/* 05BE54 8005C2A4 F7AE00A0 */   sdc1       $f14, 0xa0($sp)
/* 05BE58 8005C2A8 D7AE00A0 */  ldc1        $f14, 0xa0($sp)
/* 05BE5C 8005C2AC 8FA20084 */  lw          $v0, 0x84($sp)
/* 05BE60 8005C2B0 4620B306 */  mov.d       $f12, $f22
/* 05BE64 8005C2B4 46207383 */  div.d       $f14, $f14, $f0
/* 05BE68 8005C2B8 10400009 */  beqz        $v0, .L8005C2E0
/* 05BE6C 8005C2BC 462EB080 */   add.d      $f2, $f22, $f14
.L8005C2C0:
/* 05BE70 8005C2C0 30490001 */  andi        $t1, $v0, 0x1
/* 05BE74 8005C2C4 11200003 */  beqz        $t1, .L8005C2D4
/* 05BE78 8005C2C8 00025043 */   sra        $t2, $v0, 1
/* 05BE7C 8005C2CC 46226302 */  mul.d       $f12, $f12, $f2
/* 05BE80 8005C2D0 00000000 */  nop
.L8005C2D4:
/* 05BE84 8005C2D4 46221082 */  mul.d       $f2, $f2, $f2
/* 05BE88 8005C2D8 1540FFF9 */  bnez        $t2, .L8005C2C0
/* 05BE8C 8005C2DC 01401025 */   move       $v0, $t2
.L8005C2E0:
/* 05BE90 8005C2E0 462C6002 */  mul.d       $f0, $f12, $f12
/* 05BE94 8005C2E4 3C01800B */  lui         $at, %hi(D_800A8090)
/* 05BE98 8005C2E8 8FAE00CC */  lw          $t6, 0xcc($sp)
/* 05BE9C 8005C2EC 46200082 */  mul.d       $f2, $f0, $f0
/* 05BEA0 8005C2F0 00000000 */  nop
/* 05BEA4 8005C2F4 46221302 */  mul.d       $f12, $f2, $f2
/* 05BEA8 8005C2F8 4620618D */  trunc.w.d   $f6, $f12
/* 05BEAC 8005C2FC 44033000 */  mfc1        $v1, $f6
/* 05BEB0 8005C300 D4268090 */  ldc1        $f6, %lo(D_800A8090)($at)
/* 05BEB4 8005C304 0003CC00 */  sll         $t9, $v1, 16
/* 05BEB8 8005C308 00191403 */  sra         $v0, $t9, 16
/* 05BEBC 8005C30C 44822000 */  mtc1        $v0, $f4
/* 05BEC0 8005C310 00000000 */  nop
/* 05BEC4 8005C314 46802220 */  cvt.s.w     $f8, $f4
/* 05BEC8 8005C318 460042A1 */  cvt.d.s     $f10, $f8
/* 05BECC 8005C31C 462A6481 */  sub.d       $f18, $f12, $f10
/* 05BED0 8005C320 46269102 */  mul.d       $f4, $f18, $f6
/* 05BED4 8005C324 4620220D */  trunc.w.d   $f8, $f4
/* 05BED8 8005C328 440D4000 */  mfc1        $t5, $f8
/* 05BEDC 8005C32C 00000000 */  nop
/* 05BEE0 8005C330 A5CD0000 */  sh          $t5, 0x0($t6)
.L8005C334:
/* 05BEE4 8005C334 8FBF0024 */  lw          $ra, 0x24($sp)
/* 05BEE8 8005C338 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 05BEEC 8005C33C D7B60018 */  ldc1        $f22, 0x18($sp)
/* 05BEF0 8005C340 03E00008 */  jr          $ra
/* 05BEF4 8005C344 27BD00B8 */   addiu      $sp, $sp, 0xb8

glabel func_8005C348 # 6
/* 05BEF8 8005C348 AFA60008 */  sw          $a2, 0x8($sp)
/* 05BEFC 8005C34C 00067400 */  sll         $t6, $a2, 16
/* 05BF00 8005C350 AFA7000C */  sw          $a3, 0xc($sp)
/* 05BF04 8005C354 30F8FFFF */  andi        $t8, $a3, 0xffff
/* 05BF08 8005C358 0005C8C3 */  sra         $t9, $a1, 3
/* 05BF0C 8005C35C 03003825 */  move        $a3, $t8
/* 05BF10 8005C360 000E3403 */  sra         $a2, $t6, 16
/* 05BF14 8005C364 17200003 */  bnez        $t9, .L8005C374
/* 05BF18 8005C368 03202825 */   move       $a1, $t9
/* 05BF1C 8005C36C 03E00008 */  jr          $ra
/* 05BF20 8005C370 46006006 */   mov.s      $f0, $f12
.L8005C374:
/* 05BF24 8005C374 00064400 */  sll         $t0, $a2, 16
/* 05BF28 8005C378 44882000 */  mtc1        $t0, $f4
/* 05BF2C 8005C37C 44874000 */  mtc1        $a3, $f8
/* 05BF30 8005C380 00001025 */  move        $v0, $zero
/* 05BF34 8005C384 468021A0 */  cvt.s.w     $f6, $f4
/* 05BF38 8005C388 04E10005 */  bgez        $a3, .L8005C3A0
/* 05BF3C 8005C38C 468042A0 */   cvt.s.w    $f10, $f8
/* 05BF40 8005C390 3C014F80 */  lui         $at, 0x4f80
/* 05BF44 8005C394 44818000 */  mtc1        $at, $f16
/* 05BF48 8005C398 00000000 */  nop
/* 05BF4C 8005C39C 46105280 */  add.s       $f10, $f10, $f16
.L8005C3A0:
/* 05BF50 8005C3A0 3C014780 */  lui         $at, 0x4780
/* 05BF54 8005C3A4 460A3480 */  add.s       $f18, $f6, $f10
/* 05BF58 8005C3A8 44812000 */  mtc1        $at, $f4
/* 05BF5C 8005C3AC 3C013F80 */  lui         $at, 0x3f80
/* 05BF60 8005C3B0 44811000 */  mtc1        $at, $f2
/* 05BF64 8005C3B4 24030020 */  addiu       $v1, $zero, 0x20
/* 05BF68 8005C3B8 46049003 */  div.s       $f0, $f18, $f4
/* 05BF6C 8005C3BC 30A90001 */  andi        $t1, $a1, 0x1
.L8005C3C0:
/* 05BF70 8005C3C0 11200003 */  beqz        $t1, .L8005C3D0
/* 05BF74 8005C3C4 00055043 */   sra        $t2, $a1, 1
/* 05BF78 8005C3C8 46001082 */  mul.s       $f2, $f2, $f0
/* 05BF7C 8005C3CC 00000000 */  nop
.L8005C3D0:
/* 05BF80 8005C3D0 11400005 */  beqz        $t2, .L8005C3E8
/* 05BF84 8005C3D4 01402825 */   move       $a1, $t2
/* 05BF88 8005C3D8 24420001 */  addiu       $v0, $v0, 0x1
/* 05BF8C 8005C3DC 46000002 */  mul.s       $f0, $f0, $f0
/* 05BF90 8005C3E0 5443FFF7 */  bnel        $v0, $v1, .L8005C3C0
/* 05BF94 8005C3E4 30A90001 */   andi       $t1, $a1, 0x1
.L8005C3E8:
/* 05BF98 8005C3E8 46026002 */  mul.s       $f0, $f12, $f2
/* 05BF9C 8005C3EC 00000000 */  nop
/* 05BFA0 8005C3F0 03E00008 */  jr          $ra
/* 05BFA4 8005C3F4 00000000 */   nop
/* 05BFA8 8005C3F8 00000000 */  nop
/* 05BFAC 8005C3FC 00000000 */  nop
