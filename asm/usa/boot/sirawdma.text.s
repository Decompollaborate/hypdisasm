.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osSiRawStartDma # 0
/* 058010 80058460 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 058014 80058464 AFBF0014 */  sw          $ra, 0x14($sp)
/* 058018 80058468 AFA5001C */  sw          $a1, 0x1c($sp)
/* 05801C 8005846C 3C0EA480 */  lui         $t6, %hi(D_A4800018)
/* 058020 80058470 8DCF0018 */  lw          $t7, %lo(D_A4800018)($t6)
/* 058024 80058474 00803025 */  move        $a2, $a0
/* 058028 80058478 24010001 */  addiu       $at, $zero, 0x1
/* 05802C 8005847C 31F80003 */  andi        $t8, $t7, 0x3
/* 058030 80058480 13000003 */  beqz        $t8, .L80058490
/* 058034 80058484 00000000 */   nop
/* 058038 80058488 1000001C */  b           .L800584FC
/* 05803C 8005848C 2402FFFF */   addiu      $v0, $zero, -0x1
.L80058490:
/* 058040 80058490 14C10005 */  bne         $a2, $at, .L800584A8
/* 058044 80058494 8FA4001C */   lw         $a0, 0x1c($sp)
/* 058048 80058498 24050040 */  addiu       $a1, $zero, 0x40
/* 05804C 8005849C 0C0151DC */  jal         osWriteBackDCache
/* 058050 800584A0 AFA60018 */   sw         $a2, 0x18($sp)
/* 058054 800584A4 8FA60018 */  lw          $a2, 0x18($sp)
.L800584A8:
/* 058058 800584A8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 05805C 800584AC 0C0143B0 */  jal         osVirtualToPhysical
/* 058060 800584B0 AFA60018 */   sw         $a2, 0x18($sp)
/* 058064 800584B4 8FA60018 */  lw          $a2, 0x18($sp)
/* 058068 800584B8 3C19A480 */  lui         $t9, %hi(D_A4800000)
/* 05806C 800584BC AF220000 */  sw          $v0, %lo(D_A4800000)($t9)
/* 058070 800584C0 14C00006 */  bnez        $a2, .L800584DC
/* 058074 800584C4 3C0A1FC0 */   lui        $t2, 0x1fc0
/* 058078 800584C8 3C081FC0 */  lui         $t0, 0x1fc0
/* 05807C 800584CC 350807C0 */  ori         $t0, $t0, 0x7c0
/* 058080 800584D0 3C09A480 */  lui         $t1, %hi(D_A4800004)
/* 058084 800584D4 10000004 */  b           .L800584E8
/* 058088 800584D8 AD280004 */   sw         $t0, %lo(D_A4800004)($t1)
.L800584DC:
/* 05808C 800584DC 354A07C0 */  ori         $t2, $t2, 0x7c0
/* 058090 800584E0 3C0BA480 */  lui         $t3, %hi(D_A4800010)
/* 058094 800584E4 AD6A0010 */  sw          $t2, %lo(D_A4800010)($t3)
.L800584E8:
/* 058098 800584E8 14C00003 */  bnez        $a2, .L800584F8
/* 05809C 800584EC 8FA4001C */   lw         $a0, 0x1c($sp)
/* 0580A0 800584F0 0C014CD0 */  jal         osInvalDCache
/* 0580A4 800584F4 24050040 */   addiu      $a1, $zero, 0x40
.L800584F8:
/* 0580A8 800584F8 00001025 */  move        $v0, $zero
.L800584FC:
/* 0580AC 800584FC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0580B0 80058500 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0580B4 80058504 03E00008 */  jr          $ra
/* 0580B8 80058508 00000000 */   nop
/* 0580BC 8005850C 00000000 */  nop
