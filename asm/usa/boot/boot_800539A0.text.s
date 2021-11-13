.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800539A0 # 0
/* 000000 800539A0 8FAE0010 */  lw          $t6, 0x10($sp)
/* 000004 800539A4 AFA40000 */  sw          $a0, 0x0($sp)
/* 000008 800539A8 AFA50004 */  sw          $a1, 0x4($sp)
/* 00000C 800539AC 00EE0019 */  multu       $a3, $t6
/* 000010 800539B0 8CD90008 */  lw          $t9, 0x8($a2)
/* 000014 800539B4 8CD80000 */  lw          $t8, 0x0($a2)
/* 000018 800539B8 8CC40004 */  lw          $a0, 0x4($a2)
/* 00001C 800539BC 2401FFF0 */  addiu       $at, $zero, -0x10
/* 000020 800539C0 03194021 */  addu        $t0, $t8, $t9
/* 000024 800539C4 00001825 */  move        $v1, $zero
/* 000028 800539C8 00001012 */  mflo        $v0
/* 00002C 800539CC 2442000F */  addiu       $v0, $v0, 0xf
/* 000030 800539D0 00417824 */  and         $t7, $v0, $at
/* 000034 800539D4 008F4821 */  addu        $t1, $a0, $t7
/* 000038 800539D8 0109082B */  sltu        $at, $t0, $t1
/* 00003C 800539DC 14200003 */  bne         $at, $zero, .L800539EC
/* 000040 800539E0 008F5021 */   addu       $t2, $a0, $t7
/* 000044 800539E4 00801825 */  move        $v1, $a0
/* 000048 800539E8 ACCA0004 */  sw          $t2, 0x4($a2)
.L800539EC:
/* 00004C 800539EC 03E00008 */  jr          $ra
/* 000050 800539F0 00601025 */   move       $v0, $v1
/* 000054 800539F4 00000000 */  nop
/* 000058 800539F8 00000000 */  nop
/* 00005C 800539FC 00000000 */  nop
