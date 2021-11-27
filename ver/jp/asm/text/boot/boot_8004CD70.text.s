.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004CD70 # 0
/* 04C920 8004CD70 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 04C924 8004CD74 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04C928 8004CD78 AFB00018 */  sw          $s0, 0x18($sp)
/* 04C92C 8004CD7C 00808025 */  move        $s0, $a0
/* 04C930 8004CD80 8E050004 */  lw          $a1, 0x4($s0)
/* 04C934 8004CD84 8C840000 */  lw          $a0, 0x0($a0)
/* 04C938 8004CD88 0C0134B4 */  jal         func_8004D2D0
/* 04C93C 8004CD8C 27A6002B */   addiu      $a2, $sp, 0x2b
/* 04C940 8004CD90 10400003 */  beqz        $v0, .L8004CDA0
/* 04C944 8004CD94 93AE002B */   lbu        $t6, 0x2b($sp)
/* 04C948 8004CD98 1000001F */  b           .L8004CE18
/* 04C94C 8004CD9C 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CDA0:
/* 04C950 8004CDA0 31CF0002 */  andi        $t7, $t6, 0x2
/* 04C954 8004CDA4 51E00004 */  beql        $t7, $zero, .L8004CDB8
/* 04C958 8004CDA8 8E180008 */   lw         $t8, 0x8($s0)
/* 04C95C 8004CDAC 10000019 */  b           .L8004CE14
/* 04C960 8004CDB0 2402000F */   addiu      $v0, $zero, 0xf
/* 04C964 8004CDB4 8E180008 */  lw          $t8, 0x8($s0)
.L8004CDB8:
/* 04C968 8004CDB8 3C190500 */  lui         $t9, 0x500
/* 04C96C 8004CDBC 00003025 */  move        $a2, $zero
/* 04C970 8004CDC0 13000003 */  beqz        $t8, .L8004CDD0
/* 04C974 8004CDC4 27A70024 */   addiu      $a3, $sp, 0x24
/* 04C978 8004CDC8 10000012 */  b           .L8004CE14
/* 04C97C 8004CDCC 24020005 */   addiu      $v0, $zero, 0x5
.L8004CDD0:
/* 04C980 8004CDD0 AFB90024 */  sw          $t9, 0x24($sp)
/* 04C984 8004CDD4 8E050004 */  lw          $a1, 0x4($s0)
/* 04C988 8004CDD8 0C0135E8 */  jal         func_8004D7A0
/* 04C98C 8004CDDC 8E040000 */   lw         $a0, 0x0($s0)
/* 04C990 8004CDE0 1440000B */  bnez        $v0, .L8004CE10
/* 04C994 8004CDE4 00401825 */   move       $v1, $v0
/* 04C998 8004CDE8 02002025 */  move        $a0, $s0
/* 04C99C 8004CDEC 0C013674 */  jal         func_8004D9D0
/* 04C9A0 8004CDF0 27A5002B */   addiu      $a1, $sp, 0x2b
/* 04C9A4 8004CDF4 3048FF00 */  andi        $t0, $v0, 0xff00
/* 04C9A8 8004CDF8 11000003 */  beqz        $t0, .L8004CE08
/* 04C9AC 8004CDFC 00401825 */   move       $v1, $v0
/* 04C9B0 8004CE00 10000003 */  b           .L8004CE10
/* 04C9B4 8004CE04 24030005 */   addiu      $v1, $zero, 0x5
.L8004CE08:
/* 04C9B8 8004CE08 24090001 */  addiu       $t1, $zero, 0x1
/* 04C9BC 8004CE0C AE090008 */  sw          $t1, 0x8($s0)
.L8004CE10:
/* 04C9C0 8004CE10 00601025 */  move        $v0, $v1
.L8004CE14:
/* 04C9C4 8004CE14 8FBF001C */  lw          $ra, 0x1c($sp)
.L8004CE18:
/* 04C9C8 8004CE18 8FB00018 */  lw          $s0, 0x18($sp)
/* 04C9CC 8004CE1C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 04C9D0 8004CE20 03E00008 */  jr          $ra
/* 04C9D4 8004CE24 00000000 */   nop
/* 04C9D8 8004CE28 00000000 */  nop
/* 04C9DC 8004CE2C 00000000 */  nop
