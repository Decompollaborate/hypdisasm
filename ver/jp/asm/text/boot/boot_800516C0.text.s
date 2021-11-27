.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800516C0 # 0
/* 051270 800516C0 8FAE0010 */  lw          $t6, 0x10($sp)
/* 051274 800516C4 AFA40000 */  sw          $a0, 0x0($sp)
/* 051278 800516C8 AFA50004 */  sw          $a1, 0x4($sp)
/* 05127C 800516CC 00EE0019 */  multu       $a3, $t6
/* 051280 800516D0 8CD90008 */  lw          $t9, 0x8($a2)
/* 051284 800516D4 8CD80000 */  lw          $t8, 0x0($a2)
/* 051288 800516D8 8CC40004 */  lw          $a0, 0x4($a2)
/* 05128C 800516DC 2401FFF0 */  addiu       $at, $zero, -0x10
/* 051290 800516E0 03194021 */  addu        $t0, $t8, $t9
/* 051294 800516E4 00001825 */  move        $v1, $zero
/* 051298 800516E8 00001012 */  mflo        $v0
/* 05129C 800516EC 2442000F */  addiu       $v0, $v0, 0xf
/* 0512A0 800516F0 00417824 */  and         $t7, $v0, $at
/* 0512A4 800516F4 008F4821 */  addu        $t1, $a0, $t7
/* 0512A8 800516F8 0109082B */  sltu        $at, $t0, $t1
/* 0512AC 800516FC 14200003 */  bnez        $at, .L8005170C
/* 0512B0 80051700 008F5021 */   addu       $t2, $a0, $t7
/* 0512B4 80051704 00801825 */  move        $v1, $a0
/* 0512B8 80051708 ACCA0004 */  sw          $t2, 0x4($a2)
.L8005170C:
/* 0512BC 8005170C 03E00008 */  jr          $ra
/* 0512C0 80051710 00601025 */   move       $v0, $v1
/* 0512C4 80051714 00000000 */  nop
/* 0512C8 80051718 00000000 */  nop
/* 0512CC 8005171C 00000000 */  nop
