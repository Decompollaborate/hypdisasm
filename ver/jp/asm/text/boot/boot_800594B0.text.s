.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osSpGetStatus # 0
/* 059060 800594B0 3C0EA404 */  lui         $t6, %hi(D_A4040010)
/* 059064 800594B4 03E00008 */  jr          $ra
/* 059068 800594B8 8DC20010 */   lw         $v0, %lo(D_A4040010)($t6)
/* 05906C 800594BC 00000000 */  nop
