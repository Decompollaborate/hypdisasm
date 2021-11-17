.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80134270 # 0
/* 000000 80134270 03E00008 */  jr          $ra
/* 000004 80134274 00000000 */   nop

glabel func_80134278 # 1
/* 000008 80134278 03E00008 */  jr          $ra
/* 00000C 8013427C 00000000 */   nop

glabel func_80134280 # 2
/* 000010 80134280 3C014034 */  lui         $at, 0x4034
/* 000014 80134284 44810800 */  mtc1        $at, $f1
/* 000018 80134288 44800000 */  mtc1        $zero, $f0
/* 00001C 8013428C 46007121 */  cvt.d.s     $f4, $f14
/* 000020 80134290 00000000 */  nop
/* 000024 80134294 46202183 */  div.d       $f6, $f4, $f0
/* 000028 80134298 AFA60008 */  sw          $a2, 0x8($sp)
/* 00002C 8013429C 444EF800 */  cfc1        $t6, $31
/* 000030 801342A0 00000000 */  nop
/* 000034 801342A4 35C10003 */  ori         $at, $t6, 0x3
/* 000038 801342A8 38210002 */  xori        $at, $at, 0x2
/* 00003C 801342AC 44C1F800 */  ctc1        $at, $31
/* 000040 801342B0 00000000 */  nop
/* 000044 801342B4 46203224 */  cvt.w.d     $f8, $f6
/* 000048 801342B8 44024000 */  mfc1        $v0, $f8
/* 00004C 801342BC 44CEF800 */  ctc1        $t6, $31
/* 000050 801342C0 04400025 */  bltz        $v0, .L80134358
/* 000054 801342C4 28410008 */   slti       $at, $v0, 0x8
/* 000058 801342C8 10200023 */  beq         $at, $zero, .L80134358
/* 00005C 801342CC 00000000 */   nop
/* 000060 801342D0 460062A1 */  cvt.d.s     $f10, $f12
/* 000064 801342D4 00000000 */  nop
/* 000068 801342D8 46205403 */  div.d       $f16, $f10, $f0
/* 00006C 801342DC 444FF800 */  cfc1        $t7, $31
/* 000070 801342E0 00000000 */  nop
/* 000074 801342E4 35E10003 */  ori         $at, $t7, 0x3
/* 000078 801342E8 38210002 */  xori        $at, $at, 0x2
/* 00007C 801342EC 44C1F800 */  ctc1        $at, $31
/* 000080 801342F0 00000000 */  nop
/* 000084 801342F4 462084A4 */  cvt.w.d     $f18, $f16
/* 000088 801342F8 44039000 */  mfc1        $v1, $f18
/* 00008C 801342FC 44CFF800 */  ctc1        $t7, $31
/* 000090 80134300 04600015 */  bltz        $v1, .L80134358
/* 000094 80134304 28610008 */   slti       $at, $v1, 0x8
/* 000098 80134308 10200013 */  beq         $at, $zero, .L80134358
/* 00009C 8013430C 00000000 */   nop
/* 0000A0 80134310 C7A40008 */  lwc1        $f4, 0x8($sp)
/* 0000A4 80134314 00000000 */  nop
/* 0000A8 80134318 460021A1 */  cvt.d.s     $f6, $f4
/* 0000AC 8013431C 00000000 */  nop
/* 0000B0 80134320 46203203 */  div.d       $f8, $f6, $f0
/* 0000B4 80134324 4458F800 */  cfc1        $t8, $31
/* 0000B8 80134328 00000000 */  nop
/* 0000BC 8013432C 37010003 */  ori         $at, $t8, 0x3
/* 0000C0 80134330 38210002 */  xori        $at, $at, 0x2
/* 0000C4 80134334 44C1F800 */  ctc1        $at, $31
/* 0000C8 80134338 00000000 */  nop
/* 0000CC 8013433C 462042A4 */  cvt.w.d     $f10, $f8
/* 0000D0 80134340 44045000 */  mfc1        $a0, $f10
/* 0000D4 80134344 44D8F800 */  ctc1        $t8, $31
/* 0000D8 80134348 04800003 */  bltz        $a0, .L80134358
/* 0000DC 8013434C 28810008 */   slti       $at, $a0, 0x8
/* 0000E0 80134350 14200003 */  bne         $at, $zero, .L80134360
/* 0000E4 80134354 0002C880 */   sll        $t9, $v0, 2
.L80134358:
/* 0000E8 80134358 03E00008 */  jr          $ra
/* 0000EC 8013435C 00001025 */   move       $v0, $zero
.L80134360:
/* 0000F0 80134360 3C058016 */  lui         $a1, %hi(D_8015BF30)
/* 0000F4 80134364 00B92821 */  addu        $a1, $a1, $t9
/* 0000F8 80134368 8CA5BF30 */  lw          $a1, %lo(D_8015BF30)($a1)
/* 0000FC 8013436C 00044940 */  sll         $t1, $a0, 5
/* 000100 80134370 14A00003 */  bne         $a1, $zero, .L80134380
/* 000104 80134374 00A95021 */   addu       $t2, $a1, $t1
/* 000108 80134378 03E00008 */  jr          $ra
/* 00010C 8013437C 00001025 */   move       $v0, $zero
.L80134380:
/* 000110 80134380 00035880 */  sll         $t3, $v1, 2
/* 000114 80134384 014B6021 */  addu        $t4, $t2, $t3
/* 000118 80134388 8D820000 */  lw          $v0, 0x0($t4)
/* 00011C 8013438C 00000000 */  nop
/* 000120 80134390 03E00008 */  jr          $ra
/* 000124 80134394 00000000 */   nop
/* 000128 80134398 00000000 */  nop
/* 00012C 8013439C 00000000 */  nop
