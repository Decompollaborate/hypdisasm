.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osVoiceCheckResult # 0
/* 055920 80055D70 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 055924 80055D74 AFBF001C */  sw          $ra, 0x1c($sp)
/* 055928 80055D78 AFB00018 */  sw          $s0, 0x18($sp)
/* 05592C 80055D7C AFA5002C */  sw          $a1, 0x2c($sp)
/* 055930 80055D80 00808025 */  move        $s0, $a0
/* 055934 80055D84 8E050004 */  lw          $a1, 0x4($s0)
/* 055938 80055D88 8C840000 */  lw          $a0, 0x0($a0)
/* 05593C 80055D8C 0C01558C */  jal         __osVoiceGetStatus
/* 055940 80055D90 8FA6002C */   lw         $a2, 0x2c($sp)
/* 055944 80055D94 1440001A */  bne         $v0, $zero, .L80055E00
/* 055948 80055D98 00401825 */   move       $v1, $v0
/* 05594C 80055D9C 8FAE002C */  lw          $t6, 0x2c($sp)
/* 055950 80055DA0 00003025 */  move        $a2, $zero
/* 055954 80055DA4 27A70020 */  addiu       $a3, $sp, 0x20
/* 055958 80055DA8 91CF0000 */  lbu         $t7, 0x0($t6)
/* 05595C 80055DAC 31F80001 */  andi        $t8, $t7, 0x1
/* 055960 80055DB0 53000004 */  beql        $t8, $zero, .L80055DC4
/* 055964 80055DB4 8E040000 */   lw         $a0, 0x0($s0)
/* 055968 80055DB8 10000011 */  b           .L80055E00
/* 05596C 80055DBC 2403000F */   addiu      $v1, $zero, 0xf
/* 055970 80055DC0 8E040000 */  lw          $a0, 0x0($s0)
.L80055DC4:
/* 055974 80055DC4 0C015644 */  jal         __osVoiceContRead2
/* 055978 80055DC8 8E050004 */   lw         $a1, 0x4($s0)
/* 05597C 80055DCC 1440000C */  bne         $v0, $zero, .L80055E00
/* 055980 80055DD0 00401825 */   move       $v1, $v0
/* 055984 80055DD4 93B90020 */  lbu         $t9, 0x20($sp)
/* 055988 80055DD8 33280007 */  andi        $t0, $t9, 0x7
/* 05598C 80055DDC A208000C */  sb          $t0, 0xc($s0)
/* 055990 80055DE0 93A90020 */  lbu         $t1, 0x20($sp)
/* 055994 80055DE4 93A30021 */  lbu         $v1, 0x21($sp)
/* 055998 80055DE8 312A0040 */  andi        $t2, $t1, 0x40
/* 05599C 80055DEC 11400003 */  beq         $t2, $zero, .L80055DFC
/* 0559A0 80055DF0 00035A00 */   sll        $t3, $v1, 8
/* 0559A4 80055DF4 10000002 */  b           .L80055E00
/* 0559A8 80055DF8 2403000F */   addiu      $v1, $zero, 0xf
.L80055DFC:
/* 0559AC 80055DFC 01601825 */  move        $v1, $t3
.L80055E00:
/* 0559B0 80055E00 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0559B4 80055E04 8FB00018 */  lw          $s0, 0x18($sp)
/* 0559B8 80055E08 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0559BC 80055E0C 03E00008 */  jr          $ra
/* 0559C0 80055E10 00601025 */   move       $v0, $v1
/* 0559C4 80055E14 00000000 */  nop
/* 0559C8 80055E18 00000000 */  nop
/* 0559CC 80055E1C 00000000 */  nop
