.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80058EF0 # 0
/* 058AA0 80058EF0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 058AA4 80058EF4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 058AA8 80058EF8 AFA40028 */  sw          $a0, 0x28($sp)
/* 058AAC 80058EFC AFA5002C */  sw          $a1, 0x2c($sp)
/* 058AB0 80058F00 AFA60030 */  sw          $a2, 0x30($sp)
/* 058AB4 80058F04 AFB10018 */  sw          $s1, 0x18($sp)
/* 058AB8 80058F08 0C015FFC */  jal         __osDisableInt
/* 058ABC 80058F0C AFB00014 */   sw         $s0, 0x14($sp)
/* 058AC0 80058F10 8FAE0028 */  lw          $t6, 0x28($sp)
/* 058AC4 80058F14 00408025 */  move        $s0, $v0
/* 058AC8 80058F18 8DCF0008 */  lw          $t7, 0x8($t6)
/* 058ACC 80058F1C 8DD80010 */  lw          $t8, 0x10($t6)
/* 058AD0 80058F20 01F8082A */  slt         $at, $t7, $t8
/* 058AD4 80058F24 14200018 */  bne         $at, $zero, .L80058F88
/* 058AD8 80058F28 00000000 */   nop
.L80058F2C:
/* 058ADC 80058F2C 8FB90030 */  lw          $t9, 0x30($sp)
/* 058AE0 80058F30 24010001 */  addiu       $at, $zero, 0x1
/* 058AE4 80058F34 1721000A */  bne         $t9, $at, .L80058F60
/* 058AE8 80058F38 00000000 */   nop
/* 058AEC 80058F3C 3C09800A */  lui         $t1, %hi(__osRunningThread)
/* 058AF0 80058F40 8D29F8A0 */  lw          $t1, %lo(__osRunningThread)($t1)
/* 058AF4 80058F44 24080008 */  addiu       $t0, $zero, 0x8
/* 058AF8 80058F48 A5280010 */  sh          $t0, 0x10($t1)
/* 058AFC 80058F4C 8FA40028 */  lw          $a0, 0x28($sp)
/* 058B00 80058F50 0C015F11 */  jal         __osEnqueueAndYield
/* 058B04 80058F54 24840004 */   addiu      $a0, $a0, 0x4
/* 058B08 80058F58 10000005 */  b           .L80058F70
/* 058B0C 80058F5C 00000000 */   nop
.L80058F60:
/* 058B10 80058F60 0C016018 */  jal         __osRestoreInt
/* 058B14 80058F64 02002025 */   move       $a0, $s0
/* 058B18 80058F68 10000030 */  b           .L8005902C
/* 058B1C 80058F6C 2402FFFF */   addiu      $v0, $zero, -0x1
.L80058F70:
/* 058B20 80058F70 8FAA0028 */  lw          $t2, 0x28($sp)
/* 058B24 80058F74 8D4B0008 */  lw          $t3, 0x8($t2)
/* 058B28 80058F78 8D4C0010 */  lw          $t4, 0x10($t2)
/* 058B2C 80058F7C 016C082A */  slt         $at, $t3, $t4
/* 058B30 80058F80 1020FFEA */  beq         $at, $zero, .L80058F2C
/* 058B34 80058F84 00000000 */   nop
.L80058F88:
/* 058B38 80058F88 8FAD0028 */  lw          $t5, 0x28($sp)
/* 058B3C 80058F8C 8DAE000C */  lw          $t6, 0xc($t5)
/* 058B40 80058F90 8DAF0010 */  lw          $t7, 0x10($t5)
/* 058B44 80058F94 01CFC021 */  addu        $t8, $t6, $t7
/* 058B48 80058F98 2719FFFF */  addiu       $t9, $t8, -0x1
/* 058B4C 80058F9C 032F001A */  div         $zero, $t9, $t7
/* 058B50 80058FA0 00004010 */  mfhi        $t0
/* 058B54 80058FA4 ADA8000C */  sw          $t0, 0xc($t5)
/* 058B58 80058FA8 8FAA0028 */  lw          $t2, 0x28($sp)
/* 058B5C 80058FAC 8FA9002C */  lw          $t1, 0x2c($sp)
/* 058B60 80058FB0 15E00002 */  bne         $t7, $zero, .L80058FBC
/* 058B64 80058FB4 00000000 */   nop
/* 058B68 80058FB8 0007000D */  break       7
.L80058FBC:
/* 058B6C 80058FBC 2401FFFF */  addiu       $at, $zero, -0x1
/* 058B70 80058FC0 15E10004 */  bne         $t7, $at, .L80058FD4
/* 058B74 80058FC4 3C018000 */   lui        $at, 0x8000
/* 058B78 80058FC8 17210002 */  bne         $t9, $at, .L80058FD4
/* 058B7C 80058FCC 00000000 */   nop
/* 058B80 80058FD0 0006000D */  break       6
.L80058FD4:
/* 058B84 80058FD4 8D4C000C */  lw          $t4, 0xc($t2)
/* 058B88 80058FD8 8D4B0014 */  lw          $t3, 0x14($t2)
/* 058B8C 80058FDC 000C7080 */  sll         $t6, $t4, 2
/* 058B90 80058FE0 016EC021 */  addu        $t8, $t3, $t6
/* 058B94 80058FE4 AF090000 */  sw          $t1, 0x0($t8)
/* 058B98 80058FE8 8FB90028 */  lw          $t9, 0x28($sp)
/* 058B9C 80058FEC 8F2F0008 */  lw          $t7, 0x8($t9)
/* 058BA0 80058FF0 25E80001 */  addiu       $t0, $t7, 0x1
/* 058BA4 80058FF4 AF280008 */  sw          $t0, 0x8($t9)
/* 058BA8 80058FF8 8FAD0028 */  lw          $t5, 0x28($sp)
/* 058BAC 80058FFC 8DAA0000 */  lw          $t2, 0x0($t5)
/* 058BB0 80059000 8D4C0000 */  lw          $t4, 0x0($t2)
/* 058BB4 80059004 11800006 */  beq         $t4, $zero, .L80059020
/* 058BB8 80059008 00000000 */   nop
/* 058BBC 8005900C 0C015F63 */  jal         __osPopThread
/* 058BC0 80059010 01A02025 */   move       $a0, $t5
/* 058BC4 80059014 00408825 */  move        $s1, $v0
/* 058BC8 80059018 0C0142FC */  jal         osStartThread
/* 058BCC 8005901C 02202025 */   move       $a0, $s1
.L80059020:
/* 058BD0 80059020 0C016018 */  jal         __osRestoreInt
/* 058BD4 80059024 02002025 */   move       $a0, $s0
/* 058BD8 80059028 00001025 */  move        $v0, $zero
.L8005902C:
/* 058BDC 8005902C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 058BE0 80059030 8FB00014 */  lw          $s0, 0x14($sp)
/* 058BE4 80059034 8FB10018 */  lw          $s1, 0x18($sp)
/* 058BE8 80059038 03E00008 */  jr          $ra
/* 058BEC 8005903C 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_80059040 # 1
/* 058BF0 80059040 3C03800A */  lui         $v1, %hi(D_8009EE40)
/* 058BF4 80059044 2463EE40 */  addiu       $v1, $v1, %lo(D_8009EE40)
/* 058BF8 80059048 8C6E0000 */  lw          $t6, 0x0($v1)
/* 058BFC 8005904C 55C00004 */  bnel        $t6, $zero, .L80059060
/* 058C00 80059050 8C620008 */   lw         $v0, 0x8($v1)
/* 058C04 80059054 03E00008 */  jr          $ra
/* 058C08 80059058 00001025 */   move       $v0, $zero
/* 058C0C 8005905C 8C620008 */  lw          $v0, 0x8($v1)
.L80059060:
/* 058C10 80059060 03E00008 */  jr          $ra
/* 058C14 80059064 00000000 */   nop
/* 058C18 80059068 00000000 */  nop
/* 058C1C 8005906C 00000000 */  nop
