.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80138370_4B2C50 # 0
/* 000000 80138370 44800000 */  mtc1        $zero, $f0
/* 000004 80138374 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000008 80138378 3C0E8013 */  lui         $t6, %hi(D_80137EE4)
/* 00000C 8013837C 8DCE7EE4 */  lw          $t6, %lo(D_80137EE4)($t6)
/* 000010 80138380 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000014 80138384 E7A00010 */  swc1        $f0, 0x10($sp)
/* 000018 80138388 E7A00014 */  swc1        $f0, 0x14($sp)
/* 00001C 8013838C C5C4000C */  lwc1        $f4, 0xc($t6)
/* 000020 80138390 3C0F8014 */  lui         $t7, %hi(D_8013E918)
/* 000024 80138394 25EFE918 */  addiu       $t7, $t7, %lo(D_8013E918)
/* 000028 80138398 3C0742F4 */  lui         $a3, (0x42F48A3D >> 16)
/* 00002C 8013839C 34E78A3D */  ori         $a3, $a3, (0x42F48A3D & 0xFFFF)
/* 000030 801383A0 AFAF001C */  sw          $t7, 0x1c($sp)
/* 000034 801383A4 AFA00020 */  sw          $zero, 0x20($sp)
/* 000038 801383A8 24040011 */  addiu       $a0, $zero, 0x11
/* 00003C 801383AC 3C0542FA */  lui         $a1, 0x42fa
/* 000040 801383B0 3C064120 */  lui         $a2, 0x4120
/* 000044 801383B4 0C007179 */  jal         func_8001C5E4
/* 000048 801383B8 E7A40018 */   swc1       $f4, 0x18($sp)
/* 00004C 801383BC 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000050 801383C0 27BD0030 */  addiu       $sp, $sp, 0x30
/* 000054 801383C4 03E00008 */  jr          $ra
/* 000058 801383C8 00000000 */   nop

glabel func_801383CC_4B2C50 # 1
/* 00005C 801383CC 03E00008 */  jr          $ra
/* 000060 801383D0 00000000 */   nop

glabel func_801383D4_4B2C50 # 2
/* 000064 801383D4 3C014034 */  lui         $at, 0x4034
/* 000068 801383D8 44810800 */  mtc1        $at, $f1
/* 00006C 801383DC 44800000 */  mtc1        $zero, $f0
/* 000070 801383E0 46007121 */  cvt.d.s     $f4, $f14
/* 000074 801383E4 00000000 */  nop
/* 000078 801383E8 46202183 */  div.d       $f6, $f4, $f0
/* 00007C 801383EC AFA60008 */  sw          $a2, 0x8($sp)
/* 000080 801383F0 444EF800 */  cfc1        $t6, FpcCsr
/* 000084 801383F4 00000000 */  nop
/* 000088 801383F8 35C10003 */  ori         $at, $t6, 0x3
/* 00008C 801383FC 38210002 */  xori        $at, $at, 0x2
/* 000090 80138400 44C1F800 */  ctc1        $at, FpcCsr
/* 000094 80138404 00000000 */  nop
/* 000098 80138408 46203224 */  cvt.w.d     $f8, $f6
/* 00009C 8013840C 44024000 */  mfc1        $v0, $f8
/* 0000A0 80138410 44CEF800 */  ctc1        $t6, FpcCsr
/* 0000A4 80138414 04400025 */  bltz        $v0, .L801384AC
/* 0000A8 80138418 28410010 */   slti       $at, $v0, 0x10
/* 0000AC 8013841C 10200023 */  beqz        $at, .L801384AC
/* 0000B0 80138420 00000000 */   nop
/* 0000B4 80138424 460062A1 */  cvt.d.s     $f10, $f12
/* 0000B8 80138428 00000000 */  nop
/* 0000BC 8013842C 46205403 */  div.d       $f16, $f10, $f0
/* 0000C0 80138430 444FF800 */  cfc1        $t7, FpcCsr
/* 0000C4 80138434 00000000 */  nop
/* 0000C8 80138438 35E10003 */  ori         $at, $t7, 0x3
/* 0000CC 8013843C 38210002 */  xori        $at, $at, 0x2
/* 0000D0 80138440 44C1F800 */  ctc1        $at, FpcCsr
/* 0000D4 80138444 00000000 */  nop
/* 0000D8 80138448 462084A4 */  cvt.w.d     $f18, $f16
/* 0000DC 8013844C 44039000 */  mfc1        $v1, $f18
/* 0000E0 80138450 44CFF800 */  ctc1        $t7, FpcCsr
/* 0000E4 80138454 04600015 */  bltz        $v1, .L801384AC
/* 0000E8 80138458 28610010 */   slti       $at, $v1, 0x10
/* 0000EC 8013845C 10200013 */  beqz        $at, .L801384AC
/* 0000F0 80138460 00000000 */   nop
/* 0000F4 80138464 C7A40008 */  lwc1        $f4, 0x8($sp)
/* 0000F8 80138468 00000000 */  nop
/* 0000FC 8013846C 460021A1 */  cvt.d.s     $f6, $f4
/* 000100 80138470 00000000 */  nop
/* 000104 80138474 46203203 */  div.d       $f8, $f6, $f0
/* 000108 80138478 4458F800 */  cfc1        $t8, FpcCsr
/* 00010C 8013847C 00000000 */  nop
/* 000110 80138480 37010003 */  ori         $at, $t8, 0x3
/* 000114 80138484 38210002 */  xori        $at, $at, 0x2
/* 000118 80138488 44C1F800 */  ctc1        $at, FpcCsr
/* 00011C 8013848C 00000000 */  nop
/* 000120 80138490 462042A4 */  cvt.w.d     $f10, $f8
/* 000124 80138494 44045000 */  mfc1        $a0, $f10
/* 000128 80138498 44D8F800 */  ctc1        $t8, FpcCsr
/* 00012C 8013849C 04800003 */  bltz        $a0, .L801384AC
/* 000130 801384A0 28810010 */   slti       $at, $a0, 0x10
/* 000134 801384A4 14200003 */  bnez        $at, .L801384B4
/* 000138 801384A8 0002C880 */   sll        $t9, $v0, 2
.L801384AC:
/* 00013C 801384AC 03E00008 */  jr          $ra
/* 000140 801384B0 00001025 */   move       $v0, $zero
.L801384B4:
/* 000144 801384B4 3C058014 */  lui         $a1, %hi(D_80141700)
/* 000148 801384B8 00B92821 */  addu        $a1, $a1, $t9
/* 00014C 801384BC 8CA51700 */  lw          $a1, %lo(D_80141700)($a1)
/* 000150 801384C0 00044980 */  sll         $t1, $a0, 6
/* 000154 801384C4 14A00003 */  bnez        $a1, .L801384D4
/* 000158 801384C8 00A95021 */   addu       $t2, $a1, $t1
/* 00015C 801384CC 03E00008 */  jr          $ra
/* 000160 801384D0 00001025 */   move       $v0, $zero
.L801384D4:
/* 000164 801384D4 00035880 */  sll         $t3, $v1, 2
/* 000168 801384D8 014B6021 */  addu        $t4, $t2, $t3
/* 00016C 801384DC 8D820000 */  lw          $v0, 0x0($t4)
/* 000170 801384E0 00000000 */  nop
/* 000174 801384E4 03E00008 */  jr          $ra
/* 000178 801384E8 00000000 */   nop
/* 00017C 801384EC 00000000 */  nop
