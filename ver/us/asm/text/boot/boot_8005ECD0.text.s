.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005ECD0 # 0
/* 05E880 8005ECD0 00801025 */  move        $v0, $a0
/* 05E884 8005ECD4 00A01825 */  move        $v1, $a1
/* 05E888 8005ECD8 18C00018 */  blez        $a2, .L8005ED3C
/* 05E88C 8005ECDC 00003825 */   move       $a3, $zero
/* 05E890 8005ECE0 30C50003 */  andi        $a1, $a2, 0x3
/* 05E894 8005ECE4 10A00009 */  beqz        $a1, .L8005ED0C
/* 05E898 8005ECE8 00A02025 */   move       $a0, $a1
.L8005ECEC:
/* 05E89C 8005ECEC 904E0000 */  lbu         $t6, 0x0($v0)
/* 05E8A0 8005ECF0 24E70001 */  addiu       $a3, $a3, 0x1
/* 05E8A4 8005ECF4 24630001 */  addiu       $v1, $v1, 0x1
/* 05E8A8 8005ECF8 24420001 */  addiu       $v0, $v0, 0x1
/* 05E8AC 8005ECFC 1487FFFB */  bne         $a0, $a3, .L8005ECEC
/* 05E8B0 8005ED00 A06EFFFF */   sb         $t6, -0x1($v1)
/* 05E8B4 8005ED04 10E6000D */  beq         $a3, $a2, .L8005ED3C
/* 05E8B8 8005ED08 00000000 */   nop
.L8005ED0C:
/* 05E8BC 8005ED0C 904F0000 */  lbu         $t7, 0x0($v0)
/* 05E8C0 8005ED10 24E70004 */  addiu       $a3, $a3, 0x4
/* 05E8C4 8005ED14 24630004 */  addiu       $v1, $v1, 0x4
/* 05E8C8 8005ED18 A06FFFFC */  sb          $t7, -0x4($v1)
/* 05E8CC 8005ED1C 90580001 */  lbu         $t8, 0x1($v0)
/* 05E8D0 8005ED20 24420004 */  addiu       $v0, $v0, 0x4
/* 05E8D4 8005ED24 A078FFFD */  sb          $t8, -0x3($v1)
/* 05E8D8 8005ED28 9059FFFE */  lbu         $t9, -0x2($v0)
/* 05E8DC 8005ED2C A079FFFE */  sb          $t9, -0x2($v1)
/* 05E8E0 8005ED30 9048FFFF */  lbu         $t0, -0x1($v0)
/* 05E8E4 8005ED34 14E6FFF5 */  bne         $a3, $a2, .L8005ED0C
/* 05E8E8 8005ED38 A068FFFF */   sb         $t0, -0x1($v1)
.L8005ED3C:
/* 05E8EC 8005ED3C 03E00008 */  jr          $ra
/* 05E8F0 8005ED40 00000000 */   nop
/* 05E8F4 8005ED44 00000000 */  nop
/* 05E8F8 8005ED48 00000000 */  nop
/* 05E8FC 8005ED4C 00000000 */  nop
