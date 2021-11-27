.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80054BB0 # 0
/* 054760 80054BB0 40846000 */  mtc0        $a0, Status
/* 054764 80054BB4 00000000 */  nop
/* 054768 80054BB8 03E00008 */  jr          $ra
/* 05476C 80054BBC 00000000 */   nop

glabel func_80054BC0 # 1
/* 054770 80054BC0 40026000 */  mfc0        $v0, Status
/* 054774 80054BC4 03E00008 */  jr          $ra
/* 054778 80054BC8 00000000 */   nop
/* 05477C 80054BCC 00000000 */  nop
