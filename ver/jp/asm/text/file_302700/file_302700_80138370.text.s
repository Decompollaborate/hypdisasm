.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80138370_302700 # 0
/* 000000 80138370 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000004 80138374 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000008 80138378 0C00C14B */  jal         func_8003052C
/* 00000C 8013837C 24040056 */   addiu      $a0, $zero, 0x56
/* 000010 80138380 1040005F */  beqz        $v0, .L80138500
/* 000014 80138384 24010001 */   addiu      $at, $zero, 0x1
/* 000018 80138388 10410048 */  beq         $v0, $at, .L801384AC
/* 00001C 8013838C 24010002 */   addiu      $at, $zero, 0x2
/* 000020 80138390 10410033 */  beq         $v0, $at, .L80138460
/* 000024 80138394 3C0142C8 */   lui        $at, 0x42c8
/* 000028 80138398 0C00C14B */  jal         func_8003052C
/* 00002C 8013839C 24040016 */   addiu      $a0, $zero, 0x16
/* 000030 801383A0 10400017 */  beqz        $v0, .L80138400
/* 000034 801383A4 3C0142B4 */   lui        $at, 0x42b4
/* 000038 801383A8 0C00E500 */  jal         func_80039400
/* 00003C 801383AC 24040003 */   addiu      $a0, $zero, 0x3
/* 000040 801383B0 14400012 */  bnez        $v0, .L801383FC
/* 000044 801383B4 3C018014 */   lui        $at, %hi(D_80142904)
/* 000048 801383B8 C42C2904 */  lwc1        $f12, %lo(D_80142904)($at)
/* 00004C 801383BC 3C014192 */  lui         $at, 0x4192
/* 000050 801383C0 44817000 */  mtc1        $at, $f14
/* 000054 801383C4 3C0142B4 */  lui         $at, 0x42b4
/* 000058 801383C8 44812000 */  mtc1        $at, $f4
/* 00005C 801383CC 3C0E8014 */  lui         $t6, %hi(D_80141D14)
/* 000060 801383D0 25CE1D14 */  addiu       $t6, $t6, %lo(D_80141D14)
/* 000064 801383D4 3C064315 */  lui         $a2, 0x4315
/* 000068 801383D8 240F0003 */  addiu       $t7, $zero, 0x3
/* 00006C 801383DC AFAF0018 */  sw          $t7, 0x18($sp)
/* 000070 801383E0 34C68000 */  ori         $a2, $a2, 0x8000
/* 000074 801383E4 AFAE0014 */  sw          $t6, 0x14($sp)
/* 000078 801383E8 24070000 */  addiu       $a3, $zero, 0x0
/* 00007C 801383EC 0C0072E3 */  jal         func_8001CB8C
/* 000080 801383F0 E7A40010 */   swc1       $f4, 0x10($sp)
/* 000084 801383F4 1000001A */  b           .L80138460
/* 000088 801383F8 3C0142C8 */   lui        $at, 0x42c8
.L801383FC:
/* 00008C 801383FC 3C0142B4 */  lui         $at, 0x42b4
.L80138400:
/* 000090 80138400 44814000 */  mtc1        $at, $f8
/* 000094 80138404 44803000 */  mtc1        $zero, $f6
/* 000098 80138408 3C188013 */  lui         $t8, %hi(D_80137EE4)
/* 00009C 8013840C 8F187EE4 */  lw          $t8, %lo(D_80137EE4)($t8)
/* 0000A0 80138410 3C013FC0 */  lui         $at, 0x3fc0
/* 0000A4 80138414 E7A80014 */  swc1        $f8, 0x14($sp)
/* 0000A8 80138418 E7A60010 */  swc1        $f6, 0x10($sp)
/* 0000AC 8013841C 44818000 */  mtc1        $at, $f16
/* 0000B0 80138420 C70A000C */  lwc1        $f10, 0xc($t8)
/* 0000B4 80138424 3C198014 */  lui         $t9, %hi(D_80141D14)
/* 0000B8 80138428 46105482 */  mul.s       $f18, $f10, $f16
/* 0000BC 8013842C 27391D14 */  addiu       $t9, $t9, %lo(D_80141D14)
/* 0000C0 80138430 3C054340 */  lui         $a1, 0x4340
/* 0000C4 80138434 3C074315 */  lui         $a3, 0x4315
/* 0000C8 80138438 24080003 */  addiu       $t0, $zero, 0x3
/* 0000CC 8013843C AFA80020 */  sw          $t0, 0x20($sp)
/* 0000D0 80138440 34E78000 */  ori         $a3, $a3, 0x8000
/* 0000D4 80138444 34A58000 */  ori         $a1, $a1, 0x8000
/* 0000D8 80138448 AFB9001C */  sw          $t9, 0x1c($sp)
/* 0000DC 8013844C E7B20018 */  swc1        $f18, 0x18($sp)
/* 0000E0 80138450 2404000C */  addiu       $a0, $zero, 0xc
/* 0000E4 80138454 0C007179 */  jal         func_8001C5E4
/* 0000E8 80138458 3C064192 */   lui        $a2, 0x4192
/* 0000EC 8013845C 3C0142C8 */  lui         $at, 0x42c8
.L80138460:
/* 0000F0 80138460 44813000 */  mtc1        $at, $f6
/* 0000F4 80138464 44802000 */  mtc1        $zero, $f4
/* 0000F8 80138468 3C098013 */  lui         $t1, %hi(D_80137EE4)
/* 0000FC 8013846C 8D297EE4 */  lw          $t1, %lo(D_80137EE4)($t1)
/* 000100 80138470 E7A60014 */  swc1        $f6, 0x14($sp)
/* 000104 80138474 E7A40010 */  swc1        $f4, 0x10($sp)
/* 000108 80138478 C528000C */  lwc1        $f8, 0xc($t1)
/* 00010C 8013847C 3C0A8014 */  lui         $t2, %hi(D_80141D14)
/* 000110 80138480 254A1D14 */  addiu       $t2, $t2, %lo(D_80141D14)
/* 000114 80138484 3C05433B */  lui         $a1, 0x433b
/* 000118 80138488 240B0002 */  addiu       $t3, $zero, 0x2
/* 00011C 8013848C AFAB0020 */  sw          $t3, 0x20($sp)
/* 000120 80138490 34A58000 */  ori         $a1, $a1, 0x8000
/* 000124 80138494 AFAA001C */  sw          $t2, 0x1c($sp)
/* 000128 80138498 24040003 */  addiu       $a0, $zero, 0x3
/* 00012C 8013849C 3C064192 */  lui         $a2, 0x4192
/* 000130 801384A0 3C074324 */  lui         $a3, 0x4324
/* 000134 801384A4 0C007179 */  jal         func_8001C5E4
/* 000138 801384A8 E7A80018 */   swc1       $f8, 0x18($sp)
.L801384AC:
/* 00013C 801384AC 3C0142C8 */  lui         $at, 0x42c8
/* 000140 801384B0 44818000 */  mtc1        $at, $f16
/* 000144 801384B4 44805000 */  mtc1        $zero, $f10
/* 000148 801384B8 3C0C8013 */  lui         $t4, %hi(D_80137EE4)
/* 00014C 801384BC 8D8C7EE4 */  lw          $t4, %lo(D_80137EE4)($t4)
/* 000150 801384C0 E7B00014 */  swc1        $f16, 0x14($sp)
/* 000154 801384C4 E7AA0010 */  swc1        $f10, 0x10($sp)
/* 000158 801384C8 C592000C */  lwc1        $f18, 0xc($t4)
/* 00015C 801384CC 3C0D8014 */  lui         $t5, %hi(D_80141D14)
/* 000160 801384D0 25AD1D14 */  addiu       $t5, $t5, %lo(D_80141D14)
/* 000164 801384D4 3C054335 */  lui         $a1, 0x4335
/* 000168 801384D8 3C074324 */  lui         $a3, 0x4324
/* 00016C 801384DC 240E0001 */  addiu       $t6, $zero, 0x1
/* 000170 801384E0 AFAE0020 */  sw          $t6, 0x20($sp)
/* 000174 801384E4 34E78000 */  ori         $a3, $a3, 0x8000
/* 000178 801384E8 34A58000 */  ori         $a1, $a1, 0x8000
/* 00017C 801384EC AFAD001C */  sw          $t5, 0x1c($sp)
/* 000180 801384F0 24040004 */  addiu       $a0, $zero, 0x4
/* 000184 801384F4 3C064192 */  lui         $a2, 0x4192
/* 000188 801384F8 0C007179 */  jal         func_8001C5E4
/* 00018C 801384FC E7B20018 */   swc1       $f18, 0x18($sp)
.L80138500:
/* 000190 80138500 44802000 */  mtc1        $zero, $f4
/* 000194 80138504 44803000 */  mtc1        $zero, $f6
/* 000198 80138508 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 00019C 8013850C 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 0001A0 80138510 E7A40010 */  swc1        $f4, 0x10($sp)
/* 0001A4 80138514 E7A60014 */  swc1        $f6, 0x14($sp)
/* 0001A8 80138518 C5E8000C */  lwc1        $f8, 0xc($t7)
/* 0001AC 8013851C 3C188014 */  lui         $t8, %hi(D_80141314)
/* 0001B0 80138520 27181314 */  addiu       $t8, $t8, %lo(D_80141314)
/* 0001B4 80138524 3C074310 */  lui         $a3, 0x4310
/* 0001B8 80138528 34E78000 */  ori         $a3, $a3, 0x8000
/* 0001BC 8013852C AFB8001C */  sw          $t8, 0x1c($sp)
/* 0001C0 80138530 AFA00020 */  sw          $zero, 0x20($sp)
/* 0001C4 80138534 24040001 */  addiu       $a0, $zero, 0x1
/* 0001C8 80138538 3C054328 */  lui         $a1, 0x4328
/* 0001CC 8013853C 3C064190 */  lui         $a2, 0x4190
/* 0001D0 80138540 0C007179 */  jal         func_8001C5E4
/* 0001D4 80138544 E7A80018 */   swc1       $f8, 0x18($sp)
/* 0001D8 80138548 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0001DC 8013854C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0001E0 80138550 03E00008 */  jr          $ra
/* 0001E4 80138554 00000000 */   nop

glabel func_80138558_302700 # 1
/* 0001E8 80138558 3C014034 */  lui         $at, 0x4034
/* 0001EC 8013855C 44810800 */  mtc1        $at, $f1
/* 0001F0 80138560 44800000 */  mtc1        $zero, $f0
/* 0001F4 80138564 46007121 */  cvt.d.s     $f4, $f14
/* 0001F8 80138568 00000000 */  nop
/* 0001FC 8013856C 46202183 */  div.d       $f6, $f4, $f0
/* 000200 80138570 AFA60008 */  sw          $a2, 0x8($sp)
/* 000204 80138574 444EF800 */  cfc1        $t6, $31
/* 000208 80138578 00000000 */  nop
/* 00020C 8013857C 35C10003 */  ori         $at, $t6, 0x3
/* 000210 80138580 38210002 */  xori        $at, $at, 0x2
/* 000214 80138584 44C1F800 */  ctc1        $at, $31
/* 000218 80138588 00000000 */  nop
/* 00021C 8013858C 46203224 */  cvt.w.d     $f8, $f6
/* 000220 80138590 44024000 */  mfc1        $v0, $f8
/* 000224 80138594 44CEF800 */  ctc1        $t6, $31
/* 000228 80138598 04400025 */  bltz        $v0, .L80138630
/* 00022C 8013859C 28410010 */   slti       $at, $v0, 0x10
/* 000230 801385A0 10200023 */  beqz        $at, .L80138630
/* 000234 801385A4 00000000 */   nop
/* 000238 801385A8 460062A1 */  cvt.d.s     $f10, $f12
/* 00023C 801385AC 00000000 */  nop
/* 000240 801385B0 46205403 */  div.d       $f16, $f10, $f0
/* 000244 801385B4 444FF800 */  cfc1        $t7, $31
/* 000248 801385B8 00000000 */  nop
/* 00024C 801385BC 35E10003 */  ori         $at, $t7, 0x3
/* 000250 801385C0 38210002 */  xori        $at, $at, 0x2
/* 000254 801385C4 44C1F800 */  ctc1        $at, $31
/* 000258 801385C8 00000000 */  nop
/* 00025C 801385CC 462084A4 */  cvt.w.d     $f18, $f16
/* 000260 801385D0 44039000 */  mfc1        $v1, $f18
/* 000264 801385D4 44CFF800 */  ctc1        $t7, $31
/* 000268 801385D8 04600015 */  bltz        $v1, .L80138630
/* 00026C 801385DC 28610010 */   slti       $at, $v1, 0x10
/* 000270 801385E0 10200013 */  beqz        $at, .L80138630
/* 000274 801385E4 00000000 */   nop
/* 000278 801385E8 C7A40008 */  lwc1        $f4, 0x8($sp)
/* 00027C 801385EC 00000000 */  nop
/* 000280 801385F0 460021A1 */  cvt.d.s     $f6, $f4
/* 000284 801385F4 00000000 */  nop
/* 000288 801385F8 46203203 */  div.d       $f8, $f6, $f0
/* 00028C 801385FC 4458F800 */  cfc1        $t8, $31
/* 000290 80138600 00000000 */  nop
/* 000294 80138604 37010003 */  ori         $at, $t8, 0x3
/* 000298 80138608 38210002 */  xori        $at, $at, 0x2
/* 00029C 8013860C 44C1F800 */  ctc1        $at, $31
/* 0002A0 80138610 00000000 */  nop
/* 0002A4 80138614 462042A4 */  cvt.w.d     $f10, $f8
/* 0002A8 80138618 44045000 */  mfc1        $a0, $f10
/* 0002AC 8013861C 44D8F800 */  ctc1        $t8, $31
/* 0002B0 80138620 04800003 */  bltz        $a0, .L80138630
/* 0002B4 80138624 28810010 */   slti       $at, $a0, 0x10
/* 0002B8 80138628 14200003 */  bnez        $at, .L80138638
/* 0002BC 8013862C 0002C880 */   sll        $t9, $v0, 2
.L80138630:
/* 0002C0 80138630 03E00008 */  jr          $ra
/* 0002C4 80138634 00001025 */   move       $v0, $zero
.L80138638:
/* 0002C8 80138638 3C058019 */  lui         $a1, %hi(D_8018A278)
/* 0002CC 8013863C 00B92821 */  addu        $a1, $a1, $t9
/* 0002D0 80138640 8CA5A278 */  lw          $a1, %lo(D_8018A278)($a1)
/* 0002D4 80138644 00044980 */  sll         $t1, $a0, 6
/* 0002D8 80138648 14A00003 */  bnez        $a1, .L80138658
/* 0002DC 8013864C 00A95021 */   addu       $t2, $a1, $t1
/* 0002E0 80138650 03E00008 */  jr          $ra
/* 0002E4 80138654 00001025 */   move       $v0, $zero
.L80138658:
/* 0002E8 80138658 00035880 */  sll         $t3, $v1, 2
/* 0002EC 8013865C 014B6021 */  addu        $t4, $t2, $t3
/* 0002F0 80138660 8D820000 */  lw          $v0, 0x0($t4)
/* 0002F4 80138664 00000000 */  nop
/* 0002F8 80138668 03E00008 */  jr          $ra
/* 0002FC 8013866C 00000000 */   nop