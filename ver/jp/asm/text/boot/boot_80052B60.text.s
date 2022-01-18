.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

/* Possibly handwritten function */
glabel func_80052B60 # 0
/* 052710 80052B60 3C088000 */  lui         $t0, 0x8000
/* 052714 80052B64 240A2000 */  addiu       $t2, $zero, 0x2000
/* 052718 80052B68 010A4821 */  addu        $t1, $t0, $t2
/* 05271C 80052B6C 2529FFF0 */  addiu       $t1, $t1, -0x10
.L80052B70:
/* 052720 80052B70 BD010000 */  cache       0x01, 0x0($t0)
/* 052724 80052B74 0109082B */  sltu        $at, $t0, $t1
/* 052728 80052B78 1420FFFD */  bnez        $at, .L80052B70
/* 05272C 80052B7C 25080010 */   addiu      $t0, $t0, 0x10
/* 052730 80052B80 03E00008 */  jr          $ra
/* 052734 80052B84 00000000 */   nop
/* 052738 80052B88 00000000 */  nop
/* 05273C 80052B8C 00000000 */  nop
