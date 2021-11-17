.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osEPiRawReadIo # 0
/* 05E630 8005EA80 3C03A460 */  lui         $v1, 0xa460
/* 05E634 8005EA84 34630010 */  ori         $v1, $v1, 0x10
/* 05E638 8005EA88 8C620000 */  lw          $v0, 0x0($v1)
/* 05E63C 8005EA8C 00A03825 */  move        $a3, $a1
/* 05E640 8005EA90 304E0003 */  andi        $t6, $v0, 0x3
/* 05E644 8005EA94 51C00006 */  beql        $t6, $zero, .L8005EAB0
/* 05E648 8005EA98 90820009 */   lbu        $v0, 0x9($a0)
/* 05E64C 8005EA9C 8C620000 */  lw          $v0, 0x0($v1)
.L8005EAA0:
/* 05E650 8005EAA0 304F0003 */  andi        $t7, $v0, 0x3
/* 05E654 8005EAA4 55E0FFFE */  bnel        $t7, $zero, .L8005EAA0
/* 05E658 8005EAA8 8C620000 */   lw         $v0, 0x0($v1)
/* 05E65C 8005EAAC 90820009 */  lbu         $v0, 0x9($a0)
.L8005EAB0:
/* 05E660 8005EAB0 3C03800A */  lui         $v1, %hi(__osCurrentHandle)
/* 05E664 8005EAB4 90990004 */  lbu         $t9, 0x4($a0)
/* 05E668 8005EAB8 0002C080 */  sll         $t8, $v0, 2
/* 05E66C 8005EABC 00781821 */  addu        $v1, $v1, $t8
/* 05E670 8005EAC0 8C63EE60 */  lw          $v1, %lo(__osCurrentHandle)($v1)
/* 05E674 8005EAC4 90680004 */  lbu         $t0, 0x4($v1)
/* 05E678 8005EAC8 5328003D */  beql        $t9, $t0, .L8005EBC0
/* 05E67C 8005EACC 8C8A000C */   lw         $t2, 0xc($a0)
/* 05E680 8005EAD0 14400019 */  bne         $v0, $zero, .L8005EB38
/* 05E684 8005EAD4 00602825 */   move       $a1, $v1
/* 05E688 8005EAD8 90820005 */  lbu         $v0, 0x5($a0)
/* 05E68C 8005EADC 90690005 */  lbu         $t1, 0x5($v1)
/* 05E690 8005EAE0 3C0AA460 */  lui         $t2, %hi(D_A4600014)
/* 05E694 8005EAE4 3C0CA460 */  lui         $t4, %hi(D_A460001C)
/* 05E698 8005EAE8 10490002 */  beq         $v0, $t1, .L8005EAF4
/* 05E69C 8005EAEC 3C0EA460 */   lui        $t6, %hi(D_A4600020)
/* 05E6A0 8005EAF0 AD420014 */  sw          $v0, %lo(D_A4600014)($t2)
.L8005EAF4:
/* 05E6A4 8005EAF4 90820006 */  lbu         $v0, 0x6($a0)
/* 05E6A8 8005EAF8 90AB0006 */  lbu         $t3, 0x6($a1)
/* 05E6AC 8005EAFC 3C18A460 */  lui         $t8, %hi(D_A4600018)
/* 05E6B0 8005EB00 504B0003 */  beql        $v0, $t3, .L8005EB10
/* 05E6B4 8005EB04 90820007 */   lbu        $v0, 0x7($a0)
/* 05E6B8 8005EB08 AD82001C */  sw          $v0, %lo(D_A460001C)($t4)
/* 05E6BC 8005EB0C 90820007 */  lbu         $v0, 0x7($a0)
.L8005EB10:
/* 05E6C0 8005EB10 90AD0007 */  lbu         $t5, 0x7($a1)
/* 05E6C4 8005EB14 504D0003 */  beql        $v0, $t5, .L8005EB24
/* 05E6C8 8005EB18 90820008 */   lbu        $v0, 0x8($a0)
/* 05E6CC 8005EB1C ADC20020 */  sw          $v0, %lo(D_A4600020)($t6)
/* 05E6D0 8005EB20 90820008 */  lbu         $v0, 0x8($a0)
.L8005EB24:
/* 05E6D4 8005EB24 90AF0008 */  lbu         $t7, 0x8($a1)
/* 05E6D8 8005EB28 504F001B */  beql        $v0, $t7, .L8005EB98
/* 05E6DC 8005EB2C 908F0004 */   lbu        $t7, 0x4($a0)
/* 05E6E0 8005EB30 10000018 */  b           .L8005EB94
/* 05E6E4 8005EB34 AF020018 */   sw         $v0, %lo(D_A4600018)($t8)
.L8005EB38:
/* 05E6E8 8005EB38 90820005 */  lbu         $v0, 0x5($a0)
/* 05E6EC 8005EB3C 90B90005 */  lbu         $t9, 0x5($a1)
/* 05E6F0 8005EB40 3C08A460 */  lui         $t0, %hi(D_A4600024)
/* 05E6F4 8005EB44 3C0AA460 */  lui         $t2, %hi(D_A460002C)
/* 05E6F8 8005EB48 10590002 */  beq         $v0, $t9, .L8005EB54
/* 05E6FC 8005EB4C 3C0CA460 */   lui        $t4, %hi(D_A4600030)
/* 05E700 8005EB50 AD020024 */  sw          $v0, %lo(D_A4600024)($t0)
.L8005EB54:
/* 05E704 8005EB54 90820006 */  lbu         $v0, 0x6($a0)
/* 05E708 8005EB58 90A90006 */  lbu         $t1, 0x6($a1)
/* 05E70C 8005EB5C 3C0EA460 */  lui         $t6, %hi(D_A4600028)
/* 05E710 8005EB60 50490003 */  beql        $v0, $t1, .L8005EB70
/* 05E714 8005EB64 90820007 */   lbu        $v0, 0x7($a0)
/* 05E718 8005EB68 AD42002C */  sw          $v0, %lo(D_A460002C)($t2)
/* 05E71C 8005EB6C 90820007 */  lbu         $v0, 0x7($a0)
.L8005EB70:
/* 05E720 8005EB70 90AB0007 */  lbu         $t3, 0x7($a1)
/* 05E724 8005EB74 504B0003 */  beql        $v0, $t3, .L8005EB84
/* 05E728 8005EB78 90820008 */   lbu        $v0, 0x8($a0)
/* 05E72C 8005EB7C AD820030 */  sw          $v0, %lo(D_A4600030)($t4)
/* 05E730 8005EB80 90820008 */  lbu         $v0, 0x8($a0)
.L8005EB84:
/* 05E734 8005EB84 90AD0008 */  lbu         $t5, 0x8($a1)
/* 05E738 8005EB88 504D0003 */  beql        $v0, $t5, .L8005EB98
/* 05E73C 8005EB8C 908F0004 */   lbu        $t7, 0x4($a0)
/* 05E740 8005EB90 ADC20028 */  sw          $v0, %lo(D_A4600028)($t6)
.L8005EB94:
/* 05E744 8005EB94 908F0004 */  lbu         $t7, 0x4($a0)
.L8005EB98:
/* 05E748 8005EB98 A0AF0004 */  sb          $t7, 0x4($a1)
/* 05E74C 8005EB9C 90980005 */  lbu         $t8, 0x5($a0)
/* 05E750 8005EBA0 A0B80005 */  sb          $t8, 0x5($a1)
/* 05E754 8005EBA4 90990006 */  lbu         $t9, 0x6($a0)
/* 05E758 8005EBA8 A0B90006 */  sb          $t9, 0x6($a1)
/* 05E75C 8005EBAC 90880007 */  lbu         $t0, 0x7($a0)
/* 05E760 8005EBB0 A0A80007 */  sb          $t0, 0x7($a1)
/* 05E764 8005EBB4 90890008 */  lbu         $t1, 0x8($a0)
/* 05E768 8005EBB8 A0A90008 */  sb          $t1, 0x8($a1)
/* 05E76C 8005EBBC 8C8A000C */  lw          $t2, 0xc($a0)
.L8005EBC0:
/* 05E770 8005EBC0 3C01A000 */  lui         $at, 0xa000
/* 05E774 8005EBC4 00001025 */  move        $v0, $zero
/* 05E778 8005EBC8 01475825 */  or          $t3, $t2, $a3
/* 05E77C 8005EBCC 01616025 */  or          $t4, $t3, $at
/* 05E780 8005EBD0 8D8D0000 */  lw          $t5, 0x0($t4)
/* 05E784 8005EBD4 03E00008 */  jr          $ra
/* 05E788 8005EBD8 ACCD0000 */   sw         $t5, 0x0($a2)
/* 05E78C 8005EBDC 00000000 */  nop
