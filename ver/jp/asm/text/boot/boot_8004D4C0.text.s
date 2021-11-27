.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D4C0 # 0
/* 04D070 8004D4C0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 04D074 8004D4C4 3C028010 */  lui         $v0, %hi(D_80104A60)
/* 04D078 8004D4C8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04D07C 8004D4CC 24424A60 */  addiu       $v0, $v0, %lo(D_80104A60)
/* 04D080 8004D4D0 AFA40028 */  sw          $a0, 0x28($sp)
/* 04D084 8004D4D4 AFA2001C */  sw          $v0, 0x1c($sp)
/* 04D088 8004D4D8 0C0150EC */  jal         func_800543B0
/* 04D08C 8004D4DC AFA5002C */   sw         $a1, 0x2c($sp)
/* 04D090 8004D4E0 8FA5002C */  lw          $a1, 0x2c($sp)
/* 04D094 8004D4E4 3C078010 */  lui         $a3, %hi(D_80104A60)
/* 04D098 8004D4E8 24E74A60 */  addiu       $a3, $a3, %lo(D_80104A60)
/* 04D09C 8004D4EC 240E0001 */  addiu       $t6, $zero, 0x1
/* 04D0A0 8004D4F0 8FA2001C */  lw          $v0, 0x1c($sp)
/* 04D0A4 8004D4F4 ACEE003C */  sw          $t6, 0x3c($a3)
/* 04D0A8 8004D4F8 18A00010 */  blez        $a1, .L8004D53C
/* 04D0AC 8004D4FC 00001825 */   move       $v1, $zero
/* 04D0B0 8004D500 30A60003 */  andi        $a2, $a1, 0x3
/* 04D0B4 8004D504 10C00006 */  beqz        $a2, .L8004D520
/* 04D0B8 8004D508 00C02025 */   move       $a0, $a2
.L8004D50C:
/* 04D0BC 8004D50C 24630001 */  addiu       $v1, $v1, 0x1
/* 04D0C0 8004D510 A0400000 */  sb          $zero, 0x0($v0)
/* 04D0C4 8004D514 1483FFFD */  bne         $a0, $v1, .L8004D50C
/* 04D0C8 8004D518 24420001 */   addiu      $v0, $v0, 0x1
/* 04D0CC 8004D51C 10650007 */  beq         $v1, $a1, .L8004D53C
.L8004D520:
/* 04D0D0 8004D520 24630004 */   addiu      $v1, $v1, 0x4
/* 04D0D4 8004D524 A0400001 */  sb          $zero, 0x1($v0)
/* 04D0D8 8004D528 A0400002 */  sb          $zero, 0x2($v0)
/* 04D0DC 8004D52C A0400003 */  sb          $zero, 0x3($v0)
/* 04D0E0 8004D530 24420004 */  addiu       $v0, $v0, 0x4
/* 04D0E4 8004D534 1465FFFA */  bne         $v1, $a1, .L8004D520
/* 04D0E8 8004D538 A040FFFC */   sb         $zero, -0x4($v0)
.L8004D53C:
/* 04D0EC 8004D53C 240F00FD */  addiu       $t7, $zero, 0xfd
/* 04D0F0 8004D540 241800FE */  addiu       $t8, $zero, 0xfe
/* 04D0F4 8004D544 A04F0000 */  sb          $t7, 0x0($v0)
/* 04D0F8 8004D548 24420001 */  addiu       $v0, $v0, 0x1
/* 04D0FC 8004D54C A0580000 */  sb          $t8, 0x0($v0)
/* 04D100 8004D550 24040001 */  addiu       $a0, $zero, 0x1
/* 04D104 8004D554 0C015108 */  jal         func_80054420
/* 04D108 8004D558 00E02825 */   move       $a1, $a3
/* 04D10C 8004D55C 8FA40028 */  lw          $a0, 0x28($sp)
/* 04D110 8004D560 00002825 */  move        $a1, $zero
/* 04D114 8004D564 0C013A48 */  jal         func_8004E920
/* 04D118 8004D568 24060001 */   addiu      $a2, $zero, 0x1
/* 04D11C 8004D56C 3C058010 */  lui         $a1, %hi(D_80104A60)
/* 04D120 8004D570 24A54A60 */  addiu       $a1, $a1, %lo(D_80104A60)
/* 04D124 8004D574 0C015108 */  jal         func_80054420
/* 04D128 8004D578 00002025 */   move       $a0, $zero
/* 04D12C 8004D57C AFA20020 */  sw          $v0, 0x20($sp)
/* 04D130 8004D580 8FA40028 */  lw          $a0, 0x28($sp)
/* 04D134 8004D584 00002825 */  move        $a1, $zero
/* 04D138 8004D588 0C013A48 */  jal         func_8004E920
/* 04D13C 8004D58C 24060001 */   addiu      $a2, $zero, 0x1
/* 04D140 8004D590 0C0150FD */  jal         func_800543F4
/* 04D144 8004D594 00000000 */   nop
/* 04D148 8004D598 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04D14C 8004D59C 8FA20020 */  lw          $v0, 0x20($sp)
/* 04D150 8004D5A0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 04D154 8004D5A4 03E00008 */  jr          $ra
/* 04D158 8004D5A8 00000000 */   nop
/* 04D15C 8004D5AC 00000000 */  nop
