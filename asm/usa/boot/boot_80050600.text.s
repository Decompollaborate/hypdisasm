.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __createSpeedParam # 0
/* 000000 80050600 240E0007 */  addiu       $t6, $zero, 0x7
/* 000004 80050604 3C018010 */  lui         $at, %hi(D_800FDDE4)
/* 000008 80050608 A02EDDE4 */  sb          $t6, %lo(D_800FDDE4)($at)
/* 00000C 8005060C 3C0FA460 */  lui         $t7, %hi(D_A4600014)
/* 000010 80050610 8DF80014 */  lw          $t8, %lo(D_A4600014)($t7)
/* 000014 80050614 3C018010 */  lui         $at, %hi(D_800FDDE5)
/* 000018 80050618 3C19A460 */  lui         $t9, %hi(D_A4600018)
/* 00001C 8005061C A038DDE5 */  sb          $t8, %lo(D_800FDDE5)($at)
/* 000020 80050620 8F280018 */  lw          $t0, %lo(D_A4600018)($t9)
/* 000024 80050624 3C018010 */  lui         $at, %hi(D_800FDDE8)
/* 000028 80050628 3C09A460 */  lui         $t1, %hi(D_A460001C)
/* 00002C 8005062C A028DDE8 */  sb          $t0, %lo(D_800FDDE8)($at)
/* 000030 80050630 8D2A001C */  lw          $t2, %lo(D_A460001C)($t1)
/* 000034 80050634 3C018010 */  lui         $at, %hi(D_800FDDE6)
/* 000038 80050638 3C0BA460 */  lui         $t3, %hi(D_A4600020)
/* 00003C 8005063C A02ADDE6 */  sb          $t2, %lo(D_800FDDE6)($at)
/* 000040 80050640 8D6C0020 */  lw          $t4, %lo(D_A4600020)($t3)
/* 000044 80050644 3C018010 */  lui         $at, %hi(D_800FDDE7)
/* 000048 80050648 240D0007 */  addiu       $t5, $zero, 0x7
/* 00004C 8005064C A02CDDE7 */  sb          $t4, %lo(D_800FDDE7)($at)
/* 000050 80050650 3C018010 */  lui         $at, %hi(D_800FDE5C)
/* 000054 80050654 A02DDE5C */  sb          $t5, %lo(D_800FDE5C)($at)
/* 000058 80050658 3C0EA460 */  lui         $t6, %hi(D_A4600024)
/* 00005C 8005065C 8DCF0024 */  lw          $t7, %lo(D_A4600024)($t6)
/* 000060 80050660 3C018010 */  lui         $at, %hi(D_800FDE5D)
/* 000064 80050664 3C18A460 */  lui         $t8, %hi(D_A4600028)
/* 000068 80050668 A02FDE5D */  sb          $t7, %lo(D_800FDE5D)($at)
/* 00006C 8005066C 8F190028 */  lw          $t9, %lo(D_A4600028)($t8)
/* 000070 80050670 3C018010 */  lui         $at, %hi(D_800FDE60)
/* 000074 80050674 3C08A460 */  lui         $t0, %hi(D_A460002C)
/* 000078 80050678 A039DE60 */  sb          $t9, %lo(D_800FDE60)($at)
/* 00007C 8005067C 8D09002C */  lw          $t1, %lo(D_A460002C)($t0)
/* 000080 80050680 3C018010 */  lui         $at, %hi(D_800FDE5E)
/* 000084 80050684 3C0AA460 */  lui         $t2, %hi(D_A4600030)
/* 000088 80050688 A029DE5E */  sb          $t1, %lo(D_800FDE5E)($at)
/* 00008C 8005068C 8D4B0030 */  lw          $t3, %lo(D_A4600030)($t2)
/* 000090 80050690 3C018010 */  lui         $at, %hi(D_800FDE5F)
/* 000094 80050694 03E00008 */  jr          $ra
/* 000098 80050698 A02BDE5F */   sb         $t3, %lo(D_800FDE5F)($at)

glabel func_8005069C # 1
/* 00009C 8005069C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0000A0 800506A0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0000A4 800506A4 240E0001 */  addiu       $t6, $zero, 0x1
/* 0000A8 800506A8 3C018010 */  lui         $at, 0x8010
/* 0000AC 800506AC AFB00018 */  sw          $s0, 0x18($sp)
/* 0000B0 800506B0 0C015D4C */  jal         func_80057530
/* 0000B4 800506B4 AC2EDB80 */   sw         $t6, -0x2480($at)
/* 0000B8 800506B8 00408025 */  move        $s0, $v0
/* 0000BC 800506BC 3C012000 */  lui         $at, 0x2000
/* 0000C0 800506C0 0C015D48 */  jal         func_80057520
/* 0000C4 800506C4 02012025 */   or         $a0, $s0, $at
/* 0000C8 800506C8 3C040100 */  lui         $a0, 0x100
/* 0000CC 800506CC 0C015D50 */  jal         func_80057540
/* 0000D0 800506D0 34840800 */   ori        $a0, $a0, 0x800
/* 0000D4 800506D4 0C015D54 */  jal         func_80057550
/* 0000D8 800506D8 3C040490 */   lui        $a0, 0x490
/* 0000DC 800506DC 3C041FC0 */  lui         $a0, 0x1fc0
/* 0000E0 800506E0 348407FC */  ori         $a0, $a0, 0x7fc
/* 0000E4 800506E4 0C015D58 */  jal         func_80057560
/* 0000E8 800506E8 27A5002C */   addiu      $a1, $sp, 0x2c
/* 0000EC 800506EC 10400007 */  beq         $v0, $zero, .L8005070C
/* 0000F0 800506F0 00000000 */   nop
.L800506F4:
/* 0000F4 800506F4 3C041FC0 */  lui         $a0, 0x1fc0
/* 0000F8 800506F8 348407FC */  ori         $a0, $a0, 0x7fc
/* 0000FC 800506FC 0C015D58 */  jal         func_80057560
/* 000100 80050700 27A5002C */   addiu      $a1, $sp, 0x2c
/* 000104 80050704 1440FFFB */  bne         $v0, $zero, .L800506F4
/* 000108 80050708 00000000 */   nop
.L8005070C:
/* 00010C 8005070C 8FA5002C */  lw          $a1, 0x2c($sp)
/* 000110 80050710 3C041FC0 */  lui         $a0, 0x1fc0
/* 000114 80050714 348407FC */  ori         $a0, $a0, 0x7fc
/* 000118 80050718 34AF0008 */  ori         $t7, $a1, 0x8
/* 00011C 8005071C 0C015D6C */  jal         func_800575B0
/* 000120 80050720 01E02825 */   move       $a1, $t7
/* 000124 80050724 10400009 */  beq         $v0, $zero, .L8005074C
/* 000128 80050728 00000000 */   nop
.L8005072C:
/* 00012C 8005072C 8FA5002C */  lw          $a1, 0x2c($sp)
/* 000130 80050730 3C041FC0 */  lui         $a0, 0x1fc0
/* 000134 80050734 348407FC */  ori         $a0, $a0, 0x7fc
/* 000138 80050738 34B80008 */  ori         $t8, $a1, 0x8
/* 00013C 8005073C 0C015D6C */  jal         func_800575B0
/* 000140 80050740 03002825 */   move       $a1, $t8
/* 000144 80050744 1440FFF9 */  bne         $v0, $zero, .L8005072C
/* 000148 80050748 00000000 */   nop
.L8005074C:
/* 00014C 8005074C 3C088005 */  lui         $t0, %hi(D_80057600)
/* 000150 80050750 25087600 */  addiu       $t0, $t0, %lo(D_80057600)
/* 000154 80050754 8D010000 */  lw          $at, 0x0($t0)
/* 000158 80050758 3C198000 */  lui         $t9, %hi(D_8000000C)
/* 00015C 8005075C 3C0D8005 */  lui         $t5, %hi(D_80057600)
/* 000160 80050760 AF210000 */  sw          $at, %lo(D_80000000)($t9)
/* 000164 80050764 8D0B0004 */  lw          $t3, 0x4($t0)
/* 000168 80050768 25AD7600 */  addiu       $t5, $t5, %lo(D_80057600)
/* 00016C 8005076C 3C0C8000 */  lui         $t4, 0x8000
/* 000170 80050770 AF2B0004 */  sw          $t3, %lo(D_80000004)($t9)
/* 000174 80050774 8D010008 */  lw          $at, 0x8($t0)
/* 000178 80050778 358C0080 */  ori         $t4, $t4, 0x80
/* 00017C 8005077C 3C098005 */  lui         $t1, %hi(D_80057600)
/* 000180 80050780 AF210008 */  sw          $at, %lo(D_80000008)($t9)
/* 000184 80050784 8D0B000C */  lw          $t3, 0xc($t0)
/* 000188 80050788 25297600 */  addiu       $t1, $t1, %lo(D_80057600)
/* 00018C 8005078C 3C0A8000 */  lui         $t2, 0x8000
/* 000190 80050790 AF2B000C */  sw          $t3, %lo(D_8000000C)($t9)
/* 000194 80050794 8DA10000 */  lw          $at, 0x0($t5)
/* 000198 80050798 354A0100 */  ori         $t2, $t2, 0x100
/* 00019C 8005079C 3C0E8005 */  lui         $t6, %hi(D_80057600)
/* 0001A0 800507A0 AD810000 */  sw          $at, 0x0($t4)
/* 0001A4 800507A4 8DB80004 */  lw          $t8, 0x4($t5)
/* 0001A8 800507A8 25CE7600 */  addiu       $t6, $t6, %lo(D_80057600)
/* 0001AC 800507AC 3C0F8000 */  lui         $t7, 0x8000
/* 0001B0 800507B0 AD980004 */  sw          $t8, 0x4($t4)
/* 0001B4 800507B4 8DA10008 */  lw          $at, 0x8($t5)
/* 0001B8 800507B8 35EF0180 */  ori         $t7, $t7, 0x180
/* 0001BC 800507BC 3C048000 */  lui         $a0, 0x8000
/* 0001C0 800507C0 AD810008 */  sw          $at, 0x8($t4)
/* 0001C4 800507C4 8DB8000C */  lw          $t8, 0xc($t5)
/* 0001C8 800507C8 24050190 */  addiu       $a1, $zero, 0x190
/* 0001CC 800507CC AD98000C */  sw          $t8, 0xc($t4)
/* 0001D0 800507D0 8D210000 */  lw          $at, 0x0($t1)
/* 0001D4 800507D4 AD410000 */  sw          $at, 0x0($t2)
/* 0001D8 800507D8 8D2B0004 */  lw          $t3, 0x4($t1)
/* 0001DC 800507DC AD4B0004 */  sw          $t3, 0x4($t2)
/* 0001E0 800507E0 8D210008 */  lw          $at, 0x8($t1)
/* 0001E4 800507E4 AD410008 */  sw          $at, 0x8($t2)
/* 0001E8 800507E8 8D2B000C */  lw          $t3, 0xc($t1)
/* 0001EC 800507EC AD4B000C */  sw          $t3, 0xc($t2)
/* 0001F0 800507F0 8DC10000 */  lw          $at, 0x0($t6)
/* 0001F4 800507F4 ADE10000 */  sw          $at, 0x0($t7)
/* 0001F8 800507F8 8DD80004 */  lw          $t8, 0x4($t6)
/* 0001FC 800507FC ADF80004 */  sw          $t8, 0x4($t7)
/* 000200 80050800 8DC10008 */  lw          $at, 0x8($t6)
/* 000204 80050804 ADE10008 */  sw          $at, 0x8($t7)
/* 000208 80050808 8DD8000C */  lw          $t8, 0xc($t6)
/* 00020C 8005080C 0C0151DC */  jal         func_80054770
/* 000210 80050810 ADF8000C */   sw         $t8, 0xc($t7)
/* 000214 80050814 3C048000 */  lui         $a0, 0x8000
/* 000218 80050818 0C014E18 */  jal         func_80053860
/* 00021C 8005081C 24050190 */   addiu      $a1, $zero, 0x190
/* 000220 80050820 0C014180 */  jal         __createSpeedParam
/* 000224 80050824 00000000 */   nop
/* 000228 80050828 0C015FCC */  jal         func_80057F30
/* 00022C 8005082C 00000000 */   nop
/* 000230 80050830 0C015FE0 */  jal         func_80057F80
/* 000234 80050834 00000000 */   nop
/* 000238 80050838 3C04800A */  lui         $a0, %hi(D_8009DC70)
/* 00023C 8005083C 3C05800A */  lui         $a1, %hi(D_8009DC74)
/* 000240 80050840 8CA5DC74 */  lw          $a1, %lo(D_8009DC74)($a1)
/* 000244 80050844 8C84DC70 */  lw          $a0, %lo(D_8009DC70)($a0)
/* 000248 80050848 24060000 */  addiu       $a2, $zero, 0x0
/* 00024C 8005084C 0C01492E */  jal         func_800524B8
/* 000250 80050850 24070003 */   addiu      $a3, $zero, 0x3
/* 000254 80050854 AFA20020 */  sw          $v0, 0x20($sp)
/* 000258 80050858 AFA30024 */  sw          $v1, 0x24($sp)
/* 00025C 8005085C 8FA50024 */  lw          $a1, 0x24($sp)
/* 000260 80050860 8FA40020 */  lw          $a0, 0x20($sp)
/* 000264 80050864 24060000 */  addiu       $a2, $zero, 0x0
/* 000268 80050868 0C0148EE */  jal         func_800523B8
/* 00026C 8005086C 24070004 */   addiu      $a3, $zero, 0x4
/* 000270 80050870 3C088000 */  lui         $t0, %hi(D_8000030C)
/* 000274 80050874 8D08030C */  lw          $t0, %lo(D_8000030C)($t0)
/* 000278 80050878 3C01800A */  lui         $at, %hi(D_8009DC74)
/* 00027C 8005087C AC22DC70 */  sw          $v0, %lo(D_8009DC70)($at)
/* 000280 80050880 15000005 */  bne         $t0, $zero, .L80050898
/* 000284 80050884 AC23DC74 */   sw         $v1, %lo(D_8009DC74)($at)
/* 000288 80050888 3C048000 */  lui         $a0, %hi(D_8000031C)
/* 00028C 8005088C 2484031C */  addiu       $a0, $a0, %lo(D_8000031C)
/* 000290 80050890 0C014388 */  jal         func_80050E20
/* 000294 80050894 24050040 */   addiu      $a1, $zero, 0x40
.L80050898:
/* 000298 80050898 3C198000 */  lui         $t9, %hi(D_80000300)
/* 00029C 8005089C 8F390300 */  lw          $t9, %lo(D_80000300)($t9)
/* 0002A0 800508A0 17200006 */  bne         $t9, $zero, .L800508BC
/* 0002A4 800508A4 00000000 */   nop
/* 0002A8 800508A8 3C0A02F5 */  lui         $t2, 0x2f5
/* 0002AC 800508AC 354AB2D2 */  ori         $t2, $t2, 0xb2d2
/* 0002B0 800508B0 3C01800A */  lui         $at, %hi(D_8009DC78)
/* 0002B4 800508B4 1000000F */  b           .L800508F4
/* 0002B8 800508B8 AC2ADC78 */   sw         $t2, %lo(D_8009DC78)($at)
.L800508BC:
/* 0002BC 800508BC 3C098000 */  lui         $t1, %hi(D_80000300)
/* 0002C0 800508C0 8D290300 */  lw          $t1, %lo(D_80000300)($t1)
/* 0002C4 800508C4 24010002 */  addiu       $at, $zero, 0x2
/* 0002C8 800508C8 15210006 */  bne         $t1, $at, .L800508E4
/* 0002CC 800508CC 00000000 */   nop
/* 0002D0 800508D0 3C0B02E6 */  lui         $t3, 0x2e6
/* 0002D4 800508D4 356B025C */  ori         $t3, $t3, 0x25c
/* 0002D8 800508D8 3C01800A */  lui         $at, %hi(D_8009DC78)
/* 0002DC 800508DC 10000005 */  b           .L800508F4
/* 0002E0 800508E0 AC2BDC78 */   sw         $t3, %lo(D_8009DC78)($at)
.L800508E4:
/* 0002E4 800508E4 3C0D02E6 */  lui         $t5, 0x2e6
/* 0002E8 800508E8 35ADD354 */  ori         $t5, $t5, 0xd354
/* 0002EC 800508EC 3C01800A */  lui         $at, %hi(D_8009DC78)
/* 0002F0 800508F0 AC2DDC78 */  sw          $t5, %lo(D_8009DC78)($at)
.L800508F4:
/* 0002F4 800508F4 0C015FF8 */  jal         func_80057FE0
/* 0002F8 800508F8 00000000 */   nop
/* 0002FC 800508FC 304C1000 */  andi        $t4, $v0, 0x1000
/* 000300 80050900 11800003 */  beq         $t4, $zero, .L80050910
/* 000304 80050904 00000000 */   nop
.L80050908:
/* 000308 80050908 1000FFFF */  b           .L80050908
/* 00030C 8005090C 00000000 */   nop
.L80050910:
/* 000310 80050910 240F0001 */  addiu       $t7, $zero, 0x1
/* 000314 80050914 3C0EA450 */  lui         $t6, %hi(D_A4500008)
/* 000318 80050918 ADCF0008 */  sw          $t7, %lo(D_A4500008)($t6)
/* 00031C 8005091C 24183FFF */  addiu       $t8, $zero, 0x3fff
/* 000320 80050920 3C08A450 */  lui         $t0, %hi(D_A4500010)
/* 000324 80050924 AD180010 */  sw          $t8, %lo(D_A4500010)($t0)
/* 000328 80050928 2419000F */  addiu       $t9, $zero, 0xf
/* 00032C 8005092C 3C0AA450 */  lui         $t2, %hi(D_A4500014)
/* 000330 80050930 AD590014 */  sw          $t9, %lo(D_A4500014)($t2)
/* 000334 80050934 8FBF001C */  lw          $ra, 0x1c($sp)
/* 000338 80050938 8FB00018 */  lw          $s0, 0x18($sp)
/* 00033C 8005093C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 000340 80050940 03E00008 */  jr          $ra
/* 000344 80050944 00000000 */   nop

glabel __osInitialize_autodetect # 2
/* 000348 80050948 03E00008 */  jr          $ra
/* 00034C 8005094C 00000000 */   nop

glabel func_80050950 # 3
/* 000350 80050950 3C05800A */  lui         $a1, %hi(D_8009DC78)
/* 000354 80050954 24A5DC78 */  addiu       $a1, $a1, %lo(D_8009DC78)
/* 000358 80050958 8CAE0000 */  lw          $t6, 0x0($a1)
/* 00035C 8005095C 44844000 */  mtc1        $a0, $f8
/* 000360 80050960 3C014F80 */  lui         $at, 0x4f80
/* 000364 80050964 448E2000 */  mtc1        $t6, $f4
/* 000368 80050968 468042A0 */  cvt.s.w     $f10, $f8
/* 00036C 8005096C 04810004 */  bgez        $a0, .L80050980
/* 000370 80050970 468021A0 */   cvt.s.w    $f6, $f4
/* 000374 80050974 44818000 */  mtc1        $at, $f16
/* 000378 80050978 00000000 */  nop
/* 00037C 8005097C 46105280 */  add.s       $f10, $f10, $f16
.L80050980:
/* 000380 80050980 460A3483 */  div.s       $f18, $f6, $f10
/* 000384 80050984 3C013F00 */  lui         $at, 0x3f00
/* 000388 80050988 44812000 */  mtc1        $at, $f4
/* 00038C 8005098C 24030001 */  addiu       $v1, $zero, 0x1
/* 000390 80050990 3C014F00 */  lui         $at, 0x4f00
/* 000394 80050994 3C08A450 */  lui         $t0, %hi(D_A4500010)
/* 000398 80050998 3C0AA450 */  lui         $t2, %hi(D_A4500014)
/* 00039C 8005099C 46049000 */  add.s       $f0, $f18, $f4
/* 0003A0 800509A0 444FF800 */  cfc1        $t7, $f31
/* 0003A4 800509A4 44C3F800 */  ctc1        $v1, $f31
/* 0003A8 800509A8 00000000 */  nop
/* 0003AC 800509AC 46000224 */  cvt.w.s     $f8, $f0
/* 0003B0 800509B0 4443F800 */  cfc1        $v1, $f31
/* 0003B4 800509B4 00000000 */  nop
/* 0003B8 800509B8 30630078 */  andi        $v1, $v1, 0x78
/* 0003BC 800509BC 50600013 */  beql        $v1, $zero, .L80050A0C
/* 0003C0 800509C0 44034000 */   mfc1       $v1, $f8
/* 0003C4 800509C4 44814000 */  mtc1        $at, $f8
/* 0003C8 800509C8 24030001 */  addiu       $v1, $zero, 0x1
/* 0003CC 800509CC 46080201 */  sub.s       $f8, $f0, $f8
/* 0003D0 800509D0 44C3F800 */  ctc1        $v1, $f31
/* 0003D4 800509D4 00000000 */  nop
/* 0003D8 800509D8 46004224 */  cvt.w.s     $f8, $f8
/* 0003DC 800509DC 4443F800 */  cfc1        $v1, $f31
/* 0003E0 800509E0 00000000 */  nop
/* 0003E4 800509E4 30630078 */  andi        $v1, $v1, 0x78
/* 0003E8 800509E8 14600005 */  bne         $v1, $zero, .L80050A00
/* 0003EC 800509EC 00000000 */   nop
/* 0003F0 800509F0 44034000 */  mfc1        $v1, $f8
/* 0003F4 800509F4 3C018000 */  lui         $at, 0x8000
/* 0003F8 800509F8 10000007 */  b           .L80050A18
/* 0003FC 800509FC 00611825 */   or         $v1, $v1, $at
.L80050A00:
/* 000400 80050A00 10000005 */  b           .L80050A18
/* 000404 80050A04 2403FFFF */   addiu      $v1, $zero, -0x1
/* 000408 80050A08 44034000 */  mfc1        $v1, $f8
.L80050A0C:
/* 00040C 80050A0C 00000000 */  nop
/* 000410 80050A10 0460FFFB */  bltz        $v1, .L80050A00
/* 000414 80050A14 00000000 */   nop
.L80050A18:
/* 000418 80050A18 44CFF800 */  ctc1        $t7, $f31
/* 00041C 80050A1C 2C610084 */  sltiu       $at, $v1, 0x84
/* 000420 80050A20 10200003 */  beq         $at, $zero, .L80050A30
/* 000424 80050A24 2479FFFF */   addiu      $t9, $v1, -0x1
/* 000428 80050A28 03E00008 */  jr          $ra
/* 00042C 80050A2C 2402FFFF */   addiu      $v0, $zero, -0x1
.L80050A30:
/* 000430 80050A30 24010042 */  addiu       $at, $zero, 0x42
/* 000434 80050A34 0061001B */  divu        $zero, $v1, $at
/* 000438 80050A38 00001012 */  mflo        $v0
/* 00043C 80050A3C 305800FF */  andi        $t8, $v0, 0xff
/* 000440 80050A40 2B010011 */  slti        $at, $t8, 0x11
/* 000444 80050A44 14200002 */  bne         $at, $zero, .L80050A50
/* 000448 80050A48 304400FF */   andi       $a0, $v0, 0xff
/* 00044C 80050A4C 24040010 */  addiu       $a0, $zero, 0x10
.L80050A50:
/* 000450 80050A50 AD190010 */  sw          $t9, %lo(D_A4500010)($t0)
/* 000454 80050A54 2489FFFF */  addiu       $t1, $a0, -0x1
/* 000458 80050A58 AD490014 */  sw          $t1, %lo(D_A4500014)($t2)
/* 00045C 80050A5C 8CAB0000 */  lw          $t3, 0x0($a1)
/* 000460 80050A60 0163001A */  div         $zero, $t3, $v1
/* 000464 80050A64 00001012 */  mflo        $v0
/* 000468 80050A68 14600002 */  bne         $v1, $zero, .L80050A74
/* 00046C 80050A6C 00000000 */   nop
/* 000470 80050A70 0007000D */  break       7
.L80050A74:
/* 000474 80050A74 2401FFFF */  addiu       $at, $zero, -0x1
/* 000478 80050A78 14610004 */  bne         $v1, $at, .L80050A8C
/* 00047C 80050A7C 3C018000 */   lui        $at, 0x8000
/* 000480 80050A80 15610002 */  bne         $t3, $at, .L80050A8C
/* 000484 80050A84 00000000 */   nop
/* 000488 80050A88 0006000D */  break       6
.L80050A8C:
/* 00048C 80050A8C 03E00008 */  jr          $ra
/* 000490 80050A90 00000000 */   nop
/* 000494 80050A94 00000000 */  nop
/* 000498 80050A98 00000000 */  nop
/* 00049C 80050A9C 00000000 */  nop
