.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800521A0 # 0
/* 051D50 800521A0 18A00011 */  blez        $a1, .L800521E8
/* 051D54 800521A4 00000000 */   nop
/* 051D58 800521A8 240B2000 */  addiu       $t3, $zero, 0x2000
/* 051D5C 800521AC 00AB082B */  sltu        $at, $a1, $t3
/* 051D60 800521B0 1020000F */  beqz        $at, .L800521F0
/* 051D64 800521B4 00000000 */   nop
/* 051D68 800521B8 00804025 */  move        $t0, $a0
/* 051D6C 800521BC 00854821 */  addu        $t1, $a0, $a1
/* 051D70 800521C0 0109082B */  sltu        $at, $t0, $t1
/* 051D74 800521C4 10200008 */  beqz        $at, .L800521E8
/* 051D78 800521C8 00000000 */   nop
/* 051D7C 800521CC 310A000F */  andi        $t2, $t0, 0xf
/* 051D80 800521D0 2529FFF0 */  addiu       $t1, $t1, -0x10
/* 051D84 800521D4 010A4023 */  subu        $t0, $t0, $t2
.L800521D8:
/* 051D88 800521D8 BD190000 */  cache       0x19, 0x0($t0)
/* 051D8C 800521DC 0109082B */  sltu        $at, $t0, $t1
/* 051D90 800521E0 1420FFFD */  bnez        $at, .L800521D8
/* 051D94 800521E4 25080010 */   addiu      $t0, $t0, 0x10
.L800521E8:
/* 051D98 800521E8 03E00008 */  jr          $ra
/* 051D9C 800521EC 00000000 */   nop
.L800521F0:
/* 051DA0 800521F0 3C088000 */  lui         $t0, %hi(D_80000010)
/* 051DA4 800521F4 010B4821 */  addu        $t1, $t0, $t3
/* 051DA8 800521F8 2529FFF0 */  addiu       $t1, $t1, -0x10
.L800521FC:
/* 051DAC 800521FC BD010000 */  cache       0x01, 0x0($t0)
/* 051DB0 80052200 0109082B */  sltu        $at, $t0, $t1
/* 051DB4 80052204 1420FFFD */  bnez        $at, .L800521FC
/* 051DB8 80052208 25080010 */   addiu      $t0, $t0, %lo(D_80000010)
/* 051DBC 8005220C 03E00008 */  jr          $ra
/* 051DC0 80052210 00000000 */   nop
/* 051DC4 80052214 00000000 */  nop
/* 051DC8 80052218 00000000 */  nop
/* 051DCC 8005221C 00000000 */  nop
