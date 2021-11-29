.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80134270_107190 # 0
/* 000000 80134270 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000004 80134274 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000008 80134278 0C00BB4F */  jal         func_8002ED3C
/* 00000C 8013427C 00000000 */   nop
/* 000010 80134280 44800000 */  mtc1        $zero, $f0
/* 000014 80134284 3C0E8013 */  lui         $t6, %hi(D_80133DE4)
/* 000018 80134288 8DCE3DE4 */  lw          $t6, %lo(D_80133DE4)($t6)
/* 00001C 8013428C E7A00010 */  swc1        $f0, 0x10($sp)
/* 000020 80134290 E7A00014 */  swc1        $f0, 0x14($sp)
/* 000024 80134294 C5C4000C */  lwc1        $f4, 0xc($t6)
/* 000028 80134298 3C0F8014 */  lui         $t7, %hi(D_80139E38)
/* 00002C 8013429C 25EF9E38 */  addiu       $t7, $t7, %lo(D_80139E38)
/* 000030 801342A0 3C0542A4 */  lui         $a1, (0x42A4851F >> 16)
/* 000034 801342A4 3C0742D0 */  lui         $a3, (0x42D0BD71 >> 16)
/* 000038 801342A8 34E7BD71 */  ori         $a3, $a3, (0x42D0BD71 & 0xFFFF)
/* 00003C 801342AC 34A5851F */  ori         $a1, $a1, (0x42A4851F & 0xFFFF)
/* 000040 801342B0 AFAF001C */  sw          $t7, 0x1c($sp)
/* 000044 801342B4 AFA00020 */  sw          $zero, 0x20($sp)
/* 000048 801342B8 24040001 */  addiu       $a0, $zero, 0x1
/* 00004C 801342BC 3C064040 */  lui         $a2, 0x4040
/* 000050 801342C0 0C007871 */  jal         func_8001E1C4
/* 000054 801342C4 E7A40018 */   swc1       $f4, 0x18($sp)
/* 000058 801342C8 8FBF002C */  lw          $ra, 0x2c($sp)
/* 00005C 801342CC 27BD0030 */  addiu       $sp, $sp, 0x30
/* 000060 801342D0 03E00008 */  jr          $ra
/* 000064 801342D4 00000000 */   nop

glabel func_801342D8_107190 # 1
/* 000068 801342D8 3C014035 */  lui         $at, 0x4035
/* 00006C 801342DC 44813800 */  mtc1        $at, $f7
/* 000070 801342E0 44803000 */  mtc1        $zero, $f6
/* 000074 801342E4 46007121 */  cvt.d.s     $f4, $f14
/* 000078 801342E8 00000000 */  nop
/* 00007C 801342EC 46262203 */  div.d       $f8, $f4, $f6
/* 000080 801342F0 AFA60008 */  sw          $a2, 0x8($sp)
/* 000084 801342F4 444EF800 */  cfc1        $t6, $31
/* 000088 801342F8 00000000 */  nop
/* 00008C 801342FC 35C10003 */  ori         $at, $t6, 0x3
/* 000090 80134300 38210002 */  xori        $at, $at, 0x2
/* 000094 80134304 44C1F800 */  ctc1        $at, $31
/* 000098 80134308 00000000 */  nop
/* 00009C 8013430C 462042A4 */  cvt.w.d     $f10, $f8
/* 0000A0 80134310 44025000 */  mfc1        $v0, $f10
/* 0000A4 80134314 44CEF800 */  ctc1        $t6, $31
/* 0000A8 80134318 04400027 */  bltz        $v0, .L801343B8
/* 0000AC 8013431C 28410010 */   slti       $at, $v0, 0x10
/* 0000B0 80134320 10200025 */  beqz        $at, .L801343B8
/* 0000B4 80134324 3C014024 */   lui        $at, 0x4024
/* 0000B8 80134328 44810800 */  mtc1        $at, $f1
/* 0000BC 8013432C 44800000 */  mtc1        $zero, $f0
/* 0000C0 80134330 46006421 */  cvt.d.s     $f16, $f12
/* 0000C4 80134334 00000000 */  nop
/* 0000C8 80134338 46208483 */  div.d       $f18, $f16, $f0
/* 0000CC 8013433C 444FF800 */  cfc1        $t7, $31
/* 0000D0 80134340 00000000 */  nop
/* 0000D4 80134344 35E10003 */  ori         $at, $t7, 0x3
/* 0000D8 80134348 38210002 */  xori        $at, $at, 0x2
/* 0000DC 8013434C 44C1F800 */  ctc1        $at, $31
/* 0000E0 80134350 00000000 */  nop
/* 0000E4 80134354 46209124 */  cvt.w.d     $f4, $f18
/* 0000E8 80134358 44032000 */  mfc1        $v1, $f4
/* 0000EC 8013435C 44CFF800 */  ctc1        $t7, $31
/* 0000F0 80134360 04600015 */  bltz        $v1, .L801343B8
/* 0000F4 80134364 28610010 */   slti       $at, $v1, 0x10
/* 0000F8 80134368 10200013 */  beqz        $at, .L801343B8
/* 0000FC 8013436C 00000000 */   nop
/* 000100 80134370 C7A60008 */  lwc1        $f6, 0x8($sp)
/* 000104 80134374 00000000 */  nop
/* 000108 80134378 46003221 */  cvt.d.s     $f8, $f6
/* 00010C 8013437C 00000000 */  nop
/* 000110 80134380 46204283 */  div.d       $f10, $f8, $f0
/* 000114 80134384 4458F800 */  cfc1        $t8, $31
/* 000118 80134388 00000000 */  nop
/* 00011C 8013438C 37010003 */  ori         $at, $t8, 0x3
/* 000120 80134390 38210002 */  xori        $at, $at, 0x2
/* 000124 80134394 44C1F800 */  ctc1        $at, $31
/* 000128 80134398 00000000 */  nop
/* 00012C 8013439C 46205424 */  cvt.w.d     $f16, $f10
/* 000130 801343A0 44048000 */  mfc1        $a0, $f16
/* 000134 801343A4 44D8F800 */  ctc1        $t8, $31
/* 000138 801343A8 04800003 */  bltz        $a0, .L801343B8
/* 00013C 801343AC 28810010 */   slti       $at, $a0, 0x10
/* 000140 801343B0 14200003 */  bnez        $at, .L801343C0
/* 000144 801343B4 0002C880 */   sll        $t9, $v0, 2
.L801343B8:
/* 000148 801343B8 03E00008 */  jr          $ra
/* 00014C 801343BC 00001025 */   move       $v0, $zero
.L801343C0:
/* 000150 801343C0 3C058014 */  lui         $a1, %hi(D_8013C888)
/* 000154 801343C4 00B92821 */  addu        $a1, $a1, $t9
/* 000158 801343C8 8CA5C888 */  lw          $a1, %lo(D_8013C888)($a1)
/* 00015C 801343CC 00044980 */  sll         $t1, $a0, 6
/* 000160 801343D0 14A00003 */  bnez        $a1, .L801343E0
/* 000164 801343D4 00A95021 */   addu       $t2, $a1, $t1
/* 000168 801343D8 03E00008 */  jr          $ra
/* 00016C 801343DC 00001025 */   move       $v0, $zero
.L801343E0:
/* 000170 801343E0 00035880 */  sll         $t3, $v1, 2
/* 000174 801343E4 014B6021 */  addu        $t4, $t2, $t3
/* 000178 801343E8 8D820000 */  lw          $v0, 0x0($t4)
/* 00017C 801343EC 00000000 */  nop
/* 000180 801343F0 03E00008 */  jr          $ra
/* 000184 801343F4 00000000 */   nop
/* 000188 801343F8 00000000 */  nop
/* 00018C 801343FC 00000000 */  nop
