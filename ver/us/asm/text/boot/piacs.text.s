.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osPiCreateAccessQueue # 0
/* 058C20 80059070 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 058C24 80059074 AFBF0014 */  sw          $ra, 0x14($sp)
/* 058C28 80059078 240E0001 */  addiu       $t6, $zero, 0x1
/* 058C2C 8005907C 3C01800A */  lui         $at, %hi(__osPiAccessQueueEnabled)
/* 058C30 80059080 3C048010 */  lui         $a0, %hi(__osPiAccessQueue)
/* 058C34 80059084 3C058010 */  lui         $a1, %hi(D_80100370)
/* 058C38 80059088 AC2EF8E0 */  sw          $t6, %lo(__osPiAccessQueueEnabled)($at)
/* 058C3C 8005908C 24A50370 */  addiu       $a1, $a1, %lo(D_80100370)
/* 058C40 80059090 24840378 */  addiu       $a0, $a0, %lo(__osPiAccessQueue)
/* 058C44 80059094 0C0145B8 */  jal         osCreateMesgQueue
/* 058C48 80059098 24060001 */   addiu      $a2, $zero, 0x1
/* 058C4C 8005909C 3C048010 */  lui         $a0, %hi(__osPiAccessQueue)
/* 058C50 800590A0 24840378 */  addiu       $a0, $a0, %lo(__osPiAccessQueue)
/* 058C54 800590A4 00002825 */  move        $a1, $zero
/* 058C58 800590A8 0C014C64 */  jal         osSendMesg
/* 058C5C 800590AC 00003025 */   move       $a2, $zero
/* 058C60 800590B0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 058C64 800590B4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 058C68 800590B8 03E00008 */  jr          $ra
/* 058C6C 800590BC 00000000 */   nop

glabel __osPiGetAccess # 1
/* 058C70 800590C0 3C0E800A */  lui         $t6, %hi(__osPiAccessQueueEnabled)
/* 058C74 800590C4 8DCEF8E0 */  lw          $t6, %lo(__osPiAccessQueueEnabled)($t6)
/* 058C78 800590C8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 058C7C 800590CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 058C80 800590D0 15C00003 */  bnez        $t6, .L800590E0
/* 058C84 800590D4 00000000 */   nop
/* 058C88 800590D8 0C01641C */  jal         __osPiCreateAccessQueue
/* 058C8C 800590DC 00000000 */   nop
.L800590E0:
/* 058C90 800590E0 3C048010 */  lui         $a0, %hi(__osPiAccessQueue)
/* 058C94 800590E4 24840378 */  addiu       $a0, $a0, %lo(__osPiAccessQueue)
/* 058C98 800590E8 27A5001C */  addiu       $a1, $sp, 0x1c
/* 058C9C 800590EC 0C014554 */  jal         osRecvMesg
/* 058CA0 800590F0 24060001 */   addiu      $a2, $zero, 0x1
/* 058CA4 800590F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 058CA8 800590F8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 058CAC 800590FC 03E00008 */  jr          $ra
/* 058CB0 80059100 00000000 */   nop

glabel __osPiRelAccess # 2
/* 058CB4 80059104 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 058CB8 80059108 AFBF0014 */  sw          $ra, 0x14($sp)
/* 058CBC 8005910C 3C048010 */  lui         $a0, %hi(__osPiAccessQueue)
/* 058CC0 80059110 24840378 */  addiu       $a0, $a0, %lo(__osPiAccessQueue)
/* 058CC4 80059114 00002825 */  move        $a1, $zero
/* 058CC8 80059118 0C014C64 */  jal         osSendMesg
/* 058CCC 8005911C 00003025 */   move       $a2, $zero
/* 058CD0 80059120 8FBF0014 */  lw          $ra, 0x14($sp)
/* 058CD4 80059124 27BD0018 */  addiu       $sp, $sp, 0x18
/* 058CD8 80059128 03E00008 */  jr          $ra
/* 058CDC 8005912C 00000000 */   nop
