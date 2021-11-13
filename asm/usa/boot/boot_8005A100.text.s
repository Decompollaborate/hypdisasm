.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005A100 # 0
/* 000000 8005A100 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 000004 8005A104 3C03A460 */  lui         $v1, 0xa460
/* 000008 8005A108 34630010 */  ori         $v1, $v1, 0x10
/* 00000C 8005A10C AFBF001C */  sw          $ra, 0x1c($sp)
/* 000010 8005A110 AFB00018 */  sw          $s0, 0x18($sp)
/* 000014 8005A114 AFA60028 */  sw          $a2, 0x28($sp)
/* 000018 8005A118 8C620000 */  lw          $v0, 0x0($v1)
/* 00001C 8005A11C 00808025 */  move        $s0, $a0
/* 000020 8005A120 304E0003 */  andi        $t6, $v0, 0x3
/* 000024 8005A124 51C00006 */  beql        $t6, $zero, .L8005A140
/* 000028 8005A128 92020009 */   lbu        $v0, 0x9($s0)
/* 00002C 8005A12C 8C620000 */  lw          $v0, 0x0($v1)
.L8005A130:
/* 000030 8005A130 304F0003 */  andi        $t7, $v0, 0x3
/* 000034 8005A134 55E0FFFE */  bnel        $t7, $zero, .L8005A130
/* 000038 8005A138 8C620000 */   lw         $v0, 0x0($v1)
/* 00003C 8005A13C 92020009 */  lbu         $v0, 0x9($s0)
.L8005A140:
/* 000040 8005A140 3C04800A */  lui         $a0, %hi(D_8009EE60)
/* 000044 8005A144 92190004 */  lbu         $t9, 0x4($s0)
/* 000048 8005A148 0002C080 */  sll         $t8, $v0, 2
/* 00004C 8005A14C 00982021 */  addu        $a0, $a0, $t8
/* 000050 8005A150 8C84EE60 */  lw          $a0, %lo(D_8009EE60)($a0)
/* 000054 8005A154 90880004 */  lbu         $t0, 0x4($a0)
/* 000058 8005A158 5328003D */  beql        $t9, $t0, .L8005A250
/* 00005C 8005A15C 00E02025 */   move       $a0, $a3
/* 000060 8005A160 14400019 */  bne         $v0, $zero, .L8005A1C8
/* 000064 8005A164 00801825 */   move       $v1, $a0
/* 000068 8005A168 92020005 */  lbu         $v0, 0x5($s0)
/* 00006C 8005A16C 90890005 */  lbu         $t1, 0x5($a0)
/* 000070 8005A170 3C0AA460 */  lui         $t2, %hi(D_A4600014)
/* 000074 8005A174 3C0CA460 */  lui         $t4, %hi(D_A460001C)
/* 000078 8005A178 10490002 */  beq         $v0, $t1, .L8005A184
/* 00007C 8005A17C 3C0EA460 */   lui        $t6, %hi(D_A4600020)
/* 000080 8005A180 AD420014 */  sw          $v0, %lo(D_A4600014)($t2)
.L8005A184:
/* 000084 8005A184 92020006 */  lbu         $v0, 0x6($s0)
/* 000088 8005A188 906B0006 */  lbu         $t3, 0x6($v1)
/* 00008C 8005A18C 3C18A460 */  lui         $t8, %hi(D_A4600018)
/* 000090 8005A190 504B0003 */  beql        $v0, $t3, .L8005A1A0
/* 000094 8005A194 92020007 */   lbu        $v0, 0x7($s0)
/* 000098 8005A198 AD82001C */  sw          $v0, %lo(D_A460001C)($t4)
/* 00009C 8005A19C 92020007 */  lbu         $v0, 0x7($s0)
.L8005A1A0:
/* 0000A0 8005A1A0 906D0007 */  lbu         $t5, 0x7($v1)
/* 0000A4 8005A1A4 504D0003 */  beql        $v0, $t5, .L8005A1B4
/* 0000A8 8005A1A8 92020008 */   lbu        $v0, 0x8($s0)
/* 0000AC 8005A1AC ADC20020 */  sw          $v0, %lo(D_A4600020)($t6)
/* 0000B0 8005A1B0 92020008 */  lbu         $v0, 0x8($s0)
.L8005A1B4:
/* 0000B4 8005A1B4 906F0008 */  lbu         $t7, 0x8($v1)
/* 0000B8 8005A1B8 504F001B */  beql        $v0, $t7, .L8005A228
/* 0000BC 8005A1BC 920F0004 */   lbu        $t7, 0x4($s0)
/* 0000C0 8005A1C0 10000018 */  b           .L8005A224
/* 0000C4 8005A1C4 AF020018 */   sw         $v0, %lo(D_A4600018)($t8)
.L8005A1C8:
/* 0000C8 8005A1C8 92020005 */  lbu         $v0, 0x5($s0)
/* 0000CC 8005A1CC 90790005 */  lbu         $t9, 0x5($v1)
/* 0000D0 8005A1D0 3C08A460 */  lui         $t0, %hi(D_A4600024)
/* 0000D4 8005A1D4 3C0AA460 */  lui         $t2, %hi(D_A460002C)
/* 0000D8 8005A1D8 10590002 */  beq         $v0, $t9, .L8005A1E4
/* 0000DC 8005A1DC 3C0CA460 */   lui        $t4, %hi(D_A4600030)
/* 0000E0 8005A1E0 AD020024 */  sw          $v0, %lo(D_A4600024)($t0)
.L8005A1E4:
/* 0000E4 8005A1E4 92020006 */  lbu         $v0, 0x6($s0)
/* 0000E8 8005A1E8 90690006 */  lbu         $t1, 0x6($v1)
/* 0000EC 8005A1EC 3C0EA460 */  lui         $t6, %hi(D_A4600028)
/* 0000F0 8005A1F0 50490003 */  beql        $v0, $t1, .L8005A200
/* 0000F4 8005A1F4 92020007 */   lbu        $v0, 0x7($s0)
/* 0000F8 8005A1F8 AD42002C */  sw          $v0, %lo(D_A460002C)($t2)
/* 0000FC 8005A1FC 92020007 */  lbu         $v0, 0x7($s0)
.L8005A200:
/* 000100 8005A200 906B0007 */  lbu         $t3, 0x7($v1)
/* 000104 8005A204 504B0003 */  beql        $v0, $t3, .L8005A214
/* 000108 8005A208 92020008 */   lbu        $v0, 0x8($s0)
/* 00010C 8005A20C AD820030 */  sw          $v0, %lo(D_A4600030)($t4)
/* 000110 8005A210 92020008 */  lbu         $v0, 0x8($s0)
.L8005A214:
/* 000114 8005A214 906D0008 */  lbu         $t5, 0x8($v1)
/* 000118 8005A218 504D0003 */  beql        $v0, $t5, .L8005A228
/* 00011C 8005A21C 920F0004 */   lbu        $t7, 0x4($s0)
/* 000120 8005A220 ADC20028 */  sw          $v0, %lo(D_A4600028)($t6)
.L8005A224:
/* 000124 8005A224 920F0004 */  lbu         $t7, 0x4($s0)
.L8005A228:
/* 000128 8005A228 A06F0004 */  sb          $t7, 0x4($v1)
/* 00012C 8005A22C 92180005 */  lbu         $t8, 0x5($s0)
/* 000130 8005A230 A0780005 */  sb          $t8, 0x5($v1)
/* 000134 8005A234 92190006 */  lbu         $t9, 0x6($s0)
/* 000138 8005A238 A0790006 */  sb          $t9, 0x6($v1)
/* 00013C 8005A23C 92080007 */  lbu         $t0, 0x7($s0)
/* 000140 8005A240 A0680007 */  sb          $t0, 0x7($v1)
/* 000144 8005A244 92090008 */  lbu         $t1, 0x8($s0)
/* 000148 8005A248 A0690008 */  sb          $t1, 0x8($v1)
/* 00014C 8005A24C 00E02025 */  move        $a0, $a3
.L8005A250:
/* 000150 8005A250 0C0143B0 */  jal         func_80050EC0
/* 000154 8005A254 AFA50024 */   sw         $a1, 0x24($sp)
/* 000158 8005A258 8FA50024 */  lw          $a1, 0x24($sp)
/* 00015C 8005A25C 3C0AA460 */  lui         $t2, %hi(D_A4600000)
/* 000160 8005A260 AD420000 */  sw          $v0, %lo(D_A4600000)($t2)
/* 000164 8005A264 8FAC0028 */  lw          $t4, 0x28($sp)
/* 000168 8005A268 8E0B000C */  lw          $t3, 0xc($s0)
/* 00016C 8005A26C 3C011FFF */  lui         $at, 0x1fff
/* 000170 8005A270 3421FFFF */  ori         $at, $at, 0xffff
/* 000174 8005A274 016C6825 */  or          $t5, $t3, $t4
/* 000178 8005A278 01A17024 */  and         $t6, $t5, $at
/* 00017C 8005A27C 3C0FA460 */  lui         $t7, %hi(D_A4600004)
/* 000180 8005A280 10A00006 */  beq         $a1, $zero, .L8005A29C
/* 000184 8005A284 ADEE0004 */   sw         $t6, %lo(D_A4600004)($t7)
/* 000188 8005A288 24010001 */  addiu       $at, $zero, 0x1
/* 00018C 8005A28C 10A10008 */  beq         $a1, $at, .L8005A2B0
/* 000190 8005A290 8FA90030 */   lw         $t1, 0x30($sp)
/* 000194 8005A294 1000000D */  b           .L8005A2CC
/* 000198 8005A298 2402FFFF */   addiu      $v0, $zero, -0x1
.L8005A29C:
/* 00019C 8005A29C 8FB80030 */  lw          $t8, 0x30($sp)
/* 0001A0 8005A2A0 3C08A460 */  lui         $t0, %hi(D_A460000C)
/* 0001A4 8005A2A4 2719FFFF */  addiu       $t9, $t8, -0x1
/* 0001A8 8005A2A8 10000007 */  b           .L8005A2C8
/* 0001AC 8005A2AC AD19000C */   sw         $t9, %lo(D_A460000C)($t0)
.L8005A2B0:
/* 0001B0 8005A2B0 252AFFFF */  addiu       $t2, $t1, -0x1
/* 0001B4 8005A2B4 3C0BA460 */  lui         $t3, %hi(D_A4600008)
/* 0001B8 8005A2B8 10000003 */  b           .L8005A2C8
/* 0001BC 8005A2BC AD6A0008 */   sw         $t2, %lo(D_A4600008)($t3)
/* 0001C0 8005A2C0 10000002 */  b           .L8005A2CC
/* 0001C4 8005A2C4 2402FFFF */   addiu      $v0, $zero, -0x1
.L8005A2C8:
/* 0001C8 8005A2C8 00001025 */  move        $v0, $zero
.L8005A2CC:
/* 0001CC 8005A2CC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0001D0 8005A2D0 8FB00018 */  lw          $s0, 0x18($sp)
/* 0001D4 8005A2D4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0001D8 8005A2D8 03E00008 */  jr          $ra
/* 0001DC 8005A2DC 00000000 */   nop

glabel func_8005A2E0 # 1
/* 0001E0 8005A2E0 27BDFF88 */  addiu       $sp, $sp, -0x78
/* 0001E4 8005A2E4 AFB3002C */  sw          $s3, 0x2c($sp)
/* 0001E8 8005A2E8 AFBE0040 */  sw          $fp, 0x40($sp)
/* 0001EC 8005A2EC AFB7003C */  sw          $s7, 0x3c($sp)
/* 0001F0 8005A2F0 AFB60038 */  sw          $s6, 0x38($sp)
/* 0001F4 8005A2F4 AFB50034 */  sw          $s5, 0x34($sp)
/* 0001F8 8005A2F8 AFB40030 */  sw          $s4, 0x30($sp)
/* 0001FC 8005A2FC 3C130500 */  lui         $s3, 0x500
/* 000200 8005A300 0080A025 */  move        $s4, $a0
/* 000204 8005A304 AFBF0044 */  sw          $ra, 0x44($sp)
/* 000208 8005A308 AFB20028 */  sw          $s2, 0x28($sp)
/* 00020C 8005A30C AFB10024 */  sw          $s1, 0x24($sp)
/* 000210 8005A310 AFB00020 */  sw          $s0, 0x20($sp)
/* 000214 8005A314 AFA00074 */  sw          $zero, 0x74($sp)
/* 000218 8005A318 36730510 */  ori         $s3, $s3, 0x510
/* 00021C 8005A31C 24150024 */  addiu       $s5, $zero, 0x24
/* 000220 8005A320 27B60070 */  addiu       $s6, $sp, 0x70
/* 000224 8005A324 24170001 */  addiu       $s7, $zero, 0x1
/* 000228 8005A328 241E001D */  addiu       $fp, $zero, 0x1d
.L8005A32C:
/* 00022C 8005A32C 8E840008 */  lw          $a0, 0x8($s4)
.L8005A330:
/* 000230 8005A330 27A50074 */  addiu       $a1, $sp, 0x74
/* 000234 8005A334 0C014554 */  jal         func_80051550
/* 000238 8005A338 02E03025 */   move       $a2, $s7
/* 00023C 8005A33C 8FAE0074 */  lw          $t6, 0x74($sp)
/* 000240 8005A340 8FA80074 */  lw          $t0, 0x74($sp)
/* 000244 8005A344 8DC40014 */  lw          $a0, 0x14($t6)
/* 000248 8005A348 50800081 */  beql        $a0, $zero, .L8005A550
/* 00024C 8005A34C 95090000 */   lhu        $t1, 0x0($t0)
/* 000250 8005A350 908F0004 */  lbu         $t7, 0x4($a0)
/* 000254 8005A354 24010002 */  addiu       $at, $zero, 0x2
/* 000258 8005A358 55E1007D */  bnel        $t7, $at, .L8005A550
/* 00025C 8005A35C 95090000 */   lhu        $t1, 0x0($t0)
/* 000260 8005A360 8C820014 */  lw          $v0, 0x14($a0)
/* 000264 8005A364 24010001 */  addiu       $at, $zero, 0x1
/* 000268 8005A368 24900014 */  addiu       $s0, $a0, 0x14
/* 00026C 8005A36C 10400003 */  beq         $v0, $zero, .L8005A37C
/* 000270 8005A370 27A5006C */   addiu      $a1, $sp, 0x6c
/* 000274 8005A374 54410076 */  bnel        $v0, $at, .L8005A550
/* 000278 8005A378 95090000 */   lhu        $t1, 0x0($t0)
.L8005A37C:
/* 00027C 8005A37C 96180006 */  lhu         $t8, 0x6($s0)
/* 000280 8005A380 96020004 */  lhu         $v0, 0x4($s0)
/* 000284 8005A384 2408FFFF */  addiu       $t0, $zero, -0x1
/* 000288 8005A388 03150019 */  multu       $t8, $s5
/* 00028C 8005A38C 24010003 */  addiu       $at, $zero, 0x3
/* 000290 8005A390 AE080008 */  sw          $t0, 0x8($s0)
/* 000294 8005A394 00009025 */  move        $s2, $zero
/* 000298 8005A398 02E03025 */  move        $a2, $s7
/* 00029C 8005A39C 0000C812 */  mflo        $t9
/* 0002A0 8005A3A0 02198821 */  addu        $s1, $s0, $t9
/* 0002A4 8005A3A4 10410006 */  beq         $v0, $at, .L8005A3C0
/* 0002A8 8005A3A8 26310018 */   addiu      $s1, $s1, 0x18
/* 0002AC 8005A3AC 8E290004 */  lw          $t1, 0x4($s1)
/* 0002B0 8005A3B0 8E2A000C */  lw          $t2, 0xc($s1)
/* 0002B4 8005A3B4 012A5823 */  subu        $t3, $t1, $t2
/* 0002B8 8005A3B8 AE2B0004 */  sw          $t3, 0x4($s1)
/* 0002BC 8005A3BC 96020004 */  lhu         $v0, 0x4($s0)
.L8005A3C0:
/* 0002C0 8005A3C0 24010002 */  addiu       $at, $zero, 0x2
/* 0002C4 8005A3C4 14410007 */  bne         $v0, $at, .L8005A3E4
/* 0002C8 8005A3C8 8FAC0074 */   lw         $t4, 0x74($sp)
/* 0002CC 8005A3CC 8D8D0014 */  lw          $t5, 0x14($t4)
/* 0002D0 8005A3D0 8DAE0014 */  lw          $t6, 0x14($t5)
/* 0002D4 8005A3D4 15C00003 */  bne         $t6, $zero, .L8005A3E4
/* 0002D8 8005A3D8 00000000 */   nop
/* 0002DC 8005A3DC 10000001 */  b           .L8005A3E4
/* 0002E0 8005A3E0 02E09025 */   move       $s2, $s7
.L8005A3E4:
/* 0002E4 8005A3E4 0C014554 */  jal         func_80051550
/* 0002E8 8005A3E8 8E840010 */   lw         $a0, 0x10($s4)
/* 0002EC 8005A3EC 3C040010 */  lui         $a0, 0x10
/* 0002F0 8005A3F0 0C017A30 */  jal         func_8005E8C0
/* 0002F4 8005A3F4 34840401 */   ori        $a0, $a0, 0x401
/* 0002F8 8005A3F8 8E060010 */  lw          $a2, 0x10($s0)
/* 0002FC 8005A3FC 8FAF0074 */  lw          $t7, 0x74($sp)
/* 000300 8005A400 3C018000 */  lui         $at, 0x8000
/* 000304 8005A404 00C1C025 */  or          $t8, $a2, $at
/* 000308 8005A408 03003025 */  move        $a2, $t8
/* 00030C 8005A40C 02602825 */  move        $a1, $s3
/* 000310 8005A410 0C017A48 */  jal         func_8005E920
/* 000314 8005A414 8DE40014 */   lw         $a0, 0x14($t7)
.L8005A418:
/* 000318 8005A418 8E84000C */  lw          $a0, 0xc($s4)
/* 00031C 8005A41C 02C02825 */  move        $a1, $s6
/* 000320 8005A420 0C014554 */  jal         func_80051550
/* 000324 8005A424 02E03025 */   move       $a2, $s7
/* 000328 8005A428 8FB90074 */  lw          $t9, 0x74($sp)
/* 00032C 8005A42C 8F240014 */  lw          $a0, 0x14($t9)
/* 000330 8005A430 24900014 */  addiu       $s0, $a0, 0x14
/* 000334 8005A434 96080006 */  lhu         $t0, 0x6($s0)
/* 000338 8005A438 01150019 */  multu       $t0, $s5
/* 00033C 8005A43C 00004812 */  mflo        $t1
/* 000340 8005A440 02098821 */  addu        $s1, $s0, $t1
/* 000344 8005A444 8E2A0018 */  lw          $t2, 0x18($s1)
/* 000348 8005A448 26310018 */  addiu       $s1, $s1, 0x18
/* 00034C 8005A44C 57CA0027 */  bnel        $fp, $t2, .L8005A4EC
/* 000350 8005A450 8FA50074 */   lw         $a1, 0x74($sp)
/* 000354 8005A454 8E060010 */  lw          $a2, 0x10($s0)
/* 000358 8005A458 3C011000 */  lui         $at, 0x1000
/* 00035C 8005A45C 02602825 */  move        $a1, $s3
/* 000360 8005A460 00C15825 */  or          $t3, $a2, $at
/* 000364 8005A464 0C017A48 */  jal         func_8005E920
/* 000368 8005A468 01603025 */   move       $a2, $t3
/* 00036C 8005A46C 8FAC0074 */  lw          $t4, 0x74($sp)
/* 000370 8005A470 02602825 */  move        $a1, $s3
/* 000374 8005A474 8E060010 */  lw          $a2, 0x10($s0)
/* 000378 8005A478 0C017A48 */  jal         func_8005E920
/* 00037C 8005A47C 8D840014 */   lw         $a0, 0x14($t4)
/* 000380 8005A480 8FAD0074 */  lw          $t5, 0x74($sp)
/* 000384 8005A484 3C050500 */  lui         $a1, 0x500
/* 000388 8005A488 34A50508 */  ori         $a1, $a1, 0x508
/* 00038C 8005A48C 27A60054 */  addiu       $a2, $sp, 0x54
/* 000390 8005A490 0C017AA0 */  jal         func_8005EA80
/* 000394 8005A494 8DA40014 */   lw         $a0, 0x14($t5)
/* 000398 8005A498 8FAE0054 */  lw          $t6, 0x54($sp)
/* 00039C 8005A49C 8FB80074 */  lw          $t8, 0x74($sp)
/* 0003A0 8005A4A0 02602825 */  move        $a1, $s3
/* 0003A4 8005A4A4 000E7980 */  sll         $t7, $t6, 6
/* 0003A8 8005A4A8 05E30008 */  bgezl       $t7, .L8005A4CC
/* 0003AC 8005A4AC 24080004 */   addiu      $t0, $zero, 0x4
/* 0003B0 8005A4B0 8E060010 */  lw          $a2, 0x10($s0)
/* 0003B4 8005A4B4 3C010100 */  lui         $at, 0x100
/* 0003B8 8005A4B8 8F040014 */  lw          $a0, 0x14($t8)
/* 0003BC 8005A4BC 00C1C825 */  or          $t9, $a2, $at
/* 0003C0 8005A4C0 0C017A48 */  jal         func_8005E920
/* 0003C4 8005A4C4 03203025 */   move       $a2, $t9
/* 0003C8 8005A4C8 24080004 */  addiu       $t0, $zero, 0x4
.L8005A4CC:
/* 0003CC 8005A4CC AE280000 */  sw          $t0, 0x0($s1)
/* 0003D0 8005A4D0 24090002 */  addiu       $t1, $zero, 0x2
/* 0003D4 8005A4D4 3C0AA460 */  lui         $t2, %hi(D_A4600010)
/* 0003D8 8005A4D8 3C040010 */  lui         $a0, 0x10
/* 0003DC 8005A4DC AD490010 */  sw          $t1, %lo(D_A4600010)($t2)
/* 0003E0 8005A4E0 0C017AF8 */  jal         func_8005EBE0
/* 0003E4 8005A4E4 34840C01 */   ori        $a0, $a0, 0xc01
/* 0003E8 8005A4E8 8FA50074 */  lw          $a1, 0x74($sp)
.L8005A4EC:
/* 0003EC 8005A4EC 00003025 */  move        $a2, $zero
/* 0003F0 8005A4F0 0C014C64 */  jal         func_80053190
/* 0003F4 8005A4F4 8CA40004 */   lw         $a0, 0x4($a1)
/* 0003F8 8005A4F8 16570007 */  bne         $s2, $s7, .L8005A518
/* 0003FC 8005A4FC 8FAC0074 */   lw         $t4, 0x74($sp)
/* 000400 8005A500 8D8D0014 */  lw          $t5, 0x14($t4)
/* 000404 8005A504 8DAE002C */  lw          $t6, 0x2c($t5)
/* 000408 8005A508 55C00004 */  bnel        $t6, $zero, .L8005A51C
/* 00040C 8005A50C 8E840010 */   lw         $a0, 0x10($s4)
/* 000410 8005A510 1000FFC1 */  b           .L8005A418
/* 000414 8005A514 00009025 */   move       $s2, $zero
.L8005A518:
/* 000418 8005A518 8E840010 */  lw          $a0, 0x10($s4)
.L8005A51C:
/* 00041C 8005A51C 00002825 */  move        $a1, $zero
/* 000420 8005A520 0C014C64 */  jal         func_80053190
/* 000424 8005A524 00003025 */   move       $a2, $zero
/* 000428 8005A528 8FAF0074 */  lw          $t7, 0x74($sp)
/* 00042C 8005A52C 8DF80014 */  lw          $t8, 0x14($t7)
/* 000430 8005A530 9719001A */  lhu         $t9, 0x1a($t8)
/* 000434 8005A534 56F9FF7E */  bnel        $s7, $t9, .L8005A330
/* 000438 8005A538 8E840008 */   lw         $a0, 0x8($s4)
/* 00043C 8005A53C 0C0145A4 */  jal         func_80051690
/* 000440 8005A540 00000000 */   nop
/* 000444 8005A544 1000FF7A */  b           .L8005A330
/* 000448 8005A548 8E840008 */   lw         $a0, 0x8($s4)
/* 00044C 8005A54C 95090000 */  lhu         $t1, 0x0($t0)
.L8005A550:
/* 000450 8005A550 252AFFF6 */  addiu       $t2, $t1, -0xa
/* 000454 8005A554 2D410007 */  sltiu       $at, $t2, 0x7
/* 000458 8005A558 10200047 */  beq         $at, $zero, .L8005A678
/* 00045C 8005A55C 000A5080 */   sll        $t2, $t2, 2
/* 000460 8005A560 3C01800B */  lui         $at, %hi(jtbl_800A8010)
/* 000464 8005A564 002A0821 */  addu        $at, $at, $t2
/* 000468 8005A568 8C2A8010 */  lw          $t2, %lo(jtbl_800A8010)($at)
/* 00046C 8005A56C 01400008 */  jr          $t2
/* 000470 8005A570 00000000 */   nop
/* 000474 8005A574 8E840010 */  lw          $a0, 0x10($s4)
/* 000478 8005A578 27A5006C */  addiu       $a1, $sp, 0x6c
/* 00047C 8005A57C 0C014554 */  jal         func_80051550
/* 000480 8005A580 02E03025 */   move       $a2, $s7
/* 000484 8005A584 8FAB0074 */  lw          $t3, 0x74($sp)
/* 000488 8005A588 8E990014 */  lw          $t9, 0x14($s4)
/* 00048C 8005A58C 00002025 */  move        $a0, $zero
/* 000490 8005A590 8D65000C */  lw          $a1, 0xc($t3)
/* 000494 8005A594 8D660008 */  lw          $a2, 0x8($t3)
/* 000498 8005A598 0320F809 */  jalr        $t9
/* 00049C 8005A59C 8D670010 */   lw         $a3, 0x10($t3)
/* 0004A0 8005A5A0 10000036 */  b           .L8005A67C
/* 0004A4 8005A5A4 00408025 */   move       $s0, $v0
/* 0004A8 8005A5A8 8E840010 */  lw          $a0, 0x10($s4)
/* 0004AC 8005A5AC 27A5006C */  addiu       $a1, $sp, 0x6c
/* 0004B0 8005A5B0 0C014554 */  jal         func_80051550
/* 0004B4 8005A5B4 02E03025 */   move       $a2, $s7
/* 0004B8 8005A5B8 8FAC0074 */  lw          $t4, 0x74($sp)
/* 0004BC 8005A5BC 8E990014 */  lw          $t9, 0x14($s4)
/* 0004C0 8005A5C0 02E02025 */  move        $a0, $s7
/* 0004C4 8005A5C4 8D85000C */  lw          $a1, 0xc($t4)
/* 0004C8 8005A5C8 8D860008 */  lw          $a2, 0x8($t4)
/* 0004CC 8005A5CC 0320F809 */  jalr        $t9
/* 0004D0 8005A5D0 8D870010 */   lw         $a3, 0x10($t4)
/* 0004D4 8005A5D4 10000029 */  b           .L8005A67C
/* 0004D8 8005A5D8 00408025 */   move       $s0, $v0
/* 0004DC 8005A5DC 8E840010 */  lw          $a0, 0x10($s4)
/* 0004E0 8005A5E0 27A5006C */  addiu       $a1, $sp, 0x6c
/* 0004E4 8005A5E4 0C014554 */  jal         func_80051550
/* 0004E8 8005A5E8 02E03025 */   move       $a2, $s7
/* 0004EC 8005A5EC 8FAD0074 */  lw          $t5, 0x74($sp)
/* 0004F0 8005A5F0 00002825 */  move        $a1, $zero
/* 0004F4 8005A5F4 8DAE0010 */  lw          $t6, 0x10($t5)
/* 0004F8 8005A5F8 8DA40014 */  lw          $a0, 0x14($t5)
/* 0004FC 8005A5FC 8DA6000C */  lw          $a2, 0xc($t5)
/* 000500 8005A600 8DA70008 */  lw          $a3, 0x8($t5)
/* 000504 8005A604 AFAE0010 */  sw          $t6, 0x10($sp)
/* 000508 8005A608 8E990018 */  lw          $t9, 0x18($s4)
/* 00050C 8005A60C 0320F809 */  jalr        $t9
/* 000510 8005A610 00000000 */   nop
/* 000514 8005A614 10000019 */  b           .L8005A67C
/* 000518 8005A618 00408025 */   move       $s0, $v0
/* 00051C 8005A61C 8E840010 */  lw          $a0, 0x10($s4)
/* 000520 8005A620 27A5006C */  addiu       $a1, $sp, 0x6c
/* 000524 8005A624 0C014554 */  jal         func_80051550
/* 000528 8005A628 02E03025 */   move       $a2, $s7
/* 00052C 8005A62C 8FAF0074 */  lw          $t7, 0x74($sp)
/* 000530 8005A630 02E02825 */  move        $a1, $s7
/* 000534 8005A634 8DF80010 */  lw          $t8, 0x10($t7)
/* 000538 8005A638 8DE40014 */  lw          $a0, 0x14($t7)
/* 00053C 8005A63C 8DE6000C */  lw          $a2, 0xc($t7)
/* 000540 8005A640 8DE70008 */  lw          $a3, 0x8($t7)
/* 000544 8005A644 AFB80010 */  sw          $t8, 0x10($sp)
/* 000548 8005A648 8E990018 */  lw          $t9, 0x18($s4)
/* 00054C 8005A64C 0320F809 */  jalr        $t9
/* 000550 8005A650 00000000 */   nop
/* 000554 8005A654 10000009 */  b           .L8005A67C
/* 000558 8005A658 00408025 */   move       $s0, $v0
/* 00055C 8005A65C 8FA50074 */  lw          $a1, 0x74($sp)
/* 000560 8005A660 00003025 */  move        $a2, $zero
/* 000564 8005A664 2410FFFF */  addiu       $s0, $zero, -0x1
/* 000568 8005A668 0C014C64 */  jal         func_80053190
/* 00056C 8005A66C 8CA40004 */   lw         $a0, 0x4($a1)
/* 000570 8005A670 10000002 */  b           .L8005A67C
/* 000574 8005A674 00000000 */   nop
.L8005A678:
/* 000578 8005A678 2410FFFF */  addiu       $s0, $zero, -0x1
.L8005A67C:
/* 00057C 8005A67C 1600FF2B */  bne         $s0, $zero, .L8005A32C
/* 000580 8005A680 02C02825 */   move       $a1, $s6
/* 000584 8005A684 8E84000C */  lw          $a0, 0xc($s4)
/* 000588 8005A688 0C014554 */  jal         func_80051550
/* 00058C 8005A68C 02E03025 */   move       $a2, $s7
/* 000590 8005A690 8FA50074 */  lw          $a1, 0x74($sp)
/* 000594 8005A694 00003025 */  move        $a2, $zero
/* 000598 8005A698 0C014C64 */  jal         func_80053190
/* 00059C 8005A69C 8CA40004 */   lw         $a0, 0x4($a1)
/* 0005A0 8005A6A0 8E840010 */  lw          $a0, 0x10($s4)
/* 0005A4 8005A6A4 00002825 */  move        $a1, $zero
/* 0005A8 8005A6A8 0C014C64 */  jal         func_80053190
/* 0005AC 8005A6AC 00003025 */   move       $a2, $zero
/* 0005B0 8005A6B0 1000FF1F */  b           .L8005A330
/* 0005B4 8005A6B4 8E840008 */   lw         $a0, 0x8($s4)
/* 0005B8 8005A6B8 00000000 */  nop
/* 0005BC 8005A6BC 00000000 */  nop
/* 0005C0 8005A6C0 8FBF0044 */  lw          $ra, 0x44($sp)
/* 0005C4 8005A6C4 8FB00020 */  lw          $s0, 0x20($sp)
/* 0005C8 8005A6C8 8FB10024 */  lw          $s1, 0x24($sp)
/* 0005CC 8005A6CC 8FB20028 */  lw          $s2, 0x28($sp)
/* 0005D0 8005A6D0 8FB3002C */  lw          $s3, 0x2c($sp)
/* 0005D4 8005A6D4 8FB40030 */  lw          $s4, 0x30($sp)
/* 0005D8 8005A6D8 8FB50034 */  lw          $s5, 0x34($sp)
/* 0005DC 8005A6DC 8FB60038 */  lw          $s6, 0x38($sp)
/* 0005E0 8005A6E0 8FB7003C */  lw          $s7, 0x3c($sp)
/* 0005E4 8005A6E4 8FBE0040 */  lw          $fp, 0x40($sp)
/* 0005E8 8005A6E8 03E00008 */  jr          $ra
/* 0005EC 8005A6EC 27BD0078 */   addiu      $sp, $sp, 0x78

glabel func_8005A6F0 # 2
/* 0005F0 8005A6F0 3C02800A */  lui         $v0, %hi(D_8009F950)
/* 0005F4 8005A6F4 03E00008 */  jr          $ra
/* 0005F8 8005A6F8 8C42F950 */   lw         $v0, %lo(D_8009F950)($v0)
/* 0005FC 8005A6FC 00000000 */  nop
