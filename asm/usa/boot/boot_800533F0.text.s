.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800533F0 # 0
/* 052FA0 800533F0 3C0E800A */  lui         $t6, %hi(__osPiDevMgr)
/* 052FA4 800533F4 8DCEEE40 */  lw          $t6, %lo(__osPiDevMgr)($t6)
/* 052FA8 800533F8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 052FAC 800533FC AFB00018 */  sw          $s0, 0x18($sp)
/* 052FB0 80053400 00808025 */  move        $s0, $a0
/* 052FB4 80053404 15C00003 */  bne         $t6, $zero, .L80053414
/* 052FB8 80053408 AFBF001C */   sw         $ra, 0x1c($sp)
/* 052FBC 8005340C 10000022 */  b           .L80053498
/* 052FC0 80053410 2402FFFF */   addiu      $v0, $zero, -0x1
.L80053414:
/* 052FC4 80053414 14C00004 */  bne         $a2, $zero, .L80053428
/* 052FC8 80053418 2418000C */   addiu      $t8, $zero, 0xc
/* 052FCC 8005341C 240F000B */  addiu       $t7, $zero, 0xb
/* 052FD0 80053420 10000002 */  b           .L8005342C
/* 052FD4 80053424 A60F0000 */   sh         $t7, 0x0($s0)
.L80053428:
/* 052FD8 80053428 A6180000 */  sh          $t8, 0x0($s0)
.L8005342C:
/* 052FDC 8005342C A2050002 */  sb          $a1, 0x2($s0)
/* 052FE0 80053430 8FB90038 */  lw          $t9, 0x38($sp)
/* 052FE4 80053434 24010001 */  addiu       $at, $zero, 0x1
/* 052FE8 80053438 AE190004 */  sw          $t9, 0x4($s0)
/* 052FEC 8005343C 8FA80030 */  lw          $t0, 0x30($sp)
/* 052FF0 80053440 AE07000C */  sw          $a3, 0xc($s0)
/* 052FF4 80053444 AE080008 */  sw          $t0, 0x8($s0)
/* 052FF8 80053448 8FA90034 */  lw          $t1, 0x34($sp)
/* 052FFC 8005344C AE000014 */  sw          $zero, 0x14($s0)
/* 053000 80053450 14A10009 */  bne         $a1, $at, .L80053478
/* 053004 80053454 AE090010 */   sw         $t1, 0x10($s0)
/* 053008 80053458 0C016410 */  jal         osPiGetCmdQueue
/* 05300C 8005345C 00000000 */   nop
/* 053010 80053460 00402025 */  move        $a0, $v0
/* 053014 80053464 02002825 */  move        $a1, $s0
/* 053018 80053468 0C0163BC */  jal         osJamMesg
/* 05301C 8005346C 00003025 */   move       $a2, $zero
/* 053020 80053470 10000008 */  b           .L80053494
/* 053024 80053474 00401825 */   move       $v1, $v0
.L80053478:
/* 053028 80053478 0C016410 */  jal         osPiGetCmdQueue
/* 05302C 8005347C 00000000 */   nop
/* 053030 80053480 00402025 */  move        $a0, $v0
/* 053034 80053484 02002825 */  move        $a1, $s0
/* 053038 80053488 0C014C64 */  jal         osSendMesg
/* 05303C 8005348C 00003025 */   move       $a2, $zero
/* 053040 80053490 00401825 */  move        $v1, $v0
.L80053494:
/* 053044 80053494 00601025 */  move        $v0, $v1
.L80053498:
/* 053048 80053498 8FBF001C */  lw          $ra, 0x1c($sp)
/* 05304C 8005349C 8FB00018 */  lw          $s0, 0x18($sp)
/* 053050 800534A0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 053054 800534A4 03E00008 */  jr          $ra
/* 053058 800534A8 00000000 */   nop
/* 05305C 800534AC 00000000 */  nop
