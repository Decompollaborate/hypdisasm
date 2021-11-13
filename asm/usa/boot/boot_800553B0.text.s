.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800553B0 # 0
/* 054F60 800553B0 3C02800A */  lui         $v0, %hi(D_8009F8A4)
/* 054F64 800553B4 03E00008 */  jr          $ra
/* 054F68 800553B8 8C42F8A4 */   lw         $v0, %lo(D_8009F8A4)($v0)
/* 054F6C 800553BC 00000000 */  nop
