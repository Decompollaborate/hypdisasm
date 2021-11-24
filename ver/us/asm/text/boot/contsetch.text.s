.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osContSetCh # 0
/* 0514B0 80051900 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0514B4 80051904 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0514B8 80051908 0C0160FC */  jal         __osSiGetAccess
/* 0514BC 8005190C AFA40018 */   sw         $a0, 0x18($sp)
/* 0514C0 80051910 93A2001B */  lbu         $v0, 0x1b($sp)
/* 0514C4 80051914 240E0004 */  addiu       $t6, $zero, 0x4
/* 0514C8 80051918 240F00FE */  addiu       $t7, $zero, 0xfe
/* 0514CC 8005191C 28410005 */  slti        $at, $v0, 0x5
/* 0514D0 80051920 14200003 */  bnez        $at, .L80051930
/* 0514D4 80051924 3C018010 */   lui        $at, %hi(__osMaxControllers)
/* 0514D8 80051928 10000003 */  b           .L80051938
/* 0514DC 8005192C A02EDC51 */   sb         $t6, %lo(__osMaxControllers)($at)
.L80051930:
/* 0514E0 80051930 3C018010 */  lui         $at, %hi(__osMaxControllers)
/* 0514E4 80051934 A022DC51 */  sb          $v0, %lo(__osMaxControllers)($at)
.L80051938:
/* 0514E8 80051938 3C018010 */  lui         $at, %hi(__osContLastPoll)
/* 0514EC 8005193C 0C01610D */  jal         __osSiRelAccess
/* 0514F0 80051940 A02FDC50 */   sb         $t7, %lo(__osContLastPoll)($at)
/* 0514F4 80051944 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0514F8 80051948 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0514FC 8005194C 00001025 */  move        $v0, $zero
/* 051500 80051950 03E00008 */  jr          $ra
/* 051504 80051954 00000000 */   nop
/* 051508 80051958 00000000 */  nop
/* 05150C 8005195C 00000000 */  nop
