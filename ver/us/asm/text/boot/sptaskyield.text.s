.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osSpTaskYield # 0
/* 0543A0 800547F0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0543A4 800547F4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0543A8 800547F8 0C016A80 */  jal         __osSpSetStatus
/* 0543AC 800547FC 24040400 */   addiu      $a0, $zero, 0x400
/* 0543B0 80054800 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0543B4 80054804 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0543B8 80054808 03E00008 */  jr          $ra
/* 0543BC 8005480C 00000000 */   nop
