.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80050FA0 # 0
/* 050B50 80050FA0 40028000 */  mfc0        $v0, Config
/* 050B54 80050FA4 03E00008 */  jr          $ra
/* 050B58 80050FA8 00000000 */   nop
/* 050B5C 80050FAC 00000000 */  nop
