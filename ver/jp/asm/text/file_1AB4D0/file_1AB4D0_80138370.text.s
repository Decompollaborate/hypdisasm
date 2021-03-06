.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80138370_1AB4D0 # 0
/* 000000 80138370 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 000004 80138374 AFB30020 */  sw          $s3, 0x20($sp)
/* 000008 80138378 AFB2001C */  sw          $s2, 0x1c($sp)
/* 00000C 8013837C AFB10018 */  sw          $s1, 0x18($sp)
/* 000010 80138380 AFBF0024 */  sw          $ra, 0x24($sp)
/* 000014 80138384 AFB00014 */  sw          $s0, 0x14($sp)
/* 000018 80138388 00008825 */  move        $s1, $zero
/* 00001C 8013838C 2412000A */  addiu       $s2, $zero, 0xa
/* 000020 80138390 24130002 */  addiu       $s3, $zero, 0x2
/* 000024 80138394 00008025 */  move        $s0, $zero
.L80138398:
/* 000028 80138398 02202025 */  move        $a0, $s1
.L8013839C:
/* 00002C 8013839C 0C00B372 */  jal         func_8002CDC8
/* 000030 801383A0 02002825 */   move       $a1, $s0
/* 000034 801383A4 10400003 */  beqz        $v0, .L801383B4
/* 000038 801383A8 00402025 */   move       $a0, $v0
/* 00003C 801383AC 0C045C6A */  jal         func_801171A8
/* 000040 801383B0 00000000 */   nop
.L801383B4:
/* 000044 801383B4 26100001 */  addiu       $s0, $s0, 0x1
/* 000048 801383B8 1612FFF8 */  bne         $s0, $s2, .L8013839C
/* 00004C 801383BC 02202025 */   move       $a0, $s1
/* 000050 801383C0 26310001 */  addiu       $s1, $s1, 0x1
/* 000054 801383C4 1633FFF4 */  bne         $s1, $s3, .L80138398
/* 000058 801383C8 00008025 */   move       $s0, $zero
/* 00005C 801383CC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 000060 801383D0 8FB00014 */  lw          $s0, 0x14($sp)
/* 000064 801383D4 8FB10018 */  lw          $s1, 0x18($sp)
/* 000068 801383D8 8FB2001C */  lw          $s2, 0x1c($sp)
/* 00006C 801383DC 8FB30020 */  lw          $s3, 0x20($sp)
/* 000070 801383E0 03E00008 */  jr          $ra
/* 000074 801383E4 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_801383E8_1AB4D0 # 1
/* 000078 801383E8 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 00007C 801383EC AFBF0034 */  sw          $ra, 0x34($sp)
/* 000080 801383F0 AFB00030 */  sw          $s0, 0x30($sp)
/* 000084 801383F4 AFA40060 */  sw          $a0, 0x60($sp)
/* 000088 801383F8 00A08025 */  move        $s0, $a1
/* 00008C 801383FC 0C00C14B */  jal         func_8003052C
/* 000090 80138400 24A40077 */   addiu      $a0, $a1, 0x77
/* 000094 80138404 AFA2005C */  sw          $v0, 0x5c($sp)
/* 000098 80138408 0C00C14B */  jal         func_8003052C
/* 00009C 8013840C 2604007C */   addiu      $a0, $s0, 0x7c
/* 0000A0 80138410 260E0005 */  addiu       $t6, $s0, 0x5
/* 0000A4 80138414 AFA20058 */  sw          $v0, 0x58($sp)
/* 0000A8 80138418 AFAE0054 */  sw          $t6, 0x54($sp)
/* 0000AC 8013841C 0C00C14B */  jal         func_8003052C
/* 0000B0 80138420 26040081 */   addiu      $a0, $s0, 0x81
/* 0000B4 80138424 0C00A217 */  jal         func_8002885C
/* 0000B8 80138428 AFA20050 */   sw         $v0, 0x50($sp)
/* 0000BC 8013842C 24010004 */  addiu       $at, $zero, 0x4
/* 0000C0 80138430 10410005 */  beq         $v0, $at, .L80138448
/* 0000C4 80138434 3C188015 */   lui        $t8, %hi(D_8014CD4C)
/* 0000C8 80138438 3C0F8015 */  lui         $t7, %hi(D_8014CA5C)
/* 0000CC 8013843C 25EFCA5C */  addiu       $t7, $t7, %lo(D_8014CA5C)
/* 0000D0 80138440 10000003 */  b           .L80138450
/* 0000D4 80138444 AFAF0048 */   sw         $t7, 0x48($sp)
.L80138448:
/* 0000D8 80138448 2718CD4C */  addiu       $t8, $t8, %lo(D_8014CD4C)
/* 0000DC 8013844C AFB80048 */  sw          $t8, 0x48($sp)
.L80138450:
/* 0000E0 80138450 44902000 */  mtc1        $s0, $f4
/* 0000E4 80138454 3C014270 */  lui         $at, 0x4270
/* 0000E8 80138458 468021A0 */  cvt.s.w     $f6, $f4
/* 0000EC 8013845C 44814000 */  mtc1        $at, $f8
/* 0000F0 80138460 3C01C307 */  lui         $at, 0xc307
/* 0000F4 80138464 46083282 */  mul.s       $f10, $f6, $f8
/* 0000F8 80138468 44818000 */  mtc1        $at, $f16
/* 0000FC 8013846C 00000000 */  nop
/* 000100 80138470 460A8301 */  sub.s       $f12, $f16, $f10
/* 000104 80138474 0C00EB2F */  jal         func_8003ACBC
/* 000108 80138478 E7AC0038 */   swc1       $f12, 0x38($sp)
/* 00010C 8013847C C7AC0038 */  lwc1        $f12, 0x38($sp)
/* 000110 80138480 0C00EB6C */  jal         func_8003ADB0
/* 000114 80138484 E7A0003C */   swc1       $f0, 0x3c($sp)
/* 000118 80138488 3C018015 */  lui         $at, %hi(D_8014F23C)
/* 00011C 8013848C C42CF23C */  lwc1        $f12, %lo(D_8014F23C)($at)
/* 000120 80138490 8FA5005C */  lw          $a1, 0x5c($sp)
/* 000124 80138494 0C003160 */  jal         func_8000C580
/* 000128 80138498 E7A00040 */   swc1       $f0, 0x40($sp)
/* 00012C 8013849C 3C014100 */  lui         $at, 0x4100
/* 000130 801384A0 44816000 */  mtc1        $at, $f12
/* 000134 801384A4 C7B2003C */  lwc1        $f18, 0x3c($sp)
/* 000138 801384A8 8FA20060 */  lw          $v0, 0x60($sp)
/* 00013C 801384AC 460C9102 */  mul.s       $f4, $f18, $f12
/* 000140 801384B0 C7B00040 */  lwc1        $f16, 0x40($sp)
/* 000144 801384B4 C4460000 */  lwc1        $f6, 0x0($v0)
/* 000148 801384B8 C4520008 */  lwc1        $f18, 0x8($v0)
/* 00014C 801384BC 460C8282 */  mul.s       $f10, $f16, $f12
/* 000150 801384C0 46062200 */  add.s       $f8, $f4, $f6
/* 000154 801384C4 3C014334 */  lui         $at, 0x4334
/* 000158 801384C8 44054000 */  mfc1        $a1, $f8
/* 00015C 801384CC C7A80038 */  lwc1        $f8, 0x38($sp)
/* 000160 801384D0 44818000 */  mtc1        $at, $f16
/* 000164 801384D4 46125100 */  add.s       $f4, $f10, $f18
/* 000168 801384D8 44803000 */  mtc1        $zero, $f6
/* 00016C 801384DC 46104280 */  add.s       $f10, $f8, $f16
/* 000170 801384E0 3C198013 */  lui         $t9, %hi(D_80137EE4)
/* 000174 801384E4 8C460004 */  lw          $a2, 0x4($v0)
/* 000178 801384E8 8F397EE4 */  lw          $t9, %lo(D_80137EE4)($t9)
/* 00017C 801384EC E7AA0014 */  swc1        $f10, 0x14($sp)
/* 000180 801384F0 E7A60010 */  swc1        $f6, 0x10($sp)
/* 000184 801384F4 C732000C */  lwc1        $f18, 0xc($t9)
/* 000188 801384F8 8FA80048 */  lw          $t0, 0x48($sp)
/* 00018C 801384FC 46120082 */  mul.s       $f2, $f0, $f18
/* 000190 80138500 44072000 */  mfc1        $a3, $f4
/* 000194 80138504 AFB00020 */  sw          $s0, 0x20($sp)
/* 000198 80138508 24040008 */  addiu       $a0, $zero, 0x8
/* 00019C 8013850C 46021100 */  add.s       $f4, $f2, $f2
/* 0001A0 80138510 AFA8001C */  sw          $t0, 0x1c($sp)
/* 0001A4 80138514 0C007179 */  jal         func_8001C5E4
/* 0001A8 80138518 E7A40018 */   swc1       $f4, 0x18($sp)
/* 0001AC 8013851C 0C00A217 */  jal         func_8002885C
/* 0001B0 80138520 00000000 */   nop
/* 0001B4 80138524 24010004 */  addiu       $at, $zero, 0x4
/* 0001B8 80138528 10410031 */  beq         $v0, $at, .L801385F0
/* 0001BC 8013852C 8FBF0034 */   lw         $ra, 0x34($sp)
/* 0001C0 80138530 8FA90058 */  lw          $t1, 0x58($sp)
/* 0001C4 80138534 24040009 */  addiu       $a0, $zero, 0x9
/* 0001C8 80138538 19200014 */  blez        $t1, .L8013858C
/* 0001CC 8013853C 00105100 */   sll        $t2, $s0, 4
/* 0001D0 80138540 3C0B8015 */  lui         $t3, %hi(D_8014D83C)
/* 0001D4 80138544 256BD83C */  addiu       $t3, $t3, %lo(D_8014D83C)
/* 0001D8 80138548 014B1021 */  addu        $v0, $t2, $t3
/* 0001DC 8013854C C448000C */  lwc1        $f8, 0xc($v0)
/* 0001E0 80138550 44803000 */  mtc1        $zero, $f6
/* 0001E4 80138554 3C0C8013 */  lui         $t4, %hi(D_80137EE4)
/* 0001E8 80138558 8D8C7EE4 */  lw          $t4, %lo(D_80137EE4)($t4)
/* 0001EC 8013855C E7A80014 */  swc1        $f8, 0x14($sp)
/* 0001F0 80138560 E7A60010 */  swc1        $f6, 0x10($sp)
/* 0001F4 80138564 C590000C */  lwc1        $f16, 0xc($t4)
/* 0001F8 80138568 3C0D8015 */  lui         $t5, %hi(D_8014D110)
/* 0001FC 8013856C 25ADD110 */  addiu       $t5, $t5, %lo(D_8014D110)
/* 000200 80138570 8C450000 */  lw          $a1, 0x0($v0)
/* 000204 80138574 8C460004 */  lw          $a2, 0x4($v0)
/* 000208 80138578 8C470008 */  lw          $a3, 0x8($v0)
/* 00020C 8013857C AFAD001C */  sw          $t5, 0x1c($sp)
/* 000210 80138580 AFB00020 */  sw          $s0, 0x20($sp)
/* 000214 80138584 0C007179 */  jal         func_8001C5E4
/* 000218 80138588 E7B00018 */   swc1       $f16, 0x18($sp)
.L8013858C:
/* 00021C 8013858C 8FAE0050 */  lw          $t6, 0x50($sp)
/* 000220 80138590 8FA30054 */  lw          $v1, 0x54($sp)
/* 000224 80138594 19C00015 */  blez        $t6, .L801385EC
/* 000228 80138598 24040009 */   addiu      $a0, $zero, 0x9
/* 00022C 8013859C 3C188015 */  lui         $t8, %hi(D_8014D83C)
/* 000230 801385A0 2718D83C */  addiu       $t8, $t8, %lo(D_8014D83C)
/* 000234 801385A4 00037900 */  sll         $t7, $v1, 4
/* 000238 801385A8 01F81021 */  addu        $v0, $t7, $t8
/* 00023C 801385AC C452000C */  lwc1        $f18, 0xc($v0)
/* 000240 801385B0 44805000 */  mtc1        $zero, $f10
/* 000244 801385B4 3C198013 */  lui         $t9, %hi(D_80137EE4)
/* 000248 801385B8 8F397EE4 */  lw          $t9, %lo(D_80137EE4)($t9)
/* 00024C 801385BC E7B20014 */  swc1        $f18, 0x14($sp)
/* 000250 801385C0 E7AA0010 */  swc1        $f10, 0x10($sp)
/* 000254 801385C4 C724000C */  lwc1        $f4, 0xc($t9)
/* 000258 801385C8 3C088015 */  lui         $t0, %hi(D_8014D110)
/* 00025C 801385CC 2508D110 */  addiu       $t0, $t0, %lo(D_8014D110)
/* 000260 801385D0 8C450000 */  lw          $a1, 0x0($v0)
/* 000264 801385D4 8C460004 */  lw          $a2, 0x4($v0)
/* 000268 801385D8 8C470008 */  lw          $a3, 0x8($v0)
/* 00026C 801385DC AFA8001C */  sw          $t0, 0x1c($sp)
/* 000270 801385E0 AFA30020 */  sw          $v1, 0x20($sp)
/* 000274 801385E4 0C007179 */  jal         func_8001C5E4
/* 000278 801385E8 E7A40018 */   swc1       $f4, 0x18($sp)
.L801385EC:
/* 00027C 801385EC 8FBF0034 */  lw          $ra, 0x34($sp)
.L801385F0:
/* 000280 801385F0 8FB00030 */  lw          $s0, 0x30($sp)
/* 000284 801385F4 03E00008 */  jr          $ra
/* 000288 801385F8 27BD0060 */   addiu      $sp, $sp, 0x60

glabel func_801385FC_1AB4D0 # 2
/* 00028C 801385FC 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 000290 80138600 E7B80044 */  swc1        $f24, 0x44($sp)
/* 000294 80138604 3C014317 */  lui         $at, 0x4317
/* 000298 80138608 4481C000 */  mtc1        $at, $f24
/* 00029C 8013860C E7B6003C */  swc1        $f22, 0x3c($sp)
/* 0002A0 80138610 3C013FA0 */  lui         $at, 0x3fa0
/* 0002A4 80138614 4481B000 */  mtc1        $at, $f22
/* 0002A8 80138618 E7B40034 */  swc1        $f20, 0x34($sp)
/* 0002AC 8013861C 3C014322 */  lui         $at, 0x4322
/* 0002B0 80138620 AFB20050 */  sw          $s2, 0x50($sp)
/* 0002B4 80138624 AFB1004C */  sw          $s1, 0x4c($sp)
/* 0002B8 80138628 AFB00048 */  sw          $s0, 0x48($sp)
/* 0002BC 8013862C 4481A000 */  mtc1        $at, $f20
/* 0002C0 80138630 AFBF0054 */  sw          $ra, 0x54($sp)
/* 0002C4 80138634 E7B90040 */  swc1        $f25, 0x40($sp)
/* 0002C8 80138638 E7B70038 */  swc1        $f23, 0x38($sp)
/* 0002CC 8013863C E7B50030 */  swc1        $f21, 0x30($sp)
/* 0002D0 80138640 00008025 */  move        $s0, $zero
/* 0002D4 80138644 27B10058 */  addiu       $s1, $sp, 0x58
/* 0002D8 80138648 24120005 */  addiu       $s2, $zero, 0x5
.L8013864C:
/* 0002DC 8013864C E7B40058 */  swc1        $f20, 0x58($sp)
/* 0002E0 80138650 E7B6005C */  swc1        $f22, 0x5c($sp)
/* 0002E4 80138654 E7B80060 */  swc1        $f24, 0x60($sp)
/* 0002E8 80138658 02202025 */  move        $a0, $s1
/* 0002EC 8013865C 0C04E0FA */  jal         func_801383E8_1AB4D0
/* 0002F0 80138660 02002825 */   move       $a1, $s0
/* 0002F4 80138664 26100001 */  addiu       $s0, $s0, 0x1
/* 0002F8 80138668 1612FFF8 */  bne         $s0, $s2, .L8013864C
/* 0002FC 8013866C 00000000 */   nop
/* 000300 80138670 0C00A217 */  jal         func_8002885C
/* 000304 80138674 00000000 */   nop
/* 000308 80138678 24010004 */  addiu       $at, $zero, 0x4
/* 00030C 8013867C 10410028 */  beq         $v0, $at, .L80138720
/* 000310 80138680 2404000E */   addiu      $a0, $zero, 0xe
/* 000314 80138684 3C018015 */  lui         $at, %hi(D_8014F240)
/* 000318 80138688 C426F240 */  lwc1        $f6, %lo(D_8014F240)($at)
/* 00031C 8013868C 44802000 */  mtc1        $zero, $f4
/* 000320 80138690 3C0E8013 */  lui         $t6, %hi(D_80137EE4)
/* 000324 80138694 8DCE7EE4 */  lw          $t6, %lo(D_80137EE4)($t6)
/* 000328 80138698 E7A60014 */  swc1        $f6, 0x14($sp)
/* 00032C 8013869C E7A40010 */  swc1        $f4, 0x10($sp)
/* 000330 801386A0 C5C8000C */  lwc1        $f8, 0xc($t6)
/* 000334 801386A4 3C0F8015 */  lui         $t7, %hi(D_8014D828)
/* 000338 801386A8 25EFD828 */  addiu       $t7, $t7, %lo(D_8014D828)
/* 00033C 801386AC AFAF001C */  sw          $t7, 0x1c($sp)
/* 000340 801386B0 AFA00020 */  sw          $zero, 0x20($sp)
/* 000344 801386B4 3C054320 */  lui         $a1, 0x4320
/* 000348 801386B8 3C0640A0 */  lui         $a2, 0x40a0
/* 00034C 801386BC 3C074311 */  lui         $a3, 0x4311
/* 000350 801386C0 0C007179 */  jal         func_8001C5E4
/* 000354 801386C4 E7A80018 */   swc1       $f8, 0x18($sp)
/* 000358 801386C8 3C048015 */  lui         $a0, %hi(D_8014D8DC)
/* 00035C 801386CC 3C068015 */  lui         $a2, %hi(D_8014DD58)
/* 000360 801386D0 24C6DD58 */  addiu       $a2, $a2, %lo(D_8014DD58)
/* 000364 801386D4 2484D8DC */  addiu       $a0, $a0, %lo(D_8014D8DC)
/* 000368 801386D8 2405005B */  addiu       $a1, $zero, 0x5b
/* 00036C 801386DC 0C0447E0 */  jal         func_80111F80
/* 000370 801386E0 3C073F00 */   lui        $a3, 0x3f00
/* 000374 801386E4 4406C000 */  mfc1        $a2, $f24
/* 000378 801386E8 4600A306 */  mov.s       $f12, $f20
/* 00037C 801386EC 4600B386 */  mov.s       $f14, $f22
/* 000380 801386F0 0C00754C */  jal         func_8001D530
/* 000384 801386F4 2407008D */   addiu      $a3, $zero, 0x8d
/* 000388 801386F8 3C018015 */  lui         $at, %hi(D_8014F244)
/* 00038C 801386FC C42CF244 */  lwc1        $f12, %lo(D_8014F244)($at)
/* 000390 80138700 3C018015 */  lui         $at, %hi(D_8014F248)
/* 000394 80138704 C42EF248 */  lwc1        $f14, %lo(D_8014F248)($at)
/* 000398 80138708 3C06432F */  lui         $a2, (0x432F451F >> 16)
/* 00039C 8013870C 34C6451F */  ori         $a2, $a2, (0x432F451F & 0xFFFF)
/* 0003A0 80138710 0C00754C */  jal         func_8001D530
/* 0003A4 80138714 2407008E */   addiu      $a3, $zero, 0x8e
/* 0003A8 80138718 10000004 */  b           .L8013872C
/* 0003AC 8013871C 8FBF0054 */   lw         $ra, 0x54($sp)
.L80138720:
/* 0003B0 80138720 0C04E0DC */  jal         func_80138370_1AB4D0
/* 0003B4 80138724 00000000 */   nop
/* 0003B8 80138728 8FBF0054 */  lw          $ra, 0x54($sp)
.L8013872C:
/* 0003BC 8013872C C7B50030 */  lwc1        $f21, 0x30($sp)
/* 0003C0 80138730 C7B40034 */  lwc1        $f20, 0x34($sp)
/* 0003C4 80138734 C7B70038 */  lwc1        $f23, 0x38($sp)
/* 0003C8 80138738 C7B6003C */  lwc1        $f22, 0x3c($sp)
/* 0003CC 8013873C C7B90040 */  lwc1        $f25, 0x40($sp)
/* 0003D0 80138740 C7B80044 */  lwc1        $f24, 0x44($sp)
/* 0003D4 80138744 8FB00048 */  lw          $s0, 0x48($sp)
/* 0003D8 80138748 8FB1004C */  lw          $s1, 0x4c($sp)
/* 0003DC 8013874C 8FB20050 */  lw          $s2, 0x50($sp)
/* 0003E0 80138750 03E00008 */  jr          $ra
/* 0003E4 80138754 27BD0068 */   addiu      $sp, $sp, 0x68

glabel func_80138758_1AB4D0 # 3
/* 0003E8 80138758 3C014014 */  lui         $at, 0x4014
/* 0003EC 8013875C 44813800 */  mtc1        $at, $f7
/* 0003F0 80138760 44803000 */  mtc1        $zero, $f6
/* 0003F4 80138764 46007121 */  cvt.d.s     $f4, $f14
/* 0003F8 80138768 00000000 */  nop
/* 0003FC 8013876C 46262203 */  div.d       $f8, $f4, $f6
/* 000400 80138770 AFA60008 */  sw          $a2, 0x8($sp)
/* 000404 80138774 444EF800 */  cfc1        $t6, FpcCsr
/* 000408 80138778 00000000 */  nop
/* 00040C 8013877C 35C10003 */  ori         $at, $t6, 0x3
/* 000410 80138780 38210002 */  xori        $at, $at, 0x2
/* 000414 80138784 44C1F800 */  ctc1        $at, FpcCsr
/* 000418 80138788 00000000 */  nop
/* 00041C 8013878C 462042A4 */  cvt.w.d     $f10, $f8
/* 000420 80138790 44025000 */  mfc1        $v0, $f10
/* 000424 80138794 44CEF800 */  ctc1        $t6, FpcCsr
/* 000428 80138798 04400027 */  bltz        $v0, .L80138838
/* 00042C 8013879C 28410020 */   slti       $at, $v0, 0x20
/* 000430 801387A0 10200025 */  beqz        $at, .L80138838
/* 000434 801387A4 3C014024 */   lui        $at, 0x4024
/* 000438 801387A8 44810800 */  mtc1        $at, $f1
/* 00043C 801387AC 44800000 */  mtc1        $zero, $f0
/* 000440 801387B0 46006421 */  cvt.d.s     $f16, $f12
/* 000444 801387B4 00000000 */  nop
/* 000448 801387B8 46208483 */  div.d       $f18, $f16, $f0
/* 00044C 801387BC 444FF800 */  cfc1        $t7, FpcCsr
/* 000450 801387C0 00000000 */  nop
/* 000454 801387C4 35E10003 */  ori         $at, $t7, 0x3
/* 000458 801387C8 38210002 */  xori        $at, $at, 0x2
/* 00045C 801387CC 44C1F800 */  ctc1        $at, FpcCsr
/* 000460 801387D0 00000000 */  nop
/* 000464 801387D4 46209124 */  cvt.w.d     $f4, $f18
/* 000468 801387D8 44032000 */  mfc1        $v1, $f4
/* 00046C 801387DC 44CFF800 */  ctc1        $t7, FpcCsr
/* 000470 801387E0 04600015 */  bltz        $v1, .L80138838
/* 000474 801387E4 28610020 */   slti       $at, $v1, 0x20
/* 000478 801387E8 10200013 */  beqz        $at, .L80138838
/* 00047C 801387EC 00000000 */   nop
/* 000480 801387F0 C7A60008 */  lwc1        $f6, 0x8($sp)
/* 000484 801387F4 00000000 */  nop
/* 000488 801387F8 46003221 */  cvt.d.s     $f8, $f6
/* 00048C 801387FC 00000000 */  nop
/* 000490 80138800 46204283 */  div.d       $f10, $f8, $f0
/* 000494 80138804 4458F800 */  cfc1        $t8, FpcCsr
/* 000498 80138808 00000000 */  nop
/* 00049C 8013880C 37010003 */  ori         $at, $t8, 0x3
/* 0004A0 80138810 38210002 */  xori        $at, $at, 0x2
/* 0004A4 80138814 44C1F800 */  ctc1        $at, FpcCsr
/* 0004A8 80138818 00000000 */  nop
/* 0004AC 8013881C 46205424 */  cvt.w.d     $f16, $f10
/* 0004B0 80138820 44048000 */  mfc1        $a0, $f16
/* 0004B4 80138824 44D8F800 */  ctc1        $t8, FpcCsr
/* 0004B8 80138828 04800003 */  bltz        $a0, .L80138838
/* 0004BC 8013882C 28810020 */   slti       $at, $a0, 0x20
/* 0004C0 80138830 14200003 */  bnez        $at, .L80138840
/* 0004C4 80138834 0002C880 */   sll        $t9, $v0, 2
.L80138838:
/* 0004C8 80138838 03E00008 */  jr          $ra
/* 0004CC 8013883C 00001025 */   move       $v0, $zero
.L80138840:
/* 0004D0 80138840 3C058016 */  lui         $a1, %hi(D_801658A0)
/* 0004D4 80138844 00B92821 */  addu        $a1, $a1, $t9
/* 0004D8 80138848 8CA558A0 */  lw          $a1, %lo(D_801658A0)($a1)
/* 0004DC 8013884C 000449C0 */  sll         $t1, $a0, 7
/* 0004E0 80138850 14A00003 */  bnez        $a1, .L80138860
/* 0004E4 80138854 00A95021 */   addu       $t2, $a1, $t1
/* 0004E8 80138858 03E00008 */  jr          $ra
/* 0004EC 8013885C 00001025 */   move       $v0, $zero
.L80138860:
/* 0004F0 80138860 00035880 */  sll         $t3, $v1, 2
/* 0004F4 80138864 014B6021 */  addu        $t4, $t2, $t3
/* 0004F8 80138868 8D820000 */  lw          $v0, 0x0($t4)
/* 0004FC 8013886C 00000000 */  nop
/* 000500 80138870 03E00008 */  jr          $ra
/* 000504 80138874 00000000 */   nop
/* 000508 80138878 00000000 */  nop
/* 00050C 8013887C 00000000 */  nop
