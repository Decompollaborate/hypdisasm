.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80134270_10F7F0 # 0
/* 000000 80134270 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 000004 80134274 AFBF001C */  sw          $ra, 0x1c($sp)
/* 000008 80134278 0C00BB4F */  jal         func_8002ED3C
/* 00000C 8013427C 00000000 */   nop
/* 000010 80134280 3C048016 */  lui         $a0, %hi(D_80158B90)
/* 000014 80134284 0C0439B1 */  jal         func_8010E6C4
/* 000018 80134288 24848B90 */   addiu      $a0, $a0, %lo(D_80158B90)
/* 00001C 8013428C 0C007044 */  jal         func_8001C110
/* 000020 80134290 00000000 */   nop
/* 000024 80134294 3C048013 */  lui         $a0, %hi(D_80134590)
/* 000028 80134298 24844590 */  addiu       $a0, $a0, %lo(D_80134590)
/* 00002C 8013429C 00002825 */  move        $a1, $zero
/* 000030 801342A0 00003025 */  move        $a2, $zero
/* 000034 801342A4 24070001 */  addiu       $a3, $zero, 0x1
/* 000038 801342A8 0C007054 */  jal         func_8001C150
/* 00003C 801342AC AFA00010 */   sw         $zero, 0x10($sp)
/* 000040 801342B0 3C048013 */  lui         $a0, %hi(D_8013459C)
/* 000044 801342B4 2484459C */  addiu       $a0, $a0, %lo(D_8013459C)
/* 000048 801342B8 24050002 */  addiu       $a1, $zero, 0x2
/* 00004C 801342BC 24060001 */  addiu       $a2, $zero, 0x1
/* 000050 801342C0 00003825 */  move        $a3, $zero
/* 000054 801342C4 0C007054 */  jal         func_8001C150
/* 000058 801342C8 AFA00010 */   sw         $zero, 0x10($sp)
/* 00005C 801342CC 24030001 */  addiu       $v1, $zero, 0x1
/* 000060 801342D0 0C00AB39 */  jal         func_8002ACE4
/* 000064 801342D4 AFA30024 */   sw         $v1, 0x24($sp)
/* 000068 801342D8 8FA30024 */  lw          $v1, 0x24($sp)
/* 00006C 801342DC 28410007 */  slti        $at, $v0, 0x7
/* 000070 801342E0 14200002 */  bnez        $at, .L801342EC
/* 000074 801342E4 3C048013 */   lui        $a0, %hi(D_801345A8)
/* 000078 801342E8 00001825 */  move        $v1, $zero
.L801342EC:
/* 00007C 801342EC 248445A8 */  addiu       $a0, $a0, %lo(D_801345A8)
/* 000080 801342F0 24050002 */  addiu       $a1, $zero, 0x2
/* 000084 801342F4 24060002 */  addiu       $a2, $zero, 0x2
/* 000088 801342F8 00003825 */  move        $a3, $zero
/* 00008C 801342FC 0C007054 */  jal         func_8001C150
/* 000090 80134300 AFA30010 */   sw         $v1, 0x10($sp)
/* 000094 80134304 8FBF001C */  lw          $ra, 0x1c($sp)
/* 000098 80134308 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00009C 8013430C 03E00008 */  jr          $ra
/* 0000A0 80134310 00000000 */   nop

glabel func_80134314_10F7F0 # 1
/* 0000A4 80134314 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 0000A8 80134318 AFBF002C */  sw          $ra, 0x2c($sp)
/* 0000AC 8013431C 0C00AB39 */  jal         func_8002ACE4
/* 0000B0 80134320 00000000 */   nop
/* 0000B4 80134324 24010009 */  addiu       $at, $zero, 0x9
/* 0000B8 80134328 10410033 */  beq         $v0, $at, .L801343F8
/* 0000BC 8013432C 8FBF002C */   lw         $ra, 0x2c($sp)
/* 0000C0 80134330 0C00AB39 */  jal         func_8002ACE4
/* 0000C4 80134334 00000000 */   nop
/* 0000C8 80134338 24010008 */  addiu       $at, $zero, 0x8
/* 0000CC 8013433C 1441002B */  bne         $v0, $at, .L801343EC
/* 0000D0 80134340 3C064316 */   lui        $a2, 0x4316
/* 0000D4 80134344 3C014311 */  lui         $at, 0x4311
/* 0000D8 80134348 44800000 */  mtc1        $zero, $f0
/* 0000DC 8013434C 44816000 */  mtc1        $at, $f12
/* 0000E0 80134350 3C013FC0 */  lui         $at, 0x3fc0
/* 0000E4 80134354 44817000 */  mtc1        $at, $f14
/* 0000E8 80134358 240E008F */  addiu       $t6, $zero, 0x8f
/* 0000EC 8013435C 44070000 */  mfc1        $a3, $f0
/* 0000F0 80134360 AFAE0014 */  sw          $t6, 0x14($sp)
/* 0000F4 80134364 0C044E51 */  jal         func_80113944
/* 0000F8 80134368 E7A00010 */   swc1       $f0, 0x10($sp)
/* 0000FC 8013436C 3C014234 */  lui         $at, 0x4234
/* 000100 80134370 44800000 */  mtc1        $zero, $f0
/* 000104 80134374 44812000 */  mtc1        $at, $f4
/* 000108 80134378 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 00010C 8013437C 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 000110 80134380 E7A00010 */  swc1        $f0, 0x10($sp)
/* 000114 80134384 E7A40014 */  swc1        $f4, 0x14($sp)
/* 000118 80134388 C5E6000C */  lwc1        $f6, 0xc($t7)
/* 00011C 8013438C 44050000 */  mfc1        $a1, $f0
/* 000120 80134390 44060000 */  mfc1        $a2, $f0
/* 000124 80134394 44070000 */  mfc1        $a3, $f0
/* 000128 80134398 AFA20034 */  sw          $v0, 0x34($sp)
/* 00012C 8013439C AFA00020 */  sw          $zero, 0x20($sp)
/* 000130 801343A0 AFA0001C */  sw          $zero, 0x1c($sp)
/* 000134 801343A4 24040015 */  addiu       $a0, $zero, 0x15
/* 000138 801343A8 0C007871 */  jal         func_8001E1C4
/* 00013C 801343AC E7A60018 */   swc1       $f6, 0x18($sp)
/* 000140 801343B0 8FA80034 */  lw          $t0, 0x34($sp)
/* 000144 801343B4 8C430054 */  lw          $v1, 0x54($v0)
/* 000148 801343B8 C5080044 */  lwc1        $f8, 0x44($t0)
/* 00014C 801343BC 24190001 */  addiu       $t9, $zero, 0x1
/* 000150 801343C0 E46801EC */  swc1        $f8, 0x1ec($v1)
/* 000154 801343C4 C50A0048 */  lwc1        $f10, 0x48($t0)
/* 000158 801343C8 00000000 */  nop
/* 00015C 801343CC E46A01F0 */  swc1        $f10, 0x1f0($v1)
/* 000160 801343D0 C510004C */  lwc1        $f16, 0x4c($t0)
/* 000164 801343D4 00000000 */  nop
/* 000168 801343D8 E47001F4 */  swc1        $f16, 0x1f4($v1)
/* 00016C 801343DC 8D180038 */  lw          $t8, 0x38($t0)
/* 000170 801343E0 AC79019C */  sw          $t9, 0x19c($v1)
/* 000174 801343E4 10000003 */  b           .L801343F4
/* 000178 801343E8 AC780198 */   sw         $t8, 0x198($v1)
.L801343EC:
/* 00017C 801343EC 0C04D09C */  jal         func_80134270_10F7F0
/* 000180 801343F0 00000000 */   nop
.L801343F4:
/* 000184 801343F4 8FBF002C */  lw          $ra, 0x2c($sp)
.L801343F8:
/* 000188 801343F8 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00018C 801343FC 03E00008 */  jr          $ra
/* 000190 80134400 00000000 */   nop

glabel func_80134404_10F7F0 # 2
/* 000194 80134404 3C014024 */  lui         $at, 0x4024
/* 000198 80134408 44810800 */  mtc1        $at, $f1
/* 00019C 8013440C 44800000 */  mtc1        $zero, $f0
/* 0001A0 80134410 46007121 */  cvt.d.s     $f4, $f14
/* 0001A4 80134414 00000000 */  nop
/* 0001A8 80134418 46202183 */  div.d       $f6, $f4, $f0
/* 0001AC 8013441C AFA60008 */  sw          $a2, 0x8($sp)
/* 0001B0 80134420 444EF800 */  cfc1        $t6, FpcCsr
/* 0001B4 80134424 00000000 */  nop
/* 0001B8 80134428 35C10003 */  ori         $at, $t6, 0x3
/* 0001BC 8013442C 38210002 */  xori        $at, $at, 0x2
/* 0001C0 80134430 44C1F800 */  ctc1        $at, FpcCsr
/* 0001C4 80134434 00000000 */  nop
/* 0001C8 80134438 46203224 */  cvt.w.d     $f8, $f6
/* 0001CC 8013443C 44024000 */  mfc1        $v0, $f8
/* 0001D0 80134440 44CEF800 */  ctc1        $t6, FpcCsr
/* 0001D4 80134444 04400025 */  bltz        $v0, .L801344DC
/* 0001D8 80134448 28410020 */   slti       $at, $v0, 0x20
/* 0001DC 8013444C 10200023 */  beqz        $at, .L801344DC
/* 0001E0 80134450 00000000 */   nop
/* 0001E4 80134454 460062A1 */  cvt.d.s     $f10, $f12
/* 0001E8 80134458 00000000 */  nop
/* 0001EC 8013445C 46205403 */  div.d       $f16, $f10, $f0
/* 0001F0 80134460 444FF800 */  cfc1        $t7, FpcCsr
/* 0001F4 80134464 00000000 */  nop
/* 0001F8 80134468 35E10003 */  ori         $at, $t7, 0x3
/* 0001FC 8013446C 38210002 */  xori        $at, $at, 0x2
/* 000200 80134470 44C1F800 */  ctc1        $at, FpcCsr
/* 000204 80134474 00000000 */  nop
/* 000208 80134478 462084A4 */  cvt.w.d     $f18, $f16
/* 00020C 8013447C 44039000 */  mfc1        $v1, $f18
/* 000210 80134480 44CFF800 */  ctc1        $t7, FpcCsr
/* 000214 80134484 04600015 */  bltz        $v1, .L801344DC
/* 000218 80134488 28610020 */   slti       $at, $v1, 0x20
/* 00021C 8013448C 10200013 */  beqz        $at, .L801344DC
/* 000220 80134490 00000000 */   nop
/* 000224 80134494 C7A40008 */  lwc1        $f4, 0x8($sp)
/* 000228 80134498 00000000 */  nop
/* 00022C 8013449C 460021A1 */  cvt.d.s     $f6, $f4
/* 000230 801344A0 00000000 */  nop
/* 000234 801344A4 46203203 */  div.d       $f8, $f6, $f0
/* 000238 801344A8 4458F800 */  cfc1        $t8, FpcCsr
/* 00023C 801344AC 00000000 */  nop
/* 000240 801344B0 37010003 */  ori         $at, $t8, 0x3
/* 000244 801344B4 38210002 */  xori        $at, $at, 0x2
/* 000248 801344B8 44C1F800 */  ctc1        $at, FpcCsr
/* 00024C 801344BC 00000000 */  nop
/* 000250 801344C0 462042A4 */  cvt.w.d     $f10, $f8
/* 000254 801344C4 44045000 */  mfc1        $a0, $f10
/* 000258 801344C8 44D8F800 */  ctc1        $t8, FpcCsr
/* 00025C 801344CC 04800003 */  bltz        $a0, .L801344DC
/* 000260 801344D0 28810020 */   slti       $at, $a0, 0x20
/* 000264 801344D4 14200003 */  bnez        $at, .L801344E4
/* 000268 801344D8 0002C880 */   sll        $t9, $v0, 2
.L801344DC:
/* 00026C 801344DC 03E00008 */  jr          $ra
/* 000270 801344E0 00001025 */   move       $v0, $zero
.L801344E4:
/* 000274 801344E4 3C058016 */  lui         $a1, %hi(D_801670A8)
/* 000278 801344E8 00B92821 */  addu        $a1, $a1, $t9
/* 00027C 801344EC 8CA570A8 */  lw          $a1, %lo(D_801670A8)($a1)
/* 000280 801344F0 000449C0 */  sll         $t1, $a0, 7
/* 000284 801344F4 14A00003 */  bnez        $a1, .L80134504
/* 000288 801344F8 00A95021 */   addu       $t2, $a1, $t1
/* 00028C 801344FC 03E00008 */  jr          $ra
/* 000290 80134500 00001025 */   move       $v0, $zero
.L80134504:
/* 000294 80134504 00035880 */  sll         $t3, $v1, 2
/* 000298 80134508 014B6021 */  addu        $t4, $t2, $t3
/* 00029C 8013450C 8D820000 */  lw          $v0, 0x0($t4)
/* 0002A0 80134510 00000000 */  nop
/* 0002A4 80134514 03E00008 */  jr          $ra
/* 0002A8 80134518 00000000 */   nop
/* 0002AC 8013451C 00000000 */  nop
