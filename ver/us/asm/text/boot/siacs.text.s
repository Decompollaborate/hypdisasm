.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osSiCreateAccessQueue # 0
/* 057F50 800583A0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 057F54 800583A4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 057F58 800583A8 240E0001 */  addiu       $t6, $zero, 0x1
/* 057F5C 800583AC 3C01800A */  lui         $at, %hi(__osSiAccessQueueEnabled)
/* 057F60 800583B0 3C048010 */  lui         $a0, %hi(__osSiAccessQueue)
/* 057F64 800583B4 3C058010 */  lui         $a1, %hi(siAccessBuf)
/* 057F68 800583B8 AC2EF8B0 */  sw          $t6, %lo(__osSiAccessQueueEnabled)($at)
/* 057F6C 800583BC 24A50310 */  addiu       $a1, $a1, %lo(siAccessBuf)
/* 057F70 800583C0 24840318 */  addiu       $a0, $a0, %lo(__osSiAccessQueue)
/* 057F74 800583C4 0C0145B8 */  jal         osCreateMesgQueue
/* 057F78 800583C8 24060001 */   addiu      $a2, $zero, 0x1
/* 057F7C 800583CC 3C048010 */  lui         $a0, %hi(__osSiAccessQueue)
/* 057F80 800583D0 24840318 */  addiu       $a0, $a0, %lo(__osSiAccessQueue)
/* 057F84 800583D4 00002825 */  move        $a1, $zero
/* 057F88 800583D8 0C014C64 */  jal         osSendMesg
/* 057F8C 800583DC 00003025 */   move       $a2, $zero
/* 057F90 800583E0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 057F94 800583E4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 057F98 800583E8 03E00008 */  jr          $ra
/* 057F9C 800583EC 00000000 */   nop

glabel __osSiGetAccess # 1
/* 057FA0 800583F0 3C0E800A */  lui         $t6, %hi(__osSiAccessQueueEnabled)
/* 057FA4 800583F4 8DCEF8B0 */  lw          $t6, %lo(__osSiAccessQueueEnabled)($t6)
/* 057FA8 800583F8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 057FAC 800583FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 057FB0 80058400 15C00003 */  bnez        $t6, .L80058410
/* 057FB4 80058404 00000000 */   nop
/* 057FB8 80058408 0C0160E8 */  jal         __osSiCreateAccessQueue
/* 057FBC 8005840C 00000000 */   nop
.L80058410:
/* 057FC0 80058410 3C048010 */  lui         $a0, %hi(__osSiAccessQueue)
/* 057FC4 80058414 24840318 */  addiu       $a0, $a0, %lo(__osSiAccessQueue)
/* 057FC8 80058418 27A5001C */  addiu       $a1, $sp, 0x1c
/* 057FCC 8005841C 0C014554 */  jal         osRecvMesg
/* 057FD0 80058420 24060001 */   addiu      $a2, $zero, 0x1
/* 057FD4 80058424 8FBF0014 */  lw          $ra, 0x14($sp)
/* 057FD8 80058428 27BD0020 */  addiu       $sp, $sp, 0x20
/* 057FDC 8005842C 03E00008 */  jr          $ra
/* 057FE0 80058430 00000000 */   nop

glabel __osSiRelAccess # 2
/* 057FE4 80058434 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 057FE8 80058438 AFBF0014 */  sw          $ra, 0x14($sp)
/* 057FEC 8005843C 3C048010 */  lui         $a0, %hi(__osSiAccessQueue)
/* 057FF0 80058440 24840318 */  addiu       $a0, $a0, %lo(__osSiAccessQueue)
/* 057FF4 80058444 00002825 */  move        $a1, $zero
/* 057FF8 80058448 0C014C64 */  jal         osSendMesg
/* 057FFC 8005844C 00003025 */   move       $a2, $zero
/* 058000 80058450 8FBF0014 */  lw          $ra, 0x14($sp)
/* 058004 80058454 27BD0018 */  addiu       $sp, $sp, 0x18
/* 058008 80058458 03E00008 */  jr          $ra
/* 05800C 8005845C 00000000 */   nop
