.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800051A0 # 0
/* 000000 800051A0 03E00008 */  jr          $ra
/* 000004 800051A4 00000000 */   nop

glabel func_800051A8 # 1
/* 000008 800051A8 240E0001 */  addiu       $t6, $zero, 0x1
/* 00000C 800051AC A08E059C */  sb          $t6, 0x59c($a0)
/* 000010 800051B0 A080059D */  sb          $zero, 0x59d($a0)
/* 000014 800051B4 A080059E */  sb          $zero, 0x59e($a0)
/* 000018 800051B8 AC800458 */  sw          $zero, 0x458($a0)
/* 00001C 800051BC 00801825 */  move        $v1, $a0
/* 000020 800051C0 24040010 */  addiu       $a0, $zero, 0x10
/* 000024 800051C4 00001025 */  move        $v0, $zero
.L800051C8:
/* 000028 800051C8 24420004 */  addiu       $v0, $v0, 0x4
/* 00002C 800051CC AC600560 */  sw          $zero, 0x560($v1)
/* 000030 800051D0 AC600564 */  sw          $zero, 0x564($v1)
/* 000034 800051D4 AC600568 */  sw          $zero, 0x568($v1)
/* 000038 800051D8 24630010 */  addiu       $v1, $v1, 0x10
/* 00003C 800051DC 1444FFFA */  bne         $v0, $a0, .L800051C8
/* 000040 800051E0 AC60054C */   sw         $zero, 0x54c($v1)
/* 000044 800051E4 03E00008 */  jr          $ra
/* 000048 800051E8 00001025 */   move       $v0, $zero

glabel func_800051EC # 2
/* 00004C 800051EC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000050 800051F0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000054 800051F4 0C014CB8 */  jal         func_800532E0
/* 000058 800051F8 AFA40018 */   sw         $a0, 0x18($sp)
/* 00005C 800051FC 8FAF0018 */  lw          $t7, 0x18($sp)
/* 000060 80005200 344E00FF */  ori         $t6, $v0, 0xff
/* 000064 80005204 00001025 */  move        $v0, $zero
/* 000068 80005208 A5EE05A8 */  sh          $t6, 0x5a8($t7)
/* 00006C 8000520C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000070 80005210 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000074 80005214 03E00008 */  jr          $ra
/* 000078 80005218 00000000 */   nop

glabel func_8000521C # 3
/* 00007C 8000521C 340EFFFF */  ori         $t6, $zero, 0xffff
/* 000080 80005220 A48E05A8 */  sh          $t6, 0x5a8($a0)
/* 000084 80005224 03E00008 */  jr          $ra
/* 000088 80005228 00001025 */   move       $v0, $zero

glabel func_8000522C # 4
/* 00008C 8000522C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000090 80005230 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000094 80005234 908E059C */  lbu         $t6, 0x59c($a0)
/* 000098 80005238 00001025 */  move        $v0, $zero
/* 00009C 8000523C 11C0001B */  beq         $t6, $zero, .L800052AC
/* 0000A0 80005240 00000000 */   nop
/* 0000A4 80005244 0C001E02 */  jal         func_80007808
/* 0000A8 80005248 AFA40018 */   sw         $a0, 0x18($sp)
/* 0000AC 8000524C 8FA40018 */  lw          $a0, 0x18($sp)
/* 0000B0 80005250 3C180007 */  lui         $t8, 0x7
/* 0000B4 80005254 3718A120 */  ori         $t8, $t8, 0xa120
/* 0000B8 80005258 A4820444 */  sh          $v0, 0x444($a0)
/* 0000BC 8000525C 848F0444 */  lh          $t7, 0x444($a0)
/* 0000C0 80005260 3C013FF0 */  lui         $at, 0x3ff0
/* 0000C4 80005264 3419FFFF */  ori         $t9, $zero, 0xffff
/* 0000C8 80005268 55E00004 */  bnel        $t7, $zero, .L8000527C
/* 0000CC 8000526C 44812800 */   mtc1       $at, $f5
/* 0000D0 80005270 1000000E */  b           .L800052AC
/* 0000D4 80005274 00001025 */   move       $v0, $zero
/* 0000D8 80005278 44812800 */  mtc1        $at, $f5
.L8000527C:
/* 0000DC 8000527C 44802000 */  mtc1        $zero, $f4
/* 0000E0 80005280 AC980448 */  sw          $t8, 0x448($a0)
/* 0000E4 80005284 A080059F */  sb          $zero, 0x59f($a0)
/* 0000E8 80005288 A49905A8 */  sh          $t9, 0x5a8($a0)
/* 0000EC 8000528C A48005AA */  sh          $zero, 0x5aa($a0)
/* 0000F0 80005290 F4840450 */  sdc1        $f4, 0x450($a0)
/* 0000F4 80005294 0C001468 */  jal         func_800051A0
/* 0000F8 80005298 AFA40018 */   sw         $a0, 0x18($sp)
/* 0000FC 8000529C 8FA40018 */  lw          $a0, 0x18($sp)
/* 000100 800052A0 24020001 */  addiu       $v0, $zero, 0x1
/* 000104 800052A4 10000001 */  b           .L800052AC
/* 000108 800052A8 A080059C */   sb         $zero, 0x59c($a0)
.L800052AC:
/* 00010C 800052AC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000110 800052B0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000114 800052B4 03E00008 */  jr          $ra
/* 000118 800052B8 00000000 */   nop

glabel func_800052BC # 5
/* 00011C 800052BC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000120 800052C0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000124 800052C4 908E059C */  lbu         $t6, 0x59c($a0)
/* 000128 800052C8 00001025 */  move        $v0, $zero
/* 00012C 800052CC 15C0000B */  bne         $t6, $zero, .L800052FC
/* 000130 800052D0 00000000 */   nop
/* 000134 800052D4 24020001 */  addiu       $v0, $zero, 0x1
/* 000138 800052D8 A082059D */  sb          $v0, 0x59d($a0)
/* 00013C 800052DC A082059E */  sb          $v0, 0x59e($a0)
/* 000140 800052E0 0C001468 */  jal         func_800051A0
/* 000144 800052E4 AFA40018 */   sw         $a0, 0x18($sp)
/* 000148 800052E8 8FA40018 */  lw          $a0, 0x18($sp)
/* 00014C 800052EC 240F0001 */  addiu       $t7, $zero, 0x1
/* 000150 800052F0 00001025 */  move        $v0, $zero
/* 000154 800052F4 10000001 */  b           .L800052FC
/* 000158 800052F8 A08F059C */   sb         $t7, 0x59c($a0)
.L800052FC:
/* 00015C 800052FC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000160 80005300 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000164 80005304 03E00008 */  jr          $ra
/* 000168 80005308 00000000 */   nop

glabel func_8000530C # 6
/* 00016C 8000530C 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 000170 80005310 44802800 */  mtc1        $zero, $f5
/* 000174 80005314 44802000 */  mtc1        $zero, $f4
/* 000178 80005318 AFB30020 */  sw          $s3, 0x20($sp)
/* 00017C 8000531C AFB2001C */  sw          $s2, 0x1c($sp)
/* 000180 80005320 AFB10018 */  sw          $s1, 0x18($sp)
/* 000184 80005324 AFB00014 */  sw          $s0, 0x14($sp)
/* 000188 80005328 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00018C 8000532C AFA60068 */  sw          $a2, 0x68($sp)
/* 000190 80005330 00A08025 */  move        $s0, $a1
/* 000194 80005334 00808825 */  move        $s1, $a0
/* 000198 80005338 00E09825 */  move        $s3, $a3
/* 00019C 8000533C 24120010 */  addiu       $s2, $zero, 0x10
/* 0001A0 80005340 F4E40000 */  sdc1        $f4, 0x0($a3)
.L80005344:
/* 0001A4 80005344 922E059E */  lbu         $t6, 0x59e($s1)
.L80005348:
/* 0001A8 80005348 00002025 */  move        $a0, $zero
/* 0001AC 8000534C 02201825 */  move        $v1, $s1
/* 0001B0 80005350 11C00038 */  beq         $t6, $zero, .L80005434
/* 0001B4 80005354 02002825 */   move       $a1, $s0
.L80005358:
/* 0001B8 80005358 8C6F055C */  lw          $t7, 0x55c($v1)
/* 0001BC 8000535C 29E10040 */  slti        $at, $t7, 0x40
/* 0001C0 80005360 5420000A */  bnel        $at, $zero, .L8000538C
/* 0001C4 80005364 8C680560 */   lw         $t0, 0x560($v1)
/* 0001C8 80005368 AC60055C */  sw          $zero, 0x55c($v1)
/* 0001CC 8000536C 349800B0 */  ori         $t8, $a0, 0xb0
/* 0001D0 80005370 24190040 */  addiu       $t9, $zero, 0x40
/* 0001D4 80005374 A2180000 */  sb          $t8, 0x0($s0)
/* 0001D8 80005378 A2190001 */  sb          $t9, 0x1($s0)
/* 0001DC 8000537C A2000002 */  sb          $zero, 0x2($s0)
/* 0001E0 80005380 100000F2 */  b           .L8000574C
/* 0001E4 80005384 24020003 */   addiu      $v0, $zero, 0x3
/* 0001E8 80005388 8C680560 */  lw          $t0, 0x560($v1)
.L8000538C:
/* 0001EC 8000538C 29010040 */  slti        $at, $t0, 0x40
/* 0001F0 80005390 5420000B */  bnel        $at, $zero, .L800053C0
/* 0001F4 80005394 8C6C0564 */   lw         $t4, 0x564($v1)
/* 0001F8 80005398 AC600560 */  sw          $zero, 0x560($v1)
/* 0001FC 8000539C 24890001 */  addiu       $t1, $a0, 0x1
/* 000200 800053A0 352A00B0 */  ori         $t2, $t1, 0xb0
/* 000204 800053A4 240B0040 */  addiu       $t3, $zero, 0x40
/* 000208 800053A8 A20B0001 */  sb          $t3, 0x1($s0)
/* 00020C 800053AC A20A0000 */  sb          $t2, 0x0($s0)
/* 000210 800053B0 A2000002 */  sb          $zero, 0x2($s0)
/* 000214 800053B4 100000E5 */  b           .L8000574C
/* 000218 800053B8 24020003 */   addiu      $v0, $zero, 0x3
/* 00021C 800053BC 8C6C0564 */  lw          $t4, 0x564($v1)
.L800053C0:
/* 000220 800053C0 29810040 */  slti        $at, $t4, 0x40
/* 000224 800053C4 5420000B */  bnel        $at, $zero, .L800053F4
/* 000228 800053C8 8C780568 */   lw         $t8, 0x568($v1)
/* 00022C 800053CC AC600564 */  sw          $zero, 0x564($v1)
/* 000230 800053D0 248D0002 */  addiu       $t5, $a0, 0x2
/* 000234 800053D4 35AE00B0 */  ori         $t6, $t5, 0xb0
/* 000238 800053D8 240F0040 */  addiu       $t7, $zero, 0x40
/* 00023C 800053DC A20F0001 */  sb          $t7, 0x1($s0)
/* 000240 800053E0 A20E0000 */  sb          $t6, 0x0($s0)
/* 000244 800053E4 A2000002 */  sb          $zero, 0x2($s0)
/* 000248 800053E8 100000D8 */  b           .L8000574C
/* 00024C 800053EC 24020003 */   addiu      $v0, $zero, 0x3
/* 000250 800053F0 8C780568 */  lw          $t8, 0x568($v1)
.L800053F4:
/* 000254 800053F4 2B010040 */  slti        $at, $t8, 0x40
/* 000258 800053F8 5420000B */  bnel        $at, $zero, .L80005428
/* 00025C 800053FC 24840004 */   addiu      $a0, $a0, 0x4
/* 000260 80005400 AC600568 */  sw          $zero, 0x568($v1)
/* 000264 80005404 24990003 */  addiu       $t9, $a0, 0x3
/* 000268 80005408 372800B0 */  ori         $t0, $t9, 0xb0
/* 00026C 8000540C 24090040 */  addiu       $t1, $zero, 0x40
/* 000270 80005410 A2090001 */  sb          $t1, 0x1($s0)
/* 000274 80005414 A2080000 */  sb          $t0, 0x0($s0)
/* 000278 80005418 A2000002 */  sb          $zero, 0x2($s0)
/* 00027C 8000541C 100000CB */  b           .L8000574C
/* 000280 80005420 24020003 */   addiu      $v0, $zero, 0x3
/* 000284 80005424 24840004 */  addiu       $a0, $a0, 0x4
.L80005428:
/* 000288 80005428 1492FFCB */  bne         $a0, $s2, .L80005358
/* 00028C 8000542C 24630010 */   addiu      $v1, $v1, 0x10
/* 000290 80005430 A220059E */  sb          $zero, 0x59e($s1)
.L80005434:
/* 000294 80005434 922A059D */  lbu         $t2, 0x59d($s1)
/* 000298 80005438 27A6005C */  addiu       $a2, $sp, 0x5c
/* 00029C 8000543C 51400014 */  beql        $t2, $zero, .L80005490
/* 0002A0 80005440 922B059C */   lbu        $t3, 0x59c($s1)
/* 0002A4 80005444 8E240458 */  lw          $a0, 0x458($s1)
/* 0002A8 80005448 1080000F */  beq         $a0, $zero, .L80005488
/* 0002AC 8000544C 248BFFFF */   addiu      $t3, $a0, -0x1
/* 0002B0 80005450 000B6880 */  sll         $t5, $t3, 2
/* 0002B4 80005454 AE2B0458 */  sw          $t3, 0x458($s1)
/* 0002B8 80005458 022D7021 */  addu        $t6, $s1, $t5
/* 0002BC 8000545C 8DCF045C */  lw          $t7, 0x45c($t6)
/* 0002C0 80005460 24020003 */  addiu       $v0, $zero, 0x3
/* 0002C4 80005464 35F80090 */  ori         $t8, $t7, 0x90
/* 0002C8 80005468 A2180000 */  sb          $t8, 0x0($s0)
/* 0002CC 8000546C 8E390458 */  lw          $t9, 0x458($s1)
/* 0002D0 80005470 00194080 */  sll         $t0, $t9, 2
/* 0002D4 80005474 02284821 */  addu        $t1, $s1, $t0
/* 0002D8 80005478 8D2A04DC */  lw          $t2, 0x4dc($t1)
/* 0002DC 8000547C A2000002 */  sb          $zero, 0x2($s0)
/* 0002E0 80005480 100000B2 */  b           .L8000574C
/* 0002E4 80005484 A20A0001 */   sb         $t2, 0x1($s0)
.L80005488:
/* 0002E8 80005488 A220059D */  sb          $zero, 0x59d($s1)
/* 0002EC 8000548C 922B059C */  lbu         $t3, 0x59c($s1)
.L80005490:
/* 0002F0 80005490 02202025 */  move        $a0, $s1
/* 0002F4 80005494 11600006 */  beq         $t3, $zero, .L800054B0
/* 0002F8 80005498 3C01BFF0 */   lui        $at, 0xbff0
/* 0002FC 8000549C 44813800 */  mtc1        $at, $f7
/* 000300 800054A0 44803000 */  mtc1        $zero, $f6
/* 000304 800054A4 00001025 */  move        $v0, $zero
/* 000308 800054A8 100000A8 */  b           .L8000574C
/* 00030C 800054AC F6660000 */   sdc1       $f6, 0x0($s3)
.L800054B0:
/* 000310 800054B0 0C001E4F */  jal         func_8000793C
/* 000314 800054B4 8FA70068 */   lw         $a3, 0x68($sp)
/* 000318 800054B8 04430006 */  bgezl       $v0, .L800054D4
/* 00031C 800054BC 44824000 */   mtc1       $v0, $f8
/* 000320 800054C0 0C0014AF */  jal         func_800052BC
/* 000324 800054C4 02202025 */   move       $a0, $s1
/* 000328 800054C8 1000FF9F */  b           .L80005348
/* 00032C 800054CC 922E059E */   lbu        $t6, 0x59e($s1)
/* 000330 800054D0 44824000 */  mtc1        $v0, $f8
.L800054D4:
/* 000334 800054D4 3C01800A */  lui         $at, %hi(D_800A0210)
/* 000338 800054D8 D4300210 */  ldc1        $f16, %lo(D_800A0210)($at)
/* 00033C 800054DC 468042A1 */  cvt.d.w     $f10, $f8
/* 000340 800054E0 8E2C0448 */  lw          $t4, 0x448($s1)
/* 000344 800054E4 862D0444 */  lh          $t5, 0x444($s1)
/* 000348 800054E8 24010080 */  addiu       $at, $zero, 0x80
/* 00034C 800054EC 448C2000 */  mtc1        $t4, $f4
/* 000350 800054F0 46305482 */  mul.d       $f18, $f10, $f16
/* 000354 800054F4 448D5000 */  mtc1        $t5, $f10
/* 000358 800054F8 468021A1 */  cvt.d.w     $f6, $f4
/* 00035C 800054FC D6640000 */  ldc1        $f4, 0x0($s3)
/* 000360 80005500 46805421 */  cvt.d.w     $f16, $f10
/* 000364 80005504 46269202 */  mul.d       $f8, $f18, $f6
/* 000368 80005508 D6320450 */  ldc1        $f18, 0x450($s1)
/* 00036C 8000550C 46304003 */  div.d       $f0, $f8, $f16
/* 000370 80005510 46320183 */  div.d       $f6, $f0, $f18
/* 000374 80005514 46262280 */  add.d       $f10, $f4, $f6
/* 000378 80005518 F66A0000 */  sdc1        $f10, 0x0($s3)
/* 00037C 8000551C 92060000 */  lbu         $a2, 0x0($s0)
/* 000380 80005520 30C300F0 */  andi        $v1, $a2, 0xf0
/* 000384 80005524 1061006C */  beq         $v1, $at, .L800056D8
/* 000388 80005528 30C5000F */   andi       $a1, $a2, 0xf
/* 00038C 8000552C 24010090 */  addiu       $at, $zero, 0x90
/* 000390 80005530 10610050 */  beq         $v1, $at, .L80005674
/* 000394 80005534 240100B0 */   addiu      $at, $zero, 0xb0
/* 000398 80005538 1061001E */  beq         $v1, $at, .L800055B4
/* 00039C 8000553C 240100F0 */   addiu      $at, $zero, 0xf0
/* 0003A0 80005540 14610081 */  bne         $v1, $at, .L80005748
/* 0003A4 80005544 240100F0 */   addiu      $at, $zero, 0xf0
/* 0003A8 80005548 50C1FF7F */  beql        $a2, $at, .L80005348
/* 0003AC 8000554C 922E059E */   lbu        $t6, 0x59e($s1)
/* 0003B0 80005550 240100F7 */  addiu       $at, $zero, 0xf7
/* 0003B4 80005554 50C1FF7C */  beql        $a2, $at, .L80005348
/* 0003B8 80005558 922E059E */   lbu        $t6, 0x59e($s1)
/* 0003BC 8000555C 240100FF */  addiu       $at, $zero, 0xff
/* 0003C0 80005560 54C1007A */  bnel        $a2, $at, .L8000574C
/* 0003C4 80005564 8FA2005C */   lw         $v0, 0x5c($sp)
/* 0003C8 80005568 92030001 */  lbu         $v1, 0x1($s0)
/* 0003CC 8000556C 2401002F */  addiu       $at, $zero, 0x2f
/* 0003D0 80005570 1061000C */  beq         $v1, $at, .L800055A4
/* 0003D4 80005574 24010051 */   addiu      $at, $zero, 0x51
/* 0003D8 80005578 5461FF73 */  bnel        $v1, $at, .L80005348
/* 0003DC 8000557C 922E059E */   lbu        $t6, 0x59e($s1)
/* 0003E0 80005580 920F0003 */  lbu         $t7, 0x3($s0)
/* 0003E4 80005584 920E0005 */  lbu         $t6, 0x5($s0)
/* 0003E8 80005588 92080004 */  lbu         $t0, 0x4($s0)
/* 0003EC 8000558C 000FC400 */  sll         $t8, $t7, 16
/* 0003F0 80005590 01D8C825 */  or          $t9, $t6, $t8
/* 0003F4 80005594 00084A00 */  sll         $t1, $t0, 8
/* 0003F8 80005598 03295025 */  or          $t2, $t9, $t1
/* 0003FC 8000559C 1000FF69 */  b           .L80005344
/* 000400 800055A0 AE2A0448 */   sw         $t2, 0x448($s1)
.L800055A4:
/* 000404 800055A4 0C0014AF */  jal         func_800052BC
/* 000408 800055A8 02202025 */   move       $a0, $s1
/* 00040C 800055AC 1000FF66 */  b           .L80005348
/* 000410 800055B0 922E059E */   lbu        $t6, 0x59e($s1)
.L800055B4:
/* 000414 800055B4 92030001 */  lbu         $v1, 0x1($s0)
/* 000418 800055B8 24010040 */  addiu       $at, $zero, 0x40
/* 00041C 800055BC 02202025 */  move        $a0, $s1
/* 000420 800055C0 10610007 */  beq         $v1, $at, .L800055E0
/* 000424 800055C4 24010066 */   addiu      $at, $zero, 0x66
/* 000428 800055C8 1061000B */  beq         $v1, $at, .L800055F8
/* 00042C 800055CC 24010067 */   addiu      $at, $zero, 0x67
/* 000430 800055D0 5061000F */  beql        $v1, $at, .L80005610
/* 000434 800055D4 962205AA */   lhu        $v0, 0x5aa($s1)
/* 000438 800055D8 1000005C */  b           .L8000574C
/* 00043C 800055DC 8FA2005C */   lw         $v0, 0x5c($sp)
.L800055E0:
/* 000440 800055E0 30CC000F */  andi        $t4, $a2, 0xf
/* 000444 800055E4 920B0002 */  lbu         $t3, 0x2($s0)
/* 000448 800055E8 000C6880 */  sll         $t5, $t4, 2
/* 00044C 800055EC 022D7821 */  addu        $t7, $s1, $t5
/* 000450 800055F0 10000055 */  b           .L80005748
/* 000454 800055F4 ADEB055C */   sw         $t3, 0x55c($t7)
.L800055F8:
/* 000458 800055F8 0C001E49 */  jal         func_80007924
/* 00045C 800055FC 262505A0 */   addiu      $a1, $s1, 0x5a0
/* 000460 80005600 240E0001 */  addiu       $t6, $zero, 0x1
/* 000464 80005604 1000FF4F */  b           .L80005344
/* 000468 80005608 A22E059F */   sb         $t6, 0x59f($s1)
/* 00046C 8000560C 962205AA */  lhu         $v0, 0x5aa($s1)
.L80005610:
/* 000470 80005610 24010003 */  addiu       $at, $zero, 0x3
/* 000474 80005614 24180001 */  addiu       $t8, $zero, 0x1
/* 000478 80005618 0041001A */  div         $zero, $v0, $at
/* 00047C 8000561C 00004010 */  mfhi        $t0
/* 000480 80005620 A238059D */  sb          $t8, 0x59d($s1)
/* 000484 80005624 19000007 */  blez        $t0, .L80005644
/* 000488 80005628 28410004 */   slti       $at, $v0, 0x4
/* 00048C 8000562C 14200005 */  bne         $at, $zero, .L80005644
/* 000490 80005630 00000000 */   nop
/* 000494 80005634 0C00147B */  jal         func_800051EC
/* 000498 80005638 02202025 */   move       $a0, $s1
/* 00049C 8000563C 10000004 */  b           .L80005650
/* 0004A0 80005640 963905AA */   lhu        $t9, 0x5aa($s1)
.L80005644:
/* 0004A4 80005644 0C001487 */  jal         func_8000521C
/* 0004A8 80005648 02202025 */   move       $a0, $s1
/* 0004AC 8000564C 963905AA */  lhu         $t9, 0x5aa($s1)
.L80005650:
/* 0004B0 80005650 922A059F */  lbu         $t2, 0x59f($s1)
/* 0004B4 80005654 02202025 */  move        $a0, $s1
/* 0004B8 80005658 27290001 */  addiu       $t1, $t9, 0x1
/* 0004BC 8000565C 1140FF39 */  beq         $t2, $zero, .L80005344
/* 0004C0 80005660 A62905AA */   sh         $t1, 0x5aa($s1)
/* 0004C4 80005664 0C001E43 */  jal         func_8000790C
/* 0004C8 80005668 262505A0 */   addiu      $a1, $s1, 0x5a0
/* 0004CC 8000566C 1000FF36 */  b           .L80005348
/* 0004D0 80005670 922E059E */   lbu        $t6, 0x59e($s1)
.L80005674:
/* 0004D4 80005674 920C0002 */  lbu         $t4, 0x2($s0)
/* 0004D8 80005678 51800018 */  beql        $t4, $zero, .L800056DC
/* 0004DC 8000567C 8E240458 */   lw         $a0, 0x458($s1)
/* 0004E0 80005680 962F05A8 */  lhu         $t7, 0x5a8($s1)
/* 0004E4 80005684 240D0001 */  addiu       $t5, $zero, 0x1
/* 0004E8 80005688 00AD5804 */  sllv        $t3, $a1, $t5
/* 0004EC 8000568C 016F7024 */  and         $t6, $t3, $t7
/* 0004F0 80005690 51C0FF2D */  beql        $t6, $zero, .L80005348
/* 0004F4 80005694 922E059E */   lbu        $t6, 0x59e($s1)
/* 0004F8 80005698 8E240458 */  lw          $a0, 0x458($s1)
/* 0004FC 8000569C 28810020 */  slti        $at, $a0, 0x20
/* 000500 800056A0 5020FF29 */  beql        $at, $zero, .L80005348
/* 000504 800056A4 922E059E */   lbu        $t6, 0x59e($s1)
/* 000508 800056A8 0004C080 */  sll         $t8, $a0, 2
/* 00050C 800056AC 02384021 */  addu        $t0, $s1, $t8
/* 000510 800056B0 AD05045C */  sw          $a1, 0x45c($t0)
/* 000514 800056B4 8E290458 */  lw          $t1, 0x458($s1)
/* 000518 800056B8 92190001 */  lbu         $t9, 0x1($s0)
/* 00051C 800056BC 00095080 */  sll         $t2, $t1, 2
/* 000520 800056C0 022A6021 */  addu        $t4, $s1, $t2
/* 000524 800056C4 AD9904DC */  sw          $t9, 0x4dc($t4)
/* 000528 800056C8 8E2D0458 */  lw          $t5, 0x458($s1)
/* 00052C 800056CC 25AB0001 */  addiu       $t3, $t5, 0x1
/* 000530 800056D0 1000001D */  b           .L80005748
/* 000534 800056D4 AE2B0458 */   sw         $t3, 0x458($s1)
.L800056D8:
/* 000538 800056D8 8E240458 */  lw          $a0, 0x458($s1)
.L800056DC:
/* 00053C 800056DC 00001025 */  move        $v0, $zero
/* 000540 800056E0 30C5000F */  andi        $a1, $a2, 0xf
/* 000544 800056E4 18800018 */  blez        $a0, .L80005748
/* 000548 800056E8 02201825 */   move       $v1, $s1
.L800056EC:
/* 00054C 800056EC 8C6F045C */  lw          $t7, 0x45c($v1)
/* 000550 800056F0 24420001 */  addiu       $v0, $v0, 0x1
/* 000554 800056F4 0044082A */  slt         $at, $v0, $a0
/* 000558 800056F8 15E50011 */  bne         $t7, $a1, .L80005740
/* 00055C 800056FC 00000000 */   nop
/* 000560 80005700 8C6E04DC */  lw          $t6, 0x4dc($v1)
/* 000564 80005704 92180001 */  lbu         $t8, 0x1($s0)
/* 000568 80005708 15D8000D */  bne         $t6, $t8, .L80005740
/* 00056C 8000570C 2488FFFF */   addiu      $t0, $a0, -0x1
/* 000570 80005710 00085080 */  sll         $t2, $t0, 2
/* 000574 80005714 AE280458 */  sw          $t0, 0x458($s1)
/* 000578 80005718 022AC821 */  addu        $t9, $s1, $t2
/* 00057C 8000571C 8F2C045C */  lw          $t4, 0x45c($t9)
/* 000580 80005720 AC6C045C */  sw          $t4, 0x45c($v1)
/* 000584 80005724 8E2D0458 */  lw          $t5, 0x458($s1)
/* 000588 80005728 000D5880 */  sll         $t3, $t5, 2
/* 00058C 8000572C 022B7821 */  addu        $t7, $s1, $t3
/* 000590 80005730 8DEE04DC */  lw          $t6, 0x4dc($t7)
/* 000594 80005734 AC6E04DC */  sw          $t6, 0x4dc($v1)
/* 000598 80005738 10000004 */  b           .L8000574C
/* 00059C 8000573C 8FA2005C */   lw         $v0, 0x5c($sp)
.L80005740:
/* 0005A0 80005740 1420FFEA */  bne         $at, $zero, .L800056EC
/* 0005A4 80005744 24630004 */   addiu      $v1, $v1, 0x4
.L80005748:
/* 0005A8 80005748 8FA2005C */  lw          $v0, 0x5c($sp)
.L8000574C:
/* 0005AC 8000574C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0005B0 80005750 8FB00014 */  lw          $s0, 0x14($sp)
/* 0005B4 80005754 8FB10018 */  lw          $s1, 0x18($sp)
/* 0005B8 80005758 8FB2001C */  lw          $s2, 0x1c($sp)
/* 0005BC 8000575C 8FB30020 */  lw          $s3, 0x20($sp)
/* 0005C0 80005760 03E00008 */  jr          $ra
/* 0005C4 80005764 27BD0060 */   addiu      $sp, $sp, 0x60

glabel func_80005768 # 7
/* 0005C8 80005768 908E059C */  lbu         $t6, 0x59c($a0)
/* 0005CC 8000576C 00001025 */  move        $v0, $zero
/* 0005D0 80005770 11C00009 */  beq         $t6, $zero, .L80005798
/* 0005D4 80005774 00000000 */   nop
/* 0005D8 80005778 908F059D */  lbu         $t7, 0x59d($a0)
/* 0005DC 8000577C 15E00006 */  bne         $t7, $zero, .L80005798
/* 0005E0 80005780 00000000 */   nop
/* 0005E4 80005784 9098059E */  lbu         $t8, 0x59e($a0)
/* 0005E8 80005788 17000003 */  bne         $t8, $zero, .L80005798
/* 0005EC 8000578C 00000000 */   nop
/* 0005F0 80005790 03E00008 */  jr          $ra
/* 0005F4 80005794 24020001 */   addiu      $v0, $zero, 0x1
.L80005798:
/* 0005F8 80005798 03E00008 */  jr          $ra
/* 0005FC 8000579C 00000000 */   nop

glabel func_800057A0 # 8
/* 000600 800057A0 03E00008 */  jr          $ra
/* 000604 800057A4 9082059C */   lbu        $v0, 0x59c($a0)

glabel func_800057A8 # 9
/* 000608 800057A8 44876000 */  mtc1        $a3, $f12
/* 00060C 800057AC 44866800 */  mtc1        $a2, $f13
/* 000610 800057B0 00001025 */  move        $v0, $zero
/* 000614 800057B4 03E00008 */  jr          $ra
/* 000618 800057B8 F48C0450 */   sdc1       $f12, 0x450($a0)

glabel func_800057BC # 10
/* 00061C 800057BC 03E00008 */  jr          $ra
/* 000620 800057C0 D4800450 */   ldc1       $f0, 0x450($a0)
/* 000624 800057C4 00000000 */  nop
/* 000628 800057C8 00000000 */  nop
/* 00062C 800057CC 00000000 */  nop
