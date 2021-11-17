.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osSendMesg # 0
/* 052D40 80053190 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 052D44 80053194 AFBF0024 */  sw          $ra, 0x24($sp)
/* 052D48 80053198 AFA40038 */  sw          $a0, 0x38($sp)
/* 052D4C 8005319C AFA5003C */  sw          $a1, 0x3c($sp)
/* 052D50 800531A0 AFA60040 */  sw          $a2, 0x40($sp)
/* 052D54 800531A4 AFB20020 */  sw          $s2, 0x20($sp)
/* 052D58 800531A8 AFB1001C */  sw          $s1, 0x1c($sp)
/* 052D5C 800531AC 0C015FFC */  jal         __osDisableInt
/* 052D60 800531B0 AFB00018 */   sw         $s0, 0x18($sp)
/* 052D64 800531B4 8FAE0038 */  lw          $t6, 0x38($sp)
/* 052D68 800531B8 00408025 */  move        $s0, $v0
/* 052D6C 800531BC 8DCF0008 */  lw          $t7, 0x8($t6)
/* 052D70 800531C0 8DD80010 */  lw          $t8, 0x10($t6)
/* 052D74 800531C4 01F8082A */  slt         $at, $t7, $t8
/* 052D78 800531C8 14200018 */  bne         $at, $zero, .L8005322C
/* 052D7C 800531CC 00000000 */   nop
.L800531D0:
/* 052D80 800531D0 8FB90040 */  lw          $t9, 0x40($sp)
/* 052D84 800531D4 24010001 */  addiu       $at, $zero, 0x1
/* 052D88 800531D8 1721000A */  bne         $t9, $at, .L80053204
/* 052D8C 800531DC 00000000 */   nop
/* 052D90 800531E0 3C09800A */  lui         $t1, %hi(__osRunningThread)
/* 052D94 800531E4 8D29F8A0 */  lw          $t1, %lo(__osRunningThread)($t1)
/* 052D98 800531E8 24080008 */  addiu       $t0, $zero, 0x8
/* 052D9C 800531EC A5280010 */  sh          $t0, 0x10($t1)
/* 052DA0 800531F0 8FA40038 */  lw          $a0, 0x38($sp)
/* 052DA4 800531F4 0C015F11 */  jal         __osEnqueueAndYield
/* 052DA8 800531F8 24840004 */   addiu      $a0, $a0, 0x4
/* 052DAC 800531FC 10000005 */  b           .L80053214
/* 052DB0 80053200 00000000 */   nop
.L80053204:
/* 052DB4 80053204 0C016018 */  jal         __osRestoreInt
/* 052DB8 80053208 02002025 */   move       $a0, $s0
/* 052DBC 8005320C 1000002D */  b           .L800532C4
/* 052DC0 80053210 2402FFFF */   addiu      $v0, $zero, -0x1
.L80053214:
/* 052DC4 80053214 8FAA0038 */  lw          $t2, 0x38($sp)
/* 052DC8 80053218 8D4B0008 */  lw          $t3, 0x8($t2)
/* 052DCC 8005321C 8D4C0010 */  lw          $t4, 0x10($t2)
/* 052DD0 80053220 016C082A */  slt         $at, $t3, $t4
/* 052DD4 80053224 1020FFEA */  beq         $at, $zero, .L800531D0
/* 052DD8 80053228 00000000 */   nop
.L8005322C:
/* 052DDC 8005322C 8FAD0038 */  lw          $t5, 0x38($sp)
/* 052DE0 80053230 8FA8003C */  lw          $t0, 0x3c($sp)
/* 052DE4 80053234 8DAE000C */  lw          $t6, 0xc($t5)
/* 052DE8 80053238 8DAF0008 */  lw          $t7, 0x8($t5)
/* 052DEC 8005323C 8DB90010 */  lw          $t9, 0x10($t5)
/* 052DF0 80053240 8DA90014 */  lw          $t1, 0x14($t5)
/* 052DF4 80053244 01CFC021 */  addu        $t8, $t6, $t7
/* 052DF8 80053248 0319001A */  div         $zero, $t8, $t9
/* 052DFC 8005324C 00008810 */  mfhi        $s1
/* 052E00 80053250 00115080 */  sll         $t2, $s1, 2
/* 052E04 80053254 012A5821 */  addu        $t3, $t1, $t2
/* 052E08 80053258 AD680000 */  sw          $t0, 0x0($t3)
/* 052E0C 8005325C 8FAC0038 */  lw          $t4, 0x38($sp)
/* 052E10 80053260 17200002 */  bne         $t9, $zero, .L8005326C
/* 052E14 80053264 00000000 */   nop
/* 052E18 80053268 0007000D */  break       7
.L8005326C:
/* 052E1C 8005326C 2401FFFF */  addiu       $at, $zero, -0x1
/* 052E20 80053270 17210004 */  bne         $t9, $at, .L80053284
/* 052E24 80053274 3C018000 */   lui        $at, 0x8000
/* 052E28 80053278 17010002 */  bne         $t8, $at, .L80053284
/* 052E2C 8005327C 00000000 */   nop
/* 052E30 80053280 0006000D */  break       6
.L80053284:
/* 052E34 80053284 8D8E0008 */  lw          $t6, 0x8($t4)
/* 052E38 80053288 25CF0001 */  addiu       $t7, $t6, 0x1
/* 052E3C 8005328C AD8F0008 */  sw          $t7, 0x8($t4)
/* 052E40 80053290 8FB80038 */  lw          $t8, 0x38($sp)
/* 052E44 80053294 8F190000 */  lw          $t9, 0x0($t8)
/* 052E48 80053298 8F2D0000 */  lw          $t5, 0x0($t9)
/* 052E4C 8005329C 11A00006 */  beq         $t5, $zero, .L800532B8
/* 052E50 800532A0 00000000 */   nop
/* 052E54 800532A4 0C015F63 */  jal         __osPopThread
/* 052E58 800532A8 03002025 */   move       $a0, $t8
/* 052E5C 800532AC 00409025 */  move        $s2, $v0
/* 052E60 800532B0 0C0142FC */  jal         osStartThread
/* 052E64 800532B4 02402025 */   move       $a0, $s2
.L800532B8:
/* 052E68 800532B8 0C016018 */  jal         __osRestoreInt
/* 052E6C 800532BC 02002025 */   move       $a0, $s0
/* 052E70 800532C0 00001025 */  move        $v0, $zero
.L800532C4:
/* 052E74 800532C4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 052E78 800532C8 8FB00018 */  lw          $s0, 0x18($sp)
/* 052E7C 800532CC 8FB1001C */  lw          $s1, 0x1c($sp)
/* 052E80 800532D0 8FB20020 */  lw          $s2, 0x20($sp)
/* 052E84 800532D4 03E00008 */  jr          $ra
/* 052E88 800532D8 27BD0038 */   addiu      $sp, $sp, 0x38
/* 052E8C 800532DC 00000000 */  nop
