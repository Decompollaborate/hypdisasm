.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005D8D0 # 0
/* 05D480 8005D8D0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 05D484 8005D8D4 AFA40030 */  sw          $a0, 0x30($sp)
/* 05D488 8005D8D8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05D48C 8005D8DC AFA50034 */  sw          $a1, 0x34($sp)
/* 05D490 8005D8E0 240E00FA */  addiu       $t6, $zero, 0xfa
/* 05D494 8005D8E4 3C01800A */  lui         $at, %hi(D_8009FC14)
/* 05D498 8005D8E8 00A02025 */  move        $a0, $a1
/* 05D49C 8005D8EC A02EFC14 */  sb          $t6, %lo(D_8009FC14)($at)
/* 05D4A0 8005D8F0 0C017668 */  jal         func_8005D9A0
/* 05D4A4 8005D8F4 00002825 */   move       $a1, $zero
/* 05D4A8 8005D8F8 3C058010 */  lui         $a1, %hi(D_80100390)
/* 05D4AC 8005D8FC 24A50390 */  addiu       $a1, $a1, %lo(D_80100390)
/* 05D4B0 8005D900 0C016118 */  jal         func_80058460
/* 05D4B4 8005D904 24040001 */   addiu      $a0, $zero, 0x1
/* 05D4B8 8005D908 8FA40030 */  lw          $a0, 0x30($sp)
/* 05D4BC 8005D90C 27A50028 */  addiu       $a1, $sp, 0x28
/* 05D4C0 8005D910 0C014554 */  jal         func_80051550
/* 05D4C4 8005D914 24060001 */   addiu      $a2, $zero, 0x1
/* 05D4C8 8005D918 3C058010 */  lui         $a1, %hi(D_80100390)
/* 05D4CC 8005D91C 24A50390 */  addiu       $a1, $a1, %lo(D_80100390)
/* 05D4D0 8005D920 0C016118 */  jal         func_80058460
/* 05D4D4 8005D924 00002025 */   move       $a0, $zero
/* 05D4D8 8005D928 AFA2002C */  sw          $v0, 0x2c($sp)
/* 05D4DC 8005D92C 8FA40030 */  lw          $a0, 0x30($sp)
/* 05D4E0 8005D930 27A50028 */  addiu       $a1, $sp, 0x28
/* 05D4E4 8005D934 0C014554 */  jal         func_80051550
/* 05D4E8 8005D938 24060001 */   addiu      $a2, $zero, 0x1
/* 05D4EC 8005D93C 8FA40034 */  lw          $a0, 0x34($sp)
/* 05D4F0 8005D940 0C017699 */  jal         func_8005DA64
/* 05D4F4 8005D944 27A50024 */   addiu      $a1, $sp, 0x24
/* 05D4F8 8005D948 93A20026 */  lbu         $v0, 0x26($sp)
/* 05D4FC 8005D94C 93B80027 */  lbu         $t8, 0x27($sp)
/* 05D500 8005D950 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05D504 8005D954 30430001 */  andi        $v1, $v0, 0x1
/* 05D508 8005D958 10600005 */  beq         $v1, $zero, .L8005D970
/* 05D50C 8005D95C 304F0002 */   andi       $t7, $v0, 0x2
/* 05D510 8005D960 11E00003 */  beq         $t7, $zero, .L8005D970
/* 05D514 8005D964 00000000 */   nop
/* 05D518 8005D968 1000000B */  b           .L8005D998
/* 05D51C 8005D96C 24020002 */   addiu      $v0, $zero, 0x2
.L8005D970:
/* 05D520 8005D970 17000003 */  bne         $t8, $zero, .L8005D980
/* 05D524 8005D974 00000000 */   nop
/* 05D528 8005D978 14600003 */  bne         $v1, $zero, .L8005D988
/* 05D52C 8005D97C 30590004 */   andi       $t9, $v0, 0x4
.L8005D980:
/* 05D530 8005D980 10000005 */  b           .L8005D998
/* 05D534 8005D984 24020001 */   addiu      $v0, $zero, 0x1
.L8005D988:
/* 05D538 8005D988 13200003 */  beq         $t9, $zero, .L8005D998
/* 05D53C 8005D98C 8FA2002C */   lw         $v0, 0x2c($sp)
/* 05D540 8005D990 10000001 */  b           .L8005D998
/* 05D544 8005D994 24020004 */   addiu      $v0, $zero, 0x4
.L8005D998:
/* 05D548 8005D998 03E00008 */  jr          $ra
/* 05D54C 8005D99C 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8005D9A0 # 1
/* 05D550 8005D9A0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05D554 8005D9A4 3C068010 */  lui         $a2, %hi(D_80100390)
/* 05D558 8005D9A8 240700FE */  addiu       $a3, $zero, 0xfe
/* 05D55C 8005D9AC 3C018010 */  lui         $at, %hi(D_800FDC50)
/* 05D560 8005D9B0 24C20390 */  addiu       $v0, $a2, %lo(D_80100390)
/* 05D564 8005D9B4 AFA5001C */  sw          $a1, 0x1c($sp)
/* 05D568 8005D9B8 A027DC50 */  sb          $a3, %lo(D_800FDC50)($at)
/* 05D56C 8005D9BC 240F0001 */  addiu       $t7, $zero, 0x1
/* 05D570 8005D9C0 AC4F003C */  sw          $t7, 0x3c($v0)
/* 05D574 8005D9C4 24180001 */  addiu       $t8, $zero, 0x1
/* 05D578 8005D9C8 24190003 */  addiu       $t9, $zero, 0x3
/* 05D57C 8005D9CC 240800FF */  addiu       $t0, $zero, 0xff
/* 05D580 8005D9D0 240900FF */  addiu       $t1, $zero, 0xff
/* 05D584 8005D9D4 240A00FF */  addiu       $t2, $zero, 0xff
/* 05D588 8005D9D8 A3B8000C */  sb          $t8, 0xc($sp)
/* 05D58C 8005D9DC A3B9000D */  sb          $t9, 0xd($sp)
/* 05D590 8005D9E0 A3A5000E */  sb          $a1, 0xe($sp)
/* 05D594 8005D9E4 A3A8000F */  sb          $t0, 0xf($sp)
/* 05D598 8005D9E8 A3A90010 */  sb          $t1, 0x10($sp)
/* 05D59C 8005D9EC A3AA0011 */  sb          $t2, 0x11($sp)
/* 05D5A0 8005D9F0 18800010 */  blez        $a0, .L8005DA34
/* 05D5A4 8005D9F4 00001825 */   move       $v1, $zero
/* 05D5A8 8005D9F8 30860003 */  andi        $a2, $a0, 0x3
/* 05D5AC 8005D9FC 10C00006 */  beq         $a2, $zero, .L8005DA18
/* 05D5B0 8005DA00 00C02825 */   move       $a1, $a2
.L8005DA04:
/* 05D5B4 8005DA04 24630001 */  addiu       $v1, $v1, 0x1
/* 05D5B8 8005DA08 A0400000 */  sb          $zero, 0x0($v0)
/* 05D5BC 8005DA0C 14A3FFFD */  bne         $a1, $v1, .L8005DA04
/* 05D5C0 8005DA10 24420001 */   addiu      $v0, $v0, 0x1
/* 05D5C4 8005DA14 10640007 */  beq         $v1, $a0, .L8005DA34
.L8005DA18:
/* 05D5C8 8005DA18 24630004 */   addiu      $v1, $v1, 0x4
/* 05D5CC 8005DA1C A0400001 */  sb          $zero, 0x1($v0)
/* 05D5D0 8005DA20 A0400002 */  sb          $zero, 0x2($v0)
/* 05D5D4 8005DA24 A0400003 */  sb          $zero, 0x3($v0)
/* 05D5D8 8005DA28 24420004 */  addiu       $v0, $v0, 0x4
/* 05D5DC 8005DA2C 1464FFFA */  bne         $v1, $a0, .L8005DA18
/* 05D5E0 8005DA30 A040FFFC */   sb         $zero, -0x4($v0)
.L8005DA34:
/* 05D5E4 8005DA34 27AB000C */  addiu       $t3, $sp, 0xc
/* 05D5E8 8005DA38 8D610000 */  lw          $at, 0x0($t3)
/* 05D5EC 8005DA3C 24420006 */  addiu       $v0, $v0, 0x6
/* 05D5F0 8005DA40 A841FFFA */  swl         $at, -0x6($v0)
/* 05D5F4 8005DA44 B841FFFD */  swr         $at, -0x3($v0)
/* 05D5F8 8005DA48 91610004 */  lbu         $at, 0x4($t3)
/* 05D5FC 8005DA4C A041FFFE */  sb          $at, -0x2($v0)
/* 05D600 8005DA50 916D0005 */  lbu         $t5, 0x5($t3)
/* 05D604 8005DA54 A0470000 */  sb          $a3, 0x0($v0)
/* 05D608 8005DA58 27BD0018 */  addiu       $sp, $sp, 0x18
/* 05D60C 8005DA5C 03E00008 */  jr          $ra
/* 05D610 8005DA60 A04DFFFF */   sb         $t5, -0x1($v0)

glabel func_8005DA64 # 2
/* 05D614 8005DA64 3C028010 */  lui         $v0, %hi(D_80100390)
/* 05D618 8005DA68 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05D61C 8005DA6C 24420390 */  addiu       $v0, $v0, %lo(D_80100390)
/* 05D620 8005DA70 1880000B */  blez        $a0, .L8005DAA0
/* 05D624 8005DA74 00001825 */   move       $v1, $zero
/* 05D628 8005DA78 30870003 */  andi        $a3, $a0, 0x3
/* 05D62C 8005DA7C 10E00005 */  beq         $a3, $zero, .L8005DA94
/* 05D630 8005DA80 00E03025 */   move       $a2, $a3
.L8005DA84:
/* 05D634 8005DA84 24630001 */  addiu       $v1, $v1, 0x1
/* 05D638 8005DA88 14C3FFFE */  bne         $a2, $v1, .L8005DA84
/* 05D63C 8005DA8C 24420001 */   addiu      $v0, $v0, 0x1
/* 05D640 8005DA90 10640003 */  beq         $v1, $a0, .L8005DAA0
.L8005DA94:
/* 05D644 8005DA94 24630004 */   addiu      $v1, $v1, 0x4
/* 05D648 8005DA98 1464FFFE */  bne         $v1, $a0, .L8005DA94
/* 05D64C 8005DA9C 24420004 */   addiu      $v0, $v0, 0x4
.L8005DAA0:
/* 05D650 8005DAA0 88410000 */  lwl         $at, 0x0($v0)
/* 05D654 8005DAA4 98410003 */  lwr         $at, 0x3($v0)
/* 05D658 8005DAA8 27AE000C */  addiu       $t6, $sp, 0xc
/* 05D65C 8005DAAC ADC10000 */  sw          $at, 0x0($t6)
/* 05D660 8005DAB0 90410004 */  lbu         $at, 0x4($v0)
/* 05D664 8005DAB4 A1C10004 */  sb          $at, 0x4($t6)
/* 05D668 8005DAB8 90580005 */  lbu         $t8, 0x5($v0)
/* 05D66C 8005DABC A1D80005 */  sb          $t8, 0x5($t6)
/* 05D670 8005DAC0 93B9000D */  lbu         $t9, 0xd($sp)
/* 05D674 8005DAC4 332800C0 */  andi        $t0, $t9, 0xc0
/* 05D678 8005DAC8 00084903 */  sra         $t1, $t0, 4
/* 05D67C 8005DACC 312A00FF */  andi        $t2, $t1, 0xff
/* 05D680 8005DAD0 15400008 */  bne         $t2, $zero, .L8005DAF4
/* 05D684 8005DAD4 A0A90003 */   sb         $t1, 0x3($a1)
/* 05D688 8005DAD8 93AB0010 */  lbu         $t3, 0x10($sp)
/* 05D68C 8005DADC 93AD000F */  lbu         $t5, 0xf($sp)
/* 05D690 8005DAE0 000B6200 */  sll         $t4, $t3, 8
/* 05D694 8005DAE4 018D7825 */  or          $t7, $t4, $t5
/* 05D698 8005DAE8 A4AF0000 */  sh          $t7, 0x0($a1)
/* 05D69C 8005DAEC 93AE0011 */  lbu         $t6, 0x11($sp)
/* 05D6A0 8005DAF0 A0AE0002 */  sb          $t6, 0x2($a1)
.L8005DAF4:
/* 05D6A4 8005DAF4 03E00008 */  jr          $ra
/* 05D6A8 8005DAF8 27BD0018 */   addiu      $sp, $sp, 0x18
/* 05D6AC 8005DAFC 00000000 */  nop
