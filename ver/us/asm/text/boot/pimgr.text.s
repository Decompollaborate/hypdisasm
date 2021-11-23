.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osCreatePiManager # 0
/* 0539E0 80053E30 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0539E4 80053E34 AFB00020 */  sw          $s0, 0x20($sp)
/* 0539E8 80053E38 3C10800A */  lui         $s0, %hi(__osPiDevMgr)
/* 0539EC 80053E3C 2610EE40 */  addiu       $s0, $s0, %lo(__osPiDevMgr)
/* 0539F0 80053E40 8E0E0000 */  lw          $t6, 0x0($s0)
/* 0539F4 80053E44 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0539F8 80053E48 AFA40030 */  sw          $a0, 0x30($sp)
/* 0539FC 80053E4C AFA50034 */  sw          $a1, 0x34($sp)
/* 053A00 80053E50 15C0004E */  bnez        $t6, .L80053F8C
/* 053A04 80053E54 AFA60038 */   sw         $a2, 0x38($sp)
/* 053A08 80053E58 00A02025 */  move        $a0, $a1
/* 053A0C 80053E5C 00C02825 */  move        $a1, $a2
/* 053A10 80053E60 0C0145B8 */  jal         osCreateMesgQueue
/* 053A14 80053E64 00E03025 */   move       $a2, $a3
/* 053A18 80053E68 3C048010 */  lui         $a0, %hi(D_800FF080)
/* 053A1C 80053E6C 3C058010 */  lui         $a1, %hi(D_800FF098)
/* 053A20 80053E70 24A5F098 */  addiu       $a1, $a1, %lo(D_800FF098)
/* 053A24 80053E74 2484F080 */  addiu       $a0, $a0, %lo(D_800FF080)
/* 053A28 80053E78 0C0145B8 */  jal         osCreateMesgQueue
/* 053A2C 80053E7C 24060001 */   addiu      $a2, $zero, 0x1
/* 053A30 80053E80 3C0F800A */  lui         $t7, %hi(__osPiAccessQueueEnabled)
/* 053A34 80053E84 8DEFF8E0 */  lw          $t7, %lo(__osPiAccessQueueEnabled)($t7)
/* 053A38 80053E88 15E00003 */  bnez        $t7, .L80053E98
/* 053A3C 80053E8C 00000000 */   nop
/* 053A40 80053E90 0C01641C */  jal         __osPiCreateAccessQueue
/* 053A44 80053E94 00000000 */   nop
.L80053E98:
/* 053A48 80053E98 3C058010 */  lui         $a1, %hi(D_800FF080)
/* 053A4C 80053E9C 3C062222 */  lui         $a2, 0x2222
/* 053A50 80053EA0 34C62222 */  ori         $a2, $a2, 0x2222
/* 053A54 80053EA4 24A5F080 */  addiu       $a1, $a1, %lo(D_800FF080)
/* 053A58 80053EA8 0C0145C4 */  jal         osSetEventMesg
/* 053A5C 80053EAC 24040008 */   addiu      $a0, $zero, 0x8
/* 053A60 80053EB0 2418FFFF */  addiu       $t8, $zero, -0x1
/* 053A64 80053EB4 AFB80028 */  sw          $t8, 0x28($sp)
/* 053A68 80053EB8 0C016804 */  jal         osGetThreadPri
/* 053A6C 80053EBC 00002025 */   move       $a0, $zero
/* 053A70 80053EC0 8FB90030 */  lw          $t9, 0x30($sp)
/* 053A74 80053EC4 00002025 */  move        $a0, $zero
/* 053A78 80053EC8 0059082A */  slt         $at, $v0, $t9
/* 053A7C 80053ECC 10200003 */  beqz        $at, .L80053EDC
/* 053A80 80053ED0 03202825 */   move       $a1, $t9
/* 053A84 80053ED4 0C014350 */  jal         osSetThreadPri
/* 053A88 80053ED8 AFA20028 */   sw         $v0, 0x28($sp)
.L80053EDC:
/* 053A8C 80053EDC 0C015FFC */  jal         __osDisableInt
/* 053A90 80053EE0 00000000 */   nop
/* 053A94 80053EE4 8FA90034 */  lw          $t1, 0x34($sp)
/* 053A98 80053EE8 8FAF0030 */  lw          $t7, 0x30($sp)
/* 053A9C 80053EEC 3C048010 */  lui         $a0, %hi(D_800FDED0)
/* 053AA0 80053EF0 3C0A8010 */  lui         $t2, %hi(D_800FF080)
/* 053AA4 80053EF4 3C0B8010 */  lui         $t3, %hi(__osPiAccessQueue)
/* 053AA8 80053EF8 3C0C8006 */  lui         $t4, %hi(__osPiRawStartDma)
/* 053AAC 80053EFC 3C0D8006 */  lui         $t5, %hi(__osEPiRawStartDma)
/* 053AB0 80053F00 3C0E8010 */  lui         $t6, %hi(D_800FF080)
/* 053AB4 80053F04 2484DED0 */  addiu       $a0, $a0, %lo(D_800FDED0)
/* 053AB8 80053F08 24080001 */  addiu       $t0, $zero, 0x1
/* 053ABC 80053F0C 254AF080 */  addiu       $t2, $t2, %lo(D_800FF080)
/* 053AC0 80053F10 256B0378 */  addiu       $t3, $t3, %lo(__osPiAccessQueue)
/* 053AC4 80053F14 258CA030 */  addiu       $t4, $t4, %lo(__osPiRawStartDma)
/* 053AC8 80053F18 25ADA100 */  addiu       $t5, $t5, %lo(__osEPiRawStartDma)
/* 053ACC 80053F1C 25CEF080 */  addiu       $t6, $t6, %lo(D_800FF080)
/* 053AD0 80053F20 3C068006 */  lui         $a2, %hi(__osDevMgrMain)
/* 053AD4 80053F24 AFA2002C */  sw          $v0, 0x2c($sp)
/* 053AD8 80053F28 AE080000 */  sw          $t0, 0x0($s0)
/* 053ADC 80053F2C AE040004 */  sw          $a0, 0x4($s0)
/* 053AE0 80053F30 AE0A000C */  sw          $t2, 0xc($s0)
/* 053AE4 80053F34 AE0B0010 */  sw          $t3, 0x10($s0)
/* 053AE8 80053F38 AE0C0014 */  sw          $t4, 0x14($s0)
/* 053AEC 80053F3C AE0D0018 */  sw          $t5, 0x18($s0)
/* 053AF0 80053F40 24C6A2E0 */  addiu       $a2, $a2, %lo(__osDevMgrMain)
/* 053AF4 80053F44 AFAE0010 */  sw          $t6, 0x10($sp)
/* 053AF8 80053F48 00002825 */  move        $a1, $zero
/* 053AFC 80053F4C 02003825 */  move        $a3, $s0
/* 053B00 80053F50 AE090008 */  sw          $t1, 0x8($s0)
/* 053B04 80053F54 0C0142A8 */  jal         osCreateThread
/* 053B08 80053F58 AFAF0014 */   sw         $t7, 0x14($sp)
/* 053B0C 80053F5C 3C048010 */  lui         $a0, %hi(D_800FDED0)
/* 053B10 80053F60 0C0142FC */  jal         osStartThread
/* 053B14 80053F64 2484DED0 */   addiu      $a0, $a0, %lo(D_800FDED0)
/* 053B18 80053F68 0C016018 */  jal         __osRestoreInt
/* 053B1C 80053F6C 8FA4002C */   lw         $a0, 0x2c($sp)
/* 053B20 80053F70 8FB80028 */  lw          $t8, 0x28($sp)
/* 053B24 80053F74 2401FFFF */  addiu       $at, $zero, -0x1
/* 053B28 80053F78 00002025 */  move        $a0, $zero
/* 053B2C 80053F7C 53010004 */  beql        $t8, $at, .L80053F90
/* 053B30 80053F80 8FBF0024 */   lw         $ra, 0x24($sp)
/* 053B34 80053F84 0C014350 */  jal         osSetThreadPri
/* 053B38 80053F88 03002825 */   move       $a1, $t8
.L80053F8C:
/* 053B3C 80053F8C 8FBF0024 */  lw          $ra, 0x24($sp)
.L80053F90:
/* 053B40 80053F90 8FB00020 */  lw          $s0, 0x20($sp)
/* 053B44 80053F94 27BD0030 */  addiu       $sp, $sp, 0x30
/* 053B48 80053F98 03E00008 */  jr          $ra
/* 053B4C 80053F9C 00000000 */   nop
