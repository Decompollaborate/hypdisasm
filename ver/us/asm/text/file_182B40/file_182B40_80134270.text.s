.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80134270_182B40 # 0
/* 000000 80134270 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 000004 80134274 AFB30020 */  sw          $s3, 0x20($sp)
/* 000008 80134278 AFB2001C */  sw          $s2, 0x1c($sp)
/* 00000C 8013427C AFB10018 */  sw          $s1, 0x18($sp)
/* 000010 80134280 AFBF0024 */  sw          $ra, 0x24($sp)
/* 000014 80134284 AFB00014 */  sw          $s0, 0x14($sp)
/* 000018 80134288 00008825 */  move        $s1, $zero
/* 00001C 8013428C 2412000A */  addiu       $s2, $zero, 0xa
/* 000020 80134290 24130002 */  addiu       $s3, $zero, 0x2
/* 000024 80134294 00008025 */  move        $s0, $zero
.L80134298:
/* 000028 80134298 02202025 */  move        $a0, $s1
.L8013429C:
/* 00002C 8013429C 0C00BCFF */  jal         func_8002F3FC
/* 000030 801342A0 02002825 */   move       $a1, $s0
/* 000034 801342A4 10400003 */  beqz        $v0, .L801342B4
/* 000038 801342A8 00402025 */   move       $a0, $v0
/* 00003C 801342AC 0C044EDE */  jal         func_80113B78
/* 000040 801342B0 00000000 */   nop
.L801342B4:
/* 000044 801342B4 26100001 */  addiu       $s0, $s0, 0x1
/* 000048 801342B8 1612FFF8 */  bne         $s0, $s2, .L8013429C
/* 00004C 801342BC 02202025 */   move       $a0, $s1
/* 000050 801342C0 26310001 */  addiu       $s1, $s1, 0x1
/* 000054 801342C4 1633FFF4 */  bne         $s1, $s3, .L80134298
/* 000058 801342C8 00008025 */   move       $s0, $zero
/* 00005C 801342CC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 000060 801342D0 8FB00014 */  lw          $s0, 0x14($sp)
/* 000064 801342D4 8FB10018 */  lw          $s1, 0x18($sp)
/* 000068 801342D8 8FB2001C */  lw          $s2, 0x1c($sp)
/* 00006C 801342DC 8FB30020 */  lw          $s3, 0x20($sp)
/* 000070 801342E0 03E00008 */  jr          $ra
/* 000074 801342E4 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_801342E8_182B40 # 1
/* 000078 801342E8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00007C 801342EC AFBF0014 */  sw          $ra, 0x14($sp)
/* 000080 801342F0 0C04D09C */  jal         func_80134270_182B40
/* 000084 801342F4 00000000 */   nop
/* 000088 801342F8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00008C 801342FC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000090 80134300 03E00008 */  jr          $ra
/* 000094 80134304 00000000 */   nop

glabel func_80134308_182B40 # 2
/* 000098 80134308 3C014014 */  lui         $at, 0x4014
/* 00009C 8013430C 44813800 */  mtc1        $at, $f7
/* 0000A0 80134310 44803000 */  mtc1        $zero, $f6
/* 0000A4 80134314 46007121 */  cvt.d.s     $f4, $f14
/* 0000A8 80134318 00000000 */  nop
/* 0000AC 8013431C 46262203 */  div.d       $f8, $f4, $f6
/* 0000B0 80134320 AFA60008 */  sw          $a2, 0x8($sp)
/* 0000B4 80134324 444EF800 */  cfc1        $t6, FpcCsr
/* 0000B8 80134328 00000000 */  nop
/* 0000BC 8013432C 35C10003 */  ori         $at, $t6, 0x3
/* 0000C0 80134330 38210002 */  xori        $at, $at, 0x2
/* 0000C4 80134334 44C1F800 */  ctc1        $at, FpcCsr
/* 0000C8 80134338 00000000 */  nop
/* 0000CC 8013433C 462042A4 */  cvt.w.d     $f10, $f8
/* 0000D0 80134340 44025000 */  mfc1        $v0, $f10
/* 0000D4 80134344 44CEF800 */  ctc1        $t6, FpcCsr
/* 0000D8 80134348 04400027 */  bltz        $v0, .L801343E8
/* 0000DC 8013434C 28410020 */   slti       $at, $v0, 0x20
/* 0000E0 80134350 10200025 */  beqz        $at, .L801343E8
/* 0000E4 80134354 3C014024 */   lui        $at, 0x4024
/* 0000E8 80134358 44810800 */  mtc1        $at, $f1
/* 0000EC 8013435C 44800000 */  mtc1        $zero, $f0
/* 0000F0 80134360 46006421 */  cvt.d.s     $f16, $f12
/* 0000F4 80134364 00000000 */  nop
/* 0000F8 80134368 46208483 */  div.d       $f18, $f16, $f0
/* 0000FC 8013436C 444FF800 */  cfc1        $t7, FpcCsr
/* 000100 80134370 00000000 */  nop
/* 000104 80134374 35E10003 */  ori         $at, $t7, 0x3
/* 000108 80134378 38210002 */  xori        $at, $at, 0x2
/* 00010C 8013437C 44C1F800 */  ctc1        $at, FpcCsr
/* 000110 80134380 00000000 */  nop
/* 000114 80134384 46209124 */  cvt.w.d     $f4, $f18
/* 000118 80134388 44032000 */  mfc1        $v1, $f4
/* 00011C 8013438C 44CFF800 */  ctc1        $t7, FpcCsr
/* 000120 80134390 04600015 */  bltz        $v1, .L801343E8
/* 000124 80134394 28610020 */   slti       $at, $v1, 0x20
/* 000128 80134398 10200013 */  beqz        $at, .L801343E8
/* 00012C 8013439C 00000000 */   nop
/* 000130 801343A0 C7A60008 */  lwc1        $f6, 0x8($sp)
/* 000134 801343A4 00000000 */  nop
/* 000138 801343A8 46003221 */  cvt.d.s     $f8, $f6
/* 00013C 801343AC 00000000 */  nop
/* 000140 801343B0 46204283 */  div.d       $f10, $f8, $f0
/* 000144 801343B4 4458F800 */  cfc1        $t8, FpcCsr
/* 000148 801343B8 00000000 */  nop
/* 00014C 801343BC 37010003 */  ori         $at, $t8, 0x3
/* 000150 801343C0 38210002 */  xori        $at, $at, 0x2
/* 000154 801343C4 44C1F800 */  ctc1        $at, FpcCsr
/* 000158 801343C8 00000000 */  nop
/* 00015C 801343CC 46205424 */  cvt.w.d     $f16, $f10
/* 000160 801343D0 44048000 */  mfc1        $a0, $f16
/* 000164 801343D4 44D8F800 */  ctc1        $t8, FpcCsr
/* 000168 801343D8 04800003 */  bltz        $a0, .L801343E8
/* 00016C 801343DC 28810020 */   slti       $at, $a0, 0x20
/* 000170 801343E0 14200003 */  bnez        $at, .L801343F0
/* 000174 801343E4 0002C880 */   sll        $t9, $v0, 2
.L801343E8:
/* 000178 801343E8 03E00008 */  jr          $ra
/* 00017C 801343EC 00001025 */   move       $v0, $zero
.L801343F0:
/* 000180 801343F0 3C058015 */  lui         $a1, %hi(D_8014DB20)
/* 000184 801343F4 00B92821 */  addu        $a1, $a1, $t9
/* 000188 801343F8 8CA5DB20 */  lw          $a1, %lo(D_8014DB20)($a1)
/* 00018C 801343FC 000449C0 */  sll         $t1, $a0, 7
/* 000190 80134400 14A00003 */  bnez        $a1, .L80134410
/* 000194 80134404 00A95021 */   addu       $t2, $a1, $t1
/* 000198 80134408 03E00008 */  jr          $ra
/* 00019C 8013440C 00001025 */   move       $v0, $zero
.L80134410:
/* 0001A0 80134410 00035880 */  sll         $t3, $v1, 2
/* 0001A4 80134414 014B6021 */  addu        $t4, $t2, $t3
/* 0001A8 80134418 8D820000 */  lw          $v0, 0x0($t4)
/* 0001AC 8013441C 00000000 */  nop
/* 0001B0 80134420 03E00008 */  jr          $ra
/* 0001B4 80134424 00000000 */   nop
/* 0001B8 80134428 00000000 */  nop
/* 0001BC 8013442C 00000000 */  nop
