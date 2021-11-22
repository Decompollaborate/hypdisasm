.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osStopThread # 0
/* 055000 80055450 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 055004 80055454 AFBF0024 */  sw          $ra, 0x24($sp)
/* 055008 80055458 AFA40038 */  sw          $a0, 0x38($sp)
/* 05500C 8005545C AFB20020 */  sw          $s2, 0x20($sp)
/* 055010 80055460 AFB1001C */  sw          $s1, 0x1c($sp)
/* 055014 80055464 0C015FFC */  jal         __osDisableInt
/* 055018 80055468 AFB00018 */   sw         $s0, 0x18($sp)
/* 05501C 8005546C 8FAE0038 */  lw          $t6, 0x38($sp)
/* 055020 80055470 00408025 */  move        $s0, $v0
/* 055024 80055474 15C00003 */  bnez        $t6, .L80055484
/* 055028 80055478 00000000 */   nop
/* 05502C 8005547C 10000003 */  b           .L8005548C
/* 055030 80055480 24110004 */   addiu      $s1, $zero, 0x4
.L80055484:
/* 055034 80055484 8FAF0038 */  lw          $t7, 0x38($sp)
/* 055038 80055488 95F10010 */  lhu         $s1, 0x10($t7)
.L8005548C:
/* 05503C 8005548C 02209025 */  move        $s2, $s1
/* 055040 80055490 24010002 */  addiu       $at, $zero, 0x2
/* 055044 80055494 1241000F */  beq         $s2, $at, .L800554D4
/* 055048 80055498 24010004 */   addiu      $at, $zero, 0x4
/* 05504C 8005549C 12410005 */  beq         $s2, $at, .L800554B4
/* 055050 800554A0 24010008 */   addiu      $at, $zero, 0x8
/* 055054 800554A4 1241000B */  beq         $s2, $at, .L800554D4
/* 055058 800554A8 00000000 */   nop
/* 05505C 800554AC 10000010 */  b           .L800554F0
/* 055060 800554B0 00000000 */   nop
.L800554B4:
/* 055064 800554B4 3C19800A */  lui         $t9, %hi(__osRunningThread)
/* 055068 800554B8 8F39F8A0 */  lw          $t9, %lo(__osRunningThread)($t9)
/* 05506C 800554BC 24180001 */  addiu       $t8, $zero, 0x1
/* 055070 800554C0 00002025 */  move        $a0, $zero
/* 055074 800554C4 0C015F11 */  jal         __osEnqueueAndYield
/* 055078 800554C8 A7380010 */   sh         $t8, 0x10($t9)
/* 05507C 800554CC 10000008 */  b           .L800554F0
/* 055080 800554D0 00000000 */   nop
.L800554D4:
/* 055084 800554D4 8FA90038 */  lw          $t1, 0x38($sp)
/* 055088 800554D8 24080001 */  addiu       $t0, $zero, 0x1
/* 05508C 800554DC A5280010 */  sh          $t0, 0x10($t1)
/* 055090 800554E0 8FAA0038 */  lw          $t2, 0x38($sp)
/* 055094 800554E4 8D440008 */  lw          $a0, 0x8($t2)
/* 055098 800554E8 0C016020 */  jal         __osDequeueThread
/* 05509C 800554EC 01402825 */   move       $a1, $t2
.L800554F0:
/* 0550A0 800554F0 0C016018 */  jal         __osRestoreInt
/* 0550A4 800554F4 02002025 */   move       $a0, $s0
/* 0550A8 800554F8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0550AC 800554FC 8FB00018 */  lw          $s0, 0x18($sp)
/* 0550B0 80055500 8FB1001C */  lw          $s1, 0x1c($sp)
/* 0550B4 80055504 8FB20020 */  lw          $s2, 0x20($sp)
/* 0550B8 80055508 03E00008 */  jr          $ra
/* 0550BC 8005550C 27BD0038 */   addiu      $sp, $sp, 0x38
