.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80134270_2DA640 # 0
/* 000000 80134270 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000004 80134274 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000008 80134278 0C00CB07 */  jal         func_80032C1C
/* 00000C 8013427C 24040056 */   addiu      $a0, $zero, 0x56
/* 000010 80134280 1040005F */  beqz        $v0, .L80134400
/* 000014 80134284 24010001 */   addiu      $at, $zero, 0x1
/* 000018 80134288 10410048 */  beq         $v0, $at, .L801343AC
/* 00001C 8013428C 24010002 */   addiu      $at, $zero, 0x2
/* 000020 80134290 10410033 */  beq         $v0, $at, .L80134360
/* 000024 80134294 3C0142C8 */   lui        $at, 0x42c8
/* 000028 80134298 0C00CB07 */  jal         func_80032C1C
/* 00002C 8013429C 24040016 */   addiu      $a0, $zero, 0x16
/* 000030 801342A0 10400017 */  beqz        $v0, .L80134300
/* 000034 801342A4 3C0142B4 */   lui        $at, 0x42b4
/* 000038 801342A8 0C00EAC8 */  jal         func_8003AB20
/* 00003C 801342AC 24040003 */   addiu      $a0, $zero, 0x3
/* 000040 801342B0 14400012 */  bnez        $v0, .L801342FC
/* 000044 801342B4 3C018014 */   lui        $at, %hi(D_8013E8A0)
/* 000048 801342B8 C42CE8A0 */  lwc1        $f12, %lo(D_8013E8A0)($at)
/* 00004C 801342BC 3C014192 */  lui         $at, 0x4192
/* 000050 801342C0 44817000 */  mtc1        $at, $f14
/* 000054 801342C4 3C0142B4 */  lui         $at, 0x42b4
/* 000058 801342C8 44812000 */  mtc1        $at, $f4
/* 00005C 801342CC 3C0E8014 */  lui         $t6, %hi(D_8013DD80)
/* 000060 801342D0 25CEDD80 */  addiu       $t6, $t6, %lo(D_8013DD80)
/* 000064 801342D4 3C064315 */  lui         $a2, (0x43158000 >> 16)
/* 000068 801342D8 240F0003 */  addiu       $t7, $zero, 0x3
/* 00006C 801342DC AFAF0018 */  sw          $t7, 0x18($sp)
/* 000070 801342E0 34C68000 */  ori         $a2, $a2, (0x43158000 & 0xFFFF)
/* 000074 801342E4 AFAE0014 */  sw          $t6, 0x14($sp)
/* 000078 801342E8 24070000 */  addiu       $a3, $zero, 0x0
/* 00007C 801342EC 0C0079DB */  jal         func_8001E76C
/* 000080 801342F0 E7A40010 */   swc1       $f4, 0x10($sp)
/* 000084 801342F4 1000001A */  b           .L80134360
/* 000088 801342F8 3C0142C8 */   lui        $at, 0x42c8
.L801342FC:
/* 00008C 801342FC 3C0142B4 */  lui         $at, 0x42b4
.L80134300:
/* 000090 80134300 44814000 */  mtc1        $at, $f8
/* 000094 80134304 44803000 */  mtc1        $zero, $f6
/* 000098 80134308 3C188013 */  lui         $t8, %hi(D_80133DE4)
/* 00009C 8013430C 8F183DE4 */  lw          $t8, %lo(D_80133DE4)($t8)
/* 0000A0 80134310 3C013FC0 */  lui         $at, 0x3fc0
/* 0000A4 80134314 E7A80014 */  swc1        $f8, 0x14($sp)
/* 0000A8 80134318 E7A60010 */  swc1        $f6, 0x10($sp)
/* 0000AC 8013431C 44818000 */  mtc1        $at, $f16
/* 0000B0 80134320 C70A000C */  lwc1        $f10, 0xc($t8)
/* 0000B4 80134324 3C198014 */  lui         $t9, %hi(D_8013DD80)
/* 0000B8 80134328 46105482 */  mul.s       $f18, $f10, $f16
/* 0000BC 8013432C 2739DD80 */  addiu       $t9, $t9, %lo(D_8013DD80)
/* 0000C0 80134330 3C054340 */  lui         $a1, (0x43408000 >> 16)
/* 0000C4 80134334 3C074315 */  lui         $a3, (0x43158000 >> 16)
/* 0000C8 80134338 24080003 */  addiu       $t0, $zero, 0x3
/* 0000CC 8013433C AFA80020 */  sw          $t0, 0x20($sp)
/* 0000D0 80134340 34E78000 */  ori         $a3, $a3, (0x43158000 & 0xFFFF)
/* 0000D4 80134344 34A58000 */  ori         $a1, $a1, (0x43408000 & 0xFFFF)
/* 0000D8 80134348 AFB9001C */  sw          $t9, 0x1c($sp)
/* 0000DC 8013434C E7B20018 */  swc1        $f18, 0x18($sp)
/* 0000E0 80134350 2404000C */  addiu       $a0, $zero, 0xc
/* 0000E4 80134354 0C007871 */  jal         func_8001E1C4
/* 0000E8 80134358 3C064192 */   lui        $a2, 0x4192
/* 0000EC 8013435C 3C0142C8 */  lui         $at, 0x42c8
.L80134360:
/* 0000F0 80134360 44813000 */  mtc1        $at, $f6
/* 0000F4 80134364 44802000 */  mtc1        $zero, $f4
/* 0000F8 80134368 3C098013 */  lui         $t1, %hi(D_80133DE4)
/* 0000FC 8013436C 8D293DE4 */  lw          $t1, %lo(D_80133DE4)($t1)
/* 000100 80134370 E7A60014 */  swc1        $f6, 0x14($sp)
/* 000104 80134374 E7A40010 */  swc1        $f4, 0x10($sp)
/* 000108 80134378 C528000C */  lwc1        $f8, 0xc($t1)
/* 00010C 8013437C 3C0A8014 */  lui         $t2, %hi(D_8013DD80)
/* 000110 80134380 254ADD80 */  addiu       $t2, $t2, %lo(D_8013DD80)
/* 000114 80134384 3C05433B */  lui         $a1, (0x433B8000 >> 16)
/* 000118 80134388 240B0002 */  addiu       $t3, $zero, 0x2
/* 00011C 8013438C AFAB0020 */  sw          $t3, 0x20($sp)
/* 000120 80134390 34A58000 */  ori         $a1, $a1, (0x433B8000 & 0xFFFF)
/* 000124 80134394 AFAA001C */  sw          $t2, 0x1c($sp)
/* 000128 80134398 24040003 */  addiu       $a0, $zero, 0x3
/* 00012C 8013439C 3C064192 */  lui         $a2, 0x4192
/* 000130 801343A0 3C074324 */  lui         $a3, 0x4324
/* 000134 801343A4 0C007871 */  jal         func_8001E1C4
/* 000138 801343A8 E7A80018 */   swc1       $f8, 0x18($sp)
.L801343AC:
/* 00013C 801343AC 3C0142C8 */  lui         $at, 0x42c8
/* 000140 801343B0 44818000 */  mtc1        $at, $f16
/* 000144 801343B4 44805000 */  mtc1        $zero, $f10
/* 000148 801343B8 3C0C8013 */  lui         $t4, %hi(D_80133DE4)
/* 00014C 801343BC 8D8C3DE4 */  lw          $t4, %lo(D_80133DE4)($t4)
/* 000150 801343C0 E7B00014 */  swc1        $f16, 0x14($sp)
/* 000154 801343C4 E7AA0010 */  swc1        $f10, 0x10($sp)
/* 000158 801343C8 C592000C */  lwc1        $f18, 0xc($t4)
/* 00015C 801343CC 3C0D8014 */  lui         $t5, %hi(D_8013DD80)
/* 000160 801343D0 25ADDD80 */  addiu       $t5, $t5, %lo(D_8013DD80)
/* 000164 801343D4 3C054335 */  lui         $a1, (0x43358000 >> 16)
/* 000168 801343D8 3C074324 */  lui         $a3, (0x43248000 >> 16)
/* 00016C 801343DC 240E0001 */  addiu       $t6, $zero, 0x1
/* 000170 801343E0 AFAE0020 */  sw          $t6, 0x20($sp)
/* 000174 801343E4 34E78000 */  ori         $a3, $a3, (0x43248000 & 0xFFFF)
/* 000178 801343E8 34A58000 */  ori         $a1, $a1, (0x43358000 & 0xFFFF)
/* 00017C 801343EC AFAD001C */  sw          $t5, 0x1c($sp)
/* 000180 801343F0 24040004 */  addiu       $a0, $zero, 0x4
/* 000184 801343F4 3C064192 */  lui         $a2, 0x4192
/* 000188 801343F8 0C007871 */  jal         func_8001E1C4
/* 00018C 801343FC E7B20018 */   swc1       $f18, 0x18($sp)
.L80134400:
/* 000190 80134400 44802000 */  mtc1        $zero, $f4
/* 000194 80134404 44803000 */  mtc1        $zero, $f6
/* 000198 80134408 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 00019C 8013440C 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 0001A0 80134410 E7A40010 */  swc1        $f4, 0x10($sp)
/* 0001A4 80134414 E7A60014 */  swc1        $f6, 0x14($sp)
/* 0001A8 80134418 C5E8000C */  lwc1        $f8, 0xc($t7)
/* 0001AC 8013441C 3C188014 */  lui         $t8, %hi(D_8013D380)
/* 0001B0 80134420 2718D380 */  addiu       $t8, $t8, %lo(D_8013D380)
/* 0001B4 80134424 3C074310 */  lui         $a3, (0x43108000 >> 16)
/* 0001B8 80134428 34E78000 */  ori         $a3, $a3, (0x43108000 & 0xFFFF)
/* 0001BC 8013442C AFB8001C */  sw          $t8, 0x1c($sp)
/* 0001C0 80134430 AFA00020 */  sw          $zero, 0x20($sp)
/* 0001C4 80134434 24040001 */  addiu       $a0, $zero, 0x1
/* 0001C8 80134438 3C054328 */  lui         $a1, 0x4328
/* 0001CC 8013443C 3C064190 */  lui         $a2, 0x4190
/* 0001D0 80134440 0C007871 */  jal         func_8001E1C4
/* 0001D4 80134444 E7A80018 */   swc1       $f8, 0x18($sp)
/* 0001D8 80134448 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0001DC 8013444C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0001E0 80134450 03E00008 */  jr          $ra
/* 0001E4 80134454 00000000 */   nop

glabel func_80134458_2DA640 # 1
/* 0001E8 80134458 3C014034 */  lui         $at, 0x4034
/* 0001EC 8013445C 44810800 */  mtc1        $at, $f1
/* 0001F0 80134460 44800000 */  mtc1        $zero, $f0
/* 0001F4 80134464 46007121 */  cvt.d.s     $f4, $f14
/* 0001F8 80134468 00000000 */  nop
/* 0001FC 8013446C 46202183 */  div.d       $f6, $f4, $f0
/* 000200 80134470 AFA60008 */  sw          $a2, 0x8($sp)
/* 000204 80134474 444EF800 */  cfc1        $t6, $31
/* 000208 80134478 00000000 */  nop
/* 00020C 8013447C 35C10003 */  ori         $at, $t6, 0x3
/* 000210 80134480 38210002 */  xori        $at, $at, 0x2
/* 000214 80134484 44C1F800 */  ctc1        $at, $31
/* 000218 80134488 00000000 */  nop
/* 00021C 8013448C 46203224 */  cvt.w.d     $f8, $f6
/* 000220 80134490 44024000 */  mfc1        $v0, $f8
/* 000224 80134494 44CEF800 */  ctc1        $t6, $31
/* 000228 80134498 04400025 */  bltz        $v0, .L80134530
/* 00022C 8013449C 28410010 */   slti       $at, $v0, 0x10
/* 000230 801344A0 10200023 */  beqz        $at, .L80134530
/* 000234 801344A4 00000000 */   nop
/* 000238 801344A8 460062A1 */  cvt.d.s     $f10, $f12
/* 00023C 801344AC 00000000 */  nop
/* 000240 801344B0 46205403 */  div.d       $f16, $f10, $f0
/* 000244 801344B4 444FF800 */  cfc1        $t7, $31
/* 000248 801344B8 00000000 */  nop
/* 00024C 801344BC 35E10003 */  ori         $at, $t7, 0x3
/* 000250 801344C0 38210002 */  xori        $at, $at, 0x2
/* 000254 801344C4 44C1F800 */  ctc1        $at, $31
/* 000258 801344C8 00000000 */  nop
/* 00025C 801344CC 462084A4 */  cvt.w.d     $f18, $f16
/* 000260 801344D0 44039000 */  mfc1        $v1, $f18
/* 000264 801344D4 44CFF800 */  ctc1        $t7, $31
/* 000268 801344D8 04600015 */  bltz        $v1, .L80134530
/* 00026C 801344DC 28610010 */   slti       $at, $v1, 0x10
/* 000270 801344E0 10200013 */  beqz        $at, .L80134530
/* 000274 801344E4 00000000 */   nop
/* 000278 801344E8 C7A40008 */  lwc1        $f4, 0x8($sp)
/* 00027C 801344EC 00000000 */  nop
/* 000280 801344F0 460021A1 */  cvt.d.s     $f6, $f4
/* 000284 801344F4 00000000 */  nop
/* 000288 801344F8 46203203 */  div.d       $f8, $f6, $f0
/* 00028C 801344FC 4458F800 */  cfc1        $t8, $31
/* 000290 80134500 00000000 */  nop
/* 000294 80134504 37010003 */  ori         $at, $t8, 0x3
/* 000298 80134508 38210002 */  xori        $at, $at, 0x2
/* 00029C 8013450C 44C1F800 */  ctc1        $at, $31
/* 0002A0 80134510 00000000 */  nop
/* 0002A4 80134514 462042A4 */  cvt.w.d     $f10, $f8
/* 0002A8 80134518 44045000 */  mfc1        $a0, $f10
/* 0002AC 8013451C 44D8F800 */  ctc1        $t8, $31
/* 0002B0 80134520 04800003 */  bltz        $a0, .L80134530
/* 0002B4 80134524 28810010 */   slti       $at, $a0, 0x10
/* 0002B8 80134528 14200003 */  bnez        $at, .L80134538
/* 0002BC 8013452C 0002C880 */   sll        $t9, $v0, 2
.L80134530:
/* 0002C0 80134530 03E00008 */  jr          $ra
/* 0002C4 80134534 00001025 */   move       $v0, $zero
.L80134538:
/* 0002C8 80134538 3C058017 */  lui         $a1, %hi(D_80174674)
/* 0002CC 8013453C 00B92821 */  addu        $a1, $a1, $t9
/* 0002D0 80134540 8CA54674 */  lw          $a1, %lo(D_80174674)($a1)
/* 0002D4 80134544 00044980 */  sll         $t1, $a0, 6
/* 0002D8 80134548 14A00003 */  bnez        $a1, .L80134558
/* 0002DC 8013454C 00A95021 */   addu       $t2, $a1, $t1
/* 0002E0 80134550 03E00008 */  jr          $ra
/* 0002E4 80134554 00001025 */   move       $v0, $zero
.L80134558:
/* 0002E8 80134558 00035880 */  sll         $t3, $v1, 2
/* 0002EC 8013455C 014B6021 */  addu        $t4, $t2, $t3
/* 0002F0 80134560 8D820000 */  lw          $v0, 0x0($t4)
/* 0002F4 80134564 00000000 */  nop
/* 0002F8 80134568 03E00008 */  jr          $ra
/* 0002FC 8013456C 00000000 */   nop
