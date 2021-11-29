.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80138370_4EBA40 # 0
/* 000000 80138370 44800000 */  mtc1        $zero, $f0
/* 000004 80138374 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000008 80138378 3C0E8013 */  lui         $t6, %hi(D_80137EE4)
/* 00000C 8013837C 8DCE7EE4 */  lw          $t6, %lo(D_80137EE4)($t6)
/* 000010 80138380 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000014 80138384 E7A00010 */  swc1        $f0, 0x10($sp)
/* 000018 80138388 E7A00014 */  swc1        $f0, 0x14($sp)
/* 00001C 8013838C C5C4000C */  lwc1        $f4, 0xc($t6)
/* 000020 80138390 3C0F8014 */  lui         $t7, %hi(D_8014304C)
/* 000024 80138394 25EF304C */  addiu       $t7, $t7, %lo(D_8014304C)
/* 000028 80138398 AFAF001C */  sw          $t7, 0x1c($sp)
/* 00002C 8013839C AFA00020 */  sw          $zero, 0x20($sp)
/* 000030 801383A0 24040013 */  addiu       $a0, $zero, 0x13
/* 000034 801383A4 3C0543A0 */  lui         $a1, 0x43a0
/* 000038 801383A8 3C064120 */  lui         $a2, 0x4120
/* 00003C 801383AC 3C074361 */  lui         $a3, 0x4361
/* 000040 801383B0 0C007179 */  jal         func_8001C5E4
/* 000044 801383B4 E7A40018 */   swc1       $f4, 0x18($sp)
/* 000048 801383B8 8FBF002C */  lw          $ra, 0x2c($sp)
/* 00004C 801383BC 27BD0030 */  addiu       $sp, $sp, 0x30
/* 000050 801383C0 03E00008 */  jr          $ra
/* 000054 801383C4 00000000 */   nop

glabel func_801383C8_4EBA40 # 1
/* 000058 801383C8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00005C 801383CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 000060 801383D0 3C058014 */  lui         $a1, %hi(D_801385B0)
/* 000064 801383D4 3C048014 */  lui         $a0, %hi(D_801385D4)
/* 000068 801383D8 3C068014 */  lui         $a2, %hi(D_801385BC)
/* 00006C 801383DC 24A585B0 */  addiu       $a1, $a1, %lo(D_801385B0)
/* 000070 801383E0 24C685BC */  addiu       $a2, $a2, %lo(D_801385BC)
/* 000074 801383E4 248485D4 */  addiu       $a0, $a0, %lo(D_801385D4)
/* 000078 801383E8 0C007644 */  jal         func_8001D910
/* 00007C 801383EC 00003825 */   move       $a3, $zero
/* 000080 801383F0 3C058014 */  lui         $a1, %hi(D_801385B0)
/* 000084 801383F4 24A585B0 */  addiu       $a1, $a1, %lo(D_801385B0)
/* 000088 801383F8 C4AC0018 */  lwc1        $f12, 0x18($a1)
/* 00008C 801383FC C4AE001C */  lwc1        $f14, 0x1c($a1)
/* 000090 80138400 8CA60020 */  lw          $a2, 0x20($a1)
/* 000094 80138404 AFA2001C */  sw          $v0, 0x1c($sp)
/* 000098 80138408 0C00754C */  jal         func_8001D530
/* 00009C 8013840C 24070090 */   addiu      $a3, $zero, 0x90
/* 0000A0 80138410 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0000A4 80138414 0C00768A */  jal         func_8001DA28
/* 0000A8 80138418 00402825 */   move       $a1, $v0
/* 0000AC 8013841C 0C04E0DC */  jal         func_80138370_4EBA40
/* 0000B0 80138420 00000000 */   nop
/* 0000B4 80138424 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0000B8 80138428 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0000BC 8013842C 03E00008 */  jr          $ra
/* 0000C0 80138430 00000000 */   nop

glabel func_80138434_4EBA40 # 2
/* 0000C4 80138434 3C014034 */  lui         $at, 0x4034
/* 0000C8 80138438 44813800 */  mtc1        $at, $f7
/* 0000CC 8013843C 44803000 */  mtc1        $zero, $f6
/* 0000D0 80138440 46007121 */  cvt.d.s     $f4, $f14
/* 0000D4 80138444 00000000 */  nop
/* 0000D8 80138448 46262203 */  div.d       $f8, $f4, $f6
/* 0000DC 8013844C AFA60008 */  sw          $a2, 0x8($sp)
/* 0000E0 80138450 444EF800 */  cfc1        $t6, $31
/* 0000E4 80138454 00000000 */  nop
/* 0000E8 80138458 35C10003 */  ori         $at, $t6, 0x3
/* 0000EC 8013845C 38210002 */  xori        $at, $at, 0x2
/* 0000F0 80138460 44C1F800 */  ctc1        $at, $31
/* 0000F4 80138464 00000000 */  nop
/* 0000F8 80138468 462042A4 */  cvt.w.d     $f10, $f8
/* 0000FC 8013846C 44025000 */  mfc1        $v0, $f10
/* 000100 80138470 44CEF800 */  ctc1        $t6, $31
/* 000104 80138474 04400027 */  bltz        $v0, .L80138514
/* 000108 80138478 28410008 */   slti       $at, $v0, 0x8
/* 00010C 8013847C 10200025 */  beqz        $at, .L80138514
/* 000110 80138480 3C014044 */   lui        $at, 0x4044
/* 000114 80138484 44810800 */  mtc1        $at, $f1
/* 000118 80138488 44800000 */  mtc1        $zero, $f0
/* 00011C 8013848C 46006421 */  cvt.d.s     $f16, $f12
/* 000120 80138490 00000000 */  nop
/* 000124 80138494 46208483 */  div.d       $f18, $f16, $f0
/* 000128 80138498 444FF800 */  cfc1        $t7, $31
/* 00012C 8013849C 00000000 */  nop
/* 000130 801384A0 35E10003 */  ori         $at, $t7, 0x3
/* 000134 801384A4 38210002 */  xori        $at, $at, 0x2
/* 000138 801384A8 44C1F800 */  ctc1        $at, $31
/* 00013C 801384AC 00000000 */  nop
/* 000140 801384B0 46209124 */  cvt.w.d     $f4, $f18
/* 000144 801384B4 44032000 */  mfc1        $v1, $f4
/* 000148 801384B8 44CFF800 */  ctc1        $t7, $31
/* 00014C 801384BC 04600015 */  bltz        $v1, .L80138514
/* 000150 801384C0 28610008 */   slti       $at, $v1, 0x8
/* 000154 801384C4 10200013 */  beqz        $at, .L80138514
/* 000158 801384C8 00000000 */   nop
/* 00015C 801384CC C7A60008 */  lwc1        $f6, 0x8($sp)
/* 000160 801384D0 00000000 */  nop
/* 000164 801384D4 46003221 */  cvt.d.s     $f8, $f6
/* 000168 801384D8 00000000 */  nop
/* 00016C 801384DC 46204283 */  div.d       $f10, $f8, $f0
/* 000170 801384E0 4458F800 */  cfc1        $t8, $31
/* 000174 801384E4 00000000 */  nop
/* 000178 801384E8 37010003 */  ori         $at, $t8, 0x3
/* 00017C 801384EC 38210002 */  xori        $at, $at, 0x2
/* 000180 801384F0 44C1F800 */  ctc1        $at, $31
/* 000184 801384F4 00000000 */  nop
/* 000188 801384F8 46205424 */  cvt.w.d     $f16, $f10
/* 00018C 801384FC 44048000 */  mfc1        $a0, $f16
/* 000190 80138500 44D8F800 */  ctc1        $t8, $31
/* 000194 80138504 04800003 */  bltz        $a0, .L80138514
/* 000198 80138508 28810008 */   slti       $at, $a0, 0x8
/* 00019C 8013850C 14200003 */  bnez        $at, .L8013851C
/* 0001A0 80138510 0002C880 */   sll        $t9, $v0, 2
.L80138514:
/* 0001A4 80138514 03E00008 */  jr          $ra
/* 0001A8 80138518 00001025 */   move       $v0, $zero
.L8013851C:
/* 0001AC 8013851C 3C058016 */  lui         $a1, %hi(D_80166D24)
/* 0001B0 80138520 00B92821 */  addu        $a1, $a1, $t9
/* 0001B4 80138524 8CA56D24 */  lw          $a1, %lo(D_80166D24)($a1)
/* 0001B8 80138528 00044940 */  sll         $t1, $a0, 5
/* 0001BC 8013852C 14A00003 */  bnez        $a1, .L8013853C
/* 0001C0 80138530 00A95021 */   addu       $t2, $a1, $t1
/* 0001C4 80138534 03E00008 */  jr          $ra
/* 0001C8 80138538 00001025 */   move       $v0, $zero
.L8013853C:
/* 0001CC 8013853C 00035880 */  sll         $t3, $v1, 2
/* 0001D0 80138540 014B6021 */  addu        $t4, $t2, $t3
/* 0001D4 80138544 8D820000 */  lw          $v0, 0x0($t4)
/* 0001D8 80138548 00000000 */  nop
/* 0001DC 8013854C 03E00008 */  jr          $ra
/* 0001E0 80138550 00000000 */   nop
/* 0001E4 80138554 00000000 */  nop
/* 0001E8 80138558 00000000 */  nop
/* 0001EC 8013855C 00000000 */  nop
