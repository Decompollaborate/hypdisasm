.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005ECD0 # 0
/* 000000 8005ECD0 00801025 */  move        $v0, $a0
/* 000004 8005ECD4 00A01825 */  move        $v1, $a1
/* 000008 8005ECD8 18C00018 */  blez        $a2, .L8005ED3C
/* 00000C 8005ECDC 00003825 */   move       $a3, $zero
/* 000010 8005ECE0 30C50003 */  andi        $a1, $a2, 0x3
/* 000014 8005ECE4 10A00009 */  beq         $a1, $zero, .L8005ED0C
/* 000018 8005ECE8 00A02025 */   move       $a0, $a1
.L8005ECEC:
/* 00001C 8005ECEC 904E0000 */  lbu         $t6, 0x0($v0)
/* 000020 8005ECF0 24E70001 */  addiu       $a3, $a3, 0x1
/* 000024 8005ECF4 24630001 */  addiu       $v1, $v1, 0x1
/* 000028 8005ECF8 24420001 */  addiu       $v0, $v0, 0x1
/* 00002C 8005ECFC 1487FFFB */  bne         $a0, $a3, .L8005ECEC
/* 000030 8005ED00 A06EFFFF */   sb         $t6, -0x1($v1)
/* 000034 8005ED04 10E6000D */  beq         $a3, $a2, .L8005ED3C
/* 000038 8005ED08 00000000 */   nop
.L8005ED0C:
/* 00003C 8005ED0C 904F0000 */  lbu         $t7, 0x0($v0)
/* 000040 8005ED10 24E70004 */  addiu       $a3, $a3, 0x4
/* 000044 8005ED14 24630004 */  addiu       $v1, $v1, 0x4
/* 000048 8005ED18 A06FFFFC */  sb          $t7, -0x4($v1)
/* 00004C 8005ED1C 90580001 */  lbu         $t8, 0x1($v0)
/* 000050 8005ED20 24420004 */  addiu       $v0, $v0, 0x4
/* 000054 8005ED24 A078FFFD */  sb          $t8, -0x3($v1)
/* 000058 8005ED28 9059FFFE */  lbu         $t9, -0x2($v0)
/* 00005C 8005ED2C A079FFFE */  sb          $t9, -0x2($v1)
/* 000060 8005ED30 9048FFFF */  lbu         $t0, -0x1($v0)
/* 000064 8005ED34 14E6FFF5 */  bne         $a3, $a2, .L8005ED0C
/* 000068 8005ED38 A068FFFF */   sb         $t0, -0x1($v1)
.L8005ED3C:
/* 00006C 8005ED3C 03E00008 */  jr          $ra
/* 000070 8005ED40 00000000 */   nop
/* 000074 8005ED44 00000000 */  nop
/* 000078 8005ED48 00000000 */  nop
/* 00007C 8005ED4C 00000000 */  nop
