.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osSpTaskYield # 0
/* 051DD0 80052220 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 051DD4 80052224 AFBF0014 */  sw          $ra, 0x14($sp)
/* 051DD8 80052228 0C016528 */  jal         __osSpSetStatus
/* 051DDC 8005222C 24040400 */   addiu      $a0, $zero, 0x400
/* 051DE0 80052230 8FBF0014 */  lw          $ra, 0x14($sp)
/* 051DE4 80052234 27BD0018 */  addiu       $sp, $sp, 0x18
/* 051DE8 80052238 03E00008 */  jr          $ra
/* 051DEC 8005223C 00000000 */   nop
