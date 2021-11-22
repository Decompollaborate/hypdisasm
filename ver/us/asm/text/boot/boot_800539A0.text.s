.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800539A0 # 0
/* 053550 800539A0 8FAE0010 */  lw          $t6, 0x10($sp)
/* 053554 800539A4 AFA40000 */  sw          $a0, 0x0($sp)
/* 053558 800539A8 AFA50004 */  sw          $a1, 0x4($sp)
/* 05355C 800539AC 00EE0019 */  multu       $a3, $t6
/* 053560 800539B0 8CD90008 */  lw          $t9, 0x8($a2)
/* 053564 800539B4 8CD80000 */  lw          $t8, 0x0($a2)
/* 053568 800539B8 8CC40004 */  lw          $a0, 0x4($a2)
/* 05356C 800539BC 2401FFF0 */  addiu       $at, $zero, -0x10
/* 053570 800539C0 03194021 */  addu        $t0, $t8, $t9
/* 053574 800539C4 00001825 */  move        $v1, $zero
/* 053578 800539C8 00001012 */  mflo        $v0
/* 05357C 800539CC 2442000F */  addiu       $v0, $v0, 0xf
/* 053580 800539D0 00417824 */  and         $t7, $v0, $at
/* 053584 800539D4 008F4821 */  addu        $t1, $a0, $t7
/* 053588 800539D8 0109082B */  sltu        $at, $t0, $t1
/* 05358C 800539DC 14200003 */  bnez        $at, .L800539EC
/* 053590 800539E0 008F5021 */   addu       $t2, $a0, $t7
/* 053594 800539E4 00801825 */  move        $v1, $a0
/* 053598 800539E8 ACCA0004 */  sw          $t2, 0x4($a2)
.L800539EC:
/* 05359C 800539EC 03E00008 */  jr          $ra
/* 0535A0 800539F0 00601025 */   move       $v0, $v1
/* 0535A4 800539F4 00000000 */  nop
/* 0535A8 800539F8 00000000 */  nop
/* 0535AC 800539FC 00000000 */  nop
