.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005B880 # 0
/* 05B430 8005B880 24010002 */  addiu       $at, $zero, 0x2
/* 05B434 8005B884 14A10008 */  bne         $a1, $at, .L8005B8A8
/* 05B438 8005B888 8C82001C */   lw         $v0, 0x1c($a0)
/* 05B43C 8005B88C 8C8E0014 */  lw          $t6, 0x14($a0)
/* 05B440 8005B890 000E7880 */  sll         $t7, $t6, 2
/* 05B444 8005B894 004FC021 */  addu        $t8, $v0, $t7
/* 05B448 8005B898 AF060000 */  sw          $a2, 0x0($t8)
/* 05B44C 8005B89C 8C990014 */  lw          $t9, 0x14($a0)
/* 05B450 8005B8A0 27280001 */  addiu       $t0, $t9, 0x1
/* 05B454 8005B8A4 AC880014 */  sw          $t0, 0x14($a0)
.L8005B8A8:
/* 05B458 8005B8A8 03E00008 */  jr          $ra
/* 05B45C 8005B8AC 00001025 */   move       $v0, $zero

glabel func_8005B8B0 # 1
/* 05B460 8005B8B0 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 05B464 8005B8B4 8FA80058 */  lw          $t0, 0x58($sp)
/* 05B468 8005B8B8 AFBF0044 */  sw          $ra, 0x44($sp)
/* 05B46C 8005B8BC AFBE0040 */  sw          $fp, 0x40($sp)
/* 05B470 8005B8C0 AFB7003C */  sw          $s7, 0x3c($sp)
/* 05B474 8005B8C4 AFB60038 */  sw          $s6, 0x38($sp)
/* 05B478 8005B8C8 AFB50034 */  sw          $s5, 0x34($sp)
/* 05B47C 8005B8CC AFB40030 */  sw          $s4, 0x30($sp)
/* 05B480 8005B8D0 AFB3002C */  sw          $s3, 0x2c($sp)
/* 05B484 8005B8D4 AFB20028 */  sw          $s2, 0x28($sp)
/* 05B488 8005B8D8 AFB10024 */  sw          $s1, 0x24($sp)
/* 05B48C 8005B8DC AFB00020 */  sw          $s0, 0x20($sp)
/* 05B490 8005B8E0 8C83001C */  lw          $v1, 0x1c($a0)
/* 05B494 8005B8E4 3C0E0200 */  lui         $t6, (0x2000440 >> 16)
/* 05B498 8005B8E8 00061040 */  sll         $v0, $a2, 1
/* 05B49C 8005B8EC 3C0F0200 */  lui         $t7, (0x2000580 >> 16)
/* 05B4A0 8005B8F0 35CE0440 */  ori         $t6, $t6, (0x2000440 & 0xFFFF)
/* 05B4A4 8005B8F4 35EF0580 */  ori         $t7, $t7, (0x2000580 & 0xFFFF)
/* 05B4A8 8005B8F8 AD0E0000 */  sw          $t6, 0x0($t0)
/* 05B4AC 8005B8FC AD020004 */  sw          $v0, 0x4($t0)
/* 05B4B0 8005B900 AD0F0008 */  sw          $t7, 0x8($t0)
/* 05B4B4 8005B904 AD02000C */  sw          $v0, 0xc($t0)
/* 05B4B8 8005B908 8C980014 */  lw          $t8, 0x14($a0)
/* 05B4BC 8005B90C 00C0A825 */  move        $s5, $a2
/* 05B4C0 8005B910 00A0B825 */  move        $s7, $a1
/* 05B4C4 8005B914 00E0F025 */  move        $fp, $a3
/* 05B4C8 8005B918 0080A025 */  move        $s4, $a0
/* 05B4CC 8005B91C 00008025 */  move        $s0, $zero
/* 05B4D0 8005B920 1B00001E */  blez        $t8, .L8005B99C
/* 05B4D4 8005B924 25130010 */   addiu      $s3, $t0, 0x10
/* 05B4D8 8005B928 3C120C00 */  lui         $s2, (0xC007FFF >> 16)
/* 05B4DC 8005B92C 36527FFF */  ori         $s2, $s2, (0xC007FFF & 0xFFFF)
/* 05B4E0 8005B930 00608825 */  move        $s1, $v1
/* 05B4E4 8005B934 3056FFFF */  andi        $s6, $v0, 0xffff
.L8005B938:
/* 05B4E8 8005B938 8E240000 */  lw          $a0, 0x0($s1)
/* 05B4EC 8005B93C AFB30010 */  sw          $s3, 0x10($sp)
/* 05B4F0 8005B940 02E02825 */  move        $a1, $s7
/* 05B4F4 8005B944 8C990004 */  lw          $t9, 0x4($a0)
/* 05B4F8 8005B948 02A03025 */  move        $a2, $s5
/* 05B4FC 8005B94C 03C03825 */  move        $a3, $fp
/* 05B500 8005B950 0320F809 */  jalr        $t9
/* 05B504 8005B954 00000000 */   nop
/* 05B508 8005B958 3C0A06C0 */  lui         $t2, (0x6C00440 >> 16)
/* 05B50C 8005B95C 3C0B0800 */  lui         $t3, (0x8000580 >> 16)
/* 05B510 8005B960 3C090800 */  lui         $t1, 0x800
/* 05B514 8005B964 354A0440 */  ori         $t2, $t2, (0x6C00440 & 0xFFFF)
/* 05B518 8005B968 356B0580 */  ori         $t3, $t3, (0x8000580 & 0xFFFF)
/* 05B51C 8005B96C AC490000 */  sw          $t1, 0x0($v0)
/* 05B520 8005B970 AC560004 */  sw          $s6, 0x4($v0)
/* 05B524 8005B974 AC4A000C */  sw          $t2, 0xc($v0)
/* 05B528 8005B978 AC520008 */  sw          $s2, 0x8($v0)
/* 05B52C 8005B97C AC4B0014 */  sw          $t3, 0x14($v0)
/* 05B530 8005B980 AC520010 */  sw          $s2, 0x10($v0)
/* 05B534 8005B984 8E8C0014 */  lw          $t4, 0x14($s4)
/* 05B538 8005B988 26100001 */  addiu       $s0, $s0, 0x1
/* 05B53C 8005B98C 26310004 */  addiu       $s1, $s1, 0x4
/* 05B540 8005B990 020C082A */  slt         $at, $s0, $t4
/* 05B544 8005B994 1420FFE8 */  bnez        $at, .L8005B938
/* 05B548 8005B998 24530018 */   addiu      $s3, $v0, 0x18
.L8005B99C:
/* 05B54C 8005B99C 8FBF0044 */  lw          $ra, 0x44($sp)
/* 05B550 8005B9A0 02601025 */  move        $v0, $s3
/* 05B554 8005B9A4 8FB3002C */  lw          $s3, 0x2c($sp)
/* 05B558 8005B9A8 8FB00020 */  lw          $s0, 0x20($sp)
/* 05B55C 8005B9AC 8FB10024 */  lw          $s1, 0x24($sp)
/* 05B560 8005B9B0 8FB20028 */  lw          $s2, 0x28($sp)
/* 05B564 8005B9B4 8FB40030 */  lw          $s4, 0x30($sp)
/* 05B568 8005B9B8 8FB50034 */  lw          $s5, 0x34($sp)
/* 05B56C 8005B9BC 8FB60038 */  lw          $s6, 0x38($sp)
/* 05B570 8005B9C0 8FB7003C */  lw          $s7, 0x3c($sp)
/* 05B574 8005B9C4 8FBE0040 */  lw          $fp, 0x40($sp)
/* 05B578 8005B9C8 03E00008 */  jr          $ra
/* 05B57C 8005B9CC 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8005B9D0 # 2
/* 05B580 8005B9D0 24010001 */  addiu       $at, $zero, 0x1
/* 05B584 8005B9D4 10A10006 */  beq         $a1, $at, .L8005B9F0
/* 05B588 8005B9D8 00001025 */   move       $v0, $zero
/* 05B58C 8005B9DC 24010006 */  addiu       $at, $zero, 0x6
/* 05B590 8005B9E0 50A10006 */  beql        $a1, $at, .L8005B9FC
/* 05B594 8005B9E4 AC860014 */   sw         $a2, 0x14($a0)
/* 05B598 8005B9E8 03E00008 */  jr          $ra
/* 05B59C 8005B9EC 00001025 */   move       $v0, $zero
.L8005B9F0:
/* 05B5A0 8005B9F0 03E00008 */  jr          $ra
/* 05B5A4 8005B9F4 AC860000 */   sw         $a2, 0x0($a0)
/* 05B5A8 8005B9F8 AC860014 */  sw          $a2, 0x14($a0)
.L8005B9FC:
/* 05B5AC 8005B9FC 03E00008 */  jr          $ra
/* 05B5B0 8005BA00 00001025 */   move       $v0, $zero

glabel func_8005BA04 # 3
/* 05B5B4 8005BA04 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 05B5B8 8005BA08 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05B5BC 8005BA0C AFA40020 */  sw          $a0, 0x20($sp)
/* 05B5C0 8005BA10 8C840000 */  lw          $a0, 0x0($a0)
/* 05B5C4 8005BA14 8FAF0030 */  lw          $t7, 0x30($sp)
/* 05B5C8 8005BA18 AFA60028 */  sw          $a2, 0x28($sp)
/* 05B5CC 8005BA1C AFAF0010 */  sw          $t7, 0x10($sp)
/* 05B5D0 8005BA20 8C990004 */  lw          $t9, 0x4($a0)
/* 05B5D4 8005BA24 0320F809 */  jalr        $t9
/* 05B5D8 8005BA28 00000000 */   nop
/* 05B5DC 8005BA2C 8FA60028 */  lw          $a2, 0x28($sp)
/* 05B5E0 8005BA30 3C030800 */  lui         $v1, 0x800
/* 05B5E4 8005BA34 3C0A0440 */  lui         $t2, (0x4400580 >> 16)
/* 05B5E8 8005BA38 0006C040 */  sll         $t8, $a2, 1
/* 05B5EC 8005BA3C 00065880 */  sll         $t3, $a2, 2
/* 05B5F0 8005BA40 3308FFFF */  andi        $t0, $t8, 0xffff
/* 05B5F4 8005BA44 354A0580 */  ori         $t2, $t2, (0x4400580 & 0xFFFF)
/* 05B5F8 8005BA48 3C090D00 */  lui         $t1, 0xd00
/* 05B5FC 8005BA4C 316CFFFF */  andi        $t4, $t3, 0xffff
/* 05B600 8005BA50 3C0D0600 */  lui         $t5, 0x600
/* 05B604 8005BA54 AC480004 */  sw          $t0, 0x4($v0)
/* 05B608 8005BA58 AC430000 */  sw          $v1, 0x0($v0)
/* 05B60C 8005BA5C AC490008 */  sw          $t1, 0x8($v0)
/* 05B610 8005BA60 AC4A000C */  sw          $t2, 0xc($v0)
/* 05B614 8005BA64 AC4C0014 */  sw          $t4, 0x14($v0)
/* 05B618 8005BA68 AC430010 */  sw          $v1, 0x10($v0)
/* 05B61C 8005BA6C AC4D0018 */  sw          $t5, 0x18($v0)
/* 05B620 8005BA70 8FAE0020 */  lw          $t6, 0x20($sp)
/* 05B624 8005BA74 24420020 */  addiu       $v0, $v0, 0x20
/* 05B628 8005BA78 8DCF0014 */  lw          $t7, 0x14($t6)
/* 05B62C 8005BA7C AC4FFFFC */  sw          $t7, -0x4($v0)
/* 05B630 8005BA80 8FBF001C */  lw          $ra, 0x1c($sp)
/* 05B634 8005BA84 27BD0020 */  addiu       $sp, $sp, 0x20
/* 05B638 8005BA88 03E00008 */  jr          $ra
/* 05B63C 8005BA8C 00000000 */   nop

glabel func_8005BA90 # 4
/* 05B640 8005BA90 3C0EA480 */  lui         $t6, %hi(D_A4800018)
/* 05B644 8005BA94 8DC40018 */  lw          $a0, %lo(D_A4800018)($t6)
/* 05B648 8005BA98 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 05B64C 8005BA9C 308F0003 */  andi        $t7, $a0, 0x3
/* 05B650 8005BAA0 11E00003 */  beqz        $t7, .L8005BAB0
/* 05B654 8005BAA4 00000000 */   nop
/* 05B658 8005BAA8 10000002 */  b           .L8005BAB4
/* 05B65C 8005BAAC 24020001 */   addiu      $v0, $zero, 0x1
.L8005BAB0:
/* 05B660 8005BAB0 00001025 */  move        $v0, $zero
.L8005BAB4:
/* 05B664 8005BAB4 03E00008 */  jr          $ra
/* 05B668 8005BAB8 27BD0008 */   addiu      $sp, $sp, 0x8
/* 05B66C 8005BABC 00000000 */  nop
