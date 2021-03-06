.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osContInit # 0
/* 051510 80051960 3C02800A */  lui         $v0, %hi(D_8009DCA0)
/* 051514 80051964 2442DCA0 */  addiu       $v0, $v0, %lo(D_8009DCA0)
/* 051518 80051968 8C4E0000 */  lw          $t6, 0x0($v0)
/* 05151C 8005196C 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 051520 80051970 AFBF0024 */  sw          $ra, 0x24($sp)
/* 051524 80051974 AFA40070 */  sw          $a0, 0x70($sp)
/* 051528 80051978 AFA50074 */  sw          $a1, 0x74($sp)
/* 05152C 8005197C 11C00003 */  beqz        $t6, .L8005198C
/* 051530 80051980 AFA60078 */   sw         $a2, 0x78($sp)
/* 051534 80051984 10000049 */  b           .L80051AAC
/* 051538 80051988 00001025 */   move       $v0, $zero
.L8005198C:
/* 05153C 8005198C 240F0001 */  addiu       $t7, $zero, 0x1
/* 051540 80051990 0C01482C */  jal         osGetTime
/* 051544 80051994 AC4F0000 */   sw         $t7, 0x0($v0)
/* 051548 80051998 AFA20060 */  sw          $v0, 0x60($sp)
/* 05154C 8005199C 14400020 */  bnez        $v0, .L80051A20
/* 051550 800519A0 AFA30064 */   sw         $v1, 0x64($sp)
/* 051554 800519A4 3C010165 */  lui         $at, (0x165A0BC >> 16)
/* 051558 800519A8 3421A0BC */  ori         $at, $at, (0x165A0BC & 0xFFFF)
/* 05155C 800519AC 0061082B */  sltu        $at, $v1, $at
/* 051560 800519B0 1020001B */  beqz        $at, .L80051A20
/* 051564 800519B4 27A40028 */   addiu      $a0, $sp, 0x28
/* 051568 800519B8 27A5006C */  addiu       $a1, $sp, 0x6c
/* 05156C 800519BC 0C0145B8 */  jal         osCreateMesgQueue
/* 051570 800519C0 24060001 */   addiu      $a2, $zero, 0x1
/* 051574 800519C4 8FB80060 */  lw          $t8, 0x60($sp)
/* 051578 800519C8 8FB90064 */  lw          $t9, 0x64($sp)
/* 05157C 800519CC 3C090165 */  lui         $t1, (0x165A0BC >> 16)
/* 051580 800519D0 3529A0BC */  ori         $t1, $t1, (0x165A0BC & 0xFFFF)
/* 051584 800519D4 24080000 */  addiu       $t0, $zero, 0x0
/* 051588 800519D8 240A0000 */  addiu       $t2, $zero, 0x0
/* 05158C 800519DC 240B0000 */  addiu       $t3, $zero, 0x0
/* 051590 800519E0 27AC0028 */  addiu       $t4, $sp, 0x28
/* 051594 800519E4 27AD006C */  addiu       $t5, $sp, 0x6c
/* 051598 800519E8 01183023 */  subu        $a2, $t0, $t8
/* 05159C 800519EC 0139082B */  sltu        $at, $t1, $t9
/* 0515A0 800519F0 00C13023 */  subu        $a2, $a2, $at
/* 0515A4 800519F4 AFAD001C */  sw          $t5, 0x1c($sp)
/* 0515A8 800519F8 AFAC0018 */  sw          $t4, 0x18($sp)
/* 0515AC 800519FC AFAB0014 */  sw          $t3, 0x14($sp)
/* 0515B0 80051A00 AFAA0010 */  sw          $t2, 0x10($sp)
/* 0515B4 80051A04 27A40040 */  addiu       $a0, $sp, 0x40
/* 0515B8 80051A08 0C016144 */  jal         osSetTimer
/* 0515BC 80051A0C 01393823 */   subu       $a3, $t1, $t9
/* 0515C0 80051A10 27A40028 */  addiu       $a0, $sp, 0x28
/* 0515C4 80051A14 27A5006C */  addiu       $a1, $sp, 0x6c
/* 0515C8 80051A18 0C014554 */  jal         osRecvMesg
/* 0515CC 80051A1C 24060001 */   addiu      $a2, $zero, 0x1
.L80051A20:
/* 0515D0 80051A20 240E0004 */  addiu       $t6, $zero, 0x4
/* 0515D4 80051A24 3C018010 */  lui         $at, %hi(__osMaxControllers)
/* 0515D8 80051A28 A02EDC51 */  sb          $t6, %lo(__osMaxControllers)($at)
/* 0515DC 80051A2C 0C0146DA */  jal         __osPackRequestData
/* 0515E0 80051A30 00002025 */   move       $a0, $zero
/* 0515E4 80051A34 3C058010 */  lui         $a1, %hi(__osContPifRam)
/* 0515E8 80051A38 24A5DC10 */  addiu       $a1, $a1, %lo(__osContPifRam)
/* 0515EC 80051A3C 0C016118 */  jal         __osSiRawStartDma
/* 0515F0 80051A40 24040001 */   addiu      $a0, $zero, 0x1
/* 0515F4 80051A44 8FA40070 */  lw          $a0, 0x70($sp)
/* 0515F8 80051A48 27A5006C */  addiu       $a1, $sp, 0x6c
/* 0515FC 80051A4C 0C014554 */  jal         osRecvMesg
/* 051600 80051A50 24060001 */   addiu      $a2, $zero, 0x1
/* 051604 80051A54 3C058010 */  lui         $a1, %hi(__osContPifRam)
/* 051608 80051A58 24A5DC10 */  addiu       $a1, $a1, %lo(__osContPifRam)
/* 05160C 80051A5C 0C016118 */  jal         __osSiRawStartDma
/* 051610 80051A60 00002025 */   move       $a0, $zero
/* 051614 80051A64 AFA20068 */  sw          $v0, 0x68($sp)
/* 051618 80051A68 8FA40070 */  lw          $a0, 0x70($sp)
/* 05161C 80051A6C 27A5006C */  addiu       $a1, $sp, 0x6c
/* 051620 80051A70 0C014554 */  jal         osRecvMesg
/* 051624 80051A74 24060001 */   addiu      $a2, $zero, 0x1
/* 051628 80051A78 8FA40074 */  lw          $a0, 0x74($sp)
/* 05162C 80051A7C 0C0146AF */  jal         __osContGetInitData
/* 051630 80051A80 8FA50078 */   lw         $a1, 0x78($sp)
/* 051634 80051A84 3C018010 */  lui         $at, %hi(__osContLastPoll)
/* 051638 80051A88 0C0160E8 */  jal         __osSiCreateAccessQueue
/* 05163C 80051A8C A020DC50 */   sb         $zero, %lo(__osContLastPoll)($at)
/* 051640 80051A90 3C048010 */  lui         $a0, %hi(D_800FDC78)
/* 051644 80051A94 3C058010 */  lui         $a1, %hi(D_800FDC90)
/* 051648 80051A98 24A5DC90 */  addiu       $a1, $a1, %lo(D_800FDC90)
/* 05164C 80051A9C 2484DC78 */  addiu       $a0, $a0, %lo(D_800FDC78)
/* 051650 80051AA0 0C0145B8 */  jal         osCreateMesgQueue
/* 051654 80051AA4 24060001 */   addiu      $a2, $zero, 0x1
/* 051658 80051AA8 8FA20068 */  lw          $v0, 0x68($sp)
.L80051AAC:
/* 05165C 80051AAC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 051660 80051AB0 27BD0070 */  addiu       $sp, $sp, 0x70
/* 051664 80051AB4 03E00008 */  jr          $ra
/* 051668 80051AB8 00000000 */   nop

glabel __osContGetInitData # 1
/* 05166C 80051ABC 3C078010 */  lui         $a3, %hi(__osMaxControllers)
/* 051670 80051AC0 24E7DC51 */  addiu       $a3, $a3, %lo(__osMaxControllers)
/* 051674 80051AC4 90EE0000 */  lbu         $t6, 0x0($a3)
/* 051678 80051AC8 3C038010 */  lui         $v1, %hi(__osContPifRam)
/* 05167C 80051ACC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 051680 80051AD0 00001025 */  move        $v0, $zero
/* 051684 80051AD4 2463DC10 */  addiu       $v1, $v1, %lo(__osContPifRam)
/* 051688 80051AD8 19C00020 */  blez        $t6, .L80051B5C
/* 05168C 80051ADC 00003025 */   move       $a2, $zero
/* 051690 80051AE0 27A8000C */  addiu       $t0, $sp, 0xc
.L80051AE4:
/* 051694 80051AE4 88610000 */  lwl         $at, 0x0($v1)
/* 051698 80051AE8 98610003 */  lwr         $at, 0x3($v1)
/* 05169C 80051AEC AD010000 */  sw          $at, 0x0($t0)
/* 0516A0 80051AF0 88780004 */  lwl         $t8, 0x4($v1)
/* 0516A4 80051AF4 98780007 */  lwr         $t8, 0x7($v1)
/* 0516A8 80051AF8 AD180004 */  sw          $t8, 0x4($t0)
/* 0516AC 80051AFC 93B9000E */  lbu         $t9, 0xe($sp)
/* 0516B0 80051B00 332900C0 */  andi        $t1, $t9, 0xc0
/* 0516B4 80051B04 00095103 */  sra         $t2, $t1, 4
/* 0516B8 80051B08 314B00FF */  andi        $t3, $t2, 0xff
/* 0516BC 80051B0C 1560000D */  bnez        $t3, .L80051B44
/* 0516C0 80051B10 A0AA0003 */   sb         $t2, 0x3($a1)
/* 0516C4 80051B14 93AC0011 */  lbu         $t4, 0x11($sp)
/* 0516C8 80051B18 93AE0010 */  lbu         $t6, 0x10($sp)
/* 0516CC 80051B1C 24190001 */  addiu       $t9, $zero, 0x1
/* 0516D0 80051B20 000C6A00 */  sll         $t5, $t4, 8
/* 0516D4 80051B24 01AE7825 */  or          $t7, $t5, $t6
/* 0516D8 80051B28 A4AF0000 */  sh          $t7, 0x0($a1)
/* 0516DC 80051B2C 93B80012 */  lbu         $t8, 0x12($sp)
/* 0516E0 80051B30 00D94804 */  sllv        $t1, $t9, $a2
/* 0516E4 80051B34 00491025 */  or          $v0, $v0, $t1
/* 0516E8 80051B38 304A00FF */  andi        $t2, $v0, 0xff
/* 0516EC 80051B3C 01401025 */  move        $v0, $t2
/* 0516F0 80051B40 A0B80002 */  sb          $t8, 0x2($a1)
.L80051B44:
/* 0516F4 80051B44 90EB0000 */  lbu         $t3, 0x0($a3)
/* 0516F8 80051B48 24C60001 */  addiu       $a2, $a2, 0x1
/* 0516FC 80051B4C 24630008 */  addiu       $v1, $v1, 0x8
/* 051700 80051B50 00CB082A */  slt         $at, $a2, $t3
/* 051704 80051B54 1420FFE3 */  bnez        $at, .L80051AE4
/* 051708 80051B58 24A50004 */   addiu      $a1, $a1, 0x4
.L80051B5C:
/* 05170C 80051B5C A0820000 */  sb          $v0, 0x0($a0)
/* 051710 80051B60 03E00008 */  jr          $ra
/* 051714 80051B64 27BD0018 */   addiu      $sp, $sp, 0x18

glabel __osPackRequestData # 2
/* 051718 80051B68 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05171C 80051B6C AFA40018 */  sw          $a0, 0x18($sp)
/* 051720 80051B70 308E00FF */  andi        $t6, $a0, 0xff
/* 051724 80051B74 3C038010 */  lui         $v1, %hi(__osContPifRam)
/* 051728 80051B78 3C028010 */  lui         $v0, %hi(__osContPifRam + 0x3C)
/* 05172C 80051B7C 01C02025 */  move        $a0, $t6
/* 051730 80051B80 2442DC4C */  addiu       $v0, $v0, %lo(__osContPifRam + 0x3C)
/* 051734 80051B84 2463DC10 */  addiu       $v1, $v1, %lo(__osContPifRam)
.L80051B88:
/* 051738 80051B88 24630004 */  addiu       $v1, $v1, 0x4
/* 05173C 80051B8C 0062082B */  sltu        $at, $v1, $v0
/* 051740 80051B90 1420FFFD */  bnez        $at, .L80051B88
/* 051744 80051B94 AC60FFFC */   sw         $zero, -0x4($v1)
/* 051748 80051B98 3C058010 */  lui         $a1, %hi(__osContPifRam)
/* 05174C 80051B9C 24A3DC10 */  addiu       $v1, $a1, %lo(__osContPifRam)
/* 051750 80051BA0 240F0001 */  addiu       $t7, $zero, 0x1
/* 051754 80051BA4 AC6F003C */  sw          $t7, 0x3c($v1)
/* 051758 80051BA8 3C068010 */  lui         $a2, %hi(__osMaxControllers)
/* 05175C 80051BAC 24C6DC51 */  addiu       $a2, $a2, %lo(__osMaxControllers)
/* 051760 80051BB0 90CD0000 */  lbu         $t5, 0x0($a2)
/* 051764 80051BB4 241800FF */  addiu       $t8, $zero, 0xff
/* 051768 80051BB8 24190001 */  addiu       $t9, $zero, 0x1
/* 05176C 80051BBC 24080003 */  addiu       $t0, $zero, 0x3
/* 051770 80051BC0 240900FF */  addiu       $t1, $zero, 0xff
/* 051774 80051BC4 240A00FF */  addiu       $t2, $zero, 0xff
/* 051778 80051BC8 240B00FF */  addiu       $t3, $zero, 0xff
/* 05177C 80051BCC 240C00FF */  addiu       $t4, $zero, 0xff
/* 051780 80051BD0 A3B8000C */  sb          $t8, 0xc($sp)
/* 051784 80051BD4 A3B9000D */  sb          $t9, 0xd($sp)
/* 051788 80051BD8 A3A8000E */  sb          $t0, 0xe($sp)
/* 05178C 80051BDC A3A4000F */  sb          $a0, 0xf($sp)
/* 051790 80051BE0 A3A90010 */  sb          $t1, 0x10($sp)
/* 051794 80051BE4 A3AA0011 */  sb          $t2, 0x11($sp)
/* 051798 80051BE8 A3AB0012 */  sb          $t3, 0x12($sp)
/* 05179C 80051BEC A3AC0013 */  sb          $t4, 0x13($sp)
/* 0517A0 80051BF0 19A0000E */  blez        $t5, .L80051C2C
/* 0517A4 80051BF4 00001025 */   move       $v0, $zero
/* 0517A8 80051BF8 27A4000C */  addiu       $a0, $sp, 0xc
/* 0517AC 80051BFC 8C810000 */  lw          $at, 0x0($a0)
.L80051C00:
/* 0517B0 80051C00 24420001 */  addiu       $v0, $v0, 0x1
/* 0517B4 80051C04 24630008 */  addiu       $v1, $v1, 0x8
/* 0517B8 80051C08 A861FFF8 */  swl         $at, -0x8($v1)
/* 0517BC 80051C0C B861FFFB */  swr         $at, -0x5($v1)
/* 0517C0 80051C10 8C8F0004 */  lw          $t7, 0x4($a0)
/* 0517C4 80051C14 A86FFFFC */  swl         $t7, -0x4($v1)
/* 0517C8 80051C18 B86FFFFF */  swr         $t7, -0x1($v1)
/* 0517CC 80051C1C 90D80000 */  lbu         $t8, 0x0($a2)
/* 0517D0 80051C20 0058082A */  slt         $at, $v0, $t8
/* 0517D4 80051C24 5420FFF6 */  bnel        $at, $zero, .L80051C00
/* 0517D8 80051C28 8C810000 */   lw         $at, 0x0($a0)
.L80051C2C:
/* 0517DC 80051C2C 241900FE */  addiu       $t9, $zero, 0xfe
/* 0517E0 80051C30 A0790000 */  sb          $t9, 0x0($v1)
/* 0517E4 80051C34 03E00008 */  jr          $ra
/* 0517E8 80051C38 27BD0018 */   addiu      $sp, $sp, 0x18
/* 0517EC 80051C3C 00000000 */  nop
