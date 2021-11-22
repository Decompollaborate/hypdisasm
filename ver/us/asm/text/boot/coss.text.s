.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel coss # 0
/* 053EA0 800542F0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 053EA4 800542F4 AFA40018 */  sw          $a0, 0x18($sp)
/* 053EA8 800542F8 00802825 */  move        $a1, $a0
/* 053EAC 800542FC 24A44000 */  addiu       $a0, $a1, 0x4000
/* 053EB0 80054300 AFBF0014 */  sw          $ra, 0x14($sp)
/* 053EB4 80054304 308EFFFF */  andi        $t6, $a0, 0xffff
/* 053EB8 80054308 0C0150C8 */  jal         sins
/* 053EBC 8005430C 01C02025 */   move       $a0, $t6
/* 053EC0 80054310 8FBF0014 */  lw          $ra, 0x14($sp)
/* 053EC4 80054314 27BD0018 */  addiu       $sp, $sp, 0x18
/* 053EC8 80054318 03E00008 */  jr          $ra
/* 053ECC 8005431C 00000000 */   nop
