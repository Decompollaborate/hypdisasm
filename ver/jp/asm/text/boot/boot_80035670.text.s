.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80035670 # 0
/* 035220 80035670 3C03800A */  lui         $v1, %hi(D_800A1860)
/* 035224 80035674 24631860 */  addiu       $v1, $v1, %lo(D_800A1860)
/* 035228 80035678 8C6E0000 */  lw          $t6, 0x0($v1)
/* 03522C 8003567C 5DC00004 */  bgtzl       $t6, .L80035690
/* 035230 80035680 8C6F0000 */   lw         $t7, 0x0($v1)
/* 035234 80035684 03E00008 */  jr          $ra
/* 035238 80035688 00001025 */   move       $v0, $zero
/* 03523C 8003568C 8C6F0000 */  lw          $t7, 0x0($v1)
.L80035690:
/* 035240 80035690 24020001 */  addiu       $v0, $zero, 0x1
/* 035244 80035694 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 035248 80035698 AC780000 */  sw          $t8, 0x0($v1)
/* 03524C 8003569C 03E00008 */  jr          $ra
/* 035250 800356A0 00000000 */   nop
/* 035254 800356A4 00000000 */  nop
/* 035258 800356A8 00000000 */  nop
/* 03525C 800356AC 00000000 */  nop
