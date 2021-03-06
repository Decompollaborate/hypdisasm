.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osEPiRawWriteIo # 0
/* 05E4D0 8005E920 3C03A460 */  lui         $v1, (0xA4600010 >> 16)
/* 05E4D4 8005E924 34630010 */  ori         $v1, $v1, (0xA4600010 & 0xFFFF)
/* 05E4D8 8005E928 8C620000 */  lw          $v0, 0x0($v1)
/* 05E4DC 8005E92C 00A03825 */  move        $a3, $a1
/* 05E4E0 8005E930 304E0003 */  andi        $t6, $v0, 0x3
/* 05E4E4 8005E934 51C00006 */  beql        $t6, $zero, .L8005E950
/* 05E4E8 8005E938 90820009 */   lbu        $v0, 0x9($a0)
/* 05E4EC 8005E93C 8C620000 */  lw          $v0, 0x0($v1)
.L8005E940:
/* 05E4F0 8005E940 304F0003 */  andi        $t7, $v0, 0x3
/* 05E4F4 8005E944 55E0FFFE */  bnel        $t7, $zero, .L8005E940
/* 05E4F8 8005E948 8C620000 */   lw         $v0, 0x0($v1)
/* 05E4FC 8005E94C 90820009 */  lbu         $v0, 0x9($a0)
.L8005E950:
/* 05E500 8005E950 3C03800A */  lui         $v1, %hi(__osCurrentHandle)
/* 05E504 8005E954 90990004 */  lbu         $t9, 0x4($a0)
/* 05E508 8005E958 0002C080 */  sll         $t8, $v0, 2
/* 05E50C 8005E95C 00781821 */  addu        $v1, $v1, $t8
/* 05E510 8005E960 8C63EE60 */  lw          $v1, %lo(__osCurrentHandle)($v1)
/* 05E514 8005E964 90680004 */  lbu         $t0, 0x4($v1)
/* 05E518 8005E968 5328003D */  beql        $t9, $t0, .L8005EA60
/* 05E51C 8005E96C 8C8A000C */   lw         $t2, 0xc($a0)
/* 05E520 8005E970 14400019 */  bnez        $v0, .L8005E9D8
/* 05E524 8005E974 00602825 */   move       $a1, $v1
/* 05E528 8005E978 90820005 */  lbu         $v0, 0x5($a0)
/* 05E52C 8005E97C 90690005 */  lbu         $t1, 0x5($v1)
/* 05E530 8005E980 3C0AA460 */  lui         $t2, %hi(D_A4600014)
/* 05E534 8005E984 3C0CA460 */  lui         $t4, %hi(D_A460001C)
/* 05E538 8005E988 10490002 */  beq         $v0, $t1, .L8005E994
/* 05E53C 8005E98C 3C0EA460 */   lui        $t6, %hi(D_A4600020)
/* 05E540 8005E990 AD420014 */  sw          $v0, %lo(D_A4600014)($t2)
.L8005E994:
/* 05E544 8005E994 90820006 */  lbu         $v0, 0x6($a0)
/* 05E548 8005E998 90AB0006 */  lbu         $t3, 0x6($a1)
/* 05E54C 8005E99C 3C18A460 */  lui         $t8, %hi(D_A4600018)
/* 05E550 8005E9A0 504B0003 */  beql        $v0, $t3, .L8005E9B0
/* 05E554 8005E9A4 90820007 */   lbu        $v0, 0x7($a0)
/* 05E558 8005E9A8 AD82001C */  sw          $v0, %lo(D_A460001C)($t4)
/* 05E55C 8005E9AC 90820007 */  lbu         $v0, 0x7($a0)
.L8005E9B0:
/* 05E560 8005E9B0 90AD0007 */  lbu         $t5, 0x7($a1)
/* 05E564 8005E9B4 504D0003 */  beql        $v0, $t5, .L8005E9C4
/* 05E568 8005E9B8 90820008 */   lbu        $v0, 0x8($a0)
/* 05E56C 8005E9BC ADC20020 */  sw          $v0, %lo(D_A4600020)($t6)
/* 05E570 8005E9C0 90820008 */  lbu         $v0, 0x8($a0)
.L8005E9C4:
/* 05E574 8005E9C4 90AF0008 */  lbu         $t7, 0x8($a1)
/* 05E578 8005E9C8 504F001B */  beql        $v0, $t7, .L8005EA38
/* 05E57C 8005E9CC 908F0004 */   lbu        $t7, 0x4($a0)
/* 05E580 8005E9D0 10000018 */  b           .L8005EA34
/* 05E584 8005E9D4 AF020018 */   sw         $v0, %lo(D_A4600018)($t8)
.L8005E9D8:
/* 05E588 8005E9D8 90820005 */  lbu         $v0, 0x5($a0)
/* 05E58C 8005E9DC 90B90005 */  lbu         $t9, 0x5($a1)
/* 05E590 8005E9E0 3C08A460 */  lui         $t0, %hi(D_A4600024)
/* 05E594 8005E9E4 3C0AA460 */  lui         $t2, %hi(D_A460002C)
/* 05E598 8005E9E8 10590002 */  beq         $v0, $t9, .L8005E9F4
/* 05E59C 8005E9EC 3C0CA460 */   lui        $t4, %hi(D_A4600030)
/* 05E5A0 8005E9F0 AD020024 */  sw          $v0, %lo(D_A4600024)($t0)
.L8005E9F4:
/* 05E5A4 8005E9F4 90820006 */  lbu         $v0, 0x6($a0)
/* 05E5A8 8005E9F8 90A90006 */  lbu         $t1, 0x6($a1)
/* 05E5AC 8005E9FC 3C0EA460 */  lui         $t6, %hi(D_A4600028)
/* 05E5B0 8005EA00 50490003 */  beql        $v0, $t1, .L8005EA10
/* 05E5B4 8005EA04 90820007 */   lbu        $v0, 0x7($a0)
/* 05E5B8 8005EA08 AD42002C */  sw          $v0, %lo(D_A460002C)($t2)
/* 05E5BC 8005EA0C 90820007 */  lbu         $v0, 0x7($a0)
.L8005EA10:
/* 05E5C0 8005EA10 90AB0007 */  lbu         $t3, 0x7($a1)
/* 05E5C4 8005EA14 504B0003 */  beql        $v0, $t3, .L8005EA24
/* 05E5C8 8005EA18 90820008 */   lbu        $v0, 0x8($a0)
/* 05E5CC 8005EA1C AD820030 */  sw          $v0, %lo(D_A4600030)($t4)
/* 05E5D0 8005EA20 90820008 */  lbu         $v0, 0x8($a0)
.L8005EA24:
/* 05E5D4 8005EA24 90AD0008 */  lbu         $t5, 0x8($a1)
/* 05E5D8 8005EA28 504D0003 */  beql        $v0, $t5, .L8005EA38
/* 05E5DC 8005EA2C 908F0004 */   lbu        $t7, 0x4($a0)
/* 05E5E0 8005EA30 ADC20028 */  sw          $v0, %lo(D_A4600028)($t6)
.L8005EA34:
/* 05E5E4 8005EA34 908F0004 */  lbu         $t7, 0x4($a0)
.L8005EA38:
/* 05E5E8 8005EA38 A0AF0004 */  sb          $t7, 0x4($a1)
/* 05E5EC 8005EA3C 90980005 */  lbu         $t8, 0x5($a0)
/* 05E5F0 8005EA40 A0B80005 */  sb          $t8, 0x5($a1)
/* 05E5F4 8005EA44 90990006 */  lbu         $t9, 0x6($a0)
/* 05E5F8 8005EA48 A0B90006 */  sb          $t9, 0x6($a1)
/* 05E5FC 8005EA4C 90880007 */  lbu         $t0, 0x7($a0)
/* 05E600 8005EA50 A0A80007 */  sb          $t0, 0x7($a1)
/* 05E604 8005EA54 90890008 */  lbu         $t1, 0x8($a0)
/* 05E608 8005EA58 A0A90008 */  sb          $t1, 0x8($a1)
/* 05E60C 8005EA5C 8C8A000C */  lw          $t2, 0xc($a0)
.L8005EA60:
/* 05E610 8005EA60 3C01A000 */  lui         $at, 0xa000
/* 05E614 8005EA64 00001025 */  move        $v0, $zero
/* 05E618 8005EA68 01475825 */  or          $t3, $t2, $a3
/* 05E61C 8005EA6C 01616025 */  or          $t4, $t3, $at
/* 05E620 8005EA70 03E00008 */  jr          $ra
/* 05E624 8005EA74 AD860000 */   sw         $a2, 0x0($t4)
/* 05E628 8005EA78 00000000 */  nop
/* 05E62C 8005EA7C 00000000 */  nop
