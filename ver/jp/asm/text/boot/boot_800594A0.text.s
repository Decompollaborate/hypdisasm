.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800594A0 # 0
/* 059050 800594A0 3C0EA404 */  lui         $t6, %hi(D_A4040010)
/* 059054 800594A4 03E00008 */  jr          $ra
/* 059058 800594A8 ADC40010 */   sw         $a0, %lo(D_A4040010)($t6)
/* 05905C 800594AC 00000000 */  nop
