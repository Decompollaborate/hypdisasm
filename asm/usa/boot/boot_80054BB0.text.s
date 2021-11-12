.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80054BB0 # 0
/* 054760 80054BB0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 054764 80054BB4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 054768 80054BB8 AFB00018 */  sw          $s0, 0x18($sp)
/* 05476C 80054BBC 00808025 */  move        $s0, $a0
/* 054770 80054BC0 8E050004 */  lw          $a1, 0x4($s0)
/* 054774 80054BC4 8C840000 */  lw          $a0, 0x0($a0)
/* 054778 80054BC8 0C01558C */  jal         __osVoiceGetStatus
/* 05477C 80054BCC 27A6002B */   addiu      $a2, $sp, 0x2b
/* 054780 80054BD0 10400003 */  beq         $v0, $zero, .L80054BE0
/* 054784 80054BD4 93AE002B */   lbu        $t6, 0x2b($sp)
/* 054788 80054BD8 1000001F */  b           .L80054C58
/* 05478C 80054BDC 8FBF001C */   lw         $ra, 0x1c($sp)
.L80054BE0:
/* 054790 80054BE0 31CF0002 */  andi        $t7, $t6, 0x2
/* 054794 80054BE4 51E00004 */  beql        $t7, $zero, .L80054BF8
/* 054798 80054BE8 8E180008 */   lw         $t8, 0x8($s0)
/* 05479C 80054BEC 10000019 */  b           .L80054C54
/* 0547A0 80054BF0 2402000F */   addiu      $v0, $zero, 0xf
/* 0547A4 80054BF4 8E180008 */  lw          $t8, 0x8($s0)
.L80054BF8:
/* 0547A8 80054BF8 3C190500 */  lui         $t9, 0x500
/* 0547AC 80054BFC 00003025 */  move        $a2, $zero
/* 0547B0 80054C00 13000003 */  beq         $t8, $zero, .L80054C10
/* 0547B4 80054C04 27A70024 */   addiu      $a3, $sp, 0x24
/* 0547B8 80054C08 10000012 */  b           .L80054C54
/* 0547BC 80054C0C 24020005 */   addiu      $v0, $zero, 0x5
.L80054C10:
/* 0547C0 80054C10 AFB90024 */  sw          $t9, 0x24($sp)
/* 0547C4 80054C14 8E050004 */  lw          $a1, 0x4($s0)
/* 0547C8 80054C18 0C0156D0 */  jal         __osVoiceContWrite4
/* 0547CC 80054C1C 8E040000 */   lw         $a0, 0x0($s0)
/* 0547D0 80054C20 1440000B */  bne         $v0, $zero, .L80054C50
/* 0547D4 80054C24 00401825 */   move       $v1, $v0
/* 0547D8 80054C28 02002025 */  move        $a0, $s0
/* 0547DC 80054C2C 0C01575C */  jal         func_80055D70
/* 0547E0 80054C30 27A5002B */   addiu      $a1, $sp, 0x2b
/* 0547E4 80054C34 3048FF00 */  andi        $t0, $v0, 0xff00
/* 0547E8 80054C38 11000003 */  beq         $t0, $zero, .L80054C48
/* 0547EC 80054C3C 00401825 */   move       $v1, $v0
/* 0547F0 80054C40 10000003 */  b           .L80054C50
/* 0547F4 80054C44 24030005 */   addiu      $v1, $zero, 0x5
.L80054C48:
/* 0547F8 80054C48 24090001 */  addiu       $t1, $zero, 0x1
/* 0547FC 80054C4C AE090008 */  sw          $t1, 0x8($s0)
.L80054C50:
/* 054800 80054C50 00601025 */  move        $v0, $v1
.L80054C54:
/* 054804 80054C54 8FBF001C */  lw          $ra, 0x1c($sp)
.L80054C58:
/* 054808 80054C58 8FB00018 */  lw          $s0, 0x18($sp)
/* 05480C 80054C5C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 054810 80054C60 03E00008 */  jr          $ra
/* 054814 80054C64 00000000 */   nop
/* 054818 80054C68 00000000 */  nop
/* 05481C 80054C6C 00000000 */  nop
