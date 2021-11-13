.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80056050 # 0
/* 000000 80056050 3C02800A */  lui         $v0, %hi(D_8009F6A0)
/* 000004 80056054 2442F6A0 */  addiu       $v0, $v0, %lo(D_8009F6A0)
/* 000008 80056058 8C4E0000 */  lw          $t6, 0x0($v0)
/* 00000C 8005605C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000010 80056060 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000014 80056064 55C00004 */  bnel        $t6, $zero, .L80056078
/* 000018 80056068 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00001C 8005606C 0C016C34 */  jal         func_8005B0D0
/* 000020 80056070 AC440000 */   sw         $a0, 0x0($v0)
/* 000024 80056074 8FBF0014 */  lw          $ra, 0x14($sp)
.L80056078:
/* 000028 80056078 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00002C 8005607C 03E00008 */  jr          $ra
/* 000030 80056080 00000000 */   nop

glabel func_80056084 # 1
/* 000034 80056084 3C0E800A */  lui         $t6, %hi(D_8009F6A0)
/* 000038 80056088 8DCEF6A0 */  lw          $t6, %lo(D_8009F6A0)($t6)
/* 00003C 8005608C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000040 80056090 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000044 80056094 51C00006 */  beql        $t6, $zero, .L800560B0
/* 000048 80056098 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00004C 8005609C 0C016DD4 */  jal         func_8005B750
/* 000050 800560A0 00000000 */   nop
/* 000054 800560A4 3C01800A */  lui         $at, %hi(D_8009F6A0)
/* 000058 800560A8 AC20F6A0 */  sw          $zero, %lo(D_8009F6A0)($at)
/* 00005C 800560AC 8FBF0014 */  lw          $ra, 0x14($sp)
.L800560B0:
/* 000060 800560B0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000064 800560B4 03E00008 */  jr          $ra
/* 000068 800560B8 00000000 */   nop

glabel func_800560BC # 2
/* 00006C 800560BC 8CAE0000 */  lw          $t6, 0x0($a1)
/* 000070 800560C0 AC850004 */  sw          $a1, 0x4($a0)
/* 000074 800560C4 AC8E0000 */  sw          $t6, 0x0($a0)
/* 000078 800560C8 8CA20000 */  lw          $v0, 0x0($a1)
/* 00007C 800560CC 10400002 */  beq         $v0, $zero, .L800560D8
/* 000080 800560D0 00000000 */   nop
/* 000084 800560D4 AC440004 */  sw          $a0, 0x4($v0)
.L800560D8:
/* 000088 800560D8 03E00008 */  jr          $ra
/* 00008C 800560DC ACA40000 */   sw         $a0, 0x0($a1)

glabel func_800560E0 # 3
/* 000090 800560E0 8C820000 */  lw          $v0, 0x0($a0)
/* 000094 800560E4 50400004 */  beql        $v0, $zero, .L800560F8
/* 000098 800560E8 8C820004 */   lw         $v0, 0x4($a0)
/* 00009C 800560EC 8C8E0004 */  lw          $t6, 0x4($a0)
/* 0000A0 800560F0 AC4E0004 */  sw          $t6, 0x4($v0)
/* 0000A4 800560F4 8C820004 */  lw          $v0, 0x4($a0)
.L800560F8:
/* 0000A8 800560F8 10400003 */  beq         $v0, $zero, .L80056108
/* 0000AC 800560FC 00000000 */   nop
/* 0000B0 80056100 8C8F0000 */  lw          $t7, 0x0($a0)
/* 0000B4 80056104 AC4F0000 */  sw          $t7, 0x0($v0)
.L80056108:
/* 0000B8 80056108 03E00008 */  jr          $ra
/* 0000BC 8005610C 00000000 */   nop

glabel func_80056110 # 4
/* 0000C0 80056110 84820000 */  lh          $v0, 0x0($a0)
/* 0000C4 80056114 24194000 */  addiu       $t9, $zero, 0x4000
/* 0000C8 80056118 24090001 */  addiu       $t1, $zero, 0x1
/* 0000CC 8005611C 00027380 */  sll         $t6, $v0, 14
/* 0000D0 80056120 000E1BC3 */  sra         $v1, $t6, 15
/* 0000D4 80056124 00037C00 */  sll         $t7, $v1, 16
/* 0000D8 80056128 000F1C03 */  sra         $v1, $t7, 16
/* 0000DC 8005612C 03234023 */  subu        $t0, $t9, $v1
/* 0000E0 80056130 A4880002 */  sh          $t0, 0x2($a0)
/* 0000E4 80056134 AC89002C */  sw          $t1, 0x2c($a0)
/* 0000E8 80056138 00002825 */  move        $a1, $zero
/* 0000EC 8005613C 00803025 */  move        $a2, $a0
.L80056140:
/* 0000F0 80056140 24A50001 */  addiu       $a1, $a1, 0x1
/* 0000F4 80056144 28A10008 */  slti        $at, $a1, 0x8
/* 0000F8 80056148 24C60002 */  addiu       $a2, $a2, 0x2
/* 0000FC 8005614C 1420FFFC */  bne         $at, $zero, .L80056140
/* 000100 80056150 A4C00006 */   sh         $zero, 0x6($a2)
/* 000104 80056154 44832000 */  mtc1        $v1, $f4
/* 000108 80056158 3C0140D0 */  lui         $at, 0x40d0
/* 00010C 8005615C 44816800 */  mtc1        $at, $f13
/* 000110 80056160 468021A1 */  cvt.d.w     $f6, $f4
/* 000114 80056164 44806000 */  mtc1        $zero, $f12
/* 000118 80056168 24A50001 */  addiu       $a1, $a1, 0x1
/* 00011C 8005616C 28A10010 */  slti        $at, $a1, 0x10
/* 000120 80056170 A4C30008 */  sh          $v1, 0x8($a2)
/* 000124 80056174 462C3083 */  div.d       $f2, $f6, $f12
/* 000128 80056178 24C60002 */  addiu       $a2, $a2, 0x2
/* 00012C 8005617C 1020000A */  beq         $at, $zero, .L800561A8
/* 000130 80056180 46201006 */   mov.d      $f0, $f2
.L80056184:
/* 000134 80056184 46220002 */  mul.d       $f0, $f0, $f2
/* 000138 80056188 24A50001 */  addiu       $a1, $a1, 0x1
/* 00013C 8005618C 28A10010 */  slti        $at, $a1, 0x10
/* 000140 80056190 24C60002 */  addiu       $a2, $a2, 0x2
/* 000144 80056194 462C0202 */  mul.d       $f8, $f0, $f12
/* 000148 80056198 4620428D */  trunc.w.d   $f10, $f8
/* 00014C 8005619C 440B5000 */  mfc1        $t3, $f10
/* 000150 800561A0 1420FFF8 */  bne         $at, $zero, .L80056184
/* 000154 800561A4 A4CB0006 */   sh         $t3, 0x6($a2)
.L800561A8:
/* 000158 800561A8 03E00008 */  jr          $ra
/* 00015C 800561AC 00000000 */   nop

glabel func_800561B0 # 5
/* 000160 800561B0 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 000164 800561B4 AFB60058 */  sw          $s6, 0x58($sp)
/* 000168 800561B8 00C0B025 */  move        $s6, $a2
/* 00016C 800561BC AFBF0064 */  sw          $ra, 0x64($sp)
/* 000170 800561C0 AFB50054 */  sw          $s5, 0x54($sp)
/* 000174 800561C4 AFA5006C */  sw          $a1, 0x6c($sp)
/* 000178 800561C8 3C068005 */  lui         $a2, %hi(D_80056C00)
/* 00017C 800561CC 0080A825 */  move        $s5, $a0
/* 000180 800561D0 AFBE0060 */  sw          $fp, 0x60($sp)
/* 000184 800561D4 AFB7005C */  sw          $s7, 0x5c($sp)
/* 000188 800561D8 AFB40050 */  sw          $s4, 0x50($sp)
/* 00018C 800561DC AFB3004C */  sw          $s3, 0x4c($sp)
/* 000190 800561E0 AFB20048 */  sw          $s2, 0x48($sp)
/* 000194 800561E4 AFB10044 */  sw          $s1, 0x44($sp)
/* 000198 800561E8 AFB00040 */  sw          $s0, 0x40($sp)
/* 00019C 800561EC F7BA0038 */  sdc1        $f26, 0x38($sp)
/* 0001A0 800561F0 F7B80030 */  sdc1        $f24, 0x30($sp)
/* 0001A4 800561F4 F7B60028 */  sdc1        $f22, 0x28($sp)
/* 0001A8 800561F8 F7B40020 */  sdc1        $f20, 0x20($sp)
/* 0001AC 800561FC 24C66C00 */  addiu       $a2, $a2, %lo(D_80056C00)
/* 0001B0 80056200 00002825 */  move        $a1, $zero
/* 0001B4 80056204 0C016DD8 */  jal         func_8005B760
/* 0001B8 80056208 24070005 */   addiu      $a3, $zero, 0x5
/* 0001BC 8005620C 8FA2006C */  lw          $v0, 0x6c($sp)
/* 0001C0 80056210 3C0E8005 */  lui         $t6, %hi(D_800568C0)
/* 0001C4 80056214 3C0F8005 */  lui         $t7, %hi(D_80056C18)
/* 0001C8 80056218 25CE68C0 */  addiu       $t6, $t6, %lo(D_800568C0)
/* 0001CC 8005621C 25EF6C18 */  addiu       $t7, $t7, %lo(D_80056C18)
/* 0001D0 80056220 AEAE0004 */  sw          $t6, 0x4($s5)
/* 0001D4 80056224 AEAF0028 */  sw          $t7, 0x28($s5)
/* 0001D8 80056228 9058001C */  lbu         $t8, 0x1c($v0)
/* 0001DC 8005622C 3C13800A */  lui         $s3, %hi(D_8009F818)
/* 0001E0 80056230 2673F818 */  addiu       $s3, $s3, %lo(D_8009F818)
/* 0001E4 80056234 2719FFFF */  addiu       $t9, $t8, -0x1
/* 0001E8 80056238 2F210006 */  sltiu       $at, $t9, 0x6
/* 0001EC 8005623C 10200017 */  beq         $at, $zero, .L8005629C
/* 0001F0 80056240 0019C880 */   sll        $t9, $t9, 2
/* 0001F4 80056244 3C01800A */  lui         $at, %hi(jtbl_800A7E70)
/* 0001F8 80056248 00390821 */  addu        $at, $at, $t9
/* 0001FC 8005624C 8C397E70 */  lw          $t9, %lo(jtbl_800A7E70)($at)
/* 000200 80056250 03200008 */  jr          $t9
/* 000204 80056254 00000000 */   nop
/* 000208 80056258 3C13800A */  lui         $s3, %hi(D_8009F6B0)
/* 00020C 8005625C 1000000F */  b           .L8005629C
/* 000210 80056260 2673F6B0 */   addiu      $s3, $s3, %lo(D_8009F6B0)
/* 000214 80056264 3C13800A */  lui         $s3, %hi(D_8009F718)
/* 000218 80056268 1000000C */  b           .L8005629C
/* 00021C 8005626C 2673F718 */   addiu      $s3, $s3, %lo(D_8009F718)
/* 000220 80056270 3C13800A */  lui         $s3, %hi(D_8009F7A0)
/* 000224 80056274 10000009 */  b           .L8005629C
/* 000228 80056278 2673F7A0 */   addiu      $s3, $s3, %lo(D_8009F7A0)
/* 00022C 8005627C 3C13800A */  lui         $s3, %hi(D_8009F7C8)
/* 000230 80056280 10000006 */  b           .L8005629C
/* 000234 80056284 2673F7C8 */   addiu      $s3, $s3, %lo(D_8009F7C8)
/* 000238 80056288 3C13800A */  lui         $s3, %hi(D_8009F7F0)
/* 00023C 8005628C 10000003 */  b           .L8005629C
/* 000240 80056290 2673F7F0 */   addiu      $s3, $s3, %lo(D_8009F7F0)
/* 000244 80056294 10000001 */  b           .L8005629C
/* 000248 80056298 8C530020 */   lw         $s3, 0x20($v0)
.L8005629C:
/* 00024C 8005629C 8E680000 */  lw          $t0, 0x0($s3)
/* 000250 800562A0 240A0028 */  addiu       $t2, $zero, 0x28
/* 000254 800562A4 24110002 */  addiu       $s1, $zero, 0x2
/* 000258 800562A8 A2A80024 */  sb          $t0, 0x24($s5)
/* 00025C 800562AC 8E690004 */  lw          $t1, 0x4($s3)
/* 000260 800562B0 00002025 */  move        $a0, $zero
/* 000264 800562B4 00002825 */  move        $a1, $zero
/* 000268 800562B8 AEA9001C */  sw          $t1, 0x1c($s5)
/* 00026C 800562BC AFAA0010 */  sw          $t2, 0x10($sp)
/* 000270 800562C0 02C03025 */  move        $a2, $s6
/* 000274 800562C4 0C014E68 */  jal         func_800539A0
/* 000278 800562C8 310700FF */   andi       $a3, $t0, 0xff
/* 00027C 800562CC AEA20020 */  sw          $v0, 0x20($s5)
/* 000280 800562D0 8EA7001C */  lw          $a3, 0x1c($s5)
/* 000284 800562D4 240B0002 */  addiu       $t3, $zero, 0x2
/* 000288 800562D8 AFAB0010 */  sw          $t3, 0x10($sp)
/* 00028C 800562DC 00002025 */  move        $a0, $zero
/* 000290 800562E0 00002825 */  move        $a1, $zero
/* 000294 800562E4 0C014E68 */  jal         func_800539A0
/* 000298 800562E8 02C03025 */   move       $a2, $s6
/* 00029C 800562EC 8EAC001C */  lw          $t4, 0x1c($s5)
/* 0002A0 800562F0 AEA20014 */  sw          $v0, 0x14($s5)
/* 0002A4 800562F4 AEA20018 */  sw          $v0, 0x18($s5)
/* 0002A8 800562F8 1180000C */  beq         $t4, $zero, .L8005632C
/* 0002AC 800562FC 00001825 */   move       $v1, $zero
/* 0002B0 80056300 8EAD0014 */  lw          $t5, 0x14($s5)
.L80056304:
/* 0002B4 80056304 00037040 */  sll         $t6, $v1, 1
/* 0002B8 80056308 24630001 */  addiu       $v1, $v1, 0x1
/* 0002BC 8005630C 01AE7821 */  addu        $t7, $t5, $t6
/* 0002C0 80056310 A5E00000 */  sh          $zero, 0x0($t7)
/* 0002C4 80056314 8EB9001C */  lw          $t9, 0x1c($s5)
/* 0002C8 80056318 3078FFFF */  andi        $t8, $v1, 0xffff
/* 0002CC 8005631C 03001825 */  move        $v1, $t8
/* 0002D0 80056320 0319082B */  sltu        $at, $t8, $t9
/* 0002D4 80056324 5420FFF7 */  bnel        $at, $zero, .L80056304
/* 0002D8 80056328 8EAD0014 */   lw         $t5, 0x14($s5)
.L8005632C:
/* 0002DC 8005632C 92A80024 */  lbu         $t0, 0x24($s5)
/* 0002E0 80056330 0000A025 */  move        $s4, $zero
/* 0002E4 80056334 3C013F80 */  lui         $at, 0x3f80
/* 0002E8 80056338 1900009C */  blez        $t0, .L800565AC
/* 0002EC 8005633C 241E0001 */   addiu      $fp, $zero, 0x1
/* 0002F0 80056340 4481C000 */  mtc1        $at, $f24
/* 0002F4 80056344 3C01447A */  lui         $at, 0x447a
/* 0002F8 80056348 4481B000 */  mtc1        $at, $f22
/* 0002FC 8005634C 3C01800A */  lui         $at, %hi(D_800A7E88)
/* 000300 80056350 4480D000 */  mtc1        $zero, $f26
/* 000304 80056354 D4347E88 */  ldc1        $f20, %lo(D_800A7E88)($at)
/* 000308 80056358 24170028 */  addiu       $s7, $zero, 0x28
.L8005635C:
/* 00030C 8005635C 02970019 */  multu       $s4, $s7
/* 000310 80056360 00115880 */  sll         $t3, $s1, 2
/* 000314 80056364 8EA90020 */  lw          $t1, 0x20($s5)
/* 000318 80056368 026B6021 */  addu        $t4, $s3, $t3
/* 00031C 8005636C 8D8D0000 */  lw          $t5, 0x0($t4)
/* 000320 80056370 26310001 */  addiu       $s1, $s1, 0x1
/* 000324 80056374 322EFFFF */  andi        $t6, $s1, 0xffff
/* 000328 80056378 000E7880 */  sll         $t7, $t6, 2
/* 00032C 8005637C 026FC021 */  addu        $t8, $s3, $t7
/* 000330 80056380 25D10001 */  addiu       $s1, $t6, 0x1
/* 000334 80056384 00005012 */  mflo        $t2
/* 000338 80056388 012A8021 */  addu        $s0, $t1, $t2
/* 00033C 8005638C AE0D0000 */  sw          $t5, 0x0($s0)
/* 000340 80056390 8F190000 */  lw          $t9, 0x0($t8)
/* 000344 80056394 3228FFFF */  andi        $t0, $s1, 0xffff
/* 000348 80056398 00084880 */  sll         $t1, $t0, 2
/* 00034C 8005639C 02695021 */  addu        $t2, $s3, $t1
/* 000350 800563A0 AE190004 */  sw          $t9, 0x4($s0)
/* 000354 800563A4 8D4B0000 */  lw          $t3, 0x0($t2)
/* 000358 800563A8 25110001 */  addiu       $s1, $t0, 0x1
/* 00035C 800563AC 322CFFFF */  andi        $t4, $s1, 0xffff
/* 000360 800563B0 000C6880 */  sll         $t5, $t4, 2
/* 000364 800563B4 026D7021 */  addu        $t6, $s3, $t5
/* 000368 800563B8 A60B000A */  sh          $t3, 0xa($s0)
/* 00036C 800563BC 8DCF0000 */  lw          $t7, 0x0($t6)
/* 000370 800563C0 25910001 */  addiu       $s1, $t4, 0x1
/* 000374 800563C4 3238FFFF */  andi        $t8, $s1, 0xffff
/* 000378 800563C8 0018C880 */  sll         $t9, $t8, 2
/* 00037C 800563CC 02794021 */  addu        $t0, $s3, $t9
/* 000380 800563D0 A60F0008 */  sh          $t7, 0x8($s0)
/* 000384 800563D4 8D090000 */  lw          $t1, 0x0($t0)
/* 000388 800563D8 27110001 */  addiu       $s1, $t8, 0x1
/* 00038C 800563DC 322AFFFF */  andi        $t2, $s1, 0xffff
/* 000390 800563E0 000A5880 */  sll         $t3, $t2, 2
/* 000394 800563E4 026B6021 */  addu        $t4, $s3, $t3
/* 000398 800563E8 A609000C */  sh          $t1, 0xc($s0)
/* 00039C 800563EC 8D820000 */  lw          $v0, 0x0($t4)
/* 0003A0 800563F0 01408825 */  move        $s1, $t2
/* 0003A4 800563F4 02204025 */  move        $t0, $s1
/* 0003A8 800563F8 10400040 */  beq         $v0, $zero, .L800564FC
/* 0003AC 800563FC 25110002 */   addiu      $s1, $t0, 0x2
/* 0003B0 80056400 44822000 */  mtc1        $v0, $f4
/* 0003B4 80056404 8FAD006C */  lw          $t5, 0x6c($sp)
/* 0003B8 80056408 8E180004 */  lw          $t8, 0x4($s0)
/* 0003BC 8005640C 468021A0 */  cvt.s.w     $f6, $f4
/* 0003C0 80056410 8DAE0018 */  lw          $t6, 0x18($t5)
/* 0003C4 80056414 8E190000 */  lw          $t9, 0x0($s0)
/* 0003C8 80056418 25510001 */  addiu       $s1, $t2, 0x1
/* 0003CC 8005641C 448E8000 */  mtc1        $t6, $f16
/* 0003D0 80056420 322FFFFF */  andi        $t7, $s1, 0xffff
/* 0003D4 80056424 46163203 */  div.s       $f8, $f6, $f22
/* 0003D8 80056428 03194023 */  subu        $t0, $t8, $t9
/* 0003DC 8005642C 01E08825 */  move        $s1, $t7
/* 0003E0 80056430 00114880 */  sll         $t1, $s1, 2
/* 0003E4 80056434 468084A1 */  cvt.d.w     $f18, $f16
/* 0003E8 80056438 02695021 */  addu        $t2, $s3, $t1
/* 0003EC 8005643C 3C0141F0 */  lui         $at, 0x41f0
/* 0003F0 80056440 46004021 */  cvt.d.s     $f0, $f8
/* 0003F4 80056444 44884000 */  mtc1        $t0, $f8
/* 0003F8 80056448 46200280 */  add.d       $f10, $f0, $f0
/* 0003FC 8005644C 46804421 */  cvt.d.w     $f16, $f8
/* 000400 80056450 46325103 */  div.d       $f4, $f10, $f18
/* 000404 80056454 462021A0 */  cvt.s.d     $f6, $f4
/* 000408 80056458 05010005 */  bgez        $t0, .L80056470
/* 00040C 8005645C E6060010 */   swc1       $f6, 0x10($s0)
/* 000410 80056460 44815800 */  mtc1        $at, $f11
/* 000414 80056464 44805000 */  mtc1        $zero, $f10
/* 000418 80056468 00000000 */  nop
/* 00041C 8005646C 462A8400 */  add.d       $f16, $f16, $f10
.L80056470:
/* 000420 80056470 8D4B0000 */  lw          $t3, 0x0($t2)
/* 000424 80056474 26310001 */  addiu       $s1, $s1, 0x1
/* 000428 80056478 322CFFFF */  andi        $t4, $s1, 0xffff
/* 00042C 8005647C 448B9000 */  mtc1        $t3, $f18
/* 000430 80056480 E6180014 */  swc1        $f24, 0x14($s0)
/* 000434 80056484 AE000018 */  sw          $zero, 0x18($s0)
/* 000438 80056488 46809120 */  cvt.s.w     $f4, $f18
/* 00043C 8005648C 240D0034 */  addiu       $t5, $zero, 0x34
/* 000440 80056490 01808825 */  move        $s1, $t4
/* 000444 80056494 00002025 */  move        $a0, $zero
/* 000448 80056498 00002825 */  move        $a1, $zero
/* 00044C 8005649C 02C03025 */  move        $a2, $s6
/* 000450 800564A0 460021A1 */  cvt.d.s     $f6, $f4
/* 000454 800564A4 03C03825 */  move        $a3, $fp
/* 000458 800564A8 46343203 */  div.d       $f8, $f6, $f20
/* 00045C 800564AC 46304282 */  mul.d       $f10, $f8, $f16
/* 000460 800564B0 462054A0 */  cvt.s.d     $f18, $f10
/* 000464 800564B4 E612001C */  swc1        $f18, 0x1c($s0)
/* 000468 800564B8 0C014E68 */  jal         func_800539A0
/* 00046C 800564BC AFAD0010 */   sw         $t5, 0x10($sp)
/* 000470 800564C0 AE020024 */  sw          $v0, 0x24($s0)
/* 000474 800564C4 240E0020 */  addiu       $t6, $zero, 0x20
/* 000478 800564C8 AFAE0010 */  sw          $t6, 0x10($sp)
/* 00047C 800564CC 00002025 */  move        $a0, $zero
/* 000480 800564D0 00002825 */  move        $a1, $zero
/* 000484 800564D4 02C03025 */  move        $a2, $s6
/* 000488 800564D8 0C014E68 */  jal         func_800539A0
/* 00048C 800564DC 03C03825 */   move       $a3, $fp
/* 000490 800564E0 8E0F0024 */  lw          $t7, 0x24($s0)
/* 000494 800564E4 ADE20014 */  sw          $v0, 0x14($t7)
/* 000498 800564E8 8E180024 */  lw          $t8, 0x24($s0)
/* 00049C 800564EC E71A0020 */  swc1        $f26, 0x20($t8)
/* 0004A0 800564F0 8E190024 */  lw          $t9, 0x24($s0)
/* 0004A4 800564F4 10000004 */  b           .L80056508
/* 0004A8 800564F8 AF3E0024 */   sw         $fp, 0x24($t9)
.L800564FC:
/* 0004AC 800564FC 3229FFFF */  andi        $t1, $s1, 0xffff
/* 0004B0 80056500 AE000024 */  sw          $zero, 0x24($s0)
/* 0004B4 80056504 01208825 */  move        $s1, $t1
.L80056508:
/* 0004B8 80056508 00115080 */  sll         $t2, $s1, 2
/* 0004BC 8005650C 026A9021 */  addu        $s2, $s3, $t2
/* 0004C0 80056510 8E4B0000 */  lw          $t3, 0x0($s2)
/* 0004C4 80056514 00002025 */  move        $a0, $zero
/* 0004C8 80056518 00002825 */  move        $a1, $zero
/* 0004CC 8005651C 11600019 */  beq         $t3, $zero, .L80056584
/* 0004D0 80056520 02C03025 */   move       $a2, $s6
/* 0004D4 80056524 240C0030 */  addiu       $t4, $zero, 0x30
/* 0004D8 80056528 AFAC0010 */  sw          $t4, 0x10($sp)
/* 0004DC 8005652C 0C014E68 */  jal         func_800539A0
/* 0004E0 80056530 03C03825 */   move       $a3, $fp
/* 0004E4 80056534 AE020020 */  sw          $v0, 0x20($s0)
/* 0004E8 80056538 240D0008 */  addiu       $t5, $zero, 0x8
/* 0004EC 8005653C AFAD0010 */  sw          $t5, 0x10($sp)
/* 0004F0 80056540 00002025 */  move        $a0, $zero
/* 0004F4 80056544 00002825 */  move        $a1, $zero
/* 0004F8 80056548 02C03025 */  move        $a2, $s6
/* 0004FC 8005654C 0C014E68 */  jal         func_800539A0
/* 000500 80056550 03C03825 */   move       $a3, $fp
/* 000504 80056554 8E0E0020 */  lw          $t6, 0x20($s0)
/* 000508 80056558 26310001 */  addiu       $s1, $s1, 0x1
/* 00050C 8005655C 3239FFFF */  andi        $t9, $s1, 0xffff
/* 000510 80056560 ADC20028 */  sw          $v0, 0x28($t6)
/* 000514 80056564 8E180020 */  lw          $t8, 0x20($s0)
/* 000518 80056568 8E4F0000 */  lw          $t7, 0x0($s2)
/* 00051C 8005656C 03208825 */  move        $s1, $t9
/* 000520 80056570 A70F0000 */  sh          $t7, 0x0($t8)
/* 000524 80056574 0C015844 */  jal         func_80056110
/* 000528 80056578 8E040020 */   lw         $a0, 0x20($s0)
/* 00052C 8005657C 10000006 */  b           .L80056598
/* 000530 80056580 92AA0024 */   lbu        $t2, 0x24($s5)
.L80056584:
/* 000534 80056584 26310001 */  addiu       $s1, $s1, 0x1
/* 000538 80056588 3228FFFF */  andi        $t0, $s1, 0xffff
/* 00053C 8005658C AE000020 */  sw          $zero, 0x20($s0)
/* 000540 80056590 01008825 */  move        $s1, $t0
/* 000544 80056594 92AA0024 */  lbu         $t2, 0x24($s5)
.L80056598:
/* 000548 80056598 26940001 */  addiu       $s4, $s4, 0x1
/* 00054C 8005659C 3289FFFF */  andi        $t1, $s4, 0xffff
/* 000550 800565A0 012A082A */  slt         $at, $t1, $t2
/* 000554 800565A4 1420FF6D */  bne         $at, $zero, .L8005635C
/* 000558 800565A8 0120A025 */   move       $s4, $t1
.L800565AC:
/* 00055C 800565AC 8FBF0064 */  lw          $ra, 0x64($sp)
/* 000560 800565B0 D7B40020 */  ldc1        $f20, 0x20($sp)
/* 000564 800565B4 D7B60028 */  ldc1        $f22, 0x28($sp)
/* 000568 800565B8 D7B80030 */  ldc1        $f24, 0x30($sp)
/* 00056C 800565BC D7BA0038 */  ldc1        $f26, 0x38($sp)
/* 000570 800565C0 8FB00040 */  lw          $s0, 0x40($sp)
/* 000574 800565C4 8FB10044 */  lw          $s1, 0x44($sp)
/* 000578 800565C8 8FB20048 */  lw          $s2, 0x48($sp)
/* 00057C 800565CC 8FB3004C */  lw          $s3, 0x4c($sp)
/* 000580 800565D0 8FB40050 */  lw          $s4, 0x50($sp)
/* 000584 800565D4 8FB50054 */  lw          $s5, 0x54($sp)
/* 000588 800565D8 8FB60058 */  lw          $s6, 0x58($sp)
/* 00058C 800565DC 8FB7005C */  lw          $s7, 0x5c($sp)
/* 000590 800565E0 8FBE0060 */  lw          $fp, 0x60($sp)
/* 000594 800565E4 03E00008 */  jr          $ra
/* 000598 800565E8 27BD0068 */   addiu      $sp, $sp, 0x68

glabel func_800565EC # 6
/* 00059C 800565EC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0005A0 800565F0 AFA5002C */  sw          $a1, 0x2c($sp)
/* 0005A4 800565F4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0005A8 800565F8 AFB00020 */  sw          $s0, 0x20($sp)
/* 0005AC 800565FC 3C058006 */  lui         $a1, %hi(D_8005B780)
/* 0005B0 80056600 3C068006 */  lui         $a2, %hi(D_8005BC88)
/* 0005B4 80056604 00808025 */  move        $s0, $a0
/* 0005B8 80056608 24C6BC88 */  addiu       $a2, $a2, %lo(D_8005BC88)
/* 0005BC 8005660C 24A5B780 */  addiu       $a1, $a1, %lo(D_8005B780)
/* 0005C0 80056610 0C016DD8 */  jal         func_8005B760
/* 0005C4 80056614 24070004 */   addiu      $a3, $zero, 0x4
/* 0005C8 80056618 240E0050 */  addiu       $t6, $zero, 0x50
/* 0005CC 8005661C AFAE0010 */  sw          $t6, 0x10($sp)
/* 0005D0 80056620 00002025 */  move        $a0, $zero
/* 0005D4 80056624 00002825 */  move        $a1, $zero
/* 0005D8 80056628 8FA6002C */  lw          $a2, 0x2c($sp)
/* 0005DC 8005662C 0C014E68 */  jal         func_800539A0
/* 0005E0 80056630 24070001 */   addiu      $a3, $zero, 0x1
/* 0005E4 80056634 24030001 */  addiu       $v1, $zero, 0x1
/* 0005E8 80056638 AE020014 */  sw          $v0, 0x14($s0)
/* 0005EC 8005663C AE030038 */  sw          $v1, 0x38($s0)
/* 0005F0 80056640 AE000048 */  sw          $zero, 0x48($s0)
/* 0005F4 80056644 A603001A */  sh          $v1, 0x1a($s0)
/* 0005F8 80056648 A6030028 */  sh          $v1, 0x28($s0)
/* 0005FC 8005664C A603002E */  sh          $v1, 0x2e($s0)
/* 000600 80056650 A603001C */  sh          $v1, 0x1c($s0)
/* 000604 80056654 A603001E */  sh          $v1, 0x1e($s0)
/* 000608 80056658 A6000020 */  sh          $zero, 0x20($s0)
/* 00060C 8005665C A6000022 */  sh          $zero, 0x22($s0)
/* 000610 80056660 A6030026 */  sh          $v1, 0x26($s0)
/* 000614 80056664 A6000024 */  sh          $zero, 0x24($s0)
/* 000618 80056668 AE000030 */  sw          $zero, 0x30($s0)
/* 00061C 8005666C AE000034 */  sw          $zero, 0x34($s0)
/* 000620 80056670 A6000018 */  sh          $zero, 0x18($s0)
/* 000624 80056674 AE00003C */  sw          $zero, 0x3c($s0)
/* 000628 80056678 AE000040 */  sw          $zero, 0x40($s0)
/* 00062C 8005667C AE000044 */  sw          $zero, 0x44($s0)
/* 000630 80056680 8FBF0024 */  lw          $ra, 0x24($sp)
/* 000634 80056684 8FB00020 */  lw          $s0, 0x20($sp)
/* 000638 80056688 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00063C 8005668C 03E00008 */  jr          $ra
/* 000640 80056690 00000000 */   nop

glabel func_80056694 # 7
/* 000644 80056694 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 000648 80056698 AFA5002C */  sw          $a1, 0x2c($sp)
/* 00064C 8005669C AFA60030 */  sw          $a2, 0x30($sp)
/* 000650 800566A0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 000654 800566A4 AFB00020 */  sw          $s0, 0x20($sp)
/* 000658 800566A8 3C068006 */  lui         $a2, %hi(D_8005CC04)
/* 00065C 800566AC 3C058006 */  lui         $a1, %hi(D_8005C400)
/* 000660 800566B0 00808025 */  move        $s0, $a0
/* 000664 800566B4 24A5C400 */  addiu       $a1, $a1, %lo(D_8005C400)
/* 000668 800566B8 24C6CC04 */  addiu       $a2, $a2, %lo(D_8005CC04)
/* 00066C 800566BC 0C016DD8 */  jal         func_8005B760
/* 000670 800566C0 00003825 */   move       $a3, $zero
/* 000674 800566C4 240E0020 */  addiu       $t6, $zero, 0x20
/* 000678 800566C8 AFAE0010 */  sw          $t6, 0x10($sp)
/* 00067C 800566CC 00002025 */  move        $a0, $zero
/* 000680 800566D0 00002825 */  move        $a1, $zero
/* 000684 800566D4 8FA60030 */  lw          $a2, 0x30($sp)
/* 000688 800566D8 0C014E68 */  jal         func_800539A0
/* 00068C 800566DC 24070001 */   addiu      $a3, $zero, 0x1
/* 000690 800566E0 AE020014 */  sw          $v0, 0x14($s0)
/* 000694 800566E4 240F0020 */  addiu       $t7, $zero, 0x20
/* 000698 800566E8 AFAF0010 */  sw          $t7, 0x10($sp)
/* 00069C 800566EC 8FA60030 */  lw          $a2, 0x30($sp)
/* 0006A0 800566F0 00002025 */  move        $a0, $zero
/* 0006A4 800566F4 00002825 */  move        $a1, $zero
/* 0006A8 800566F8 0C014E68 */  jal         func_800539A0
/* 0006AC 800566FC 24070001 */   addiu      $a3, $zero, 0x1
/* 0006B0 80056700 AE020018 */  sw          $v0, 0x18($s0)
/* 0006B4 80056704 8FB9002C */  lw          $t9, 0x2c($sp)
/* 0006B8 80056708 26040034 */  addiu       $a0, $s0, 0x34
/* 0006BC 8005670C 0320F809 */  jalr        $t9
/* 0006C0 80056710 00000000 */   nop
/* 0006C4 80056714 24180001 */  addiu       $t8, $zero, 0x1
/* 0006C8 80056718 AE020030 */  sw          $v0, 0x30($s0)
/* 0006CC 8005671C AE00003C */  sw          $zero, 0x3c($s0)
/* 0006D0 80056720 AE180040 */  sw          $t8, 0x40($s0)
/* 0006D4 80056724 AE000044 */  sw          $zero, 0x44($s0)
/* 0006D8 80056728 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0006DC 8005672C 8FB00020 */  lw          $s0, 0x20($sp)
/* 0006E0 80056730 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0006E4 80056734 03E00008 */  jr          $ra
/* 0006E8 80056738 00000000 */   nop

glabel func_8005673C # 8
/* 0006EC 8005673C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0006F0 80056740 AFA5002C */  sw          $a1, 0x2c($sp)
/* 0006F4 80056744 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0006F8 80056748 AFB00020 */  sw          $s0, 0x20($sp)
/* 0006FC 8005674C 3C058006 */  lui         $a1, %hi(D_8005CF30)
/* 000700 80056750 3C068006 */  lui         $a2, %hi(D_8005D128)
/* 000704 80056754 00808025 */  move        $s0, $a0
/* 000708 80056758 24C6D128 */  addiu       $a2, $a2, %lo(D_8005D128)
/* 00070C 8005675C 24A5CF30 */  addiu       $a1, $a1, %lo(D_8005CF30)
/* 000710 80056760 0C016DD8 */  jal         func_8005B760
/* 000714 80056764 24070001 */   addiu      $a3, $zero, 0x1
/* 000718 80056768 240E0020 */  addiu       $t6, $zero, 0x20
/* 00071C 8005676C AFAE0010 */  sw          $t6, 0x10($sp)
/* 000720 80056770 00002025 */  move        $a0, $zero
/* 000724 80056774 00002825 */  move        $a1, $zero
/* 000728 80056778 8FA6002C */  lw          $a2, 0x2c($sp)
/* 00072C 8005677C 0C014E68 */  jal         func_800539A0
/* 000730 80056780 24070001 */   addiu      $a3, $zero, 0x1
/* 000734 80056784 3C013F80 */  lui         $at, 0x3f80
/* 000738 80056788 44802000 */  mtc1        $zero, $f4
/* 00073C 8005678C 44813000 */  mtc1        $at, $f6
/* 000740 80056790 240F0001 */  addiu       $t7, $zero, 0x1
/* 000744 80056794 AE020014 */  sw          $v0, 0x14($s0)
/* 000748 80056798 AE0F0024 */  sw          $t7, 0x24($s0)
/* 00074C 8005679C AE000030 */  sw          $zero, 0x30($s0)
/* 000750 800567A0 AE00001C */  sw          $zero, 0x1c($s0)
/* 000754 800567A4 AE000028 */  sw          $zero, 0x28($s0)
/* 000758 800567A8 AE00002C */  sw          $zero, 0x2c($s0)
/* 00075C 800567AC E6040020 */  swc1        $f4, 0x20($s0)
/* 000760 800567B0 E6060018 */  swc1        $f6, 0x18($s0)
/* 000764 800567B4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 000768 800567B8 8FB00020 */  lw          $s0, 0x20($sp)
/* 00076C 800567BC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 000770 800567C0 03E00008 */  jr          $ra
/* 000774 800567C4 00000000 */   nop

glabel func_800567C8 # 9
/* 000778 800567C8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00077C 800567CC AFA5001C */  sw          $a1, 0x1c($sp)
/* 000780 800567D0 AFA60020 */  sw          $a2, 0x20($sp)
/* 000784 800567D4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000788 800567D8 3C068006 */  lui         $a2, %hi(D_8005D2F8)
/* 00078C 800567DC 3C058006 */  lui         $a1, %hi(D_8005D220)
/* 000790 800567E0 24A5D220 */  addiu       $a1, $a1, %lo(D_8005D220)
/* 000794 800567E4 24C6D2F8 */  addiu       $a2, $a2, %lo(D_8005D2F8)
/* 000798 800567E8 AFA40018 */  sw          $a0, 0x18($sp)
/* 00079C 800567EC 0C016DD8 */  jal         func_8005B760
/* 0007A0 800567F0 24070006 */   addiu      $a3, $zero, 0x6
/* 0007A4 800567F4 8FA40018 */  lw          $a0, 0x18($sp)
/* 0007A8 800567F8 AC800014 */  sw          $zero, 0x14($a0)
/* 0007AC 800567FC 8FAE0020 */  lw          $t6, 0x20($sp)
/* 0007B0 80056800 AC8E0018 */  sw          $t6, 0x18($a0)
/* 0007B4 80056804 8FAF001C */  lw          $t7, 0x1c($sp)
/* 0007B8 80056808 AC8F001C */  sw          $t7, 0x1c($a0)
/* 0007BC 8005680C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0007C0 80056810 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0007C4 80056814 03E00008 */  jr          $ra
/* 0007C8 80056818 00000000 */   nop

glabel func_8005681C # 10
/* 0007CC 8005681C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0007D0 80056820 AFA5001C */  sw          $a1, 0x1c($sp)
/* 0007D4 80056824 AFA60020 */  sw          $a2, 0x20($sp)
/* 0007D8 80056828 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0007DC 8005682C 3C068006 */  lui         $a2, %hi(D_8005D450)
/* 0007E0 80056830 3C058006 */  lui         $a1, %hi(D_8005D330)
/* 0007E4 80056834 24A5D330 */  addiu       $a1, $a1, %lo(D_8005D330)
/* 0007E8 80056838 24C6D450 */  addiu       $a2, $a2, %lo(D_8005D450)
/* 0007EC 8005683C AFA40018 */  sw          $a0, 0x18($sp)
/* 0007F0 80056840 0C016DD8 */  jal         func_8005B760
/* 0007F4 80056844 24070007 */   addiu      $a3, $zero, 0x7
/* 0007F8 80056848 8FA40018 */  lw          $a0, 0x18($sp)
/* 0007FC 8005684C AC800014 */  sw          $zero, 0x14($a0)
/* 000800 80056850 8FAE0020 */  lw          $t6, 0x20($sp)
/* 000804 80056854 AC8E0018 */  sw          $t6, 0x18($a0)
/* 000808 80056858 8FAF001C */  lw          $t7, 0x1c($sp)
/* 00080C 8005685C AC8F001C */  sw          $t7, 0x1c($a0)
/* 000810 80056860 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000814 80056864 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000818 80056868 03E00008 */  jr          $ra
/* 00081C 8005686C 00000000 */   nop

glabel func_80056870 # 11
/* 000820 80056870 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000824 80056874 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000828 80056878 3C058006 */  lui         $a1, %hi(D_8005D480)
/* 00082C 8005687C 3C068006 */  lui         $a2, %hi(D_8005D50C)
/* 000830 80056880 24C6D50C */  addiu       $a2, $a2, %lo(D_8005D50C)
/* 000834 80056884 24A5D480 */  addiu       $a1, $a1, %lo(D_8005D480)
/* 000838 80056888 AFA40018 */  sw          $a0, 0x18($sp)
/* 00083C 8005688C 0C016DD8 */  jal         func_8005B760
/* 000840 80056890 24070003 */   addiu      $a3, $zero, 0x3
/* 000844 80056894 8FA40018 */  lw          $a0, 0x18($sp)
/* 000848 80056898 240E0001 */  addiu       $t6, $zero, 0x1
/* 00084C 8005689C AC800014 */  sw          $zero, 0x14($a0)
/* 000850 800568A0 AC8E0018 */  sw          $t6, 0x18($a0)
/* 000854 800568A4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000858 800568A8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00085C 800568AC 03E00008 */  jr          $ra
/* 000860 800568B0 00000000 */   nop
/* 000864 800568B4 00000000 */  nop
/* 000868 800568B8 00000000 */  nop
/* 00086C 800568BC 00000000 */  nop
