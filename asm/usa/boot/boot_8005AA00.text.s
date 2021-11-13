.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005AA00 # 0
/* 05A5B0 8005AA00 3C0EA404 */  lui         $t6, %hi(D_A4040010)
/* 05A5B4 8005AA04 03E00008 */  jr          $ra
/* 05A5B8 8005AA08 ADC40010 */   sw         $a0, %lo(D_A4040010)($t6)
/* 05A5BC 8005AA0C 00000000 */  nop
