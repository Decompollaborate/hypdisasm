.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osProbeTLB # 0
/* 056F30 80057380 40085000 */  mfc0        $t0, EntryHi
/* 056F34 80057384 310900FF */  andi        $t1, $t0, 0xff
/* 056F38 80057388 2401E000 */  addiu       $at, $zero, -0x2000
/* 056F3C 8005738C 00815024 */  and         $t2, $a0, $at
/* 056F40 80057390 012A4825 */  or          $t1, $t1, $t2
/* 056F44 80057394 40895000 */  mtc0        $t1, EntryHi
/* 056F48 80057398 00000000 */  nop
/* 056F4C 8005739C 00000000 */  nop
/* 056F50 800573A0 00000000 */  nop
/* 056F54 800573A4 42000008 */  tlbp
/* 056F58 800573A8 00000000 */  nop
/* 056F5C 800573AC 00000000 */  nop
/* 056F60 800573B0 400B0000 */  mfc0        $t3, Index
/* 056F64 800573B4 3C018000 */  lui         $at, 0x8000
/* 056F68 800573B8 01615824 */  and         $t3, $t3, $at
/* 056F6C 800573BC 1560001A */  bnez        $t3, .L80057428
/* 056F70 800573C0 00000000 */   nop
/* 056F74 800573C4 42000001 */  tlbr
/* 056F78 800573C8 00000000 */  nop
/* 056F7C 800573CC 00000000 */  nop
/* 056F80 800573D0 00000000 */  nop
/* 056F84 800573D4 400B2800 */  mfc0        $t3, PageMask
/* 056F88 800573D8 216B2000 */  addi        $t3, $t3, 0x2000
/* 056F8C 800573DC 000B5842 */  srl         $t3, $t3, 1
/* 056F90 800573E0 01646024 */  and         $t4, $t3, $a0
/* 056F94 800573E4 15800004 */  bnez        $t4, .L800573F8
/* 056F98 800573E8 216BFFFF */   addi       $t3, $t3, -0x1
/* 056F9C 800573EC 40021000 */  mfc0        $v0, EntryLo0
/* 056FA0 800573F0 10000002 */  b           .L800573FC
/* 056FA4 800573F4 00000000 */   nop
.L800573F8:
/* 056FA8 800573F8 40021800 */  mfc0        $v0, EntryLo1
.L800573FC:
/* 056FAC 800573FC 304D0002 */  andi        $t5, $v0, 0x2
/* 056FB0 80057400 11A00009 */  beqz        $t5, .L80057428
/* 056FB4 80057404 00000000 */   nop
/* 056FB8 80057408 3C013FFF */  lui         $at, (0x3FFFFFC0 >> 16)
/* 056FBC 8005740C 3421FFC0 */  ori         $at, $at, (0x3FFFFFC0 & 0xFFFF)
/* 056FC0 80057410 00411024 */  and         $v0, $v0, $at
/* 056FC4 80057414 00021180 */  sll         $v0, $v0, 6
/* 056FC8 80057418 008B6824 */  and         $t5, $a0, $t3
/* 056FCC 8005741C 004D1020 */  add         $v0, $v0, $t5
/* 056FD0 80057420 10000002 */  b           .L8005742C
/* 056FD4 80057424 00000000 */   nop
.L80057428:
/* 056FD8 80057428 2402FFFF */  addiu       $v0, $zero, -0x1
.L8005742C:
/* 056FDC 8005742C 40885000 */  mtc0        $t0, EntryHi
/* 056FE0 80057430 03E00008 */  jr          $ra
/* 056FE4 80057434 00000000 */   nop
/* 056FE8 80057438 00000000 */  nop
/* 056FEC 8005743C 00000000 */  nop
