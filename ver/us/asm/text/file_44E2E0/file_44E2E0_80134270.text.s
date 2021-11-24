.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80134270_44E2E0 # 0
/* 000000 80134270 44800000 */  mtc1        $zero, $f0
/* 000004 80134274 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000008 80134278 3C0E8013 */  lui         $t6, %hi(D_80133DE4)
/* 00000C 8013427C 8DCE3DE4 */  lw          $t6, %lo(D_80133DE4)($t6)
/* 000010 80134280 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000014 80134284 E7A00010 */  swc1        $f0, 0x10($sp)
/* 000018 80134288 E7A00014 */  swc1        $f0, 0x14($sp)
/* 00001C 8013428C C5C4000C */  lwc1        $f4, 0xc($t6)
/* 000020 80134290 3C0F8014 */  lui         $t7, %hi(D_8013A878)
/* 000024 80134294 25EFA878 */  addiu       $t7, $t7, %lo(D_8013A878)
/* 000028 80134298 3C0742F4 */  lui         $a3, 0x42f4
/* 00002C 8013429C 34E78A3D */  ori         $a3, $a3, 0x8a3d
/* 000030 801342A0 AFAF001C */  sw          $t7, 0x1c($sp)
/* 000034 801342A4 AFA00020 */  sw          $zero, 0x20($sp)
/* 000038 801342A8 24040011 */  addiu       $a0, $zero, 0x11
/* 00003C 801342AC 3C0542FA */  lui         $a1, 0x42fa
/* 000040 801342B0 3C064120 */  lui         $a2, 0x4120
/* 000044 801342B4 0C007871 */  jal         func_8001E1C4
/* 000048 801342B8 E7A40018 */   swc1       $f4, 0x18($sp)
/* 00004C 801342BC 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000050 801342C0 27BD0030 */  addiu       $sp, $sp, 0x30
/* 000054 801342C4 03E00008 */  jr          $ra
/* 000058 801342C8 00000000 */   nop

glabel func_801342CC_44E2E0 # 1
/* 00005C 801342CC 03E00008 */  jr          $ra
/* 000060 801342D0 00000000 */   nop

glabel func_801342D4_44E2E0 # 2
/* 000064 801342D4 3C014034 */  lui         $at, 0x4034
/* 000068 801342D8 44810800 */  mtc1        $at, $f1
/* 00006C 801342DC 44800000 */  mtc1        $zero, $f0
/* 000070 801342E0 46007121 */  cvt.d.s     $f4, $f14
/* 000074 801342E4 00000000 */  nop
/* 000078 801342E8 46202183 */  div.d       $f6, $f4, $f0
/* 00007C 801342EC AFA60008 */  sw          $a2, 0x8($sp)
/* 000080 801342F0 444EF800 */  cfc1        $t6, $31
/* 000084 801342F4 00000000 */  nop
/* 000088 801342F8 35C10003 */  ori         $at, $t6, 0x3
/* 00008C 801342FC 38210002 */  xori        $at, $at, 0x2
/* 000090 80134300 44C1F800 */  ctc1        $at, $31
/* 000094 80134304 00000000 */  nop
/* 000098 80134308 46203224 */  cvt.w.d     $f8, $f6
/* 00009C 8013430C 44024000 */  mfc1        $v0, $f8
/* 0000A0 80134310 44CEF800 */  ctc1        $t6, $31
/* 0000A4 80134314 04400025 */  bltz        $v0, .L801343AC
/* 0000A8 80134318 28410010 */   slti       $at, $v0, 0x10
/* 0000AC 8013431C 10200023 */  beqz        $at, .L801343AC
/* 0000B0 80134320 00000000 */   nop
/* 0000B4 80134324 460062A1 */  cvt.d.s     $f10, $f12
/* 0000B8 80134328 00000000 */  nop
/* 0000BC 8013432C 46205403 */  div.d       $f16, $f10, $f0
/* 0000C0 80134330 444FF800 */  cfc1        $t7, $31
/* 0000C4 80134334 00000000 */  nop
/* 0000C8 80134338 35E10003 */  ori         $at, $t7, 0x3
/* 0000CC 8013433C 38210002 */  xori        $at, $at, 0x2
/* 0000D0 80134340 44C1F800 */  ctc1        $at, $31
/* 0000D4 80134344 00000000 */  nop
/* 0000D8 80134348 462084A4 */  cvt.w.d     $f18, $f16
/* 0000DC 8013434C 44039000 */  mfc1        $v1, $f18
/* 0000E0 80134350 44CFF800 */  ctc1        $t7, $31
/* 0000E4 80134354 04600015 */  bltz        $v1, .L801343AC
/* 0000E8 80134358 28610010 */   slti       $at, $v1, 0x10
/* 0000EC 8013435C 10200013 */  beqz        $at, .L801343AC
/* 0000F0 80134360 00000000 */   nop
/* 0000F4 80134364 C7A40008 */  lwc1        $f4, 0x8($sp)
/* 0000F8 80134368 00000000 */  nop
/* 0000FC 8013436C 460021A1 */  cvt.d.s     $f6, $f4
/* 000100 80134370 00000000 */  nop
/* 000104 80134374 46203203 */  div.d       $f8, $f6, $f0
/* 000108 80134378 4458F800 */  cfc1        $t8, $31
/* 00010C 8013437C 00000000 */  nop
/* 000110 80134380 37010003 */  ori         $at, $t8, 0x3
/* 000114 80134384 38210002 */  xori        $at, $at, 0x2
/* 000118 80134388 44C1F800 */  ctc1        $at, $31
/* 00011C 8013438C 00000000 */  nop
/* 000120 80134390 462042A4 */  cvt.w.d     $f10, $f8
/* 000124 80134394 44045000 */  mfc1        $a0, $f10
/* 000128 80134398 44D8F800 */  ctc1        $t8, $31
/* 00012C 8013439C 04800003 */  bltz        $a0, .L801343AC
/* 000130 801343A0 28810010 */   slti       $at, $a0, 0x10
/* 000134 801343A4 14200003 */  bnez        $at, .L801343B4
/* 000138 801343A8 0002C880 */   sll        $t9, $v0, 2
.L801343AC:
/* 00013C 801343AC 03E00008 */  jr          $ra
/* 000140 801343B0 00001025 */   move       $v0, $zero
.L801343B4:
/* 000144 801343B4 3C058014 */  lui         $a1, %hi(D_8013CE38)
/* 000148 801343B8 00B92821 */  addu        $a1, $a1, $t9
/* 00014C 801343BC 8CA5CE38 */  lw          $a1, %lo(D_8013CE38)($a1)
/* 000150 801343C0 00044980 */  sll         $t1, $a0, 6
/* 000154 801343C4 14A00003 */  bnez        $a1, .L801343D4
/* 000158 801343C8 00A95021 */   addu       $t2, $a1, $t1
/* 00015C 801343CC 03E00008 */  jr          $ra
/* 000160 801343D0 00001025 */   move       $v0, $zero
.L801343D4:
/* 000164 801343D4 00035880 */  sll         $t3, $v1, 2
/* 000168 801343D8 014B6021 */  addu        $t4, $t2, $t3
/* 00016C 801343DC 8D820000 */  lw          $v0, 0x0($t4)
/* 000170 801343E0 00000000 */  nop
/* 000174 801343E4 03E00008 */  jr          $ra
/* 000178 801343E8 00000000 */   nop
/* 00017C 801343EC 00000000 */  nop
