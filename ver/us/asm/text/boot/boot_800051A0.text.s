.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800051A0 # 0
/* 004D50 800051A0 03E00008 */  jr          $ra
/* 004D54 800051A4 00000000 */   nop

glabel func_800051A8 # 1
/* 004D58 800051A8 240E0001 */  addiu       $t6, $zero, 0x1
/* 004D5C 800051AC A08E059C */  sb          $t6, 0x59c($a0)
/* 004D60 800051B0 A080059D */  sb          $zero, 0x59d($a0)
/* 004D64 800051B4 A080059E */  sb          $zero, 0x59e($a0)
/* 004D68 800051B8 AC800458 */  sw          $zero, 0x458($a0)
/* 004D6C 800051BC 00801825 */  move        $v1, $a0
/* 004D70 800051C0 24040010 */  addiu       $a0, $zero, 0x10
/* 004D74 800051C4 00001025 */  move        $v0, $zero
.L800051C8:
/* 004D78 800051C8 24420004 */  addiu       $v0, $v0, 0x4
/* 004D7C 800051CC AC600560 */  sw          $zero, 0x560($v1)
/* 004D80 800051D0 AC600564 */  sw          $zero, 0x564($v1)
/* 004D84 800051D4 AC600568 */  sw          $zero, 0x568($v1)
/* 004D88 800051D8 24630010 */  addiu       $v1, $v1, 0x10
/* 004D8C 800051DC 1444FFFA */  bne         $v0, $a0, .L800051C8
/* 004D90 800051E0 AC60054C */   sw         $zero, 0x54c($v1)
/* 004D94 800051E4 03E00008 */  jr          $ra
/* 004D98 800051E8 00001025 */   move       $v0, $zero

glabel func_800051EC # 2
/* 004D9C 800051EC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 004DA0 800051F0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 004DA4 800051F4 0C014CB8 */  jal         osGetCount
/* 004DA8 800051F8 AFA40018 */   sw         $a0, 0x18($sp)
/* 004DAC 800051FC 8FAF0018 */  lw          $t7, 0x18($sp)
/* 004DB0 80005200 344E00FF */  ori         $t6, $v0, 0xff
/* 004DB4 80005204 00001025 */  move        $v0, $zero
/* 004DB8 80005208 A5EE05A8 */  sh          $t6, 0x5a8($t7)
/* 004DBC 8000520C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 004DC0 80005210 27BD0018 */  addiu       $sp, $sp, 0x18
/* 004DC4 80005214 03E00008 */  jr          $ra
/* 004DC8 80005218 00000000 */   nop

glabel func_8000521C # 3
/* 004DCC 8000521C 340EFFFF */  ori         $t6, $zero, 0xffff
/* 004DD0 80005220 A48E05A8 */  sh          $t6, 0x5a8($a0)
/* 004DD4 80005224 03E00008 */  jr          $ra
/* 004DD8 80005228 00001025 */   move       $v0, $zero

glabel func_8000522C # 4
/* 004DDC 8000522C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 004DE0 80005230 AFBF0014 */  sw          $ra, 0x14($sp)
/* 004DE4 80005234 908E059C */  lbu         $t6, 0x59c($a0)
/* 004DE8 80005238 00001025 */  move        $v0, $zero
/* 004DEC 8000523C 11C0001B */  beqz        $t6, .L800052AC
/* 004DF0 80005240 00000000 */   nop
/* 004DF4 80005244 0C001E02 */  jal         func_80007808
/* 004DF8 80005248 AFA40018 */   sw         $a0, 0x18($sp)
/* 004DFC 8000524C 8FA40018 */  lw          $a0, 0x18($sp)
/* 004E00 80005250 3C180007 */  lui         $t8, (0x7A120 >> 16)
/* 004E04 80005254 3718A120 */  ori         $t8, $t8, (0x7A120 & 0xFFFF)
/* 004E08 80005258 A4820444 */  sh          $v0, 0x444($a0)
/* 004E0C 8000525C 848F0444 */  lh          $t7, 0x444($a0)
/* 004E10 80005260 3C013FF0 */  lui         $at, 0x3ff0
/* 004E14 80005264 3419FFFF */  ori         $t9, $zero, 0xffff
/* 004E18 80005268 55E00004 */  bnel        $t7, $zero, .L8000527C
/* 004E1C 8000526C 44812800 */   mtc1       $at, $f5
/* 004E20 80005270 1000000E */  b           .L800052AC
/* 004E24 80005274 00001025 */   move       $v0, $zero
/* 004E28 80005278 44812800 */  mtc1        $at, $f5
.L8000527C:
/* 004E2C 8000527C 44802000 */  mtc1        $zero, $f4
/* 004E30 80005280 AC980448 */  sw          $t8, 0x448($a0)
/* 004E34 80005284 A080059F */  sb          $zero, 0x59f($a0)
/* 004E38 80005288 A49905A8 */  sh          $t9, 0x5a8($a0)
/* 004E3C 8000528C A48005AA */  sh          $zero, 0x5aa($a0)
/* 004E40 80005290 F4840450 */  sdc1        $f4, 0x450($a0)
/* 004E44 80005294 0C001468 */  jal         func_800051A0
/* 004E48 80005298 AFA40018 */   sw         $a0, 0x18($sp)
/* 004E4C 8000529C 8FA40018 */  lw          $a0, 0x18($sp)
/* 004E50 800052A0 24020001 */  addiu       $v0, $zero, 0x1
/* 004E54 800052A4 10000001 */  b           .L800052AC
/* 004E58 800052A8 A080059C */   sb         $zero, 0x59c($a0)
.L800052AC:
/* 004E5C 800052AC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 004E60 800052B0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 004E64 800052B4 03E00008 */  jr          $ra
/* 004E68 800052B8 00000000 */   nop

glabel func_800052BC # 5
/* 004E6C 800052BC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 004E70 800052C0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 004E74 800052C4 908E059C */  lbu         $t6, 0x59c($a0)
/* 004E78 800052C8 00001025 */  move        $v0, $zero
/* 004E7C 800052CC 15C0000B */  bnez        $t6, .L800052FC
/* 004E80 800052D0 00000000 */   nop
/* 004E84 800052D4 24020001 */  addiu       $v0, $zero, 0x1
/* 004E88 800052D8 A082059D */  sb          $v0, 0x59d($a0)
/* 004E8C 800052DC A082059E */  sb          $v0, 0x59e($a0)
/* 004E90 800052E0 0C001468 */  jal         func_800051A0
/* 004E94 800052E4 AFA40018 */   sw         $a0, 0x18($sp)
/* 004E98 800052E8 8FA40018 */  lw          $a0, 0x18($sp)
/* 004E9C 800052EC 240F0001 */  addiu       $t7, $zero, 0x1
/* 004EA0 800052F0 00001025 */  move        $v0, $zero
/* 004EA4 800052F4 10000001 */  b           .L800052FC
/* 004EA8 800052F8 A08F059C */   sb         $t7, 0x59c($a0)
.L800052FC:
/* 004EAC 800052FC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 004EB0 80005300 27BD0018 */  addiu       $sp, $sp, 0x18
/* 004EB4 80005304 03E00008 */  jr          $ra
/* 004EB8 80005308 00000000 */   nop

glabel func_8000530C # 6
/* 004EBC 8000530C 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 004EC0 80005310 44802800 */  mtc1        $zero, $f5
/* 004EC4 80005314 44802000 */  mtc1        $zero, $f4
/* 004EC8 80005318 AFB30020 */  sw          $s3, 0x20($sp)
/* 004ECC 8000531C AFB2001C */  sw          $s2, 0x1c($sp)
/* 004ED0 80005320 AFB10018 */  sw          $s1, 0x18($sp)
/* 004ED4 80005324 AFB00014 */  sw          $s0, 0x14($sp)
/* 004ED8 80005328 AFBF0024 */  sw          $ra, 0x24($sp)
/* 004EDC 8000532C AFA60068 */  sw          $a2, 0x68($sp)
/* 004EE0 80005330 00A08025 */  move        $s0, $a1
/* 004EE4 80005334 00808825 */  move        $s1, $a0
/* 004EE8 80005338 00E09825 */  move        $s3, $a3
/* 004EEC 8000533C 24120010 */  addiu       $s2, $zero, 0x10
/* 004EF0 80005340 F4E40000 */  sdc1        $f4, 0x0($a3)
.L80005344:
/* 004EF4 80005344 922E059E */  lbu         $t6, 0x59e($s1)
.L80005348:
/* 004EF8 80005348 00002025 */  move        $a0, $zero
/* 004EFC 8000534C 02201825 */  move        $v1, $s1
/* 004F00 80005350 11C00038 */  beqz        $t6, .L80005434
/* 004F04 80005354 02002825 */   move       $a1, $s0
.L80005358:
/* 004F08 80005358 8C6F055C */  lw          $t7, 0x55c($v1)
/* 004F0C 8000535C 29E10040 */  slti        $at, $t7, 0x40
/* 004F10 80005360 5420000A */  bnel        $at, $zero, .L8000538C
/* 004F14 80005364 8C680560 */   lw         $t0, 0x560($v1)
/* 004F18 80005368 AC60055C */  sw          $zero, 0x55c($v1)
/* 004F1C 8000536C 349800B0 */  ori         $t8, $a0, 0xb0
/* 004F20 80005370 24190040 */  addiu       $t9, $zero, 0x40
/* 004F24 80005374 A2180000 */  sb          $t8, 0x0($s0)
/* 004F28 80005378 A2190001 */  sb          $t9, 0x1($s0)
/* 004F2C 8000537C A2000002 */  sb          $zero, 0x2($s0)
/* 004F30 80005380 100000F2 */  b           .L8000574C
/* 004F34 80005384 24020003 */   addiu      $v0, $zero, 0x3
/* 004F38 80005388 8C680560 */  lw          $t0, 0x560($v1)
.L8000538C:
/* 004F3C 8000538C 29010040 */  slti        $at, $t0, 0x40
/* 004F40 80005390 5420000B */  bnel        $at, $zero, .L800053C0
/* 004F44 80005394 8C6C0564 */   lw         $t4, 0x564($v1)
/* 004F48 80005398 AC600560 */  sw          $zero, 0x560($v1)
/* 004F4C 8000539C 24890001 */  addiu       $t1, $a0, 0x1
/* 004F50 800053A0 352A00B0 */  ori         $t2, $t1, 0xb0
/* 004F54 800053A4 240B0040 */  addiu       $t3, $zero, 0x40
/* 004F58 800053A8 A20B0001 */  sb          $t3, 0x1($s0)
/* 004F5C 800053AC A20A0000 */  sb          $t2, 0x0($s0)
/* 004F60 800053B0 A2000002 */  sb          $zero, 0x2($s0)
/* 004F64 800053B4 100000E5 */  b           .L8000574C
/* 004F68 800053B8 24020003 */   addiu      $v0, $zero, 0x3
/* 004F6C 800053BC 8C6C0564 */  lw          $t4, 0x564($v1)
.L800053C0:
/* 004F70 800053C0 29810040 */  slti        $at, $t4, 0x40
/* 004F74 800053C4 5420000B */  bnel        $at, $zero, .L800053F4
/* 004F78 800053C8 8C780568 */   lw         $t8, 0x568($v1)
/* 004F7C 800053CC AC600564 */  sw          $zero, 0x564($v1)
/* 004F80 800053D0 248D0002 */  addiu       $t5, $a0, 0x2
/* 004F84 800053D4 35AE00B0 */  ori         $t6, $t5, 0xb0
/* 004F88 800053D8 240F0040 */  addiu       $t7, $zero, 0x40
/* 004F8C 800053DC A20F0001 */  sb          $t7, 0x1($s0)
/* 004F90 800053E0 A20E0000 */  sb          $t6, 0x0($s0)
/* 004F94 800053E4 A2000002 */  sb          $zero, 0x2($s0)
/* 004F98 800053E8 100000D8 */  b           .L8000574C
/* 004F9C 800053EC 24020003 */   addiu      $v0, $zero, 0x3
/* 004FA0 800053F0 8C780568 */  lw          $t8, 0x568($v1)
.L800053F4:
/* 004FA4 800053F4 2B010040 */  slti        $at, $t8, 0x40
/* 004FA8 800053F8 5420000B */  bnel        $at, $zero, .L80005428
/* 004FAC 800053FC 24840004 */   addiu      $a0, $a0, 0x4
/* 004FB0 80005400 AC600568 */  sw          $zero, 0x568($v1)
/* 004FB4 80005404 24990003 */  addiu       $t9, $a0, 0x3
/* 004FB8 80005408 372800B0 */  ori         $t0, $t9, 0xb0
/* 004FBC 8000540C 24090040 */  addiu       $t1, $zero, 0x40
/* 004FC0 80005410 A2090001 */  sb          $t1, 0x1($s0)
/* 004FC4 80005414 A2080000 */  sb          $t0, 0x0($s0)
/* 004FC8 80005418 A2000002 */  sb          $zero, 0x2($s0)
/* 004FCC 8000541C 100000CB */  b           .L8000574C
/* 004FD0 80005420 24020003 */   addiu      $v0, $zero, 0x3
/* 004FD4 80005424 24840004 */  addiu       $a0, $a0, 0x4
.L80005428:
/* 004FD8 80005428 1492FFCB */  bne         $a0, $s2, .L80005358
/* 004FDC 8000542C 24630010 */   addiu      $v1, $v1, 0x10
/* 004FE0 80005430 A220059E */  sb          $zero, 0x59e($s1)
.L80005434:
/* 004FE4 80005434 922A059D */  lbu         $t2, 0x59d($s1)
/* 004FE8 80005438 27A6005C */  addiu       $a2, $sp, 0x5c
/* 004FEC 8000543C 51400014 */  beql        $t2, $zero, .L80005490
/* 004FF0 80005440 922B059C */   lbu        $t3, 0x59c($s1)
/* 004FF4 80005444 8E240458 */  lw          $a0, 0x458($s1)
/* 004FF8 80005448 1080000F */  beqz        $a0, .L80005488
/* 004FFC 8000544C 248BFFFF */   addiu      $t3, $a0, -0x1
/* 005000 80005450 000B6880 */  sll         $t5, $t3, 2
/* 005004 80005454 AE2B0458 */  sw          $t3, 0x458($s1)
/* 005008 80005458 022D7021 */  addu        $t6, $s1, $t5
/* 00500C 8000545C 8DCF045C */  lw          $t7, 0x45c($t6)
/* 005010 80005460 24020003 */  addiu       $v0, $zero, 0x3
/* 005014 80005464 35F80090 */  ori         $t8, $t7, 0x90
/* 005018 80005468 A2180000 */  sb          $t8, 0x0($s0)
/* 00501C 8000546C 8E390458 */  lw          $t9, 0x458($s1)
/* 005020 80005470 00194080 */  sll         $t0, $t9, 2
/* 005024 80005474 02284821 */  addu        $t1, $s1, $t0
/* 005028 80005478 8D2A04DC */  lw          $t2, 0x4dc($t1)
/* 00502C 8000547C A2000002 */  sb          $zero, 0x2($s0)
/* 005030 80005480 100000B2 */  b           .L8000574C
/* 005034 80005484 A20A0001 */   sb         $t2, 0x1($s0)
.L80005488:
/* 005038 80005488 A220059D */  sb          $zero, 0x59d($s1)
/* 00503C 8000548C 922B059C */  lbu         $t3, 0x59c($s1)
.L80005490:
/* 005040 80005490 02202025 */  move        $a0, $s1
/* 005044 80005494 11600006 */  beqz        $t3, .L800054B0
/* 005048 80005498 3C01BFF0 */   lui        $at, 0xbff0
/* 00504C 8000549C 44813800 */  mtc1        $at, $f7
/* 005050 800054A0 44803000 */  mtc1        $zero, $f6
/* 005054 800054A4 00001025 */  move        $v0, $zero
/* 005058 800054A8 100000A8 */  b           .L8000574C
/* 00505C 800054AC F6660000 */   sdc1       $f6, 0x0($s3)
.L800054B0:
/* 005060 800054B0 0C001E4F */  jal         func_8000793C
/* 005064 800054B4 8FA70068 */   lw         $a3, 0x68($sp)
/* 005068 800054B8 04430006 */  bgezl       $v0, .L800054D4
/* 00506C 800054BC 44824000 */   mtc1       $v0, $f8
/* 005070 800054C0 0C0014AF */  jal         func_800052BC
/* 005074 800054C4 02202025 */   move       $a0, $s1
/* 005078 800054C8 1000FF9F */  b           .L80005348
/* 00507C 800054CC 922E059E */   lbu        $t6, 0x59e($s1)
/* 005080 800054D0 44824000 */  mtc1        $v0, $f8
.L800054D4:
/* 005084 800054D4 3C01800A */  lui         $at, %hi(D_800A0210)
/* 005088 800054D8 D4300210 */  ldc1        $f16, %lo(D_800A0210)($at)
/* 00508C 800054DC 468042A1 */  cvt.d.w     $f10, $f8
/* 005090 800054E0 8E2C0448 */  lw          $t4, 0x448($s1)
/* 005094 800054E4 862D0444 */  lh          $t5, 0x444($s1)
/* 005098 800054E8 24010080 */  addiu       $at, $zero, 0x80
/* 00509C 800054EC 448C2000 */  mtc1        $t4, $f4
/* 0050A0 800054F0 46305482 */  mul.d       $f18, $f10, $f16
/* 0050A4 800054F4 448D5000 */  mtc1        $t5, $f10
/* 0050A8 800054F8 468021A1 */  cvt.d.w     $f6, $f4
/* 0050AC 800054FC D6640000 */  ldc1        $f4, 0x0($s3)
/* 0050B0 80005500 46805421 */  cvt.d.w     $f16, $f10
/* 0050B4 80005504 46269202 */  mul.d       $f8, $f18, $f6
/* 0050B8 80005508 D6320450 */  ldc1        $f18, 0x450($s1)
/* 0050BC 8000550C 46304003 */  div.d       $f0, $f8, $f16
/* 0050C0 80005510 46320183 */  div.d       $f6, $f0, $f18
/* 0050C4 80005514 46262280 */  add.d       $f10, $f4, $f6
/* 0050C8 80005518 F66A0000 */  sdc1        $f10, 0x0($s3)
/* 0050CC 8000551C 92060000 */  lbu         $a2, 0x0($s0)
/* 0050D0 80005520 30C300F0 */  andi        $v1, $a2, 0xf0
/* 0050D4 80005524 1061006C */  beq         $v1, $at, .L800056D8
/* 0050D8 80005528 30C5000F */   andi       $a1, $a2, 0xf
/* 0050DC 8000552C 24010090 */  addiu       $at, $zero, 0x90
/* 0050E0 80005530 10610050 */  beq         $v1, $at, .L80005674
/* 0050E4 80005534 240100B0 */   addiu      $at, $zero, 0xb0
/* 0050E8 80005538 1061001E */  beq         $v1, $at, .L800055B4
/* 0050EC 8000553C 240100F0 */   addiu      $at, $zero, 0xf0
/* 0050F0 80005540 14610081 */  bne         $v1, $at, .L80005748
/* 0050F4 80005544 240100F0 */   addiu      $at, $zero, 0xf0
/* 0050F8 80005548 50C1FF7F */  beql        $a2, $at, .L80005348
/* 0050FC 8000554C 922E059E */   lbu        $t6, 0x59e($s1)
/* 005100 80005550 240100F7 */  addiu       $at, $zero, 0xf7
/* 005104 80005554 50C1FF7C */  beql        $a2, $at, .L80005348
/* 005108 80005558 922E059E */   lbu        $t6, 0x59e($s1)
/* 00510C 8000555C 240100FF */  addiu       $at, $zero, 0xff
/* 005110 80005560 54C1007A */  bnel        $a2, $at, .L8000574C
/* 005114 80005564 8FA2005C */   lw         $v0, 0x5c($sp)
/* 005118 80005568 92030001 */  lbu         $v1, 0x1($s0)
/* 00511C 8000556C 2401002F */  addiu       $at, $zero, 0x2f
/* 005120 80005570 1061000C */  beq         $v1, $at, .L800055A4
/* 005124 80005574 24010051 */   addiu      $at, $zero, 0x51
/* 005128 80005578 5461FF73 */  bnel        $v1, $at, .L80005348
/* 00512C 8000557C 922E059E */   lbu        $t6, 0x59e($s1)
/* 005130 80005580 920F0003 */  lbu         $t7, 0x3($s0)
/* 005134 80005584 920E0005 */  lbu         $t6, 0x5($s0)
/* 005138 80005588 92080004 */  lbu         $t0, 0x4($s0)
/* 00513C 8000558C 000FC400 */  sll         $t8, $t7, 16
/* 005140 80005590 01D8C825 */  or          $t9, $t6, $t8
/* 005144 80005594 00084A00 */  sll         $t1, $t0, 8
/* 005148 80005598 03295025 */  or          $t2, $t9, $t1
/* 00514C 8000559C 1000FF69 */  b           .L80005344
/* 005150 800055A0 AE2A0448 */   sw         $t2, 0x448($s1)
.L800055A4:
/* 005154 800055A4 0C0014AF */  jal         func_800052BC
/* 005158 800055A8 02202025 */   move       $a0, $s1
/* 00515C 800055AC 1000FF66 */  b           .L80005348
/* 005160 800055B0 922E059E */   lbu        $t6, 0x59e($s1)
.L800055B4:
/* 005164 800055B4 92030001 */  lbu         $v1, 0x1($s0)
/* 005168 800055B8 24010040 */  addiu       $at, $zero, 0x40
/* 00516C 800055BC 02202025 */  move        $a0, $s1
/* 005170 800055C0 10610007 */  beq         $v1, $at, .L800055E0
/* 005174 800055C4 24010066 */   addiu      $at, $zero, 0x66
/* 005178 800055C8 1061000B */  beq         $v1, $at, .L800055F8
/* 00517C 800055CC 24010067 */   addiu      $at, $zero, 0x67
/* 005180 800055D0 5061000F */  beql        $v1, $at, .L80005610
/* 005184 800055D4 962205AA */   lhu        $v0, 0x5aa($s1)
/* 005188 800055D8 1000005C */  b           .L8000574C
/* 00518C 800055DC 8FA2005C */   lw         $v0, 0x5c($sp)
.L800055E0:
/* 005190 800055E0 30CC000F */  andi        $t4, $a2, 0xf
/* 005194 800055E4 920B0002 */  lbu         $t3, 0x2($s0)
/* 005198 800055E8 000C6880 */  sll         $t5, $t4, 2
/* 00519C 800055EC 022D7821 */  addu        $t7, $s1, $t5
/* 0051A0 800055F0 10000055 */  b           .L80005748
/* 0051A4 800055F4 ADEB055C */   sw         $t3, 0x55c($t7)
.L800055F8:
/* 0051A8 800055F8 0C001E49 */  jal         func_80007924
/* 0051AC 800055FC 262505A0 */   addiu      $a1, $s1, 0x5a0
/* 0051B0 80005600 240E0001 */  addiu       $t6, $zero, 0x1
/* 0051B4 80005604 1000FF4F */  b           .L80005344
/* 0051B8 80005608 A22E059F */   sb         $t6, 0x59f($s1)
/* 0051BC 8000560C 962205AA */  lhu         $v0, 0x5aa($s1)
.L80005610:
/* 0051C0 80005610 24010003 */  addiu       $at, $zero, 0x3
/* 0051C4 80005614 24180001 */  addiu       $t8, $zero, 0x1
/* 0051C8 80005618 0041001A */  div         $zero, $v0, $at
/* 0051CC 8000561C 00004010 */  mfhi        $t0
/* 0051D0 80005620 A238059D */  sb          $t8, 0x59d($s1)
/* 0051D4 80005624 19000007 */  blez        $t0, .L80005644
/* 0051D8 80005628 28410004 */   slti       $at, $v0, 0x4
/* 0051DC 8000562C 14200005 */  bnez        $at, .L80005644
/* 0051E0 80005630 00000000 */   nop
/* 0051E4 80005634 0C00147B */  jal         func_800051EC
/* 0051E8 80005638 02202025 */   move       $a0, $s1
/* 0051EC 8000563C 10000004 */  b           .L80005650
/* 0051F0 80005640 963905AA */   lhu        $t9, 0x5aa($s1)
.L80005644:
/* 0051F4 80005644 0C001487 */  jal         func_8000521C
/* 0051F8 80005648 02202025 */   move       $a0, $s1
/* 0051FC 8000564C 963905AA */  lhu         $t9, 0x5aa($s1)
.L80005650:
/* 005200 80005650 922A059F */  lbu         $t2, 0x59f($s1)
/* 005204 80005654 02202025 */  move        $a0, $s1
/* 005208 80005658 27290001 */  addiu       $t1, $t9, 0x1
/* 00520C 8000565C 1140FF39 */  beqz        $t2, .L80005344
/* 005210 80005660 A62905AA */   sh         $t1, 0x5aa($s1)
/* 005214 80005664 0C001E43 */  jal         func_8000790C
/* 005218 80005668 262505A0 */   addiu      $a1, $s1, 0x5a0
/* 00521C 8000566C 1000FF36 */  b           .L80005348
/* 005220 80005670 922E059E */   lbu        $t6, 0x59e($s1)
.L80005674:
/* 005224 80005674 920C0002 */  lbu         $t4, 0x2($s0)
/* 005228 80005678 51800018 */  beql        $t4, $zero, .L800056DC
/* 00522C 8000567C 8E240458 */   lw         $a0, 0x458($s1)
/* 005230 80005680 962F05A8 */  lhu         $t7, 0x5a8($s1)
/* 005234 80005684 240D0001 */  addiu       $t5, $zero, 0x1
/* 005238 80005688 00AD5804 */  sllv        $t3, $t5, $a1
/* 00523C 8000568C 016F7024 */  and         $t6, $t3, $t7
/* 005240 80005690 51C0FF2D */  beql        $t6, $zero, .L80005348
/* 005244 80005694 922E059E */   lbu        $t6, 0x59e($s1)
/* 005248 80005698 8E240458 */  lw          $a0, 0x458($s1)
/* 00524C 8000569C 28810020 */  slti        $at, $a0, 0x20
/* 005250 800056A0 5020FF29 */  beql        $at, $zero, .L80005348
/* 005254 800056A4 922E059E */   lbu        $t6, 0x59e($s1)
/* 005258 800056A8 0004C080 */  sll         $t8, $a0, 2
/* 00525C 800056AC 02384021 */  addu        $t0, $s1, $t8
/* 005260 800056B0 AD05045C */  sw          $a1, 0x45c($t0)
/* 005264 800056B4 8E290458 */  lw          $t1, 0x458($s1)
/* 005268 800056B8 92190001 */  lbu         $t9, 0x1($s0)
/* 00526C 800056BC 00095080 */  sll         $t2, $t1, 2
/* 005270 800056C0 022A6021 */  addu        $t4, $s1, $t2
/* 005274 800056C4 AD9904DC */  sw          $t9, 0x4dc($t4)
/* 005278 800056C8 8E2D0458 */  lw          $t5, 0x458($s1)
/* 00527C 800056CC 25AB0001 */  addiu       $t3, $t5, 0x1
/* 005280 800056D0 1000001D */  b           .L80005748
/* 005284 800056D4 AE2B0458 */   sw         $t3, 0x458($s1)
.L800056D8:
/* 005288 800056D8 8E240458 */  lw          $a0, 0x458($s1)
.L800056DC:
/* 00528C 800056DC 00001025 */  move        $v0, $zero
/* 005290 800056E0 30C5000F */  andi        $a1, $a2, 0xf
/* 005294 800056E4 18800018 */  blez        $a0, .L80005748
/* 005298 800056E8 02201825 */   move       $v1, $s1
.L800056EC:
/* 00529C 800056EC 8C6F045C */  lw          $t7, 0x45c($v1)
/* 0052A0 800056F0 24420001 */  addiu       $v0, $v0, 0x1
/* 0052A4 800056F4 0044082A */  slt         $at, $v0, $a0
/* 0052A8 800056F8 15E50011 */  bne         $t7, $a1, .L80005740
/* 0052AC 800056FC 00000000 */   nop
/* 0052B0 80005700 8C6E04DC */  lw          $t6, 0x4dc($v1)
/* 0052B4 80005704 92180001 */  lbu         $t8, 0x1($s0)
/* 0052B8 80005708 15D8000D */  bne         $t6, $t8, .L80005740
/* 0052BC 8000570C 2488FFFF */   addiu      $t0, $a0, -0x1
/* 0052C0 80005710 00085080 */  sll         $t2, $t0, 2
/* 0052C4 80005714 AE280458 */  sw          $t0, 0x458($s1)
/* 0052C8 80005718 022AC821 */  addu        $t9, $s1, $t2
/* 0052CC 8000571C 8F2C045C */  lw          $t4, 0x45c($t9)
/* 0052D0 80005720 AC6C045C */  sw          $t4, 0x45c($v1)
/* 0052D4 80005724 8E2D0458 */  lw          $t5, 0x458($s1)
/* 0052D8 80005728 000D5880 */  sll         $t3, $t5, 2
/* 0052DC 8000572C 022B7821 */  addu        $t7, $s1, $t3
/* 0052E0 80005730 8DEE04DC */  lw          $t6, 0x4dc($t7)
/* 0052E4 80005734 AC6E04DC */  sw          $t6, 0x4dc($v1)
/* 0052E8 80005738 10000004 */  b           .L8000574C
/* 0052EC 8000573C 8FA2005C */   lw         $v0, 0x5c($sp)
.L80005740:
/* 0052F0 80005740 1420FFEA */  bnez        $at, .L800056EC
/* 0052F4 80005744 24630004 */   addiu      $v1, $v1, 0x4
.L80005748:
/* 0052F8 80005748 8FA2005C */  lw          $v0, 0x5c($sp)
.L8000574C:
/* 0052FC 8000574C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 005300 80005750 8FB00014 */  lw          $s0, 0x14($sp)
/* 005304 80005754 8FB10018 */  lw          $s1, 0x18($sp)
/* 005308 80005758 8FB2001C */  lw          $s2, 0x1c($sp)
/* 00530C 8000575C 8FB30020 */  lw          $s3, 0x20($sp)
/* 005310 80005760 03E00008 */  jr          $ra
/* 005314 80005764 27BD0060 */   addiu      $sp, $sp, 0x60

glabel func_80005768 # 7
/* 005318 80005768 908E059C */  lbu         $t6, 0x59c($a0)
/* 00531C 8000576C 00001025 */  move        $v0, $zero
/* 005320 80005770 11C00009 */  beqz        $t6, .L80005798
/* 005324 80005774 00000000 */   nop
/* 005328 80005778 908F059D */  lbu         $t7, 0x59d($a0)
/* 00532C 8000577C 15E00006 */  bnez        $t7, .L80005798
/* 005330 80005780 00000000 */   nop
/* 005334 80005784 9098059E */  lbu         $t8, 0x59e($a0)
/* 005338 80005788 17000003 */  bnez        $t8, .L80005798
/* 00533C 8000578C 00000000 */   nop
/* 005340 80005790 03E00008 */  jr          $ra
/* 005344 80005794 24020001 */   addiu      $v0, $zero, 0x1
.L80005798:
/* 005348 80005798 03E00008 */  jr          $ra
/* 00534C 8000579C 00000000 */   nop

glabel func_800057A0 # 8
/* 005350 800057A0 03E00008 */  jr          $ra
/* 005354 800057A4 9082059C */   lbu        $v0, 0x59c($a0)

glabel func_800057A8 # 9
/* 005358 800057A8 44876000 */  mtc1        $a3, $f12
/* 00535C 800057AC 44866800 */  mtc1        $a2, $f13
/* 005360 800057B0 00001025 */  move        $v0, $zero
/* 005364 800057B4 03E00008 */  jr          $ra
/* 005368 800057B8 F48C0450 */   sdc1       $f12, 0x450($a0)

glabel func_800057BC # 10
/* 00536C 800057BC 03E00008 */  jr          $ra
/* 005370 800057C0 D4800450 */   ldc1       $f0, 0x450($a0)
/* 005374 800057C4 00000000 */  nop
/* 005378 800057C8 00000000 */  nop
/* 00537C 800057CC 00000000 */  nop
