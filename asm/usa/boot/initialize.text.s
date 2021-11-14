.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __createSpeedParam # 0
/* 0501B0 80050600 240E0007 */  addiu       $t6, $zero, 0x7
/* 0501B4 80050604 3C018010 */  lui         $at, %hi(D_800FDDE4)
/* 0501B8 80050608 A02EDDE4 */  sb          $t6, %lo(D_800FDDE4)($at)
/* 0501BC 8005060C 3C0FA460 */  lui         $t7, %hi(D_A4600014)
/* 0501C0 80050610 8DF80014 */  lw          $t8, %lo(D_A4600014)($t7)
/* 0501C4 80050614 3C018010 */  lui         $at, %hi(D_800FDDE4 + 0x1)
/* 0501C8 80050618 3C19A460 */  lui         $t9, %hi(D_A4600018)
/* 0501CC 8005061C A038DDE5 */  sb          $t8, %lo(D_800FDDE4 + 0x1)($at)
/* 0501D0 80050620 8F280018 */  lw          $t0, %lo(D_A4600018)($t9)
/* 0501D4 80050624 3C018010 */  lui         $at, %hi(D_800FDDE8)
/* 0501D8 80050628 3C09A460 */  lui         $t1, %hi(D_A460001C)
/* 0501DC 8005062C A028DDE8 */  sb          $t0, %lo(D_800FDDE8)($at)
/* 0501E0 80050630 8D2A001C */  lw          $t2, %lo(D_A460001C)($t1)
/* 0501E4 80050634 3C018010 */  lui         $at, %hi(D_800FDDE4 + 0x2)
/* 0501E8 80050638 3C0BA460 */  lui         $t3, %hi(D_A4600020)
/* 0501EC 8005063C A02ADDE6 */  sb          $t2, %lo(D_800FDDE4 + 0x2)($at)
/* 0501F0 80050640 8D6C0020 */  lw          $t4, %lo(D_A4600020)($t3)
/* 0501F4 80050644 3C018010 */  lui         $at, %hi(D_800FDDE4 + 0x3)
/* 0501F8 80050648 240D0007 */  addiu       $t5, $zero, 0x7
/* 0501FC 8005064C A02CDDE7 */  sb          $t4, %lo(D_800FDDE4 + 0x3)($at)
/* 050200 80050650 3C018010 */  lui         $at, %hi(D_800FDE5C)
/* 050204 80050654 A02DDE5C */  sb          $t5, %lo(D_800FDE5C)($at)
/* 050208 80050658 3C0EA460 */  lui         $t6, %hi(D_A4600024)
/* 05020C 8005065C 8DCF0024 */  lw          $t7, %lo(D_A4600024)($t6)
/* 050210 80050660 3C018010 */  lui         $at, %hi(D_800FDE5C + 0x1)
/* 050214 80050664 3C18A460 */  lui         $t8, %hi(D_A4600028)
/* 050218 80050668 A02FDE5D */  sb          $t7, %lo(D_800FDE5C + 0x1)($at)
/* 05021C 8005066C 8F190028 */  lw          $t9, %lo(D_A4600028)($t8)
/* 050220 80050670 3C018010 */  lui         $at, %hi(D_800FDE60)
/* 050224 80050674 3C08A460 */  lui         $t0, %hi(D_A460002C)
/* 050228 80050678 A039DE60 */  sb          $t9, %lo(D_800FDE60)($at)
/* 05022C 8005067C 8D09002C */  lw          $t1, %lo(D_A460002C)($t0)
/* 050230 80050680 3C018010 */  lui         $at, %hi(D_800FDE5C + 0x2)
/* 050234 80050684 3C0AA460 */  lui         $t2, %hi(D_A4600030)
/* 050238 80050688 A029DE5E */  sb          $t1, %lo(D_800FDE5C + 0x2)($at)
/* 05023C 8005068C 8D4B0030 */  lw          $t3, %lo(D_A4600030)($t2)
/* 050240 80050690 3C018010 */  lui         $at, %hi(D_800FDE5C + 0x3)
/* 050244 80050694 03E00008 */  jr          $ra
/* 050248 80050698 A02BDE5F */   sb         $t3, %lo(D_800FDE5C + 0x3)($at)

glabel func_8005069C # 1
/* 05024C 8005069C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 050250 800506A0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 050254 800506A4 240E0001 */  addiu       $t6, $zero, 0x1
/* 050258 800506A8 3C018010 */  lui         $at, %hi(D_800FDB80)
/* 05025C 800506AC AFB00018 */  sw          $s0, 0x18($sp)
/* 050260 800506B0 0C015D4C */  jal         __osGetSR
/* 050264 800506B4 AC2EDB80 */   sw         $t6, %lo(D_800FDB80)($at)
/* 050268 800506B8 00408025 */  move        $s0, $v0
/* 05026C 800506BC 3C012000 */  lui         $at, 0x2000
/* 050270 800506C0 0C015D48 */  jal         __osSetSR
/* 050274 800506C4 02012025 */   or         $a0, $s0, $at
/* 050278 800506C8 3C040100 */  lui         $a0, 0x100
/* 05027C 800506CC 0C015D50 */  jal         __osSetFpcCsr
/* 050280 800506D0 34840800 */   ori        $a0, $a0, 0x800
/* 050284 800506D4 0C015D54 */  jal         __osGetWatchLo
/* 050288 800506D8 3C040490 */   lui        $a0, 0x490
/* 05028C 800506DC 3C041FC0 */  lui         $a0, 0x1fc0
/* 050290 800506E0 348407FC */  ori         $a0, $a0, 0x7fc
/* 050294 800506E4 0C015D58 */  jal         func_80057560
/* 050298 800506E8 27A5002C */   addiu      $a1, $sp, 0x2c
/* 05029C 800506EC 10400007 */  beq         $v0, $zero, .L8005070C
/* 0502A0 800506F0 00000000 */   nop
.L800506F4:
/* 0502A4 800506F4 3C041FC0 */  lui         $a0, 0x1fc0
/* 0502A8 800506F8 348407FC */  ori         $a0, $a0, 0x7fc
/* 0502AC 800506FC 0C015D58 */  jal         func_80057560
/* 0502B0 80050700 27A5002C */   addiu      $a1, $sp, 0x2c
/* 0502B4 80050704 1440FFFB */  bne         $v0, $zero, .L800506F4
/* 0502B8 80050708 00000000 */   nop
.L8005070C:
/* 0502BC 8005070C 8FA5002C */  lw          $a1, 0x2c($sp)
/* 0502C0 80050710 3C041FC0 */  lui         $a0, 0x1fc0
/* 0502C4 80050714 348407FC */  ori         $a0, $a0, 0x7fc
/* 0502C8 80050718 34AF0008 */  ori         $t7, $a1, 0x8
/* 0502CC 8005071C 0C015D6C */  jal         func_800575B0
/* 0502D0 80050720 01E02825 */   move       $a1, $t7
/* 0502D4 80050724 10400009 */  beq         $v0, $zero, .L8005074C
/* 0502D8 80050728 00000000 */   nop
.L8005072C:
/* 0502DC 8005072C 8FA5002C */  lw          $a1, 0x2c($sp)
/* 0502E0 80050730 3C041FC0 */  lui         $a0, 0x1fc0
/* 0502E4 80050734 348407FC */  ori         $a0, $a0, 0x7fc
/* 0502E8 80050738 34B80008 */  ori         $t8, $a1, 0x8
/* 0502EC 8005073C 0C015D6C */  jal         func_800575B0
/* 0502F0 80050740 03002825 */   move       $a1, $t8
/* 0502F4 80050744 1440FFF9 */  bne         $v0, $zero, .L8005072C
/* 0502F8 80050748 00000000 */   nop
.L8005074C:
/* 0502FC 8005074C 3C088005 */  lui         $t0, %hi(D_80057600)
/* 050300 80050750 25087600 */  addiu       $t0, $t0, %lo(D_80057600)
/* 050304 80050754 8D010000 */  lw          $at, 0x0($t0)
/* 050308 80050758 3C198000 */  lui         $t9, %hi(D_8000000C)
/* 05030C 8005075C 3C0D8005 */  lui         $t5, %hi(D_80057600)
/* 050310 80050760 AF210000 */  sw          $at, %lo(D_80000000)($t9)
/* 050314 80050764 8D0B0004 */  lw          $t3, 0x4($t0)
/* 050318 80050768 25AD7600 */  addiu       $t5, $t5, %lo(D_80057600)
/* 05031C 8005076C 3C0C8000 */  lui         $t4, 0x8000
/* 050320 80050770 AF2B0004 */  sw          $t3, %lo(D_80000004)($t9)
/* 050324 80050774 8D010008 */  lw          $at, 0x8($t0)
/* 050328 80050778 358C0080 */  ori         $t4, $t4, 0x80
/* 05032C 8005077C 3C098005 */  lui         $t1, %hi(D_80057600)
/* 050330 80050780 AF210008 */  sw          $at, %lo(D_80000008)($t9)
/* 050334 80050784 8D0B000C */  lw          $t3, 0xc($t0)
/* 050338 80050788 25297600 */  addiu       $t1, $t1, %lo(D_80057600)
/* 05033C 8005078C 3C0A8000 */  lui         $t2, 0x8000
/* 050340 80050790 AF2B000C */  sw          $t3, %lo(D_8000000C)($t9)
/* 050344 80050794 8DA10000 */  lw          $at, 0x0($t5)
/* 050348 80050798 354A0100 */  ori         $t2, $t2, 0x100
/* 05034C 8005079C 3C0E8005 */  lui         $t6, %hi(D_80057600)
/* 050350 800507A0 AD810000 */  sw          $at, 0x0($t4)
/* 050354 800507A4 8DB80004 */  lw          $t8, 0x4($t5)
/* 050358 800507A8 25CE7600 */  addiu       $t6, $t6, %lo(D_80057600)
/* 05035C 800507AC 3C0F8000 */  lui         $t7, 0x8000
/* 050360 800507B0 AD980004 */  sw          $t8, 0x4($t4)
/* 050364 800507B4 8DA10008 */  lw          $at, 0x8($t5)
/* 050368 800507B8 35EF0180 */  ori         $t7, $t7, 0x180
/* 05036C 800507BC 3C048000 */  lui         $a0, 0x8000
/* 050370 800507C0 AD810008 */  sw          $at, 0x8($t4)
/* 050374 800507C4 8DB8000C */  lw          $t8, 0xc($t5)
/* 050378 800507C8 24050190 */  addiu       $a1, $zero, 0x190
/* 05037C 800507CC AD98000C */  sw          $t8, 0xc($t4)
/* 050380 800507D0 8D210000 */  lw          $at, 0x0($t1)
/* 050384 800507D4 AD410000 */  sw          $at, 0x0($t2)
/* 050388 800507D8 8D2B0004 */  lw          $t3, 0x4($t1)
/* 05038C 800507DC AD4B0004 */  sw          $t3, 0x4($t2)
/* 050390 800507E0 8D210008 */  lw          $at, 0x8($t1)
/* 050394 800507E4 AD410008 */  sw          $at, 0x8($t2)
/* 050398 800507E8 8D2B000C */  lw          $t3, 0xc($t1)
/* 05039C 800507EC AD4B000C */  sw          $t3, 0xc($t2)
/* 0503A0 800507F0 8DC10000 */  lw          $at, 0x0($t6)
/* 0503A4 800507F4 ADE10000 */  sw          $at, 0x0($t7)
/* 0503A8 800507F8 8DD80004 */  lw          $t8, 0x4($t6)
/* 0503AC 800507FC ADF80004 */  sw          $t8, 0x4($t7)
/* 0503B0 80050800 8DC10008 */  lw          $at, 0x8($t6)
/* 0503B4 80050804 ADE10008 */  sw          $at, 0x8($t7)
/* 0503B8 80050808 8DD8000C */  lw          $t8, 0xc($t6)
/* 0503BC 8005080C 0C0151DC */  jal         osWriteBackDCache
/* 0503C0 80050810 ADF8000C */   sw         $t8, 0xc($t7)
/* 0503C4 80050814 3C048000 */  lui         $a0, 0x8000
/* 0503C8 80050818 0C014E18 */  jal         osInvalICache
/* 0503CC 8005081C 24050190 */   addiu      $a1, $zero, 0x190
/* 0503D0 80050820 0C014180 */  jal         __createSpeedParam
/* 0503D4 80050824 00000000 */   nop
/* 0503D8 80050828 0C015FCC */  jal         func_80057F30
/* 0503DC 8005082C 00000000 */   nop
/* 0503E0 80050830 0C015FE0 */  jal         osMapTLBRdb
/* 0503E4 80050834 00000000 */   nop
/* 0503E8 80050838 3C04800A */  lui         $a0, %hi(D_8009DC70)
/* 0503EC 8005083C 3C05800A */  lui         $a1, %hi(D_8009DC74)
/* 0503F0 80050840 8CA5DC74 */  lw          $a1, %lo(D_8009DC74)($a1)
/* 0503F4 80050844 8C84DC70 */  lw          $a0, %lo(D_8009DC70)($a0)
/* 0503F8 80050848 24060000 */  addiu       $a2, $zero, 0x0
/* 0503FC 8005084C 0C01492E */  jal         func_800524B8
/* 050400 80050850 24070003 */   addiu      $a3, $zero, 0x3
/* 050404 80050854 AFA20020 */  sw          $v0, 0x20($sp)
/* 050408 80050858 AFA30024 */  sw          $v1, 0x24($sp)
/* 05040C 8005085C 8FA50024 */  lw          $a1, 0x24($sp)
/* 050410 80050860 8FA40020 */  lw          $a0, 0x20($sp)
/* 050414 80050864 24060000 */  addiu       $a2, $zero, 0x0
/* 050418 80050868 0C0148EE */  jal         func_800523B8
/* 05041C 8005086C 24070004 */   addiu      $a3, $zero, 0x4
/* 050420 80050870 3C088000 */  lui         $t0, %hi(D_8000030C)
/* 050424 80050874 8D08030C */  lw          $t0, %lo(D_8000030C)($t0)
/* 050428 80050878 3C01800A */  lui         $at, %hi(D_8009DC74)
/* 05042C 8005087C AC22DC70 */  sw          $v0, %lo(D_8009DC70)($at)
/* 050430 80050880 15000005 */  bne         $t0, $zero, .L80050898
/* 050434 80050884 AC23DC74 */   sw         $v1, %lo(D_8009DC74)($at)
/* 050438 80050888 3C048000 */  lui         $a0, %hi(D_8000031C)
/* 05043C 8005088C 2484031C */  addiu       $a0, $a0, %lo(D_8000031C)
/* 050440 80050890 0C014388 */  jal         bzero
/* 050444 80050894 24050040 */   addiu      $a1, $zero, 0x40
.L80050898:
/* 050448 80050898 3C198000 */  lui         $t9, %hi(D_80000300)
/* 05044C 8005089C 8F390300 */  lw          $t9, %lo(D_80000300)($t9)
/* 050450 800508A0 17200006 */  bne         $t9, $zero, .L800508BC
/* 050454 800508A4 00000000 */   nop
/* 050458 800508A8 3C0A02F5 */  lui         $t2, 0x2f5
/* 05045C 800508AC 354AB2D2 */  ori         $t2, $t2, 0xb2d2
/* 050460 800508B0 3C01800A */  lui         $at, %hi(D_8009DC78)
/* 050464 800508B4 1000000F */  b           .L800508F4
/* 050468 800508B8 AC2ADC78 */   sw         $t2, %lo(D_8009DC78)($at)
.L800508BC:
/* 05046C 800508BC 3C098000 */  lui         $t1, %hi(D_80000300)
/* 050470 800508C0 8D290300 */  lw          $t1, %lo(D_80000300)($t1)
/* 050474 800508C4 24010002 */  addiu       $at, $zero, 0x2
/* 050478 800508C8 15210006 */  bne         $t1, $at, .L800508E4
/* 05047C 800508CC 00000000 */   nop
/* 050480 800508D0 3C0B02E6 */  lui         $t3, 0x2e6
/* 050484 800508D4 356B025C */  ori         $t3, $t3, 0x25c
/* 050488 800508D8 3C01800A */  lui         $at, %hi(D_8009DC78)
/* 05048C 800508DC 10000005 */  b           .L800508F4
/* 050490 800508E0 AC2BDC78 */   sw         $t3, %lo(D_8009DC78)($at)
.L800508E4:
/* 050494 800508E4 3C0D02E6 */  lui         $t5, 0x2e6
/* 050498 800508E8 35ADD354 */  ori         $t5, $t5, 0xd354
/* 05049C 800508EC 3C01800A */  lui         $at, %hi(D_8009DC78)
/* 0504A0 800508F0 AC2DDC78 */  sw          $t5, %lo(D_8009DC78)($at)
.L800508F4:
/* 0504A4 800508F4 0C015FF8 */  jal         __osGetCause
/* 0504A8 800508F8 00000000 */   nop
/* 0504AC 800508FC 304C1000 */  andi        $t4, $v0, 0x1000
/* 0504B0 80050900 11800003 */  beq         $t4, $zero, .L80050910
/* 0504B4 80050904 00000000 */   nop
.L80050908:
/* 0504B8 80050908 1000FFFF */  b           .L80050908
/* 0504BC 8005090C 00000000 */   nop
.L80050910:
/* 0504C0 80050910 240F0001 */  addiu       $t7, $zero, 0x1
/* 0504C4 80050914 3C0EA450 */  lui         $t6, %hi(D_A4500008)
/* 0504C8 80050918 ADCF0008 */  sw          $t7, %lo(D_A4500008)($t6)
/* 0504CC 8005091C 24183FFF */  addiu       $t8, $zero, 0x3fff
/* 0504D0 80050920 3C08A450 */  lui         $t0, %hi(D_A4500010)
/* 0504D4 80050924 AD180010 */  sw          $t8, %lo(D_A4500010)($t0)
/* 0504D8 80050928 2419000F */  addiu       $t9, $zero, 0xf
/* 0504DC 8005092C 3C0AA450 */  lui         $t2, %hi(D_A4500014)
/* 0504E0 80050930 AD590014 */  sw          $t9, %lo(D_A4500014)($t2)
/* 0504E4 80050934 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0504E8 80050938 8FB00018 */  lw          $s0, 0x18($sp)
/* 0504EC 8005093C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0504F0 80050940 03E00008 */  jr          $ra
/* 0504F4 80050944 00000000 */   nop

glabel __osInitialize_autodetect # 2
/* 0504F8 80050948 03E00008 */  jr          $ra
/* 0504FC 8005094C 00000000 */   nop

glabel func_80050950 # 3
/* 050500 80050950 3C05800A */  lui         $a1, %hi(D_8009DC78)
/* 050504 80050954 24A5DC78 */  addiu       $a1, $a1, %lo(D_8009DC78)
/* 050508 80050958 8CAE0000 */  lw          $t6, 0x0($a1)
/* 05050C 8005095C 44844000 */  mtc1        $a0, $f8
/* 050510 80050960 3C014F80 */  lui         $at, 0x4f80
/* 050514 80050964 448E2000 */  mtc1        $t6, $f4
/* 050518 80050968 468042A0 */  cvt.s.w     $f10, $f8
/* 05051C 8005096C 04810004 */  bgez        $a0, .L80050980
/* 050520 80050970 468021A0 */   cvt.s.w    $f6, $f4
/* 050524 80050974 44818000 */  mtc1        $at, $f16
/* 050528 80050978 00000000 */  nop
/* 05052C 8005097C 46105280 */  add.s       $f10, $f10, $f16
.L80050980:
/* 050530 80050980 460A3483 */  div.s       $f18, $f6, $f10
/* 050534 80050984 3C013F00 */  lui         $at, 0x3f00
/* 050538 80050988 44812000 */  mtc1        $at, $f4
/* 05053C 8005098C 24030001 */  addiu       $v1, $zero, 0x1
/* 050540 80050990 3C014F00 */  lui         $at, 0x4f00
/* 050544 80050994 3C08A450 */  lui         $t0, %hi(D_A4500010)
/* 050548 80050998 3C0AA450 */  lui         $t2, %hi(D_A4500014)
/* 05054C 8005099C 46049000 */  add.s       $f0, $f18, $f4
/* 050550 800509A0 444FF800 */  cfc1        $t7, $f31
/* 050554 800509A4 44C3F800 */  ctc1        $v1, $f31
/* 050558 800509A8 00000000 */  nop
/* 05055C 800509AC 46000224 */  cvt.w.s     $f8, $f0
/* 050560 800509B0 4443F800 */  cfc1        $v1, $f31
/* 050564 800509B4 00000000 */  nop
/* 050568 800509B8 30630078 */  andi        $v1, $v1, 0x78
/* 05056C 800509BC 50600013 */  beql        $v1, $zero, .L80050A0C
/* 050570 800509C0 44034000 */   mfc1       $v1, $f8
/* 050574 800509C4 44814000 */  mtc1        $at, $f8
/* 050578 800509C8 24030001 */  addiu       $v1, $zero, 0x1
/* 05057C 800509CC 46080201 */  sub.s       $f8, $f0, $f8
/* 050580 800509D0 44C3F800 */  ctc1        $v1, $f31
/* 050584 800509D4 00000000 */  nop
/* 050588 800509D8 46004224 */  cvt.w.s     $f8, $f8
/* 05058C 800509DC 4443F800 */  cfc1        $v1, $f31
/* 050590 800509E0 00000000 */  nop
/* 050594 800509E4 30630078 */  andi        $v1, $v1, 0x78
/* 050598 800509E8 14600005 */  bne         $v1, $zero, .L80050A00
/* 05059C 800509EC 00000000 */   nop
/* 0505A0 800509F0 44034000 */  mfc1        $v1, $f8
/* 0505A4 800509F4 3C018000 */  lui         $at, 0x8000
/* 0505A8 800509F8 10000007 */  b           .L80050A18
/* 0505AC 800509FC 00611825 */   or         $v1, $v1, $at
.L80050A00:
/* 0505B0 80050A00 10000005 */  b           .L80050A18
/* 0505B4 80050A04 2403FFFF */   addiu      $v1, $zero, -0x1
/* 0505B8 80050A08 44034000 */  mfc1        $v1, $f8
.L80050A0C:
/* 0505BC 80050A0C 00000000 */  nop
/* 0505C0 80050A10 0460FFFB */  bltz        $v1, .L80050A00
/* 0505C4 80050A14 00000000 */   nop
.L80050A18:
/* 0505C8 80050A18 44CFF800 */  ctc1        $t7, $f31
/* 0505CC 80050A1C 2C610084 */  sltiu       $at, $v1, 0x84
/* 0505D0 80050A20 10200003 */  beq         $at, $zero, .L80050A30
/* 0505D4 80050A24 2479FFFF */   addiu      $t9, $v1, -0x1
/* 0505D8 80050A28 03E00008 */  jr          $ra
/* 0505DC 80050A2C 2402FFFF */   addiu      $v0, $zero, -0x1
.L80050A30:
/* 0505E0 80050A30 24010042 */  addiu       $at, $zero, 0x42
/* 0505E4 80050A34 0061001B */  divu        $zero, $v1, $at
/* 0505E8 80050A38 00001012 */  mflo        $v0
/* 0505EC 80050A3C 305800FF */  andi        $t8, $v0, 0xff
/* 0505F0 80050A40 2B010011 */  slti        $at, $t8, 0x11
/* 0505F4 80050A44 14200002 */  bne         $at, $zero, .L80050A50
/* 0505F8 80050A48 304400FF */   andi       $a0, $v0, 0xff
/* 0505FC 80050A4C 24040010 */  addiu       $a0, $zero, 0x10
.L80050A50:
/* 050600 80050A50 AD190010 */  sw          $t9, %lo(D_A4500010)($t0)
/* 050604 80050A54 2489FFFF */  addiu       $t1, $a0, -0x1
/* 050608 80050A58 AD490014 */  sw          $t1, %lo(D_A4500014)($t2)
/* 05060C 80050A5C 8CAB0000 */  lw          $t3, 0x0($a1)
/* 050610 80050A60 0163001A */  div         $zero, $t3, $v1
/* 050614 80050A64 00001012 */  mflo        $v0
/* 050618 80050A68 14600002 */  bne         $v1, $zero, .L80050A74
/* 05061C 80050A6C 00000000 */   nop
/* 050620 80050A70 0007000D */  break       7
.L80050A74:
/* 050624 80050A74 2401FFFF */  addiu       $at, $zero, -0x1
/* 050628 80050A78 14610004 */  bne         $v1, $at, .L80050A8C
/* 05062C 80050A7C 3C018000 */   lui        $at, 0x8000
/* 050630 80050A80 15610002 */  bne         $t3, $at, .L80050A8C
/* 050634 80050A84 00000000 */   nop
/* 050638 80050A88 0006000D */  break       6
.L80050A8C:
/* 05063C 80050A8C 03E00008 */  jr          $ra
/* 050640 80050A90 00000000 */   nop
/* 050644 80050A94 00000000 */  nop
/* 050648 80050A98 00000000 */  nop
/* 05064C 80050A9C 00000000 */  nop
