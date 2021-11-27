.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80051170 # 0
/* 050D20 80051170 AFA40000 */  sw          $a0, 0x0($sp)
/* 050D24 80051174 AFA50004 */  sw          $a1, 0x4($sp)
/* 050D28 80051178 AFA60008 */  sw          $a2, 0x8($sp)
/* 050D2C 8005117C AFA7000C */  sw          $a3, 0xc($sp)
/* 050D30 80051180 DFAF0008 */  ld          $t7, 0x8($sp)
/* 050D34 80051184 DFAE0000 */  ld          $t6, 0x0($sp)
/* 050D38 80051188 01EE1016 */  dsrlv       $v0, $t6, $t7
/* 050D3C 8005118C 0002183C */  dsll32      $v1, $v0, 0
/* 050D40 80051190 0003183F */  dsra32      $v1, $v1, 0
/* 050D44 80051194 03E00008 */  jr          $ra
/* 050D48 80051198 0002103F */   dsra32     $v0, $v0, 0

glabel func_8005119C # 1
/* 050D4C 8005119C AFA40000 */  sw          $a0, 0x0($sp)
/* 050D50 800511A0 AFA50004 */  sw          $a1, 0x4($sp)
/* 050D54 800511A4 AFA60008 */  sw          $a2, 0x8($sp)
/* 050D58 800511A8 AFA7000C */  sw          $a3, 0xc($sp)
/* 050D5C 800511AC DFAF0008 */  ld          $t7, 0x8($sp)
/* 050D60 800511B0 DFAE0000 */  ld          $t6, 0x0($sp)
/* 050D64 800511B4 01CF001F */  ddivu       $zero, $t6, $t7
/* 050D68 800511B8 15E00002 */  bnez        $t7, .L800511C4
/* 050D6C 800511BC 00000000 */   nop
/* 050D70 800511C0 0007000D */  break       7
.L800511C4:
/* 050D74 800511C4 00001010 */  mfhi        $v0
/* 050D78 800511C8 0002183C */  dsll32      $v1, $v0, 0
/* 050D7C 800511CC 0003183F */  dsra32      $v1, $v1, 0
/* 050D80 800511D0 03E00008 */  jr          $ra
/* 050D84 800511D4 0002103F */   dsra32     $v0, $v0, 0

glabel func_800511D8 # 2
/* 050D88 800511D8 AFA40000 */  sw          $a0, 0x0($sp)
/* 050D8C 800511DC AFA50004 */  sw          $a1, 0x4($sp)
/* 050D90 800511E0 AFA60008 */  sw          $a2, 0x8($sp)
/* 050D94 800511E4 AFA7000C */  sw          $a3, 0xc($sp)
/* 050D98 800511E8 DFAF0008 */  ld          $t7, 0x8($sp)
/* 050D9C 800511EC DFAE0000 */  ld          $t6, 0x0($sp)
/* 050DA0 800511F0 01CF001F */  ddivu       $zero, $t6, $t7
/* 050DA4 800511F4 15E00002 */  bnez        $t7, .L80051200
/* 050DA8 800511F8 00000000 */   nop
/* 050DAC 800511FC 0007000D */  break       7
.L80051200:
/* 050DB0 80051200 00001012 */  mflo        $v0
/* 050DB4 80051204 0002183C */  dsll32      $v1, $v0, 0
/* 050DB8 80051208 0003183F */  dsra32      $v1, $v1, 0
/* 050DBC 8005120C 03E00008 */  jr          $ra
/* 050DC0 80051210 0002103F */   dsra32     $v0, $v0, 0

glabel func_80051214 # 3
/* 050DC4 80051214 AFA40000 */  sw          $a0, 0x0($sp)
/* 050DC8 80051218 AFA50004 */  sw          $a1, 0x4($sp)
/* 050DCC 8005121C AFA60008 */  sw          $a2, 0x8($sp)
/* 050DD0 80051220 AFA7000C */  sw          $a3, 0xc($sp)
/* 050DD4 80051224 DFAF0008 */  ld          $t7, 0x8($sp)
/* 050DD8 80051228 DFAE0000 */  ld          $t6, 0x0($sp)
/* 050DDC 8005122C 01EE1014 */  dsllv       $v0, $t6, $t7
/* 050DE0 80051230 0002183C */  dsll32      $v1, $v0, 0
/* 050DE4 80051234 0003183F */  dsra32      $v1, $v1, 0
/* 050DE8 80051238 03E00008 */  jr          $ra
/* 050DEC 8005123C 0002103F */   dsra32     $v0, $v0, 0

glabel func_80051240 # 4
/* 050DF0 80051240 AFA40000 */  sw          $a0, 0x0($sp)
/* 050DF4 80051244 AFA50004 */  sw          $a1, 0x4($sp)
/* 050DF8 80051248 AFA60008 */  sw          $a2, 0x8($sp)
/* 050DFC 8005124C AFA7000C */  sw          $a3, 0xc($sp)
/* 050E00 80051250 DFAF0008 */  ld          $t7, 0x8($sp)
/* 050E04 80051254 DFAE0000 */  ld          $t6, 0x0($sp)
/* 050E08 80051258 01CF001F */  ddivu       $zero, $t6, $t7
/* 050E0C 8005125C 15E00002 */  bnez        $t7, .L80051268
/* 050E10 80051260 00000000 */   nop
/* 050E14 80051264 0007000D */  break       7
.L80051268:
/* 050E18 80051268 00001010 */  mfhi        $v0
/* 050E1C 8005126C 0002183C */  dsll32      $v1, $v0, 0
/* 050E20 80051270 0003183F */  dsra32      $v1, $v1, 0
/* 050E24 80051274 03E00008 */  jr          $ra
/* 050E28 80051278 0002103F */   dsra32     $v0, $v0, 0

glabel func_8005127C # 5
/* 050E2C 8005127C AFA40000 */  sw          $a0, 0x0($sp)
/* 050E30 80051280 AFA50004 */  sw          $a1, 0x4($sp)
/* 050E34 80051284 AFA60008 */  sw          $a2, 0x8($sp)
/* 050E38 80051288 AFA7000C */  sw          $a3, 0xc($sp)
/* 050E3C 8005128C DFAF0008 */  ld          $t7, 0x8($sp)
/* 050E40 80051290 DFAE0000 */  ld          $t6, 0x0($sp)
/* 050E44 80051294 01CF001E */  ddiv        $zero, $t6, $t7
/* 050E48 80051298 00000000 */  nop
/* 050E4C 8005129C 15E00002 */  bnez        $t7, .L800512A8
/* 050E50 800512A0 00000000 */   nop
/* 050E54 800512A4 0007000D */  break       7
.L800512A8:
/* 050E58 800512A8 6401FFFF */  daddiu      $at, $zero, -0x1
/* 050E5C 800512AC 15E10005 */  bne         $t7, $at, .L800512C4
/* 050E60 800512B0 64010001 */   daddiu     $at, $zero, 0x1
/* 050E64 800512B4 00010FFC */  dsll32      $at, $at, 31
/* 050E68 800512B8 15C10002 */  bne         $t6, $at, .L800512C4
/* 050E6C 800512BC 00000000 */   nop
/* 050E70 800512C0 0006000D */  break       6
.L800512C4:
/* 050E74 800512C4 00001012 */  mflo        $v0
/* 050E78 800512C8 0002183C */  dsll32      $v1, $v0, 0
/* 050E7C 800512CC 0003183F */  dsra32      $v1, $v1, 0
/* 050E80 800512D0 03E00008 */  jr          $ra
/* 050E84 800512D4 0002103F */   dsra32     $v0, $v0, 0

glabel func_800512D8 # 6
/* 050E88 800512D8 AFA40000 */  sw          $a0, 0x0($sp)
/* 050E8C 800512DC AFA50004 */  sw          $a1, 0x4($sp)
/* 050E90 800512E0 AFA60008 */  sw          $a2, 0x8($sp)
/* 050E94 800512E4 AFA7000C */  sw          $a3, 0xc($sp)
/* 050E98 800512E8 DFAF0008 */  ld          $t7, 0x8($sp)
/* 050E9C 800512EC DFAE0000 */  ld          $t6, 0x0($sp)
/* 050EA0 800512F0 01CF001D */  dmultu      $t6, $t7
/* 050EA4 800512F4 00001012 */  mflo        $v0
/* 050EA8 800512F8 0002183C */  dsll32      $v1, $v0, 0
/* 050EAC 800512FC 0003183F */  dsra32      $v1, $v1, 0
/* 050EB0 80051300 03E00008 */  jr          $ra
/* 050EB4 80051304 0002103F */   dsra32     $v0, $v0, 0

glabel func_80051308 # 7
/* 050EB8 80051308 87AF0012 */  lh          $t7, 0x12($sp)
/* 050EBC 8005130C AFA60008 */  sw          $a2, 0x8($sp)
/* 050EC0 80051310 AFA7000C */  sw          $a3, 0xc($sp)
/* 050EC4 80051314 DFAE0008 */  ld          $t6, 0x8($sp)
/* 050EC8 80051318 01E0C025 */  move        $t8, $t7
/* 050ECC 8005131C 0300C825 */  move        $t9, $t8
/* 050ED0 80051320 01D9001F */  ddivu       $zero, $t6, $t9
/* 050ED4 80051324 17200002 */  bnez        $t9, .L80051330
/* 050ED8 80051328 00000000 */   nop
/* 050EDC 8005132C 0007000D */  break       7
.L80051330:
/* 050EE0 80051330 00004012 */  mflo        $t0
/* 050EE4 80051334 FC880000 */  sd          $t0, 0x0($a0)
/* 050EE8 80051338 87AA0012 */  lh          $t2, 0x12($sp)
/* 050EEC 8005133C DFA90008 */  ld          $t1, 0x8($sp)
/* 050EF0 80051340 01405825 */  move        $t3, $t2
/* 050EF4 80051344 01606025 */  move        $t4, $t3
/* 050EF8 80051348 012C001F */  ddivu       $zero, $t1, $t4
/* 050EFC 8005134C 15800002 */  bnez        $t4, .L80051358
/* 050F00 80051350 00000000 */   nop
/* 050F04 80051354 0007000D */  break       7
.L80051358:
/* 050F08 80051358 00006810 */  mfhi        $t5
/* 050F0C 8005135C FCAD0000 */  sd          $t5, 0x0($a1)
/* 050F10 80051360 03E00008 */  jr          $ra
/* 050F14 80051364 00000000 */   nop

glabel func_80051368 # 8
/* 050F18 80051368 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 050F1C 8005136C AFA40008 */  sw          $a0, 0x8($sp)
/* 050F20 80051370 AFA5000C */  sw          $a1, 0xc($sp)
/* 050F24 80051374 AFA60010 */  sw          $a2, 0x10($sp)
/* 050F28 80051378 AFA70014 */  sw          $a3, 0x14($sp)
/* 050F2C 8005137C DFAF0010 */  ld          $t7, 0x10($sp)
/* 050F30 80051380 DFAE0008 */  ld          $t6, 0x8($sp)
/* 050F34 80051384 01CF001E */  ddiv        $zero, $t6, $t7
/* 050F38 80051388 00000000 */  nop
/* 050F3C 8005138C 15E00002 */  bnez        $t7, .L80051398
/* 050F40 80051390 00000000 */   nop
/* 050F44 80051394 0007000D */  break       7
.L80051398:
/* 050F48 80051398 6401FFFF */  daddiu      $at, $zero, -0x1
/* 050F4C 8005139C 15E10005 */  bne         $t7, $at, .L800513B4
/* 050F50 800513A0 64010001 */   daddiu     $at, $zero, 0x1
/* 050F54 800513A4 00010FFC */  dsll32      $at, $at, 31
/* 050F58 800513A8 15C10002 */  bne         $t6, $at, .L800513B4
/* 050F5C 800513AC 00000000 */   nop
/* 050F60 800513B0 0006000D */  break       6
.L800513B4:
/* 050F64 800513B4 0000C010 */  mfhi        $t8
/* 050F68 800513B8 FFB80000 */  sd          $t8, 0x0($sp)
/* 050F6C 800513BC 07010003 */  bgez        $t8, .L800513CC
/* 050F70 800513C0 00000000 */   nop
/* 050F74 800513C4 1DE00007 */  bgtz        $t7, .L800513E4
/* 050F78 800513C8 00000000 */   nop
.L800513CC:
/* 050F7C 800513CC DFB90000 */  ld          $t9, 0x0($sp)
/* 050F80 800513D0 1B200008 */  blez        $t9, .L800513F4
/* 050F84 800513D4 00000000 */   nop
/* 050F88 800513D8 DFA80010 */  ld          $t0, 0x10($sp)
/* 050F8C 800513DC 05010005 */  bgez        $t0, .L800513F4
/* 050F90 800513E0 00000000 */   nop
.L800513E4:
/* 050F94 800513E4 DFA90000 */  ld          $t1, 0x0($sp)
/* 050F98 800513E8 DFAA0010 */  ld          $t2, 0x10($sp)
/* 050F9C 800513EC 012A582D */  daddu       $t3, $t1, $t2
/* 050FA0 800513F0 FFAB0000 */  sd          $t3, 0x0($sp)
.L800513F4:
/* 050FA4 800513F4 8FA20000 */  lw          $v0, 0x0($sp)
/* 050FA8 800513F8 8FA30004 */  lw          $v1, 0x4($sp)
/* 050FAC 800513FC 03E00008 */  jr          $ra
/* 050FB0 80051400 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_80051404 # 9
/* 050FB4 80051404 AFA40000 */  sw          $a0, 0x0($sp)
/* 050FB8 80051408 AFA50004 */  sw          $a1, 0x4($sp)
/* 050FBC 8005140C AFA60008 */  sw          $a2, 0x8($sp)
/* 050FC0 80051410 AFA7000C */  sw          $a3, 0xc($sp)
/* 050FC4 80051414 DFAF0008 */  ld          $t7, 0x8($sp)
/* 050FC8 80051418 DFAE0000 */  ld          $t6, 0x0($sp)
/* 050FCC 8005141C 01EE1017 */  dsrav       $v0, $t6, $t7
/* 050FD0 80051420 0002183C */  dsll32      $v1, $v0, 0
/* 050FD4 80051424 0003183F */  dsra32      $v1, $v1, 0
/* 050FD8 80051428 03E00008 */  jr          $ra
/* 050FDC 8005142C 0002103F */   dsra32     $v0, $v0, 0

glabel func_80051430 # 10
/* 050FE0 80051430 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 050FE4 80051434 AFBF001C */  sw          $ra, 0x1c($sp)
/* 050FE8 80051438 E7AC0028 */  swc1        $f12, 0x28($sp)
/* 050FEC 8005143C 0C015594 */  jal         func_80055650
/* 050FF0 80051440 AFB00018 */   sw         $s0, 0x18($sp)
/* 050FF4 80051444 3C0E800A */  lui         $t6, %hi(D_800A4E14)
/* 050FF8 80051448 8DCE4E14 */  lw          $t6, %lo(D_800A4E14)($t6)
/* 050FFC 8005144C C7A40028 */  lwc1        $f4, 0x28($sp)
/* 051000 80051450 3C0F800A */  lui         $t7, %hi(D_800A4E14)
/* 051004 80051454 00408025 */  move        $s0, $v0
/* 051008 80051458 E5C40024 */  swc1        $f4, 0x24($t6)
/* 05100C 8005145C 8DEF4E14 */  lw          $t7, %lo(D_800A4E14)($t7)
/* 051010 80051460 02002025 */  move        $a0, $s0
/* 051014 80051464 95F80000 */  lhu         $t8, 0x0($t7)
/* 051018 80051468 37190004 */  ori         $t9, $t8, 0x4
/* 05101C 8005146C 0C01559C */  jal         func_80055670
/* 051020 80051470 A5F90000 */   sh         $t9, 0x0($t7)
/* 051024 80051474 8FBF001C */  lw          $ra, 0x1c($sp)
/* 051028 80051478 8FB00018 */  lw          $s0, 0x18($sp)
/* 05102C 8005147C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 051030 80051480 03E00008 */  jr          $ra
/* 051034 80051484 00000000 */   nop
/* 051038 80051488 00000000 */  nop
/* 05103C 8005148C 00000000 */  nop
