.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osSetThreadPri # 0
/* 0508F0 80050D40 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0508F4 80050D44 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0508F8 80050D48 AFA40028 */  sw          $a0, 0x28($sp)
/* 0508FC 80050D4C AFA5002C */  sw          $a1, 0x2c($sp)
/* 050900 80050D50 0C015FFC */  jal         __osDisableInt
/* 050904 80050D54 AFB00018 */   sw         $s0, 0x18($sp)
/* 050908 80050D58 8FAE0028 */  lw          $t6, 0x28($sp)
/* 05090C 80050D5C 00408025 */  move        $s0, $v0
/* 050910 80050D60 15C00004 */  bne         $t6, $zero, .L80050D74
/* 050914 80050D64 00000000 */   nop
/* 050918 80050D68 3C0F800A */  lui         $t7, %hi(__osRunningThread)
/* 05091C 80050D6C 8DEFF8A0 */  lw          $t7, %lo(__osRunningThread)($t7)
/* 050920 80050D70 AFAF0028 */  sw          $t7, 0x28($sp)
.L80050D74:
/* 050924 80050D74 8FB80028 */  lw          $t8, 0x28($sp)
/* 050928 80050D78 8FA8002C */  lw          $t0, 0x2c($sp)
/* 05092C 80050D7C 8F190004 */  lw          $t9, 0x4($t8)
/* 050930 80050D80 13280020 */  beq         $t9, $t0, .L80050E04
/* 050934 80050D84 00000000 */   nop
/* 050938 80050D88 AF080004 */  sw          $t0, 0x4($t8)
/* 05093C 80050D8C 3C0A800A */  lui         $t2, %hi(__osRunningThread)
/* 050940 80050D90 8D4AF8A0 */  lw          $t2, %lo(__osRunningThread)($t2)
/* 050944 80050D94 8FA90028 */  lw          $t1, 0x28($sp)
/* 050948 80050D98 112A000C */  beq         $t1, $t2, .L80050DCC
/* 05094C 80050D9C 00000000 */   nop
/* 050950 80050DA0 952B0010 */  lhu         $t3, 0x10($t1)
/* 050954 80050DA4 24010001 */  addiu       $at, $zero, 0x1
/* 050958 80050DA8 11610008 */  beq         $t3, $at, .L80050DCC
/* 05095C 80050DAC 00000000 */   nop
/* 050960 80050DB0 8D240008 */  lw          $a0, 0x8($t1)
/* 050964 80050DB4 0C016020 */  jal         __osDequeueThread
/* 050968 80050DB8 01202825 */   move       $a1, $t1
/* 05096C 80050DBC 8FAC0028 */  lw          $t4, 0x28($sp)
/* 050970 80050DC0 8D840008 */  lw          $a0, 0x8($t4)
/* 050974 80050DC4 0C015F51 */  jal         __osEnqueueThread
/* 050978 80050DC8 01802825 */   move       $a1, $t4
.L80050DCC:
/* 05097C 80050DCC 3C0D800A */  lui         $t5, %hi(__osRunningThread)
/* 050980 80050DD0 3C0F800A */  lui         $t7, %hi(__osRunQueue)
/* 050984 80050DD4 8DEFF898 */  lw          $t7, %lo(__osRunQueue)($t7)
/* 050988 80050DD8 8DADF8A0 */  lw          $t5, %lo(__osRunningThread)($t5)
/* 05098C 80050DDC 8DF90004 */  lw          $t9, 0x4($t7)
/* 050990 80050DE0 8DAE0004 */  lw          $t6, 0x4($t5)
/* 050994 80050DE4 01D9082A */  slt         $at, $t6, $t9
/* 050998 80050DE8 10200006 */  beq         $at, $zero, .L80050E04
/* 05099C 80050DEC 00000000 */   nop
/* 0509A0 80050DF0 24080002 */  addiu       $t0, $zero, 0x2
/* 0509A4 80050DF4 3C04800A */  lui         $a0, %hi(__osRunQueue)
/* 0509A8 80050DF8 A5A80010 */  sh          $t0, 0x10($t5)
/* 0509AC 80050DFC 0C015F11 */  jal         __osEnqueueAndYield
/* 0509B0 80050E00 2484F898 */   addiu      $a0, $a0, %lo(__osRunQueue)
.L80050E04:
/* 0509B4 80050E04 0C016018 */  jal         __osRestoreInt
/* 0509B8 80050E08 02002025 */   move       $a0, $s0
/* 0509BC 80050E0C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0509C0 80050E10 8FB00018 */  lw          $s0, 0x18($sp)
/* 0509C4 80050E14 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0509C8 80050E18 03E00008 */  jr          $ra
/* 0509CC 80050E1C 00000000 */   nop
