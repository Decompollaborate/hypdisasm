.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D9D0 # 0
/* 04D580 8004D9D0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 04D584 8004D9D4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04D588 8004D9D8 AFB00018 */  sw          $s0, 0x18($sp)
/* 04D58C 8004D9DC AFA5002C */  sw          $a1, 0x2c($sp)
/* 04D590 8004D9E0 00808025 */  move        $s0, $a0
/* 04D594 8004D9E4 8E050004 */  lw          $a1, 0x4($s0)
/* 04D598 8004D9E8 8C840000 */  lw          $a0, 0x0($a0)
/* 04D59C 8004D9EC 0C0134B4 */  jal         func_8004D2D0
/* 04D5A0 8004D9F0 8FA6002C */   lw         $a2, 0x2c($sp)
/* 04D5A4 8004D9F4 1440001A */  bnez        $v0, .L8004DA60
/* 04D5A8 8004D9F8 00401825 */   move       $v1, $v0
/* 04D5AC 8004D9FC 8FAE002C */  lw          $t6, 0x2c($sp)
/* 04D5B0 8004DA00 00003025 */  move        $a2, $zero
/* 04D5B4 8004DA04 27A70020 */  addiu       $a3, $sp, 0x20
/* 04D5B8 8004DA08 91CF0000 */  lbu         $t7, 0x0($t6)
/* 04D5BC 8004DA0C 31F80001 */  andi        $t8, $t7, 0x1
/* 04D5C0 8004DA10 53000004 */  beql        $t8, $zero, .L8004DA24
/* 04D5C4 8004DA14 8E040000 */   lw         $a0, 0x0($s0)
/* 04D5C8 8004DA18 10000011 */  b           .L8004DA60
/* 04D5CC 8004DA1C 2403000F */   addiu      $v1, $zero, 0xf
/* 04D5D0 8004DA20 8E040000 */  lw          $a0, 0x0($s0)
.L8004DA24:
/* 04D5D4 8004DA24 0C01372C */  jal         func_8004DCB0
/* 04D5D8 8004DA28 8E050004 */   lw         $a1, 0x4($s0)
/* 04D5DC 8004DA2C 1440000C */  bnez        $v0, .L8004DA60
/* 04D5E0 8004DA30 00401825 */   move       $v1, $v0
/* 04D5E4 8004DA34 93B90020 */  lbu         $t9, 0x20($sp)
/* 04D5E8 8004DA38 33280007 */  andi        $t0, $t9, 0x7
/* 04D5EC 8004DA3C A208000C */  sb          $t0, 0xc($s0)
/* 04D5F0 8004DA40 93A90020 */  lbu         $t1, 0x20($sp)
/* 04D5F4 8004DA44 93A30021 */  lbu         $v1, 0x21($sp)
/* 04D5F8 8004DA48 312A0040 */  andi        $t2, $t1, 0x40
/* 04D5FC 8004DA4C 11400003 */  beqz        $t2, .L8004DA5C
/* 04D600 8004DA50 00035A00 */   sll        $t3, $v1, 8
/* 04D604 8004DA54 10000002 */  b           .L8004DA60
/* 04D608 8004DA58 2403000F */   addiu      $v1, $zero, 0xf
.L8004DA5C:
/* 04D60C 8004DA5C 01601825 */  move        $v1, $t3
.L8004DA60:
/* 04D610 8004DA60 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04D614 8004DA64 8FB00018 */  lw          $s0, 0x18($sp)
/* 04D618 8004DA68 27BD0028 */  addiu       $sp, $sp, 0x28
/* 04D61C 8004DA6C 03E00008 */  jr          $ra
/* 04D620 8004DA70 00601025 */   move       $v0, $v1
/* 04D624 8004DA74 00000000 */  nop
/* 04D628 8004DA78 00000000 */  nop
/* 04D62C 8004DA7C 00000000 */  nop
