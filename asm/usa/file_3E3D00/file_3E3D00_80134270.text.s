.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80134270 # 0
/* 000000 80134270 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 000004 80134274 44800000 */  mtc1        $zero, $f0
/* 000008 80134278 3C0E8013 */  lui         $t6, %hi(D_80133DE4)
/* 00000C 8013427C 8DCE3DE4 */  lw          $t6, %lo(D_80133DE4)($t6)
/* 000010 80134280 AFBF0034 */  sw          $ra, 0x34($sp)
/* 000014 80134284 E7B50028 */  swc1        $f21, 0x28($sp)
/* 000018 80134288 E7B4002C */  swc1        $f20, 0x2c($sp)
/* 00001C 8013428C 3C013FC0 */  lui         $at, 0x3fc0
/* 000020 80134290 E7A00010 */  swc1        $f0, 0x10($sp)
/* 000024 80134294 E7A00014 */  swc1        $f0, 0x14($sp)
/* 000028 80134298 44813000 */  mtc1        $at, $f6
/* 00002C 8013429C C5C4000C */  lwc1        $f4, 0xc($t6)
/* 000030 801342A0 3C0F8014 */  lui         $t7, %hi(D_801431F8)
/* 000034 801342A4 46062202 */  mul.s       $f8, $f4, $f6
/* 000038 801342A8 25EF31F8 */  addiu       $t7, $t7, %lo(D_801431F8)
/* 00003C 801342AC 3C063F99 */  lui         $a2, 0x3f99
/* 000040 801342B0 34C6999A */  ori         $a2, $a2, 0x999a
/* 000044 801342B4 AFAF001C */  sw          $t7, 0x1c($sp)
/* 000048 801342B8 E7A80018 */  swc1        $f8, 0x18($sp)
/* 00004C 801342BC AFA00020 */  sw          $zero, 0x20($sp)
/* 000050 801342C0 2404000F */  addiu       $a0, $zero, 0xf
/* 000054 801342C4 3C0542C8 */  lui         $a1, 0x42c8
/* 000058 801342C8 0C007871 */  jal         func_8001E1C4
/* 00005C 801342CC 3C0742BE */   lui        $a3, 0x42be
/* 000060 801342D0 0C00CB07 */  jal         func_80032C1C
/* 000064 801342D4 24040015 */   addiu      $a0, $zero, 0x15
/* 000068 801342D8 10400024 */  beqz        $v0, .L8013436C
/* 00006C 801342DC 00000000 */   nop
/* 000070 801342E0 0C00CB07 */  jal         func_80032C1C
/* 000074 801342E4 24040016 */   addiu      $a0, $zero, 0x16
/* 000078 801342E8 14400020 */  bnez        $v0, .L8013436C
/* 00007C 801342EC 00000000 */   nop
/* 000080 801342F0 0C00CB07 */  jal         func_80032C1C
/* 000084 801342F4 24040017 */   addiu      $a0, $zero, 0x17
/* 000088 801342F8 44825000 */  mtc1        $v0, $f10
/* 00008C 801342FC 3C0140A0 */  lui         $at, 0x40a0
/* 000090 80134300 46805420 */  cvt.s.w     $f16, $f10
/* 000094 80134304 44819000 */  mtc1        $at, $f18
/* 000098 80134308 44800000 */  mtc1        $zero, $f0
/* 00009C 8013430C 46128103 */  div.s       $f4, $f16, $f18
/* 0000A0 80134310 3C013F80 */  lui         $at, 0x3f80
/* 0000A4 80134314 3C188013 */  lui         $t8, %hi(D_80133DE4)
/* 0000A8 80134318 8F183DE4 */  lw          $t8, %lo(D_80133DE4)($t8)
/* 0000AC 8013431C 44813000 */  mtc1        $at, $f6
/* 0000B0 80134320 3C013F00 */  lui         $at, 0x3f00
/* 0000B4 80134324 E7A00010 */  swc1        $f0, 0x10($sp)
/* 0000B8 80134328 E7A00014 */  swc1        $f0, 0x14($sp)
/* 0000BC 8013432C 44818000 */  mtc1        $at, $f16
/* 0000C0 80134330 C70A000C */  lwc1        $f10, 0xc($t8)
/* 0000C4 80134334 4480A000 */  mtc1        $zero, $f20
/* 0000C8 80134338 3C198014 */  lui         $t9, %hi(D_8014363C)
/* 0000CC 8013433C 46105482 */  mul.s       $f18, $f10, $f16
/* 0000D0 80134340 46062200 */  add.s       $f8, $f4, $f6
/* 0000D4 80134344 2739363C */  addiu       $t9, $t9, %lo(D_8014363C)
/* 0000D8 80134348 4406A000 */  mfc1        $a2, $f20
/* 0000DC 8013434C 46124102 */  mul.s       $f4, $f8, $f18
/* 0000E0 80134350 4407A000 */  mfc1        $a3, $f20
/* 0000E4 80134354 AFB9001C */  sw          $t9, 0x1c($sp)
/* 0000E8 80134358 AFA00020 */  sw          $zero, 0x20($sp)
/* 0000EC 8013435C E7A40018 */  swc1        $f4, 0x18($sp)
/* 0000F0 80134360 24040017 */  addiu       $a0, $zero, 0x17
/* 0000F4 80134364 0C007871 */  jal         func_8001E1C4
/* 0000F8 80134368 3C0542C8 */   lui        $a1, 0x42c8
.L8013436C:
/* 0000FC 8013436C 4480A000 */  mtc1        $zero, $f20
/* 000100 80134370 0C00AB39 */  jal         func_8002ACE4
/* 000104 80134374 00000000 */   nop
/* 000108 80134378 24010008 */  addiu       $at, $zero, 0x8
/* 00010C 8013437C 14410028 */  bne         $v0, $at, .L80134420
/* 000110 80134380 3C064316 */   lui        $a2, 0x4316
/* 000114 80134384 3C014311 */  lui         $at, 0x4311
/* 000118 80134388 44816000 */  mtc1        $at, $f12
/* 00011C 8013438C 3C013FC0 */  lui         $at, 0x3fc0
/* 000120 80134390 44817000 */  mtc1        $at, $f14
/* 000124 80134394 4407A000 */  mfc1        $a3, $f20
/* 000128 80134398 2409008F */  addiu       $t1, $zero, 0x8f
/* 00012C 8013439C AFA90014 */  sw          $t1, 0x14($sp)
/* 000130 801343A0 0C044E51 */  jal         func_80113944
/* 000134 801343A4 E7B40010 */   swc1       $f20, 0x10($sp)
/* 000138 801343A8 3C014234 */  lui         $at, 0x4234
/* 00013C 801343AC 44813000 */  mtc1        $at, $f6
/* 000140 801343B0 3C0A8013 */  lui         $t2, %hi(D_80133DE4)
/* 000144 801343B4 8D4A3DE4 */  lw          $t2, %lo(D_80133DE4)($t2)
/* 000148 801343B8 E7B40010 */  swc1        $f20, 0x10($sp)
/* 00014C 801343BC E7A60014 */  swc1        $f6, 0x14($sp)
/* 000150 801343C0 C54A000C */  lwc1        $f10, 0xc($t2)
/* 000154 801343C4 4405A000 */  mfc1        $a1, $f20
/* 000158 801343C8 4406A000 */  mfc1        $a2, $f20
/* 00015C 801343CC 4407A000 */  mfc1        $a3, $f20
/* 000160 801343D0 AFA2003C */  sw          $v0, 0x3c($sp)
/* 000164 801343D4 AFA00020 */  sw          $zero, 0x20($sp)
/* 000168 801343D8 AFA0001C */  sw          $zero, 0x1c($sp)
/* 00016C 801343DC 24040015 */  addiu       $a0, $zero, 0x15
/* 000170 801343E0 0C007871 */  jal         func_8001E1C4
/* 000174 801343E4 E7AA0018 */   swc1       $f10, 0x18($sp)
/* 000178 801343E8 8FA8003C */  lw          $t0, 0x3c($sp)
/* 00017C 801343EC 8C430054 */  lw          $v1, 0x54($v0)
/* 000180 801343F0 C5100044 */  lwc1        $f16, 0x44($t0)
/* 000184 801343F4 240C0001 */  addiu       $t4, $zero, 0x1
/* 000188 801343F8 E47001EC */  swc1        $f16, 0x1ec($v1)
/* 00018C 801343FC C5080048 */  lwc1        $f8, 0x48($t0)
/* 000190 80134400 00000000 */  nop
/* 000194 80134404 E46801F0 */  swc1        $f8, 0x1f0($v1)
/* 000198 80134408 C512004C */  lwc1        $f18, 0x4c($t0)
/* 00019C 8013440C 00000000 */  nop
/* 0001A0 80134410 E47201F4 */  swc1        $f18, 0x1f4($v1)
/* 0001A4 80134414 8D0B0038 */  lw          $t3, 0x38($t0)
/* 0001A8 80134418 AC6C019C */  sw          $t4, 0x19c($v1)
/* 0001AC 8013441C AC6B0198 */  sw          $t3, 0x198($v1)
.L80134420:
/* 0001B0 80134420 8FBF0034 */  lw          $ra, 0x34($sp)
/* 0001B4 80134424 C7B50028 */  lwc1        $f21, 0x28($sp)
/* 0001B8 80134428 C7B4002C */  lwc1        $f20, 0x2c($sp)
/* 0001BC 8013442C 03E00008 */  jr          $ra
/* 0001C0 80134430 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_80134434 # 1
/* 0001C4 80134434 03E00008 */  jr          $ra
/* 0001C8 80134438 00000000 */   nop

glabel func_8013443C # 2
/* 0001CC 8013443C 3C014034 */  lui         $at, 0x4034
/* 0001D0 80134440 44810800 */  mtc1        $at, $f1
/* 0001D4 80134444 44800000 */  mtc1        $zero, $f0
/* 0001D8 80134448 46007121 */  cvt.d.s     $f4, $f14
/* 0001DC 8013444C 00000000 */  nop
/* 0001E0 80134450 46202183 */  div.d       $f6, $f4, $f0
/* 0001E4 80134454 AFA60008 */  sw          $a2, 0x8($sp)
/* 0001E8 80134458 444EF800 */  cfc1        $t6, $31
/* 0001EC 8013445C 00000000 */  nop
/* 0001F0 80134460 35C10003 */  ori         $at, $t6, 0x3
/* 0001F4 80134464 38210002 */  xori        $at, $at, 0x2
/* 0001F8 80134468 44C1F800 */  ctc1        $at, $31
/* 0001FC 8013446C 00000000 */  nop
/* 000200 80134470 46203224 */  cvt.w.d     $f8, $f6
/* 000204 80134474 44024000 */  mfc1        $v0, $f8
/* 000208 80134478 44CEF800 */  ctc1        $t6, $31
/* 00020C 8013447C 04400025 */  bltz        $v0, .L80134514
/* 000210 80134480 28410008 */   slti       $at, $v0, 0x8
/* 000214 80134484 10200023 */  beqz        $at, .L80134514
/* 000218 80134488 00000000 */   nop
/* 00021C 8013448C 460062A1 */  cvt.d.s     $f10, $f12
/* 000220 80134490 00000000 */  nop
/* 000224 80134494 46205403 */  div.d       $f16, $f10, $f0
/* 000228 80134498 444FF800 */  cfc1        $t7, $31
/* 00022C 8013449C 00000000 */  nop
/* 000230 801344A0 35E10003 */  ori         $at, $t7, 0x3
/* 000234 801344A4 38210002 */  xori        $at, $at, 0x2
/* 000238 801344A8 44C1F800 */  ctc1        $at, $31
/* 00023C 801344AC 00000000 */  nop
/* 000240 801344B0 462084A4 */  cvt.w.d     $f18, $f16
/* 000244 801344B4 44039000 */  mfc1        $v1, $f18
/* 000248 801344B8 44CFF800 */  ctc1        $t7, $31
/* 00024C 801344BC 04600015 */  bltz        $v1, .L80134514
/* 000250 801344C0 28610008 */   slti       $at, $v1, 0x8
/* 000254 801344C4 10200013 */  beqz        $at, .L80134514
/* 000258 801344C8 00000000 */   nop
/* 00025C 801344CC C7A40008 */  lwc1        $f4, 0x8($sp)
/* 000260 801344D0 00000000 */  nop
/* 000264 801344D4 460021A1 */  cvt.d.s     $f6, $f4
/* 000268 801344D8 00000000 */  nop
/* 00026C 801344DC 46203203 */  div.d       $f8, $f6, $f0
/* 000270 801344E0 4458F800 */  cfc1        $t8, $31
/* 000274 801344E4 00000000 */  nop
/* 000278 801344E8 37010003 */  ori         $at, $t8, 0x3
/* 00027C 801344EC 38210002 */  xori        $at, $at, 0x2
/* 000280 801344F0 44C1F800 */  ctc1        $at, $31
/* 000284 801344F4 00000000 */  nop
/* 000288 801344F8 462042A4 */  cvt.w.d     $f10, $f8
/* 00028C 801344FC 44045000 */  mfc1        $a0, $f10
/* 000290 80134500 44D8F800 */  ctc1        $t8, $31
/* 000294 80134504 04800003 */  bltz        $a0, .L80134514
/* 000298 80134508 28810008 */   slti       $at, $a0, 0x8
/* 00029C 8013450C 14200003 */  bnez        $at, .L8013451C
/* 0002A0 80134510 0002C880 */   sll        $t9, $v0, 2
.L80134514:
/* 0002A4 80134514 03E00008 */  jr          $ra
/* 0002A8 80134518 00001025 */   move       $v0, $zero
.L8013451C:
/* 0002AC 8013451C 3C058014 */  lui         $a1, %hi(D_8014743C)
/* 0002B0 80134520 00B92821 */  addu        $a1, $a1, $t9
/* 0002B4 80134524 8CA5743C */  lw          $a1, %lo(D_8014743C)($a1)
/* 0002B8 80134528 00044940 */  sll         $t1, $a0, 5
/* 0002BC 8013452C 14A00003 */  bnez        $a1, .L8013453C
/* 0002C0 80134530 00A95021 */   addu       $t2, $a1, $t1
/* 0002C4 80134534 03E00008 */  jr          $ra
/* 0002C8 80134538 00001025 */   move       $v0, $zero
.L8013453C:
/* 0002CC 8013453C 00035880 */  sll         $t3, $v1, 2
/* 0002D0 80134540 014B6021 */  addu        $t4, $t2, $t3
/* 0002D4 80134544 8D820000 */  lw          $v0, 0x0($t4)
/* 0002D8 80134548 00000000 */  nop
/* 0002DC 8013454C 03E00008 */  jr          $ra
/* 0002E0 80134550 00000000 */   nop
/* 0002E4 80134554 00000000 */  nop
/* 0002E8 80134558 00000000 */  nop
/* 0002EC 8013455C 00000000 */  nop
