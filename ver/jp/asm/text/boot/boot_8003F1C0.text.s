.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8003F1C0 # 0
/* 03ED70 8003F1C0 27BDFF20 */  addiu       $sp, $sp, -0xe0
/* 03ED74 8003F1C4 8FAF0104 */  lw          $t7, 0x104($sp)
/* 03ED78 8003F1C8 AFA400E0 */  sw          $a0, 0xe0($sp)
/* 03ED7C 8003F1CC AFA500E4 */  sw          $a1, 0xe4($sp)
/* 03ED80 8003F1D0 AFA600E8 */  sw          $a2, 0xe8($sp)
/* 03ED84 8003F1D4 AFA700EC */  sw          $a3, 0xec($sp)
/* 03ED88 8003F1D8 11E0000B */  beqz        $t7, .L8003F208
/* 03ED8C 8003F1DC 8C820000 */   lw         $v0, 0x0($a0)
/* 03ED90 8003F1E0 8FA300F4 */  lw          $v1, 0xf4($sp)
/* 03ED94 8003F1E4 00002825 */  move        $a1, $zero
/* 03ED98 8003F1E8 00602025 */  move        $a0, $v1
.L8003F1EC:
/* 03ED9C 8003F1EC 0004C042 */  srl         $t8, $a0, 1
/* 03EDA0 8003F1F0 17000003 */  bnez        $t8, .L8003F200
/* 03EDA4 8003F1F4 03002025 */   move       $a0, $t8
/* 03EDA8 8003F1F8 10000005 */  b           .L8003F210
/* 03EDAC 8003F1FC AFA500DC */   sw         $a1, 0xdc($sp)
.L8003F200:
/* 03EDB0 8003F200 1000FFFA */  b           .L8003F1EC
/* 03EDB4 8003F204 24A50001 */   addiu      $a1, $a1, 0x1
.L8003F208:
/* 03EDB8 8003F208 AFA000DC */  sw          $zero, 0xdc($sp)
/* 03EDBC 8003F20C 8FA300F4 */  lw          $v1, 0xf4($sp)
.L8003F210:
/* 03EDC0 8003F210 8FB90108 */  lw          $t9, 0x108($sp)
/* 03EDC4 8003F214 8FA400F8 */  lw          $a0, 0xf8($sp)
/* 03EDC8 8003F218 00002825 */  move        $a1, $zero
/* 03EDCC 8003F21C 13200008 */  beqz        $t9, .L8003F240
/* 03EDD0 8003F220 3C0FE700 */   lui        $t7, 0xe700
.L8003F224:
/* 03EDD4 8003F224 00047042 */  srl         $t6, $a0, 1
/* 03EDD8 8003F228 15C00003 */  bnez        $t6, .L8003F238
/* 03EDDC 8003F22C 01C02025 */   move       $a0, $t6
/* 03EDE0 8003F230 10000004 */  b           .L8003F244
/* 03EDE4 8003F234 AFA500D8 */   sw         $a1, 0xd8($sp)
.L8003F238:
/* 03EDE8 8003F238 1000FFFA */  b           .L8003F224
/* 03EDEC 8003F23C 24A50001 */   addiu      $a1, $a1, 0x1
.L8003F240:
/* 03EDF0 8003F240 AFA000D8 */  sw          $zero, 0xd8($sp)
.L8003F244:
/* 03EDF4 8003F244 8FA500F0 */  lw          $a1, 0xf0($sp)
/* 03EDF8 8003F248 00402025 */  move        $a0, $v0
/* 03EDFC 8003F24C AC8F0000 */  sw          $t7, 0x0($a0)
/* 03EE00 8003F250 AC800004 */  sw          $zero, 0x4($a0)
/* 03EE04 8003F254 10A0000C */  beqz        $a1, .L8003F288
/* 03EE08 8003F258 24420008 */   addiu      $v0, $v0, 0x8
/* 03EE0C 8003F25C 24010001 */  addiu       $at, $zero, 0x1
/* 03EE10 8003F260 10A1006D */  beq         $a1, $at, .L8003F418
/* 03EE14 8003F264 30660007 */   andi       $a2, $v1, 0x7
/* 03EE18 8003F268 24010002 */  addiu       $at, $zero, 0x2
/* 03EE1C 8003F26C 10A100C5 */  beq         $a1, $at, .L8003F584
/* 03EE20 8003F270 30660003 */   andi       $a2, $v1, 0x3
/* 03EE24 8003F274 24010003 */  addiu       $at, $zero, 0x3
/* 03EE28 8003F278 10A1011E */  beq         $a1, $at, .L8003F6F4
/* 03EE2C 8003F27C 30660003 */   andi       $a2, $v1, 0x3
/* 03EE30 8003F280 10000170 */  b           .L8003F844
/* 03EE34 8003F284 8FB900EC */   lw         $t9, 0xec($sp)
.L8003F288:
/* 03EE38 8003F288 3066000F */  andi        $a2, $v1, 0xf
/* 03EE3C 8003F28C 10C00004 */  beqz        $a2, .L8003F2A0
/* 03EE40 8003F290 00404825 */   move       $t1, $v0
/* 03EE44 8003F294 00662023 */  subu        $a0, $v1, $a2
/* 03EE48 8003F298 10000002 */  b           .L8003F2A4
/* 03EE4C 8003F29C 24840010 */   addiu      $a0, $a0, 0x10
.L8003F2A0:
/* 03EE50 8003F2A0 00602025 */  move        $a0, $v1
.L8003F2A4:
/* 03EE54 8003F2A4 8FA300EC */  lw          $v1, 0xec($sp)
/* 03EE58 8003F2A8 3C01FD00 */  lui         $at, 0xfd00
/* 03EE5C 8003F2AC 00046843 */  sra         $t5, $a0, 1
/* 03EE60 8003F2B0 30780007 */  andi        $t8, $v1, 0x7
/* 03EE64 8003F2B4 00181D40 */  sll         $v1, $t8, 21
/* 03EE68 8003F2B8 00617025 */  or          $t6, $v1, $at
/* 03EE6C 8003F2BC 3C010008 */  lui         $at, 0x8
/* 03EE70 8003F2C0 0004C043 */  sra         $t8, $a0, 1
/* 03EE74 8003F2C4 2719FFFF */  addiu       $t9, $t8, -0x1
/* 03EE78 8003F2C8 01C17825 */  or          $t7, $t6, $at
/* 03EE7C 8003F2CC 332E0FFF */  andi        $t6, $t9, 0xfff
/* 03EE80 8003F2D0 01EEC025 */  or          $t8, $t7, $t6
/* 03EE84 8003F2D4 AD380000 */  sw          $t8, 0x0($t1)
/* 03EE88 8003F2D8 8FB900E4 */  lw          $t9, 0xe4($sp)
/* 03EE8C 8003F2DC 3C01F500 */  lui         $at, 0xf500
/* 03EE90 8003F2E0 25AD0007 */  addiu       $t5, $t5, 0x7
/* 03EE94 8003F2E4 000D78C3 */  sra         $t7, $t5, 3
/* 03EE98 8003F2E8 00616025 */  or          $t4, $v1, $at
/* 03EE9C 8003F2EC 3C010008 */  lui         $at, 0x8
/* 03EEA0 8003F2F0 31EE01FF */  andi        $t6, $t7, 0x1ff
/* 03EEA4 8003F2F4 AD390004 */  sw          $t9, 0x4($t1)
/* 03EEA8 8003F2F8 0181C825 */  or          $t9, $t4, $at
/* 03EEAC 8003F2FC 000E6A40 */  sll         $t5, $t6, 9
/* 03EEB0 8003F300 24420008 */  addiu       $v0, $v0, 0x8
/* 03EEB4 8003F304 00405025 */  move        $t2, $v0
/* 03EEB8 8003F308 032D7825 */  or          $t7, $t9, $t5
/* 03EEBC 8003F30C AD4F0000 */  sw          $t7, 0x0($t2)
/* 03EEC0 8003F310 8FA50100 */  lw          $a1, 0x100($sp)
/* 03EEC4 8003F314 8FA700FC */  lw          $a3, 0xfc($sp)
/* 03EEC8 8003F318 8FA600D8 */  lw          $a2, 0xd8($sp)
/* 03EECC 8003F31C 30AE0003 */  andi        $t6, $a1, 0x3
/* 03EED0 8003F320 8FA800DC */  lw          $t0, 0xdc($sp)
/* 03EED4 8003F324 000E2C80 */  sll         $a1, $t6, 18
/* 03EED8 8003F328 30EE0003 */  andi        $t6, $a3, 0x3
/* 03EEDC 8003F32C 30D9000F */  andi        $t9, $a2, 0xf
/* 03EEE0 8003F330 00193380 */  sll         $a2, $t9, 14
/* 03EEE4 8003F334 000E3A00 */  sll         $a3, $t6, 8
/* 03EEE8 8003F338 3C010700 */  lui         $at, 0x700
/* 03EEEC 8003F33C 00A17025 */  or          $t6, $a1, $at
/* 03EEF0 8003F340 3119000F */  andi        $t9, $t0, 0xf
/* 03EEF4 8003F344 00194100 */  sll         $t0, $t9, 4
/* 03EEF8 8003F348 01C6C025 */  or          $t8, $t6, $a2
/* 03EEFC 8003F34C 0307C825 */  or          $t9, $t8, $a3
/* 03EF00 8003F350 24420008 */  addiu       $v0, $v0, 0x8
/* 03EF04 8003F354 00405825 */  move        $t3, $v0
/* 03EF08 8003F358 03287825 */  or          $t7, $t9, $t0
/* 03EF0C 8003F35C AD4F0004 */  sw          $t7, 0x4($t2)
/* 03EF10 8003F360 3C0EE600 */  lui         $t6, 0xe600
/* 03EF14 8003F364 AD6E0000 */  sw          $t6, 0x0($t3)
/* 03EF18 8003F368 AFAB00B4 */  sw          $t3, 0xb4($sp)
/* 03EF1C 8003F36C 24420008 */  addiu       $v0, $v0, 0x8
/* 03EF20 8003F370 00404825 */  move        $t1, $v0
/* 03EF24 8003F374 AD600004 */  sw          $zero, 0x4($t3)
/* 03EF28 8003F378 3C19F400 */  lui         $t9, 0xf400
/* 03EF2C 8003F37C AD390000 */  sw          $t9, 0x0($t1)
/* 03EF30 8003F380 8FA300F8 */  lw          $v1, 0xf8($sp)
/* 03EF34 8003F384 248FFFFF */  addiu       $t7, $a0, -0x1
/* 03EF38 8003F388 AFAF0000 */  sw          $t7, 0x0($sp)
/* 03EF3C 8003F38C 2463FFFF */  addiu       $v1, $v1, -0x1
/* 03EF40 8003F390 00037080 */  sll         $t6, $v1, 2
/* 03EF44 8003F394 31C30FFF */  andi        $v1, $t6, 0xfff
/* 03EF48 8003F398 000F7840 */  sll         $t7, $t7, 1
/* 03EF4C 8003F39C 31EE0FFF */  andi        $t6, $t7, 0xfff
/* 03EF50 8003F3A0 000EC300 */  sll         $t8, $t6, 12
/* 03EF54 8003F3A4 0301C825 */  or          $t9, $t8, $at
/* 03EF58 8003F3A8 03237825 */  or          $t7, $t9, $v1
/* 03EF5C 8003F3AC 24420008 */  addiu       $v0, $v0, 0x8
/* 03EF60 8003F3B0 00405025 */  move        $t2, $v0
/* 03EF64 8003F3B4 AD2F0004 */  sw          $t7, 0x4($t1)
/* 03EF68 8003F3B8 24420008 */  addiu       $v0, $v0, 0x8
/* 03EF6C 8003F3BC 3C0EE700 */  lui         $t6, 0xe700
/* 03EF70 8003F3C0 AD4E0000 */  sw          $t6, 0x0($t2)
/* 03EF74 8003F3C4 00405825 */  move        $t3, $v0
/* 03EF78 8003F3C8 00A6C825 */  or          $t9, $a1, $a2
/* 03EF7C 8003F3CC 03277825 */  or          $t7, $t9, $a3
/* 03EF80 8003F3D0 AD400004 */  sw          $zero, 0x4($t2)
/* 03EF84 8003F3D4 018DC025 */  or          $t8, $t4, $t5
/* 03EF88 8003F3D8 AD780000 */  sw          $t8, 0x0($t3)
/* 03EF8C 8003F3DC 01E87025 */  or          $t6, $t7, $t0
/* 03EF90 8003F3E0 24420008 */  addiu       $v0, $v0, 0x8
/* 03EF94 8003F3E4 00402025 */  move        $a0, $v0
/* 03EF98 8003F3E8 AD6E0004 */  sw          $t6, 0x4($t3)
/* 03EF9C 8003F3EC 3C18F200 */  lui         $t8, 0xf200
/* 03EFA0 8003F3F0 AC980000 */  sw          $t8, 0x0($a0)
/* 03EFA4 8003F3F4 8FB90000 */  lw          $t9, 0x0($sp)
/* 03EFA8 8003F3F8 24420008 */  addiu       $v0, $v0, 0x8
/* 03EFAC 8003F3FC 00197880 */  sll         $t7, $t9, 2
/* 03EFB0 8003F400 31EE0FFF */  andi        $t6, $t7, 0xfff
/* 03EFB4 8003F404 000EC300 */  sll         $t8, $t6, 12
/* 03EFB8 8003F408 0303C825 */  or          $t9, $t8, $v1
/* 03EFBC 8003F40C AC990004 */  sw          $t9, 0x4($a0)
/* 03EFC0 8003F410 1000010B */  b           .L8003F840
/* 03EFC4 8003F414 8FA500F0 */   lw         $a1, 0xf0($sp)
.L8003F418:
/* 03EFC8 8003F418 10C00004 */  beqz        $a2, .L8003F42C
/* 03EFCC 8003F41C 3C0D0008 */   lui        $t5, 0x8
/* 03EFD0 8003F420 00662023 */  subu        $a0, $v1, $a2
/* 03EFD4 8003F424 10000002 */  b           .L8003F430
/* 03EFD8 8003F428 24840008 */   addiu      $a0, $a0, 0x8
.L8003F42C:
/* 03EFDC 8003F42C 00602025 */  move        $a0, $v1
.L8003F430:
/* 03EFE0 8003F430 8FA300EC */  lw          $v1, 0xec($sp)
/* 03EFE4 8003F434 3C01FD00 */  lui         $at, 0xfd00
/* 03EFE8 8003F438 00404825 */  move        $t1, $v0
/* 03EFEC 8003F43C 306F0007 */  andi        $t7, $v1, 0x7
/* 03EFF0 8003F440 000F1D40 */  sll         $v1, $t7, 21
/* 03EFF4 8003F444 0061C025 */  or          $t8, $v1, $at
/* 03EFF8 8003F448 248FFFFF */  addiu       $t7, $a0, -0x1
/* 03EFFC 8003F44C 31EE0FFF */  andi        $t6, $t7, 0xfff
/* 03F000 8003F450 030DC825 */  or          $t9, $t8, $t5
/* 03F004 8003F454 032EC025 */  or          $t8, $t9, $t6
/* 03F008 8003F458 AD380000 */  sw          $t8, 0x0($t1)
/* 03F00C 8003F45C 3C01F500 */  lui         $at, 0xf500
/* 03F010 8003F460 8FAF00E4 */  lw          $t7, 0xe4($sp)
/* 03F014 8003F464 0061C825 */  or          $t9, $v1, $at
/* 03F018 8003F468 032D7025 */  or          $t6, $t9, $t5
/* 03F01C 8003F46C 24990007 */  addiu       $t9, $a0, 0x7
/* 03F020 8003F470 0019C0C3 */  sra         $t8, $t9, 3
/* 03F024 8003F474 AD2F0004 */  sw          $t7, 0x4($t1)
/* 03F028 8003F478 330F01FF */  andi        $t7, $t8, 0x1ff
/* 03F02C 8003F47C 000FCA40 */  sll         $t9, $t7, 9
/* 03F030 8003F480 24420008 */  addiu       $v0, $v0, 0x8
/* 03F034 8003F484 00405025 */  move        $t2, $v0
/* 03F038 8003F488 01D95825 */  or          $t3, $t6, $t9
/* 03F03C 8003F48C AD4B0000 */  sw          $t3, 0x0($t2)
/* 03F040 8003F490 8FA50100 */  lw          $a1, 0x100($sp)
/* 03F044 8003F494 8FA700FC */  lw          $a3, 0xfc($sp)
/* 03F048 8003F498 8FA600D8 */  lw          $a2, 0xd8($sp)
/* 03F04C 8003F49C 30B80003 */  andi        $t8, $a1, 0x3
/* 03F050 8003F4A0 8FA800DC */  lw          $t0, 0xdc($sp)
/* 03F054 8003F4A4 00182C80 */  sll         $a1, $t8, 18
/* 03F058 8003F4A8 30F80003 */  andi        $t8, $a3, 0x3
/* 03F05C 8003F4AC 30CE000F */  andi        $t6, $a2, 0xf
/* 03F060 8003F4B0 000E3380 */  sll         $a2, $t6, 14
/* 03F064 8003F4B4 00183A00 */  sll         $a3, $t8, 8
/* 03F068 8003F4B8 3C010700 */  lui         $at, 0x700
/* 03F06C 8003F4BC 00A1C025 */  or          $t8, $a1, $at
/* 03F070 8003F4C0 310E000F */  andi        $t6, $t0, 0xf
/* 03F074 8003F4C4 000E4100 */  sll         $t0, $t6, 4
/* 03F078 8003F4C8 03067825 */  or          $t7, $t8, $a2
/* 03F07C 8003F4CC 01E77025 */  or          $t6, $t7, $a3
/* 03F080 8003F4D0 01C8C825 */  or          $t9, $t6, $t0
/* 03F084 8003F4D4 24420008 */  addiu       $v0, $v0, 0x8
/* 03F088 8003F4D8 00406025 */  move        $t4, $v0
/* 03F08C 8003F4DC AD590004 */  sw          $t9, 0x4($t2)
/* 03F090 8003F4E0 24420008 */  addiu       $v0, $v0, 0x8
/* 03F094 8003F4E4 3C18E600 */  lui         $t8, 0xe600
/* 03F098 8003F4E8 AD980000 */  sw          $t8, 0x0($t4)
/* 03F09C 8003F4EC 00405025 */  move        $t2, $v0
/* 03F0A0 8003F4F0 AD800004 */  sw          $zero, 0x4($t4)
/* 03F0A4 8003F4F4 3C0FF400 */  lui         $t7, 0xf400
/* 03F0A8 8003F4F8 AD4F0000 */  sw          $t7, 0x0($t2)
/* 03F0AC 8003F4FC 8FA300F8 */  lw          $v1, 0xf8($sp)
/* 03F0B0 8003F500 2489FFFF */  addiu       $t1, $a0, -0x1
/* 03F0B4 8003F504 00097080 */  sll         $t6, $t1, 2
/* 03F0B8 8003F508 31D90FFF */  andi        $t9, $t6, 0xfff
/* 03F0BC 8003F50C 2463FFFF */  addiu       $v1, $v1, -0x1
/* 03F0C0 8003F510 00037880 */  sll         $t7, $v1, 2
/* 03F0C4 8003F514 00194B00 */  sll         $t1, $t9, 12
/* 03F0C8 8003F518 0121C825 */  or          $t9, $t1, $at
/* 03F0CC 8003F51C 31E30FFF */  andi        $v1, $t7, 0xfff
/* 03F0D0 8003F520 24420008 */  addiu       $v0, $v0, 0x8
/* 03F0D4 8003F524 00406825 */  move        $t5, $v0
/* 03F0D8 8003F528 0323C025 */  or          $t8, $t9, $v1
/* 03F0DC 8003F52C AD580004 */  sw          $t8, 0x4($t2)
/* 03F0E0 8003F530 3C0FE700 */  lui         $t7, 0xe700
/* 03F0E4 8003F534 ADAF0000 */  sw          $t7, 0x0($t5)
/* 03F0E8 8003F538 ADA00004 */  sw          $zero, 0x4($t5)
/* 03F0EC 8003F53C 24420008 */  addiu       $v0, $v0, 0x8
/* 03F0F0 8003F540 AFA2008C */  sw          $v0, 0x8c($sp)
/* 03F0F4 8003F544 8FAE008C */  lw          $t6, 0x8c($sp)
/* 03F0F8 8003F548 00A6C825 */  or          $t9, $a1, $a2
/* 03F0FC 8003F54C 0327C025 */  or          $t8, $t9, $a3
/* 03F100 8003F550 ADCB0000 */  sw          $t3, 0x0($t6)
/* 03F104 8003F554 8FAE008C */  lw          $t6, 0x8c($sp)
/* 03F108 8003F558 03087825 */  or          $t7, $t8, $t0
/* 03F10C 8003F55C 24420008 */  addiu       $v0, $v0, 0x8
/* 03F110 8003F560 00402025 */  move        $a0, $v0
/* 03F114 8003F564 ADCF0004 */  sw          $t7, 0x4($t6)
/* 03F118 8003F568 0123C025 */  or          $t8, $t1, $v1
/* 03F11C 8003F56C 3C19F200 */  lui         $t9, 0xf200
/* 03F120 8003F570 AC990000 */  sw          $t9, 0x0($a0)
/* 03F124 8003F574 AC980004 */  sw          $t8, 0x4($a0)
/* 03F128 8003F578 24420008 */  addiu       $v0, $v0, 0x8
/* 03F12C 8003F57C 100000B0 */  b           .L8003F840
/* 03F130 8003F580 8FA500F0 */   lw         $a1, 0xf0($sp)
.L8003F584:
/* 03F134 8003F584 10C00004 */  beqz        $a2, .L8003F598
/* 03F138 8003F588 3C0C0010 */   lui        $t4, 0x10
/* 03F13C 8003F58C 00662023 */  subu        $a0, $v1, $a2
/* 03F140 8003F590 10000002 */  b           .L8003F59C
/* 03F144 8003F594 24840004 */   addiu      $a0, $a0, 0x4
.L8003F598:
/* 03F148 8003F598 00602025 */  move        $a0, $v1
.L8003F59C:
/* 03F14C 8003F59C 8FA300EC */  lw          $v1, 0xec($sp)
/* 03F150 8003F5A0 3C01FD00 */  lui         $at, 0xfd00
/* 03F154 8003F5A4 00404825 */  move        $t1, $v0
/* 03F158 8003F5A8 306F0007 */  andi        $t7, $v1, 0x7
/* 03F15C 8003F5AC 000F1D40 */  sll         $v1, $t7, 21
/* 03F160 8003F5B0 0061C825 */  or          $t9, $v1, $at
/* 03F164 8003F5B4 248FFFFF */  addiu       $t7, $a0, -0x1
/* 03F168 8003F5B8 31EE0FFF */  andi        $t6, $t7, 0xfff
/* 03F16C 8003F5BC 032CC025 */  or          $t8, $t9, $t4
/* 03F170 8003F5C0 030EC825 */  or          $t9, $t8, $t6
/* 03F174 8003F5C4 AD390000 */  sw          $t9, 0x0($t1)
/* 03F178 8003F5C8 8FAF00E4 */  lw          $t7, 0xe4($sp)
/* 03F17C 8003F5CC 3C01F500 */  lui         $at, 0xf500
/* 03F180 8003F5D0 0061C025 */  or          $t8, $v1, $at
/* 03F184 8003F5D4 0004C880 */  sll         $t9, $a0, 2
/* 03F188 8003F5D8 AD2F0004 */  sw          $t7, 0x4($t1)
/* 03F18C 8003F5DC 00197843 */  sra         $t7, $t9, 1
/* 03F190 8003F5E0 030C7025 */  or          $t6, $t8, $t4
/* 03F194 8003F5E4 25F80007 */  addiu       $t8, $t7, 0x7
/* 03F198 8003F5E8 0018C8C3 */  sra         $t9, $t8, 3
/* 03F19C 8003F5EC 332F01FF */  andi        $t7, $t9, 0x1ff
/* 03F1A0 8003F5F0 000FC240 */  sll         $t8, $t7, 9
/* 03F1A4 8003F5F4 24420008 */  addiu       $v0, $v0, 0x8
/* 03F1A8 8003F5F8 00405025 */  move        $t2, $v0
/* 03F1AC 8003F5FC 01D86825 */  or          $t5, $t6, $t8
/* 03F1B0 8003F600 AD4D0000 */  sw          $t5, 0x0($t2)
/* 03F1B4 8003F604 8FA50100 */  lw          $a1, 0x100($sp)
/* 03F1B8 8003F608 8FA700FC */  lw          $a3, 0xfc($sp)
/* 03F1BC 8003F60C 8FA600D8 */  lw          $a2, 0xd8($sp)
/* 03F1C0 8003F610 30B90003 */  andi        $t9, $a1, 0x3
/* 03F1C4 8003F614 8FA800DC */  lw          $t0, 0xdc($sp)
/* 03F1C8 8003F618 00192C80 */  sll         $a1, $t9, 18
/* 03F1CC 8003F61C 30F90003 */  andi        $t9, $a3, 0x3
/* 03F1D0 8003F620 30CE000F */  andi        $t6, $a2, 0xf
/* 03F1D4 8003F624 000E3380 */  sll         $a2, $t6, 14
/* 03F1D8 8003F628 00193A00 */  sll         $a3, $t9, 8
/* 03F1DC 8003F62C 3C010700 */  lui         $at, 0x700
/* 03F1E0 8003F630 00A1C825 */  or          $t9, $a1, $at
/* 03F1E4 8003F634 310E000F */  andi        $t6, $t0, 0xf
/* 03F1E8 8003F638 000E4100 */  sll         $t0, $t6, 4
/* 03F1EC 8003F63C 03267825 */  or          $t7, $t9, $a2
/* 03F1F0 8003F640 01E77025 */  or          $t6, $t7, $a3
/* 03F1F4 8003F644 01C8C025 */  or          $t8, $t6, $t0
/* 03F1F8 8003F648 24420008 */  addiu       $v0, $v0, 0x8
/* 03F1FC 8003F64C 00405825 */  move        $t3, $v0
/* 03F200 8003F650 AD580004 */  sw          $t8, 0x4($t2)
/* 03F204 8003F654 3C19E600 */  lui         $t9, 0xe600
/* 03F208 8003F658 AD790000 */  sw          $t9, 0x0($t3)
/* 03F20C 8003F65C AFAB007C */  sw          $t3, 0x7c($sp)
/* 03F210 8003F660 24420008 */  addiu       $v0, $v0, 0x8
/* 03F214 8003F664 00405025 */  move        $t2, $v0
/* 03F218 8003F668 AD600004 */  sw          $zero, 0x4($t3)
/* 03F21C 8003F66C 3C0EF400 */  lui         $t6, 0xf400
/* 03F220 8003F670 AD4E0000 */  sw          $t6, 0x0($t2)
/* 03F224 8003F674 8FA300F8 */  lw          $v1, 0xf8($sp)
/* 03F228 8003F678 2489FFFF */  addiu       $t1, $a0, -0x1
/* 03F22C 8003F67C 0009C080 */  sll         $t8, $t1, 2
/* 03F230 8003F680 33190FFF */  andi        $t9, $t8, 0xfff
/* 03F234 8003F684 2463FFFF */  addiu       $v1, $v1, -0x1
/* 03F238 8003F688 00037080 */  sll         $t6, $v1, 2
/* 03F23C 8003F68C 00194B00 */  sll         $t1, $t9, 12
/* 03F240 8003F690 0121C825 */  or          $t9, $t1, $at
/* 03F244 8003F694 31C30FFF */  andi        $v1, $t6, 0xfff
/* 03F248 8003F698 03237825 */  or          $t7, $t9, $v1
/* 03F24C 8003F69C 24420008 */  addiu       $v0, $v0, 0x8
/* 03F250 8003F6A0 00405825 */  move        $t3, $v0
/* 03F254 8003F6A4 AD4F0004 */  sw          $t7, 0x4($t2)
/* 03F258 8003F6A8 24420008 */  addiu       $v0, $v0, 0x8
/* 03F25C 8003F6AC 3C0EE700 */  lui         $t6, 0xe700
/* 03F260 8003F6B0 AD6E0000 */  sw          $t6, 0x0($t3)
/* 03F264 8003F6B4 00406025 */  move        $t4, $v0
/* 03F268 8003F6B8 00A6C025 */  or          $t8, $a1, $a2
/* 03F26C 8003F6BC 0307C825 */  or          $t9, $t8, $a3
/* 03F270 8003F6C0 AD600004 */  sw          $zero, 0x4($t3)
/* 03F274 8003F6C4 03287825 */  or          $t7, $t9, $t0
/* 03F278 8003F6C8 24420008 */  addiu       $v0, $v0, 0x8
/* 03F27C 8003F6CC 00402025 */  move        $a0, $v0
/* 03F280 8003F6D0 AD8F0004 */  sw          $t7, 0x4($t4)
/* 03F284 8003F6D4 AD8D0000 */  sw          $t5, 0x0($t4)
/* 03F288 8003F6D8 0123C025 */  or          $t8, $t1, $v1
/* 03F28C 8003F6DC 3C0EF200 */  lui         $t6, 0xf200
/* 03F290 8003F6E0 AC8E0000 */  sw          $t6, 0x0($a0)
/* 03F294 8003F6E4 AC980004 */  sw          $t8, 0x4($a0)
/* 03F298 8003F6E8 24420008 */  addiu       $v0, $v0, 0x8
/* 03F29C 8003F6EC 10000054 */  b           .L8003F840
/* 03F2A0 8003F6F0 8FA500F0 */   lw         $a1, 0xf0($sp)
.L8003F6F4:
/* 03F2A4 8003F6F4 10C00004 */  beqz        $a2, .L8003F708
/* 03F2A8 8003F6F8 3C01FD18 */   lui        $at, 0xfd18
/* 03F2AC 8003F6FC 00662023 */  subu        $a0, $v1, $a2
/* 03F2B0 8003F700 10000002 */  b           .L8003F70C
/* 03F2B4 8003F704 24840004 */   addiu      $a0, $a0, 0x4
.L8003F708:
/* 03F2B8 8003F708 00602025 */  move        $a0, $v1
.L8003F70C:
/* 03F2BC 8003F70C 2499FFFF */  addiu       $t9, $a0, -0x1
/* 03F2C0 8003F710 332F0FFF */  andi        $t7, $t9, 0xfff
/* 03F2C4 8003F714 01E17025 */  or          $t6, $t7, $at
/* 03F2C8 8003F718 00401825 */  move        $v1, $v0
/* 03F2CC 8003F71C AC6E0000 */  sw          $t6, 0x0($v1)
/* 03F2D0 8003F720 00046080 */  sll         $t4, $a0, 2
/* 03F2D4 8003F724 8FB800E4 */  lw          $t8, 0xe4($sp)
/* 03F2D8 8003F728 000CC843 */  sra         $t9, $t4, 1
/* 03F2DC 8003F72C 272C0007 */  addiu       $t4, $t9, 0x7
/* 03F2E0 8003F730 000C78C3 */  sra         $t7, $t4, 3
/* 03F2E4 8003F734 31EE01FF */  andi        $t6, $t7, 0x1ff
/* 03F2E8 8003F738 AC780004 */  sw          $t8, 0x4($v1)
/* 03F2EC 8003F73C 000EC240 */  sll         $t8, $t6, 9
/* 03F2F0 8003F740 24420008 */  addiu       $v0, $v0, 0x8
/* 03F2F4 8003F744 3C01F518 */  lui         $at, 0xf518
/* 03F2F8 8003F748 03016025 */  or          $t4, $t8, $at
/* 03F2FC 8003F74C 00404825 */  move        $t1, $v0
/* 03F300 8003F750 AD2C0000 */  sw          $t4, 0x0($t1)
/* 03F304 8003F754 8FA50100 */  lw          $a1, 0x100($sp)
/* 03F308 8003F758 8FA700FC */  lw          $a3, 0xfc($sp)
/* 03F30C 8003F75C 8FA600D8 */  lw          $a2, 0xd8($sp)
/* 03F310 8003F760 30AF0003 */  andi        $t7, $a1, 0x3
/* 03F314 8003F764 8FA800DC */  lw          $t0, 0xdc($sp)
/* 03F318 8003F768 000F2C80 */  sll         $a1, $t7, 18
/* 03F31C 8003F76C 30EF0003 */  andi        $t7, $a3, 0x3
/* 03F320 8003F770 30D8000F */  andi        $t8, $a2, 0xf
/* 03F324 8003F774 00183380 */  sll         $a2, $t8, 14
/* 03F328 8003F778 000F3A00 */  sll         $a3, $t7, 8
/* 03F32C 8003F77C 3C010700 */  lui         $at, 0x700
/* 03F330 8003F780 00A17825 */  or          $t7, $a1, $at
/* 03F334 8003F784 3118000F */  andi        $t8, $t0, 0xf
/* 03F338 8003F788 00184100 */  sll         $t0, $t8, 4
/* 03F33C 8003F78C 01E67025 */  or          $t6, $t7, $a2
/* 03F340 8003F790 01C7C025 */  or          $t8, $t6, $a3
/* 03F344 8003F794 24420008 */  addiu       $v0, $v0, 0x8
/* 03F348 8003F798 00405025 */  move        $t2, $v0
/* 03F34C 8003F79C 0308C825 */  or          $t9, $t8, $t0
/* 03F350 8003F7A0 AD390004 */  sw          $t9, 0x4($t1)
/* 03F354 8003F7A4 24420008 */  addiu       $v0, $v0, 0x8
/* 03F358 8003F7A8 3C0FE600 */  lui         $t7, 0xe600
/* 03F35C 8003F7AC AD4F0000 */  sw          $t7, 0x0($t2)
/* 03F360 8003F7B0 00406825 */  move        $t5, $v0
/* 03F364 8003F7B4 AD400004 */  sw          $zero, 0x4($t2)
/* 03F368 8003F7B8 3C0EF400 */  lui         $t6, 0xf400
/* 03F36C 8003F7BC ADAE0000 */  sw          $t6, 0x0($t5)
/* 03F370 8003F7C0 8FA300F8 */  lw          $v1, 0xf8($sp)
/* 03F374 8003F7C4 2489FFFF */  addiu       $t1, $a0, -0x1
/* 03F378 8003F7C8 0009C080 */  sll         $t8, $t1, 2
/* 03F37C 8003F7CC 33190FFF */  andi        $t9, $t8, 0xfff
/* 03F380 8003F7D0 2463FFFF */  addiu       $v1, $v1, -0x1
/* 03F384 8003F7D4 00037080 */  sll         $t6, $v1, 2
/* 03F388 8003F7D8 00194B00 */  sll         $t1, $t9, 12
/* 03F38C 8003F7DC 0121C825 */  or          $t9, $t1, $at
/* 03F390 8003F7E0 31C30FFF */  andi        $v1, $t6, 0xfff
/* 03F394 8003F7E4 03237825 */  or          $t7, $t9, $v1
/* 03F398 8003F7E8 24420008 */  addiu       $v0, $v0, 0x8
/* 03F39C 8003F7EC 00405025 */  move        $t2, $v0
/* 03F3A0 8003F7F0 ADAF0004 */  sw          $t7, 0x4($t5)
/* 03F3A4 8003F7F4 24420008 */  addiu       $v0, $v0, 0x8
/* 03F3A8 8003F7F8 00405825 */  move        $t3, $v0
/* 03F3AC 8003F7FC 3C0EE700 */  lui         $t6, 0xe700
/* 03F3B0 8003F800 00A6C025 */  or          $t8, $a1, $a2
/* 03F3B4 8003F804 0307C825 */  or          $t9, $t8, $a3
/* 03F3B8 8003F808 AD4E0000 */  sw          $t6, 0x0($t2)
/* 03F3BC 8003F80C AD400004 */  sw          $zero, 0x4($t2)
/* 03F3C0 8003F810 03287825 */  or          $t7, $t9, $t0
/* 03F3C4 8003F814 AD6F0004 */  sw          $t7, 0x4($t3)
/* 03F3C8 8003F818 AD6C0000 */  sw          $t4, 0x0($t3)
/* 03F3CC 8003F81C 24420008 */  addiu       $v0, $v0, 0x8
/* 03F3D0 8003F820 AFA20050 */  sw          $v0, 0x50($sp)
/* 03F3D4 8003F824 8FA40050 */  lw          $a0, 0x50($sp)
/* 03F3D8 8003F828 3C0EF200 */  lui         $t6, 0xf200
/* 03F3DC 8003F82C 0123C025 */  or          $t8, $t1, $v1
/* 03F3E0 8003F830 AC980004 */  sw          $t8, 0x4($a0)
/* 03F3E4 8003F834 AC8E0000 */  sw          $t6, 0x0($a0)
/* 03F3E8 8003F838 24420008 */  addiu       $v0, $v0, 0x8
/* 03F3EC 8003F83C 8FA500F0 */  lw          $a1, 0xf0($sp)
.L8003F840:
/* 03F3F0 8003F840 8FB900EC */  lw          $t9, 0xec($sp)
.L8003F844:
/* 03F3F4 8003F844 24010002 */  addiu       $at, $zero, 0x2
/* 03F3F8 8003F848 5721004A */  bnel        $t9, $at, .L8003F974
/* 03F3FC 8003F84C 8FB800E0 */   lw         $t8, 0xe0($sp)
/* 03F400 8003F850 14A00025 */  bnez        $a1, .L8003F8E8
/* 03F404 8003F854 00401825 */   move       $v1, $v0
/* 03F408 8003F858 00401825 */  move        $v1, $v0
/* 03F40C 8003F85C 3C0FFD10 */  lui         $t7, 0xfd10
/* 03F410 8003F860 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03F414 8003F864 8FAE00E8 */  lw          $t6, 0xe8($sp)
/* 03F418 8003F868 24420008 */  addiu       $v0, $v0, 0x8
/* 03F41C 8003F86C 00402025 */  move        $a0, $v0
/* 03F420 8003F870 AC6E0004 */  sw          $t6, 0x4($v1)
/* 03F424 8003F874 24420008 */  addiu       $v0, $v0, 0x8
/* 03F428 8003F878 00402825 */  move        $a1, $v0
/* 03F42C 8003F87C 3C18E800 */  lui         $t8, 0xe800
/* 03F430 8003F880 AC980000 */  sw          $t8, 0x0($a0)
/* 03F434 8003F884 AC800004 */  sw          $zero, 0x4($a0)
/* 03F438 8003F888 3C19F500 */  lui         $t9, 0xf500
/* 03F43C 8003F88C 37390100 */  ori         $t9, $t9, 0x100
/* 03F440 8003F890 24420008 */  addiu       $v0, $v0, 0x8
/* 03F444 8003F894 3C0F0700 */  lui         $t7, 0x700
/* 03F448 8003F898 ACAF0004 */  sw          $t7, 0x4($a1)
/* 03F44C 8003F89C 00403025 */  move        $a2, $v0
/* 03F450 8003F8A0 ACB90000 */  sw          $t9, 0x0($a1)
/* 03F454 8003F8A4 24420008 */  addiu       $v0, $v0, 0x8
/* 03F458 8003F8A8 00403825 */  move        $a3, $v0
/* 03F45C 8003F8AC 3C0EE600 */  lui         $t6, 0xe600
/* 03F460 8003F8B0 ACCE0000 */  sw          $t6, 0x0($a2)
/* 03F464 8003F8B4 24420008 */  addiu       $v0, $v0, 0x8
/* 03F468 8003F8B8 ACC00004 */  sw          $zero, 0x4($a2)
/* 03F46C 8003F8BC 3C190703 */  lui         $t9, 0x703
/* 03F470 8003F8C0 3739C000 */  ori         $t9, $t9, 0xc000
/* 03F474 8003F8C4 00401825 */  move        $v1, $v0
/* 03F478 8003F8C8 3C18F000 */  lui         $t8, 0xf000
/* 03F47C 8003F8CC ACF80000 */  sw          $t8, 0x0($a3)
/* 03F480 8003F8D0 ACF90004 */  sw          $t9, 0x4($a3)
/* 03F484 8003F8D4 3C0FE700 */  lui         $t7, 0xe700
/* 03F488 8003F8D8 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03F48C 8003F8DC AC600004 */  sw          $zero, 0x4($v1)
/* 03F490 8003F8E0 10000023 */  b           .L8003F970
/* 03F494 8003F8E4 24420008 */   addiu      $v0, $v0, 0x8
.L8003F8E8:
/* 03F498 8003F8E8 3C0EFD10 */  lui         $t6, 0xfd10
/* 03F49C 8003F8EC AC6E0000 */  sw          $t6, 0x0($v1)
/* 03F4A0 8003F8F0 8FB800E8 */  lw          $t8, 0xe8($sp)
/* 03F4A4 8003F8F4 24420008 */  addiu       $v0, $v0, 0x8
/* 03F4A8 8003F8F8 00402025 */  move        $a0, $v0
/* 03F4AC 8003F8FC AC780004 */  sw          $t8, 0x4($v1)
/* 03F4B0 8003F900 24420008 */  addiu       $v0, $v0, 0x8
/* 03F4B4 8003F904 00402825 */  move        $a1, $v0
/* 03F4B8 8003F908 3C19E800 */  lui         $t9, 0xe800
/* 03F4BC 8003F90C AC990000 */  sw          $t9, 0x0($a0)
/* 03F4C0 8003F910 AC800004 */  sw          $zero, 0x4($a0)
/* 03F4C4 8003F914 3C0FF500 */  lui         $t7, 0xf500
/* 03F4C8 8003F918 35EF0100 */  ori         $t7, $t7, 0x100
/* 03F4CC 8003F91C 24420008 */  addiu       $v0, $v0, 0x8
/* 03F4D0 8003F920 3C0E0700 */  lui         $t6, 0x700
/* 03F4D4 8003F924 ACAE0004 */  sw          $t6, 0x4($a1)
/* 03F4D8 8003F928 00403025 */  move        $a2, $v0
/* 03F4DC 8003F92C ACAF0000 */  sw          $t7, 0x0($a1)
/* 03F4E0 8003F930 24420008 */  addiu       $v0, $v0, 0x8
/* 03F4E4 8003F934 00403825 */  move        $a3, $v0
/* 03F4E8 8003F938 3C18E600 */  lui         $t8, 0xe600
/* 03F4EC 8003F93C ACD80000 */  sw          $t8, 0x0($a2)
/* 03F4F0 8003F940 24420008 */  addiu       $v0, $v0, 0x8
/* 03F4F4 8003F944 ACC00004 */  sw          $zero, 0x4($a2)
/* 03F4F8 8003F948 3C0F073F */  lui         $t7, 0x73f
/* 03F4FC 8003F94C 35EFC000 */  ori         $t7, $t7, 0xc000
/* 03F500 8003F950 00401825 */  move        $v1, $v0
/* 03F504 8003F954 3C19F000 */  lui         $t9, 0xf000
/* 03F508 8003F958 ACF90000 */  sw          $t9, 0x0($a3)
/* 03F50C 8003F95C ACEF0004 */  sw          $t7, 0x4($a3)
/* 03F510 8003F960 3C0EE700 */  lui         $t6, 0xe700
/* 03F514 8003F964 AC6E0000 */  sw          $t6, 0x0($v1)
/* 03F518 8003F968 AC600004 */  sw          $zero, 0x4($v1)
/* 03F51C 8003F96C 24420008 */  addiu       $v0, $v0, 0x8
.L8003F970:
/* 03F520 8003F970 8FB800E0 */  lw          $t8, 0xe0($sp)
.L8003F974:
/* 03F524 8003F974 27BD00E0 */  addiu       $sp, $sp, 0xe0
/* 03F528 8003F978 03E00008 */  jr          $ra
/* 03F52C 8003F97C AF020000 */   sw         $v0, 0x0($t8)

glabel func_8003F980 # 1
/* 03F530 8003F980 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 03F534 8003F984 AFB00004 */  sw          $s0, 0x4($sp)
/* 03F538 8003F988 8FB0001C */  lw          $s0, 0x1c($sp)
/* 03F53C 8003F98C AC850000 */  sw          $a1, 0x0($a0)
/* 03F540 8003F990 AC860004 */  sw          $a2, 0x4($a0)
/* 03F544 8003F994 AC870008 */  sw          $a3, 0x8($a0)
/* 03F548 8003F998 8FAE0018 */  lw          $t6, 0x18($sp)
/* 03F54C 8003F99C AC900010 */  sw          $s0, 0x10($a0)
/* 03F550 8003F9A0 24010001 */  addiu       $at, $zero, 0x1
/* 03F554 8003F9A4 AC8E000C */  sw          $t6, 0xc($a0)
/* 03F558 8003F9A8 8FAF0020 */  lw          $t7, 0x20($sp)
/* 03F55C 8003F9AC AC900018 */  sw          $s0, 0x18($a0)
/* 03F560 8003F9B0 3202000F */  andi        $v0, $s0, 0xf
/* 03F564 8003F9B4 AC8F0014 */  sw          $t7, 0x14($a0)
/* 03F568 8003F9B8 8FB80018 */  lw          $t8, 0x18($sp)
/* 03F56C 8003F9BC 1300000B */  beqz        $t8, .L8003F9EC
/* 03F570 8003F9C0 00000000 */   nop
/* 03F574 8003F9C4 1301000E */  beq         $t8, $at, .L8003FA00
/* 03F578 8003F9C8 32020007 */   andi       $v0, $s0, 0x7
/* 03F57C 8003F9CC 24010002 */  addiu       $at, $zero, 0x2
/* 03F580 8003F9D0 13010010 */  beq         $t8, $at, .L8003FA14
/* 03F584 8003F9D4 32020003 */   andi       $v0, $s0, 0x3
/* 03F588 8003F9D8 24010003 */  addiu       $at, $zero, 0x3
/* 03F58C 8003F9DC 13010012 */  beq         $t8, $at, .L8003FA28
/* 03F590 8003F9E0 32020003 */   andi       $v0, $s0, 0x3
/* 03F594 8003F9E4 10000015 */  b           .L8003FA3C
/* 03F598 8003F9E8 8FB00004 */   lw         $s0, 0x4($sp)
.L8003F9EC:
/* 03F59C 8003F9EC 10400012 */  beqz        $v0, .L8003FA38
/* 03F5A0 8003F9F0 0202C823 */   subu       $t9, $s0, $v0
/* 03F5A4 8003F9F4 27280010 */  addiu       $t0, $t9, 0x10
/* 03F5A8 8003F9F8 1000000F */  b           .L8003FA38
/* 03F5AC 8003F9FC AC880018 */   sw         $t0, 0x18($a0)
.L8003FA00:
/* 03F5B0 8003FA00 1040000D */  beqz        $v0, .L8003FA38
/* 03F5B4 8003FA04 02024823 */   subu       $t1, $s0, $v0
/* 03F5B8 8003FA08 252A0008 */  addiu       $t2, $t1, 0x8
/* 03F5BC 8003FA0C 1000000A */  b           .L8003FA38
/* 03F5C0 8003FA10 AC8A0018 */   sw         $t2, 0x18($a0)
.L8003FA14:
/* 03F5C4 8003FA14 10400008 */  beqz        $v0, .L8003FA38
/* 03F5C8 8003FA18 02025823 */   subu       $t3, $s0, $v0
/* 03F5CC 8003FA1C 256C0004 */  addiu       $t4, $t3, 0x4
/* 03F5D0 8003FA20 10000005 */  b           .L8003FA38
/* 03F5D4 8003FA24 AC8C0018 */   sw         $t4, 0x18($a0)
.L8003FA28:
/* 03F5D8 8003FA28 10400003 */  beqz        $v0, .L8003FA38
/* 03F5DC 8003FA2C 02026823 */   subu       $t5, $s0, $v0
/* 03F5E0 8003FA30 25AE0004 */  addiu       $t6, $t5, 0x4
/* 03F5E4 8003FA34 AC8E0018 */  sw          $t6, 0x18($a0)
.L8003FA38:
/* 03F5E8 8003FA38 8FB00004 */  lw          $s0, 0x4($sp)
.L8003FA3C:
/* 03F5EC 8003FA3C 03E00008 */  jr          $ra
/* 03F5F0 8003FA40 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8003FA44 # 2
/* 03F5F4 8003FA44 27BDFD40 */  addiu       $sp, $sp, -0x2c0
/* 03F5F8 8003FA48 3C014480 */  lui         $at, 0x4480
/* 03F5FC 8003FA4C 44810000 */  mtc1        $at, $f0
/* 03F600 8003FA50 C7AC02E0 */  lwc1        $f12, 0x2e0($sp)
/* 03F604 8003FA54 C7AE02E4 */  lwc1        $f14, 0x2e4($sp)
/* 03F608 8003FA58 3C013FE0 */  lui         $at, 0x3fe0
/* 03F60C 8003FA5C 460C0203 */  div.s       $f8, $f0, $f12
/* 03F610 8003FA60 AFBF002C */  sw          $ra, 0x2c($sp)
/* 03F614 8003FA64 AFBE0028 */  sw          $fp, 0x28($sp)
/* 03F618 8003FA68 AFB70024 */  sw          $s7, 0x24($sp)
/* 03F61C 8003FA6C AFB60020 */  sw          $s6, 0x20($sp)
/* 03F620 8003FA70 AFB5001C */  sw          $s5, 0x1c($sp)
/* 03F624 8003FA74 AFB40018 */  sw          $s4, 0x18($sp)
/* 03F628 8003FA78 AFB30014 */  sw          $s3, 0x14($sp)
/* 03F62C 8003FA7C AFB20010 */  sw          $s2, 0x10($sp)
/* 03F630 8003FA80 AFB1000C */  sw          $s1, 0xc($sp)
/* 03F634 8003FA84 AFB00008 */  sw          $s0, 0x8($sp)
/* 03F638 8003FA88 AFA402C0 */  sw          $a0, 0x2c0($sp)
/* 03F63C 8003FA8C AFA602C8 */  sw          $a2, 0x2c8($sp)
/* 03F640 8003FA90 AFA702CC */  sw          $a3, 0x2cc($sp)
/* 03F644 8003FA94 AFA002AC */  sw          $zero, 0x2ac($sp)
/* 03F648 8003FA98 AFA002A8 */  sw          $zero, 0x2a8($sp)
/* 03F64C 8003FA9C AFA702A4 */  sw          $a3, 0x2a4($sp)
/* 03F650 8003FAA0 44811800 */  mtc1        $at, $f3
/* 03F654 8003FAA4 44801000 */  mtc1        $zero, $f2
/* 03F658 8003FAA8 8CAE0000 */  lw          $t6, 0x0($a1)
/* 03F65C 8003FAAC 8C820000 */  lw          $v0, 0x0($a0)
/* 03F660 8003FAB0 AFAE0284 */  sw          $t6, 0x284($sp)
/* 03F664 8003FAB4 460041A1 */  cvt.d.s     $f6, $f8
/* 03F668 8003FAB8 460E0203 */  div.s       $f8, $f0, $f14
/* 03F66C 8003FABC 8CB90008 */  lw          $t9, 0x8($a1)
/* 03F670 8003FAC0 8CAC0004 */  lw          $t4, 0x4($a1)
/* 03F674 8003FAC4 00401825 */  move        $v1, $v0
/* 03F678 8003FAC8 46223100 */  add.d       $f4, $f6, $f2
/* 03F67C 8003FACC AFB9027C */  sw          $t9, 0x27c($sp)
/* 03F680 8003FAD0 8CB80010 */  lw          $t8, 0x10($a1)
/* 03F684 8003FAD4 8CAA000C */  lw          $t2, 0xc($a1)
/* 03F688 8003FAD8 4620228D */  trunc.w.d   $f10, $f4
/* 03F68C 8003FADC AFB80274 */  sw          $t8, 0x274($sp)
/* 03F690 8003FAE0 8CAF0014 */  lw          $t7, 0x14($a1)
/* 03F694 8003FAE4 24420008 */  addiu       $v0, $v0, 0x8
/* 03F698 8003FAE8 44105000 */  mfc1        $s0, $f10
/* 03F69C 8003FAEC AFAF0270 */  sw          $t7, 0x270($sp)
/* 03F6A0 8003FAF0 8CAE0018 */  lw          $t6, 0x18($a1)
/* 03F6A4 8003FAF4 3C0FE700 */  lui         $t7, 0xe700
/* 03F6A8 8003FAF8 AFB00290 */  sw          $s0, 0x290($sp)
/* 03F6AC 8003FAFC AFAE026C */  sw          $t6, 0x26c($sp)
/* 03F6B0 8003FB00 3C0EE300 */  lui         $t6, 0xe300
/* 03F6B4 8003FB04 00404025 */  move        $t0, $v0
/* 03F6B8 8003FB08 24420008 */  addiu       $v0, $v0, 0x8
/* 03F6BC 8003FB0C 35CE0A01 */  ori         $t6, $t6, 0xa01
/* 03F6C0 8003FB10 00404825 */  move        $t1, $v0
/* 03F6C4 8003FB14 460041A1 */  cvt.d.s     $f6, $f8
/* 03F6C8 8003FB18 3C19E300 */  lui         $t9, 0xe300
/* 03F6CC 8003FB1C 46223100 */  add.d       $f4, $f6, $f2
/* 03F6D0 8003FB20 37390C00 */  ori         $t9, $t9, 0xc00
/* 03F6D4 8003FB24 24420008 */  addiu       $v0, $v0, 0x8
/* 03F6D8 8003FB28 3C18E300 */  lui         $t8, 0xe300
/* 03F6DC 8003FB2C 4620228D */  trunc.w.d   $f10, $f4
/* 03F6E0 8003FB30 37180F00 */  ori         $t8, $t8, 0xf00
/* 03F6E4 8003FB34 44115000 */  mfc1        $s1, $f10
/* 03F6E8 8003FB38 00000000 */  nop
/* 03F6EC 8003FB3C AFB1028C */  sw          $s1, 0x28c($sp)
/* 03F6F0 8003FB40 AC6F0000 */  sw          $t7, 0x0($v1)
/* 03F6F4 8003FB44 AC600004 */  sw          $zero, 0x4($v1)
/* 03F6F8 8003FB48 AD0E0000 */  sw          $t6, 0x0($t0)
/* 03F6FC 8003FB4C AD000004 */  sw          $zero, 0x4($t0)
/* 03F700 8003FB50 AD390000 */  sw          $t9, 0x0($t1)
/* 03F704 8003FB54 00401825 */  move        $v1, $v0
/* 03F708 8003FB58 AD200004 */  sw          $zero, 0x4($t1)
/* 03F70C 8003FB5C 24420008 */  addiu       $v0, $v0, 0x8
/* 03F710 8003FB60 AC780000 */  sw          $t8, 0x0($v1)
/* 03F714 8003FB64 00402025 */  move        $a0, $v0
/* 03F718 8003FB68 3C0FE300 */  lui         $t7, 0xe300
/* 03F71C 8003FB6C AC600004 */  sw          $zero, 0x4($v1)
/* 03F720 8003FB70 35EF1201 */  ori         $t7, $t7, 0x1201
/* 03F724 8003FB74 24420008 */  addiu       $v0, $v0, 0x8
/* 03F728 8003FB78 AC8F0000 */  sw          $t7, 0x0($a0)
/* 03F72C 8003FB7C 240E2000 */  addiu       $t6, $zero, 0x2000
/* 03F730 8003FB80 00402825 */  move        $a1, $v0
/* 03F734 8003FB84 AC8E0004 */  sw          $t6, 0x4($a0)
/* 03F738 8003FB88 3C19E300 */  lui         $t9, 0xe300
/* 03F73C 8003FB8C 37391402 */  ori         $t9, $t9, 0x1402
/* 03F740 8003FB90 24420008 */  addiu       $v0, $v0, 0x8
/* 03F744 8003FB94 24180C00 */  addiu       $t8, $zero, 0xc00
/* 03F748 8003FB98 ACB80004 */  sw          $t8, 0x4($a1)
/* 03F74C 8003FB9C ACB90000 */  sw          $t9, 0x0($a1)
/* 03F750 8003FBA0 00403025 */  move        $a2, $v0
/* 03F754 8003FBA4 3C0FE300 */  lui         $t7, 0xe300
/* 03F758 8003FBA8 35EF0D01 */  ori         $t7, $t7, 0xd01
/* 03F75C 8003FBAC ACCF0000 */  sw          $t7, 0x0($a2)
/* 03F760 8003FBB0 ACC00004 */  sw          $zero, 0x4($a2)
/* 03F764 8003FBB4 8FAE02D8 */  lw          $t6, 0x2d8($sp)
/* 03F768 8003FBB8 24420008 */  addiu       $v0, $v0, 0x8
/* 03F76C 8003FBBC 8FA30274 */  lw          $v1, 0x274($sp)
/* 03F770 8003FBC0 51C0000A */  beql        $t6, $zero, .L8003FBEC
/* 03F774 8003FBC4 24180001 */   addiu      $t8, $zero, 0x1
/* 03F778 8003FBC8 00005825 */  move        $t3, $zero
.L8003FBCC:
/* 03F77C 8003FBCC 0003C842 */  srl         $t9, $v1, 1
/* 03F780 8003FBD0 17200003 */  bnez        $t9, .L8003FBE0
/* 03F784 8003FBD4 03201825 */   move       $v1, $t9
/* 03F788 8003FBD8 10000006 */  b           .L8003FBF4
/* 03F78C 8003FBDC AFAB02B8 */   sw         $t3, 0x2b8($sp)
.L8003FBE0:
/* 03F790 8003FBE0 1000FFFA */  b           .L8003FBCC
/* 03F794 8003FBE4 256B0001 */   addiu      $t3, $t3, 0x1
/* 03F798 8003FBE8 24180001 */  addiu       $t8, $zero, 0x1
.L8003FBEC:
/* 03F79C 8003FBEC AFB802D8 */  sw          $t8, 0x2d8($sp)
/* 03F7A0 8003FBF0 AFA002B8 */  sw          $zero, 0x2b8($sp)
.L8003FBF4:
/* 03F7A4 8003FBF4 8FAF02DC */  lw          $t7, 0x2dc($sp)
/* 03F7A8 8003FBF8 8FA30270 */  lw          $v1, 0x270($sp)
/* 03F7AC 8003FBFC 24190001 */  addiu       $t9, $zero, 0x1
/* 03F7B0 8003FC00 51E0000A */  beql        $t7, $zero, .L8003FC2C
/* 03F7B4 8003FC04 AFB902DC */   sw         $t9, 0x2dc($sp)
/* 03F7B8 8003FC08 00005825 */  move        $t3, $zero
.L8003FC0C:
/* 03F7BC 8003FC0C 00037042 */  srl         $t6, $v1, 1
/* 03F7C0 8003FC10 15C00003 */  bnez        $t6, .L8003FC20
/* 03F7C4 8003FC14 01C01825 */   move       $v1, $t6
/* 03F7C8 8003FC18 10000005 */  b           .L8003FC30
/* 03F7CC 8003FC1C AFAB02B4 */   sw         $t3, 0x2b4($sp)
.L8003FC20:
/* 03F7D0 8003FC20 1000FFFA */  b           .L8003FC0C
/* 03F7D4 8003FC24 256B0001 */   addiu      $t3, $t3, 0x1
/* 03F7D8 8003FC28 AFB902DC */  sw          $t9, 0x2dc($sp)
.L8003FC2C:
/* 03F7DC 8003FC2C AFA002B4 */  sw          $zero, 0x2b4($sp)
.L8003FC30:
/* 03F7E0 8003FC30 5140000C */  beql        $t2, $zero, .L8003FC64
/* 03F7E4 8003FC34 8FA8027C */   lw         $t0, 0x27c($sp)
/* 03F7E8 8003FC38 24010001 */  addiu       $at, $zero, 0x1
/* 03F7EC 8003FC3C 114102AD */  beq         $t2, $at, .L800406F4
/* 03F7F0 8003FC40 24090002 */   addiu      $t1, $zero, 0x2
/* 03F7F4 8003FC44 1149052C */  beq         $t2, $t1, .L800410F8
/* 03F7F8 8003FC48 00401825 */   move       $v1, $v0
/* 03F7FC 8003FC4C 24010003 */  addiu       $at, $zero, 0x3
/* 03F800 8003FC50 11410766 */  beq         $t2, $at, .L800419EC
/* 03F804 8003FC54 8FA50270 */   lw         $a1, 0x270($sp)
/* 03F808 8003FC58 10000987 */  b           .L80042278
/* 03F80C 8003FC5C 8FB902C0 */   lw         $t9, 0x2c0($sp)
/* 03F810 8003FC60 8FA8027C */  lw          $t0, 0x27c($sp)
.L8003FC64:
/* 03F814 8003FC64 24090002 */  addiu       $t1, $zero, 0x2
/* 03F818 8003FC68 00005825 */  move        $t3, $zero
/* 03F81C 8003FC6C 11090009 */  beq         $t0, $t1, .L8003FC94
/* 03F820 8003FC70 00401825 */   move       $v1, $v0
/* 03F824 8003FC74 24010003 */  addiu       $at, $zero, 0x3
/* 03F828 8003FC78 1101003E */  beq         $t0, $at, .L8003FD74
/* 03F82C 8003FC7C 00401825 */   move       $v1, $v0
/* 03F830 8003FC80 24010004 */  addiu       $at, $zero, 0x4
/* 03F834 8003FC84 5101003C */  beql        $t0, $at, .L8003FD78
/* 03F838 8003FC88 3C18E300 */   lui        $t8, 0xe300
/* 03F83C 8003FC8C 1000004C */  b           .L8003FDC0
/* 03F840 8003FC90 8FAD02B0 */   lw         $t5, 0x2b0($sp)
.L8003FC94:
/* 03F844 8003FC94 24420008 */  addiu       $v0, $v0, 0x8
/* 03F848 8003FC98 3C18FD10 */  lui         $t8, 0xfd10
/* 03F84C 8003FC9C AC780000 */  sw          $t8, 0x0($v1)
/* 03F850 8003FCA0 00402025 */  move        $a0, $v0
/* 03F854 8003FCA4 24420008 */  addiu       $v0, $v0, 0x8
/* 03F858 8003FCA8 AC6C0004 */  sw          $t4, 0x4($v1)
/* 03F85C 8003FCAC 3C0FE800 */  lui         $t7, 0xe800
/* 03F860 8003FCB0 AC8F0000 */  sw          $t7, 0x0($a0)
/* 03F864 8003FCB4 00402825 */  move        $a1, $v0
/* 03F868 8003FCB8 AC800004 */  sw          $zero, 0x4($a0)
/* 03F86C 8003FCBC 3C0EF500 */  lui         $t6, 0xf500
/* 03F870 8003FCC0 35CE0100 */  ori         $t6, $t6, 0x100
/* 03F874 8003FCC4 24420008 */  addiu       $v0, $v0, 0x8
/* 03F878 8003FCC8 3C190700 */  lui         $t9, 0x700
/* 03F87C 8003FCCC ACB90004 */  sw          $t9, 0x4($a1)
/* 03F880 8003FCD0 00403025 */  move        $a2, $v0
/* 03F884 8003FCD4 ACAE0000 */  sw          $t6, 0x0($a1)
/* 03F888 8003FCD8 24420008 */  addiu       $v0, $v0, 0x8
/* 03F88C 8003FCDC 3C18E600 */  lui         $t8, 0xe600
/* 03F890 8003FCE0 ACD80000 */  sw          $t8, 0x0($a2)
/* 03F894 8003FCE4 00403825 */  move        $a3, $v0
/* 03F898 8003FCE8 ACC00004 */  sw          $zero, 0x4($a2)
/* 03F89C 8003FCEC 3C0FF000 */  lui         $t7, 0xf000
/* 03F8A0 8003FCF0 ACEF0000 */  sw          $t7, 0x0($a3)
/* 03F8A4 8003FCF4 24420008 */  addiu       $v0, $v0, 0x8
/* 03F8A8 8003FCF8 3C0E0703 */  lui         $t6, 0x703
/* 03F8AC 8003FCFC 8FA60270 */  lw          $a2, 0x270($sp)
/* 03F8B0 8003FD00 35CEC000 */  ori         $t6, $t6, 0xc000
/* 03F8B4 8003FD04 00401825 */  move        $v1, $v0
/* 03F8B8 8003FD08 ACEE0004 */  sw          $t6, 0x4($a3)
/* 03F8BC 8003FD0C 24420008 */  addiu       $v0, $v0, 0x8
/* 03F8C0 8003FD10 3C19E700 */  lui         $t9, 0xe700
/* 03F8C4 8003FD14 AC790000 */  sw          $t9, 0x0($v1)
/* 03F8C8 8003FD18 AC600004 */  sw          $zero, 0x4($v1)
/* 03F8CC 8003FD1C 00402025 */  move        $a0, $v0
/* 03F8D0 8003FD20 3C18E300 */  lui         $t8, 0xe300
/* 03F8D4 8003FD24 37181001 */  ori         $t8, $t8, 0x1001
/* 03F8D8 8003FD28 340F8000 */  ori         $t7, $zero, 0x8000
/* 03F8DC 8003FD2C AC8F0004 */  sw          $t7, 0x4($a0)
/* 03F8E0 8003FD30 AC980000 */  sw          $t8, 0x0($a0)
/* 03F8E4 8003FD34 8FAE026C */  lw          $t6, 0x26c($sp)
/* 03F8E8 8003FD38 24191000 */  addiu       $t9, $zero, 0x1000
/* 03F8EC 8003FD3C 24420008 */  addiu       $v0, $v0, 0x8
/* 03F8F0 8003FD40 032E001B */  divu        $zero, $t9, $t6
/* 03F8F4 8003FD44 00002812 */  mflo        $a1
/* 03F8F8 8003FD48 00A6082B */  sltu        $at, $a1, $a2
/* 03F8FC 8003FD4C 15C00002 */  bnez        $t6, .L8003FD58
/* 03F900 8003FD50 00000000 */   nop
/* 03F904 8003FD54 0007000D */  break       7
.L8003FD58:
/* 03F908 8003FD58 00C06825 */  move        $t5, $a2
/* 03F90C 8003FD5C 10200003 */  beqz        $at, .L8003FD6C
/* 03F910 8003FD60 00000000 */   nop
/* 03F914 8003FD64 10000001 */  b           .L8003FD6C
/* 03F918 8003FD68 00A06825 */   move       $t5, $a1
.L8003FD6C:
/* 03F91C 8003FD6C 10000015 */  b           .L8003FDC4
/* 03F920 8003FD70 8FB802E8 */   lw         $t8, 0x2e8($sp)
.L8003FD74:
/* 03F924 8003FD74 3C18E300 */  lui         $t8, 0xe300
.L8003FD78:
/* 03F928 8003FD78 37181001 */  ori         $t8, $t8, 0x1001
/* 03F92C 8003FD7C AC780000 */  sw          $t8, 0x0($v1)
/* 03F930 8003FD80 AC600004 */  sw          $zero, 0x4($v1)
/* 03F934 8003FD84 8FAF026C */  lw          $t7, 0x26c($sp)
/* 03F938 8003FD88 24192000 */  addiu       $t9, $zero, 0x2000
/* 03F93C 8003FD8C 8FAE0270 */  lw          $t6, 0x270($sp)
/* 03F940 8003FD90 032F001B */  divu        $zero, $t9, $t7
/* 03F944 8003FD94 00002012 */  mflo        $a0
/* 03F948 8003FD98 008E082B */  sltu        $at, $a0, $t6
/* 03F94C 8003FD9C 24420008 */  addiu       $v0, $v0, 0x8
/* 03F950 8003FDA0 15E00002 */  bnez        $t7, .L8003FDAC
/* 03F954 8003FDA4 00000000 */   nop
/* 03F958 8003FDA8 0007000D */  break       7
.L8003FDAC:
/* 03F95C 8003FDAC 8FAD0270 */  lw          $t5, 0x270($sp)
/* 03F960 8003FDB0 10200003 */  beqz        $at, .L8003FDC0
/* 03F964 8003FDB4 00000000 */   nop
/* 03F968 8003FDB8 10000001 */  b           .L8003FDC0
/* 03F96C 8003FDBC 00806825 */   move       $t5, $a0
.L8003FDC0:
/* 03F970 8003FDC0 8FB802E8 */  lw          $t8, 0x2e8($sp)
.L8003FDC4:
/* 03F974 8003FDC4 8FB90274 */  lw          $t9, 0x274($sp)
/* 03F978 8003FDC8 25ADFFFF */  addiu       $t5, $t5, -0x1
/* 03F97C 8003FDCC 13000004 */  beqz        $t8, .L8003FDE0
/* 03F980 8003FDD0 00197940 */   sll        $t7, $t9, 5
/* 03F984 8003FDD4 00107023 */  negu        $t6, $s0
/* 03F988 8003FDD8 AFAF02AC */  sw          $t7, 0x2ac($sp)
/* 03F98C 8003FDDC AFAE0290 */  sw          $t6, 0x290($sp)
.L8003FDE0:
/* 03F990 8003FDE0 8FBE02EC */  lw          $fp, 0x2ec($sp)
/* 03F994 8003FDE4 3C013FF0 */  lui         $at, 0x3ff0
/* 03F998 8003FDE8 8FB80270 */  lw          $t8, 0x270($sp)
/* 03F99C 8003FDEC 13C00019 */  beqz        $fp, .L8003FE54
/* 03F9A0 8003FDF0 00401825 */   move       $v1, $v0
/* 03F9A4 8003FDF4 44813800 */  mtc1        $at, $f7
/* 03F9A8 8003FDF8 44803000 */  mtc1        $zero, $f6
/* 03F9AC 8003FDFC 46007221 */  cvt.d.s     $f8, $f14
/* 03F9B0 8003FE00 44985000 */  mtc1        $t8, $f10
/* 03F9B4 8003FE04 46264101 */  sub.d       $f4, $f8, $f6
/* 03F9B8 8003FE08 3C014F80 */  lui         $at, 0x4f80
/* 03F9BC 8003FE0C 07010004 */  bgez        $t8, .L8003FE20
/* 03F9C0 8003FE10 46805220 */   cvt.s.w    $f8, $f10
/* 03F9C4 8003FE14 44813000 */  mtc1        $at, $f6
/* 03F9C8 8003FE18 00000000 */  nop
/* 03F9CC 8003FE1C 46064200 */  add.s       $f8, $f8, $f6
.L8003FE20:
/* 03F9D0 8003FE20 460042A1 */  cvt.d.s     $f10, $f8
/* 03F9D4 8003FE24 8FAE02CC */  lw          $t6, 0x2cc($sp)
/* 03F9D8 8003FE28 462A2182 */  mul.d       $f6, $f4, $f10
/* 03F9DC 8003FE2C 000DC940 */  sll         $t9, $t5, 5
/* 03F9E0 8003FE30 AFB902A8 */  sw          $t9, 0x2a8($sp)
/* 03F9E4 8003FE34 46223200 */  add.d       $f8, $f6, $f2
/* 03F9E8 8003FE38 4620410D */  trunc.w.d   $f4, $f8
/* 03F9EC 8003FE3C 440F2000 */  mfc1        $t7, $f4
/* 03F9F0 8003FE40 00000000 */  nop
/* 03F9F4 8003FE44 01EEC021 */  addu        $t8, $t7, $t6
/* 03F9F8 8003FE48 00117823 */  negu        $t7, $s1
/* 03F9FC 8003FE4C AFB802A4 */  sw          $t8, 0x2a4($sp)
/* 03FA00 8003FE50 AFAF028C */  sw          $t7, 0x28c($sp)
.L8003FE54:
/* 03FA04 8003FE54 8FAE027C */  lw          $t6, 0x27c($sp)
/* 03FA08 8003FE58 3C18FD10 */  lui         $t8, 0xfd10
/* 03FA0C 8003FE5C 3C19E800 */  lui         $t9, 0xe800
/* 03FA10 8003FE60 15C9001F */  bne         $t6, $t1, .L8003FEE0
/* 03FA14 8003FE64 3C0FF500 */   lui        $t7, 0xf500
/* 03FA18 8003FE68 24420008 */  addiu       $v0, $v0, 0x8
/* 03FA1C 8003FE6C 00402025 */  move        $a0, $v0
/* 03FA20 8003FE70 AC780000 */  sw          $t8, 0x0($v1)
/* 03FA24 8003FE74 24420008 */  addiu       $v0, $v0, 0x8
/* 03FA28 8003FE78 AC6C0004 */  sw          $t4, 0x4($v1)
/* 03FA2C 8003FE7C 00402825 */  move        $a1, $v0
/* 03FA30 8003FE80 AC800004 */  sw          $zero, 0x4($a0)
/* 03FA34 8003FE84 AC990000 */  sw          $t9, 0x0($a0)
/* 03FA38 8003FE88 24420008 */  addiu       $v0, $v0, 0x8
/* 03FA3C 8003FE8C 35EF0100 */  ori         $t7, $t7, 0x100
/* 03FA40 8003FE90 3C0E0700 */  lui         $t6, 0x700
/* 03FA44 8003FE94 ACAE0004 */  sw          $t6, 0x4($a1)
/* 03FA48 8003FE98 ACAF0000 */  sw          $t7, 0x0($a1)
/* 03FA4C 8003FE9C 00403025 */  move        $a2, $v0
/* 03FA50 8003FEA0 24420008 */  addiu       $v0, $v0, 0x8
/* 03FA54 8003FEA4 00403825 */  move        $a3, $v0
/* 03FA58 8003FEA8 3C18E600 */  lui         $t8, 0xe600
/* 03FA5C 8003FEAC ACD80000 */  sw          $t8, 0x0($a2)
/* 03FA60 8003FEB0 24420008 */  addiu       $v0, $v0, 0x8
/* 03FA64 8003FEB4 ACC00004 */  sw          $zero, 0x4($a2)
/* 03FA68 8003FEB8 3C0F0703 */  lui         $t7, 0x703
/* 03FA6C 8003FEBC 35EFC000 */  ori         $t7, $t7, 0xc000
/* 03FA70 8003FEC0 00401825 */  move        $v1, $v0
/* 03FA74 8003FEC4 3C19F000 */  lui         $t9, 0xf000
/* 03FA78 8003FEC8 ACF90000 */  sw          $t9, 0x0($a3)
/* 03FA7C 8003FECC ACEF0004 */  sw          $t7, 0x4($a3)
/* 03FA80 8003FED0 3C0EE700 */  lui         $t6, 0xe700
/* 03FA84 8003FED4 AC6E0000 */  sw          $t6, 0x0($v1)
/* 03FA88 8003FED8 AC600004 */  sw          $zero, 0x4($v1)
/* 03FA8C 8003FEDC 24420008 */  addiu       $v0, $v0, 0x8
.L8003FEE0:
/* 03FA90 8003FEE0 8FB80270 */  lw          $t8, 0x270($sp)
/* 03FA94 8003FEE4 8FBF026C */  lw          $ra, 0x26c($sp)
/* 03FA98 8003FEE8 8FB902DC */  lw          $t9, 0x2dc($sp)
/* 03FA9C 8003FEEC 030D8823 */  subu        $s1, $t8, $t5
/* 03FAA0 8003FEF0 2631FFFF */  addiu       $s1, $s1, -0x1
/* 03FAA4 8003FEF4 12200100 */  beqz        $s1, .L800402F8
/* 03FAA8 8003FEF8 8FAF027C */   lw         $t7, 0x27c($sp)
/* 03FAAC 8003FEFC 44995000 */  mtc1        $t9, $f10
/* 03FAB0 8003FF00 24090001 */  addiu       $t1, $zero, 0x1
/* 03FAB4 8003FF04 00003825 */  move        $a3, $zero
/* 03FAB8 8003FF08 01A04025 */  move        $t0, $t5
/* 03FABC 8003FF0C 07210005 */  bgez        $t9, .L8003FF24
/* 03FAC0 8003FF10 468050A0 */   cvt.s.w    $f2, $f10
/* 03FAC4 8003FF14 3C014F80 */  lui         $at, 0x4f80
/* 03FAC8 8003FF18 44813000 */  mtc1        $at, $f6
/* 03FACC 8003FF1C 00000000 */  nop
/* 03FAD0 8003FF20 46061080 */  add.s       $f2, $f2, $f6
.L8003FF24:
/* 03FAD4 8003FF24 31EE0007 */  andi        $t6, $t7, 0x7
/* 03FAD8 8003FF28 000EC540 */  sll         $t8, $t6, 21
/* 03FADC 8003FF2C 3C01FD00 */  lui         $at, 0xfd00
/* 03FAE0 8003FF30 0301C825 */  or          $t9, $t8, $at
/* 03FAE4 8003FF34 3C010008 */  lui         $at, 0x8
/* 03FAE8 8003FF38 03217825 */  or          $t7, $t9, $at
/* 03FAEC 8003FF3C 001F7042 */  srl         $t6, $ra, 1
/* 03FAF0 8003FF40 25D9FFFF */  addiu       $t9, $t6, -0x1
/* 03FAF4 8003FF44 332E0FFF */  andi        $t6, $t9, 0xfff
/* 03FAF8 8003FF48 01EEC825 */  or          $t9, $t7, $t6
/* 03FAFC 8003FF4C AFB90088 */  sw          $t9, 0x88($sp)
/* 03FB00 8003FF50 3C01F500 */  lui         $at, 0xf500
/* 03FB04 8003FF54 03017825 */  or          $t7, $t8, $at
/* 03FB08 8003FF58 001FC842 */  srl         $t9, $ra, 1
/* 03FB0C 8003FF5C AFB8008C */  sw          $t8, 0x8c($sp)
/* 03FB10 8003FF60 27380007 */  addiu       $t8, $t9, 0x7
/* 03FB14 8003FF64 0018C8C2 */  srl         $t9, $t8, 3
/* 03FB18 8003FF68 333801FF */  andi        $t8, $t9, 0x1ff
/* 03FB1C 8003FF6C 3C010008 */  lui         $at, 0x8
/* 03FB20 8003FF70 8FA402D4 */  lw          $a0, 0x2d4($sp)
/* 03FB24 8003FF74 01E17025 */  or          $t6, $t7, $at
/* 03FB28 8003FF78 0018CA40 */  sll         $t9, $t8, 9
/* 03FB2C 8003FF7C 8FA502B4 */  lw          $a1, 0x2b4($sp)
/* 03FB30 8003FF80 01D9C025 */  or          $t8, $t6, $t9
/* 03FB34 8003FF84 8FAA02B8 */  lw          $t2, 0x2b8($sp)
/* 03FB38 8003FF88 8FA602D0 */  lw          $a2, 0x2d0($sp)
/* 03FB3C 8003FF8C AFB8007C */  sw          $t8, 0x7c($sp)
/* 03FB40 8003FF90 308E0003 */  andi        $t6, $a0, 0x3
/* 03FB44 8003FF94 000E2480 */  sll         $a0, $t6, 18
/* 03FB48 8003FF98 30B8000F */  andi        $t8, $a1, 0xf
/* 03FB4C 8003FF9C 00182B80 */  sll         $a1, $t8, 14
/* 03FB50 8003FFA0 3C010700 */  lui         $at, 0x700
/* 03FB54 8003FFA4 314E000F */  andi        $t6, $t2, 0xf
/* 03FB58 8003FFA8 000E5100 */  sll         $t2, $t6, 4
/* 03FB5C 8003FFAC 0081C025 */  or          $t8, $a0, $at
/* 03FB60 8003FFB0 30D90003 */  andi        $t9, $a2, 0x3
/* 03FB64 8003FFB4 00193200 */  sll         $a2, $t9, 8
/* 03FB68 8003FFB8 03057025 */  or          $t6, $t8, $a1
/* 03FB6C 8003FFBC 01C6C825 */  or          $t9, $t6, $a2
/* 03FB70 8003FFC0 27E3FFFF */  addiu       $v1, $ra, -0x1
/* 03FB74 8003FFC4 000D5880 */  sll         $t3, $t5, 2
/* 03FB78 8003FFC8 31780FFF */  andi        $t8, $t3, 0xfff
/* 03FB7C 8003FFCC 00037040 */  sll         $t6, $v1, 1
/* 03FB80 8003FFD0 032A9025 */  or          $s2, $t9, $t2
/* 03FB84 8003FFD4 31D90FFF */  andi        $t9, $t6, 0xfff
/* 03FB88 8003FFD8 03005825 */  move        $t3, $t8
/* 03FB8C 8003FFDC 0019C300 */  sll         $t8, $t9, 12
/* 03FB90 8003FFE0 03017025 */  or          $t6, $t8, $at
/* 03FB94 8003FFE4 01CBC825 */  or          $t9, $t6, $t3
/* 03FB98 8003FFE8 24780001 */  addiu       $t8, $v1, 0x1
/* 03FB9C 8003FFEC 00187042 */  srl         $t6, $t8, 1
/* 03FBA0 8003FFF0 AFB9005C */  sw          $t9, 0x5c($sp)
/* 03FBA4 8003FFF4 25D90007 */  addiu       $t9, $t6, 0x7
/* 03FBA8 8003FFF8 0019C0C2 */  srl         $t8, $t9, 3
/* 03FBAC 8003FFFC 330E01FF */  andi        $t6, $t8, 0x1ff
/* 03FBB0 80040000 000ECA40 */  sll         $t9, $t6, 9
/* 03FBB4 80040004 01F9C025 */  or          $t8, $t7, $t9
/* 03FBB8 80040008 00857025 */  or          $t6, $a0, $a1
/* 03FBBC 8004000C AFAF0080 */  sw          $t7, 0x80($sp)
/* 03FBC0 80040010 01C67825 */  or          $t7, $t6, $a2
/* 03FBC4 80040014 01EAA025 */  or          $s4, $t7, $t2
/* 03FBC8 80040018 8FAF0274 */  lw          $t7, 0x274($sp)
/* 03FBCC 8004001C AFB80058 */  sw          $t8, 0x58($sp)
/* 03FBD0 80040020 0003C880 */  sll         $t9, $v1, 2
/* 03FBD4 80040024 448F4000 */  mtc1        $t7, $f8
/* 03FBD8 80040028 33380FFF */  andi        $t8, $t9, 0xfff
/* 03FBDC 8004002C 00187300 */  sll         $t6, $t8, 12
/* 03FBE0 80040030 01CB8025 */  or          $s0, $t6, $t3
/* 03FBE4 80040034 00006025 */  move        $t4, $zero
/* 03FBE8 80040038 05E10005 */  bgez        $t7, .L80040050
/* 03FBEC 8004003C 46804120 */   cvt.s.w    $f4, $f8
/* 03FBF0 80040040 3C014F80 */  lui         $at, 0x4f80
/* 03FBF4 80040044 44815000 */  mtc1        $at, $f10
/* 03FBF8 80040048 00000000 */  nop
/* 03FBFC 8004004C 460A2100 */  add.s       $f4, $f4, $f10
.L80040050:
/* 03FC00 80040050 8FB902D8 */  lw          $t9, 0x2d8($sp)
/* 03FC04 80040054 460C2182 */  mul.s       $f6, $f4, $f12
/* 03FC08 80040058 3C014F80 */  lui         $at, 0x4f80
/* 03FC0C 8004005C 44994000 */  mtc1        $t9, $f8
/* 03FC10 80040060 07210004 */  bgez        $t9, .L80040074
/* 03FC14 80040064 468042A0 */   cvt.s.w    $f10, $f8
/* 03FC18 80040068 44812000 */  mtc1        $at, $f4
/* 03FC1C 8004006C 00000000 */  nop
/* 03FC20 80040070 46045280 */  add.s       $f10, $f10, $f4
.L80040074:
/* 03FC24 80040074 8FB802C8 */  lw          $t8, 0x2c8($sp)
/* 03FC28 80040078 460A3202 */  mul.s       $f8, $f6, $f10
/* 03FC2C 8004007C 3C014F80 */  lui         $at, 0x4f80
/* 03FC30 80040080 44982000 */  mtc1        $t8, $f4
/* 03FC34 80040084 07010004 */  bgez        $t8, .L80040098
/* 03FC38 80040088 468021A0 */   cvt.s.w    $f6, $f4
/* 03FC3C 8004008C 44815000 */  mtc1        $at, $f10
/* 03FC40 80040090 00000000 */  nop
/* 03FC44 80040094 460A3180 */  add.s       $f6, $f6, $f10
.L80040098:
/* 03FC48 80040098 46083100 */  add.s       $f4, $f6, $f8
/* 03FC4C 8004009C 8FB602C8 */  lw          $s6, 0x2c8($sp)
/* 03FC50 800400A0 3C01E400 */  lui         $at, 0xe400
/* 03FC54 800400A4 3C1FF400 */  lui         $ra, 0xf400
/* 03FC58 800400A8 4600228D */  trunc.w.s   $f10, $f4
/* 03FC5C 800400AC 44155000 */  mfc1        $s5, $f10
/* 03FC60 800400B0 00000000 */  nop
/* 03FC64 800400B4 00157880 */  sll         $t7, $s5, 2
/* 03FC68 800400B8 31F90FFF */  andi        $t9, $t7, 0xfff
/* 03FC6C 800400BC 0019C300 */  sll         $t8, $t9, 12
/* 03FC70 800400C0 0301A825 */  or          $s5, $t8, $at
/* 03FC74 800400C4 00167880 */  sll         $t7, $s6, 2
/* 03FC78 800400C8 8FB802A8 */  lw          $t8, 0x2a8($sp)
/* 03FC7C 800400CC 31F90FFF */  andi        $t9, $t7, 0xfff
/* 03FC80 800400D0 8FAF02AC */  lw          $t7, 0x2ac($sp)
/* 03FC84 800400D4 0019B300 */  sll         $s6, $t9, 12
/* 03FC88 800400D8 330EFFFF */  andi        $t6, $t8, 0xffff
/* 03FC8C 800400DC 000FCC00 */  sll         $t9, $t7, 16
/* 03FC90 800400E0 032E9825 */  or          $s3, $t9, $t6
/* 03FC94 800400E4 8FAE028C */  lw          $t6, 0x28c($sp)
/* 03FC98 800400E8 8FB80290 */  lw          $t8, 0x290($sp)
/* 03FC9C 800400EC 31CFFFFF */  andi        $t7, $t6, 0xffff
/* 03FCA0 800400F0 0018CC00 */  sll         $t9, $t8, 16
/* 03FCA4 800400F4 032FB825 */  or          $s7, $t9, $t7
.L800400F8:
/* 03FCA8 800400F8 17C0001F */  bnez        $fp, .L80040178
/* 03FCAC 800400FC 00401825 */   move       $v1, $v0
/* 03FCB0 80040100 44872000 */  mtc1        $a3, $f4
/* 03FCB4 80040104 8FB802CC */  lw          $t8, 0x2cc($sp)
/* 03FCB8 80040108 3C014F80 */  lui         $at, 0x4f80
/* 03FCBC 8004010C 468022A0 */  cvt.s.w     $f10, $f4
/* 03FCC0 80040110 44983000 */  mtc1        $t8, $f6
/* 03FCC4 80040114 00000000 */  nop
/* 03FCC8 80040118 46803020 */  cvt.s.w     $f0, $f6
/* 03FCCC 8004011C 460E5182 */  mul.s       $f6, $f10, $f14
/* 03FCD0 80040120 07030005 */  bgezl       $t8, .L80040138
/* 03FCD4 80040124 44885000 */   mtc1       $t0, $f10
/* 03FCD8 80040128 44814000 */  mtc1        $at, $f8
/* 03FCDC 8004012C 00000000 */  nop
/* 03FCE0 80040130 46080000 */  add.s       $f0, $f0, $f8
/* 03FCE4 80040134 44885000 */  mtc1        $t0, $f10
.L80040138:
/* 03FCE8 80040138 46060200 */  add.s       $f8, $f0, $f6
/* 03FCEC 8004013C 468051A0 */  cvt.s.w     $f6, $f10
/* 03FCF0 80040140 4600410D */  trunc.w.s   $f4, $f8
/* 03FCF4 80040144 460E3202 */  mul.s       $f8, $f6, $f14
/* 03FCF8 80040148 440B2000 */  mfc1        $t3, $f4
/* 03FCFC 8004014C 00000000 */  nop
/* 03FD00 80040150 000BC880 */  sll         $t9, $t3, 2
/* 03FD04 80040154 46024102 */  mul.s       $f4, $f8, $f2
/* 03FD08 80040158 03205825 */  move        $t3, $t9
/* 03FD0C 8004015C 46040280 */  add.s       $f10, $f0, $f4
/* 03FD10 80040160 4600518D */  trunc.w.s   $f6, $f10
/* 03FD14 80040164 440A3000 */  mfc1        $t2, $f6
/* 03FD18 80040168 00000000 */  nop
/* 03FD1C 8004016C 000AC080 */  sll         $t8, $t2, 2
/* 03FD20 80040170 10000020 */  b           .L800401F4
/* 03FD24 80040174 03005025 */   move       $t2, $t8
.L80040178:
/* 03FD28 80040178 44885000 */  mtc1        $t0, $f10
/* 03FD2C 8004017C 8FAE02A4 */  lw          $t6, 0x2a4($sp)
/* 03FD30 80040180 8FB90270 */  lw          $t9, 0x270($sp)
/* 03FD34 80040184 468051A0 */  cvt.s.w     $f6, $f10
/* 03FD38 80040188 3C014F80 */  lui         $at, 0x4f80
/* 03FD3C 8004018C 01D97821 */  addu        $t7, $t6, $t9
/* 03FD40 80040190 448F4000 */  mtc1        $t7, $f8
/* 03FD44 80040194 00000000 */  nop
/* 03FD48 80040198 46804020 */  cvt.s.w     $f0, $f8
/* 03FD4C 8004019C 460E3202 */  mul.s       $f8, $f6, $f14
/* 03FD50 800401A0 05E30005 */  bgezl       $t7, .L800401B8
/* 03FD54 800401A4 44873000 */   mtc1       $a3, $f6
/* 03FD58 800401A8 44812000 */  mtc1        $at, $f4
/* 03FD5C 800401AC 00000000 */  nop
/* 03FD60 800401B0 46040000 */  add.s       $f0, $f0, $f4
/* 03FD64 800401B4 44873000 */  mtc1        $a3, $f6
.L800401B8:
/* 03FD68 800401B8 46080101 */  sub.s       $f4, $f0, $f8
/* 03FD6C 800401BC 46803220 */  cvt.s.w     $f8, $f6
/* 03FD70 800401C0 4600228D */  trunc.w.s   $f10, $f4
/* 03FD74 800401C4 460E4102 */  mul.s       $f4, $f8, $f14
/* 03FD78 800401C8 440B5000 */  mfc1        $t3, $f10
/* 03FD7C 800401CC 00000000 */  nop
/* 03FD80 800401D0 000B7080 */  sll         $t6, $t3, 2
/* 03FD84 800401D4 46022282 */  mul.s       $f10, $f4, $f2
/* 03FD88 800401D8 01C05825 */  move        $t3, $t6
/* 03FD8C 800401DC 460A0181 */  sub.s       $f6, $f0, $f10
/* 03FD90 800401E0 4600320D */  trunc.w.s   $f8, $f6
/* 03FD94 800401E4 440A4000 */  mfc1        $t2, $f8
/* 03FD98 800401E8 00000000 */  nop
/* 03FD9C 800401EC 000A7880 */  sll         $t7, $t2, 2
/* 03FDA0 800401F0 01E05025 */  move        $t2, $t7
.L800401F4:
/* 03FDA4 800401F4 018D0019 */  multu       $t4, $t5
/* 03FDA8 800401F8 8FB80088 */  lw          $t8, 0x88($sp)
/* 03FDAC 800401FC 24420008 */  addiu       $v0, $v0, 0x8
/* 03FDB0 80040200 00402025 */  move        $a0, $v0
/* 03FDB4 80040204 AC780000 */  sw          $t8, 0x0($v1)
/* 03FDB8 80040208 8FAE0284 */  lw          $t6, 0x284($sp)
/* 03FDBC 8004020C 24420008 */  addiu       $v0, $v0, 0x8
/* 03FDC0 80040210 00ED3821 */  addu        $a3, $a3, $t5
/* 03FDC4 80040214 00F1082B */  sltu        $at, $a3, $s1
/* 03FDC8 80040218 010D4021 */  addu        $t0, $t0, $t5
/* 03FDCC 8004021C 0000C812 */  mflo        $t9
/* 03FDD0 80040220 00197842 */  srl         $t7, $t9, 1
/* 03FDD4 80040224 01CFC021 */  addu        $t8, $t6, $t7
/* 03FDD8 80040228 AC780004 */  sw          $t8, 0x4($v1)
/* 03FDDC 8004022C 8FB9007C */  lw          $t9, 0x7c($sp)
/* 03FDE0 80040230 AC920004 */  sw          $s2, 0x4($a0)
/* 03FDE4 80040234 00401825 */  move        $v1, $v0
/* 03FDE8 80040238 AC990000 */  sw          $t9, 0x0($a0)
/* 03FDEC 8004023C 24420008 */  addiu       $v0, $v0, 0x8
/* 03FDF0 80040240 3C0EE600 */  lui         $t6, 0xe600
/* 03FDF4 80040244 AC6E0000 */  sw          $t6, 0x0($v1)
/* 03FDF8 80040248 00402025 */  move        $a0, $v0
/* 03FDFC 8004024C AC600004 */  sw          $zero, 0x4($v1)
/* 03FE00 80040250 AC9F0000 */  sw          $ra, 0x0($a0)
/* 03FE04 80040254 8FAF005C */  lw          $t7, 0x5c($sp)
/* 03FE08 80040258 24420008 */  addiu       $v0, $v0, 0x8
/* 03FE0C 8004025C 00402825 */  move        $a1, $v0
/* 03FE10 80040260 AC8F0004 */  sw          $t7, 0x4($a0)
/* 03FE14 80040264 3C18E700 */  lui         $t8, 0xe700
/* 03FE18 80040268 ACB80000 */  sw          $t8, 0x0($a1)
/* 03FE1C 8004026C ACA00004 */  sw          $zero, 0x4($a1)
/* 03FE20 80040270 24420008 */  addiu       $v0, $v0, 0x8
/* 03FE24 80040274 8FB90058 */  lw          $t9, 0x58($sp)
/* 03FE28 80040278 00403025 */  move        $a2, $v0
/* 03FE2C 8004027C 24420008 */  addiu       $v0, $v0, 0x8
/* 03FE30 80040280 00401825 */  move        $v1, $v0
/* 03FE34 80040284 ACD40004 */  sw          $s4, 0x4($a2)
/* 03FE38 80040288 3C0EF200 */  lui         $t6, 0xf200
/* 03FE3C 8004028C ACD90000 */  sw          $t9, 0x0($a2)
/* 03FE40 80040290 AC6E0000 */  sw          $t6, 0x0($v1)
/* 03FE44 80040294 24420008 */  addiu       $v0, $v0, 0x8
/* 03FE48 80040298 AC700004 */  sw          $s0, 0x4($v1)
/* 03FE4C 8004029C 00402025 */  move        $a0, $v0
/* 03FE50 800402A0 314F0FFF */  andi        $t7, $t2, 0xfff
/* 03FE54 800402A4 02AFC025 */  or          $t8, $s5, $t7
/* 03FE58 800402A8 24420008 */  addiu       $v0, $v0, 0x8
/* 03FE5C 800402AC 31790FFF */  andi        $t9, $t3, 0xfff
/* 03FE60 800402B0 02D97025 */  or          $t6, $s6, $t9
/* 03FE64 800402B4 00402825 */  move        $a1, $v0
/* 03FE68 800402B8 AC980000 */  sw          $t8, 0x0($a0)
/* 03FE6C 800402BC AC8E0004 */  sw          $t6, 0x4($a0)
/* 03FE70 800402C0 24420008 */  addiu       $v0, $v0, 0x8
/* 03FE74 800402C4 3C0FE100 */  lui         $t7, 0xe100
/* 03FE78 800402C8 ACAF0000 */  sw          $t7, 0x0($a1)
/* 03FE7C 800402CC 00401825 */  move        $v1, $v0
/* 03FE80 800402D0 ACB30004 */  sw          $s3, 0x4($a1)
/* 03FE84 800402D4 3C18F100 */  lui         $t8, 0xf100
/* 03FE88 800402D8 AC780000 */  sw          $t8, 0x0($v1)
/* 03FE8C 800402DC AC770004 */  sw          $s7, 0x4($v1)
/* 03FE90 800402E0 8FB9026C */  lw          $t9, 0x26c($sp)
/* 03FE94 800402E4 01205825 */  move        $t3, $t1
/* 03FE98 800402E8 25290001 */  addiu       $t1, $t1, 0x1
/* 03FE9C 800402EC 24420008 */  addiu       $v0, $v0, 0x8
/* 03FEA0 800402F0 1420FF81 */  bnez        $at, .L800400F8
/* 03FEA4 800402F4 01996021 */   addu       $t4, $t4, $t9
.L800402F8:
/* 03FEA8 800402F8 016D0019 */  multu       $t3, $t5
/* 03FEAC 800402FC 8FB1027C */  lw          $s1, 0x27c($sp)
/* 03FEB0 80040300 8FAE02DC */  lw          $t6, 0x2dc($sp)
/* 03FEB4 80040304 8FB0026C */  lw          $s0, 0x26c($sp)
/* 03FEB8 80040308 322F0007 */  andi        $t7, $s1, 0x7
/* 03FEBC 8004030C 448E2000 */  mtc1        $t6, $f4
/* 03FEC0 80040310 000F8D40 */  sll         $s1, $t7, 21
/* 03FEC4 80040314 00107842 */  srl         $t7, $s0, 1
/* 03FEC8 80040318 3C1FF400 */  lui         $ra, 0xf400
/* 03FECC 8004031C 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 03FED0 80040320 00003812 */  mflo        $a3
/* 03FED4 80040324 2603FFFF */  addiu       $v1, $s0, -0x1
/* 03FED8 80040328 05C10005 */  bgez        $t6, .L80040340
/* 03FEDC 8004032C 468020A0 */   cvt.s.w    $f2, $f4
/* 03FEE0 80040330 3C014F80 */  lui         $at, 0x4f80
/* 03FEE4 80040334 44815000 */  mtc1        $at, $f10
/* 03FEE8 80040338 00000000 */  nop
/* 03FEEC 8004033C 460A1080 */  add.s       $f2, $f2, $f10
.L80040340:
/* 03FEF0 80040340 3C01FD00 */  lui         $at, 0xfd00
/* 03FEF4 80040344 0221C825 */  or          $t9, $s1, $at
/* 03FEF8 80040348 3C010008 */  lui         $at, 0x8
/* 03FEFC 8004034C 03217025 */  or          $t6, $t9, $at
/* 03FF00 80040350 33190FFF */  andi        $t9, $t8, 0xfff
/* 03FF04 80040354 01D97825 */  or          $t7, $t6, $t9
/* 03FF08 80040358 00107042 */  srl         $t6, $s0, 1
/* 03FF0C 8004035C 25D90007 */  addiu       $t9, $t6, 0x7
/* 03FF10 80040360 AFAF0088 */  sw          $t7, 0x88($sp)
/* 03FF14 80040364 8FA402D4 */  lw          $a0, 0x2d4($sp)
/* 03FF18 80040368 001978C2 */  srl         $t7, $t9, 3
/* 03FF1C 8004036C 3C01F500 */  lui         $at, 0xf500
/* 03FF20 80040370 02219825 */  or          $s3, $s1, $at
/* 03FF24 80040374 31EE01FF */  andi        $t6, $t7, 0x1ff
/* 03FF28 80040378 8FA502B4 */  lw          $a1, 0x2b4($sp)
/* 03FF2C 8004037C 8FA602D0 */  lw          $a2, 0x2d0($sp)
/* 03FF30 80040380 000ECA40 */  sll         $t9, $t6, 9
/* 03FF34 80040384 3C010008 */  lui         $at, 0x8
/* 03FF38 80040388 0261C025 */  or          $t8, $s3, $at
/* 03FF3C 8004038C 308E0003 */  andi        $t6, $a0, 0x3
/* 03FF40 80040390 8FAA02B8 */  lw          $t2, 0x2b8($sp)
/* 03FF44 80040394 000E2480 */  sll         $a0, $t6, 18
/* 03FF48 80040398 03197825 */  or          $t7, $t8, $t9
/* 03FF4C 8004039C 30B9000F */  andi        $t9, $a1, 0xf
/* 03FF50 800403A0 30CE0003 */  andi        $t6, $a2, 0x3
/* 03FF54 800403A4 000E3200 */  sll         $a2, $t6, 8
/* 03FF58 800403A8 00192B80 */  sll         $a1, $t9, 14
/* 03FF5C 800403AC 3C010700 */  lui         $at, 0x700
/* 03FF60 800403B0 00817025 */  or          $t6, $a0, $at
/* 03FF64 800403B4 3159000F */  andi        $t9, $t2, 0xf
/* 03FF68 800403B8 00195100 */  sll         $t2, $t9, 4
/* 03FF6C 800403BC 01C5C025 */  or          $t8, $t6, $a1
/* 03FF70 800403C0 AFAF007C */  sw          $t7, 0x7c($sp)
/* 03FF74 800403C4 00037840 */  sll         $t7, $v1, 1
/* 03FF78 800403C8 0306C825 */  or          $t9, $t8, $a2
/* 03FF7C 800403CC 31EE0FFF */  andi        $t6, $t7, 0xfff
/* 03FF80 800403D0 000EC300 */  sll         $t8, $t6, 12
/* 03FF84 800403D4 032A9025 */  or          $s2, $t9, $t2
/* 03FF88 800403D8 0301C825 */  or          $t9, $t8, $at
/* 03FF8C 800403DC 246F0001 */  addiu       $t7, $v1, 0x1
/* 03FF90 800403E0 000F7042 */  srl         $t6, $t7, 1
/* 03FF94 800403E4 25D80007 */  addiu       $t8, $t6, 0x7
/* 03FF98 800403E8 AFB900A0 */  sw          $t9, 0xa0($sp)
/* 03FF9C 800403EC 020B0019 */  multu       $s0, $t3
/* 03FFA0 800403F0 0018C8C2 */  srl         $t9, $t8, 3
/* 03FFA4 800403F4 332F01FF */  andi        $t7, $t9, 0x1ff
/* 03FFA8 800403F8 000F7240 */  sll         $t6, $t7, 9
/* 03FFAC 800403FC 0085C825 */  or          $t9, $a0, $a1
/* 03FFB0 80040400 03267825 */  or          $t7, $t9, $a2
/* 03FFB4 80040404 01EAA025 */  or          $s4, $t7, $t2
/* 03FFB8 80040408 8FAF0274 */  lw          $t7, 0x274($sp)
/* 03FFBC 8004040C 026EC025 */  or          $t8, $s3, $t6
/* 03FFC0 80040410 AFB80058 */  sw          $t8, 0x58($sp)
/* 03FFC4 80040414 00037080 */  sll         $t6, $v1, 2
/* 03FFC8 80040418 448F3000 */  mtc1        $t7, $f6
/* 03FFCC 8004041C 31D80FFF */  andi        $t8, $t6, 0xfff
/* 03FFD0 80040420 0018CB00 */  sll         $t9, $t8, 12
/* 03FFD4 80040424 00006012 */  mflo        $t4
/* 03FFD8 80040428 AFB9005C */  sw          $t9, 0x5c($sp)
/* 03FFDC 8004042C 05E10005 */  bgez        $t7, .L80040444
/* 03FFE0 80040430 46803220 */   cvt.s.w    $f8, $f6
/* 03FFE4 80040434 3C014F80 */  lui         $at, 0x4f80
/* 03FFE8 80040438 44812000 */  mtc1        $at, $f4
/* 03FFEC 8004043C 00000000 */  nop
/* 03FFF0 80040440 46044200 */  add.s       $f8, $f8, $f4
.L80040444:
/* 03FFF4 80040444 8FAE02D8 */  lw          $t6, 0x2d8($sp)
/* 03FFF8 80040448 460C4282 */  mul.s       $f10, $f8, $f12
/* 03FFFC 8004044C 3C014F80 */  lui         $at, 0x4f80
/* 040000 80040450 448E3000 */  mtc1        $t6, $f6
/* 040004 80040454 8FA30270 */  lw          $v1, 0x270($sp)
/* 040008 80040458 8FAB02CC */  lw          $t3, 0x2cc($sp)
/* 04000C 8004045C 05C10004 */  bgez        $t6, .L80040470
/* 040010 80040460 46803120 */   cvt.s.w    $f4, $f6
/* 040014 80040464 44814000 */  mtc1        $at, $f8
/* 040018 80040468 00000000 */  nop
/* 04001C 8004046C 46082100 */  add.s       $f4, $f4, $f8
.L80040470:
/* 040020 80040470 8FB802C8 */  lw          $t8, 0x2c8($sp)
/* 040024 80040474 46045182 */  mul.s       $f6, $f10, $f4
/* 040028 80040478 3C014F80 */  lui         $at, 0x4f80
/* 04002C 8004047C 44984000 */  mtc1        $t8, $f8
/* 040030 80040480 07010004 */  bgez        $t8, .L80040494
/* 040034 80040484 468042A0 */   cvt.s.w    $f10, $f8
/* 040038 80040488 44812000 */  mtc1        $at, $f4
/* 04003C 8004048C 00000000 */  nop
/* 040040 80040490 46045280 */  add.s       $f10, $f10, $f4
.L80040494:
/* 040044 80040494 46065200 */  add.s       $f8, $f10, $f6
/* 040048 80040498 8FB602C8 */  lw          $s6, 0x2c8($sp)
/* 04004C 8004049C 3C01E400 */  lui         $at, 0xe400
/* 040050 800404A0 8FB902AC */  lw          $t9, 0x2ac($sp)
/* 040054 800404A4 4600410D */  trunc.w.s   $f4, $f8
/* 040058 800404A8 00E04825 */  move        $t1, $a3
/* 04005C 800404AC 00194400 */  sll         $t0, $t9, 16
/* 040060 800404B0 44152000 */  mfc1        $s5, $f4
/* 040064 800404B4 00000000 */  nop
/* 040068 800404B8 00157880 */  sll         $t7, $s5, 2
/* 04006C 800404BC 31EE0FFF */  andi        $t6, $t7, 0xfff
/* 040070 800404C0 000EC300 */  sll         $t8, $t6, 12
/* 040074 800404C4 00167880 */  sll         $t7, $s6, 2
/* 040078 800404C8 31EE0FFF */  andi        $t6, $t7, 0xfff
/* 04007C 800404CC 0301A825 */  or          $s5, $t8, $at
/* 040080 800404D0 8FB80290 */  lw          $t8, 0x290($sp)
/* 040084 800404D4 8FAF028C */  lw          $t7, 0x28c($sp)
/* 040088 800404D8 000EB300 */  sll         $s6, $t6, 12
/* 04008C 800404DC 0018CC00 */  sll         $t9, $t8, 16
/* 040090 800404E0 31EEFFFF */  andi        $t6, $t7, 0xffff
/* 040094 800404E4 17C00028 */  bnez        $fp, .L80040588
/* 040098 800404E8 032EB825 */   or         $s7, $t9, $t6
/* 04009C 800404EC 44874000 */  mtc1        $a3, $f8
/* 0400A0 800404F0 8FB802CC */  lw          $t8, 0x2cc($sp)
/* 0400A4 800404F4 8FA30270 */  lw          $v1, 0x270($sp)
/* 0400A8 800404F8 46804120 */  cvt.s.w     $f4, $f8
/* 0400AC 800404FC 44985000 */  mtc1        $t8, $f10
/* 0400B0 80040500 3C014F80 */  lui         $at, 0x4f80
/* 0400B4 80040504 46805020 */  cvt.s.w     $f0, $f10
/* 0400B8 80040508 460E2282 */  mul.s       $f10, $f4, $f14
/* 0400BC 8004050C 07030005 */  bgezl       $t8, .L80040524
/* 0400C0 80040510 460A0180 */   add.s      $f6, $f0, $f10
/* 0400C4 80040514 44813000 */  mtc1        $at, $f6
/* 0400C8 80040518 00000000 */  nop
/* 0400CC 8004051C 46060000 */  add.s       $f0, $f0, $f6
/* 0400D0 80040520 460A0180 */  add.s       $f6, $f0, $f10
.L80040524:
/* 0400D4 80040524 44832000 */  mtc1        $v1, $f4
/* 0400D8 80040528 3C014F80 */  lui         $at, 0x4f80
/* 0400DC 8004052C 4600320D */  trunc.w.s   $f8, $f6
/* 0400E0 80040530 468022A0 */  cvt.s.w     $f10, $f4
/* 0400E4 80040534 440B4000 */  mfc1        $t3, $f8
/* 0400E8 80040538 00000000 */  nop
/* 0400EC 8004053C 000BC880 */  sll         $t9, $t3, 2
/* 0400F0 80040540 04610004 */  bgez        $v1, .L80040554
/* 0400F4 80040544 03205825 */   move       $t3, $t9
/* 0400F8 80040548 44813000 */  mtc1        $at, $f6
/* 0400FC 8004054C 00000000 */  nop
/* 040100 80040550 46065280 */  add.s       $f10, $f10, $f6
.L80040554:
/* 040104 80040554 460E5202 */  mul.s       $f8, $f10, $f14
/* 040108 80040558 8FAF02A8 */  lw          $t7, 0x2a8($sp)
/* 04010C 8004055C 00692023 */  subu        $a0, $v1, $t1
/* 040110 80040560 31F9FFFF */  andi        $t9, $t7, 0xffff
/* 040114 80040564 01199825 */  or          $s3, $t0, $t9
/* 040118 80040568 46024102 */  mul.s       $f4, $f8, $f2
/* 04011C 8004056C 46040180 */  add.s       $f6, $f0, $f4
/* 040120 80040570 4600328D */  trunc.w.s   $f10, $f6
/* 040124 80040574 440A5000 */  mfc1        $t2, $f10
/* 040128 80040578 00000000 */  nop
/* 04012C 8004057C 000AC080 */  sll         $t8, $t2, 2
/* 040130 80040580 1000001B */  b           .L800405F0
/* 040134 80040584 03005025 */   move       $t2, $t8
.L80040588:
/* 040138 80040588 8FB802A4 */  lw          $t8, 0x2a4($sp)
/* 04013C 8004058C 000B7080 */  sll         $t6, $t3, 2
/* 040140 80040590 44875000 */  mtc1        $a3, $f10
/* 040144 80040594 03037821 */  addu        $t7, $t8, $v1
/* 040148 80040598 448F4000 */  mtc1        $t7, $f8
/* 04014C 8004059C 01C05825 */  move        $t3, $t6
/* 040150 800405A0 05E10005 */  bgez        $t7, .L800405B8
/* 040154 800405A4 46804120 */   cvt.s.w    $f4, $f8
/* 040158 800405A8 3C014F80 */  lui         $at, 0x4f80
/* 04015C 800405AC 44813000 */  mtc1        $at, $f6
/* 040160 800405B0 00000000 */  nop
/* 040164 800405B4 46062100 */  add.s       $f4, $f4, $f6
.L800405B8:
/* 040168 800405B8 46805220 */  cvt.s.w     $f8, $f10
/* 04016C 800405BC 00692023 */  subu        $a0, $v1, $t1
/* 040170 800405C0 00042940 */  sll         $a1, $a0, 5
/* 040174 800405C4 30B8FFFF */  andi        $t8, $a1, 0xffff
/* 040178 800405C8 01189825 */  or          $s3, $t0, $t8
/* 04017C 800405CC 460E4182 */  mul.s       $f6, $f8, $f14
/* 040180 800405D0 00000000 */  nop
/* 040184 800405D4 46023282 */  mul.s       $f10, $f6, $f2
/* 040188 800405D8 460A2201 */  sub.s       $f8, $f4, $f10
/* 04018C 800405DC 4600418D */  trunc.w.s   $f6, $f8
/* 040190 800405E0 440A3000 */  mfc1        $t2, $f6
/* 040194 800405E4 00000000 */  nop
/* 040198 800405E8 000A7080 */  sll         $t6, $t2, 2
/* 04019C 800405EC 01C05025 */  move        $t2, $t6
.L800405F0:
/* 0401A0 800405F0 018D0019 */  multu       $t4, $t5
/* 0401A4 800405F4 8FAF0088 */  lw          $t7, 0x88($sp)
/* 0401A8 800405F8 00401825 */  move        $v1, $v0
/* 0401AC 800405FC 24420008 */  addiu       $v0, $v0, 0x8
/* 0401B0 80040600 AC6F0000 */  sw          $t7, 0x0($v1)
/* 0401B4 80040604 8FB90284 */  lw          $t9, 0x284($sp)
/* 0401B8 80040608 00402825 */  move        $a1, $v0
/* 0401BC 8004060C 24420008 */  addiu       $v0, $v0, 0x8
/* 0401C0 80040610 00007012 */  mflo        $t6
/* 0401C4 80040614 000EC042 */  srl         $t8, $t6, 1
/* 0401C8 80040618 03387821 */  addu        $t7, $t9, $t8
/* 0401CC 8004061C AC6F0004 */  sw          $t7, 0x4($v1)
/* 0401D0 80040620 8FAE007C */  lw          $t6, 0x7c($sp)
/* 0401D4 80040624 ACB20004 */  sw          $s2, 0x4($a1)
/* 0401D8 80040628 3C19E600 */  lui         $t9, 0xe600
/* 0401DC 8004062C ACAE0000 */  sw          $t6, 0x0($a1)
/* 0401E0 80040630 00402825 */  move        $a1, $v0
/* 0401E4 80040634 24420008 */  addiu       $v0, $v0, 0x8
/* 0401E8 80040638 00403025 */  move        $a2, $v0
/* 0401EC 8004063C ACB90000 */  sw          $t9, 0x0($a1)
/* 0401F0 80040640 ACA00004 */  sw          $zero, 0x4($a1)
/* 0401F4 80040644 ACDF0000 */  sw          $ra, 0x0($a2)
/* 0401F8 80040648 8FAE00A0 */  lw          $t6, 0xa0($sp)
/* 0401FC 8004064C 2483FFFF */  addiu       $v1, $a0, -0x1
/* 040200 80040650 0003C080 */  sll         $t8, $v1, 2
/* 040204 80040654 33030FFF */  andi        $v1, $t8, 0xfff
/* 040208 80040658 24420008 */  addiu       $v0, $v0, 0x8
/* 04020C 8004065C 00403825 */  move        $a3, $v0
/* 040210 80040660 01C3C825 */  or          $t9, $t6, $v1
/* 040214 80040664 ACD90004 */  sw          $t9, 0x4($a2)
/* 040218 80040668 3C18E700 */  lui         $t8, 0xe700
/* 04021C 8004066C ACF80000 */  sw          $t8, 0x0($a3)
/* 040220 80040670 ACE00004 */  sw          $zero, 0x4($a3)
/* 040224 80040674 24420008 */  addiu       $v0, $v0, 0x8
/* 040228 80040678 8FAF0058 */  lw          $t7, 0x58($sp)
/* 04022C 8004067C 00404025 */  move        $t0, $v0
/* 040230 80040680 24420008 */  addiu       $v0, $v0, 0x8
/* 040234 80040684 00402025 */  move        $a0, $v0
/* 040238 80040688 AD140004 */  sw          $s4, 0x4($t0)
/* 04023C 8004068C 3C0EF200 */  lui         $t6, 0xf200
/* 040240 80040690 AD0F0000 */  sw          $t7, 0x0($t0)
/* 040244 80040694 AC8E0000 */  sw          $t6, 0x0($a0)
/* 040248 80040698 8FB9005C */  lw          $t9, 0x5c($sp)
/* 04024C 8004069C 24420008 */  addiu       $v0, $v0, 0x8
/* 040250 800406A0 00402825 */  move        $a1, $v0
/* 040254 800406A4 0323C025 */  or          $t8, $t9, $v1
/* 040258 800406A8 AC980004 */  sw          $t8, 0x4($a0)
/* 04025C 800406AC 314F0FFF */  andi        $t7, $t2, 0xfff
/* 040260 800406B0 02AF7025 */  or          $t6, $s5, $t7
/* 040264 800406B4 31790FFF */  andi        $t9, $t3, 0xfff
/* 040268 800406B8 24420008 */  addiu       $v0, $v0, 0x8
/* 04026C 800406BC 00401825 */  move        $v1, $v0
/* 040270 800406C0 02D9C025 */  or          $t8, $s6, $t9
/* 040274 800406C4 ACAE0000 */  sw          $t6, 0x0($a1)
/* 040278 800406C8 ACB80004 */  sw          $t8, 0x4($a1)
/* 04027C 800406CC 24420008 */  addiu       $v0, $v0, 0x8
/* 040280 800406D0 00402025 */  move        $a0, $v0
/* 040284 800406D4 3C0FE100 */  lui         $t7, 0xe100
/* 040288 800406D8 AC6F0000 */  sw          $t7, 0x0($v1)
/* 04028C 800406DC AC730004 */  sw          $s3, 0x4($v1)
/* 040290 800406E0 3C0EF100 */  lui         $t6, 0xf100
/* 040294 800406E4 AC8E0000 */  sw          $t6, 0x0($a0)
/* 040298 800406E8 AC970004 */  sw          $s7, 0x4($a0)
/* 04029C 800406EC 100006E1 */  b           .L80042274
/* 0402A0 800406F0 24420008 */   addiu      $v0, $v0, 0x8
.L800406F4:
/* 0402A4 800406F4 8FA8027C */  lw          $t0, 0x27c($sp)
/* 0402A8 800406F8 24090002 */  addiu       $t1, $zero, 0x2
/* 0402AC 800406FC 00005825 */  move        $t3, $zero
/* 0402B0 80040700 11090009 */  beq         $t0, $t1, .L80040728
/* 0402B4 80040704 00401825 */   move       $v1, $v0
/* 0402B8 80040708 24010003 */  addiu       $at, $zero, 0x3
/* 0402BC 8004070C 1101003E */  beq         $t0, $at, .L80040808
/* 0402C0 80040710 00401825 */   move       $v1, $v0
/* 0402C4 80040714 24010004 */  addiu       $at, $zero, 0x4
/* 0402C8 80040718 5101003C */  beql        $t0, $at, .L8004080C
/* 0402CC 8004071C 3C19E300 */   lui        $t9, 0xe300
/* 0402D0 80040720 1000004C */  b           .L80040854
/* 0402D4 80040724 8FAD02B0 */   lw         $t5, 0x2b0($sp)
.L80040728:
/* 0402D8 80040728 24420008 */  addiu       $v0, $v0, 0x8
/* 0402DC 8004072C 3C19FD10 */  lui         $t9, 0xfd10
/* 0402E0 80040730 AC790000 */  sw          $t9, 0x0($v1)
/* 0402E4 80040734 00402025 */  move        $a0, $v0
/* 0402E8 80040738 24420008 */  addiu       $v0, $v0, 0x8
/* 0402EC 8004073C AC6C0004 */  sw          $t4, 0x4($v1)
/* 0402F0 80040740 3C18E800 */  lui         $t8, 0xe800
/* 0402F4 80040744 AC980000 */  sw          $t8, 0x0($a0)
/* 0402F8 80040748 00402825 */  move        $a1, $v0
/* 0402FC 8004074C AC800004 */  sw          $zero, 0x4($a0)
/* 040300 80040750 3C0FF500 */  lui         $t7, 0xf500
/* 040304 80040754 35EF0100 */  ori         $t7, $t7, 0x100
/* 040308 80040758 24420008 */  addiu       $v0, $v0, 0x8
/* 04030C 8004075C 3C0E0700 */  lui         $t6, 0x700
/* 040310 80040760 ACAE0004 */  sw          $t6, 0x4($a1)
/* 040314 80040764 00403025 */  move        $a2, $v0
/* 040318 80040768 ACAF0000 */  sw          $t7, 0x0($a1)
/* 04031C 8004076C 24420008 */  addiu       $v0, $v0, 0x8
/* 040320 80040770 3C19E600 */  lui         $t9, 0xe600
/* 040324 80040774 ACD90000 */  sw          $t9, 0x0($a2)
/* 040328 80040778 00403825 */  move        $a3, $v0
/* 04032C 8004077C ACC00004 */  sw          $zero, 0x4($a2)
/* 040330 80040780 3C18F000 */  lui         $t8, 0xf000
/* 040334 80040784 ACF80000 */  sw          $t8, 0x0($a3)
/* 040338 80040788 24420008 */  addiu       $v0, $v0, 0x8
/* 04033C 8004078C 3C0F073F */  lui         $t7, 0x73f
/* 040340 80040790 8FA60270 */  lw          $a2, 0x270($sp)
/* 040344 80040794 35EFC000 */  ori         $t7, $t7, 0xc000
/* 040348 80040798 00401825 */  move        $v1, $v0
/* 04034C 8004079C ACEF0004 */  sw          $t7, 0x4($a3)
/* 040350 800407A0 24420008 */  addiu       $v0, $v0, 0x8
/* 040354 800407A4 3C0EE700 */  lui         $t6, 0xe700
/* 040358 800407A8 AC6E0000 */  sw          $t6, 0x0($v1)
/* 04035C 800407AC AC600004 */  sw          $zero, 0x4($v1)
/* 040360 800407B0 00402025 */  move        $a0, $v0
/* 040364 800407B4 3C19E300 */  lui         $t9, 0xe300
/* 040368 800407B8 37391001 */  ori         $t9, $t9, 0x1001
/* 04036C 800407BC 34188000 */  ori         $t8, $zero, 0x8000
/* 040370 800407C0 AC980004 */  sw          $t8, 0x4($a0)
/* 040374 800407C4 AC990000 */  sw          $t9, 0x0($a0)
/* 040378 800407C8 8FAF026C */  lw          $t7, 0x26c($sp)
/* 04037C 800407CC 240E0800 */  addiu       $t6, $zero, 0x800
/* 040380 800407D0 24420008 */  addiu       $v0, $v0, 0x8
/* 040384 800407D4 01CF001B */  divu        $zero, $t6, $t7
/* 040388 800407D8 00002812 */  mflo        $a1
/* 04038C 800407DC 00A6082B */  sltu        $at, $a1, $a2
/* 040390 800407E0 15E00002 */  bnez        $t7, .L800407EC
/* 040394 800407E4 00000000 */   nop
/* 040398 800407E8 0007000D */  break       7
.L800407EC:
/* 04039C 800407EC 00C06825 */  move        $t5, $a2
/* 0403A0 800407F0 10200003 */  beqz        $at, .L80040800
/* 0403A4 800407F4 00000000 */   nop
/* 0403A8 800407F8 10000001 */  b           .L80040800
/* 0403AC 800407FC 00A06825 */   move       $t5, $a1
.L80040800:
/* 0403B0 80040800 10000015 */  b           .L80040858
/* 0403B4 80040804 8FB902E8 */   lw         $t9, 0x2e8($sp)
.L80040808:
/* 0403B8 80040808 3C19E300 */  lui         $t9, 0xe300
.L8004080C:
/* 0403BC 8004080C 37391001 */  ori         $t9, $t9, 0x1001
/* 0403C0 80040810 AC790000 */  sw          $t9, 0x0($v1)
/* 0403C4 80040814 AC600004 */  sw          $zero, 0x4($v1)
/* 0403C8 80040818 8FB8026C */  lw          $t8, 0x26c($sp)
/* 0403CC 8004081C 240E1000 */  addiu       $t6, $zero, 0x1000
/* 0403D0 80040820 8FAF0270 */  lw          $t7, 0x270($sp)
/* 0403D4 80040824 01D8001B */  divu        $zero, $t6, $t8
/* 0403D8 80040828 00002812 */  mflo        $a1
/* 0403DC 8004082C 00AF082B */  sltu        $at, $a1, $t7
/* 0403E0 80040830 24420008 */  addiu       $v0, $v0, 0x8
/* 0403E4 80040834 17000002 */  bnez        $t8, .L80040840
/* 0403E8 80040838 00000000 */   nop
/* 0403EC 8004083C 0007000D */  break       7
.L80040840:
/* 0403F0 80040840 8FAD0270 */  lw          $t5, 0x270($sp)
/* 0403F4 80040844 10200003 */  beqz        $at, .L80040854
/* 0403F8 80040848 00000000 */   nop
/* 0403FC 8004084C 10000001 */  b           .L80040854
/* 040400 80040850 00A06825 */   move       $t5, $a1
.L80040854:
/* 040404 80040854 8FB902E8 */  lw          $t9, 0x2e8($sp)
.L80040858:
/* 040408 80040858 8FAE0274 */  lw          $t6, 0x274($sp)
/* 04040C 8004085C 25ADFFFF */  addiu       $t5, $t5, -0x1
/* 040410 80040860 13200004 */  beqz        $t9, .L80040874
/* 040414 80040864 000EC140 */   sll        $t8, $t6, 5
/* 040418 80040868 00107823 */  negu        $t7, $s0
/* 04041C 8004086C AFB802AC */  sw          $t8, 0x2ac($sp)
/* 040420 80040870 AFAF0290 */  sw          $t7, 0x290($sp)
.L80040874:
/* 040424 80040874 8FBE02EC */  lw          $fp, 0x2ec($sp)
/* 040428 80040878 3C013FF0 */  lui         $at, 0x3ff0
/* 04042C 8004087C 8FB90270 */  lw          $t9, 0x270($sp)
/* 040430 80040880 13C00019 */  beqz        $fp, .L800408E8
/* 040434 80040884 24090001 */   addiu      $t1, $zero, 0x1
/* 040438 80040888 44815800 */  mtc1        $at, $f11
/* 04043C 8004088C 44805000 */  mtc1        $zero, $f10
/* 040440 80040890 46007121 */  cvt.d.s     $f4, $f14
/* 040444 80040894 44993000 */  mtc1        $t9, $f6
/* 040448 80040898 462A2201 */  sub.d       $f8, $f4, $f10
/* 04044C 8004089C 3C014F80 */  lui         $at, 0x4f80
/* 040450 800408A0 07210004 */  bgez        $t9, .L800408B4
/* 040454 800408A4 46803120 */   cvt.s.w    $f4, $f6
/* 040458 800408A8 44815000 */  mtc1        $at, $f10
/* 04045C 800408AC 00000000 */  nop
/* 040460 800408B0 460A2100 */  add.s       $f4, $f4, $f10
.L800408B4:
/* 040464 800408B4 460021A1 */  cvt.d.s     $f6, $f4
/* 040468 800408B8 8FAF02CC */  lw          $t7, 0x2cc($sp)
/* 04046C 800408BC 46264282 */  mul.d       $f10, $f8, $f6
/* 040470 800408C0 000D7140 */  sll         $t6, $t5, 5
/* 040474 800408C4 AFAE02A8 */  sw          $t6, 0x2a8($sp)
/* 040478 800408C8 46225100 */  add.d       $f4, $f10, $f2
/* 04047C 800408CC 4620220D */  trunc.w.d   $f8, $f4
/* 040480 800408D0 44184000 */  mfc1        $t8, $f8
/* 040484 800408D4 00000000 */  nop
/* 040488 800408D8 030FC821 */  addu        $t9, $t8, $t7
/* 04048C 800408DC 0011C023 */  negu        $t8, $s1
/* 040490 800408E0 AFB902A4 */  sw          $t9, 0x2a4($sp)
/* 040494 800408E4 AFB8028C */  sw          $t8, 0x28c($sp)
.L800408E8:
/* 040498 800408E8 8FAF0270 */  lw          $t7, 0x270($sp)
/* 04049C 800408EC 8FAE027C */  lw          $t6, 0x27c($sp)
/* 0404A0 800408F0 8FB902DC */  lw          $t9, 0x2dc($sp)
/* 0404A4 800408F4 01ED8823 */  subu        $s1, $t7, $t5
/* 0404A8 800408F8 2631FFFF */  addiu       $s1, $s1, -0x1
/* 0404AC 800408FC 12200101 */  beqz        $s1, .L80040D04
/* 0404B0 80040900 31D80007 */   andi       $t8, $t6, 0x7
/* 0404B4 80040904 44993000 */  mtc1        $t9, $f6
/* 0404B8 80040908 8FBF026C */  lw          $ra, 0x26c($sp)
/* 0404BC 8004090C 00003825 */  move        $a3, $zero
/* 0404C0 80040910 01A04025 */  move        $t0, $t5
/* 0404C4 80040914 07210005 */  bgez        $t9, .L8004092C
/* 0404C8 80040918 468030A0 */   cvt.s.w    $f2, $f6
/* 0404CC 8004091C 3C014F80 */  lui         $at, 0x4f80
/* 0404D0 80040920 44815000 */  mtc1        $at, $f10
/* 0404D4 80040924 00000000 */  nop
/* 0404D8 80040928 460A1080 */  add.s       $f2, $f2, $f10
.L8004092C:
/* 0404DC 8004092C 8FA402D4 */  lw          $a0, 0x2d4($sp)
/* 0404E0 80040930 8FA502B4 */  lw          $a1, 0x2b4($sp)
/* 0404E4 80040934 00187D40 */  sll         $t7, $t8, 21
/* 0404E8 80040938 30980003 */  andi        $t8, $a0, 0x3
/* 0404EC 8004093C 8FA602D0 */  lw          $a2, 0x2d0($sp)
/* 0404F0 80040940 00182480 */  sll         $a0, $t8, 18
/* 0404F4 80040944 30B8000F */  andi        $t8, $a1, 0xf
/* 0404F8 80040948 8FAA02B8 */  lw          $t2, 0x2b8($sp)
/* 0404FC 8004094C 00182B80 */  sll         $a1, $t8, 14
/* 040500 80040950 3C01F500 */  lui         $at, 0xf500
/* 040504 80040954 01E1C825 */  or          $t9, $t7, $at
/* 040508 80040958 30D80003 */  andi        $t8, $a2, 0x3
/* 04050C 8004095C 00183200 */  sll         $a2, $t8, 8
/* 040510 80040960 3C010008 */  lui         $at, 0x8
/* 040514 80040964 03217025 */  or          $t6, $t9, $at
/* 040518 80040968 3158000F */  andi        $t8, $t2, 0xf
/* 04051C 8004096C 00185100 */  sll         $t2, $t8, 4
/* 040520 80040970 3C010700 */  lui         $at, 0x700
/* 040524 80040974 0081C025 */  or          $t8, $a0, $at
/* 040528 80040978 0305C825 */  or          $t9, $t8, $a1
/* 04052C 8004097C 0326C025 */  or          $t8, $t9, $a2
/* 040530 80040980 000D5880 */  sll         $t3, $t5, 2
/* 040534 80040984 31790FFF */  andi        $t9, $t3, 0xfff
/* 040538 80040988 030A9025 */  or          $s2, $t8, $t2
/* 04053C 8004098C 0085C025 */  or          $t8, $a0, $a1
/* 040540 80040990 03205825 */  move        $t3, $t9
/* 040544 80040994 0306C825 */  or          $t9, $t8, $a2
/* 040548 80040998 27E3FFFF */  addiu       $v1, $ra, -0x1
/* 04054C 8004099C 0003C080 */  sll         $t8, $v1, 2
/* 040550 800409A0 032AA025 */  or          $s4, $t9, $t2
/* 040554 800409A4 33190FFF */  andi        $t9, $t8, 0xfff
/* 040558 800409A8 0019C300 */  sll         $t8, $t9, 12
/* 04055C 800409AC AFB8005C */  sw          $t8, 0x5c($sp)
/* 040560 800409B0 030B8025 */  or          $s0, $t8, $t3
/* 040564 800409B4 8FB80274 */  lw          $t8, 0x274($sp)
/* 040568 800409B8 AFAE0088 */  sw          $t6, 0x88($sp)
/* 04056C 800409BC AFAF008C */  sw          $t7, 0x8c($sp)
/* 040570 800409C0 44982000 */  mtc1        $t8, $f4
/* 040574 800409C4 00006025 */  move        $t4, $zero
/* 040578 800409C8 07010005 */  bgez        $t8, .L800409E0
/* 04057C 800409CC 46802220 */   cvt.s.w    $f8, $f4
/* 040580 800409D0 3C014F80 */  lui         $at, 0x4f80
/* 040584 800409D4 44813000 */  mtc1        $at, $f6
/* 040588 800409D8 00000000 */  nop
/* 04058C 800409DC 46064200 */  add.s       $f8, $f8, $f6
.L800409E0:
/* 040590 800409E0 8FB902D8 */  lw          $t9, 0x2d8($sp)
/* 040594 800409E4 460C4282 */  mul.s       $f10, $f8, $f12
/* 040598 800409E8 3C014F80 */  lui         $at, 0x4f80
/* 04059C 800409EC 44992000 */  mtc1        $t9, $f4
/* 0405A0 800409F0 07210004 */  bgez        $t9, .L80040A04
/* 0405A4 800409F4 468021A0 */   cvt.s.w    $f6, $f4
/* 0405A8 800409F8 44814000 */  mtc1        $at, $f8
/* 0405AC 800409FC 00000000 */  nop
/* 0405B0 80040A00 46083180 */  add.s       $f6, $f6, $f8
.L80040A04:
/* 0405B4 80040A04 8FB802C8 */  lw          $t8, 0x2c8($sp)
/* 0405B8 80040A08 46065102 */  mul.s       $f4, $f10, $f6
/* 0405BC 80040A0C 3C014F80 */  lui         $at, 0x4f80
/* 0405C0 80040A10 44984000 */  mtc1        $t8, $f8
/* 0405C4 80040A14 07010004 */  bgez        $t8, .L80040A28
/* 0405C8 80040A18 468042A0 */   cvt.s.w    $f10, $f8
/* 0405CC 80040A1C 44813000 */  mtc1        $at, $f6
/* 0405D0 80040A20 00000000 */  nop
/* 0405D4 80040A24 46065280 */  add.s       $f10, $f10, $f6
.L80040A28:
/* 0405D8 80040A28 46045200 */  add.s       $f8, $f10, $f4
/* 0405DC 80040A2C 8FB602C8 */  lw          $s6, 0x2c8($sp)
/* 0405E0 80040A30 3C01E400 */  lui         $at, 0xe400
/* 0405E4 80040A34 AFAF0030 */  sw          $t7, 0x30($sp)
/* 0405E8 80040A38 4600418D */  trunc.w.s   $f6, $f8
/* 0405EC 80040A3C 44153000 */  mfc1        $s5, $f6
/* 0405F0 80040A40 00000000 */  nop
/* 0405F4 80040A44 0015C080 */  sll         $t8, $s5, 2
/* 0405F8 80040A48 33190FFF */  andi        $t9, $t8, 0xfff
/* 0405FC 80040A4C 0019C300 */  sll         $t8, $t9, 12
/* 040600 80040A50 0301A825 */  or          $s5, $t8, $at
/* 040604 80040A54 0016C080 */  sll         $t8, $s6, 2
/* 040608 80040A58 33190FFF */  andi        $t9, $t8, 0xfff
/* 04060C 80040A5C 8FB802AC */  lw          $t8, 0x2ac($sp)
/* 040610 80040A60 0019B300 */  sll         $s6, $t9, 12
/* 040614 80040A64 3C01FD00 */  lui         $at, 0xfd00
/* 040618 80040A68 0018CC00 */  sll         $t9, $t8, 16
/* 04061C 80040A6C 8FB802A8 */  lw          $t8, 0x2a8($sp)
/* 040620 80040A70 330FFFFF */  andi        $t7, $t8, 0xffff
/* 040624 80040A74 032F9825 */  or          $s3, $t9, $t7
/* 040628 80040A78 8FB90290 */  lw          $t9, 0x290($sp)
/* 04062C 80040A7C 8FAF028C */  lw          $t7, 0x28c($sp)
/* 040630 80040A80 0019C400 */  sll         $t8, $t9, 16
/* 040634 80040A84 31F9FFFF */  andi        $t9, $t7, 0xffff
/* 040638 80040A88 8FAF0030 */  lw          $t7, 0x30($sp)
/* 04063C 80040A8C 0319B825 */  or          $s7, $t8, $t9
/* 040640 80040A90 01E1C025 */  or          $t8, $t7, $at
/* 040644 80040A94 3C010008 */  lui         $at, 0x8
/* 040648 80040A98 0301C825 */  or          $t9, $t8, $at
/* 04064C 80040A9C 27EFFFFF */  addiu       $t7, $ra, -0x1
/* 040650 80040AA0 31F80FFF */  andi        $t8, $t7, 0xfff
/* 040654 80040AA4 03387825 */  or          $t7, $t9, $t8
/* 040658 80040AA8 001FC840 */  sll         $t9, $ra, 1
/* 04065C 80040AAC 0019C042 */  srl         $t8, $t9, 1
/* 040660 80040AB0 AFAF0080 */  sw          $t7, 0x80($sp)
/* 040664 80040AB4 270F0007 */  addiu       $t7, $t8, 0x7
/* 040668 80040AB8 000FC8C2 */  srl         $t9, $t7, 3
/* 04066C 80040ABC 333801FF */  andi        $t8, $t9, 0x1ff
/* 040670 80040AC0 00187A40 */  sll         $t7, $t8, 9
/* 040674 80040AC4 8FB8005C */  lw          $t8, 0x5c($sp)
/* 040678 80040AC8 01CFC825 */  or          $t9, $t6, $t7
/* 04067C 80040ACC 3C010700 */  lui         $at, 0x700
/* 040680 80040AD0 AFB9007C */  sw          $t9, 0x7c($sp)
/* 040684 80040AD4 03017825 */  or          $t7, $t8, $at
/* 040688 80040AD8 01EBC825 */  or          $t9, $t7, $t3
/* 04068C 80040ADC 0003C040 */  sll         $t8, $v1, 1
/* 040690 80040AE0 270F0002 */  addiu       $t7, $t8, 0x2
/* 040694 80040AE4 AFB90058 */  sw          $t9, 0x58($sp)
/* 040698 80040AE8 000FC842 */  srl         $t9, $t7, 1
/* 04069C 80040AEC 27380007 */  addiu       $t8, $t9, 0x7
/* 0406A0 80040AF0 001878C2 */  srl         $t7, $t8, 3
/* 0406A4 80040AF4 31F901FF */  andi        $t9, $t7, 0x1ff
/* 0406A8 80040AF8 0019C240 */  sll         $t8, $t9, 9
/* 0406AC 80040AFC 01D87825 */  or          $t7, $t6, $t8
/* 0406B0 80040B00 AFAF003C */  sw          $t7, 0x3c($sp)
/* 0406B4 80040B04 3C1FF400 */  lui         $ra, 0xf400
.L80040B08:
/* 0406B8 80040B08 17C0001F */  bnez        $fp, .L80040B88
/* 0406BC 80040B0C 00401825 */   move       $v1, $v0
/* 0406C0 80040B10 44874000 */  mtc1        $a3, $f8
/* 0406C4 80040B14 8FB902CC */  lw          $t9, 0x2cc($sp)
/* 0406C8 80040B18 3C014F80 */  lui         $at, 0x4f80
/* 0406CC 80040B1C 468041A0 */  cvt.s.w     $f6, $f8
/* 0406D0 80040B20 44995000 */  mtc1        $t9, $f10
/* 0406D4 80040B24 00000000 */  nop
/* 0406D8 80040B28 46805020 */  cvt.s.w     $f0, $f10
/* 0406DC 80040B2C 460E3282 */  mul.s       $f10, $f6, $f14
/* 0406E0 80040B30 07230005 */  bgezl       $t9, .L80040B48
/* 0406E4 80040B34 44883000 */   mtc1       $t0, $f6
/* 0406E8 80040B38 44812000 */  mtc1        $at, $f4
/* 0406EC 80040B3C 00000000 */  nop
/* 0406F0 80040B40 46040000 */  add.s       $f0, $f0, $f4
/* 0406F4 80040B44 44883000 */  mtc1        $t0, $f6
.L80040B48:
/* 0406F8 80040B48 460A0100 */  add.s       $f4, $f0, $f10
/* 0406FC 80040B4C 468032A0 */  cvt.s.w     $f10, $f6
/* 040700 80040B50 4600220D */  trunc.w.s   $f8, $f4
/* 040704 80040B54 460E5102 */  mul.s       $f4, $f10, $f14
/* 040708 80040B58 440B4000 */  mfc1        $t3, $f8
/* 04070C 80040B5C 00000000 */  nop
/* 040710 80040B60 000BC080 */  sll         $t8, $t3, 2
/* 040714 80040B64 46022202 */  mul.s       $f8, $f4, $f2
/* 040718 80040B68 03005825 */  move        $t3, $t8
/* 04071C 80040B6C 46080180 */  add.s       $f6, $f0, $f8
/* 040720 80040B70 4600328D */  trunc.w.s   $f10, $f6
/* 040724 80040B74 440A5000 */  mfc1        $t2, $f10
/* 040728 80040B78 00000000 */  nop
/* 04072C 80040B7C 000AC880 */  sll         $t9, $t2, 2
/* 040730 80040B80 10000020 */  b           .L80040C04
/* 040734 80040B84 03205025 */   move       $t2, $t9
.L80040B88:
/* 040738 80040B88 44883000 */  mtc1        $t0, $f6
/* 04073C 80040B8C 8FAE02A4 */  lw          $t6, 0x2a4($sp)
/* 040740 80040B90 8FB80270 */  lw          $t8, 0x270($sp)
/* 040744 80040B94 468032A0 */  cvt.s.w     $f10, $f6
/* 040748 80040B98 3C014F80 */  lui         $at, 0x4f80
/* 04074C 80040B9C 01D87821 */  addu        $t7, $t6, $t8
/* 040750 80040BA0 448F2000 */  mtc1        $t7, $f4
/* 040754 80040BA4 00000000 */  nop
/* 040758 80040BA8 46802020 */  cvt.s.w     $f0, $f4
/* 04075C 80040BAC 460E5102 */  mul.s       $f4, $f10, $f14
/* 040760 80040BB0 05E30005 */  bgezl       $t7, .L80040BC8
/* 040764 80040BB4 44875000 */   mtc1       $a3, $f10
/* 040768 80040BB8 44814000 */  mtc1        $at, $f8
/* 04076C 80040BBC 00000000 */  nop
/* 040770 80040BC0 46080000 */  add.s       $f0, $f0, $f8
/* 040774 80040BC4 44875000 */  mtc1        $a3, $f10
.L80040BC8:
/* 040778 80040BC8 46040201 */  sub.s       $f8, $f0, $f4
/* 04077C 80040BCC 46805120 */  cvt.s.w     $f4, $f10
/* 040780 80040BD0 4600418D */  trunc.w.s   $f6, $f8
/* 040784 80040BD4 460E2202 */  mul.s       $f8, $f4, $f14
/* 040788 80040BD8 440B3000 */  mfc1        $t3, $f6
/* 04078C 80040BDC 00000000 */  nop
/* 040790 80040BE0 000B7080 */  sll         $t6, $t3, 2
/* 040794 80040BE4 46024182 */  mul.s       $f6, $f8, $f2
/* 040798 80040BE8 01C05825 */  move        $t3, $t6
/* 04079C 80040BEC 46060281 */  sub.s       $f10, $f0, $f6
/* 0407A0 80040BF0 4600510D */  trunc.w.s   $f4, $f10
/* 0407A4 80040BF4 440A2000 */  mfc1        $t2, $f4
/* 0407A8 80040BF8 00000000 */  nop
/* 0407AC 80040BFC 000A7880 */  sll         $t7, $t2, 2
/* 0407B0 80040C00 01E05025 */  move        $t2, $t7
.L80040C04:
/* 0407B4 80040C04 018D0019 */  multu       $t4, $t5
/* 0407B8 80040C08 8FB90080 */  lw          $t9, 0x80($sp)
/* 0407BC 80040C0C 24420008 */  addiu       $v0, $v0, 0x8
/* 0407C0 80040C10 00402025 */  move        $a0, $v0
/* 0407C4 80040C14 AC790000 */  sw          $t9, 0x0($v1)
/* 0407C8 80040C18 8FAE0284 */  lw          $t6, 0x284($sp)
/* 0407CC 80040C1C 24420008 */  addiu       $v0, $v0, 0x8
/* 0407D0 80040C20 00ED3821 */  addu        $a3, $a3, $t5
/* 0407D4 80040C24 00F1082B */  sltu        $at, $a3, $s1
/* 0407D8 80040C28 010D4021 */  addu        $t0, $t0, $t5
/* 0407DC 80040C2C 0000C012 */  mflo        $t8
/* 0407E0 80040C30 01D87821 */  addu        $t7, $t6, $t8
/* 0407E4 80040C34 AC6F0004 */  sw          $t7, 0x4($v1)
/* 0407E8 80040C38 8FB9007C */  lw          $t9, 0x7c($sp)
/* 0407EC 80040C3C AC920004 */  sw          $s2, 0x4($a0)
/* 0407F0 80040C40 00401825 */  move        $v1, $v0
/* 0407F4 80040C44 AC990000 */  sw          $t9, 0x0($a0)
/* 0407F8 80040C48 24420008 */  addiu       $v0, $v0, 0x8
/* 0407FC 80040C4C 3C0EE600 */  lui         $t6, 0xe600
/* 040800 80040C50 AC6E0000 */  sw          $t6, 0x0($v1)
/* 040804 80040C54 00402025 */  move        $a0, $v0
/* 040808 80040C58 AC600004 */  sw          $zero, 0x4($v1)
/* 04080C 80040C5C AC9F0000 */  sw          $ra, 0x0($a0)
/* 040810 80040C60 8FB80058 */  lw          $t8, 0x58($sp)
/* 040814 80040C64 24420008 */  addiu       $v0, $v0, 0x8
/* 040818 80040C68 00402825 */  move        $a1, $v0
/* 04081C 80040C6C AC980004 */  sw          $t8, 0x4($a0)
/* 040820 80040C70 3C0FE700 */  lui         $t7, 0xe700
/* 040824 80040C74 ACAF0000 */  sw          $t7, 0x0($a1)
/* 040828 80040C78 ACA00004 */  sw          $zero, 0x4($a1)
/* 04082C 80040C7C 24420008 */  addiu       $v0, $v0, 0x8
/* 040830 80040C80 8FB9003C */  lw          $t9, 0x3c($sp)
/* 040834 80040C84 00403025 */  move        $a2, $v0
/* 040838 80040C88 24420008 */  addiu       $v0, $v0, 0x8
/* 04083C 80040C8C 00401825 */  move        $v1, $v0
/* 040840 80040C90 ACD40004 */  sw          $s4, 0x4($a2)
/* 040844 80040C94 3C0EF200 */  lui         $t6, 0xf200
/* 040848 80040C98 ACD90000 */  sw          $t9, 0x0($a2)
/* 04084C 80040C9C AC6E0000 */  sw          $t6, 0x0($v1)
/* 040850 80040CA0 24420008 */  addiu       $v0, $v0, 0x8
/* 040854 80040CA4 AC700004 */  sw          $s0, 0x4($v1)
/* 040858 80040CA8 00402025 */  move        $a0, $v0
/* 04085C 80040CAC 31580FFF */  andi        $t8, $t2, 0xfff
/* 040860 80040CB0 02B87825 */  or          $t7, $s5, $t8
/* 040864 80040CB4 24420008 */  addiu       $v0, $v0, 0x8
/* 040868 80040CB8 31790FFF */  andi        $t9, $t3, 0xfff
/* 04086C 80040CBC 02D97025 */  or          $t6, $s6, $t9
/* 040870 80040CC0 00402825 */  move        $a1, $v0
/* 040874 80040CC4 AC8F0000 */  sw          $t7, 0x0($a0)
/* 040878 80040CC8 AC8E0004 */  sw          $t6, 0x4($a0)
/* 04087C 80040CCC 24420008 */  addiu       $v0, $v0, 0x8
/* 040880 80040CD0 3C18E100 */  lui         $t8, 0xe100
/* 040884 80040CD4 ACB80000 */  sw          $t8, 0x0($a1)
/* 040888 80040CD8 00401825 */  move        $v1, $v0
/* 04088C 80040CDC ACB30004 */  sw          $s3, 0x4($a1)
/* 040890 80040CE0 3C0FF100 */  lui         $t7, 0xf100
/* 040894 80040CE4 AC6F0000 */  sw          $t7, 0x0($v1)
/* 040898 80040CE8 AC770004 */  sw          $s7, 0x4($v1)
/* 04089C 80040CEC 8FB9026C */  lw          $t9, 0x26c($sp)
/* 0408A0 80040CF0 01205825 */  move        $t3, $t1
/* 0408A4 80040CF4 25290001 */  addiu       $t1, $t1, 0x1
/* 0408A8 80040CF8 24420008 */  addiu       $v0, $v0, 0x8
/* 0408AC 80040CFC 1420FF82 */  bnez        $at, .L80040B08
/* 0408B0 80040D00 01996021 */   addu       $t4, $t4, $t9
.L80040D04:
/* 0408B4 80040D04 016D0019 */  multu       $t3, $t5
/* 0408B8 80040D08 8FAE02DC */  lw          $t6, 0x2dc($sp)
/* 0408BC 80040D0C 8FB1027C */  lw          $s1, 0x27c($sp)
/* 0408C0 80040D10 8FA502B4 */  lw          $a1, 0x2b4($sp)
/* 0408C4 80040D14 448E4000 */  mtc1        $t6, $f8
/* 0408C8 80040D18 32380007 */  andi        $t8, $s1, 0x7
/* 0408CC 80040D1C 8FB0026C */  lw          $s0, 0x26c($sp)
/* 0408D0 80040D20 3C1FF400 */  lui         $ra, 0xf400
/* 0408D4 80040D24 00188D40 */  sll         $s1, $t8, 21
/* 0408D8 80040D28 8FA402D4 */  lw          $a0, 0x2d4($sp)
/* 0408DC 80040D2C 00003812 */  mflo        $a3
/* 0408E0 80040D30 30AF000F */  andi        $t7, $a1, 0xf
/* 0408E4 80040D34 05C10005 */  bgez        $t6, .L80040D4C
/* 0408E8 80040D38 468040A0 */   cvt.s.w    $f2, $f8
/* 0408EC 80040D3C 3C014F80 */  lui         $at, 0x4f80
/* 0408F0 80040D40 44813000 */  mtc1        $at, $f6
/* 0408F4 80040D44 00000000 */  nop
/* 0408F8 80040D48 46061080 */  add.s       $f2, $f2, $f6
.L80040D4C:
/* 0408FC 80040D4C 3C01F500 */  lui         $at, 0xf500
/* 040900 80040D50 8FA602D0 */  lw          $a2, 0x2d0($sp)
/* 040904 80040D54 02219825 */  or          $s3, $s1, $at
/* 040908 80040D58 8FAA02B8 */  lw          $t2, 0x2b8($sp)
/* 04090C 80040D5C 3C010008 */  lui         $at, 0x8
/* 040910 80040D60 308E0003 */  andi        $t6, $a0, 0x3
/* 040914 80040D64 000E2480 */  sll         $a0, $t6, 18
/* 040918 80040D68 0261C825 */  or          $t9, $s3, $at
/* 04091C 80040D6C 000F2B80 */  sll         $a1, $t7, 14
/* 040920 80040D70 30CE0003 */  andi        $t6, $a2, 0x3
/* 040924 80040D74 000E3200 */  sll         $a2, $t6, 8
/* 040928 80040D78 03209825 */  move        $s3, $t9
/* 04092C 80040D7C 3C010700 */  lui         $at, 0x700
/* 040930 80040D80 314F000F */  andi        $t7, $t2, 0xf
/* 040934 80040D84 000FC900 */  sll         $t9, $t7, 4
/* 040938 80040D88 00817025 */  or          $t6, $a0, $at
/* 04093C 80040D8C 020B0019 */  multu       $s0, $t3
/* 040940 80040D90 01C5C025 */  or          $t8, $t6, $a1
/* 040944 80040D94 03067825 */  or          $t7, $t8, $a2
/* 040948 80040D98 01F99025 */  or          $s2, $t7, $t9
/* 04094C 80040D9C 03205025 */  move        $t2, $t9
/* 040950 80040DA0 0085C825 */  or          $t9, $a0, $a1
/* 040954 80040DA4 03267025 */  or          $t6, $t9, $a2
/* 040958 80040DA8 01CAA025 */  or          $s4, $t6, $t2
/* 04095C 80040DAC 8FAE0274 */  lw          $t6, 0x274($sp)
/* 040960 80040DB0 2603FFFF */  addiu       $v1, $s0, -0x1
/* 040964 80040DB4 0003C080 */  sll         $t8, $v1, 2
/* 040968 80040DB8 448E5000 */  mtc1        $t6, $f10
/* 04096C 80040DBC 330F0FFF */  andi        $t7, $t8, 0xfff
/* 040970 80040DC0 000FCB00 */  sll         $t9, $t7, 12
/* 040974 80040DC4 00006012 */  mflo        $t4
/* 040978 80040DC8 AFB9005C */  sw          $t9, 0x5c($sp)
/* 04097C 80040DCC 05C10005 */  bgez        $t6, .L80040DE4
/* 040980 80040DD0 46805120 */   cvt.s.w    $f4, $f10
/* 040984 80040DD4 3C014F80 */  lui         $at, 0x4f80
/* 040988 80040DD8 44814000 */  mtc1        $at, $f8
/* 04098C 80040DDC 00000000 */  nop
/* 040990 80040DE0 46082100 */  add.s       $f4, $f4, $f8
.L80040DE4:
/* 040994 80040DE4 8FB802D8 */  lw          $t8, 0x2d8($sp)
/* 040998 80040DE8 460C2182 */  mul.s       $f6, $f4, $f12
/* 04099C 80040DEC 3C014F80 */  lui         $at, 0x4f80
/* 0409A0 80040DF0 44985000 */  mtc1        $t8, $f10
/* 0409A4 80040DF4 07010004 */  bgez        $t8, .L80040E08
/* 0409A8 80040DF8 46805220 */   cvt.s.w    $f8, $f10
/* 0409AC 80040DFC 44812000 */  mtc1        $at, $f4
/* 0409B0 80040E00 00000000 */  nop
/* 0409B4 80040E04 46044200 */  add.s       $f8, $f8, $f4
.L80040E08:
/* 0409B8 80040E08 8FAF02C8 */  lw          $t7, 0x2c8($sp)
/* 0409BC 80040E0C 46083282 */  mul.s       $f10, $f6, $f8
/* 0409C0 80040E10 3C014F80 */  lui         $at, 0x4f80
/* 0409C4 80040E14 448F2000 */  mtc1        $t7, $f4
/* 0409C8 80040E18 05E10004 */  bgez        $t7, .L80040E2C
/* 0409CC 80040E1C 468021A0 */   cvt.s.w    $f6, $f4
/* 0409D0 80040E20 44814000 */  mtc1        $at, $f8
/* 0409D4 80040E24 00000000 */  nop
/* 0409D8 80040E28 46083180 */  add.s       $f6, $f6, $f8
.L80040E2C:
/* 0409DC 80040E2C 460A3100 */  add.s       $f4, $f6, $f10
/* 0409E0 80040E30 000FB080 */  sll         $s6, $t7, 2
/* 0409E4 80040E34 8FAF02AC */  lw          $t7, 0x2ac($sp)
/* 0409E8 80040E38 3C01E400 */  lui         $at, 0xe400
/* 0409EC 80040E3C 4600220D */  trunc.w.s   $f8, $f4
/* 0409F0 80040E40 000F4400 */  sll         $t0, $t7, 16
/* 0409F4 80040E44 8FAF0290 */  lw          $t7, 0x290($sp)
/* 0409F8 80040E48 00E04825 */  move        $t1, $a3
/* 0409FC 80040E4C 44154000 */  mfc1        $s5, $f8
/* 040A00 80040E50 8FAB02CC */  lw          $t3, 0x2cc($sp)
/* 040A04 80040E54 0015C080 */  sll         $t8, $s5, 2
/* 040A08 80040E58 330E0FFF */  andi        $t6, $t8, 0xfff
/* 040A0C 80040E5C 000EC300 */  sll         $t8, $t6, 12
/* 040A10 80040E60 0301A825 */  or          $s5, $t8, $at
/* 040A14 80040E64 8FAE028C */  lw          $t6, 0x28c($sp)
/* 040A18 80040E68 32D80FFF */  andi        $t8, $s6, 0xfff
/* 040A1C 80040E6C 0018B300 */  sll         $s6, $t8, 12
/* 040A20 80040E70 000FC400 */  sll         $t8, $t7, 16
/* 040A24 80040E74 31CFFFFF */  andi        $t7, $t6, 0xffff
/* 040A28 80040E78 3C01FD00 */  lui         $at, 0xfd00
/* 040A2C 80040E7C 02217025 */  or          $t6, $s1, $at
/* 040A30 80040E80 030FB825 */  or          $s7, $t8, $t7
/* 040A34 80040E84 3C010008 */  lui         $at, 0x8
/* 040A38 80040E88 01C1C025 */  or          $t8, $t6, $at
/* 040A3C 80040E8C 260FFFFF */  addiu       $t7, $s0, -0x1
/* 040A40 80040E90 31EE0FFF */  andi        $t6, $t7, 0xfff
/* 040A44 80040E94 030E7825 */  or          $t7, $t8, $t6
/* 040A48 80040E98 0010C040 */  sll         $t8, $s0, 1
/* 040A4C 80040E9C 00187042 */  srl         $t6, $t8, 1
/* 040A50 80040EA0 AFAF0080 */  sw          $t7, 0x80($sp)
/* 040A54 80040EA4 25CF0007 */  addiu       $t7, $t6, 0x7
/* 040A58 80040EA8 000FC0C2 */  srl         $t8, $t7, 3
/* 040A5C 80040EAC 330E01FF */  andi        $t6, $t8, 0x1ff
/* 040A60 80040EB0 000E7A40 */  sll         $t7, $t6, 9
/* 040A64 80040EB4 026FC025 */  or          $t8, $s3, $t7
/* 040A68 80040EB8 3C010700 */  lui         $at, 0x700
/* 040A6C 80040EBC 03217025 */  or          $t6, $t9, $at
/* 040A70 80040EC0 AFB8007C */  sw          $t8, 0x7c($sp)
/* 040A74 80040EC4 00037840 */  sll         $t7, $v1, 1
/* 040A78 80040EC8 25F80002 */  addiu       $t8, $t7, 0x2
/* 040A7C 80040ECC 0018C842 */  srl         $t9, $t8, 1
/* 040A80 80040ED0 AFAE0058 */  sw          $t6, 0x58($sp)
/* 040A84 80040ED4 272E0007 */  addiu       $t6, $t9, 0x7
/* 040A88 80040ED8 000E78C2 */  srl         $t7, $t6, 3
/* 040A8C 80040EDC 31F801FF */  andi        $t8, $t7, 0x1ff
/* 040A90 80040EE0 0018CA40 */  sll         $t9, $t8, 9
/* 040A94 80040EE4 02797025 */  or          $t6, $s3, $t9
/* 040A98 80040EE8 17C00028 */  bnez        $fp, .L80040F8C
/* 040A9C 80040EEC AFAE003C */   sw         $t6, 0x3c($sp)
/* 040AA0 80040EF0 44872000 */  mtc1        $a3, $f4
/* 040AA4 80040EF4 8FAF02CC */  lw          $t7, 0x2cc($sp)
/* 040AA8 80040EF8 8FA30270 */  lw          $v1, 0x270($sp)
/* 040AAC 80040EFC 46802220 */  cvt.s.w     $f8, $f4
/* 040AB0 80040F00 448F3000 */  mtc1        $t7, $f6
/* 040AB4 80040F04 3C014F80 */  lui         $at, 0x4f80
/* 040AB8 80040F08 46803020 */  cvt.s.w     $f0, $f6
/* 040ABC 80040F0C 460E4182 */  mul.s       $f6, $f8, $f14
/* 040AC0 80040F10 05E30005 */  bgezl       $t7, .L80040F28
/* 040AC4 80040F14 46060280 */   add.s      $f10, $f0, $f6
/* 040AC8 80040F18 44815000 */  mtc1        $at, $f10
/* 040ACC 80040F1C 00000000 */  nop
/* 040AD0 80040F20 460A0000 */  add.s       $f0, $f0, $f10
/* 040AD4 80040F24 46060280 */  add.s       $f10, $f0, $f6
.L80040F28:
/* 040AD8 80040F28 44834000 */  mtc1        $v1, $f8
/* 040ADC 80040F2C 3C014F80 */  lui         $at, 0x4f80
/* 040AE0 80040F30 4600510D */  trunc.w.s   $f4, $f10
/* 040AE4 80040F34 468041A0 */  cvt.s.w     $f6, $f8
/* 040AE8 80040F38 440B2000 */  mfc1        $t3, $f4
/* 040AEC 80040F3C 00000000 */  nop
/* 040AF0 80040F40 000BC880 */  sll         $t9, $t3, 2
/* 040AF4 80040F44 04610004 */  bgez        $v1, .L80040F58
/* 040AF8 80040F48 03205825 */   move       $t3, $t9
/* 040AFC 80040F4C 44815000 */  mtc1        $at, $f10
/* 040B00 80040F50 00000000 */  nop
/* 040B04 80040F54 460A3180 */  add.s       $f6, $f6, $f10
.L80040F58:
/* 040B08 80040F58 460E3102 */  mul.s       $f4, $f6, $f14
/* 040B0C 80040F5C 8FB802A8 */  lw          $t8, 0x2a8($sp)
/* 040B10 80040F60 00692023 */  subu        $a0, $v1, $t1
/* 040B14 80040F64 3319FFFF */  andi        $t9, $t8, 0xffff
/* 040B18 80040F68 01199825 */  or          $s3, $t0, $t9
/* 040B1C 80040F6C 46022202 */  mul.s       $f8, $f4, $f2
/* 040B20 80040F70 46080280 */  add.s       $f10, $f0, $f8
/* 040B24 80040F74 4600518D */  trunc.w.s   $f6, $f10
/* 040B28 80040F78 440A3000 */  mfc1        $t2, $f6
/* 040B2C 80040F7C 00000000 */  nop
/* 040B30 80040F80 000A7880 */  sll         $t7, $t2, 2
/* 040B34 80040F84 1000001C */  b           .L80040FF8
/* 040B38 80040F88 01E05025 */   move       $t2, $t7
.L80040F8C:
/* 040B3C 80040F8C 8FA30270 */  lw          $v1, 0x270($sp)
/* 040B40 80040F90 8FAF02A4 */  lw          $t7, 0x2a4($sp)
/* 040B44 80040F94 000B7080 */  sll         $t6, $t3, 2
/* 040B48 80040F98 44873000 */  mtc1        $a3, $f6
/* 040B4C 80040F9C 01E3C021 */  addu        $t8, $t7, $v1
/* 040B50 80040FA0 44982000 */  mtc1        $t8, $f4
/* 040B54 80040FA4 01C05825 */  move        $t3, $t6
/* 040B58 80040FA8 07010005 */  bgez        $t8, .L80040FC0
/* 040B5C 80040FAC 46802220 */   cvt.s.w    $f8, $f4
/* 040B60 80040FB0 3C014F80 */  lui         $at, 0x4f80
/* 040B64 80040FB4 44815000 */  mtc1        $at, $f10
/* 040B68 80040FB8 00000000 */  nop
/* 040B6C 80040FBC 460A4200 */  add.s       $f8, $f8, $f10
.L80040FC0:
/* 040B70 80040FC0 46803120 */  cvt.s.w     $f4, $f6
/* 040B74 80040FC4 00692023 */  subu        $a0, $v1, $t1
/* 040B78 80040FC8 00042940 */  sll         $a1, $a0, 5
/* 040B7C 80040FCC 30AFFFFF */  andi        $t7, $a1, 0xffff
/* 040B80 80040FD0 010F9825 */  or          $s3, $t0, $t7
/* 040B84 80040FD4 460E2282 */  mul.s       $f10, $f4, $f14
/* 040B88 80040FD8 00000000 */  nop
/* 040B8C 80040FDC 46025182 */  mul.s       $f6, $f10, $f2
/* 040B90 80040FE0 46064101 */  sub.s       $f4, $f8, $f6
/* 040B94 80040FE4 4600228D */  trunc.w.s   $f10, $f4
/* 040B98 80040FE8 440A5000 */  mfc1        $t2, $f10
/* 040B9C 80040FEC 00000000 */  nop
/* 040BA0 80040FF0 000A7080 */  sll         $t6, $t2, 2
/* 040BA4 80040FF4 01C05025 */  move        $t2, $t6
.L80040FF8:
/* 040BA8 80040FF8 018D0019 */  multu       $t4, $t5
/* 040BAC 80040FFC 8FB80080 */  lw          $t8, 0x80($sp)
/* 040BB0 80041000 00401825 */  move        $v1, $v0
/* 040BB4 80041004 24420008 */  addiu       $v0, $v0, 0x8
/* 040BB8 80041008 AC780000 */  sw          $t8, 0x0($v1)
/* 040BBC 8004100C 8FB90284 */  lw          $t9, 0x284($sp)
/* 040BC0 80041010 00402825 */  move        $a1, $v0
/* 040BC4 80041014 24420008 */  addiu       $v0, $v0, 0x8
/* 040BC8 80041018 00007012 */  mflo        $t6
/* 040BCC 8004101C 032E7821 */  addu        $t7, $t9, $t6
/* 040BD0 80041020 AC6F0004 */  sw          $t7, 0x4($v1)
/* 040BD4 80041024 8FB8007C */  lw          $t8, 0x7c($sp)
/* 040BD8 80041028 ACB20004 */  sw          $s2, 0x4($a1)
/* 040BDC 8004102C 3C19E600 */  lui         $t9, 0xe600
/* 040BE0 80041030 ACB80000 */  sw          $t8, 0x0($a1)
/* 040BE4 80041034 00402825 */  move        $a1, $v0
/* 040BE8 80041038 24420008 */  addiu       $v0, $v0, 0x8
/* 040BEC 8004103C 00403025 */  move        $a2, $v0
/* 040BF0 80041040 ACB90000 */  sw          $t9, 0x0($a1)
/* 040BF4 80041044 ACA00004 */  sw          $zero, 0x4($a1)
/* 040BF8 80041048 ACDF0000 */  sw          $ra, 0x0($a2)
/* 040BFC 8004104C 8FB80058 */  lw          $t8, 0x58($sp)
/* 040C00 80041050 2483FFFF */  addiu       $v1, $a0, -0x1
/* 040C04 80041054 00037080 */  sll         $t6, $v1, 2
/* 040C08 80041058 31C30FFF */  andi        $v1, $t6, 0xfff
/* 040C0C 8004105C 24420008 */  addiu       $v0, $v0, 0x8
/* 040C10 80041060 00403825 */  move        $a3, $v0
/* 040C14 80041064 0303C825 */  or          $t9, $t8, $v1
/* 040C18 80041068 ACD90004 */  sw          $t9, 0x4($a2)
/* 040C1C 8004106C 3C0EE700 */  lui         $t6, 0xe700
/* 040C20 80041070 ACEE0000 */  sw          $t6, 0x0($a3)
/* 040C24 80041074 ACE00004 */  sw          $zero, 0x4($a3)
/* 040C28 80041078 24420008 */  addiu       $v0, $v0, 0x8
/* 040C2C 8004107C 8FAF003C */  lw          $t7, 0x3c($sp)
/* 040C30 80041080 00404025 */  move        $t0, $v0
/* 040C34 80041084 24420008 */  addiu       $v0, $v0, 0x8
/* 040C38 80041088 00402025 */  move        $a0, $v0
/* 040C3C 8004108C AD140004 */  sw          $s4, 0x4($t0)
/* 040C40 80041090 3C18F200 */  lui         $t8, 0xf200
/* 040C44 80041094 AD0F0000 */  sw          $t7, 0x0($t0)
/* 040C48 80041098 AC980000 */  sw          $t8, 0x0($a0)
/* 040C4C 8004109C 8FB9005C */  lw          $t9, 0x5c($sp)
/* 040C50 800410A0 24420008 */  addiu       $v0, $v0, 0x8
/* 040C54 800410A4 00402825 */  move        $a1, $v0
/* 040C58 800410A8 03237025 */  or          $t6, $t9, $v1
/* 040C5C 800410AC AC8E0004 */  sw          $t6, 0x4($a0)
/* 040C60 800410B0 314F0FFF */  andi        $t7, $t2, 0xfff
/* 040C64 800410B4 02AFC025 */  or          $t8, $s5, $t7
/* 040C68 800410B8 31790FFF */  andi        $t9, $t3, 0xfff
/* 040C6C 800410BC 24420008 */  addiu       $v0, $v0, 0x8
/* 040C70 800410C0 00401825 */  move        $v1, $v0
/* 040C74 800410C4 02D97025 */  or          $t6, $s6, $t9
/* 040C78 800410C8 ACB80000 */  sw          $t8, 0x0($a1)
/* 040C7C 800410CC ACAE0004 */  sw          $t6, 0x4($a1)
/* 040C80 800410D0 24420008 */  addiu       $v0, $v0, 0x8
/* 040C84 800410D4 00402025 */  move        $a0, $v0
/* 040C88 800410D8 3C0FE100 */  lui         $t7, 0xe100
/* 040C8C 800410DC AC6F0000 */  sw          $t7, 0x0($v1)
/* 040C90 800410E0 AC730004 */  sw          $s3, 0x4($v1)
/* 040C94 800410E4 3C18F100 */  lui         $t8, 0xf100
/* 040C98 800410E8 AC980000 */  sw          $t8, 0x0($a0)
/* 040C9C 800410EC AC970004 */  sw          $s7, 0x4($a0)
/* 040CA0 800410F0 10000460 */  b           .L80042274
/* 040CA4 800410F4 24420008 */   addiu      $v0, $v0, 0x8
.L800410F8:
/* 040CA8 800410F8 3C19E300 */  lui         $t9, 0xe300
/* 040CAC 800410FC 37391001 */  ori         $t9, $t9, 0x1001
/* 040CB0 80041100 AC790000 */  sw          $t9, 0x0($v1)
/* 040CB4 80041104 AC600004 */  sw          $zero, 0x4($v1)
/* 040CB8 80041108 8FAE026C */  lw          $t6, 0x26c($sp)
/* 040CBC 8004110C 240F0800 */  addiu       $t7, $zero, 0x800
/* 040CC0 80041110 8FB80270 */  lw          $t8, 0x270($sp)
/* 040CC4 80041114 01EE001B */  divu        $zero, $t7, $t6
/* 040CC8 80041118 00002812 */  mflo        $a1
/* 040CCC 8004111C 00B8082B */  sltu        $at, $a1, $t8
/* 040CD0 80041120 24420008 */  addiu       $v0, $v0, 0x8
/* 040CD4 80041124 15C00002 */  bnez        $t6, .L80041130
/* 040CD8 80041128 00000000 */   nop
/* 040CDC 8004112C 0007000D */  break       7
.L80041130:
/* 040CE0 80041130 00005825 */  move        $t3, $zero
/* 040CE4 80041134 10200003 */  beqz        $at, .L80041144
/* 040CE8 80041138 8FB902E8 */   lw         $t9, 0x2e8($sp)
/* 040CEC 8004113C 10000002 */  b           .L80041148
/* 040CF0 80041140 00A06825 */   move       $t5, $a1
.L80041144:
/* 040CF4 80041144 8FAD0270 */  lw          $t5, 0x270($sp)
.L80041148:
/* 040CF8 80041148 13200006 */  beqz        $t9, .L80041164
/* 040CFC 8004114C 25ADFFFF */   addiu      $t5, $t5, -0x1
/* 040D00 80041150 8FAF0274 */  lw          $t7, 0x274($sp)
/* 040D04 80041154 0010C023 */  negu        $t8, $s0
/* 040D08 80041158 AFB80290 */  sw          $t8, 0x290($sp)
/* 040D0C 8004115C 000F7140 */  sll         $t6, $t7, 5
/* 040D10 80041160 AFAE02AC */  sw          $t6, 0x2ac($sp)
.L80041164:
/* 040D14 80041164 8FBE02EC */  lw          $fp, 0x2ec($sp)
/* 040D18 80041168 3C013FF0 */  lui         $at, 0x3ff0
/* 040D1C 8004116C 8FB90270 */  lw          $t9, 0x270($sp)
/* 040D20 80041170 13C00019 */  beqz        $fp, .L800411D8
/* 040D24 80041174 24090001 */   addiu      $t1, $zero, 0x1
/* 040D28 80041178 44813800 */  mtc1        $at, $f7
/* 040D2C 8004117C 44803000 */  mtc1        $zero, $f6
/* 040D30 80041180 46007221 */  cvt.d.s     $f8, $f14
/* 040D34 80041184 44995000 */  mtc1        $t9, $f10
/* 040D38 80041188 46264101 */  sub.d       $f4, $f8, $f6
/* 040D3C 8004118C 3C014F80 */  lui         $at, 0x4f80
/* 040D40 80041190 07210004 */  bgez        $t9, .L800411A4
/* 040D44 80041194 46805220 */   cvt.s.w    $f8, $f10
/* 040D48 80041198 44813000 */  mtc1        $at, $f6
/* 040D4C 8004119C 00000000 */  nop
/* 040D50 800411A0 46064200 */  add.s       $f8, $f8, $f6
.L800411A4:
/* 040D54 800411A4 460042A1 */  cvt.d.s     $f10, $f8
/* 040D58 800411A8 8FB802CC */  lw          $t8, 0x2cc($sp)
/* 040D5C 800411AC 462A2182 */  mul.d       $f6, $f4, $f10
/* 040D60 800411B0 000D7940 */  sll         $t7, $t5, 5
/* 040D64 800411B4 AFAF02A8 */  sw          $t7, 0x2a8($sp)
/* 040D68 800411B8 46223200 */  add.d       $f8, $f6, $f2
/* 040D6C 800411BC 4620410D */  trunc.w.d   $f4, $f8
/* 040D70 800411C0 440E2000 */  mfc1        $t6, $f4
/* 040D74 800411C4 00000000 */  nop
/* 040D78 800411C8 01D8C821 */  addu        $t9, $t6, $t8
/* 040D7C 800411CC 00117023 */  negu        $t6, $s1
/* 040D80 800411D0 AFB902A4 */  sw          $t9, 0x2a4($sp)
/* 040D84 800411D4 AFAE028C */  sw          $t6, 0x28c($sp)
.L800411D8:
/* 040D88 800411D8 8FB80270 */  lw          $t8, 0x270($sp)
/* 040D8C 800411DC 8FAF027C */  lw          $t7, 0x27c($sp)
/* 040D90 800411E0 8FB902DC */  lw          $t9, 0x2dc($sp)
/* 040D94 800411E4 030D8823 */  subu        $s1, $t8, $t5
/* 040D98 800411E8 2631FFFF */  addiu       $s1, $s1, -0x1
/* 040D9C 800411EC 12200102 */  beqz        $s1, .L800415F8
/* 040DA0 800411F0 31EE0007 */   andi       $t6, $t7, 0x7
/* 040DA4 800411F4 44995000 */  mtc1        $t9, $f10
/* 040DA8 800411F8 8FBF026C */  lw          $ra, 0x26c($sp)
/* 040DAC 800411FC 00003825 */  move        $a3, $zero
/* 040DB0 80041200 01A04025 */  move        $t0, $t5
/* 040DB4 80041204 07210005 */  bgez        $t9, .L8004121C
/* 040DB8 80041208 468050A0 */   cvt.s.w    $f2, $f10
/* 040DBC 8004120C 3C014F80 */  lui         $at, 0x4f80
/* 040DC0 80041210 44813000 */  mtc1        $at, $f6
/* 040DC4 80041214 00000000 */  nop
/* 040DC8 80041218 46061080 */  add.s       $f2, $f2, $f6
.L8004121C:
/* 040DCC 8004121C 8FA402D4 */  lw          $a0, 0x2d4($sp)
/* 040DD0 80041220 8FA502B4 */  lw          $a1, 0x2b4($sp)
/* 040DD4 80041224 8FAA02B8 */  lw          $t2, 0x2b8($sp)
/* 040DD8 80041228 8FA602D0 */  lw          $a2, 0x2d0($sp)
/* 040DDC 8004122C 000EC540 */  sll         $t8, $t6, 21
/* 040DE0 80041230 30990003 */  andi        $t9, $a0, 0x3
/* 040DE4 80041234 00192480 */  sll         $a0, $t9, 18
/* 040DE8 80041238 30AE000F */  andi        $t6, $a1, 0xf
/* 040DEC 8004123C 000E2B80 */  sll         $a1, $t6, 14
/* 040DF0 80041240 3C010700 */  lui         $at, 0x700
/* 040DF4 80041244 3159000F */  andi        $t9, $t2, 0xf
/* 040DF8 80041248 00195100 */  sll         $t2, $t9, 4
/* 040DFC 8004124C 00817025 */  or          $t6, $a0, $at
/* 040E00 80041250 30CF0003 */  andi        $t7, $a2, 0x3
/* 040E04 80041254 000F3200 */  sll         $a2, $t7, 8
/* 040E08 80041258 01C5C825 */  or          $t9, $t6, $a1
/* 040E0C 8004125C 03267825 */  or          $t7, $t9, $a2
/* 040E10 80041260 000D5880 */  sll         $t3, $t5, 2
/* 040E14 80041264 316E0FFF */  andi        $t6, $t3, 0xfff
/* 040E18 80041268 01C05825 */  move        $t3, $t6
/* 040E1C 8004126C 01EA9025 */  or          $s2, $t7, $t2
/* 040E20 80041270 0085C825 */  or          $t9, $a0, $a1
/* 040E24 80041274 27E3FFFF */  addiu       $v1, $ra, -0x1
/* 040E28 80041278 8FB602C8 */  lw          $s6, 0x2c8($sp)
/* 040E2C 8004127C 00037080 */  sll         $t6, $v1, 2
/* 040E30 80041280 03267825 */  or          $t7, $t9, $a2
/* 040E34 80041284 31D90FFF */  andi        $t9, $t6, 0xfff
/* 040E38 80041288 01EAA025 */  or          $s4, $t7, $t2
/* 040E3C 8004128C 00197B00 */  sll         $t7, $t9, 12
/* 040E40 80041290 00167080 */  sll         $t6, $s6, 2
/* 040E44 80041294 31D90FFF */  andi        $t9, $t6, 0xfff
/* 040E48 80041298 8FAE02AC */  lw          $t6, 0x2ac($sp)
/* 040E4C 8004129C 0019B300 */  sll         $s6, $t9, 12
/* 040E50 800412A0 AFB8008C */  sw          $t8, 0x8c($sp)
/* 040E54 800412A4 000ECC00 */  sll         $t9, $t6, 16
/* 040E58 800412A8 8FAE02A8 */  lw          $t6, 0x2a8($sp)
/* 040E5C 800412AC AFB80030 */  sw          $t8, 0x30($sp)
/* 040E60 800412B0 AFAF005C */  sw          $t7, 0x5c($sp)
/* 040E64 800412B4 31D8FFFF */  andi        $t8, $t6, 0xffff
/* 040E68 800412B8 03389825 */  or          $s3, $t9, $t8
/* 040E6C 800412BC 8FB90290 */  lw          $t9, 0x290($sp)
/* 040E70 800412C0 8FB8028C */  lw          $t8, 0x28c($sp)
/* 040E74 800412C4 01EB8025 */  or          $s0, $t7, $t3
/* 040E78 800412C8 00197400 */  sll         $t6, $t9, 16
/* 040E7C 800412CC 3319FFFF */  andi        $t9, $t8, 0xffff
/* 040E80 800412D0 01D9B825 */  or          $s7, $t6, $t9
/* 040E84 800412D4 8FB90030 */  lw          $t9, 0x30($sp)
/* 040E88 800412D8 01E1C025 */  or          $t8, $t7, $at
/* 040E8C 800412DC 3C01FD00 */  lui         $at, 0xfd00
/* 040E90 800412E0 030B7025 */  or          $t6, $t8, $t3
/* 040E94 800412E4 03217825 */  or          $t7, $t9, $at
/* 040E98 800412E8 3C010010 */  lui         $at, 0x10
/* 040E9C 800412EC 01E1C025 */  or          $t8, $t7, $at
/* 040EA0 800412F0 AFAE0058 */  sw          $t6, 0x58($sp)
/* 040EA4 800412F4 27EEFFFF */  addiu       $t6, $ra, -0x1
/* 040EA8 800412F8 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 040EAC 800412FC 3C01F500 */  lui         $at, 0xf500
/* 040EB0 80041300 03217025 */  or          $t6, $t9, $at
/* 040EB4 80041304 3C010010 */  lui         $at, 0x10
/* 040EB8 80041308 030FA825 */  or          $s5, $t8, $t7
/* 040EBC 8004130C 01C17825 */  or          $t7, $t6, $at
/* 040EC0 80041310 001FC880 */  sll         $t9, $ra, 2
/* 040EC4 80041314 00197042 */  srl         $t6, $t9, 1
/* 040EC8 80041318 25D80007 */  addiu       $t8, $t6, 0x7
/* 040ECC 8004131C 0018C8C2 */  srl         $t9, $t8, 3
/* 040ED0 80041320 332E01FF */  andi        $t6, $t9, 0x1ff
/* 040ED4 80041324 000EC240 */  sll         $t8, $t6, 9
/* 040ED8 80041328 01F8C825 */  or          $t9, $t7, $t8
/* 040EDC 8004132C AFAF0080 */  sw          $t7, 0x80($sp)
/* 040EE0 80041330 00037880 */  sll         $t7, $v1, 2
/* 040EE4 80041334 25F80004 */  addiu       $t8, $t7, 0x4
/* 040EE8 80041338 AFB9007C */  sw          $t9, 0x7c($sp)
/* 040EEC 8004133C 0018C842 */  srl         $t9, $t8, 1
/* 040EF0 80041340 272F0007 */  addiu       $t7, $t9, 0x7
/* 040EF4 80041344 000FC0C2 */  srl         $t8, $t7, 3
/* 040EF8 80041348 331901FF */  andi        $t9, $t8, 0x1ff
/* 040EFC 8004134C 8FAE0080 */  lw          $t6, 0x80($sp)
/* 040F00 80041350 00197A40 */  sll         $t7, $t9, 9
/* 040F04 80041354 8FB90274 */  lw          $t9, 0x274($sp)
/* 040F08 80041358 01CFC025 */  or          $t8, $t6, $t7
/* 040F0C 8004135C AFB8004C */  sw          $t8, 0x4c($sp)
/* 040F10 80041360 272E0001 */  addiu       $t6, $t9, 0x1
/* 040F14 80041364 448E4000 */  mtc1        $t6, $f8
/* 040F18 80041368 00006025 */  move        $t4, $zero
/* 040F1C 8004136C 05C10005 */  bgez        $t6, .L80041384
/* 040F20 80041370 46804120 */   cvt.s.w    $f4, $f8
/* 040F24 80041374 3C014F80 */  lui         $at, 0x4f80
/* 040F28 80041378 44815000 */  mtc1        $at, $f10
/* 040F2C 8004137C 00000000 */  nop
/* 040F30 80041380 460A2100 */  add.s       $f4, $f4, $f10
.L80041384:
/* 040F34 80041384 8FAF02D8 */  lw          $t7, 0x2d8($sp)
/* 040F38 80041388 460C2182 */  mul.s       $f6, $f4, $f12
/* 040F3C 8004138C 3C014F80 */  lui         $at, 0x4f80
/* 040F40 80041390 448F4000 */  mtc1        $t7, $f8
/* 040F44 80041394 05E10004 */  bgez        $t7, .L800413A8
/* 040F48 80041398 468042A0 */   cvt.s.w    $f10, $f8
/* 040F4C 8004139C 44812000 */  mtc1        $at, $f4
/* 040F50 800413A0 00000000 */  nop
/* 040F54 800413A4 46045280 */  add.s       $f10, $f10, $f4
.L800413A8:
/* 040F58 800413A8 8FB802C8 */  lw          $t8, 0x2c8($sp)
/* 040F5C 800413AC 460A3202 */  mul.s       $f8, $f6, $f10
/* 040F60 800413B0 3C014F80 */  lui         $at, 0x4f80
/* 040F64 800413B4 44982000 */  mtc1        $t8, $f4
/* 040F68 800413B8 07010004 */  bgez        $t8, .L800413CC
/* 040F6C 800413BC 468021A0 */   cvt.s.w    $f6, $f4
/* 040F70 800413C0 44815000 */  mtc1        $at, $f10
/* 040F74 800413C4 00000000 */  nop
/* 040F78 800413C8 460A3180 */  add.s       $f6, $f6, $f10
.L800413CC:
/* 040F7C 800413CC 46083100 */  add.s       $f4, $f6, $f8
/* 040F80 800413D0 3C01E400 */  lui         $at, 0xe400
/* 040F84 800413D4 3C1FF400 */  lui         $ra, 0xf400
/* 040F88 800413D8 4600228D */  trunc.w.s   $f10, $f4
/* 040F8C 800413DC 440E5000 */  mfc1        $t6, $f10
/* 040F90 800413E0 00000000 */  nop
/* 040F94 800413E4 000E7880 */  sll         $t7, $t6, 2
/* 040F98 800413E8 31F80FFF */  andi        $t8, $t7, 0xfff
/* 040F9C 800413EC 0018CB00 */  sll         $t9, $t8, 12
/* 040FA0 800413F0 03217025 */  or          $t6, $t9, $at
/* 040FA4 800413F4 AFAE003C */  sw          $t6, 0x3c($sp)
.L800413F8:
/* 040FA8 800413F8 17C0001F */  bnez        $fp, .L80041478
/* 040FAC 800413FC 8FB802A4 */   lw         $t8, 0x2a4($sp)
/* 040FB0 80041400 44872000 */  mtc1        $a3, $f4
/* 040FB4 80041404 8FAF02CC */  lw          $t7, 0x2cc($sp)
/* 040FB8 80041408 3C014F80 */  lui         $at, 0x4f80
/* 040FBC 8004140C 468022A0 */  cvt.s.w     $f10, $f4
/* 040FC0 80041410 448F3000 */  mtc1        $t7, $f6
/* 040FC4 80041414 00000000 */  nop
/* 040FC8 80041418 46803020 */  cvt.s.w     $f0, $f6
/* 040FCC 8004141C 460E5182 */  mul.s       $f6, $f10, $f14
/* 040FD0 80041420 05E30005 */  bgezl       $t7, .L80041438
/* 040FD4 80041424 44885000 */   mtc1       $t0, $f10
/* 040FD8 80041428 44814000 */  mtc1        $at, $f8
/* 040FDC 8004142C 00000000 */  nop
/* 040FE0 80041430 46080000 */  add.s       $f0, $f0, $f8
/* 040FE4 80041434 44885000 */  mtc1        $t0, $f10
.L80041438:
/* 040FE8 80041438 46060200 */  add.s       $f8, $f0, $f6
/* 040FEC 8004143C 468051A0 */  cvt.s.w     $f6, $f10
/* 040FF0 80041440 4600410D */  trunc.w.s   $f4, $f8
/* 040FF4 80041444 460E3202 */  mul.s       $f8, $f6, $f14
/* 040FF8 80041448 440B2000 */  mfc1        $t3, $f4
/* 040FFC 8004144C 00000000 */  nop
/* 041000 80041450 000BC880 */  sll         $t9, $t3, 2
/* 041004 80041454 46024102 */  mul.s       $f4, $f8, $f2
/* 041008 80041458 03205825 */  move        $t3, $t9
/* 04100C 8004145C 46040280 */  add.s       $f10, $f0, $f4
/* 041010 80041460 4600518D */  trunc.w.s   $f6, $f10
/* 041014 80041464 440A3000 */  mfc1        $t2, $f6
/* 041018 80041468 00000000 */  nop
/* 04101C 8004146C 000A7880 */  sll         $t7, $t2, 2
/* 041020 80041470 1000001F */  b           .L800414F0
/* 041024 80041474 01E05025 */   move       $t2, $t7
.L80041478:
/* 041028 80041478 44885000 */  mtc1        $t0, $f10
/* 04102C 8004147C 8FB90270 */  lw          $t9, 0x270($sp)
/* 041030 80041480 3C014F80 */  lui         $at, 0x4f80
/* 041034 80041484 468051A0 */  cvt.s.w     $f6, $f10
/* 041038 80041488 03197021 */  addu        $t6, $t8, $t9
/* 04103C 8004148C 448E4000 */  mtc1        $t6, $f8
/* 041040 80041490 00000000 */  nop
/* 041044 80041494 46804020 */  cvt.s.w     $f0, $f8
/* 041048 80041498 460E3202 */  mul.s       $f8, $f6, $f14
/* 04104C 8004149C 05C30005 */  bgezl       $t6, .L800414B4
/* 041050 800414A0 44873000 */   mtc1       $a3, $f6
/* 041054 800414A4 44812000 */  mtc1        $at, $f4
/* 041058 800414A8 00000000 */  nop
/* 04105C 800414AC 46040000 */  add.s       $f0, $f0, $f4
/* 041060 800414B0 44873000 */  mtc1        $a3, $f6
.L800414B4:
/* 041064 800414B4 46080101 */  sub.s       $f4, $f0, $f8
/* 041068 800414B8 46803220 */  cvt.s.w     $f8, $f6
/* 04106C 800414BC 4600228D */  trunc.w.s   $f10, $f4
/* 041070 800414C0 460E4102 */  mul.s       $f4, $f8, $f14
/* 041074 800414C4 440B5000 */  mfc1        $t3, $f10
/* 041078 800414C8 00000000 */  nop
/* 04107C 800414CC 000BC080 */  sll         $t8, $t3, 2
/* 041080 800414D0 46022282 */  mul.s       $f10, $f4, $f2
/* 041084 800414D4 03005825 */  move        $t3, $t8
/* 041088 800414D8 460A0181 */  sub.s       $f6, $f0, $f10
/* 04108C 800414DC 4600320D */  trunc.w.s   $f8, $f6
/* 041090 800414E0 440A4000 */  mfc1        $t2, $f8
/* 041094 800414E4 00000000 */  nop
/* 041098 800414E8 000A7080 */  sll         $t6, $t2, 2
/* 04109C 800414EC 01C05025 */  move        $t2, $t6
.L800414F0:
/* 0410A0 800414F0 018D0019 */  multu       $t4, $t5
/* 0410A4 800414F4 00401825 */  move        $v1, $v0
/* 0410A8 800414F8 AC750000 */  sw          $s5, 0x0($v1)
/* 0410AC 800414FC 8FAF0284 */  lw          $t7, 0x284($sp)
/* 0410B0 80041500 24420008 */  addiu       $v0, $v0, 0x8
/* 0410B4 80041504 00402025 */  move        $a0, $v0
/* 0410B8 80041508 24420008 */  addiu       $v0, $v0, 0x8
/* 0410BC 8004150C 00ED3821 */  addu        $a3, $a3, $t5
/* 0410C0 80041510 00F1082B */  sltu        $at, $a3, $s1
/* 0410C4 80041514 010D4021 */  addu        $t0, $t0, $t5
/* 0410C8 80041518 0000C012 */  mflo        $t8
/* 0410CC 8004151C 0018C840 */  sll         $t9, $t8, 1
/* 0410D0 80041520 01F97021 */  addu        $t6, $t7, $t9
/* 0410D4 80041524 AC6E0004 */  sw          $t6, 0x4($v1)
/* 0410D8 80041528 8FB8007C */  lw          $t8, 0x7c($sp)
/* 0410DC 8004152C AC920004 */  sw          $s2, 0x4($a0)
/* 0410E0 80041530 00401825 */  move        $v1, $v0
/* 0410E4 80041534 AC980000 */  sw          $t8, 0x0($a0)
/* 0410E8 80041538 24420008 */  addiu       $v0, $v0, 0x8
/* 0410EC 8004153C 3C0FE600 */  lui         $t7, 0xe600
/* 0410F0 80041540 AC6F0000 */  sw          $t7, 0x0($v1)
/* 0410F4 80041544 00402025 */  move        $a0, $v0
/* 0410F8 80041548 AC600004 */  sw          $zero, 0x4($v1)
/* 0410FC 8004154C AC9F0000 */  sw          $ra, 0x0($a0)
/* 041100 80041550 8FB90058 */  lw          $t9, 0x58($sp)
/* 041104 80041554 24420008 */  addiu       $v0, $v0, 0x8
/* 041108 80041558 00402825 */  move        $a1, $v0
/* 04110C 8004155C AC990004 */  sw          $t9, 0x4($a0)
/* 041110 80041560 3C0EE700 */  lui         $t6, 0xe700
/* 041114 80041564 ACAE0000 */  sw          $t6, 0x0($a1)
/* 041118 80041568 ACA00004 */  sw          $zero, 0x4($a1)
/* 04111C 8004156C 24420008 */  addiu       $v0, $v0, 0x8
/* 041120 80041570 8FB8004C */  lw          $t8, 0x4c($sp)
/* 041124 80041574 00403025 */  move        $a2, $v0
/* 041128 80041578 24420008 */  addiu       $v0, $v0, 0x8
/* 04112C 8004157C 00401825 */  move        $v1, $v0
/* 041130 80041580 ACD40004 */  sw          $s4, 0x4($a2)
/* 041134 80041584 ACD80000 */  sw          $t8, 0x0($a2)
/* 041138 80041588 3C0FF200 */  lui         $t7, 0xf200
/* 04113C 8004158C AC6F0000 */  sw          $t7, 0x0($v1)
/* 041140 80041590 AC700004 */  sw          $s0, 0x4($v1)
/* 041144 80041594 8FB9003C */  lw          $t9, 0x3c($sp)
/* 041148 80041598 24420008 */  addiu       $v0, $v0, 0x8
/* 04114C 8004159C 314E0FFF */  andi        $t6, $t2, 0xfff
/* 041150 800415A0 00402025 */  move        $a0, $v0
/* 041154 800415A4 032EC025 */  or          $t8, $t9, $t6
/* 041158 800415A8 24420008 */  addiu       $v0, $v0, 0x8
/* 04115C 800415AC 316F0FFF */  andi        $t7, $t3, 0xfff
/* 041160 800415B0 02CFC825 */  or          $t9, $s6, $t7
/* 041164 800415B4 00402825 */  move        $a1, $v0
/* 041168 800415B8 AC980000 */  sw          $t8, 0x0($a0)
/* 04116C 800415BC AC990004 */  sw          $t9, 0x4($a0)
/* 041170 800415C0 24420008 */  addiu       $v0, $v0, 0x8
/* 041174 800415C4 3C0EE100 */  lui         $t6, 0xe100
/* 041178 800415C8 ACAE0000 */  sw          $t6, 0x0($a1)
/* 04117C 800415CC 00401825 */  move        $v1, $v0
/* 041180 800415D0 ACB30004 */  sw          $s3, 0x4($a1)
/* 041184 800415D4 3C18F100 */  lui         $t8, 0xf100
/* 041188 800415D8 AC780000 */  sw          $t8, 0x0($v1)
/* 04118C 800415DC AC770004 */  sw          $s7, 0x4($v1)
/* 041190 800415E0 8FAF026C */  lw          $t7, 0x26c($sp)
/* 041194 800415E4 01205825 */  move        $t3, $t1
/* 041198 800415E8 25290001 */  addiu       $t1, $t1, 0x1
/* 04119C 800415EC 24420008 */  addiu       $v0, $v0, 0x8
/* 0411A0 800415F0 1420FF81 */  bnez        $at, .L800413F8
/* 0411A4 800415F4 018F6021 */   addu       $t4, $t4, $t7
.L800415F8:
/* 0411A8 800415F8 016D0019 */  multu       $t3, $t5
/* 0411AC 800415FC 8FB902DC */  lw          $t9, 0x2dc($sp)
/* 0411B0 80041600 8FB1027C */  lw          $s1, 0x27c($sp)
/* 0411B4 80041604 8FA402D4 */  lw          $a0, 0x2d4($sp)
/* 0411B8 80041608 44992000 */  mtc1        $t9, $f4
/* 0411BC 8004160C 322E0007 */  andi        $t6, $s1, 0x7
/* 0411C0 80041610 308F0003 */  andi        $t7, $a0, 0x3
/* 0411C4 80041614 8FB0026C */  lw          $s0, 0x26c($sp)
/* 0411C8 80041618 3C1FF400 */  lui         $ra, 0xf400
/* 0411CC 8004161C 000F2480 */  sll         $a0, $t7, 18
/* 0411D0 80041620 00003812 */  mflo        $a3
/* 0411D4 80041624 000E8D40 */  sll         $s1, $t6, 21
/* 0411D8 80041628 07210005 */  bgez        $t9, .L80041640
/* 0411DC 8004162C 468020A0 */   cvt.s.w    $f2, $f4
/* 0411E0 80041630 3C014F80 */  lui         $at, 0x4f80
/* 0411E4 80041634 44815000 */  mtc1        $at, $f10
/* 0411E8 80041638 00000000 */  nop
/* 0411EC 8004163C 460A1080 */  add.s       $f2, $f2, $f10
.L80041640:
/* 0411F0 80041640 8FA502B4 */  lw          $a1, 0x2b4($sp)
/* 0411F4 80041644 8FA602D0 */  lw          $a2, 0x2d0($sp)
/* 0411F8 80041648 8FAA02B8 */  lw          $t2, 0x2b8($sp)
/* 0411FC 8004164C 30AE000F */  andi        $t6, $a1, 0xf
/* 041200 80041650 000E2B80 */  sll         $a1, $t6, 14
/* 041204 80041654 30CF0003 */  andi        $t7, $a2, 0x3
/* 041208 80041658 000F3200 */  sll         $a2, $t7, 8
/* 04120C 8004165C 3C010700 */  lui         $at, 0x700
/* 041210 80041660 314E000F */  andi        $t6, $t2, 0xf
/* 041214 80041664 000EC100 */  sll         $t8, $t6, 4
/* 041218 80041668 00817825 */  or          $t7, $a0, $at
/* 04121C 8004166C 020B0019 */  multu       $s0, $t3
/* 041220 80041670 01E5C825 */  or          $t9, $t7, $a1
/* 041224 80041674 03267025 */  or          $t6, $t9, $a2
/* 041228 80041678 01D89025 */  or          $s2, $t6, $t8
/* 04122C 8004167C 03005025 */  move        $t2, $t8
/* 041230 80041680 0085C025 */  or          $t8, $a0, $a1
/* 041234 80041684 03067825 */  or          $t7, $t8, $a2
/* 041238 80041688 01EAA025 */  or          $s4, $t7, $t2
/* 04123C 8004168C 8FAF02C8 */  lw          $t7, 0x2c8($sp)
/* 041240 80041690 2603FFFF */  addiu       $v1, $s0, -0x1
/* 041244 80041694 0003C880 */  sll         $t9, $v1, 2
/* 041248 80041698 448F3000 */  mtc1        $t7, $f6
/* 04124C 8004169C 332E0FFF */  andi        $t6, $t9, 0xfff
/* 041250 800416A0 000EC300 */  sll         $t8, $t6, 12
/* 041254 800416A4 00006012 */  mflo        $t4
/* 041258 800416A8 AFB8005C */  sw          $t8, 0x5c($sp)
/* 04125C 800416AC 05E10005 */  bgez        $t7, .L800416C4
/* 041260 800416B0 46803420 */   cvt.s.w    $f16, $f6
/* 041264 800416B4 3C014F80 */  lui         $at, 0x4f80
/* 041268 800416B8 44814000 */  mtc1        $at, $f8
/* 04126C 800416BC 00000000 */  nop
/* 041270 800416C0 46088400 */  add.s       $f16, $f16, $f8
.L800416C4:
/* 041274 800416C4 8FB902D8 */  lw          $t9, 0x2d8($sp)
/* 041278 800416C8 000FB080 */  sll         $s6, $t7, 2
/* 04127C 800416CC 32CE0FFF */  andi        $t6, $s6, 0xfff
/* 041280 800416D0 44992000 */  mtc1        $t9, $f4
/* 041284 800416D4 8FAF02AC */  lw          $t7, 0x2ac($sp)
/* 041288 800416D8 07210005 */  bgez        $t9, .L800416F0
/* 04128C 800416DC 468024A0 */   cvt.s.w    $f18, $f4
/* 041290 800416E0 3C014F80 */  lui         $at, 0x4f80
/* 041294 800416E4 44815000 */  mtc1        $at, $f10
/* 041298 800416E8 00000000 */  nop
/* 04129C 800416EC 460A9480 */  add.s       $f18, $f18, $f10
.L800416F0:
/* 0412A0 800416F0 000F4400 */  sll         $t0, $t7, 16
/* 0412A4 800416F4 8FAF0290 */  lw          $t7, 0x290($sp)
/* 0412A8 800416F8 8FB9028C */  lw          $t9, 0x28c($sp)
/* 0412AC 800416FC 000EB300 */  sll         $s6, $t6, 12
/* 0412B0 80041700 000F7400 */  sll         $t6, $t7, 16
/* 0412B4 80041704 3C010700 */  lui         $at, 0x700
/* 0412B8 80041708 332FFFFF */  andi        $t7, $t9, 0xffff
/* 0412BC 8004170C 0301C825 */  or          $t9, $t8, $at
/* 0412C0 80041710 3C01FD00 */  lui         $at, 0xfd00
/* 0412C4 80041714 01CFB825 */  or          $s7, $t6, $t7
/* 0412C8 80041718 02217025 */  or          $t6, $s1, $at
/* 0412CC 8004171C 3C010010 */  lui         $at, 0x10
/* 0412D0 80041720 01C17825 */  or          $t7, $t6, $at
/* 0412D4 80041724 AFB90058 */  sw          $t9, 0x58($sp)
/* 0412D8 80041728 2618FFFF */  addiu       $t8, $s0, -0x1
/* 0412DC 8004172C 33190FFF */  andi        $t9, $t8, 0xfff
/* 0412E0 80041730 3C01F500 */  lui         $at, 0xf500
/* 0412E4 80041734 02219825 */  or          $s3, $s1, $at
/* 0412E8 80041738 3C010010 */  lui         $at, 0x10
/* 0412EC 8004173C 01F9A825 */  or          $s5, $t7, $t9
/* 0412F0 80041740 0010C080 */  sll         $t8, $s0, 2
/* 0412F4 80041744 00187842 */  srl         $t7, $t8, 1
/* 0412F8 80041748 02617025 */  or          $t6, $s3, $at
/* 0412FC 8004174C 01C09825 */  move        $s3, $t6
/* 041300 80041750 25F90007 */  addiu       $t9, $t7, 0x7
/* 041304 80041754 001970C2 */  srl         $t6, $t9, 3
/* 041308 80041758 31D801FF */  andi        $t8, $t6, 0x1ff
/* 04130C 8004175C 00187A40 */  sll         $t7, $t8, 9
/* 041310 80041760 026FC825 */  or          $t9, $s3, $t7
/* 041314 80041764 00037080 */  sll         $t6, $v1, 2
/* 041318 80041768 25D80004 */  addiu       $t8, $t6, 0x4
/* 04131C 8004176C 00187842 */  srl         $t7, $t8, 1
/* 041320 80041770 AFB9007C */  sw          $t9, 0x7c($sp)
/* 041324 80041774 25F90007 */  addiu       $t9, $t7, 0x7
/* 041328 80041778 001970C2 */  srl         $t6, $t9, 3
/* 04132C 8004177C 31D801FF */  andi        $t8, $t6, 0x1ff
/* 041330 80041780 00187A40 */  sll         $t7, $t8, 9
/* 041334 80041784 026FC825 */  or          $t9, $s3, $t7
/* 041338 80041788 AFB9004C */  sw          $t9, 0x4c($sp)
/* 04133C 8004178C 17C00028 */  bnez        $fp, .L80041830
/* 041340 80041790 00E04825 */   move       $t1, $a3
/* 041344 80041794 44872000 */  mtc1        $a3, $f4
/* 041348 80041798 8FAE02CC */  lw          $t6, 0x2cc($sp)
/* 04134C 8004179C 8FA30270 */  lw          $v1, 0x270($sp)
/* 041350 800417A0 468022A0 */  cvt.s.w     $f10, $f4
/* 041354 800417A4 448E3000 */  mtc1        $t6, $f6
/* 041358 800417A8 3C014F80 */  lui         $at, 0x4f80
/* 04135C 800417AC 46803020 */  cvt.s.w     $f0, $f6
/* 041360 800417B0 460E5182 */  mul.s       $f6, $f10, $f14
/* 041364 800417B4 05C30005 */  bgezl       $t6, .L800417CC
/* 041368 800417B8 46060200 */   add.s      $f8, $f0, $f6
/* 04136C 800417BC 44814000 */  mtc1        $at, $f8
/* 041370 800417C0 00000000 */  nop
/* 041374 800417C4 46080000 */  add.s       $f0, $f0, $f8
/* 041378 800417C8 46060200 */  add.s       $f8, $f0, $f6
.L800417CC:
/* 04137C 800417CC 44835000 */  mtc1        $v1, $f10
/* 041380 800417D0 3C014F80 */  lui         $at, 0x4f80
/* 041384 800417D4 4600410D */  trunc.w.s   $f4, $f8
/* 041388 800417D8 468051A0 */  cvt.s.w     $f6, $f10
/* 04138C 800417DC 440B2000 */  mfc1        $t3, $f4
/* 041390 800417E0 00000000 */  nop
/* 041394 800417E4 000B7880 */  sll         $t7, $t3, 2
/* 041398 800417E8 04610004 */  bgez        $v1, .L800417FC
/* 04139C 800417EC 01E05825 */   move       $t3, $t7
/* 0413A0 800417F0 44814000 */  mtc1        $at, $f8
/* 0413A4 800417F4 00000000 */  nop
/* 0413A8 800417F8 46083180 */  add.s       $f6, $f6, $f8
.L800417FC:
/* 0413AC 800417FC 460E3102 */  mul.s       $f4, $f6, $f14
/* 0413B0 80041800 8FB802A8 */  lw          $t8, 0x2a8($sp)
/* 0413B4 80041804 00692023 */  subu        $a0, $v1, $t1
/* 0413B8 80041808 330FFFFF */  andi        $t7, $t8, 0xffff
/* 0413BC 8004180C 010F9825 */  or          $s3, $t0, $t7
/* 0413C0 80041810 46022282 */  mul.s       $f10, $f4, $f2
/* 0413C4 80041814 460A0200 */  add.s       $f8, $f0, $f10
/* 0413C8 80041818 4600418D */  trunc.w.s   $f6, $f8
/* 0413CC 8004181C 440A3000 */  mfc1        $t2, $f6
/* 0413D0 80041820 00000000 */  nop
/* 0413D4 80041824 000A7080 */  sll         $t6, $t2, 2
/* 0413D8 80041828 1000001D */  b           .L800418A0
/* 0413DC 8004182C 01C05025 */   move       $t2, $t6
.L80041830:
/* 0413E0 80041830 8FA30270 */  lw          $v1, 0x270($sp)
/* 0413E4 80041834 8FAE02A4 */  lw          $t6, 0x2a4($sp)
/* 0413E8 80041838 8FAB02CC */  lw          $t3, 0x2cc($sp)
/* 0413EC 8004183C 44873000 */  mtc1        $a3, $f6
/* 0413F0 80041840 01C3C021 */  addu        $t8, $t6, $v1
/* 0413F4 80041844 44982000 */  mtc1        $t8, $f4
/* 0413F8 80041848 000BC880 */  sll         $t9, $t3, 2
/* 0413FC 8004184C 03205825 */  move        $t3, $t9
/* 041400 80041850 07010005 */  bgez        $t8, .L80041868
/* 041404 80041854 468022A0 */   cvt.s.w    $f10, $f4
/* 041408 80041858 3C014F80 */  lui         $at, 0x4f80
/* 04140C 8004185C 44814000 */  mtc1        $at, $f8
/* 041410 80041860 00000000 */  nop
/* 041414 80041864 46085280 */  add.s       $f10, $f10, $f8
.L80041868:
/* 041418 80041868 46803120 */  cvt.s.w     $f4, $f6
/* 04141C 8004186C 00692023 */  subu        $a0, $v1, $t1
/* 041420 80041870 00042940 */  sll         $a1, $a0, 5
/* 041424 80041874 30AEFFFF */  andi        $t6, $a1, 0xffff
/* 041428 80041878 010E9825 */  or          $s3, $t0, $t6
/* 04142C 8004187C 460E2202 */  mul.s       $f8, $f4, $f14
/* 041430 80041880 00000000 */  nop
/* 041434 80041884 46024182 */  mul.s       $f6, $f8, $f2
/* 041438 80041888 46065101 */  sub.s       $f4, $f10, $f6
/* 04143C 8004188C 4600220D */  trunc.w.s   $f8, $f4
/* 041440 80041890 440A4000 */  mfc1        $t2, $f8
/* 041444 80041894 00000000 */  nop
/* 041448 80041898 000AC880 */  sll         $t9, $t2, 2
/* 04144C 8004189C 03205025 */  move        $t2, $t9
.L800418A0:
/* 041450 800418A0 018D0019 */  multu       $t4, $t5
/* 041454 800418A4 00401825 */  move        $v1, $v0
/* 041458 800418A8 AC750000 */  sw          $s5, 0x0($v1)
/* 04145C 800418AC 8FB80284 */  lw          $t8, 0x284($sp)
/* 041460 800418B0 24420008 */  addiu       $v0, $v0, 0x8
/* 041464 800418B4 00402825 */  move        $a1, $v0
/* 041468 800418B8 24420008 */  addiu       $v0, $v0, 0x8
/* 04146C 800418BC 3C014F80 */  lui         $at, 0x4f80
/* 041470 800418C0 00007812 */  mflo        $t7
/* 041474 800418C4 000FC840 */  sll         $t9, $t7, 1
/* 041478 800418C8 03197021 */  addu        $t6, $t8, $t9
/* 04147C 800418CC AC6E0004 */  sw          $t6, 0x4($v1)
/* 041480 800418D0 8FAF007C */  lw          $t7, 0x7c($sp)
/* 041484 800418D4 ACB20004 */  sw          $s2, 0x4($a1)
/* 041488 800418D8 3C18E600 */  lui         $t8, 0xe600
/* 04148C 800418DC ACAF0000 */  sw          $t7, 0x0($a1)
/* 041490 800418E0 00402825 */  move        $a1, $v0
/* 041494 800418E4 24420008 */  addiu       $v0, $v0, 0x8
/* 041498 800418E8 00403025 */  move        $a2, $v0
/* 04149C 800418EC ACB80000 */  sw          $t8, 0x0($a1)
/* 0414A0 800418F0 ACA00004 */  sw          $zero, 0x4($a1)
/* 0414A4 800418F4 ACDF0000 */  sw          $ra, 0x0($a2)
/* 0414A8 800418F8 8FAF0058 */  lw          $t7, 0x58($sp)
/* 0414AC 800418FC 2483FFFF */  addiu       $v1, $a0, -0x1
/* 0414B0 80041900 0003C880 */  sll         $t9, $v1, 2
/* 0414B4 80041904 33230FFF */  andi        $v1, $t9, 0xfff
/* 0414B8 80041908 24420008 */  addiu       $v0, $v0, 0x8
/* 0414BC 8004190C 00403825 */  move        $a3, $v0
/* 0414C0 80041910 01E3C025 */  or          $t8, $t7, $v1
/* 0414C4 80041914 ACD80004 */  sw          $t8, 0x4($a2)
/* 0414C8 80041918 3C19E700 */  lui         $t9, 0xe700
/* 0414CC 8004191C ACF90000 */  sw          $t9, 0x0($a3)
/* 0414D0 80041920 ACE00004 */  sw          $zero, 0x4($a3)
/* 0414D4 80041924 24420008 */  addiu       $v0, $v0, 0x8
/* 0414D8 80041928 8FAE004C */  lw          $t6, 0x4c($sp)
/* 0414DC 8004192C 00404025 */  move        $t0, $v0
/* 0414E0 80041930 24420008 */  addiu       $v0, $v0, 0x8
/* 0414E4 80041934 00402025 */  move        $a0, $v0
/* 0414E8 80041938 AD140004 */  sw          $s4, 0x4($t0)
/* 0414EC 8004193C 3C0FF200 */  lui         $t7, 0xf200
/* 0414F0 80041940 AD0E0000 */  sw          $t6, 0x0($t0)
/* 0414F4 80041944 AC8F0000 */  sw          $t7, 0x0($a0)
/* 0414F8 80041948 8FB8005C */  lw          $t8, 0x5c($sp)
/* 0414FC 8004194C 24420008 */  addiu       $v0, $v0, 0x8
/* 041500 80041950 00402825 */  move        $a1, $v0
/* 041504 80041954 0303C825 */  or          $t9, $t8, $v1
/* 041508 80041958 AC990004 */  sw          $t9, 0x4($a0)
/* 04150C 8004195C 8FAE0274 */  lw          $t6, 0x274($sp)
/* 041510 80041960 24420008 */  addiu       $v0, $v0, 0x8
/* 041514 80041964 448E5000 */  mtc1        $t6, $f10
/* 041518 80041968 05C10004 */  bgez        $t6, .L8004197C
/* 04151C 8004196C 468051A0 */   cvt.s.w    $f6, $f10
/* 041520 80041970 44812000 */  mtc1        $at, $f4
/* 041524 80041974 00000000 */  nop
/* 041528 80041978 46043180 */  add.s       $f6, $f6, $f4
.L8004197C:
/* 04152C 8004197C 460C3202 */  mul.s       $f8, $f6, $f12
/* 041530 80041980 3C01E400 */  lui         $at, 0xe400
/* 041534 80041984 00401825 */  move        $v1, $v0
/* 041538 80041988 24420008 */  addiu       $v0, $v0, 0x8
/* 04153C 8004198C 00402025 */  move        $a0, $v0
/* 041540 80041990 24420008 */  addiu       $v0, $v0, 0x8
/* 041544 80041994 46124282 */  mul.s       $f10, $f8, $f18
/* 041548 80041998 460A8100 */  add.s       $f4, $f16, $f10
/* 04154C 8004199C 4600218D */  trunc.w.s   $f6, $f4
/* 041550 800419A0 44183000 */  mfc1        $t8, $f6
/* 041554 800419A4 00000000 */  nop
/* 041558 800419A8 0018C880 */  sll         $t9, $t8, 2
/* 04155C 800419AC 332E0FFF */  andi        $t6, $t9, 0xfff
/* 041560 800419B0 000E7B00 */  sll         $t7, $t6, 12
/* 041564 800419B4 01E1C025 */  or          $t8, $t7, $at
/* 041568 800419B8 31590FFF */  andi        $t9, $t2, 0xfff
/* 04156C 800419BC 03197025 */  or          $t6, $t8, $t9
/* 041570 800419C0 316F0FFF */  andi        $t7, $t3, 0xfff
/* 041574 800419C4 02CFC025 */  or          $t8, $s6, $t7
/* 041578 800419C8 ACAE0000 */  sw          $t6, 0x0($a1)
/* 04157C 800419CC ACB80004 */  sw          $t8, 0x4($a1)
/* 041580 800419D0 3C19E100 */  lui         $t9, 0xe100
/* 041584 800419D4 AC790000 */  sw          $t9, 0x0($v1)
/* 041588 800419D8 AC730004 */  sw          $s3, 0x4($v1)
/* 04158C 800419DC 3C0EF100 */  lui         $t6, 0xf100
/* 041590 800419E0 AC8E0000 */  sw          $t6, 0x0($a0)
/* 041594 800419E4 10000223 */  b           .L80042274
/* 041598 800419E8 AC970004 */   sw         $s7, 0x4($a0)
.L800419EC:
/* 04159C 800419EC 00401825 */  move        $v1, $v0
/* 0415A0 800419F0 3C0FE300 */  lui         $t7, 0xe300
/* 0415A4 800419F4 35EF1001 */  ori         $t7, $t7, 0x1001
/* 0415A8 800419F8 AC6F0000 */  sw          $t7, 0x0($v1)
/* 0415AC 800419FC AC600004 */  sw          $zero, 0x4($v1)
/* 0415B0 80041A00 8FB8026C */  lw          $t8, 0x26c($sp)
/* 0415B4 80041A04 24190400 */  addiu       $t9, $zero, 0x400
/* 0415B8 80041A08 24420008 */  addiu       $v0, $v0, 0x8
/* 0415BC 80041A0C 0338001B */  divu        $zero, $t9, $t8
/* 0415C0 80041A10 00002012 */  mflo        $a0
/* 0415C4 80041A14 0085082B */  sltu        $at, $a0, $a1
/* 0415C8 80041A18 17000002 */  bnez        $t8, .L80041A24
/* 0415CC 80041A1C 00000000 */   nop
/* 0415D0 80041A20 0007000D */  break       7
.L80041A24:
/* 0415D4 80041A24 00005825 */  move        $t3, $zero
/* 0415D8 80041A28 10200003 */  beqz        $at, .L80041A38
/* 0415DC 80041A2C 8FAE02E8 */   lw         $t6, 0x2e8($sp)
/* 0415E0 80041A30 10000002 */  b           .L80041A3C
/* 0415E4 80041A34 00806825 */   move       $t5, $a0
.L80041A38:
/* 0415E8 80041A38 00A06825 */  move        $t5, $a1
.L80041A3C:
/* 0415EC 80041A3C 11C00006 */  beqz        $t6, .L80041A58
/* 0415F0 80041A40 25ADFFFF */   addiu      $t5, $t5, -0x1
/* 0415F4 80041A44 8FAF0274 */  lw          $t7, 0x274($sp)
/* 0415F8 80041A48 0010C023 */  negu        $t8, $s0
/* 0415FC 80041A4C AFB80290 */  sw          $t8, 0x290($sp)
/* 041600 80041A50 000FC940 */  sll         $t9, $t7, 5
/* 041604 80041A54 AFB902AC */  sw          $t9, 0x2ac($sp)
.L80041A58:
/* 041608 80041A58 8FBE02EC */  lw          $fp, 0x2ec($sp)
/* 04160C 80041A5C 3C013FF0 */  lui         $at, 0x3ff0
/* 041610 80041A60 24090001 */  addiu       $t1, $zero, 0x1
/* 041614 80041A64 13C00019 */  beqz        $fp, .L80041ACC
/* 041618 80041A68 00006025 */   move       $t4, $zero
/* 04161C 80041A6C 44815800 */  mtc1        $at, $f11
/* 041620 80041A70 44805000 */  mtc1        $zero, $f10
/* 041624 80041A74 46007221 */  cvt.d.s     $f8, $f14
/* 041628 80041A78 44853000 */  mtc1        $a1, $f6
/* 04162C 80041A7C 462A4101 */  sub.d       $f4, $f8, $f10
/* 041630 80041A80 3C014F80 */  lui         $at, 0x4f80
/* 041634 80041A84 04A10004 */  bgez        $a1, .L80041A98
/* 041638 80041A88 46803220 */   cvt.s.w    $f8, $f6
/* 04163C 80041A8C 44815000 */  mtc1        $at, $f10
/* 041640 80041A90 00000000 */  nop
/* 041644 80041A94 460A4200 */  add.s       $f8, $f8, $f10
.L80041A98:
/* 041648 80041A98 460041A1 */  cvt.d.s     $f6, $f8
/* 04164C 80041A9C 8FB902CC */  lw          $t9, 0x2cc($sp)
/* 041650 80041AA0 46262282 */  mul.d       $f10, $f4, $f6
/* 041654 80041AA4 000D7140 */  sll         $t6, $t5, 5
/* 041658 80041AA8 AFAE02A8 */  sw          $t6, 0x2a8($sp)
/* 04165C 80041AAC 46225200 */  add.d       $f8, $f10, $f2
/* 041660 80041AB0 4620410D */  trunc.w.d   $f4, $f8
/* 041664 80041AB4 440F2000 */  mfc1        $t7, $f4
/* 041668 80041AB8 00000000 */  nop
/* 04166C 80041ABC 01F9C021 */  addu        $t8, $t7, $t9
/* 041670 80041AC0 00117823 */  negu        $t7, $s1
/* 041674 80041AC4 AFB802A4 */  sw          $t8, 0x2a4($sp)
/* 041678 80041AC8 AFAF028C */  sw          $t7, 0x28c($sp)
.L80041ACC:
/* 04167C 80041ACC 00AD8823 */  subu        $s1, $a1, $t5
/* 041680 80041AD0 2631FFFF */  addiu       $s1, $s1, -0x1
/* 041684 80041AD4 122000F4 */  beqz        $s1, .L80041EA8
/* 041688 80041AD8 8FB902DC */   lw         $t9, 0x2dc($sp)
/* 04168C 80041ADC 44993000 */  mtc1        $t9, $f6
/* 041690 80041AE0 8FBF026C */  lw          $ra, 0x26c($sp)
/* 041694 80041AE4 00003825 */  move        $a3, $zero
/* 041698 80041AE8 01A04025 */  move        $t0, $t5
/* 04169C 80041AEC 07210005 */  bgez        $t9, .L80041B04
/* 0416A0 80041AF0 468030A0 */   cvt.s.w    $f2, $f6
/* 0416A4 80041AF4 3C014F80 */  lui         $at, 0x4f80
/* 0416A8 80041AF8 44815000 */  mtc1        $at, $f10
/* 0416AC 80041AFC 00000000 */  nop
/* 0416B0 80041B00 460A1080 */  add.s       $f2, $f2, $f10
.L80041B04:
/* 0416B4 80041B04 8FA402D4 */  lw          $a0, 0x2d4($sp)
/* 0416B8 80041B08 8FA502B4 */  lw          $a1, 0x2b4($sp)
/* 0416BC 80041B0C 8FA602D0 */  lw          $a2, 0x2d0($sp)
/* 0416C0 80041B10 30980003 */  andi        $t8, $a0, 0x3
/* 0416C4 80041B14 00182480 */  sll         $a0, $t8, 18
/* 0416C8 80041B18 8FAA02B8 */  lw          $t2, 0x2b8($sp)
/* 0416CC 80041B1C 30AF000F */  andi        $t7, $a1, 0xf
/* 0416D0 80041B20 30D80003 */  andi        $t8, $a2, 0x3
/* 0416D4 80041B24 00183200 */  sll         $a2, $t8, 8
/* 0416D8 80041B28 000F2B80 */  sll         $a1, $t7, 14
/* 0416DC 80041B2C 3C010700 */  lui         $at, 0x700
/* 0416E0 80041B30 0081C025 */  or          $t8, $a0, $at
/* 0416E4 80041B34 03057025 */  or          $t6, $t8, $a1
/* 0416E8 80041B38 314F000F */  andi        $t7, $t2, 0xf
/* 0416EC 80041B3C 000F5100 */  sll         $t2, $t7, 4
/* 0416F0 80041B40 01C67825 */  or          $t7, $t6, $a2
/* 0416F4 80041B44 0085C025 */  or          $t8, $a0, $a1
/* 0416F8 80041B48 03067025 */  or          $t6, $t8, $a2
/* 0416FC 80041B4C 01CAA025 */  or          $s4, $t6, $t2
/* 041700 80041B50 8FAE0274 */  lw          $t6, 0x274($sp)
/* 041704 80041B54 000D5880 */  sll         $t3, $t5, 2
/* 041708 80041B58 31790FFF */  andi        $t9, $t3, 0xfff
/* 04170C 80041B5C 01EA9025 */  or          $s2, $t7, $t2
/* 041710 80041B60 27E3FFFF */  addiu       $v1, $ra, -0x1
/* 041714 80041B64 00037880 */  sll         $t7, $v1, 2
/* 041718 80041B68 03205825 */  move        $t3, $t9
/* 04171C 80041B6C 448E4000 */  mtc1        $t6, $f8
/* 041720 80041B70 31F90FFF */  andi        $t9, $t7, 0xfff
/* 041724 80041B74 0019C300 */  sll         $t8, $t9, 12
/* 041728 80041B78 AFB8005C */  sw          $t8, 0x5c($sp)
/* 04172C 80041B7C 030B8025 */  or          $s0, $t8, $t3
/* 041730 80041B80 05C10005 */  bgez        $t6, .L80041B98
/* 041734 80041B84 46804120 */   cvt.s.w    $f4, $f8
/* 041738 80041B88 3C014F80 */  lui         $at, 0x4f80
/* 04173C 80041B8C 44813000 */  mtc1        $at, $f6
/* 041740 80041B90 00000000 */  nop
/* 041744 80041B94 46062100 */  add.s       $f4, $f4, $f6
.L80041B98:
/* 041748 80041B98 8FAF02D8 */  lw          $t7, 0x2d8($sp)
/* 04174C 80041B9C 460C2282 */  mul.s       $f10, $f4, $f12
/* 041750 80041BA0 3C014F80 */  lui         $at, 0x4f80
/* 041754 80041BA4 448F4000 */  mtc1        $t7, $f8
/* 041758 80041BA8 05E10004 */  bgez        $t7, .L80041BBC
/* 04175C 80041BAC 468041A0 */   cvt.s.w    $f6, $f8
/* 041760 80041BB0 44812000 */  mtc1        $at, $f4
/* 041764 80041BB4 00000000 */  nop
/* 041768 80041BB8 46043180 */  add.s       $f6, $f6, $f4
.L80041BBC:
/* 04176C 80041BBC 8FB902C8 */  lw          $t9, 0x2c8($sp)
/* 041770 80041BC0 46065202 */  mul.s       $f8, $f10, $f6
/* 041774 80041BC4 3C014F80 */  lui         $at, 0x4f80
/* 041778 80041BC8 44992000 */  mtc1        $t9, $f4
/* 04177C 80041BCC 07210004 */  bgez        $t9, .L80041BE0
/* 041780 80041BD0 468022A0 */   cvt.s.w    $f10, $f4
/* 041784 80041BD4 44813000 */  mtc1        $at, $f6
/* 041788 80041BD8 00000000 */  nop
/* 04178C 80041BDC 46065280 */  add.s       $f10, $f10, $f6
.L80041BE0:
/* 041790 80041BE0 46085100 */  add.s       $f4, $f10, $f8
/* 041794 80041BE4 3C01E400 */  lui         $at, 0xe400
/* 041798 80041BE8 0019B080 */  sll         $s6, $t9, 2
/* 04179C 80041BEC 8FB902A8 */  lw          $t9, 0x2a8($sp)
/* 0417A0 80041BF0 4600218D */  trunc.w.s   $f6, $f4
/* 0417A4 80041BF4 44153000 */  mfc1        $s5, $f6
/* 0417A8 80041BF8 00000000 */  nop
/* 0417AC 80041BFC 00157880 */  sll         $t7, $s5, 2
/* 0417B0 80041C00 31EE0FFF */  andi        $t6, $t7, 0xfff
/* 0417B4 80041C04 000E7B00 */  sll         $t7, $t6, 12
/* 0417B8 80041C08 01E1A825 */  or          $s5, $t7, $at
/* 0417BC 80041C0C 32CF0FFF */  andi        $t7, $s6, 0xfff
/* 0417C0 80041C10 000FB300 */  sll         $s6, $t7, 12
/* 0417C4 80041C14 8FAF02AC */  lw          $t7, 0x2ac($sp)
/* 0417C8 80041C18 3C010700 */  lui         $at, 0x700
/* 0417CC 80041C1C 000F7400 */  sll         $t6, $t7, 16
/* 0417D0 80041C20 332FFFFF */  andi        $t7, $t9, 0xffff
/* 0417D4 80041C24 01CF9825 */  or          $s3, $t6, $t7
/* 0417D8 80041C28 8FAE0290 */  lw          $t6, 0x290($sp)
/* 0417DC 80041C2C 8FB9028C */  lw          $t9, 0x28c($sp)
/* 0417E0 80041C30 000E7C00 */  sll         $t7, $t6, 16
/* 0417E4 80041C34 332EFFFF */  andi        $t6, $t9, 0xffff
/* 0417E8 80041C38 01EEB825 */  or          $s7, $t7, $t6
/* 0417EC 80041C3C 0301C825 */  or          $t9, $t8, $at
/* 0417F0 80041C40 032B7825 */  or          $t7, $t9, $t3
/* 0417F4 80041C44 27EEFFFF */  addiu       $t6, $ra, -0x1
/* 0417F8 80041C48 31D80FFF */  andi        $t8, $t6, 0xfff
/* 0417FC 80041C4C AFAF0058 */  sw          $t7, 0x58($sp)
/* 041800 80041C50 3C01FD18 */  lui         $at, 0xfd18
/* 041804 80041C54 0301C825 */  or          $t9, $t8, $at
/* 041808 80041C58 001F7880 */  sll         $t7, $ra, 2
/* 04180C 80041C5C 000F7042 */  srl         $t6, $t7, 1
/* 041810 80041C60 25D80007 */  addiu       $t8, $t6, 0x7
/* 041814 80041C64 AFB90088 */  sw          $t9, 0x88($sp)
/* 041818 80041C68 0018C8C2 */  srl         $t9, $t8, 3
/* 04181C 80041C6C 332F01FF */  andi        $t7, $t9, 0x1ff
/* 041820 80041C70 000F7240 */  sll         $t6, $t7, 9
/* 041824 80041C74 3C01F518 */  lui         $at, 0xf518
/* 041828 80041C78 01C1C025 */  or          $t8, $t6, $at
/* 04182C 80041C7C 0003C880 */  sll         $t9, $v1, 2
/* 041830 80041C80 272F0004 */  addiu       $t7, $t9, 0x4
/* 041834 80041C84 000F7042 */  srl         $t6, $t7, 1
/* 041838 80041C88 AFB80080 */  sw          $t8, 0x80($sp)
/* 04183C 80041C8C 25D80007 */  addiu       $t8, $t6, 0x7
/* 041840 80041C90 0018C8C2 */  srl         $t9, $t8, 3
/* 041844 80041C94 332F01FF */  andi        $t7, $t9, 0x1ff
/* 041848 80041C98 000F7240 */  sll         $t6, $t7, 9
/* 04184C 80041C9C 01C1C025 */  or          $t8, $t6, $at
/* 041850 80041CA0 AFB8007C */  sw          $t8, 0x7c($sp)
/* 041854 80041CA4 3C1FF400 */  lui         $ra, 0xf400
.L80041CA8:
/* 041858 80041CA8 17C0001F */  bnez        $fp, .L80041D28
/* 04185C 80041CAC 00401825 */   move       $v1, $v0
/* 041860 80041CB0 44872000 */  mtc1        $a3, $f4
/* 041864 80041CB4 8FB902CC */  lw          $t9, 0x2cc($sp)
/* 041868 80041CB8 3C014F80 */  lui         $at, 0x4f80
/* 04186C 80041CBC 468021A0 */  cvt.s.w     $f6, $f4
/* 041870 80041CC0 44995000 */  mtc1        $t9, $f10
/* 041874 80041CC4 00000000 */  nop
/* 041878 80041CC8 46805020 */  cvt.s.w     $f0, $f10
/* 04187C 80041CCC 460E3282 */  mul.s       $f10, $f6, $f14
/* 041880 80041CD0 07230005 */  bgezl       $t9, .L80041CE8
/* 041884 80041CD4 44883000 */   mtc1       $t0, $f6
/* 041888 80041CD8 44814000 */  mtc1        $at, $f8
/* 04188C 80041CDC 00000000 */  nop
/* 041890 80041CE0 46080000 */  add.s       $f0, $f0, $f8
/* 041894 80041CE4 44883000 */  mtc1        $t0, $f6
.L80041CE8:
/* 041898 80041CE8 460A0200 */  add.s       $f8, $f0, $f10
/* 04189C 80041CEC 468032A0 */  cvt.s.w     $f10, $f6
/* 0418A0 80041CF0 4600410D */  trunc.w.s   $f4, $f8
/* 0418A4 80041CF4 460E5202 */  mul.s       $f8, $f10, $f14
/* 0418A8 80041CF8 440B2000 */  mfc1        $t3, $f4
/* 0418AC 80041CFC 00000000 */  nop
/* 0418B0 80041D00 000B7080 */  sll         $t6, $t3, 2
/* 0418B4 80041D04 46024102 */  mul.s       $f4, $f8, $f2
/* 0418B8 80041D08 01C05825 */  move        $t3, $t6
/* 0418BC 80041D0C 46040180 */  add.s       $f6, $f0, $f4
/* 0418C0 80041D10 4600328D */  trunc.w.s   $f10, $f6
/* 0418C4 80041D14 440A5000 */  mfc1        $t2, $f10
/* 0418C8 80041D18 00000000 */  nop
/* 0418CC 80041D1C 000AC880 */  sll         $t9, $t2, 2
/* 0418D0 80041D20 10000020 */  b           .L80041DA4
/* 0418D4 80041D24 03205025 */   move       $t2, $t9
.L80041D28:
/* 0418D8 80041D28 44883000 */  mtc1        $t0, $f6
/* 0418DC 80041D2C 8FAF02A4 */  lw          $t7, 0x2a4($sp)
/* 0418E0 80041D30 8FAE0270 */  lw          $t6, 0x270($sp)
/* 0418E4 80041D34 468032A0 */  cvt.s.w     $f10, $f6
/* 0418E8 80041D38 3C014F80 */  lui         $at, 0x4f80
/* 0418EC 80041D3C 01EEC021 */  addu        $t8, $t7, $t6
/* 0418F0 80041D40 44984000 */  mtc1        $t8, $f8
/* 0418F4 80041D44 00000000 */  nop
/* 0418F8 80041D48 46804020 */  cvt.s.w     $f0, $f8
/* 0418FC 80041D4C 460E5202 */  mul.s       $f8, $f10, $f14
/* 041900 80041D50 07030005 */  bgezl       $t8, .L80041D68
/* 041904 80041D54 44875000 */   mtc1       $a3, $f10
/* 041908 80041D58 44812000 */  mtc1        $at, $f4
/* 04190C 80041D5C 00000000 */  nop
/* 041910 80041D60 46040000 */  add.s       $f0, $f0, $f4
/* 041914 80041D64 44875000 */  mtc1        $a3, $f10
.L80041D68:
/* 041918 80041D68 46080101 */  sub.s       $f4, $f0, $f8
/* 04191C 80041D6C 46805220 */  cvt.s.w     $f8, $f10
/* 041920 80041D70 4600218D */  trunc.w.s   $f6, $f4
/* 041924 80041D74 460E4102 */  mul.s       $f4, $f8, $f14
/* 041928 80041D78 440B3000 */  mfc1        $t3, $f6
/* 04192C 80041D7C 00000000 */  nop
/* 041930 80041D80 000B7880 */  sll         $t7, $t3, 2
/* 041934 80041D84 46022182 */  mul.s       $f6, $f4, $f2
/* 041938 80041D88 01E05825 */  move        $t3, $t7
/* 04193C 80041D8C 46060281 */  sub.s       $f10, $f0, $f6
/* 041940 80041D90 4600520D */  trunc.w.s   $f8, $f10
/* 041944 80041D94 440A4000 */  mfc1        $t2, $f8
/* 041948 80041D98 00000000 */  nop
/* 04194C 80041D9C 000AC080 */  sll         $t8, $t2, 2
/* 041950 80041DA0 03005025 */  move        $t2, $t8
.L80041DA4:
/* 041954 80041DA4 018D0019 */  multu       $t4, $t5
/* 041958 80041DA8 8FB90088 */  lw          $t9, 0x88($sp)
/* 04195C 80041DAC 24420008 */  addiu       $v0, $v0, 0x8
/* 041960 80041DB0 00402025 */  move        $a0, $v0
/* 041964 80041DB4 AC790000 */  sw          $t9, 0x0($v1)
/* 041968 80041DB8 8FAF0284 */  lw          $t7, 0x284($sp)
/* 04196C 80041DBC 24420008 */  addiu       $v0, $v0, 0x8
/* 041970 80041DC0 00403025 */  move        $a2, $v0
/* 041974 80041DC4 24420008 */  addiu       $v0, $v0, 0x8
/* 041978 80041DC8 00ED3821 */  addu        $a3, $a3, $t5
/* 04197C 80041DCC 00007012 */  mflo        $t6
/* 041980 80041DD0 000EC080 */  sll         $t8, $t6, 2
/* 041984 80041DD4 01F8C821 */  addu        $t9, $t7, $t8
/* 041988 80041DD8 AC790004 */  sw          $t9, 0x4($v1)
/* 04198C 80041DDC 8FAE0080 */  lw          $t6, 0x80($sp)
/* 041990 80041DE0 AC920004 */  sw          $s2, 0x4($a0)
/* 041994 80041DE4 3C0FE600 */  lui         $t7, 0xe600
/* 041998 80041DE8 AC8E0000 */  sw          $t6, 0x0($a0)
/* 04199C 80041DEC ACC00004 */  sw          $zero, 0x4($a2)
/* 0419A0 80041DF0 ACCF0000 */  sw          $t7, 0x0($a2)
/* 0419A4 80041DF4 00401825 */  move        $v1, $v0
/* 0419A8 80041DF8 AC7F0000 */  sw          $ra, 0x0($v1)
/* 0419AC 80041DFC 8FB80058 */  lw          $t8, 0x58($sp)
/* 0419B0 80041E00 24420008 */  addiu       $v0, $v0, 0x8
/* 0419B4 80041E04 00402025 */  move        $a0, $v0
/* 0419B8 80041E08 AC780004 */  sw          $t8, 0x4($v1)
/* 0419BC 80041E0C 3C19E700 */  lui         $t9, 0xe700
/* 0419C0 80041E10 AC990000 */  sw          $t9, 0x0($a0)
/* 0419C4 80041E14 AC800004 */  sw          $zero, 0x4($a0)
/* 0419C8 80041E18 8FAE007C */  lw          $t6, 0x7c($sp)
/* 0419CC 80041E1C 24420008 */  addiu       $v0, $v0, 0x8
/* 0419D0 80041E20 00402825 */  move        $a1, $v0
/* 0419D4 80041E24 24420008 */  addiu       $v0, $v0, 0x8
/* 0419D8 80041E28 00401825 */  move        $v1, $v0
/* 0419DC 80041E2C ACAE0000 */  sw          $t6, 0x0($a1)
/* 0419E0 80041E30 ACB40004 */  sw          $s4, 0x4($a1)
/* 0419E4 80041E34 3C0FF200 */  lui         $t7, 0xf200
/* 0419E8 80041E38 AC6F0000 */  sw          $t7, 0x0($v1)
/* 0419EC 80041E3C 24420008 */  addiu       $v0, $v0, 0x8
/* 0419F0 80041E40 AC700004 */  sw          $s0, 0x4($v1)
/* 0419F4 80041E44 00402025 */  move        $a0, $v0
/* 0419F8 80041E48 31580FFF */  andi        $t8, $t2, 0xfff
/* 0419FC 80041E4C 02B8C825 */  or          $t9, $s5, $t8
/* 041A00 80041E50 24420008 */  addiu       $v0, $v0, 0x8
/* 041A04 80041E54 316E0FFF */  andi        $t6, $t3, 0xfff
/* 041A08 80041E58 02CE7825 */  or          $t7, $s6, $t6
/* 041A0C 80041E5C 00402825 */  move        $a1, $v0
/* 041A10 80041E60 AC990000 */  sw          $t9, 0x0($a0)
/* 041A14 80041E64 AC8F0004 */  sw          $t7, 0x4($a0)
/* 041A18 80041E68 24420008 */  addiu       $v0, $v0, 0x8
/* 041A1C 80041E6C 3C18E100 */  lui         $t8, 0xe100
/* 041A20 80041E70 ACB80000 */  sw          $t8, 0x0($a1)
/* 041A24 80041E74 00401825 */  move        $v1, $v0
/* 041A28 80041E78 ACB30004 */  sw          $s3, 0x4($a1)
/* 041A2C 80041E7C 3C19F100 */  lui         $t9, 0xf100
/* 041A30 80041E80 AC790000 */  sw          $t9, 0x0($v1)
/* 041A34 80041E84 AC770004 */  sw          $s7, 0x4($v1)
/* 041A38 80041E88 8FAE026C */  lw          $t6, 0x26c($sp)
/* 041A3C 80041E8C 01205825 */  move        $t3, $t1
/* 041A40 80041E90 00F1082B */  sltu        $at, $a3, $s1
/* 041A44 80041E94 25290001 */  addiu       $t1, $t1, 0x1
/* 041A48 80041E98 010D4021 */  addu        $t0, $t0, $t5
/* 041A4C 80041E9C 24420008 */  addiu       $v0, $v0, 0x8
/* 041A50 80041EA0 1420FF81 */  bnez        $at, .L80041CA8
/* 041A54 80041EA4 018E6021 */   addu       $t4, $t4, $t6
.L80041EA8:
/* 041A58 80041EA8 016D0019 */  multu       $t3, $t5
/* 041A5C 80041EAC 8FAF02DC */  lw          $t7, 0x2dc($sp)
/* 041A60 80041EB0 8FA402D4 */  lw          $a0, 0x2d4($sp)
/* 041A64 80041EB4 8FA502B4 */  lw          $a1, 0x2b4($sp)
/* 041A68 80041EB8 448F2000 */  mtc1        $t7, $f4
/* 041A6C 80041EBC 30980003 */  andi        $t8, $a0, 0x3
/* 041A70 80041EC0 8FB0026C */  lw          $s0, 0x26c($sp)
/* 041A74 80041EC4 8FB102C8 */  lw          $s1, 0x2c8($sp)
/* 041A78 80041EC8 3C1FF400 */  lui         $ra, 0xf400
/* 041A7C 80041ECC 00182480 */  sll         $a0, $t8, 18
/* 041A80 80041ED0 00003812 */  mflo        $a3
/* 041A84 80041ED4 30AE000F */  andi        $t6, $a1, 0xf
/* 041A88 80041ED8 05E10005 */  bgez        $t7, .L80041EF0
/* 041A8C 80041EDC 468020A0 */   cvt.s.w    $f2, $f4
/* 041A90 80041EE0 3C014F80 */  lui         $at, 0x4f80
/* 041A94 80041EE4 44813000 */  mtc1        $at, $f6
/* 041A98 80041EE8 00000000 */  nop
/* 041A9C 80041EEC 46061080 */  add.s       $f2, $f2, $f6
.L80041EF0:
/* 041AA0 80041EF0 8FA602D0 */  lw          $a2, 0x2d0($sp)
/* 041AA4 80041EF4 020B0019 */  multu       $s0, $t3
/* 041AA8 80041EF8 000E2B80 */  sll         $a1, $t6, 14
/* 041AAC 80041EFC 30D80003 */  andi        $t8, $a2, 0x3
/* 041AB0 80041F00 00183200 */  sll         $a2, $t8, 8
/* 041AB4 80041F04 3C010700 */  lui         $at, 0x700
/* 041AB8 80041F08 0081C025 */  or          $t8, $a0, $at
/* 041ABC 80041F0C 8FAA02B8 */  lw          $t2, 0x2b8($sp)
/* 041AC0 80041F10 0305C825 */  or          $t9, $t8, $a1
/* 041AC4 80041F14 00857825 */  or          $t7, $a0, $a1
/* 041AC8 80041F18 01E6C025 */  or          $t8, $t7, $a2
/* 041ACC 80041F1C 8FAF0274 */  lw          $t7, 0x274($sp)
/* 041AD0 80041F20 314E000F */  andi        $t6, $t2, 0xf
/* 041AD4 80041F24 000E5100 */  sll         $t2, $t6, 4
/* 041AD8 80041F28 2603FFFF */  addiu       $v1, $s0, -0x1
/* 041ADC 80041F2C 448F5000 */  mtc1        $t7, $f10
/* 041AE0 80041F30 00039880 */  sll         $s3, $v1, 2
/* 041AE4 80041F34 03267025 */  or          $t6, $t9, $a2
/* 041AE8 80041F38 32790FFF */  andi        $t9, $s3, 0xfff
/* 041AEC 80041F3C 00006012 */  mflo        $t4
/* 041AF0 80041F40 00199B00 */  sll         $s3, $t9, 12
/* 041AF4 80041F44 01CA9025 */  or          $s2, $t6, $t2
/* 041AF8 80041F48 030AA025 */  or          $s4, $t8, $t2
/* 041AFC 80041F4C 05E10005 */  bgez        $t7, .L80041F64
/* 041B00 80041F50 46805220 */   cvt.s.w    $f8, $f10
/* 041B04 80041F54 3C014F80 */  lui         $at, 0x4f80
/* 041B08 80041F58 44812000 */  mtc1        $at, $f4
/* 041B0C 80041F5C 00000000 */  nop
/* 041B10 80041F60 46044200 */  add.s       $f8, $f8, $f4
.L80041F64:
/* 041B14 80041F64 8FB802D8 */  lw          $t8, 0x2d8($sp)
/* 041B18 80041F68 460C4182 */  mul.s       $f6, $f8, $f12
/* 041B1C 80041F6C 3C014F80 */  lui         $at, 0x4f80
/* 041B20 80041F70 44985000 */  mtc1        $t8, $f10
/* 041B24 80041F74 07010004 */  bgez        $t8, .L80041F88
/* 041B28 80041F78 46805120 */   cvt.s.w    $f4, $f10
/* 041B2C 80041F7C 44814000 */  mtc1        $at, $f8
/* 041B30 80041F80 00000000 */  nop
/* 041B34 80041F84 46082100 */  add.s       $f4, $f4, $f8
.L80041F88:
/* 041B38 80041F88 44914000 */  mtc1        $s1, $f8
/* 041B3C 80041F8C 46043282 */  mul.s       $f10, $f6, $f4
/* 041B40 80041F90 3C014F80 */  lui         $at, 0x4f80
/* 041B44 80041F94 06210004 */  bgez        $s1, .L80041FA8
/* 041B48 80041F98 468041A0 */   cvt.s.w    $f6, $f8
/* 041B4C 80041F9C 44812000 */  mtc1        $at, $f4
/* 041B50 80041FA0 00000000 */  nop
/* 041B54 80041FA4 46043180 */  add.s       $f6, $f6, $f4
.L80041FA8:
/* 041B58 80041FA8 460A3200 */  add.s       $f8, $f6, $f10
/* 041B5C 80041FAC 3C01E400 */  lui         $at, 0xe400
/* 041B60 80041FB0 8FB9028C */  lw          $t9, 0x28c($sp)
/* 041B64 80041FB4 0011B080 */  sll         $s6, $s1, 2
/* 041B68 80041FB8 4600410D */  trunc.w.s   $f4, $f8
/* 041B6C 80041FBC 00E04825 */  move        $t1, $a3
/* 041B70 80041FC0 AFB3005C */  sw          $s3, 0x5c($sp)
/* 041B74 80041FC4 8FAB02CC */  lw          $t3, 0x2cc($sp)
/* 041B78 80041FC8 44152000 */  mfc1        $s5, $f4
/* 041B7C 80041FCC 00000000 */  nop
/* 041B80 80041FD0 00157080 */  sll         $t6, $s5, 2
/* 041B84 80041FD4 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 041B88 80041FD8 000FC300 */  sll         $t8, $t7, 12
/* 041B8C 80041FDC 0301A825 */  or          $s5, $t8, $at
/* 041B90 80041FE0 8FB802AC */  lw          $t8, 0x2ac($sp)
/* 041B94 80041FE4 8FAF0290 */  lw          $t7, 0x290($sp)
/* 041B98 80041FE8 32CE0FFF */  andi        $t6, $s6, 0xfff
/* 041B9C 80041FEC 000EB300 */  sll         $s6, $t6, 12
/* 041BA0 80041FF0 00184400 */  sll         $t0, $t8, 16
/* 041BA4 80041FF4 3C010700 */  lui         $at, 0x700
/* 041BA8 80041FF8 332EFFFF */  andi        $t6, $t9, 0xffff
/* 041BAC 80041FFC 000FC400 */  sll         $t8, $t7, 16
/* 041BB0 80042000 02617825 */  or          $t7, $s3, $at
/* 041BB4 80042004 030EB825 */  or          $s7, $t8, $t6
/* 041BB8 80042008 2619FFFF */  addiu       $t9, $s0, -0x1
/* 041BBC 8004200C 33380FFF */  andi        $t8, $t9, 0xfff
/* 041BC0 80042010 AFAF0058 */  sw          $t7, 0x58($sp)
/* 041BC4 80042014 3C01FD18 */  lui         $at, 0xfd18
/* 041BC8 80042018 03017025 */  or          $t6, $t8, $at
/* 041BCC 8004201C 00107880 */  sll         $t7, $s0, 2
/* 041BD0 80042020 000FC842 */  srl         $t9, $t7, 1
/* 041BD4 80042024 27380007 */  addiu       $t8, $t9, 0x7
/* 041BD8 80042028 AFAE0088 */  sw          $t6, 0x88($sp)
/* 041BDC 8004202C 001870C2 */  srl         $t6, $t8, 3
/* 041BE0 80042030 31CF01FF */  andi        $t7, $t6, 0x1ff
/* 041BE4 80042034 000FCA40 */  sll         $t9, $t7, 9
/* 041BE8 80042038 3C01F518 */  lui         $at, 0xf518
/* 041BEC 8004203C 0321C025 */  or          $t8, $t9, $at
/* 041BF0 80042040 00037080 */  sll         $t6, $v1, 2
/* 041BF4 80042044 25CF0004 */  addiu       $t7, $t6, 0x4
/* 041BF8 80042048 000FC842 */  srl         $t9, $t7, 1
/* 041BFC 8004204C AFB80080 */  sw          $t8, 0x80($sp)
/* 041C00 80042050 27380007 */  addiu       $t8, $t9, 0x7
/* 041C04 80042054 001870C2 */  srl         $t6, $t8, 3
/* 041C08 80042058 31CF01FF */  andi        $t7, $t6, 0x1ff
/* 041C0C 8004205C 000FCA40 */  sll         $t9, $t7, 9
/* 041C10 80042060 0321C025 */  or          $t8, $t9, $at
/* 041C14 80042064 17C00028 */  bnez        $fp, .L80042108
/* 041C18 80042068 AFB8007C */   sw         $t8, 0x7c($sp)
/* 041C1C 8004206C 44874000 */  mtc1        $a3, $f8
/* 041C20 80042070 8FAE02CC */  lw          $t6, 0x2cc($sp)
/* 041C24 80042074 8FA30270 */  lw          $v1, 0x270($sp)
/* 041C28 80042078 46804120 */  cvt.s.w     $f4, $f8
/* 041C2C 8004207C 448E3000 */  mtc1        $t6, $f6
/* 041C30 80042080 3C014F80 */  lui         $at, 0x4f80
/* 041C34 80042084 46803020 */  cvt.s.w     $f0, $f6
/* 041C38 80042088 460E2182 */  mul.s       $f6, $f4, $f14
/* 041C3C 8004208C 05C30005 */  bgezl       $t6, .L800420A4
/* 041C40 80042090 46060280 */   add.s      $f10, $f0, $f6
/* 041C44 80042094 44815000 */  mtc1        $at, $f10
/* 041C48 80042098 00000000 */  nop
/* 041C4C 8004209C 460A0000 */  add.s       $f0, $f0, $f10
/* 041C50 800420A0 46060280 */  add.s       $f10, $f0, $f6
.L800420A4:
/* 041C54 800420A4 44832000 */  mtc1        $v1, $f4
/* 041C58 800420A8 3C014F80 */  lui         $at, 0x4f80
/* 041C5C 800420AC 4600520D */  trunc.w.s   $f8, $f10
/* 041C60 800420B0 468021A0 */  cvt.s.w     $f6, $f4
/* 041C64 800420B4 440B4000 */  mfc1        $t3, $f8
/* 041C68 800420B8 00000000 */  nop
/* 041C6C 800420BC 000BC880 */  sll         $t9, $t3, 2
/* 041C70 800420C0 04610004 */  bgez        $v1, .L800420D4
/* 041C74 800420C4 03205825 */   move       $t3, $t9
/* 041C78 800420C8 44815000 */  mtc1        $at, $f10
/* 041C7C 800420CC 00000000 */  nop
/* 041C80 800420D0 460A3180 */  add.s       $f6, $f6, $f10
.L800420D4:
/* 041C84 800420D4 460E3202 */  mul.s       $f8, $f6, $f14
/* 041C88 800420D8 8FAF02A8 */  lw          $t7, 0x2a8($sp)
/* 041C8C 800420DC 00692023 */  subu        $a0, $v1, $t1
/* 041C90 800420E0 31F9FFFF */  andi        $t9, $t7, 0xffff
/* 041C94 800420E4 01199825 */  or          $s3, $t0, $t9
/* 041C98 800420E8 46024102 */  mul.s       $f4, $f8, $f2
/* 041C9C 800420EC 46040280 */  add.s       $f10, $f0, $f4
/* 041CA0 800420F0 4600518D */  trunc.w.s   $f6, $f10
/* 041CA4 800420F4 440A3000 */  mfc1        $t2, $f6
/* 041CA8 800420F8 00000000 */  nop
/* 041CAC 800420FC 000A7080 */  sll         $t6, $t2, 2
/* 041CB0 80042100 1000001C */  b           .L80042174
/* 041CB4 80042104 01C05025 */   move       $t2, $t6
.L80042108:
/* 041CB8 80042108 8FA30270 */  lw          $v1, 0x270($sp)
/* 041CBC 8004210C 8FAE02A4 */  lw          $t6, 0x2a4($sp)
/* 041CC0 80042110 000BC080 */  sll         $t8, $t3, 2
/* 041CC4 80042114 44873000 */  mtc1        $a3, $f6
/* 041CC8 80042118 01C37821 */  addu        $t7, $t6, $v1
/* 041CCC 8004211C 448F4000 */  mtc1        $t7, $f8
/* 041CD0 80042120 03005825 */  move        $t3, $t8
/* 041CD4 80042124 05E10005 */  bgez        $t7, .L8004213C
/* 041CD8 80042128 46804120 */   cvt.s.w    $f4, $f8
/* 041CDC 8004212C 3C014F80 */  lui         $at, 0x4f80
/* 041CE0 80042130 44815000 */  mtc1        $at, $f10
/* 041CE4 80042134 00000000 */  nop
/* 041CE8 80042138 460A2100 */  add.s       $f4, $f4, $f10
.L8004213C:
/* 041CEC 8004213C 46803220 */  cvt.s.w     $f8, $f6
/* 041CF0 80042140 00692023 */  subu        $a0, $v1, $t1
/* 041CF4 80042144 00042940 */  sll         $a1, $a0, 5
/* 041CF8 80042148 30AEFFFF */  andi        $t6, $a1, 0xffff
/* 041CFC 8004214C 010E9825 */  or          $s3, $t0, $t6
/* 041D00 80042150 460E4282 */  mul.s       $f10, $f8, $f14
/* 041D04 80042154 00000000 */  nop
/* 041D08 80042158 46025182 */  mul.s       $f6, $f10, $f2
/* 041D0C 8004215C 46062201 */  sub.s       $f8, $f4, $f6
/* 041D10 80042160 4600428D */  trunc.w.s   $f10, $f8
/* 041D14 80042164 440A5000 */  mfc1        $t2, $f10
/* 041D18 80042168 00000000 */  nop
/* 041D1C 8004216C 000AC080 */  sll         $t8, $t2, 2
/* 041D20 80042170 03005025 */  move        $t2, $t8
.L80042174:
/* 041D24 80042174 018D0019 */  multu       $t4, $t5
/* 041D28 80042178 8FAF0088 */  lw          $t7, 0x88($sp)
/* 041D2C 8004217C 00401825 */  move        $v1, $v0
/* 041D30 80042180 24420008 */  addiu       $v0, $v0, 0x8
/* 041D34 80042184 AC6F0000 */  sw          $t7, 0x0($v1)
/* 041D38 80042188 8FB90284 */  lw          $t9, 0x284($sp)
/* 041D3C 8004218C 00402825 */  move        $a1, $v0
/* 041D40 80042190 24420008 */  addiu       $v0, $v0, 0x8
/* 041D44 80042194 00404025 */  move        $t0, $v0
/* 041D48 80042198 24420008 */  addiu       $v0, $v0, 0x8
/* 041D4C 8004219C 0000C012 */  mflo        $t8
/* 041D50 800421A0 00187080 */  sll         $t6, $t8, 2
/* 041D54 800421A4 032E7821 */  addu        $t7, $t9, $t6
/* 041D58 800421A8 AC6F0004 */  sw          $t7, 0x4($v1)
/* 041D5C 800421AC 8FB80080 */  lw          $t8, 0x80($sp)
/* 041D60 800421B0 ACB20004 */  sw          $s2, 0x4($a1)
/* 041D64 800421B4 3C19E600 */  lui         $t9, 0xe600
/* 041D68 800421B8 ACB80000 */  sw          $t8, 0x0($a1)
/* 041D6C 800421BC AD000004 */  sw          $zero, 0x4($t0)
/* 041D70 800421C0 AD190000 */  sw          $t9, 0x0($t0)
/* 041D74 800421C4 00402825 */  move        $a1, $v0
/* 041D78 800421C8 ACBF0000 */  sw          $ra, 0x0($a1)
/* 041D7C 800421CC 8FB80058 */  lw          $t8, 0x58($sp)
/* 041D80 800421D0 2483FFFF */  addiu       $v1, $a0, -0x1
/* 041D84 800421D4 00037080 */  sll         $t6, $v1, 2
/* 041D88 800421D8 31C30FFF */  andi        $v1, $t6, 0xfff
/* 041D8C 800421DC 24420008 */  addiu       $v0, $v0, 0x8
/* 041D90 800421E0 00403025 */  move        $a2, $v0
/* 041D94 800421E4 0303C825 */  or          $t9, $t8, $v1
/* 041D98 800421E8 ACB90004 */  sw          $t9, 0x4($a1)
/* 041D9C 800421EC 3C0EE700 */  lui         $t6, 0xe700
/* 041DA0 800421F0 ACCE0000 */  sw          $t6, 0x0($a2)
/* 041DA4 800421F4 ACC00004 */  sw          $zero, 0x4($a2)
/* 041DA8 800421F8 24420008 */  addiu       $v0, $v0, 0x8
/* 041DAC 800421FC 8FAF007C */  lw          $t7, 0x7c($sp)
/* 041DB0 80042200 00403825 */  move        $a3, $v0
/* 041DB4 80042204 24420008 */  addiu       $v0, $v0, 0x8
/* 041DB8 80042208 00402025 */  move        $a0, $v0
/* 041DBC 8004220C ACF40004 */  sw          $s4, 0x4($a3)
/* 041DC0 80042210 3C18F200 */  lui         $t8, 0xf200
/* 041DC4 80042214 ACEF0000 */  sw          $t7, 0x0($a3)
/* 041DC8 80042218 AC980000 */  sw          $t8, 0x0($a0)
/* 041DCC 8004221C 8FB9005C */  lw          $t9, 0x5c($sp)
/* 041DD0 80042220 24420008 */  addiu       $v0, $v0, 0x8
/* 041DD4 80042224 00402825 */  move        $a1, $v0
/* 041DD8 80042228 03237025 */  or          $t6, $t9, $v1
/* 041DDC 8004222C AC8E0004 */  sw          $t6, 0x4($a0)
/* 041DE0 80042230 314F0FFF */  andi        $t7, $t2, 0xfff
/* 041DE4 80042234 02AFC025 */  or          $t8, $s5, $t7
/* 041DE8 80042238 31790FFF */  andi        $t9, $t3, 0xfff
/* 041DEC 8004223C 24420008 */  addiu       $v0, $v0, 0x8
/* 041DF0 80042240 00403025 */  move        $a2, $v0
/* 041DF4 80042244 02D97025 */  or          $t6, $s6, $t9
/* 041DF8 80042248 ACB80000 */  sw          $t8, 0x0($a1)
/* 041DFC 8004224C ACAE0004 */  sw          $t6, 0x4($a1)
/* 041E00 80042250 24420008 */  addiu       $v0, $v0, 0x8
/* 041E04 80042254 00401825 */  move        $v1, $v0
/* 041E08 80042258 3C0FE100 */  lui         $t7, 0xe100
/* 041E0C 8004225C ACCF0000 */  sw          $t7, 0x0($a2)
/* 041E10 80042260 ACD30004 */  sw          $s3, 0x4($a2)
/* 041E14 80042264 3C18F100 */  lui         $t8, 0xf100
/* 041E18 80042268 AC780000 */  sw          $t8, 0x0($v1)
/* 041E1C 8004226C AC770004 */  sw          $s7, 0x4($v1)
/* 041E20 80042270 24420008 */  addiu       $v0, $v0, 0x8
.L80042274:
/* 041E24 80042274 8FB902C0 */  lw          $t9, 0x2c0($sp)
.L80042278:
/* 041E28 80042278 AF220000 */  sw          $v0, 0x0($t9)
/* 041E2C 8004227C 8FBF002C */  lw          $ra, 0x2c($sp)
/* 041E30 80042280 8FBE0028 */  lw          $fp, 0x28($sp)
/* 041E34 80042284 8FB70024 */  lw          $s7, 0x24($sp)
/* 041E38 80042288 8FB60020 */  lw          $s6, 0x20($sp)
/* 041E3C 8004228C 8FB5001C */  lw          $s5, 0x1c($sp)
/* 041E40 80042290 8FB40018 */  lw          $s4, 0x18($sp)
/* 041E44 80042294 8FB30014 */  lw          $s3, 0x14($sp)
/* 041E48 80042298 8FB20010 */  lw          $s2, 0x10($sp)
/* 041E4C 8004229C 8FB1000C */  lw          $s1, 0xc($sp)
/* 041E50 800422A0 8FB00008 */  lw          $s0, 0x8($sp)
/* 041E54 800422A4 03E00008 */  jr          $ra
/* 041E58 800422A8 27BD02C0 */   addiu      $sp, $sp, 0x2c0

glabel func_800422AC # 3
/* 041E5C 800422AC AC850000 */  sw          $a1, 0x0($a0)
/* 041E60 800422B0 AC860004 */  sw          $a2, 0x4($a0)
/* 041E64 800422B4 AC870008 */  sw          $a3, 0x8($a0)
/* 041E68 800422B8 8FAE0010 */  lw          $t6, 0x10($sp)
/* 041E6C 800422BC AC8E000C */  sw          $t6, 0xc($a0)
/* 041E70 800422C0 8FAF0014 */  lw          $t7, 0x14($sp)
/* 041E74 800422C4 AC8F0010 */  sw          $t7, 0x10($a0)
/* 041E78 800422C8 8FB80018 */  lw          $t8, 0x18($sp)
/* 041E7C 800422CC AC980014 */  sw          $t8, 0x14($a0)
/* 041E80 800422D0 8FB9001C */  lw          $t9, 0x1c($sp)
/* 041E84 800422D4 AC990018 */  sw          $t9, 0x18($a0)
/* 041E88 800422D8 8FA80020 */  lw          $t0, 0x20($sp)
/* 041E8C 800422DC AC88001C */  sw          $t0, 0x1c($a0)
/* 041E90 800422E0 8FA90024 */  lw          $t1, 0x24($sp)
/* 041E94 800422E4 AC890020 */  sw          $t1, 0x20($a0)
/* 041E98 800422E8 8FAA0028 */  lw          $t2, 0x28($sp)
/* 041E9C 800422EC 03E00008 */  jr          $ra
/* 041EA0 800422F0 AC8A0024 */   sw         $t2, 0x24($a0)

glabel func_800422F4 # 4
/* 041EA4 800422F4 24080002 */  addiu       $t0, $zero, 0x2
/* 041EA8 800422F8 14C80007 */  bne         $a2, $t0, .L80042318
/* 041EAC 800422FC 27BDFFF8 */   addiu      $sp, $sp, -0x8
/* 041EB0 80042300 8C8E0000 */  lw          $t6, 0x0($a0)
/* 041EB4 80042304 24180100 */  addiu       $t8, $zero, 0x100
/* 041EB8 80042308 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 041EBC 8004230C AC8F0000 */  sw          $t7, 0x0($a0)
/* 041EC0 80042310 10000118 */  b           .L80042774
/* 041EC4 80042314 ACB80000 */   sw         $t8, 0x0($a1)
.L80042318:
/* 041EC8 80042318 8FB90018 */  lw          $t9, 0x18($sp)
/* 041ECC 8004231C 8FA3001C */  lw          $v1, 0x1c($sp)
/* 041ED0 80042320 17280006 */  bne         $t9, $t0, .L8004233C
/* 041ED4 80042324 00000000 */   nop
/* 041ED8 80042328 8C890000 */  lw          $t1, 0x0($a0)
/* 041EDC 8004232C 252AFFFF */  addiu       $t2, $t1, -0x1
/* 041EE0 80042330 AC8A0000 */  sw          $t2, 0x0($a0)
/* 041EE4 80042334 1000010F */  b           .L80042774
/* 041EE8 80042338 ACA00000 */   sw         $zero, 0x0($a1)
.L8004233C:
/* 041EEC 8004233C 10E00009 */  beqz        $a3, .L80042364
/* 041EF0 80042340 24010001 */   addiu      $at, $zero, 0x1
/* 041EF4 80042344 10E10009 */  beq         $a3, $at, .L8004236C
/* 041EF8 80042348 00000000 */   nop
/* 041EFC 8004234C 10E80009 */  beq         $a3, $t0, .L80042374
/* 041F00 80042350 24010003 */   addiu      $at, $zero, 0x3
/* 041F04 80042354 10E10009 */  beq         $a3, $at, .L8004237C
/* 041F08 80042358 24020001 */   addiu      $v0, $zero, 0x1
/* 041F0C 8004235C 10000007 */  b           .L8004237C
/* 041F10 80042360 8FA20004 */   lw         $v0, 0x4($sp)
.L80042364:
/* 041F14 80042364 10000005 */  b           .L8004237C
/* 041F18 80042368 24020008 */   addiu      $v0, $zero, 0x8
.L8004236C:
/* 041F1C 8004236C 10000003 */  b           .L8004237C
/* 041F20 80042370 24020004 */   addiu      $v0, $zero, 0x4
.L80042374:
/* 041F24 80042374 10000001 */  b           .L8004237C
/* 041F28 80042378 24020002 */   addiu      $v0, $zero, 0x2
.L8004237C:
/* 041F2C 8004237C 10600009 */  beqz        $v1, .L800423A4
/* 041F30 80042380 24010001 */   addiu      $at, $zero, 0x1
/* 041F34 80042384 10610009 */  beq         $v1, $at, .L800423AC
/* 041F38 80042388 00000000 */   nop
/* 041F3C 8004238C 10680009 */  beq         $v1, $t0, .L800423B4
/* 041F40 80042390 24010003 */   addiu      $at, $zero, 0x3
/* 041F44 80042394 5061000A */  beql        $v1, $at, .L800423C0
/* 041F48 80042398 24030001 */   addiu      $v1, $zero, 0x1
/* 041F4C 8004239C 10000008 */  b           .L800423C0
/* 041F50 800423A0 8FA30000 */   lw         $v1, 0x0($sp)
.L800423A4:
/* 041F54 800423A4 10000006 */  b           .L800423C0
/* 041F58 800423A8 24030008 */   addiu      $v1, $zero, 0x8
.L800423AC:
/* 041F5C 800423AC 10000004 */  b           .L800423C0
/* 041F60 800423B0 24030004 */   addiu      $v1, $zero, 0x4
.L800423B4:
/* 041F64 800423B4 10000002 */  b           .L800423C0
/* 041F68 800423B8 24030002 */   addiu      $v1, $zero, 0x2
/* 041F6C 800423BC 24030001 */  addiu       $v1, $zero, 0x1
.L800423C0:
/* 041F70 800423C0 24080001 */  addiu       $t0, $zero, 0x1
/* 041F74 800423C4 10480085 */  beq         $v0, $t0, .L800425DC
/* 041F78 800423C8 00000000 */   nop
/* 041F7C 800423CC 10680083 */  beq         $v1, $t0, .L800425DC
/* 041F80 800423D0 00000000 */   nop
/* 041F84 800423D4 1443000B */  bne         $v0, $v1, .L80042404
/* 041F88 800423D8 0062082A */   slt        $at, $v1, $v0
/* 041F8C 800423DC 8C8B0000 */  lw          $t3, 0x0($a0)
/* 041F90 800423E0 240E0100 */  addiu       $t6, $zero, 0x100
/* 041F94 800423E4 05610003 */  bgez        $t3, .L800423F4
/* 041F98 800423E8 000B6043 */   sra        $t4, $t3, 1
/* 041F9C 800423EC 25610001 */  addiu       $at, $t3, 0x1
/* 041FA0 800423F0 00016043 */  sra         $t4, $at, 1
.L800423F4:
/* 041FA4 800423F4 258DFFFF */  addiu       $t5, $t4, -0x1
/* 041FA8 800423F8 AC8D0000 */  sw          $t5, 0x0($a0)
/* 041FAC 800423FC 100000DD */  b           .L80042774
/* 041FB0 80042400 ACAE0000 */   sw         $t6, 0x0($a1)
.L80042404:
/* 041FB4 80042404 5020003E */  beql        $at, $zero, .L80042500
/* 041FB8 80042408 8C8E0000 */   lw         $t6, 0x0($a0)
/* 041FBC 8004240C 8C8F0000 */  lw          $t7, 0x0($a0)
/* 041FC0 80042410 00433021 */  addu        $a2, $v0, $v1
/* 041FC4 80042414 3C013FF0 */  lui         $at, 0x3ff0
/* 041FC8 80042418 01E20019 */  multu       $t7, $v0
/* 041FCC 8004241C 44811800 */  mtc1        $at, $f3
/* 041FD0 80042420 44804000 */  mtc1        $zero, $f8
/* 041FD4 80042424 44801000 */  mtc1        $zero, $f2
/* 041FD8 80042428 00035A40 */  sll         $t3, $v1, 9
/* 041FDC 8004242C 0000C012 */  mflo        $t8
/* 041FE0 80042430 00000000 */  nop
/* 041FE4 80042434 00000000 */  nop
/* 041FE8 80042438 0306001A */  div         $zero, $t8, $a2
/* 041FEC 8004243C 0000C812 */  mflo        $t9
/* 041FF0 80042440 44992000 */  mtc1        $t9, $f4
/* 041FF4 80042444 14C00002 */  bnez        $a2, .L80042450
/* 041FF8 80042448 00000000 */   nop
/* 041FFC 8004244C 0007000D */  break       7
.L80042450:
/* 042000 80042450 2401FFFF */  addiu       $at, $zero, -0x1
/* 042004 80042454 14C10004 */  bne         $a2, $at, .L80042468
/* 042008 80042458 3C018000 */   lui        $at, 0x8000
/* 04200C 8004245C 17010002 */  bne         $t8, $at, .L80042468
/* 042010 80042460 00000000 */   nop
/* 042014 80042464 0006000D */  break       6
.L80042468:
/* 042018 80042468 468021A1 */  cvt.d.w     $f6, $f4
/* 04201C 8004246C 3C013FF8 */  lui         $at, 0x3ff8
/* 042020 80042470 44814800 */  mtc1        $at, $f9
/* 042024 80042474 00000000 */  nop
/* 042028 80042478 46283001 */  sub.d       $f0, $f6, $f8
/* 04202C 8004247C 4622003C */  c.lt.d      $f0, $f2
/* 042030 80042480 00000000 */  nop
/* 042034 80042484 45020005 */  bc1fl       .L8004249C
/* 042038 80042488 4620040D */   trunc.w.d  $f16, $f0
/* 04203C 8004248C 4620128D */  trunc.w.d   $f10, $f2
/* 042040 80042490 10000003 */  b           .L800424A0
/* 042044 80042494 E48A0000 */   swc1       $f10, 0x0($a0)
/* 042048 80042498 4620040D */  trunc.w.d   $f16, $f0
.L8004249C:
/* 04204C 8004249C E4900000 */  swc1        $f16, 0x0($a0)
.L800424A0:
/* 042050 800424A0 0166001A */  div         $zero, $t3, $a2
/* 042054 800424A4 00001012 */  mflo        $v0
/* 042058 800424A8 14C00002 */  bnez        $a2, .L800424B4
/* 04205C 800424AC 00000000 */   nop
/* 042060 800424B0 0007000D */  break       7
.L800424B4:
/* 042064 800424B4 2401FFFF */  addiu       $at, $zero, -0x1
/* 042068 800424B8 14C10004 */  bne         $a2, $at, .L800424CC
/* 04206C 800424BC 3C018000 */   lui        $at, 0x8000
/* 042070 800424C0 15610002 */  bne         $t3, $at, .L800424CC
/* 042074 800424C4 00000000 */   nop
/* 042078 800424C8 0006000D */  break       6
.L800424CC:
/* 04207C 800424CC 04410004 */  bgez        $v0, .L800424E0
/* 042080 800424D0 3044000F */   andi       $a0, $v0, 0xf
/* 042084 800424D4 10800002 */  beqz        $a0, .L800424E0
/* 042088 800424D8 00000000 */   nop
/* 04208C 800424DC 2484FFF0 */  addiu       $a0, $a0, -0x10
.L800424E0:
/* 042090 800424E0 10800004 */  beqz        $a0, .L800424F4
/* 042094 800424E4 00446023 */   subu       $t4, $v0, $a0
/* 042098 800424E8 258D0010 */  addiu       $t5, $t4, 0x10
/* 04209C 800424EC 100000A1 */  b           .L80042774
/* 0420A0 800424F0 ACAD0000 */   sw         $t5, 0x0($a1)
.L800424F4:
/* 0420A4 800424F4 1000009F */  b           .L80042774
/* 0420A8 800424F8 ACA20000 */   sw         $v0, 0x0($a1)
/* 0420AC 800424FC 8C8E0000 */  lw          $t6, 0x0($a0)
.L80042500:
/* 0420B0 80042500 00433021 */  addu        $a2, $v0, $v1
/* 0420B4 80042504 3C013FF0 */  lui         $at, 0x3ff0
/* 0420B8 80042508 01C30019 */  multu       $t6, $v1
/* 0420BC 8004250C 44811800 */  mtc1        $at, $f3
/* 0420C0 80042510 44803000 */  mtc1        $zero, $f6
/* 0420C4 80042514 44801000 */  mtc1        $zero, $f2
/* 0420C8 80042518 00035240 */  sll         $t2, $v1, 9
/* 0420CC 8004251C 00007812 */  mflo        $t7
/* 0420D0 80042520 00000000 */  nop
/* 0420D4 80042524 00000000 */  nop
/* 0420D8 80042528 01E6001A */  div         $zero, $t7, $a2
/* 0420DC 8004252C 0000C012 */  mflo        $t8
/* 0420E0 80042530 44989000 */  mtc1        $t8, $f18
/* 0420E4 80042534 14C00002 */  bnez        $a2, .L80042540
/* 0420E8 80042538 00000000 */   nop
/* 0420EC 8004253C 0007000D */  break       7
.L80042540:
/* 0420F0 80042540 2401FFFF */  addiu       $at, $zero, -0x1
/* 0420F4 80042544 14C10004 */  bne         $a2, $at, .L80042558
/* 0420F8 80042548 3C018000 */   lui        $at, 0x8000
/* 0420FC 8004254C 15E10002 */  bne         $t7, $at, .L80042558
/* 042100 80042550 00000000 */   nop
/* 042104 80042554 0006000D */  break       6
.L80042558:
/* 042108 80042558 46809121 */  cvt.d.w     $f4, $f18
/* 04210C 8004255C 3C013FF8 */  lui         $at, 0x3ff8
/* 042110 80042560 44813800 */  mtc1        $at, $f7
/* 042114 80042564 00000000 */  nop
/* 042118 80042568 46262001 */  sub.d       $f0, $f4, $f6
/* 04211C 8004256C 4622003C */  c.lt.d      $f0, $f2
/* 042120 80042570 00000000 */  nop
/* 042124 80042574 45020005 */  bc1fl       .L8004258C
/* 042128 80042578 4620028D */   trunc.w.d  $f10, $f0
/* 04212C 8004257C 4620120D */  trunc.w.d   $f8, $f2
/* 042130 80042580 10000003 */  b           .L80042590
/* 042134 80042584 E4880000 */   swc1       $f8, 0x0($a0)
/* 042138 80042588 4620028D */  trunc.w.d   $f10, $f0
.L8004258C:
/* 04213C 8004258C E48A0000 */  swc1        $f10, 0x0($a0)
.L80042590:
/* 042140 80042590 0146001A */  div         $zero, $t2, $a2
/* 042144 80042594 00001012 */  mflo        $v0
/* 042148 80042598 14C00002 */  bnez        $a2, .L800425A4
/* 04214C 8004259C 00000000 */   nop
/* 042150 800425A0 0007000D */  break       7
.L800425A4:
/* 042154 800425A4 2401FFFF */  addiu       $at, $zero, -0x1
/* 042158 800425A8 14C10004 */  bne         $a2, $at, .L800425BC
/* 04215C 800425AC 3C018000 */   lui        $at, 0x8000
/* 042160 800425B0 15410002 */  bne         $t2, $at, .L800425BC
/* 042164 800425B4 00000000 */   nop
/* 042168 800425B8 0006000D */  break       6
.L800425BC:
/* 04216C 800425BC 04410004 */  bgez        $v0, .L800425D0
/* 042170 800425C0 304B000F */   andi       $t3, $v0, 0xf
/* 042174 800425C4 11600002 */  beqz        $t3, .L800425D0
/* 042178 800425C8 00000000 */   nop
/* 04217C 800425CC 256BFFF0 */  addiu       $t3, $t3, -0x10
.L800425D0:
/* 042180 800425D0 004B6023 */  subu        $t4, $v0, $t3
/* 042184 800425D4 10000067 */  b           .L80042774
/* 042188 800425D8 ACAC0000 */   sw         $t4, 0x0($a1)
.L800425DC:
/* 04218C 800425DC 1443000B */  bne         $v0, $v1, .L8004260C
/* 042190 800425E0 0062082A */   slt        $at, $v1, $v0
/* 042194 800425E4 8C8D0000 */  lw          $t5, 0x0($a0)
/* 042198 800425E8 24180080 */  addiu       $t8, $zero, 0x80
/* 04219C 800425EC 05A10003 */  bgez        $t5, .L800425FC
/* 0421A0 800425F0 000D7043 */   sra        $t6, $t5, 1
/* 0421A4 800425F4 25A10001 */  addiu       $at, $t5, 0x1
/* 0421A8 800425F8 00017043 */  sra         $t6, $at, 1
.L800425FC:
/* 0421AC 800425FC 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 0421B0 80042600 AC8F0000 */  sw          $t7, 0x0($a0)
/* 0421B4 80042604 1000005B */  b           .L80042774
/* 0421B8 80042608 ACB80000 */   sw         $t8, 0x0($a1)
.L8004260C:
/* 0421BC 8004260C 10200030 */  beqz        $at, .L800426D0
/* 0421C0 80042610 0003CA00 */   sll        $t9, $v1, 8
/* 0421C4 80042614 8C990000 */  lw          $t9, 0x0($a0)
/* 0421C8 80042618 00433021 */  addu        $a2, $v0, $v1
/* 0421CC 8004261C 00065040 */  sll         $t2, $a2, 1
/* 0421D0 80042620 03220019 */  multu       $t9, $v0
/* 0421D4 80042624 00035A40 */  sll         $t3, $v1, 9
/* 0421D8 80042628 00004812 */  mflo        $t1
/* 0421DC 8004262C 00000000 */  nop
/* 0421E0 80042630 00000000 */  nop
/* 0421E4 80042634 012A001A */  div         $zero, $t1, $t2
/* 0421E8 80042638 00003812 */  mflo        $a3
/* 0421EC 8004263C 15400002 */  bnez        $t2, .L80042648
/* 0421F0 80042640 00000000 */   nop
/* 0421F4 80042644 0007000D */  break       7
.L80042648:
/* 0421F8 80042648 2401FFFF */  addiu       $at, $zero, -0x1
/* 0421FC 8004264C 15410004 */  bne         $t2, $at, .L80042660
/* 042200 80042650 3C018000 */   lui        $at, 0x8000
/* 042204 80042654 15210002 */  bne         $t1, $at, .L80042660
/* 042208 80042658 00000000 */   nop
/* 04220C 8004265C 0006000D */  break       6
.L80042660:
/* 042210 80042660 5CE00004 */  bgtzl       $a3, .L80042674
/* 042214 80042664 AC870000 */   sw         $a3, 0x0($a0)
/* 042218 80042668 10000002 */  b           .L80042674
/* 04221C 8004266C AC880000 */   sw         $t0, 0x0($a0)
/* 042220 80042670 AC870000 */  sw          $a3, 0x0($a0)
.L80042674:
/* 042224 80042674 0166001A */  div         $zero, $t3, $a2
/* 042228 80042678 00001012 */  mflo        $v0
/* 04222C 8004267C 14C00002 */  bnez        $a2, .L80042688
/* 042230 80042680 00000000 */   nop
/* 042234 80042684 0007000D */  break       7
.L80042688:
/* 042238 80042688 2401FFFF */  addiu       $at, $zero, -0x1
/* 04223C 8004268C 14C10004 */  bne         $a2, $at, .L800426A0
/* 042240 80042690 3C018000 */   lui        $at, 0x8000
/* 042244 80042694 15610002 */  bne         $t3, $at, .L800426A0
/* 042248 80042698 00000000 */   nop
/* 04224C 8004269C 0006000D */  break       6
.L800426A0:
/* 042250 800426A0 04410004 */  bgez        $v0, .L800426B4
/* 042254 800426A4 3044000F */   andi       $a0, $v0, 0xf
/* 042258 800426A8 10800002 */  beqz        $a0, .L800426B4
/* 04225C 800426AC 00000000 */   nop
/* 042260 800426B0 2484FFF0 */  addiu       $a0, $a0, -0x10
.L800426B4:
/* 042264 800426B4 10800004 */  beqz        $a0, .L800426C8
/* 042268 800426B8 00446023 */   subu       $t4, $v0, $a0
/* 04226C 800426BC 258D0010 */  addiu       $t5, $t4, 0x10
/* 042270 800426C0 1000002C */  b           .L80042774
/* 042274 800426C4 ACAD0000 */   sw         $t5, 0x0($a1)
.L800426C8:
/* 042278 800426C8 1000002A */  b           .L80042774
/* 04227C 800426CC ACA20000 */   sw         $v0, 0x0($a1)
.L800426D0:
/* 042280 800426D0 8C8E0000 */  lw          $t6, 0x0($a0)
/* 042284 800426D4 00433021 */  addu        $a2, $v0, $v1
/* 042288 800426D8 0006C040 */  sll         $t8, $a2, 1
/* 04228C 800426DC 01C30019 */  multu       $t6, $v1
/* 042290 800426E0 00007812 */  mflo        $t7
/* 042294 800426E4 00000000 */  nop
/* 042298 800426E8 00000000 */  nop
/* 04229C 800426EC 01F8001A */  div         $zero, $t7, $t8
/* 0422A0 800426F0 00003812 */  mflo        $a3
/* 0422A4 800426F4 17000002 */  bnez        $t8, .L80042700
/* 0422A8 800426F8 00000000 */   nop
/* 0422AC 800426FC 0007000D */  break       7
.L80042700:
/* 0422B0 80042700 2401FFFF */  addiu       $at, $zero, -0x1
/* 0422B4 80042704 17010004 */  bne         $t8, $at, .L80042718
/* 0422B8 80042708 3C018000 */   lui        $at, 0x8000
/* 0422BC 8004270C 15E10002 */  bne         $t7, $at, .L80042718
/* 0422C0 80042710 00000000 */   nop
/* 0422C4 80042714 0006000D */  break       6
.L80042718:
/* 0422C8 80042718 5CE00004 */  bgtzl       $a3, .L8004272C
/* 0422CC 8004271C AC870000 */   sw         $a3, 0x0($a0)
/* 0422D0 80042720 10000002 */  b           .L8004272C
/* 0422D4 80042724 AC880000 */   sw         $t0, 0x0($a0)
/* 0422D8 80042728 AC870000 */  sw          $a3, 0x0($a0)
.L8004272C:
/* 0422DC 8004272C 0326001A */  div         $zero, $t9, $a2
/* 0422E0 80042730 00001012 */  mflo        $v0
/* 0422E4 80042734 14C00002 */  bnez        $a2, .L80042740
/* 0422E8 80042738 00000000 */   nop
/* 0422EC 8004273C 0007000D */  break       7
.L80042740:
/* 0422F0 80042740 2401FFFF */  addiu       $at, $zero, -0x1
/* 0422F4 80042744 14C10004 */  bne         $a2, $at, .L80042758
/* 0422F8 80042748 3C018000 */   lui        $at, 0x8000
/* 0422FC 8004274C 17210002 */  bne         $t9, $at, .L80042758
/* 042300 80042750 00000000 */   nop
/* 042304 80042754 0006000D */  break       6
.L80042758:
/* 042308 80042758 04410004 */  bgez        $v0, .L8004276C
/* 04230C 8004275C 3049000F */   andi       $t1, $v0, 0xf
/* 042310 80042760 11200002 */  beqz        $t1, .L8004276C
/* 042314 80042764 00000000 */   nop
/* 042318 80042768 2529FFF0 */  addiu       $t1, $t1, -0x10
.L8004276C:
/* 04231C 8004276C 00495023 */  subu        $t2, $v0, $t1
/* 042320 80042770 ACAA0000 */  sw          $t2, 0x0($a1)
.L80042774:
/* 042324 80042774 03E00008 */  jr          $ra
/* 042328 80042778 27BD0008 */   addiu      $sp, $sp, 0x8

glabel func_8004277C # 5
/* 04232C 8004277C 27BDFF58 */  addiu       $sp, $sp, -0xa8
/* 042330 80042780 8FAF00C0 */  lw          $t7, 0xc0($sp)
/* 042334 80042784 AFA400A8 */  sw          $a0, 0xa8($sp)
/* 042338 80042788 AFA500AC */  sw          $a1, 0xac($sp)
/* 04233C 8004278C AFA600B0 */  sw          $a2, 0xb0($sp)
/* 042340 80042790 24080002 */  addiu       $t0, $zero, 0x2
/* 042344 80042794 15E80003 */  bne         $t7, $t0, .L800427A4
/* 042348 80042798 8C820000 */   lw         $v0, 0x0($a0)
/* 04234C 8004279C 3C01800A */  lui         $at, %hi(D_800A2E00)
/* 042350 800427A0 AC272E00 */  sw          $a3, %lo(D_800A2E00)($at)
.L800427A4:
/* 042354 800427A4 8FA300C4 */  lw          $v1, 0xc4($sp)
/* 042358 800427A8 3C01FD00 */  lui         $at, 0xfd00
/* 04235C 800427AC 5060000C */  beql        $v1, $zero, .L800427E0
/* 042360 800427B0 8FA300C8 */   lw         $v1, 0xc8($sp)
/* 042364 800427B4 24010001 */  addiu       $at, $zero, 0x1
/* 042368 800427B8 1061007F */  beq         $v1, $at, .L800429B8
/* 04236C 800427BC 3C0D0008 */   lui        $t5, 0x8
/* 042370 800427C0 106800E7 */  beq         $v1, $t0, .L80042B60
/* 042374 800427C4 3C0D0010 */   lui        $t5, 0x10
/* 042378 800427C8 24010003 */  addiu       $at, $zero, 0x3
/* 04237C 800427CC 10610150 */  beq         $v1, $at, .L80042D10
/* 042380 800427D0 3C0D0018 */   lui        $t5, 0x18
/* 042384 800427D4 100001BA */  b           .L80042EC0
/* 042388 800427D8 8FAE00B8 */   lw         $t6, 0xb8($sp)
/* 04238C 800427DC 8FA300C8 */  lw          $v1, 0xc8($sp)
.L800427E0:
/* 042390 800427E0 3065000F */  andi        $a1, $v1, 0xf
/* 042394 800427E4 10A00004 */  beqz        $a1, .L800427F8
/* 042398 800427E8 00602025 */   move       $a0, $v1
/* 04239C 800427EC 00652023 */  subu        $a0, $v1, $a1
/* 0423A0 800427F0 10000001 */  b           .L800427F8
/* 0423A4 800427F4 24840010 */   addiu      $a0, $a0, 0x10
.L800427F8:
/* 0423A8 800427F8 8FA300C0 */  lw          $v1, 0xc0($sp)
/* 0423AC 800427FC 00043043 */  sra         $a2, $a0, 1
/* 0423B0 80042800 00402825 */  move        $a1, $v0
/* 0423B4 80042804 30780007 */  andi        $t8, $v1, 0x7
/* 0423B8 80042808 00181D40 */  sll         $v1, $t8, 21
/* 0423BC 8004280C 00617025 */  or          $t6, $v1, $at
/* 0423C0 80042810 3C010008 */  lui         $at, 0x8
/* 0423C4 80042814 24D8FFFF */  addiu       $t8, $a2, -0x1
/* 0423C8 80042818 33190FFF */  andi        $t9, $t8, 0xfff
/* 0423CC 8004281C 01C17825 */  or          $t7, $t6, $at
/* 0423D0 80042820 01F97025 */  or          $t6, $t7, $t9
/* 0423D4 80042824 ACAE0000 */  sw          $t6, 0x0($a1)
/* 0423D8 80042828 8FB800AC */  lw          $t8, 0xac($sp)
/* 0423DC 8004282C 8FB900CC */  lw          $t9, 0xcc($sp)
/* 0423E0 80042830 24CD0007 */  addiu       $t5, $a2, 0x7
/* 0423E4 80042834 00980019 */  multu       $a0, $t8
/* 0423E8 80042838 3C01F500 */  lui         $at, 0xf500
/* 0423EC 8004283C 00616025 */  or          $t4, $v1, $at
/* 0423F0 80042840 3C010008 */  lui         $at, 0x8
/* 0423F4 80042844 24420008 */  addiu       $v0, $v0, 0x8
/* 0423F8 80042848 00403825 */  move        $a3, $v0
/* 0423FC 8004284C 24420008 */  addiu       $v0, $v0, 0x8
/* 042400 80042850 00401825 */  move        $v1, $v0
/* 042404 80042854 24420008 */  addiu       $v0, $v0, 0x8
/* 042408 80042858 00007812 */  mflo        $t7
/* 04240C 8004285C 00000000 */  nop
/* 042410 80042860 00000000 */  nop
/* 042414 80042864 01F90019 */  multu       $t7, $t9
/* 042418 80042868 8FAF00B0 */  lw          $t7, 0xb0($sp)
/* 04241C 8004286C 00007012 */  mflo        $t6
/* 042420 80042870 000EC042 */  srl         $t8, $t6, 1
/* 042424 80042874 01F8C821 */  addu        $t9, $t7, $t8
/* 042428 80042878 ACB90004 */  sw          $t9, 0x4($a1)
/* 04242C 8004287C 000D70C3 */  sra         $t6, $t5, 3
/* 042430 80042880 8FB900BC */  lw          $t9, 0xbc($sp)
/* 042434 80042884 31CF01FF */  andi        $t7, $t6, 0x1ff
/* 042438 80042888 000F6A40 */  sll         $t5, $t7, 9
/* 04243C 8004288C 01817825 */  or          $t7, $t4, $at
/* 042440 80042890 332E01FF */  andi        $t6, $t9, 0x1ff
/* 042444 80042894 01EDC025 */  or          $t8, $t7, $t5
/* 042448 80042898 030EC825 */  or          $t9, $t8, $t6
/* 04244C 8004289C AFAE0000 */  sw          $t6, 0x0($sp)
/* 042450 800428A0 ACF90000 */  sw          $t9, 0x0($a3)
/* 042454 800428A4 8FA800D8 */  lw          $t0, 0xd8($sp)
/* 042458 800428A8 8FAA00D4 */  lw          $t2, 0xd4($sp)
/* 04245C 800428AC 8FA900E0 */  lw          $t1, 0xe0($sp)
/* 042460 800428B0 310F0003 */  andi        $t7, $t0, 0x3
/* 042464 800428B4 8FAB00DC */  lw          $t3, 0xdc($sp)
/* 042468 800428B8 000F4480 */  sll         $t0, $t7, 18
/* 04246C 800428BC 314F0003 */  andi        $t7, $t2, 0x3
/* 042470 800428C0 312E000F */  andi        $t6, $t1, 0xf
/* 042474 800428C4 000E4B80 */  sll         $t1, $t6, 14
/* 042478 800428C8 000F5200 */  sll         $t2, $t7, 8
/* 04247C 800428CC 3C010700 */  lui         $at, 0x700
/* 042480 800428D0 01017825 */  or          $t7, $t0, $at
/* 042484 800428D4 316E000F */  andi        $t6, $t3, 0xf
/* 042488 800428D8 000E5900 */  sll         $t3, $t6, 4
/* 04248C 800428DC 01E9C025 */  or          $t8, $t7, $t1
/* 042490 800428E0 030A7025 */  or          $t6, $t8, $t2
/* 042494 800428E4 01CBC825 */  or          $t9, $t6, $t3
/* 042498 800428E8 ACF90004 */  sw          $t9, 0x4($a3)
/* 04249C 800428EC 3C0FE600 */  lui         $t7, 0xe600
/* 0424A0 800428F0 AC6F0000 */  sw          $t7, 0x0($v1)
/* 0424A4 800428F4 AC600004 */  sw          $zero, 0x4($v1)
/* 0424A8 800428F8 AFA20090 */  sw          $v0, 0x90($sp)
/* 0424AC 800428FC 8FAE0090 */  lw          $t6, 0x90($sp)
/* 0424B0 80042900 3C18F400 */  lui         $t8, 0xf400
/* 0424B4 80042904 2485FFFF */  addiu       $a1, $a0, -0x1
/* 0424B8 80042908 ADD80000 */  sw          $t8, 0x0($t6)
/* 0424BC 8004290C 8FA600D0 */  lw          $a2, 0xd0($sp)
/* 0424C0 80042910 0005C040 */  sll         $t8, $a1, 1
/* 0424C4 80042914 330E0FFF */  andi        $t6, $t8, 0xfff
/* 0424C8 80042918 0006C880 */  sll         $t9, $a2, 2
/* 0424CC 8004291C 33260FFF */  andi        $a2, $t9, 0xfff
/* 0424D0 80042920 000ECB00 */  sll         $t9, $t6, 12
/* 0424D4 80042924 8FAE0090 */  lw          $t6, 0x90($sp)
/* 0424D8 80042928 03217825 */  or          $t7, $t9, $at
/* 0424DC 8004292C 01E6C025 */  or          $t8, $t7, $a2
/* 0424E0 80042930 24420008 */  addiu       $v0, $v0, 0x8
/* 0424E4 80042934 ADD80004 */  sw          $t8, 0x4($t6)
/* 0424E8 80042938 AFA2008C */  sw          $v0, 0x8c($sp)
/* 0424EC 8004293C 8FAF008C */  lw          $t7, 0x8c($sp)
/* 0424F0 80042940 3C19E700 */  lui         $t9, 0xe700
/* 0424F4 80042944 24420008 */  addiu       $v0, $v0, 0x8
/* 0424F8 80042948 ADF90000 */  sw          $t9, 0x0($t7)
/* 0424FC 8004294C 8FB8008C */  lw          $t8, 0x8c($sp)
/* 042500 80042950 018D7025 */  or          $t6, $t4, $t5
/* 042504 80042954 00403825 */  move        $a3, $v0
/* 042508 80042958 AF000004 */  sw          $zero, 0x4($t8)
/* 04250C 8004295C 8FB90000 */  lw          $t9, 0x0($sp)
/* 042510 80042960 24420008 */  addiu       $v0, $v0, 0x8
/* 042514 80042964 00402025 */  move        $a0, $v0
/* 042518 80042968 01D97825 */  or          $t7, $t6, $t9
/* 04251C 8004296C ACEF0000 */  sw          $t7, 0x0($a3)
/* 042520 80042970 8FA300B8 */  lw          $v1, 0xb8($sp)
/* 042524 80042974 24420008 */  addiu       $v0, $v0, 0x8
/* 042528 80042978 30780007 */  andi        $t8, $v1, 0x7
/* 04252C 8004297C 00181E00 */  sll         $v1, $t8, 24
/* 042530 80042980 0068C825 */  or          $t9, $v1, $t0
/* 042534 80042984 03297825 */  or          $t7, $t9, $t1
/* 042538 80042988 01EAC025 */  or          $t8, $t7, $t2
/* 04253C 8004298C 030B7025 */  or          $t6, $t8, $t3
/* 042540 80042990 ACEE0004 */  sw          $t6, 0x4($a3)
/* 042544 80042994 00057880 */  sll         $t7, $a1, 2
/* 042548 80042998 31F80FFF */  andi        $t8, $t7, 0xfff
/* 04254C 8004299C 3C19F200 */  lui         $t9, 0xf200
/* 042550 800429A0 AC990000 */  sw          $t9, 0x0($a0)
/* 042554 800429A4 00187300 */  sll         $t6, $t8, 12
/* 042558 800429A8 006EC825 */  or          $t9, $v1, $t6
/* 04255C 800429AC 03267825 */  or          $t7, $t9, $a2
/* 042560 800429B0 10000142 */  b           .L80042EBC
/* 042564 800429B4 AC8F0004 */   sw         $t7, 0x4($a0)
.L800429B8:
/* 042568 800429B8 8FA300C8 */  lw          $v1, 0xc8($sp)
/* 04256C 800429BC 00403025 */  move        $a2, $v0
/* 042570 800429C0 30650007 */  andi        $a1, $v1, 0x7
/* 042574 800429C4 10A00004 */  beqz        $a1, .L800429D8
/* 042578 800429C8 00602025 */   move       $a0, $v1
/* 04257C 800429CC 00652023 */  subu        $a0, $v1, $a1
/* 042580 800429D0 10000001 */  b           .L800429D8
/* 042584 800429D4 24840008 */   addiu      $a0, $a0, 0x8
.L800429D8:
/* 042588 800429D8 8FA300C0 */  lw          $v1, 0xc0($sp)
/* 04258C 800429DC 3C01FD00 */  lui         $at, 0xfd00
/* 042590 800429E0 2485FFFF */  addiu       $a1, $a0, -0x1
/* 042594 800429E4 30780007 */  andi        $t8, $v1, 0x7
/* 042598 800429E8 00181D40 */  sll         $v1, $t8, 21
/* 04259C 800429EC 0061C825 */  or          $t9, $v1, $at
/* 0425A0 800429F0 032D7825 */  or          $t7, $t9, $t5
/* 0425A4 800429F4 30B80FFF */  andi        $t8, $a1, 0xfff
/* 0425A8 800429F8 01F87025 */  or          $t6, $t7, $t8
/* 0425AC 800429FC ACCE0000 */  sw          $t6, 0x0($a2)
/* 0425B0 80042A00 8FB900AC */  lw          $t9, 0xac($sp)
/* 0425B4 80042A04 8FB800CC */  lw          $t8, 0xcc($sp)
/* 0425B8 80042A08 3C01F500 */  lui         $at, 0xf500
/* 0425BC 80042A0C 00990019 */  multu       $a0, $t9
/* 0425C0 80042A10 8FB900B0 */  lw          $t9, 0xb0($sp)
/* 0425C4 80042A14 24420008 */  addiu       $v0, $v0, 0x8
/* 0425C8 80042A18 00403825 */  move        $a3, $v0
/* 0425CC 80042A1C 24420008 */  addiu       $v0, $v0, 0x8
/* 0425D0 80042A20 00007812 */  mflo        $t7
/* 0425D4 80042A24 00000000 */  nop
/* 0425D8 80042A28 00000000 */  nop
/* 0425DC 80042A2C 01F80019 */  multu       $t7, $t8
/* 0425E0 80042A30 0061C025 */  or          $t8, $v1, $at
/* 0425E4 80042A34 3C010700 */  lui         $at, 0x700
/* 0425E8 80042A38 00401825 */  move        $v1, $v0
/* 0425EC 80042A3C 24420008 */  addiu       $v0, $v0, 0x8
/* 0425F0 80042A40 00007012 */  mflo        $t6
/* 0425F4 80042A44 032E7821 */  addu        $t7, $t9, $t6
/* 0425F8 80042A48 ACCF0004 */  sw          $t7, 0x4($a2)
/* 0425FC 80042A4C 248E0007 */  addiu       $t6, $a0, 0x7
/* 042600 80042A50 000E78C3 */  sra         $t7, $t6, 3
/* 042604 80042A54 030DC825 */  or          $t9, $t8, $t5
/* 042608 80042A58 31F801FF */  andi        $t8, $t7, 0x1ff
/* 04260C 80042A5C 00187240 */  sll         $t6, $t8, 9
/* 042610 80042A60 8FB800BC */  lw          $t8, 0xbc($sp)
/* 042614 80042A64 032E7825 */  or          $t7, $t9, $t6
/* 042618 80042A68 00406825 */  move        $t5, $v0
/* 04261C 80042A6C 331901FF */  andi        $t9, $t8, 0x1ff
/* 042620 80042A70 01F96025 */  or          $t4, $t7, $t9
/* 042624 80042A74 ACEC0000 */  sw          $t4, 0x0($a3)
/* 042628 80042A78 8FA800D8 */  lw          $t0, 0xd8($sp)
/* 04262C 80042A7C 8FAA00D4 */  lw          $t2, 0xd4($sp)
/* 042630 80042A80 8FA900E0 */  lw          $t1, 0xe0($sp)
/* 042634 80042A84 310E0003 */  andi        $t6, $t0, 0x3
/* 042638 80042A88 8FAB00DC */  lw          $t3, 0xdc($sp)
/* 04263C 80042A8C 000E4480 */  sll         $t0, $t6, 18
/* 042640 80042A90 314E0003 */  andi        $t6, $t2, 0x3
/* 042644 80042A94 312F000F */  andi        $t7, $t1, 0xf
/* 042648 80042A98 000F4B80 */  sll         $t1, $t7, 14
/* 04264C 80042A9C 000E5200 */  sll         $t2, $t6, 8
/* 042650 80042AA0 01017025 */  or          $t6, $t0, $at
/* 042654 80042AA4 316F000F */  andi        $t7, $t3, 0xf
/* 042658 80042AA8 000F5900 */  sll         $t3, $t7, 4
/* 04265C 80042AAC 01C9C025 */  or          $t8, $t6, $t1
/* 042660 80042AB0 030A7825 */  or          $t7, $t8, $t2
/* 042664 80042AB4 01EBC825 */  or          $t9, $t7, $t3
/* 042668 80042AB8 ACF90004 */  sw          $t9, 0x4($a3)
/* 04266C 80042ABC 3C0EE600 */  lui         $t6, 0xe600
/* 042670 80042AC0 AC6E0000 */  sw          $t6, 0x0($v1)
/* 042674 80042AC4 AC600004 */  sw          $zero, 0x4($v1)
/* 042678 80042AC8 3C18F400 */  lui         $t8, 0xf400
/* 04267C 80042ACC ADB80000 */  sw          $t8, 0x0($t5)
/* 042680 80042AD0 8FA600D0 */  lw          $a2, 0xd0($sp)
/* 042684 80042AD4 00052080 */  sll         $a0, $a1, 2
/* 042688 80042AD8 308F0FFF */  andi        $t7, $a0, 0xfff
/* 04268C 80042ADC 000F2300 */  sll         $a0, $t7, 12
/* 042690 80042AE0 00067080 */  sll         $t6, $a2, 2
/* 042694 80042AE4 31C60FFF */  andi        $a2, $t6, 0xfff
/* 042698 80042AE8 00817825 */  or          $t7, $a0, $at
/* 04269C 80042AEC 01E6C825 */  or          $t9, $t7, $a2
/* 0426A0 80042AF0 ADB90004 */  sw          $t9, 0x4($t5)
/* 0426A4 80042AF4 24420008 */  addiu       $v0, $v0, 0x8
/* 0426A8 80042AF8 AFA20070 */  sw          $v0, 0x70($sp)
/* 0426AC 80042AFC 8FB80070 */  lw          $t8, 0x70($sp)
/* 0426B0 80042B00 3C0EE700 */  lui         $t6, 0xe700
/* 0426B4 80042B04 24420008 */  addiu       $v0, $v0, 0x8
/* 0426B8 80042B08 AF0E0000 */  sw          $t6, 0x0($t8)
/* 0426BC 80042B0C 8FAF0070 */  lw          $t7, 0x70($sp)
/* 0426C0 80042B10 00403825 */  move        $a3, $v0
/* 0426C4 80042B14 24420008 */  addiu       $v0, $v0, 0x8
/* 0426C8 80042B18 ADE00004 */  sw          $zero, 0x4($t7)
/* 0426CC 80042B1C ACEC0000 */  sw          $t4, 0x0($a3)
/* 0426D0 80042B20 8FA300B8 */  lw          $v1, 0xb8($sp)
/* 0426D4 80042B24 00402825 */  move        $a1, $v0
/* 0426D8 80042B28 24420008 */  addiu       $v0, $v0, 0x8
/* 0426DC 80042B2C 30790007 */  andi        $t9, $v1, 0x7
/* 0426E0 80042B30 00191E00 */  sll         $v1, $t9, 24
/* 0426E4 80042B34 0068C025 */  or          $t8, $v1, $t0
/* 0426E8 80042B38 03097825 */  or          $t7, $t8, $t1
/* 0426EC 80042B3C 01EAC825 */  or          $t9, $t7, $t2
/* 0426F0 80042B40 032B7025 */  or          $t6, $t9, $t3
/* 0426F4 80042B44 00647825 */  or          $t7, $v1, $a0
/* 0426F8 80042B48 01E6C825 */  or          $t9, $t7, $a2
/* 0426FC 80042B4C ACEE0004 */  sw          $t6, 0x4($a3)
/* 042700 80042B50 3C18F200 */  lui         $t8, 0xf200
/* 042704 80042B54 ACB80000 */  sw          $t8, 0x0($a1)
/* 042708 80042B58 100000D8 */  b           .L80042EBC
/* 04270C 80042B5C ACB90004 */   sw         $t9, 0x4($a1)
.L80042B60:
/* 042710 80042B60 8FA300C8 */  lw          $v1, 0xc8($sp)
/* 042714 80042B64 00403025 */  move        $a2, $v0
/* 042718 80042B68 30650003 */  andi        $a1, $v1, 0x3
/* 04271C 80042B6C 10A00004 */  beqz        $a1, .L80042B80
/* 042720 80042B70 00602025 */   move       $a0, $v1
/* 042724 80042B74 00652023 */  subu        $a0, $v1, $a1
/* 042728 80042B78 10000001 */  b           .L80042B80
/* 04272C 80042B7C 24840004 */   addiu      $a0, $a0, 0x4
.L80042B80:
/* 042730 80042B80 8FA300C0 */  lw          $v1, 0xc0($sp)
/* 042734 80042B84 3C01FD00 */  lui         $at, 0xfd00
/* 042738 80042B88 2485FFFF */  addiu       $a1, $a0, -0x1
/* 04273C 80042B8C 306E0007 */  andi        $t6, $v1, 0x7
/* 042740 80042B90 000E1D40 */  sll         $v1, $t6, 21
/* 042744 80042B94 00617825 */  or          $t7, $v1, $at
/* 042748 80042B98 01EDC825 */  or          $t9, $t7, $t5
/* 04274C 80042B9C 30AE0FFF */  andi        $t6, $a1, 0xfff
/* 042750 80042BA0 032EC025 */  or          $t8, $t9, $t6
/* 042754 80042BA4 ACD80000 */  sw          $t8, 0x0($a2)
/* 042758 80042BA8 8FAF00AC */  lw          $t7, 0xac($sp)
/* 04275C 80042BAC 8FAE00CC */  lw          $t6, 0xcc($sp)
/* 042760 80042BB0 3C01F500 */  lui         $at, 0xf500
/* 042764 80042BB4 008F0019 */  multu       $a0, $t7
/* 042768 80042BB8 24420008 */  addiu       $v0, $v0, 0x8
/* 04276C 80042BBC 00403825 */  move        $a3, $v0
/* 042770 80042BC0 24420008 */  addiu       $v0, $v0, 0x8
/* 042774 80042BC4 0000C812 */  mflo        $t9
/* 042778 80042BC8 00000000 */  nop
/* 04277C 80042BCC 00000000 */  nop
/* 042780 80042BD0 032E0019 */  multu       $t9, $t6
/* 042784 80042BD4 8FB900B0 */  lw          $t9, 0xb0($sp)
/* 042788 80042BD8 0000C012 */  mflo        $t8
/* 04278C 80042BDC 00187840 */  sll         $t7, $t8, 1
/* 042790 80042BE0 032F7021 */  addu        $t6, $t9, $t7
/* 042794 80042BE4 ACCE0004 */  sw          $t6, 0x4($a2)
/* 042798 80042BE8 00047840 */  sll         $t7, $a0, 1
/* 04279C 80042BEC 0061C025 */  or          $t8, $v1, $at
/* 0427A0 80042BF0 030DC825 */  or          $t9, $t8, $t5
/* 0427A4 80042BF4 25EE0007 */  addiu       $t6, $t7, 0x7
/* 0427A8 80042BF8 000EC0C3 */  sra         $t8, $t6, 3
/* 0427AC 80042BFC 330F01FF */  andi        $t7, $t8, 0x1ff
/* 0427B0 80042C00 000F7240 */  sll         $t6, $t7, 9
/* 0427B4 80042C04 8FAF00BC */  lw          $t7, 0xbc($sp)
/* 0427B8 80042C08 032EC025 */  or          $t8, $t9, $t6
/* 0427BC 80042C0C 3C010700 */  lui         $at, 0x700
/* 0427C0 80042C10 31F901FF */  andi        $t9, $t7, 0x1ff
/* 0427C4 80042C14 03196025 */  or          $t4, $t8, $t9
/* 0427C8 80042C18 ACEC0000 */  sw          $t4, 0x0($a3)
/* 0427CC 80042C1C 8FA800D8 */  lw          $t0, 0xd8($sp)
/* 0427D0 80042C20 8FAA00D4 */  lw          $t2, 0xd4($sp)
/* 0427D4 80042C24 8FA900E0 */  lw          $t1, 0xe0($sp)
/* 0427D8 80042C28 310E0003 */  andi        $t6, $t0, 0x3
/* 0427DC 80042C2C 8FAB00DC */  lw          $t3, 0xdc($sp)
/* 0427E0 80042C30 000E4480 */  sll         $t0, $t6, 18
/* 0427E4 80042C34 314E0003 */  andi        $t6, $t2, 0x3
/* 0427E8 80042C38 3138000F */  andi        $t8, $t1, 0xf
/* 0427EC 80042C3C 00184B80 */  sll         $t1, $t8, 14
/* 0427F0 80042C40 000E5200 */  sll         $t2, $t6, 8
/* 0427F4 80042C44 01017025 */  or          $t6, $t0, $at
/* 0427F8 80042C48 3178000F */  andi        $t8, $t3, 0xf
/* 0427FC 80042C4C 00185900 */  sll         $t3, $t8, 4
/* 042800 80042C50 01C97825 */  or          $t7, $t6, $t1
/* 042804 80042C54 01EAC025 */  or          $t8, $t7, $t2
/* 042808 80042C58 030BC825 */  or          $t9, $t8, $t3
/* 04280C 80042C5C 00401825 */  move        $v1, $v0
/* 042810 80042C60 ACF90004 */  sw          $t9, 0x4($a3)
/* 042814 80042C64 24420008 */  addiu       $v0, $v0, 0x8
/* 042818 80042C68 3C0EE600 */  lui         $t6, 0xe600
/* 04281C 80042C6C AC6E0000 */  sw          $t6, 0x0($v1)
/* 042820 80042C70 00406825 */  move        $t5, $v0
/* 042824 80042C74 AC600004 */  sw          $zero, 0x4($v1)
/* 042828 80042C78 3C0FF400 */  lui         $t7, 0xf400
/* 04282C 80042C7C ADAF0000 */  sw          $t7, 0x0($t5)
/* 042830 80042C80 8FA600D0 */  lw          $a2, 0xd0($sp)
/* 042834 80042C84 00052080 */  sll         $a0, $a1, 2
/* 042838 80042C88 30980FFF */  andi        $t8, $a0, 0xfff
/* 04283C 80042C8C 00182300 */  sll         $a0, $t8, 12
/* 042840 80042C90 00067080 */  sll         $t6, $a2, 2
/* 042844 80042C94 31C60FFF */  andi        $a2, $t6, 0xfff
/* 042848 80042C98 0081C025 */  or          $t8, $a0, $at
/* 04284C 80042C9C 0306C825 */  or          $t9, $t8, $a2
/* 042850 80042CA0 ADB90004 */  sw          $t9, 0x4($t5)
/* 042854 80042CA4 24420008 */  addiu       $v0, $v0, 0x8
/* 042858 80042CA8 AFA20054 */  sw          $v0, 0x54($sp)
/* 04285C 80042CAC 8FAF0054 */  lw          $t7, 0x54($sp)
/* 042860 80042CB0 3C0EE700 */  lui         $t6, 0xe700
/* 042864 80042CB4 24420008 */  addiu       $v0, $v0, 0x8
/* 042868 80042CB8 ADEE0000 */  sw          $t6, 0x0($t7)
/* 04286C 80042CBC 8FB80054 */  lw          $t8, 0x54($sp)
/* 042870 80042CC0 00403825 */  move        $a3, $v0
/* 042874 80042CC4 24420008 */  addiu       $v0, $v0, 0x8
/* 042878 80042CC8 AF000004 */  sw          $zero, 0x4($t8)
/* 04287C 80042CCC ACEC0000 */  sw          $t4, 0x0($a3)
/* 042880 80042CD0 8FA300B8 */  lw          $v1, 0xb8($sp)
/* 042884 80042CD4 00402825 */  move        $a1, $v0
/* 042888 80042CD8 24420008 */  addiu       $v0, $v0, 0x8
/* 04288C 80042CDC 30790007 */  andi        $t9, $v1, 0x7
/* 042890 80042CE0 00191E00 */  sll         $v1, $t9, 24
/* 042894 80042CE4 00687825 */  or          $t7, $v1, $t0
/* 042898 80042CE8 01E9C025 */  or          $t8, $t7, $t1
/* 04289C 80042CEC 030AC825 */  or          $t9, $t8, $t2
/* 0428A0 80042CF0 032B7025 */  or          $t6, $t9, $t3
/* 0428A4 80042CF4 0064C025 */  or          $t8, $v1, $a0
/* 0428A8 80042CF8 0306C825 */  or          $t9, $t8, $a2
/* 0428AC 80042CFC ACEE0004 */  sw          $t6, 0x4($a3)
/* 0428B0 80042D00 3C0FF200 */  lui         $t7, 0xf200
/* 0428B4 80042D04 ACAF0000 */  sw          $t7, 0x0($a1)
/* 0428B8 80042D08 1000006C */  b           .L80042EBC
/* 0428BC 80042D0C ACB90004 */   sw         $t9, 0x4($a1)
.L80042D10:
/* 0428C0 80042D10 8FA300C8 */  lw          $v1, 0xc8($sp)
/* 0428C4 80042D14 00403025 */  move        $a2, $v0
/* 0428C8 80042D18 30650003 */  andi        $a1, $v1, 0x3
/* 0428CC 80042D1C 10A00004 */  beqz        $a1, .L80042D30
/* 0428D0 80042D20 00602025 */   move       $a0, $v1
/* 0428D4 80042D24 00652023 */  subu        $a0, $v1, $a1
/* 0428D8 80042D28 10000001 */  b           .L80042D30
/* 0428DC 80042D2C 24840004 */   addiu      $a0, $a0, 0x4
.L80042D30:
/* 0428E0 80042D30 8FA300C0 */  lw          $v1, 0xc0($sp)
/* 0428E4 80042D34 3C01FD00 */  lui         $at, 0xfd00
/* 0428E8 80042D38 2485FFFF */  addiu       $a1, $a0, -0x1
/* 0428EC 80042D3C 306E0007 */  andi        $t6, $v1, 0x7
/* 0428F0 80042D40 000E1D40 */  sll         $v1, $t6, 21
/* 0428F4 80042D44 0061C025 */  or          $t8, $v1, $at
/* 0428F8 80042D48 030DC825 */  or          $t9, $t8, $t5
/* 0428FC 80042D4C 30AE0FFF */  andi        $t6, $a1, 0xfff
/* 042900 80042D50 032E7825 */  or          $t7, $t9, $t6
/* 042904 80042D54 ACCF0000 */  sw          $t7, 0x0($a2)
/* 042908 80042D58 8FB800AC */  lw          $t8, 0xac($sp)
/* 04290C 80042D5C 8FAE00CC */  lw          $t6, 0xcc($sp)
/* 042910 80042D60 3C01F500 */  lui         $at, 0xf500
/* 042914 80042D64 00980019 */  multu       $a0, $t8
/* 042918 80042D68 24420008 */  addiu       $v0, $v0, 0x8
/* 04291C 80042D6C 00403825 */  move        $a3, $v0
/* 042920 80042D70 24420008 */  addiu       $v0, $v0, 0x8
/* 042924 80042D74 0000C812 */  mflo        $t9
/* 042928 80042D78 00000000 */  nop
/* 04292C 80042D7C 00000000 */  nop
/* 042930 80042D80 032E0019 */  multu       $t9, $t6
/* 042934 80042D84 8FB900B0 */  lw          $t9, 0xb0($sp)
/* 042938 80042D88 00007812 */  mflo        $t7
/* 04293C 80042D8C 000FC080 */  sll         $t8, $t7, 2
/* 042940 80042D90 03387021 */  addu        $t6, $t9, $t8
/* 042944 80042D94 ACCE0004 */  sw          $t6, 0x4($a2)
/* 042948 80042D98 0004C040 */  sll         $t8, $a0, 1
/* 04294C 80042D9C 00617825 */  or          $t7, $v1, $at
/* 042950 80042DA0 01EDC825 */  or          $t9, $t7, $t5
/* 042954 80042DA4 270E0007 */  addiu       $t6, $t8, 0x7
/* 042958 80042DA8 000E78C3 */  sra         $t7, $t6, 3
/* 04295C 80042DAC 31F801FF */  andi        $t8, $t7, 0x1ff
/* 042960 80042DB0 00187240 */  sll         $t6, $t8, 9
/* 042964 80042DB4 8FB800BC */  lw          $t8, 0xbc($sp)
/* 042968 80042DB8 032E7825 */  or          $t7, $t9, $t6
/* 04296C 80042DBC 3C010700 */  lui         $at, 0x700
/* 042970 80042DC0 331901FF */  andi        $t9, $t8, 0x1ff
/* 042974 80042DC4 01F96025 */  or          $t4, $t7, $t9
/* 042978 80042DC8 ACEC0000 */  sw          $t4, 0x0($a3)
/* 04297C 80042DCC 8FA800D8 */  lw          $t0, 0xd8($sp)
/* 042980 80042DD0 8FAA00D4 */  lw          $t2, 0xd4($sp)
/* 042984 80042DD4 8FA900E0 */  lw          $t1, 0xe0($sp)
/* 042988 80042DD8 310E0003 */  andi        $t6, $t0, 0x3
/* 04298C 80042DDC 8FAB00DC */  lw          $t3, 0xdc($sp)
/* 042990 80042DE0 000E4480 */  sll         $t0, $t6, 18
/* 042994 80042DE4 314E0003 */  andi        $t6, $t2, 0x3
/* 042998 80042DE8 312F000F */  andi        $t7, $t1, 0xf
/* 04299C 80042DEC 000F4B80 */  sll         $t1, $t7, 14
/* 0429A0 80042DF0 000E5200 */  sll         $t2, $t6, 8
/* 0429A4 80042DF4 01017025 */  or          $t6, $t0, $at
/* 0429A8 80042DF8 316F000F */  andi        $t7, $t3, 0xf
/* 0429AC 80042DFC 000F5900 */  sll         $t3, $t7, 4
/* 0429B0 80042E00 01C9C025 */  or          $t8, $t6, $t1
/* 0429B4 80042E04 030A7825 */  or          $t7, $t8, $t2
/* 0429B8 80042E08 01EBC825 */  or          $t9, $t7, $t3
/* 0429BC 80042E0C 00401825 */  move        $v1, $v0
/* 0429C0 80042E10 ACF90004 */  sw          $t9, 0x4($a3)
/* 0429C4 80042E14 24420008 */  addiu       $v0, $v0, 0x8
/* 0429C8 80042E18 3C0EE600 */  lui         $t6, 0xe600
/* 0429CC 80042E1C AC6E0000 */  sw          $t6, 0x0($v1)
/* 0429D0 80042E20 00406825 */  move        $t5, $v0
/* 0429D4 80042E24 AC600004 */  sw          $zero, 0x4($v1)
/* 0429D8 80042E28 3C18F400 */  lui         $t8, 0xf400
/* 0429DC 80042E2C ADB80000 */  sw          $t8, 0x0($t5)
/* 0429E0 80042E30 8FA600D0 */  lw          $a2, 0xd0($sp)
/* 0429E4 80042E34 00052080 */  sll         $a0, $a1, 2
/* 0429E8 80042E38 308F0FFF */  andi        $t7, $a0, 0xfff
/* 0429EC 80042E3C 000F2300 */  sll         $a0, $t7, 12
/* 0429F0 80042E40 00067080 */  sll         $t6, $a2, 2
/* 0429F4 80042E44 31C60FFF */  andi        $a2, $t6, 0xfff
/* 0429F8 80042E48 00817825 */  or          $t7, $a0, $at
/* 0429FC 80042E4C 01E6C825 */  or          $t9, $t7, $a2
/* 042A00 80042E50 ADB90004 */  sw          $t9, 0x4($t5)
/* 042A04 80042E54 24420008 */  addiu       $v0, $v0, 0x8
/* 042A08 80042E58 AFA20038 */  sw          $v0, 0x38($sp)
/* 042A0C 80042E5C 8FB80038 */  lw          $t8, 0x38($sp)
/* 042A10 80042E60 3C0EE700 */  lui         $t6, 0xe700
/* 042A14 80042E64 24420008 */  addiu       $v0, $v0, 0x8
/* 042A18 80042E68 AF0E0000 */  sw          $t6, 0x0($t8)
/* 042A1C 80042E6C 8FAF0038 */  lw          $t7, 0x38($sp)
/* 042A20 80042E70 00403825 */  move        $a3, $v0
/* 042A24 80042E74 24420008 */  addiu       $v0, $v0, 0x8
/* 042A28 80042E78 ADE00004 */  sw          $zero, 0x4($t7)
/* 042A2C 80042E7C ACEC0000 */  sw          $t4, 0x0($a3)
/* 042A30 80042E80 8FA300B8 */  lw          $v1, 0xb8($sp)
/* 042A34 80042E84 00402825 */  move        $a1, $v0
/* 042A38 80042E88 24420008 */  addiu       $v0, $v0, 0x8
/* 042A3C 80042E8C 30790007 */  andi        $t9, $v1, 0x7
/* 042A40 80042E90 00191E00 */  sll         $v1, $t9, 24
/* 042A44 80042E94 0068C025 */  or          $t8, $v1, $t0
/* 042A48 80042E98 03097825 */  or          $t7, $t8, $t1
/* 042A4C 80042E9C 01EAC825 */  or          $t9, $t7, $t2
/* 042A50 80042EA0 032B7025 */  or          $t6, $t9, $t3
/* 042A54 80042EA4 ACEE0004 */  sw          $t6, 0x4($a3)
/* 042A58 80042EA8 00647825 */  or          $t7, $v1, $a0
/* 042A5C 80042EAC 01E6C825 */  or          $t9, $t7, $a2
/* 042A60 80042EB0 3C18F200 */  lui         $t8, 0xf200
/* 042A64 80042EB4 ACB80000 */  sw          $t8, 0x0($a1)
/* 042A68 80042EB8 ACB90004 */  sw          $t9, 0x4($a1)
.L80042EBC:
/* 042A6C 80042EBC 8FAE00B8 */  lw          $t6, 0xb8($sp)
.L80042EC0:
/* 042A70 80042EC0 24010001 */  addiu       $at, $zero, 0x1
/* 042A74 80042EC4 3C18800A */  lui         $t8, %hi(D_800A2E00)
/* 042A78 80042EC8 15C10031 */  bne         $t6, $at, .L80042F90
/* 042A7C 80042ECC 00401825 */   move       $v1, $v0
/* 042A80 80042ED0 8F182E00 */  lw          $t8, %lo(D_800A2E00)($t8)
/* 042A84 80042ED4 3C0FFD10 */  lui         $t7, 0xfd10
/* 042A88 80042ED8 3C19800A */  lui         $t9, %hi(D_800A2E00)
/* 042A8C 80042EDC 1300002C */  beqz        $t8, .L80042F90
/* 042A90 80042EE0 3C0EE800 */   lui        $t6, 0xe800
/* 042A94 80042EE4 00401825 */  move        $v1, $v0
/* 042A98 80042EE8 AC6F0000 */  sw          $t7, 0x0($v1)
/* 042A9C 80042EEC 8F392E00 */  lw          $t9, %lo(D_800A2E00)($t9)
/* 042AA0 80042EF0 24420008 */  addiu       $v0, $v0, 0x8
/* 042AA4 80042EF4 00402025 */  move        $a0, $v0
/* 042AA8 80042EF8 AC790004 */  sw          $t9, 0x4($v1)
/* 042AAC 80042EFC 24420008 */  addiu       $v0, $v0, 0x8
/* 042AB0 80042F00 00402825 */  move        $a1, $v0
/* 042AB4 80042F04 AC8E0000 */  sw          $t6, 0x0($a0)
/* 042AB8 80042F08 AC800004 */  sw          $zero, 0x4($a0)
/* 042ABC 80042F0C 3C18F500 */  lui         $t8, 0xf500
/* 042AC0 80042F10 37180100 */  ori         $t8, $t8, 0x100
/* 042AC4 80042F14 24420008 */  addiu       $v0, $v0, 0x8
/* 042AC8 80042F18 3C0F0700 */  lui         $t7, 0x700
/* 042ACC 80042F1C ACAF0004 */  sw          $t7, 0x4($a1)
/* 042AD0 80042F20 00403025 */  move        $a2, $v0
/* 042AD4 80042F24 ACB80000 */  sw          $t8, 0x0($a1)
/* 042AD8 80042F28 24420008 */  addiu       $v0, $v0, 0x8
/* 042ADC 80042F2C 3C19E600 */  lui         $t9, 0xe600
/* 042AE0 80042F30 ACD90000 */  sw          $t9, 0x0($a2)
/* 042AE4 80042F34 00403825 */  move        $a3, $v0
/* 042AE8 80042F38 24420008 */  addiu       $v0, $v0, 0x8
/* 042AEC 80042F3C ACC00004 */  sw          $zero, 0x4($a2)
/* 042AF0 80042F40 3C18073F */  lui         $t8, 0x73f
/* 042AF4 80042F44 3C0EF000 */  lui         $t6, 0xf000
/* 042AF8 80042F48 ACEE0000 */  sw          $t6, 0x0($a3)
/* 042AFC 80042F4C 3718C000 */  ori         $t8, $t8, 0xc000
/* 042B00 80042F50 00401825 */  move        $v1, $v0
/* 042B04 80042F54 ACF80004 */  sw          $t8, 0x4($a3)
/* 042B08 80042F58 24420008 */  addiu       $v0, $v0, 0x8
/* 042B0C 80042F5C 3C0FE700 */  lui         $t7, 0xe700
/* 042B10 80042F60 AC6F0000 */  sw          $t7, 0x0($v1)
/* 042B14 80042F64 AC600004 */  sw          $zero, 0x4($v1)
/* 042B18 80042F68 00402025 */  move        $a0, $v0
/* 042B1C 80042F6C 3C19E300 */  lui         $t9, 0xe300
/* 042B20 80042F70 37391001 */  ori         $t9, $t9, 0x1001
/* 042B24 80042F74 340E8000 */  ori         $t6, $zero, 0x8000
/* 042B28 80042F78 AC8E0004 */  sw          $t6, 0x4($a0)
/* 042B2C 80042F7C AC990000 */  sw          $t9, 0x0($a0)
/* 042B30 80042F80 3C01800A */  lui         $at, %hi(D_800A2E00)
/* 042B34 80042F84 24420008 */  addiu       $v0, $v0, 0x8
/* 042B38 80042F88 10000006 */  b           .L80042FA4
/* 042B3C 80042F8C AC202E00 */   sw         $zero, %lo(D_800A2E00)($at)
.L80042F90:
/* 042B40 80042F90 3C18E300 */  lui         $t8, 0xe300
/* 042B44 80042F94 37181001 */  ori         $t8, $t8, 0x1001
/* 042B48 80042F98 AC780000 */  sw          $t8, 0x0($v1)
/* 042B4C 80042F9C 24420008 */  addiu       $v0, $v0, 0x8
/* 042B50 80042FA0 AC600004 */  sw          $zero, 0x4($v1)
.L80042FA4:
/* 042B54 80042FA4 8FAF00A8 */  lw          $t7, 0xa8($sp)
/* 042B58 80042FA8 27BD00A8 */  addiu       $sp, $sp, 0xa8
/* 042B5C 80042FAC 03E00008 */  jr          $ra
/* 042B60 80042FB0 ADE20000 */   sw         $v0, 0x0($t7)

glabel func_80042FB4 # 6
/* 042B64 80042FB4 27BDFED0 */  addiu       $sp, $sp, -0x130
/* 042B68 80042FB8 3C014480 */  lui         $at, 0x4480
/* 042B6C 80042FBC 44810000 */  mtc1        $at, $f0
/* 042B70 80042FC0 C7AC0154 */  lwc1        $f12, 0x154($sp)
/* 042B74 80042FC4 C7A40150 */  lwc1        $f4, 0x150($sp)
/* 042B78 80042FC8 AFBF004C */  sw          $ra, 0x4c($sp)
/* 042B7C 80042FCC AFB10048 */  sw          $s1, 0x48($sp)
/* 042B80 80042FD0 AFB00044 */  sw          $s0, 0x44($sp)
/* 042B84 80042FD4 AFA40130 */  sw          $a0, 0x130($sp)
/* 042B88 80042FD8 AFA60138 */  sw          $a2, 0x138($sp)
/* 042B8C 80042FDC AFA7013C */  sw          $a3, 0x13c($sp)
/* 042B90 80042FE0 AFA00118 */  sw          $zero, 0x118($sp)
/* 042B94 80042FE4 AFA00114 */  sw          $zero, 0x114($sp)
/* 042B98 80042FE8 AFA70110 */  sw          $a3, 0x110($sp)
/* 042B9C 80042FEC 8C980000 */  lw          $t8, 0x0($a0)
/* 042BA0 80042FF0 460C0483 */  div.s       $f18, $f0, $f12
/* 042BA4 80042FF4 3C013FE0 */  lui         $at, 0x3fe0
/* 042BA8 80042FF8 AFB800F4 */  sw          $t8, 0xf4($sp)
/* 042BAC 80042FFC 8CB90000 */  lw          $t9, 0x0($a1)
/* 042BB0 80043000 44811800 */  mtc1        $at, $f3
/* 042BB4 80043004 44801000 */  mtc1        $zero, $f2
/* 042BB8 80043008 AFB900F0 */  sw          $t9, 0xf0($sp)
/* 042BBC 8004300C 8CAE0004 */  lw          $t6, 0x4($a1)
/* 042BC0 80043010 03004025 */  move        $t0, $t8
/* 042BC4 80043014 AFAE00EC */  sw          $t6, 0xec($sp)
/* 042BC8 80043018 8CA90008 */  lw          $t1, 0x8($a1)
/* 042BCC 8004301C 8CAA000C */  lw          $t2, 0xc($a1)
/* 042BD0 80043020 AFA900E0 */  sw          $t1, 0xe0($sp)
/* 042BD4 80043024 AFAA00DC */  sw          $t2, 0xdc($sp)
/* 042BD8 80043028 8CAF0010 */  lw          $t7, 0x10($a1)
/* 042BDC 8004302C AFAF00D8 */  sw          $t7, 0xd8($sp)
/* 042BE0 80043030 8CB90014 */  lw          $t9, 0x14($a1)
/* 042BE4 80043034 46040183 */  div.s       $f6, $f0, $f4
/* 042BE8 80043038 AFB900D4 */  sw          $t9, 0xd4($sp)
/* 042BEC 8004303C 8CAE0018 */  lw          $t6, 0x18($a1)
/* 042BF0 80043040 3C19E700 */  lui         $t9, 0xe700
/* 042BF4 80043044 46009121 */  cvt.d.s     $f4, $f18
/* 042BF8 80043048 AFAE00D0 */  sw          $t6, 0xd0($sp)
/* 042BFC 8004304C 8CAF001C */  lw          $t7, 0x1c($a1)
/* 042C00 80043050 AFAF00CC */  sw          $t7, 0xcc($sp)
/* 042C04 80043054 8CB10020 */  lw          $s1, 0x20($a1)
/* 042C08 80043058 8CAB0024 */  lw          $t3, 0x24($a1)
/* 042C0C 8004305C 270F0008 */  addiu       $t7, $t8, 0x8
/* 042C10 80043060 AFAF00F4 */  sw          $t7, 0xf4($sp)
/* 042C14 80043064 3C0FE300 */  lui         $t7, 0xe300
/* 042C18 80043068 35EF0A01 */  ori         $t7, $t7, 0xa01
/* 042C1C 8004306C 46003221 */  cvt.d.s     $f8, $f6
/* 042C20 80043070 46222180 */  add.d       $f6, $f4, $f2
/* 042C24 80043074 46224280 */  add.d       $f10, $f8, $f2
/* 042C28 80043078 4620320D */  trunc.w.d   $f8, $f6
/* 042C2C 8004307C 4620540D */  trunc.w.d   $f16, $f10
/* 042C30 80043080 440D4000 */  mfc1        $t5, $f8
/* 042C34 80043084 440C8000 */  mfc1        $t4, $f16
/* 042C38 80043088 AFAD00F8 */  sw          $t5, 0xf8($sp)
/* 042C3C 8004308C AFAC00FC */  sw          $t4, 0xfc($sp)
/* 042C40 80043090 AF000004 */  sw          $zero, 0x4($t8)
/* 042C44 80043094 AF190000 */  sw          $t9, 0x0($t8)
/* 042C48 80043098 8FAE00F4 */  lw          $t6, 0xf4($sp)
/* 042C4C 8004309C 3C190010 */  lui         $t9, 0x10
/* 042C50 800430A0 25D80008 */  addiu       $t8, $t6, 0x8
/* 042C54 800430A4 AFB800F4 */  sw          $t8, 0xf4($sp)
/* 042C58 800430A8 ADD90004 */  sw          $t9, 0x4($t6)
/* 042C5C 800430AC ADCF0000 */  sw          $t7, 0x0($t6)
/* 042C60 800430B0 8FAE00F4 */  lw          $t6, 0xf4($sp)
/* 042C64 800430B4 3C0FE300 */  lui         $t7, 0xe300
/* 042C68 800430B8 35EF0F00 */  ori         $t7, $t7, 0xf00
/* 042C6C 800430BC 25D80008 */  addiu       $t8, $t6, 0x8
/* 042C70 800430C0 AFB800F4 */  sw          $t8, 0xf4($sp)
/* 042C74 800430C4 ADC00004 */  sw          $zero, 0x4($t6)
/* 042C78 800430C8 ADCF0000 */  sw          $t7, 0x0($t6)
/* 042C7C 800430CC 8FB900F4 */  lw          $t9, 0xf4($sp)
/* 042C80 800430D0 3C18E300 */  lui         $t8, 0xe300
/* 042C84 800430D4 37180C00 */  ori         $t8, $t8, 0xc00
/* 042C88 800430D8 272E0008 */  addiu       $t6, $t9, 0x8
/* 042C8C 800430DC AFAE00F4 */  sw          $t6, 0xf4($sp)
/* 042C90 800430E0 AF200004 */  sw          $zero, 0x4($t9)
/* 042C94 800430E4 AF380000 */  sw          $t8, 0x0($t9)
/* 042C98 800430E8 8FAF00F4 */  lw          $t7, 0xf4($sp)
/* 042C9C 800430EC 3C0EE300 */  lui         $t6, 0xe300
/* 042CA0 800430F0 35CE1201 */  ori         $t6, $t6, 0x1201
/* 042CA4 800430F4 25F90008 */  addiu       $t9, $t7, 0x8
/* 042CA8 800430F8 AFB900F4 */  sw          $t9, 0xf4($sp)
/* 042CAC 800430FC 24182000 */  addiu       $t8, $zero, 0x2000
/* 042CB0 80043100 ADF80004 */  sw          $t8, 0x4($t7)
/* 042CB4 80043104 ADEE0000 */  sw          $t6, 0x0($t7)
/* 042CB8 80043108 01E02825 */  move        $a1, $t7
/* 042CBC 8004310C 8FAF00F4 */  lw          $t7, 0xf4($sp)
/* 042CC0 80043110 3C0EE300 */  lui         $t6, 0xe300
/* 042CC4 80043114 35CE1402 */  ori         $t6, $t6, 0x1402
/* 042CC8 80043118 25F90008 */  addiu       $t9, $t7, 0x8
/* 042CCC 8004311C AFB900F4 */  sw          $t9, 0xf4($sp)
/* 042CD0 80043120 24180C00 */  addiu       $t8, $zero, 0xc00
/* 042CD4 80043124 ADF80004 */  sw          $t8, 0x4($t7)
/* 042CD8 80043128 ADEE0000 */  sw          $t6, 0x0($t7)
/* 042CDC 8004312C 01E03025 */  move        $a2, $t7
/* 042CE0 80043130 8FAF00F4 */  lw          $t7, 0xf4($sp)
/* 042CE4 80043134 3C0EE300 */  lui         $t6, 0xe300
/* 042CE8 80043138 35CE0D01 */  ori         $t6, $t6, 0xd01
/* 042CEC 8004313C 25F90008 */  addiu       $t9, $t7, 0x8
/* 042CF0 80043140 AFB900F4 */  sw          $t9, 0xf4($sp)
/* 042CF4 80043144 ADE00004 */  sw          $zero, 0x4($t7)
/* 042CF8 80043148 ADEE0000 */  sw          $t6, 0x0($t7)
/* 042CFC 8004314C 8FB80148 */  lw          $t8, 0x148($sp)
/* 042D00 80043150 27A500C0 */  addiu       $a1, $sp, 0xc0
/* 042D04 80043154 1300000A */  beqz        $t8, .L80043180
/* 042D08 80043158 02201025 */   move       $v0, $s1
/* 042D0C 8004315C 00008025 */  move        $s0, $zero
.L80043160:
/* 042D10 80043160 00027842 */  srl         $t7, $v0, 1
/* 042D14 80043164 15E00004 */  bnez        $t7, .L80043178
/* 042D18 80043168 01E01025 */   move       $v0, $t7
/* 042D1C 8004316C AFB00128 */  sw          $s0, 0x128($sp)
/* 042D20 80043170 10000007 */  b           .L80043190
/* 042D24 80043174 00008025 */   move       $s0, $zero
.L80043178:
/* 042D28 80043178 1000FFF9 */  b           .L80043160
/* 042D2C 8004317C 26100001 */   addiu      $s0, $s0, 0x1
.L80043180:
/* 042D30 80043180 24190001 */  addiu       $t9, $zero, 0x1
/* 042D34 80043184 AFB90148 */  sw          $t9, 0x148($sp)
/* 042D38 80043188 AFA00128 */  sw          $zero, 0x128($sp)
/* 042D3C 8004318C 00008025 */  move        $s0, $zero
.L80043190:
/* 042D40 80043190 8FAE014C */  lw          $t6, 0x14c($sp)
/* 042D44 80043194 11C00009 */  beqz        $t6, .L800431BC
/* 042D48 80043198 01601025 */   move       $v0, $t3
.L8004319C:
/* 042D4C 8004319C 0002C042 */  srl         $t8, $v0, 1
/* 042D50 800431A0 17000004 */  bnez        $t8, .L800431B4
/* 042D54 800431A4 03001025 */   move       $v0, $t8
/* 042D58 800431A8 AFB00124 */  sw          $s0, 0x124($sp)
/* 042D5C 800431AC 10000006 */  b           .L800431C8
/* 042D60 800431B0 00008025 */   move       $s0, $zero
.L800431B4:
/* 042D64 800431B4 1000FFF9 */  b           .L8004319C
/* 042D68 800431B8 26100001 */   addiu      $s0, $s0, 0x1
.L800431BC:
/* 042D6C 800431BC 240F0001 */  addiu       $t7, $zero, 0x1
/* 042D70 800431C0 AFAF014C */  sw          $t7, 0x14c($sp)
/* 042D74 800431C4 AFA00124 */  sw          $zero, 0x124($sp)
.L800431C8:
/* 042D78 800431C8 8FB900DC */  lw          $t9, 0xdc($sp)
/* 042D7C 800431CC 53200009 */  beql        $t9, $zero, .L800431F4
/* 042D80 800431D0 8FAE00CC */   lw         $t6, 0xcc($sp)
/* 042D84 800431D4 24010001 */  addiu       $at, $zero, 0x1
/* 042D88 800431D8 1321001A */  beq         $t9, $at, .L80043244
/* 042D8C 800431DC 24030002 */   addiu      $v1, $zero, 0x2
/* 042D90 800431E0 5323002C */  beql        $t9, $v1, .L80043294
/* 042D94 800431E4 8FAE00CC */   lw         $t6, 0xcc($sp)
/* 042D98 800431E8 1000002F */  b           .L800432A8
/* 042D9C 800431EC 00000000 */   nop
/* 042DA0 800431F0 8FAE00CC */  lw          $t6, 0xcc($sp)
.L800431F4:
/* 042DA4 800431F4 51C0000C */  beql        $t6, $zero, .L80043228
/* 042DA8 800431F8 8FB800D0 */   lw         $t8, 0xd0($sp)
/* 042DAC 800431FC 24010001 */  addiu       $at, $zero, 0x1
/* 042DB0 80043200 11C1000C */  beq         $t6, $at, .L80043234
/* 042DB4 80043204 24030002 */   addiu      $v1, $zero, 0x2
/* 042DB8 80043208 51C3000C */  beql        $t6, $v1, .L8004323C
/* 042DBC 8004320C 8FAA00CC */   lw         $t2, 0xcc($sp)
/* 042DC0 80043210 24010003 */  addiu       $at, $zero, 0x3
/* 042DC4 80043214 51C10009 */  beql        $t6, $at, .L8004323C
/* 042DC8 80043218 8FAA00CC */   lw         $t2, 0xcc($sp)
/* 042DCC 8004321C 10000022 */  b           .L800432A8
/* 042DD0 80043220 00000000 */   nop
/* 042DD4 80043224 8FB800D0 */  lw          $t8, 0xd0($sp)
.L80043228:
/* 042DD8 80043228 24030002 */  addiu       $v1, $zero, 0x2
/* 042DDC 8004322C 1703001E */  bne         $t8, $v1, .L800432A8
/* 042DE0 80043230 00000000 */   nop
.L80043234:
/* 042DE4 80043234 24030002 */  addiu       $v1, $zero, 0x2
/* 042DE8 80043238 8FAA00CC */  lw          $t2, 0xcc($sp)
.L8004323C:
/* 042DEC 8004323C 1000001A */  b           .L800432A8
/* 042DF0 80043240 8FA900D0 */   lw         $t1, 0xd0($sp)
.L80043244:
/* 042DF4 80043244 8FAF00CC */  lw          $t7, 0xcc($sp)
/* 042DF8 80043248 24010001 */  addiu       $at, $zero, 0x1
/* 042DFC 8004324C 24030002 */  addiu       $v1, $zero, 0x2
/* 042E00 80043250 51E10009 */  beql        $t7, $at, .L80043278
/* 042E04 80043254 8FB900D0 */   lw         $t9, 0xd0($sp)
/* 042E08 80043258 51E3000B */  beql        $t7, $v1, .L80043288
/* 042E0C 8004325C 8FAA00CC */   lw         $t2, 0xcc($sp)
/* 042E10 80043260 24010003 */  addiu       $at, $zero, 0x3
/* 042E14 80043264 51E10008 */  beql        $t7, $at, .L80043288
/* 042E18 80043268 8FAA00CC */   lw         $t2, 0xcc($sp)
/* 042E1C 8004326C 1000000E */  b           .L800432A8
/* 042E20 80043270 00000000 */   nop
/* 042E24 80043274 8FB900D0 */  lw          $t9, 0xd0($sp)
.L80043278:
/* 042E28 80043278 24030002 */  addiu       $v1, $zero, 0x2
/* 042E2C 8004327C 1723000A */  bne         $t9, $v1, .L800432A8
/* 042E30 80043280 00000000 */   nop
/* 042E34 80043284 8FAA00CC */  lw          $t2, 0xcc($sp)
.L80043288:
/* 042E38 80043288 10000007 */  b           .L800432A8
/* 042E3C 8004328C 8FA900D0 */   lw         $t1, 0xd0($sp)
/* 042E40 80043290 8FAE00CC */  lw          $t6, 0xcc($sp)
.L80043294:
/* 042E44 80043294 24010003 */  addiu       $at, $zero, 0x3
/* 042E48 80043298 15C10003 */  bne         $t6, $at, .L800432A8
/* 042E4C 8004329C 00000000 */   nop
/* 042E50 800432A0 8FAA00CC */  lw          $t2, 0xcc($sp)
/* 042E54 800432A4 8FA900D0 */  lw          $t1, 0xd0($sp)
.L800432A8:
/* 042E58 800432A8 5140000C */  beql        $t2, $zero, .L800432DC
/* 042E5C 800432AC 3222000F */   andi       $v0, $s1, 0xf
/* 042E60 800432B0 24010001 */  addiu       $at, $zero, 0x1
/* 042E64 800432B4 1141003D */  beq         $t2, $at, .L800433AC
/* 042E68 800432B8 32220007 */   andi       $v0, $s1, 0x7
/* 042E6C 800432BC 1143006F */  beq         $t2, $v1, .L8004347C
/* 042E70 800432C0 32220003 */   andi       $v0, $s1, 0x3
/* 042E74 800432C4 24010003 */  addiu       $at, $zero, 0x3
/* 042E78 800432C8 1141008C */  beq         $t2, $at, .L800434FC
/* 042E7C 800432CC 32220003 */   andi       $v0, $s1, 0x3
/* 042E80 800432D0 100000A2 */  b           .L8004355C
/* 042E84 800432D4 8FAF00D0 */   lw         $t7, 0xd0($sp)
/* 042E88 800432D8 3222000F */  andi        $v0, $s1, 0xf
.L800432DC:
/* 042E8C 800432DC 10400004 */  beqz        $v0, .L800432F0
/* 042E90 800432E0 02202025 */   move       $a0, $s1
/* 042E94 800432E4 02222023 */  subu        $a0, $s1, $v0
/* 042E98 800432E8 10000001 */  b           .L800432F0
/* 042E9C 800432EC 24840010 */   addiu      $a0, $a0, 0x10
.L800432F0:
/* 042EA0 800432F0 5123000A */  beql        $t1, $v1, .L8004331C
/* 042EA4 800432F4 24181000 */   addiu      $t8, $zero, 0x1000
/* 042EA8 800432F8 24010003 */  addiu       $at, $zero, 0x3
/* 042EAC 800432FC 11210019 */  beq         $t1, $at, .L80043364
/* 042EB0 80043300 240F2000 */   addiu      $t7, $zero, 0x2000
/* 042EB4 80043304 24010004 */  addiu       $at, $zero, 0x4
/* 042EB8 80043308 11210016 */  beq         $t1, $at, .L80043364
/* 042EBC 8004330C 00000000 */   nop
/* 042EC0 80043310 10000092 */  b           .L8004355C
/* 042EC4 80043314 8FAF00D0 */   lw         $t7, 0xd0($sp)
/* 042EC8 80043318 24181000 */  addiu       $t8, $zero, 0x1000
.L8004331C:
/* 042ECC 8004331C 0304001A */  div         $zero, $t8, $a0
/* 042ED0 80043320 14800002 */  bnez        $a0, .L8004332C
/* 042ED4 80043324 00000000 */   nop
/* 042ED8 80043328 0007000D */  break       7
.L8004332C:
/* 042EDC 8004332C 2401FFFF */  addiu       $at, $zero, -0x1
/* 042EE0 80043330 14810004 */  bne         $a0, $at, .L80043344
/* 042EE4 80043334 3C018000 */   lui        $at, 0x8000
/* 042EE8 80043338 17010002 */  bne         $t8, $at, .L80043344
/* 042EEC 8004333C 00000000 */   nop
/* 042EF0 80043340 0006000D */  break       6
.L80043344:
/* 042EF4 80043344 00001012 */  mflo        $v0
/* 042EF8 80043348 004B082B */  sltu        $at, $v0, $t3
/* 042EFC 8004334C 10200003 */  beqz        $at, .L8004335C
/* 042F00 80043350 00000000 */   nop
/* 042F04 80043354 10000080 */  b           .L80043558
/* 042F08 80043358 AFA2011C */   sw         $v0, 0x11c($sp)
.L8004335C:
/* 042F0C 8004335C 1000007E */  b           .L80043558
/* 042F10 80043360 AFAB011C */   sw         $t3, 0x11c($sp)
.L80043364:
/* 042F14 80043364 01E4001A */  div         $zero, $t7, $a0
/* 042F18 80043368 14800002 */  bnez        $a0, .L80043374
/* 042F1C 8004336C 00000000 */   nop
/* 042F20 80043370 0007000D */  break       7
.L80043374:
/* 042F24 80043374 2401FFFF */  addiu       $at, $zero, -0x1
/* 042F28 80043378 14810004 */  bne         $a0, $at, .L8004338C
/* 042F2C 8004337C 3C018000 */   lui        $at, 0x8000
/* 042F30 80043380 15E10002 */  bne         $t7, $at, .L8004338C
/* 042F34 80043384 00000000 */   nop
/* 042F38 80043388 0006000D */  break       6
.L8004338C:
/* 042F3C 8004338C 00001012 */  mflo        $v0
/* 042F40 80043390 004B082B */  sltu        $at, $v0, $t3
/* 042F44 80043394 10200003 */  beqz        $at, .L800433A4
/* 042F48 80043398 00000000 */   nop
/* 042F4C 8004339C 1000006E */  b           .L80043558
/* 042F50 800433A0 AFA2011C */   sw         $v0, 0x11c($sp)
.L800433A4:
/* 042F54 800433A4 1000006C */  b           .L80043558
/* 042F58 800433A8 AFAB011C */   sw         $t3, 0x11c($sp)
.L800433AC:
/* 042F5C 800433AC 10400004 */  beqz        $v0, .L800433C0
/* 042F60 800433B0 02202025 */   move       $a0, $s1
/* 042F64 800433B4 02222023 */  subu        $a0, $s1, $v0
/* 042F68 800433B8 10000001 */  b           .L800433C0
/* 042F6C 800433BC 24840008 */   addiu      $a0, $a0, 0x8
.L800433C0:
/* 042F70 800433C0 5123000A */  beql        $t1, $v1, .L800433EC
/* 042F74 800433C4 24190800 */   addiu      $t9, $zero, 0x800
/* 042F78 800433C8 24010003 */  addiu       $at, $zero, 0x3
/* 042F7C 800433CC 11210019 */  beq         $t1, $at, .L80043434
/* 042F80 800433D0 240E1000 */   addiu      $t6, $zero, 0x1000
/* 042F84 800433D4 24010004 */  addiu       $at, $zero, 0x4
/* 042F88 800433D8 11210016 */  beq         $t1, $at, .L80043434
/* 042F8C 800433DC 00000000 */   nop
/* 042F90 800433E0 1000005E */  b           .L8004355C
/* 042F94 800433E4 8FAF00D0 */   lw         $t7, 0xd0($sp)
/* 042F98 800433E8 24190800 */  addiu       $t9, $zero, 0x800
.L800433EC:
/* 042F9C 800433EC 0324001A */  div         $zero, $t9, $a0
/* 042FA0 800433F0 14800002 */  bnez        $a0, .L800433FC
/* 042FA4 800433F4 00000000 */   nop
/* 042FA8 800433F8 0007000D */  break       7
.L800433FC:
/* 042FAC 800433FC 2401FFFF */  addiu       $at, $zero, -0x1
/* 042FB0 80043400 14810004 */  bne         $a0, $at, .L80043414
/* 042FB4 80043404 3C018000 */   lui        $at, 0x8000
/* 042FB8 80043408 17210002 */  bne         $t9, $at, .L80043414
/* 042FBC 8004340C 00000000 */   nop
/* 042FC0 80043410 0006000D */  break       6
.L80043414:
/* 042FC4 80043414 00001012 */  mflo        $v0
/* 042FC8 80043418 004B082B */  sltu        $at, $v0, $t3
/* 042FCC 8004341C 10200003 */  beqz        $at, .L8004342C
/* 042FD0 80043420 00000000 */   nop
/* 042FD4 80043424 1000004C */  b           .L80043558
/* 042FD8 80043428 AFA2011C */   sw         $v0, 0x11c($sp)
.L8004342C:
/* 042FDC 8004342C 1000004A */  b           .L80043558
/* 042FE0 80043430 AFAB011C */   sw         $t3, 0x11c($sp)
.L80043434:
/* 042FE4 80043434 01C4001A */  div         $zero, $t6, $a0
/* 042FE8 80043438 14800002 */  bnez        $a0, .L80043444
/* 042FEC 8004343C 00000000 */   nop
/* 042FF0 80043440 0007000D */  break       7
.L80043444:
/* 042FF4 80043444 2401FFFF */  addiu       $at, $zero, -0x1
/* 042FF8 80043448 14810004 */  bne         $a0, $at, .L8004345C
/* 042FFC 8004344C 3C018000 */   lui        $at, 0x8000
/* 043000 80043450 15C10002 */  bne         $t6, $at, .L8004345C
/* 043004 80043454 00000000 */   nop
/* 043008 80043458 0006000D */  break       6
.L8004345C:
/* 04300C 8004345C 00001012 */  mflo        $v0
/* 043010 80043460 004B082B */  sltu        $at, $v0, $t3
/* 043014 80043464 10200003 */  beqz        $at, .L80043474
/* 043018 80043468 00000000 */   nop
/* 04301C 8004346C 1000003A */  b           .L80043558
/* 043020 80043470 AFA2011C */   sw         $v0, 0x11c($sp)
.L80043474:
/* 043024 80043474 10000038 */  b           .L80043558
/* 043028 80043478 AFAB011C */   sw         $t3, 0x11c($sp)
.L8004347C:
/* 04302C 8004347C 10400004 */  beqz        $v0, .L80043490
/* 043030 80043480 8FB800F4 */   lw         $t8, 0xf4($sp)
/* 043034 80043484 02222023 */  subu        $a0, $s1, $v0
/* 043038 80043488 10000002 */  b           .L80043494
/* 04303C 8004348C 24840004 */   addiu      $a0, $a0, 0x4
.L80043490:
/* 043040 80043490 02202025 */  move        $a0, $s1
.L80043494:
/* 043044 80043494 240E0800 */  addiu       $t6, $zero, 0x800
/* 043048 80043498 01C4001A */  div         $zero, $t6, $a0
/* 04304C 8004349C 270F0008 */  addiu       $t7, $t8, 0x8
/* 043050 800434A0 3C19E300 */  lui         $t9, 0xe300
/* 043054 800434A4 00001012 */  mflo        $v0
/* 043058 800434A8 37391001 */  ori         $t9, $t9, 0x1001
/* 04305C 800434AC AFAF00F4 */  sw          $t7, 0xf4($sp)
/* 043060 800434B0 AF000004 */  sw          $zero, 0x4($t8)
/* 043064 800434B4 AF190000 */  sw          $t9, 0x0($t8)
/* 043068 800434B8 03001825 */  move        $v1, $t8
/* 04306C 800434BC 14800002 */  bnez        $a0, .L800434C8
/* 043070 800434C0 00000000 */   nop
/* 043074 800434C4 0007000D */  break       7
.L800434C8:
/* 043078 800434C8 2401FFFF */  addiu       $at, $zero, -0x1
/* 04307C 800434CC 14810004 */  bne         $a0, $at, .L800434E0
/* 043080 800434D0 3C018000 */   lui        $at, 0x8000
/* 043084 800434D4 15C10002 */  bne         $t6, $at, .L800434E0
/* 043088 800434D8 00000000 */   nop
/* 04308C 800434DC 0006000D */  break       6
.L800434E0:
/* 043090 800434E0 004B082B */  sltu        $at, $v0, $t3
/* 043094 800434E4 10200003 */  beqz        $at, .L800434F4
/* 043098 800434E8 00000000 */   nop
/* 04309C 800434EC 1000001A */  b           .L80043558
/* 0430A0 800434F0 AFA2011C */   sw         $v0, 0x11c($sp)
.L800434F4:
/* 0430A4 800434F4 10000018 */  b           .L80043558
/* 0430A8 800434F8 AFAB011C */   sw         $t3, 0x11c($sp)
.L800434FC:
/* 0430AC 800434FC 10400004 */  beqz        $v0, .L80043510
/* 0430B0 80043500 24180400 */   addiu      $t8, $zero, 0x400
/* 0430B4 80043504 02222023 */  subu        $a0, $s1, $v0
/* 0430B8 80043508 10000002 */  b           .L80043514
/* 0430BC 8004350C 24840004 */   addiu      $a0, $a0, 0x4
.L80043510:
/* 0430C0 80043510 02202025 */  move        $a0, $s1
.L80043514:
/* 0430C4 80043514 0304001A */  div         $zero, $t8, $a0
/* 0430C8 80043518 14800002 */  bnez        $a0, .L80043524
/* 0430CC 8004351C 00000000 */   nop
/* 0430D0 80043520 0007000D */  break       7
.L80043524:
/* 0430D4 80043524 2401FFFF */  addiu       $at, $zero, -0x1
/* 0430D8 80043528 14810004 */  bne         $a0, $at, .L8004353C
/* 0430DC 8004352C 3C018000 */   lui        $at, 0x8000
/* 0430E0 80043530 17010002 */  bne         $t8, $at, .L8004353C
/* 0430E4 80043534 00000000 */   nop
/* 0430E8 80043538 0006000D */  break       6
.L8004353C:
/* 0430EC 8004353C 00001012 */  mflo        $v0
/* 0430F0 80043540 004B082B */  sltu        $at, $v0, $t3
/* 0430F4 80043544 50200004 */  beql        $at, $zero, .L80043558
/* 0430F8 80043548 AFAB011C */   sw         $t3, 0x11c($sp)
/* 0430FC 8004354C 10000002 */  b           .L80043558
/* 043100 80043550 AFA2011C */   sw         $v0, 0x11c($sp)
/* 043104 80043554 AFAB011C */  sw          $t3, 0x11c($sp)
.L80043558:
/* 043108 80043558 8FAF00D0 */  lw          $t7, 0xd0($sp)
.L8004355C:
/* 04310C 8004355C 8FB900CC */  lw          $t9, 0xcc($sp)
/* 043110 80043560 27A4011C */  addiu       $a0, $sp, 0x11c
/* 043114 80043564 8FA600E0 */  lw          $a2, 0xe0($sp)
/* 043118 80043568 8FA700DC */  lw          $a3, 0xdc($sp)
/* 04311C 8004356C AFAB00C4 */  sw          $t3, 0xc4($sp)
/* 043120 80043570 AFAC0078 */  sw          $t4, 0x78($sp)
/* 043124 80043574 AFAD0074 */  sw          $t5, 0x74($sp)
/* 043128 80043578 AFAF0010 */  sw          $t7, 0x10($sp)
/* 04312C 8004357C 0C0108BD */  jal         func_800422F4
/* 043130 80043580 AFB90014 */   sw         $t9, 0x14($sp)
/* 043134 80043584 8FAE0158 */  lw          $t6, 0x158($sp)
/* 043138 80043588 3C013FE0 */  lui         $at, 0x3fe0
/* 04313C 8004358C 44811800 */  mtc1        $at, $f3
/* 043140 80043590 44801000 */  mtc1        $zero, $f2
/* 043144 80043594 8FAB00C4 */  lw          $t3, 0xc4($sp)
/* 043148 80043598 8FAC0078 */  lw          $t4, 0x78($sp)
/* 04314C 8004359C 8FAD0074 */  lw          $t5, 0x74($sp)
/* 043150 800435A0 11C00005 */  beqz        $t6, .L800435B8
/* 043154 800435A4 C7AC0154 */   lwc1       $f12, 0x154($sp)
/* 043158 800435A8 0011C140 */  sll         $t8, $s1, 5
/* 04315C 800435AC 000C7823 */  negu        $t7, $t4
/* 043160 800435B0 AFB80118 */  sw          $t8, 0x118($sp)
/* 043164 800435B4 AFAF00FC */  sw          $t7, 0xfc($sp)
.L800435B8:
/* 043168 800435B8 8FA4015C */  lw          $a0, 0x15c($sp)
/* 04316C 800435BC 3C013FF0 */  lui         $at, 0x3ff0
/* 043170 800435C0 5080001B */  beql        $a0, $zero, .L80043630
/* 043174 800435C4 8FA3011C */   lw         $v1, 0x11c($sp)
/* 043178 800435C8 44818800 */  mtc1        $at, $f17
/* 04317C 800435CC 44808000 */  mtc1        $zero, $f16
/* 043180 800435D0 448B2000 */  mtc1        $t3, $f4
/* 043184 800435D4 460062A1 */  cvt.d.s     $f10, $f12
/* 043188 800435D8 8FA3011C */  lw          $v1, 0x11c($sp)
/* 04318C 800435DC 46305481 */  sub.d       $f18, $f10, $f16
/* 043190 800435E0 05610005 */  bgez        $t3, .L800435F8
/* 043194 800435E4 468021A0 */   cvt.s.w    $f6, $f4
/* 043198 800435E8 3C014F80 */  lui         $at, 0x4f80
/* 04319C 800435EC 44814000 */  mtc1        $at, $f8
/* 0431A0 800435F0 00000000 */  nop
/* 0431A4 800435F4 46083180 */  add.s       $f6, $f6, $f8
.L800435F8:
/* 0431A8 800435F8 460032A1 */  cvt.d.s     $f10, $f6
/* 0431AC 800435FC 8FB8013C */  lw          $t8, 0x13c($sp)
/* 0431B0 80043600 462A9402 */  mul.d       $f16, $f18, $f10
/* 0431B4 80043604 0003C940 */  sll         $t9, $v1, 5
/* 0431B8 80043608 AFB90114 */  sw          $t9, 0x114($sp)
/* 0431BC 8004360C 46228100 */  add.d       $f4, $f16, $f2
/* 0431C0 80043610 4620220D */  trunc.w.d   $f8, $f4
/* 0431C4 80043614 440E4000 */  mfc1        $t6, $f8
/* 0431C8 80043618 00000000 */  nop
/* 0431CC 8004361C 01D87821 */  addu        $t7, $t6, $t8
/* 0431D0 80043620 000D7023 */  negu        $t6, $t5
/* 0431D4 80043624 AFAF0110 */  sw          $t7, 0x110($sp)
/* 0431D8 80043628 AFAE00F8 */  sw          $t6, 0xf8($sp)
/* 0431DC 8004362C 8FA3011C */  lw          $v1, 0x11c($sp)
.L80043630:
/* 0431E0 80043630 8FB9014C */  lw          $t9, 0x14c($sp)
/* 0431E4 80043634 C7A80150 */  lwc1        $f8, 0x150($sp)
/* 0431E8 80043638 0163C023 */  subu        $t8, $t3, $v1
/* 0431EC 8004363C 270FFFFF */  addiu       $t7, $t8, -0x1
/* 0431F0 80043640 11E000E0 */  beqz        $t7, .L800439C4
/* 0431F4 80043644 00000000 */   nop
/* 0431F8 80043648 44993000 */  mtc1        $t9, $f6
/* 0431FC 8004364C 8FAC0138 */  lw          $t4, 0x138($sp)
/* 043200 80043650 00001025 */  move        $v0, $zero
/* 043204 80043654 07210005 */  bgez        $t9, .L8004366C
/* 043208 80043658 468030A0 */   cvt.s.w    $f2, $f6
/* 04320C 8004365C 3C014F80 */  lui         $at, 0x4f80
/* 043210 80043660 44819000 */  mtc1        $at, $f18
/* 043214 80043664 00000000 */  nop
/* 043218 80043668 46121080 */  add.s       $f2, $f2, $f18
.L8004366C:
/* 04321C 8004366C 44915000 */  mtc1        $s1, $f10
/* 043220 80043670 3C014F80 */  lui         $at, 0x4f80
/* 043224 80043674 06210004 */  bgez        $s1, .L80043688
/* 043228 80043678 46805420 */   cvt.s.w    $f16, $f10
/* 04322C 8004367C 44812000 */  mtc1        $at, $f4
/* 043230 80043680 00000000 */  nop
/* 043234 80043684 46048400 */  add.s       $f16, $f16, $f4
.L80043688:
/* 043238 80043688 8FAE0148 */  lw          $t6, 0x148($sp)
/* 04323C 8004368C 46088182 */  mul.s       $f6, $f16, $f8
/* 043240 80043690 448C4000 */  mtc1        $t4, $f8
/* 043244 80043694 448E9000 */  mtc1        $t6, $f18
/* 043248 80043698 3C014F80 */  lui         $at, 0x4f80
/* 04324C 8004369C 05C10004 */  bgez        $t6, .L800436B0
/* 043250 800436A0 468092A0 */   cvt.s.w    $f10, $f18
/* 043254 800436A4 44812000 */  mtc1        $at, $f4
/* 043258 800436A8 00000000 */  nop
/* 04325C 800436AC 46045280 */  add.s       $f10, $f10, $f4
.L800436B0:
/* 043260 800436B0 460A3402 */  mul.s       $f16, $f6, $f10
/* 043264 800436B4 3C014F80 */  lui         $at, 0x4f80
/* 043268 800436B8 05810004 */  bgez        $t4, .L800436CC
/* 04326C 800436BC 468044A0 */   cvt.s.w    $f18, $f8
/* 043270 800436C0 44812000 */  mtc1        $at, $f4
/* 043274 800436C4 00000000 */  nop
/* 043278 800436C8 46049480 */  add.s       $f18, $f18, $f4
.L800436CC:
/* 04327C 800436CC 46109180 */  add.s       $f6, $f18, $f16
/* 043280 800436D0 3C01E400 */  lui         $at, 0xe400
/* 043284 800436D4 AFA3011C */  sw          $v1, 0x11c($sp)
/* 043288 800436D8 4600328D */  trunc.w.s   $f10, $f6
/* 04328C 800436DC 440F5000 */  mfc1        $t7, $f10
/* 043290 800436E0 00000000 */  nop
/* 043294 800436E4 000FC880 */  sll         $t9, $t7, 2
/* 043298 800436E8 332E0FFF */  andi        $t6, $t9, 0xfff
/* 04329C 800436EC 000EC300 */  sll         $t8, $t6, 12
/* 0432A0 800436F0 000CC880 */  sll         $t9, $t4, 2
/* 0432A4 800436F4 332E0FFF */  andi        $t6, $t9, 0xfff
/* 0432A8 800436F8 03017825 */  or          $t7, $t8, $at
/* 0432AC 800436FC 000EC300 */  sll         $t8, $t6, 12
/* 0432B0 80043700 AFB80068 */  sw          $t8, 0x68($sp)
/* 0432B4 80043704 8FB80114 */  lw          $t8, 0x114($sp)
/* 0432B8 80043708 8FB90118 */  lw          $t9, 0x118($sp)
/* 0432BC 8004370C AFAF006C */  sw          $t7, 0x6c($sp)
/* 0432C0 80043710 330FFFFF */  andi        $t7, $t8, 0xffff
/* 0432C4 80043714 00197400 */  sll         $t6, $t9, 16
/* 0432C8 80043718 01CFC825 */  or          $t9, $t6, $t7
/* 0432CC 8004371C AFB90064 */  sw          $t9, 0x64($sp)
/* 0432D0 80043720 8FB900F8 */  lw          $t9, 0xf8($sp)
/* 0432D4 80043724 8FAE00FC */  lw          $t6, 0xfc($sp)
/* 0432D8 80043728 3338FFFF */  andi        $t8, $t9, 0xffff
/* 0432DC 8004372C 000E7C00 */  sll         $t7, $t6, 16
/* 0432E0 80043730 01F87025 */  or          $t6, $t7, $t8
/* 0432E4 80043734 AFAE0060 */  sw          $t6, 0x60($sp)
/* 0432E8 80043738 8FA4015C */  lw          $a0, 0x15c($sp)
.L8004373C:
/* 0432EC 8004373C 8FA3011C */  lw          $v1, 0x11c($sp)
/* 0432F0 80043740 02002825 */  move        $a1, $s0
/* 0432F4 80043744 14800021 */  bnez        $a0, .L800437CC
/* 0432F8 80043748 8FA600F0 */   lw         $a2, 0xf0($sp)
/* 0432FC 8004374C 8FB9013C */  lw          $t9, 0x13c($sp)
/* 043300 80043750 44829000 */  mtc1        $v0, $f18
/* 043304 80043754 3C014F80 */  lui         $at, 0x4f80
/* 043308 80043758 44994000 */  mtc1        $t9, $f8
/* 04330C 8004375C 26080001 */  addiu       $t0, $s0, 0x1
/* 043310 80043760 07210004 */  bgez        $t9, .L80043774
/* 043314 80043764 46804020 */   cvt.s.w    $f0, $f8
/* 043318 80043768 44812000 */  mtc1        $at, $f4
/* 04331C 8004376C 00000000 */  nop
/* 043320 80043770 46040000 */  add.s       $f0, $f0, $f4
.L80043774:
/* 043324 80043774 01030019 */  multu       $t0, $v1
/* 043328 80043778 46809420 */  cvt.s.w     $f16, $f18
/* 04332C 8004377C 460C8182 */  mul.s       $f6, $f16, $f12
/* 043330 80043780 00007012 */  mflo        $t6
/* 043334 80043784 448E2000 */  mtc1        $t6, $f4
/* 043338 80043788 00000000 */  nop
/* 04333C 8004378C 468024A0 */  cvt.s.w     $f18, $f4
/* 043340 80043790 46060280 */  add.s       $f10, $f0, $f6
/* 043344 80043794 460C9402 */  mul.s       $f16, $f18, $f12
/* 043348 80043798 4600520D */  trunc.w.s   $f8, $f10
/* 04334C 8004379C 46028182 */  mul.s       $f6, $f16, $f2
/* 043350 800437A0 44094000 */  mfc1        $t1, $f8
/* 043354 800437A4 00000000 */  nop
/* 043358 800437A8 0009C080 */  sll         $t8, $t1, 2
/* 04335C 800437AC 46060280 */  add.s       $f10, $f0, $f6
/* 043360 800437B0 03004825 */  move        $t1, $t8
/* 043364 800437B4 4600520D */  trunc.w.s   $f8, $f10
/* 043368 800437B8 440A4000 */  mfc1        $t2, $f8
/* 04336C 800437BC 00000000 */  nop
/* 043370 800437C0 000A7880 */  sll         $t7, $t2, 2
/* 043374 800437C4 10000022 */  b           .L80043850
/* 043378 800437C8 01E05025 */   move       $t2, $t7
.L800437CC:
/* 04337C 800437CC 8FB80110 */  lw          $t8, 0x110($sp)
/* 043380 800437D0 26080001 */  addiu       $t0, $s0, 0x1
/* 043384 800437D4 3C014F80 */  lui         $at, 0x4f80
/* 043388 800437D8 030B7021 */  addu        $t6, $t8, $t3
/* 04338C 800437DC 448E2000 */  mtc1        $t6, $f4
/* 043390 800437E0 05C10004 */  bgez        $t6, .L800437F4
/* 043394 800437E4 46802020 */   cvt.s.w    $f0, $f4
/* 043398 800437E8 44819000 */  mtc1        $at, $f18
/* 04339C 800437EC 00000000 */  nop
/* 0433A0 800437F0 46120000 */  add.s       $f0, $f0, $f18
.L800437F4:
/* 0433A4 800437F4 01030019 */  multu       $t0, $v1
/* 0433A8 800437F8 44829000 */  mtc1        $v0, $f18
/* 0433AC 800437FC 0000C812 */  mflo        $t9
/* 0433B0 80043800 44998000 */  mtc1        $t9, $f16
/* 0433B4 80043804 00000000 */  nop
/* 0433B8 80043808 468081A0 */  cvt.s.w     $f6, $f16
/* 0433BC 8004380C 46809420 */  cvt.s.w     $f16, $f18
/* 0433C0 80043810 460C3282 */  mul.s       $f10, $f6, $f12
/* 0433C4 80043814 00000000 */  nop
/* 0433C8 80043818 460C8182 */  mul.s       $f6, $f16, $f12
/* 0433CC 8004381C 460A0201 */  sub.s       $f8, $f0, $f10
/* 0433D0 80043820 4600410D */  trunc.w.s   $f4, $f8
/* 0433D4 80043824 46023282 */  mul.s       $f10, $f6, $f2
/* 0433D8 80043828 44092000 */  mfc1        $t1, $f4
/* 0433DC 8004382C 00000000 */  nop
/* 0433E0 80043830 0009C080 */  sll         $t8, $t1, 2
/* 0433E4 80043834 460A0201 */  sub.s       $f8, $f0, $f10
/* 0433E8 80043838 03004825 */  move        $t1, $t8
/* 0433EC 8004383C 4600410D */  trunc.w.s   $f4, $f8
/* 0433F0 80043840 440A2000 */  mfc1        $t2, $f4
/* 0433F4 80043844 00000000 */  nop
/* 0433F8 80043848 000AC880 */  sll         $t9, $t2, 2
/* 0433FC 8004384C 03205025 */  move        $t2, $t9
.L80043850:
/* 043400 80043850 8FAF00E0 */  lw          $t7, 0xe0($sp)
/* 043404 80043854 8FB800DC */  lw          $t8, 0xdc($sp)
/* 043408 80043858 8FAE0140 */  lw          $t6, 0x140($sp)
/* 04340C 8004385C AFAF0018 */  sw          $t7, 0x18($sp)
/* 043410 80043860 AFB8001C */  sw          $t8, 0x1c($sp)
/* 043414 80043864 8FB80124 */  lw          $t8, 0x124($sp)
/* 043418 80043868 8FAF0128 */  lw          $t7, 0x128($sp)
/* 04341C 8004386C 8FB90144 */  lw          $t9, 0x144($sp)
/* 043420 80043870 27A400F4 */  addiu       $a0, $sp, 0xf4
/* 043424 80043874 8FA700EC */  lw          $a3, 0xec($sp)
/* 043428 80043878 AFA00010 */  sw          $zero, 0x10($sp)
/* 04342C 8004387C AFA00014 */  sw          $zero, 0x14($sp)
/* 043430 80043880 AFB10020 */  sw          $s1, 0x20($sp)
/* 043434 80043884 AFA30024 */  sw          $v1, 0x24($sp)
/* 043438 80043888 AFA30028 */  sw          $v1, 0x28($sp)
/* 04343C 8004388C AFA3011C */  sw          $v1, 0x11c($sp)
/* 043440 80043890 AFA80078 */  sw          $t0, 0x78($sp)
/* 043444 80043894 AFA90108 */  sw          $t1, 0x108($sp)
/* 043448 80043898 AFAA0100 */  sw          $t2, 0x100($sp)
/* 04344C 8004389C AFAB00C4 */  sw          $t3, 0xc4($sp)
/* 043450 800438A0 E7A20070 */  swc1        $f2, 0x70($sp)
/* 043454 800438A4 AFAE002C */  sw          $t6, 0x2c($sp)
/* 043458 800438A8 AFB80038 */  sw          $t8, 0x38($sp)
/* 04345C 800438AC AFAF0034 */  sw          $t7, 0x34($sp)
/* 043460 800438B0 0C0109DF */  jal         func_8004277C
/* 043464 800438B4 AFB90030 */   sw         $t9, 0x30($sp)
/* 043468 800438B8 8FB900C0 */  lw          $t9, 0xc0($sp)
/* 04346C 800438BC 8FAF00D0 */  lw          $t7, 0xd0($sp)
/* 043470 800438C0 8FB800CC */  lw          $t8, 0xcc($sp)
/* 043474 800438C4 240E0001 */  addiu       $t6, $zero, 0x1
/* 043478 800438C8 8FA3011C */  lw          $v1, 0x11c($sp)
/* 04347C 800438CC AFAE0010 */  sw          $t6, 0x10($sp)
/* 043480 800438D0 AFB90014 */  sw          $t9, 0x14($sp)
/* 043484 800438D4 AFAF0018 */  sw          $t7, 0x18($sp)
/* 043488 800438D8 AFB8001C */  sw          $t8, 0x1c($sp)
/* 04348C 800438DC 8FB80124 */  lw          $t8, 0x124($sp)
/* 043490 800438E0 8FAF0128 */  lw          $t7, 0x128($sp)
/* 043494 800438E4 8FB90144 */  lw          $t9, 0x144($sp)
/* 043498 800438E8 8FAE0140 */  lw          $t6, 0x140($sp)
/* 04349C 800438EC 27A400F4 */  addiu       $a0, $sp, 0xf4
/* 0434A0 800438F0 02002825 */  move        $a1, $s0
/* 0434A4 800438F4 8FA600D8 */  lw          $a2, 0xd8($sp)
/* 0434A8 800438F8 8FA700D4 */  lw          $a3, 0xd4($sp)
/* 0434AC 800438FC AFB10020 */  sw          $s1, 0x20($sp)
/* 0434B0 80043900 AFA30024 */  sw          $v1, 0x24($sp)
/* 0434B4 80043904 AFA30028 */  sw          $v1, 0x28($sp)
/* 0434B8 80043908 AFB80038 */  sw          $t8, 0x38($sp)
/* 0434BC 8004390C AFAF0034 */  sw          $t7, 0x34($sp)
/* 0434C0 80043910 AFB90030 */  sw          $t9, 0x30($sp)
/* 0434C4 80043914 0C0109DF */  jal         func_8004277C
/* 0434C8 80043918 AFAE002C */   sw         $t6, 0x2c($sp)
/* 0434CC 8004391C 8FAA0100 */  lw          $t2, 0x100($sp)
/* 0434D0 80043920 8FA200F4 */  lw          $v0, 0xf4($sp)
/* 0434D4 80043924 8FAF006C */  lw          $t7, 0x6c($sp)
/* 0434D8 80043928 31580FFF */  andi        $t8, $t2, 0xfff
/* 0434DC 8004392C 24590008 */  addiu       $t9, $v0, 0x8
/* 0434E0 80043930 8FB00078 */  lw          $s0, 0x78($sp)
/* 0434E4 80043934 8FA90108 */  lw          $t1, 0x108($sp)
/* 0434E8 80043938 8FAB00C4 */  lw          $t3, 0xc4($sp)
/* 0434EC 8004393C C7A20070 */  lwc1        $f2, 0x70($sp)
/* 0434F0 80043940 C7AC0154 */  lwc1        $f12, 0x154($sp)
/* 0434F4 80043944 AFB900F4 */  sw          $t9, 0xf4($sp)
/* 0434F8 80043948 01F87025 */  or          $t6, $t7, $t8
/* 0434FC 8004394C AC4E0000 */  sw          $t6, 0x0($v0)
/* 043500 80043950 8FB90068 */  lw          $t9, 0x68($sp)
/* 043504 80043954 312F0FFF */  andi        $t7, $t1, 0xfff
/* 043508 80043958 032FC025 */  or          $t8, $t9, $t7
/* 04350C 8004395C AC580004 */  sw          $t8, 0x4($v0)
/* 043510 80043960 8FAE00F4 */  lw          $t6, 0xf4($sp)
/* 043514 80043964 3C0FE100 */  lui         $t7, 0xe100
/* 043518 80043968 25D90008 */  addiu       $t9, $t6, 0x8
/* 04351C 8004396C AFB900F4 */  sw          $t9, 0xf4($sp)
/* 043520 80043970 ADCF0000 */  sw          $t7, 0x0($t6)
/* 043524 80043974 8FB80064 */  lw          $t8, 0x64($sp)
/* 043528 80043978 3C0FF100 */  lui         $t7, 0xf100
/* 04352C 8004397C ADD80004 */  sw          $t8, 0x4($t6)
/* 043530 80043980 8FAE00F4 */  lw          $t6, 0xf4($sp)
/* 043534 80043984 25D90008 */  addiu       $t9, $t6, 0x8
/* 043538 80043988 AFB900F4 */  sw          $t9, 0xf4($sp)
/* 04353C 8004398C ADCF0000 */  sw          $t7, 0x0($t6)
/* 043540 80043990 8FB80060 */  lw          $t8, 0x60($sp)
/* 043544 80043994 ADD80004 */  sw          $t8, 0x4($t6)
/* 043548 80043998 8FAE011C */  lw          $t6, 0x11c($sp)
/* 04354C 8004399C 8FB9011C */  lw          $t9, 0x11c($sp)
/* 043550 800439A0 020E0019 */  multu       $s0, $t6
/* 043554 800439A4 01797823 */  subu        $t7, $t3, $t9
/* 043558 800439A8 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 04355C 800439AC 00001012 */  mflo        $v0
/* 043560 800439B0 0058082B */  sltu        $at, $v0, $t8
/* 043564 800439B4 5420FF61 */  bnel        $at, $zero, .L8004373C
/* 043568 800439B8 8FA4015C */   lw         $a0, 0x15c($sp)
/* 04356C 800439BC 8FA4015C */  lw          $a0, 0x15c($sp)
/* 043570 800439C0 03201825 */  move        $v1, $t9
.L800439C4:
/* 043574 800439C4 02030019 */  multu       $s0, $v1
/* 043578 800439C8 8FAE014C */  lw          $t6, 0x14c($sp)
/* 04357C 800439CC 44913000 */  mtc1        $s1, $f6
/* 043580 800439D0 C7A40150 */  lwc1        $f4, 0x150($sp)
/* 043584 800439D4 448E9000 */  mtc1        $t6, $f18
/* 043588 800439D8 3C014F80 */  lui         $at, 0x4f80
/* 04358C 800439DC 468090A0 */  cvt.s.w     $f2, $f18
/* 043590 800439E0 00001012 */  mflo        $v0
/* 043594 800439E4 05C10004 */  bgez        $t6, .L800439F8
/* 043598 800439E8 00000000 */   nop
/* 04359C 800439EC 44818000 */  mtc1        $at, $f16
/* 0435A0 800439F0 00000000 */  nop
/* 0435A4 800439F4 46101080 */  add.s       $f2, $f2, $f16
.L800439F8:
/* 0435A8 800439F8 06210005 */  bgez        $s1, .L80043A10
/* 0435AC 800439FC 468032A0 */   cvt.s.w    $f10, $f6
/* 0435B0 80043A00 3C014F80 */  lui         $at, 0x4f80
/* 0435B4 80043A04 44814000 */  mtc1        $at, $f8
/* 0435B8 80043A08 00000000 */  nop
/* 0435BC 80043A0C 46085280 */  add.s       $f10, $f10, $f8
.L80043A10:
/* 0435C0 80043A10 8FAF0148 */  lw          $t7, 0x148($sp)
/* 0435C4 80043A14 46045482 */  mul.s       $f18, $f10, $f4
/* 0435C8 80043A18 3C014F80 */  lui         $at, 0x4f80
/* 0435CC 80043A1C 448F8000 */  mtc1        $t7, $f16
/* 0435D0 80043A20 05E10004 */  bgez        $t7, .L80043A34
/* 0435D4 80043A24 468081A0 */   cvt.s.w    $f6, $f16
/* 0435D8 80043A28 44814000 */  mtc1        $at, $f8
/* 0435DC 80043A2C 00000000 */  nop
/* 0435E0 80043A30 46083180 */  add.s       $f6, $f6, $f8
.L80043A34:
/* 0435E4 80043A34 8FB80138 */  lw          $t8, 0x138($sp)
/* 0435E8 80043A38 46069282 */  mul.s       $f10, $f18, $f6
/* 0435EC 80043A3C 3C014F80 */  lui         $at, 0x4f80
/* 0435F0 80043A40 44982000 */  mtc1        $t8, $f4
/* 0435F4 80043A44 07010004 */  bgez        $t8, .L80043A58
/* 0435F8 80043A48 46802420 */   cvt.s.w    $f16, $f4
/* 0435FC 80043A4C 44814000 */  mtc1        $at, $f8
/* 043600 80043A50 00000000 */  nop
/* 043604 80043A54 46088400 */  add.s       $f16, $f16, $f8
.L80043A58:
/* 043608 80043A58 460A8480 */  add.s       $f18, $f16, $f10
/* 04360C 80043A5C 3C01E400 */  lui         $at, 0xe400
/* 043610 80043A60 00403025 */  move        $a2, $v0
/* 043614 80043A64 8FA9013C */  lw          $t1, 0x13c($sp)
/* 043618 80043A68 4600918D */  trunc.w.s   $f6, $f18
/* 04361C 80043A6C 440E3000 */  mfc1        $t6, $f6
/* 043620 80043A70 00000000 */  nop
/* 043624 80043A74 000E7880 */  sll         $t7, $t6, 2
/* 043628 80043A78 31F90FFF */  andi        $t9, $t7, 0xfff
/* 04362C 80043A7C 00197300 */  sll         $t6, $t9, 12
/* 043630 80043A80 01C17825 */  or          $t7, $t6, $at
/* 043634 80043A84 0018C880 */  sll         $t9, $t8, 2
/* 043638 80043A88 332E0FFF */  andi        $t6, $t9, 0xfff
/* 04363C 80043A8C AFAF006C */  sw          $t7, 0x6c($sp)
/* 043640 80043A90 000E7B00 */  sll         $t7, $t6, 12
/* 043644 80043A94 8FB80118 */  lw          $t8, 0x118($sp)
/* 043648 80043A98 AFAF0068 */  sw          $t7, 0x68($sp)
/* 04364C 80043A9C 8FAF00FC */  lw          $t7, 0xfc($sp)
/* 043650 80043AA0 8FB900F8 */  lw          $t9, 0xf8($sp)
/* 043654 80043AA4 00182C00 */  sll         $a1, $t8, 16
/* 043658 80043AA8 000FC400 */  sll         $t8, $t7, 16
/* 04365C 80043AAC 332EFFFF */  andi        $t6, $t9, 0xffff
/* 043660 80043AB0 030E7825 */  or          $t7, $t8, $t6
/* 043664 80043AB4 14800027 */  bnez        $a0, .L80043B54
/* 043668 80043AB8 AFAF0060 */   sw         $t7, 0x60($sp)
/* 04366C 80043ABC 8FB9013C */  lw          $t9, 0x13c($sp)
/* 043670 80043AC0 44828000 */  mtc1        $v0, $f16
/* 043674 80043AC4 3C014F80 */  lui         $at, 0x4f80
/* 043678 80043AC8 44992000 */  mtc1        $t9, $f4
/* 04367C 80043ACC 07210004 */  bgez        $t9, .L80043AE0
/* 043680 80043AD0 46802020 */   cvt.s.w    $f0, $f4
/* 043684 80043AD4 44814000 */  mtc1        $at, $f8
/* 043688 80043AD8 00000000 */  nop
/* 04368C 80043ADC 46080000 */  add.s       $f0, $f0, $f8
.L80043AE0:
/* 043690 80043AE0 468082A0 */  cvt.s.w     $f10, $f16
/* 043694 80043AE4 448B4000 */  mtc1        $t3, $f8
/* 043698 80043AE8 3C014F80 */  lui         $at, 0x4f80
/* 04369C 80043AEC 46804420 */  cvt.s.w     $f16, $f8
/* 0436A0 80043AF0 460C5482 */  mul.s       $f18, $f10, $f12
/* 0436A4 80043AF4 46120180 */  add.s       $f6, $f0, $f18
/* 0436A8 80043AF8 4600310D */  trunc.w.s   $f4, $f6
/* 0436AC 80043AFC 44092000 */  mfc1        $t1, $f4
/* 0436B0 80043B00 00000000 */  nop
/* 0436B4 80043B04 00097080 */  sll         $t6, $t1, 2
/* 0436B8 80043B08 05610004 */  bgez        $t3, .L80043B1C
/* 0436BC 80043B0C 01C04825 */   move       $t1, $t6
/* 0436C0 80043B10 44815000 */  mtc1        $at, $f10
/* 0436C4 80043B14 00000000 */  nop
/* 0436C8 80043B18 460A8400 */  add.s       $f16, $f16, $f10
.L80043B1C:
/* 0436CC 80043B1C 460C8482 */  mul.s       $f18, $f16, $f12
/* 0436D0 80043B20 8FB80114 */  lw          $t8, 0x114($sp)
/* 0436D4 80043B24 01664023 */  subu        $t0, $t3, $a2
/* 0436D8 80043B28 330EFFFF */  andi        $t6, $t8, 0xffff
/* 0436DC 80043B2C 00AE7825 */  or          $t7, $a1, $t6
/* 0436E0 80043B30 AFAF0064 */  sw          $t7, 0x64($sp)
/* 0436E4 80043B34 46029182 */  mul.s       $f6, $f18, $f2
/* 0436E8 80043B38 46060100 */  add.s       $f4, $f0, $f6
/* 0436EC 80043B3C 4600220D */  trunc.w.s   $f8, $f4
/* 0436F0 80043B40 440A4000 */  mfc1        $t2, $f8
/* 0436F4 80043B44 00000000 */  nop
/* 0436F8 80043B48 000AC880 */  sll         $t9, $t2, 2
/* 0436FC 80043B4C 1000001D */  b           .L80043BC4
/* 043700 80043B50 03205025 */   move       $t2, $t9
.L80043B54:
/* 043704 80043B54 8FB80110 */  lw          $t8, 0x110($sp)
/* 043708 80043B58 0009C880 */  sll         $t9, $t1, 2
/* 04370C 80043B5C 44823000 */  mtc1        $v0, $f6
/* 043710 80043B60 030B7021 */  addu        $t6, $t8, $t3
/* 043714 80043B64 448E5000 */  mtc1        $t6, $f10
/* 043718 80043B68 03204825 */  move        $t1, $t9
/* 04371C 80043B6C 05C10005 */  bgez        $t6, .L80043B84
/* 043720 80043B70 46805420 */   cvt.s.w    $f16, $f10
/* 043724 80043B74 3C014F80 */  lui         $at, 0x4f80
/* 043728 80043B78 44819000 */  mtc1        $at, $f18
/* 04372C 80043B7C 00000000 */  nop
/* 043730 80043B80 46128400 */  add.s       $f16, $f16, $f18
.L80043B84:
/* 043734 80043B84 46803120 */  cvt.s.w     $f4, $f6
/* 043738 80043B88 01664023 */  subu        $t0, $t3, $a2
/* 04373C 80043B8C 0008C140 */  sll         $t8, $t0, 5
/* 043740 80043B90 330FFFFF */  andi        $t7, $t8, 0xffff
/* 043744 80043B94 AFB80114 */  sw          $t8, 0x114($sp)
/* 043748 80043B98 460C2202 */  mul.s       $f8, $f4, $f12
/* 04374C 80043B9C 00000000 */  nop
/* 043750 80043BA0 46024282 */  mul.s       $f10, $f8, $f2
/* 043754 80043BA4 460A8481 */  sub.s       $f18, $f16, $f10
/* 043758 80043BA8 4600918D */  trunc.w.s   $f6, $f18
/* 04375C 80043BAC 440A3000 */  mfc1        $t2, $f6
/* 043760 80043BB0 00000000 */  nop
/* 043764 80043BB4 000AC880 */  sll         $t9, $t2, 2
/* 043768 80043BB8 03205025 */  move        $t2, $t9
/* 04376C 80043BBC 00AFC825 */  or          $t9, $a1, $t7
/* 043770 80043BC0 AFB90064 */  sw          $t9, 0x64($sp)
.L80043BC4:
/* 043774 80043BC4 8FB800E0 */  lw          $t8, 0xe0($sp)
/* 043778 80043BC8 8FAE00DC */  lw          $t6, 0xdc($sp)
/* 04377C 80043BCC 250FFFFF */  addiu       $t7, $t0, -0x1
/* 043780 80043BD0 AFAF0028 */  sw          $t7, 0x28($sp)
/* 043784 80043BD4 AFB80018 */  sw          $t8, 0x18($sp)
/* 043788 80043BD8 AFAE001C */  sw          $t6, 0x1c($sp)
/* 04378C 80043BDC 8FAE0128 */  lw          $t6, 0x128($sp)
/* 043790 80043BE0 8FB80144 */  lw          $t8, 0x144($sp)
/* 043794 80043BE4 8FAF0124 */  lw          $t7, 0x124($sp)
/* 043798 80043BE8 8FB90140 */  lw          $t9, 0x140($sp)
/* 04379C 80043BEC 27A400F4 */  addiu       $a0, $sp, 0xf4
/* 0437A0 80043BF0 02002825 */  move        $a1, $s0
/* 0437A4 80043BF4 8FA600F0 */  lw          $a2, 0xf0($sp)
/* 0437A8 80043BF8 8FA700EC */  lw          $a3, 0xec($sp)
/* 0437AC 80043BFC AFA00010 */  sw          $zero, 0x10($sp)
/* 0437B0 80043C00 AFA00014 */  sw          $zero, 0x14($sp)
/* 0437B4 80043C04 AFB10020 */  sw          $s1, 0x20($sp)
/* 0437B8 80043C08 AFA30024 */  sw          $v1, 0x24($sp)
/* 0437BC 80043C0C AFA3011C */  sw          $v1, 0x11c($sp)
/* 0437C0 80043C10 AFA90108 */  sw          $t1, 0x108($sp)
/* 0437C4 80043C14 AFAA0100 */  sw          $t2, 0x100($sp)
/* 0437C8 80043C18 AFAB00C4 */  sw          $t3, 0xc4($sp)
/* 0437CC 80043C1C AFAE0034 */  sw          $t6, 0x34($sp)
/* 0437D0 80043C20 AFB80030 */  sw          $t8, 0x30($sp)
/* 0437D4 80043C24 AFAF0038 */  sw          $t7, 0x38($sp)
/* 0437D8 80043C28 0C0109DF */  jal         func_8004277C
/* 0437DC 80043C2C AFB9002C */   sw         $t9, 0x2c($sp)
/* 0437E0 80043C30 8FA3011C */  lw          $v1, 0x11c($sp)
/* 0437E4 80043C34 8FB800C0 */  lw          $t8, 0xc0($sp)
/* 0437E8 80043C38 8FAB00C4 */  lw          $t3, 0xc4($sp)
/* 0437EC 80043C3C 02030019 */  multu       $s0, $v1
/* 0437F0 80043C40 8FAE00D0 */  lw          $t6, 0xd0($sp)
/* 0437F4 80043C44 24190001 */  addiu       $t9, $zero, 0x1
/* 0437F8 80043C48 AFB90010 */  sw          $t9, 0x10($sp)
/* 0437FC 80043C4C AFB80014 */  sw          $t8, 0x14($sp)
/* 043800 80043C50 8FAF00CC */  lw          $t7, 0xcc($sp)
/* 043804 80043C54 AFAE0018 */  sw          $t6, 0x18($sp)
/* 043808 80043C58 27A400F4 */  addiu       $a0, $sp, 0xf4
/* 04380C 80043C5C AFAF001C */  sw          $t7, 0x1c($sp)
/* 043810 80043C60 8FAF0140 */  lw          $t7, 0x140($sp)
/* 043814 80043C64 0000C812 */  mflo        $t9
/* 043818 80043C68 0179C023 */  subu        $t8, $t3, $t9
/* 04381C 80043C6C 270EFFFF */  addiu       $t6, $t8, -0x1
/* 043820 80043C70 AFAE0028 */  sw          $t6, 0x28($sp)
/* 043824 80043C74 8FAE0124 */  lw          $t6, 0x124($sp)
/* 043828 80043C78 8FB80128 */  lw          $t8, 0x128($sp)
/* 04382C 80043C7C 8FB90144 */  lw          $t9, 0x144($sp)
/* 043830 80043C80 02002825 */  move        $a1, $s0
/* 043834 80043C84 8FA600D8 */  lw          $a2, 0xd8($sp)
/* 043838 80043C88 8FA700D4 */  lw          $a3, 0xd4($sp)
/* 04383C 80043C8C AFB10020 */  sw          $s1, 0x20($sp)
/* 043840 80043C90 AFA30024 */  sw          $v1, 0x24($sp)
/* 043844 80043C94 AFAF002C */  sw          $t7, 0x2c($sp)
/* 043848 80043C98 AFAE0038 */  sw          $t6, 0x38($sp)
/* 04384C 80043C9C AFB80034 */  sw          $t8, 0x34($sp)
/* 043850 80043CA0 0C0109DF */  jal         func_8004277C
/* 043854 80043CA4 AFB90030 */   sw         $t9, 0x30($sp)
/* 043858 80043CA8 8FAA0100 */  lw          $t2, 0x100($sp)
/* 04385C 80043CAC 8FA200F4 */  lw          $v0, 0xf4($sp)
/* 043860 80043CB0 8FB8006C */  lw          $t8, 0x6c($sp)
/* 043864 80043CB4 314E0FFF */  andi        $t6, $t2, 0xfff
/* 043868 80043CB8 24590008 */  addiu       $t9, $v0, 0x8
/* 04386C 80043CBC 8FA90108 */  lw          $t1, 0x108($sp)
/* 043870 80043CC0 AFB900F4 */  sw          $t9, 0xf4($sp)
/* 043874 80043CC4 030E7825 */  or          $t7, $t8, $t6
/* 043878 80043CC8 AC4F0000 */  sw          $t7, 0x0($v0)
/* 04387C 80043CCC 8FB90068 */  lw          $t9, 0x68($sp)
/* 043880 80043CD0 31380FFF */  andi        $t8, $t1, 0xfff
/* 043884 80043CD4 03387025 */  or          $t6, $t9, $t8
/* 043888 80043CD8 AC4E0004 */  sw          $t6, 0x4($v0)
/* 04388C 80043CDC 8FAF00F4 */  lw          $t7, 0xf4($sp)
/* 043890 80043CE0 3C18E100 */  lui         $t8, 0xe100
/* 043894 80043CE4 25F90008 */  addiu       $t9, $t7, 0x8
/* 043898 80043CE8 AFB900F4 */  sw          $t9, 0xf4($sp)
/* 04389C 80043CEC ADF80000 */  sw          $t8, 0x0($t7)
/* 0438A0 80043CF0 8FAE0064 */  lw          $t6, 0x64($sp)
/* 0438A4 80043CF4 3C18F100 */  lui         $t8, 0xf100
/* 0438A8 80043CF8 ADEE0004 */  sw          $t6, 0x4($t7)
/* 0438AC 80043CFC 8FAF00F4 */  lw          $t7, 0xf4($sp)
/* 0438B0 80043D00 25F90008 */  addiu       $t9, $t7, 0x8
/* 0438B4 80043D04 AFB900F4 */  sw          $t9, 0xf4($sp)
/* 0438B8 80043D08 ADF80000 */  sw          $t8, 0x0($t7)
/* 0438BC 80043D0C 8FAE0060 */  lw          $t6, 0x60($sp)
/* 0438C0 80043D10 ADEE0004 */  sw          $t6, 0x4($t7)
/* 0438C4 80043D14 8FB90130 */  lw          $t9, 0x130($sp)
/* 0438C8 80043D18 8FAF00F4 */  lw          $t7, 0xf4($sp)
/* 0438CC 80043D1C AF2F0000 */  sw          $t7, 0x0($t9)
/* 0438D0 80043D20 8FBF004C */  lw          $ra, 0x4c($sp)
/* 0438D4 80043D24 8FB10048 */  lw          $s1, 0x48($sp)
/* 0438D8 80043D28 8FB00044 */  lw          $s0, 0x44($sp)
/* 0438DC 80043D2C 03E00008 */  jr          $ra
/* 0438E0 80043D30 27BD0130 */   addiu      $sp, $sp, 0x130

glabel func_80043D34 # 7
/* 0438E4 80043D34 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 0438E8 80043D38 AFBF002C */  sw          $ra, 0x2c($sp)
/* 0438EC 80043D3C AFBE0028 */  sw          $fp, 0x28($sp)
/* 0438F0 80043D40 AFB70024 */  sw          $s7, 0x24($sp)
/* 0438F4 80043D44 AFB60020 */  sw          $s6, 0x20($sp)
/* 0438F8 80043D48 AFB5001C */  sw          $s5, 0x1c($sp)
/* 0438FC 80043D4C AFB40018 */  sw          $s4, 0x18($sp)
/* 043900 80043D50 AFB30014 */  sw          $s3, 0x14($sp)
/* 043904 80043D54 AFB20010 */  sw          $s2, 0x10($sp)
/* 043908 80043D58 AFB1000C */  sw          $s1, 0xc($sp)
/* 04390C 80043D5C AFB00008 */  sw          $s0, 0x8($sp)
/* 043910 80043D60 AFA40038 */  sw          $a0, 0x38($sp)
/* 043914 80043D64 AFA5003C */  sw          $a1, 0x3c($sp)
/* 043918 80043D68 AFA60040 */  sw          $a2, 0x40($sp)
/* 04391C 80043D6C AFA70044 */  sw          $a3, 0x44($sp)
/* 043920 80043D70 8C820000 */  lw          $v0, 0x0($a0)
/* 043924 80043D74 3C0FE700 */  lui         $t7, 0xe700
/* 043928 80043D78 3C18E300 */  lui         $t8, 0xe300
/* 04392C 80043D7C 00401825 */  move        $v1, $v0
/* 043930 80043D80 24420008 */  addiu       $v0, $v0, 0x8
/* 043934 80043D84 AC6F0000 */  sw          $t7, 0x0($v1)
/* 043938 80043D88 00404025 */  move        $t0, $v0
/* 04393C 80043D8C AC600004 */  sw          $zero, 0x4($v1)
/* 043940 80043D90 24420008 */  addiu       $v0, $v0, 0x8
/* 043944 80043D94 37180A01 */  ori         $t8, $t8, 0xa01
/* 043948 80043D98 3C190020 */  lui         $t9, 0x20
/* 04394C 80043D9C AD190004 */  sw          $t9, 0x4($t0)
/* 043950 80043DA0 AD180000 */  sw          $t8, 0x0($t0)
/* 043954 80043DA4 00404825 */  move        $t1, $v0
/* 043958 80043DA8 3C0EE200 */  lui         $t6, 0xe200
/* 04395C 80043DAC 35CE001C */  ori         $t6, $t6, 0x1c
/* 043960 80043DB0 24420008 */  addiu       $v0, $v0, 0x8
/* 043964 80043DB4 AD2E0000 */  sw          $t6, 0x0($t1)
/* 043968 80043DB8 00405025 */  move        $t2, $v0
/* 04396C 80043DBC AD200004 */  sw          $zero, 0x4($t1)
/* 043970 80043DC0 24420008 */  addiu       $v0, $v0, 0x8
/* 043974 80043DC4 3C0FE300 */  lui         $t7, 0xe300
/* 043978 80043DC8 35EF0C00 */  ori         $t7, $t7, 0xc00
/* 04397C 80043DCC 00405825 */  move        $t3, $v0
/* 043980 80043DD0 AD4F0000 */  sw          $t7, 0x0($t2)
/* 043984 80043DD4 AD400004 */  sw          $zero, 0x4($t2)
/* 043988 80043DD8 3C18E300 */  lui         $t8, 0xe300
/* 04398C 80043DDC 37181001 */  ori         $t8, $t8, 0x1001
/* 043990 80043DE0 24420008 */  addiu       $v0, $v0, 0x8
/* 043994 80043DE4 AD780000 */  sw          $t8, 0x0($t3)
/* 043998 80043DE8 AD600004 */  sw          $zero, 0x4($t3)
/* 04399C 80043DEC 00401825 */  move        $v1, $v0
/* 0439A0 80043DF0 3C0EFFFC */  lui         $t6, 0xfffc
/* 0439A4 80043DF4 3C19FCFF */  lui         $t9, 0xfcff
/* 0439A8 80043DF8 3739FFFF */  ori         $t9, $t9, 0xffff
/* 0439AC 80043DFC 35CEF279 */  ori         $t6, $t6, 0xf279
/* 0439B0 80043E00 AC6E0004 */  sw          $t6, 0x4($v1)
/* 0439B4 80043E04 AC790000 */  sw          $t9, 0x0($v1)
/* 0439B8 80043E08 8FAF0060 */  lw          $t7, 0x60($sp)
/* 0439BC 80043E0C 24420008 */  addiu       $v0, $v0, 0x8
/* 0439C0 80043E10 00002025 */  move        $a0, $zero
/* 0439C4 80043E14 11E0000C */  beqz        $t7, .L80043E48
/* 0439C8 80043E18 24190800 */   addiu      $t9, $zero, 0x800
/* 0439CC 80043E1C 8FA50048 */  lw          $a1, 0x48($sp)
/* 0439D0 80043E20 00002025 */  move        $a0, $zero
/* 0439D4 80043E24 00A01825 */  move        $v1, $a1
.L80043E28:
/* 0439D8 80043E28 0003C042 */  srl         $t8, $v1, 1
/* 0439DC 80043E2C 17000004 */  bnez        $t8, .L80043E40
/* 0439E0 80043E30 03001825 */   move       $v1, $t8
/* 0439E4 80043E34 AFA40030 */  sw          $a0, 0x30($sp)
/* 0439E8 80043E38 10000005 */  b           .L80043E50
/* 0439EC 80043E3C 00002025 */   move       $a0, $zero
.L80043E40:
/* 0439F0 80043E40 1000FFF9 */  b           .L80043E28
/* 0439F4 80043E44 24840001 */   addiu      $a0, $a0, 0x1
.L80043E48:
/* 0439F8 80043E48 AFA00030 */  sw          $zero, 0x30($sp)
/* 0439FC 80043E4C 8FA50048 */  lw          $a1, 0x48($sp)
.L80043E50:
/* 043A00 80043E50 30A30003 */  andi        $v1, $a1, 0x3
/* 043A04 80043E54 10600004 */  beqz        $v1, .L80043E68
/* 043A08 80043E58 00A0A825 */   move       $s5, $a1
/* 043A0C 80043E5C 00A3A823 */  subu        $s5, $a1, $v1
/* 043A10 80043E60 10000001 */  b           .L80043E68
/* 043A14 80043E64 26B50004 */   addiu      $s5, $s5, 0x4
.L80043E68:
/* 043A18 80043E68 0335001A */  div         $zero, $t9, $s5
/* 043A1C 80043E6C 8FA50050 */  lw          $a1, 0x50($sp)
/* 043A20 80043E70 16A00002 */  bnez        $s5, .L80043E7C
/* 043A24 80043E74 00000000 */   nop
/* 043A28 80043E78 0007000D */  break       7
.L80043E7C:
/* 043A2C 80043E7C 2401FFFF */  addiu       $at, $zero, -0x1
/* 043A30 80043E80 16A10004 */  bne         $s5, $at, .L80043E94
/* 043A34 80043E84 3C018000 */   lui        $at, 0x8000
/* 043A38 80043E88 17210002 */  bne         $t9, $at, .L80043E94
/* 043A3C 80043E8C 00000000 */   nop
/* 043A40 80043E90 0006000D */  break       6
.L80043E94:
/* 043A44 80043E94 00001812 */  mflo        $v1
/* 043A48 80043E98 0065082B */  sltu        $at, $v1, $a1
/* 043A4C 80043E9C 10200003 */  beqz        $at, .L80043EAC
/* 043A50 80043EA0 00A06825 */   move       $t5, $a1
/* 043A54 80043EA4 10000001 */  b           .L80043EAC
/* 043A58 80043EA8 00606825 */   move       $t5, $v1
.L80043EAC:
/* 043A5C 80043EAC 25ADFFFF */  addiu       $t5, $t5, -0x1
/* 043A60 80043EB0 00ADF823 */  subu        $ra, $a1, $t5
/* 043A64 80043EB4 27FFFFFF */  addiu       $ra, $ra, -0x1
/* 043A68 80043EB8 13E0007C */  beqz        $ra, .L800440AC
/* 043A6C 80043EBC 24070001 */   addiu      $a3, $zero, 0x1
/* 043A70 80043EC0 00156080 */  sll         $t4, $s5, 2
/* 043A74 80043EC4 000CC043 */  sra         $t8, $t4, 1
/* 043A78 80043EC8 26B0FFFF */  addiu       $s0, $s5, -0x1
/* 043A7C 80043ECC 320E0FFF */  andi        $t6, $s0, 0xfff
/* 043A80 80043ED0 270C0007 */  addiu       $t4, $t8, 0x7
/* 043A84 80043ED4 3C01FD10 */  lui         $at, 0xfd10
/* 043A88 80043ED8 01C18025 */  or          $s0, $t6, $at
/* 043A8C 80043EDC 000CC8C3 */  sra         $t9, $t4, 3
/* 043A90 80043EE0 8FAA005C */  lw          $t2, 0x5c($sp)
/* 043A94 80043EE4 332E01FF */  andi        $t6, $t9, 0x1ff
/* 043A98 80043EE8 8FAB0030 */  lw          $t3, 0x30($sp)
/* 043A9C 80043EEC 000E7A40 */  sll         $t7, $t6, 9
/* 043AA0 80043EF0 3C01F510 */  lui         $at, 0xf510
/* 043AA4 80043EF4 01E16025 */  or          $t4, $t7, $at
/* 043AA8 80043EF8 31590003 */  andi        $t9, $t2, 0x3
/* 043AAC 80043EFC 00195200 */  sll         $t2, $t9, 8
/* 043AB0 80043F00 3C010708 */  lui         $at, 0x708
/* 043AB4 80043F04 26A5FFFF */  addiu       $a1, $s5, -0x1
/* 043AB8 80043F08 316F000F */  andi        $t7, $t3, 0xf
/* 043ABC 80043F0C 000F5900 */  sll         $t3, $t7, 4
/* 043AC0 80043F10 00057080 */  sll         $t6, $a1, 2
/* 043AC4 80043F14 0141C825 */  or          $t9, $t2, $at
/* 043AC8 80043F18 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 043ACC 80043F1C 000FC300 */  sll         $t8, $t7, 12
/* 043AD0 80043F20 032B8825 */  or          $s1, $t9, $t3
/* 043AD4 80043F24 000D1880 */  sll         $v1, $t5, 2
/* 043AD8 80043F28 30790FFF */  andi        $t9, $v1, 0xfff
/* 043ADC 80043F2C 3C010700 */  lui         $at, 0x700
/* 043AE0 80043F30 03017025 */  or          $t6, $t8, $at
/* 043AE4 80043F34 0319A025 */  or          $s4, $t8, $t9
/* 043AE8 80043F38 8FB8004C */  lw          $t8, 0x4c($sp)
/* 043AEC 80043F3C 8FA40040 */  lw          $a0, 0x40($sp)
/* 043AF0 80043F40 01D99025 */  or          $s2, $t6, $t9
/* 043AF4 80043F44 3C010008 */  lui         $at, 0x8
/* 043AF8 80043F48 0098B021 */  addu        $s6, $a0, $t8
/* 043AFC 80043F4C 26D6FFFF */  addiu       $s6, $s6, -0x1
/* 043B00 80043F50 0016C880 */  sll         $t9, $s6, 2
/* 043B04 80043F54 01417825 */  or          $t7, $t2, $at
/* 043B08 80043F58 8FB80054 */  lw          $t8, 0x54($sp)
/* 043B0C 80043F5C 332E0FFF */  andi        $t6, $t9, 0xfff
/* 043B10 80043F60 01EB9825 */  or          $s3, $t7, $t3
/* 043B14 80043F64 0004B880 */  sll         $s7, $a0, 2
/* 043B18 80043F68 32F90FFF */  andi        $t9, $s7, 0xfff
/* 043B1C 80043F6C 000E7B00 */  sll         $t7, $t6, 12
/* 043B20 80043F70 3C01E400 */  lui         $at, 0xe400
/* 043B24 80043F74 01E1B025 */  or          $s6, $t7, $at
/* 043B28 80043F78 0019BB00 */  sll         $s7, $t9, 12
/* 043B2C 80043F7C 00003025 */  move        $a2, $zero
/* 043B30 80043F80 00004825 */  move        $t1, $zero
/* 043B34 80043F84 01A04025 */  move        $t0, $t5
/* 043B38 80043F88 0018F540 */  sll         $fp, $t8, 21
.L80043F8C:
/* 043B3C 80043F8C 00401825 */  move        $v1, $v0
/* 043B40 80043F90 AC700000 */  sw          $s0, 0x0($v1)
/* 043B44 80043F94 8FAF0058 */  lw          $t7, 0x58($sp)
/* 043B48 80043F98 8FAE003C */  lw          $t6, 0x3c($sp)
/* 043B4C 80043F9C 24420008 */  addiu       $v0, $v0, 0x8
/* 043B50 80043FA0 012FC021 */  addu        $t8, $t1, $t7
/* 043B54 80043FA4 02B80019 */  multu       $s5, $t8
/* 043B58 80043FA8 00405025 */  move        $t2, $v0
/* 043B5C 80043FAC 24420008 */  addiu       $v0, $v0, 0x8
/* 043B60 80043FB0 00CD3021 */  addu        $a2, $a2, $t5
/* 043B64 80043FB4 00DF082B */  sltu        $at, $a2, $ra
/* 043B68 80043FB8 0000C812 */  mflo        $t9
/* 043B6C 80043FBC 00197840 */  sll         $t7, $t9, 1
/* 043B70 80043FC0 01CFC021 */  addu        $t8, $t6, $t7
/* 043B74 80043FC4 AC780004 */  sw          $t8, 0x4($v1)
/* 043B78 80043FC8 00401825 */  move        $v1, $v0
/* 043B7C 80043FCC 24420008 */  addiu       $v0, $v0, 0x8
/* 043B80 80043FD0 AD510004 */  sw          $s1, 0x4($t2)
/* 043B84 80043FD4 AD4C0000 */  sw          $t4, 0x0($t2)
/* 043B88 80043FD8 00402025 */  move        $a0, $v0
/* 043B8C 80043FDC 3C19E600 */  lui         $t9, 0xe600
/* 043B90 80043FE0 AC790000 */  sw          $t9, 0x0($v1)
/* 043B94 80043FE4 24420008 */  addiu       $v0, $v0, 0x8
/* 043B98 80043FE8 AC600004 */  sw          $zero, 0x4($v1)
/* 043B9C 80043FEC 00402825 */  move        $a1, $v0
/* 043BA0 80043FF0 3C0EF400 */  lui         $t6, 0xf400
/* 043BA4 80043FF4 AC8E0000 */  sw          $t6, 0x0($a0)
/* 043BA8 80043FF8 AC920004 */  sw          $s2, 0x4($a0)
/* 043BAC 80043FFC 24420008 */  addiu       $v0, $v0, 0x8
/* 043BB0 80044000 3C0FE700 */  lui         $t7, 0xe700
/* 043BB4 80044004 ACAF0000 */  sw          $t7, 0x0($a1)
/* 043BB8 80044008 00405825 */  move        $t3, $v0
/* 043BBC 8004400C ACA00004 */  sw          $zero, 0x4($a1)
/* 043BC0 80044010 AD6C0000 */  sw          $t4, 0x0($t3)
/* 043BC4 80044014 8FAA0044 */  lw          $t2, 0x44($sp)
/* 043BC8 80044018 24420008 */  addiu       $v0, $v0, 0x8
/* 043BCC 8004401C 00401825 */  move        $v1, $v0
/* 043BD0 80044020 010AC821 */  addu        $t9, $t0, $t2
/* 043BD4 80044024 AD730004 */  sw          $s3, 0x4($t3)
/* 043BD8 80044028 3C18F200 */  lui         $t8, 0xf200
/* 043BDC 8004402C 272EFFFF */  addiu       $t6, $t9, -0x1
/* 043BE0 80044030 AC780000 */  sw          $t8, 0x0($v1)
/* 043BE4 80044034 000E7880 */  sll         $t7, $t6, 2
/* 043BE8 80044038 31F80FFF */  andi        $t8, $t7, 0xfff
/* 043BEC 8004403C 24420008 */  addiu       $v0, $v0, 0x8
/* 043BF0 80044040 02D8C825 */  or          $t9, $s6, $t8
/* 043BF4 80044044 012A7021 */  addu        $t6, $t1, $t2
/* 043BF8 80044048 AC740004 */  sw          $s4, 0x4($v1)
/* 043BFC 8004404C 000E7880 */  sll         $t7, $t6, 2
/* 043C00 80044050 00402025 */  move        $a0, $v0
/* 043C04 80044054 AC990000 */  sw          $t9, 0x0($a0)
/* 043C08 80044058 31F80FFF */  andi        $t8, $t7, 0xfff
/* 043C0C 8004405C 02F8C825 */  or          $t9, $s7, $t8
/* 043C10 80044060 24420008 */  addiu       $v0, $v0, 0x8
/* 043C14 80044064 00402825 */  move        $a1, $v0
/* 043C18 80044068 AC990004 */  sw          $t9, 0x4($a0)
/* 043C1C 8004406C 24420008 */  addiu       $v0, $v0, 0x8
/* 043C20 80044070 00401825 */  move        $v1, $v0
/* 043C24 80044074 3C181000 */  lui         $t8, 0x1000
/* 043C28 80044078 3C0EE100 */  lui         $t6, 0xe100
/* 043C2C 8004407C 00E02025 */  move        $a0, $a3
/* 043C30 80044080 ACAE0000 */  sw          $t6, 0x0($a1)
/* 043C34 80044084 37180400 */  ori         $t8, $t8, 0x400
/* 043C38 80044088 ACBE0004 */  sw          $fp, 0x4($a1)
/* 043C3C 8004408C 3C0FF100 */  lui         $t7, 0xf100
/* 043C40 80044090 24E70001 */  addiu       $a3, $a3, 0x1
/* 043C44 80044094 00C04825 */  move        $t1, $a2
/* 043C48 80044098 010D4021 */  addu        $t0, $t0, $t5
/* 043C4C 8004409C AC6F0000 */  sw          $t7, 0x0($v1)
/* 043C50 800440A0 AC780004 */  sw          $t8, 0x4($v1)
/* 043C54 800440A4 1420FFB9 */  bnez        $at, .L80043F8C
/* 043C58 800440A8 24420008 */   addiu      $v0, $v0, 0x8
.L800440AC:
/* 043C5C 800440AC 008D0019 */  multu       $a0, $t5
/* 043C60 800440B0 26B9FFFF */  addiu       $t9, $s5, -0x1
/* 043C64 800440B4 332E0FFF */  andi        $t6, $t9, 0xfff
/* 043C68 800440B8 3C01FD10 */  lui         $at, 0xfd10
/* 043C6C 800440BC 8FA60040 */  lw          $a2, 0x40($sp)
/* 043C70 800440C0 01C17825 */  or          $t7, $t6, $at
/* 043C74 800440C4 AC4F0000 */  sw          $t7, 0x0($v0)
/* 043C78 800440C8 8FB90058 */  lw          $t9, 0x58($sp)
/* 043C7C 800440CC 8FB8003C */  lw          $t8, 0x3c($sp)
/* 043C80 800440D0 00156080 */  sll         $t4, $s5, 2
/* 043C84 800440D4 00004812 */  mflo        $t1
/* 043C88 800440D8 01397021 */  addu        $t6, $t1, $t9
/* 043C8C 800440DC 3C01F510 */  lui         $at, 0xf510
/* 043C90 800440E0 02AE0019 */  multu       $s5, $t6
/* 043C94 800440E4 24450008 */  addiu       $a1, $v0, 0x8
/* 043C98 800440E8 26A8FFFF */  addiu       $t0, $s5, -0x1
/* 043C9C 800440EC 0006B880 */  sll         $s7, $a2, 2
/* 043CA0 800440F0 24A30008 */  addiu       $v1, $a1, 0x8
/* 043CA4 800440F4 24640008 */  addiu       $a0, $v1, 0x8
/* 043CA8 800440F8 00007812 */  mflo        $t7
/* 043CAC 800440FC 000FC840 */  sll         $t9, $t7, 1
/* 043CB0 80044100 000C7843 */  sra         $t7, $t4, 1
/* 043CB4 80044104 03197021 */  addu        $t6, $t8, $t9
/* 043CB8 80044108 25EC0007 */  addiu       $t4, $t7, 0x7
/* 043CBC 8004410C 000CC0C3 */  sra         $t8, $t4, 3
/* 043CC0 80044110 331901FF */  andi        $t9, $t8, 0x1ff
/* 043CC4 80044114 AC4E0004 */  sw          $t6, 0x4($v0)
/* 043CC8 80044118 00197240 */  sll         $t6, $t9, 9
/* 043CCC 8004411C 01C16025 */  or          $t4, $t6, $at
/* 043CD0 80044120 ACAC0000 */  sw          $t4, 0x0($a1)
/* 043CD4 80044124 8FAA005C */  lw          $t2, 0x5c($sp)
/* 043CD8 80044128 8FAB0030 */  lw          $t3, 0x30($sp)
/* 043CDC 8004412C 3C010700 */  lui         $at, 0x700
/* 043CE0 80044130 31580003 */  andi        $t8, $t2, 0x3
/* 043CE4 80044134 00185200 */  sll         $t2, $t8, 8
/* 043CE8 80044138 316E000F */  andi        $t6, $t3, 0xf
/* 043CEC 8004413C 000E5900 */  sll         $t3, $t6, 4
/* 043CF0 80044140 0141C025 */  or          $t8, $t2, $at
/* 043CF4 80044144 030BC825 */  or          $t9, $t8, $t3
/* 043CF8 80044148 ACB90004 */  sw          $t9, 0x4($a1)
/* 043CFC 8004414C 8FB9004C */  lw          $t9, 0x4c($sp)
/* 043D00 80044150 00087080 */  sll         $t6, $t0, 2
/* 043D04 80044154 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 043D08 80044158 00D9B021 */  addu        $s6, $a2, $t9
/* 043D0C 8004415C 8FAD0050 */  lw          $t5, 0x50($sp)
/* 043D10 80044160 26D6FFFF */  addiu       $s6, $s6, -0x1
/* 043D14 80044164 8FB90054 */  lw          $t9, 0x54($sp)
/* 043D18 80044168 00167080 */  sll         $t6, $s6, 2
/* 043D1C 8004416C 000F4300 */  sll         $t0, $t7, 12
/* 043D20 80044170 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 043D24 80044174 000FC300 */  sll         $t8, $t7, 12
/* 043D28 80044178 01018025 */  or          $s0, $t0, $at
/* 043D2C 8004417C 01A93023 */  subu        $a2, $t5, $t1
/* 043D30 80044180 24C6FFFF */  addiu       $a2, $a2, -0x1
/* 043D34 80044184 3C01E400 */  lui         $at, 0xe400
/* 043D38 80044188 3C0FE600 */  lui         $t7, 0xe600
/* 043D3C 8004418C 0019F540 */  sll         $fp, $t9, 21
/* 043D40 80044190 0006C880 */  sll         $t9, $a2, 2
/* 043D44 80044194 AC6F0000 */  sw          $t7, 0x0($v1)
/* 043D48 80044198 0301B025 */  or          $s6, $t8, $at
/* 043D4C 8004419C 3C18F400 */  lui         $t8, 0xf400
/* 043D50 800441A0 33260FFF */  andi        $a2, $t9, 0xfff
/* 043D54 800441A4 AC600004 */  sw          $zero, 0x4($v1)
/* 043D58 800441A8 AC980000 */  sw          $t8, 0x0($a0)
/* 043D5C 800441AC 02067825 */  or          $t7, $s0, $a2
/* 043D60 800441B0 24820008 */  addiu       $v0, $a0, 0x8
/* 043D64 800441B4 AC8F0004 */  sw          $t7, 0x4($a0)
/* 043D68 800441B8 3C18E700 */  lui         $t8, 0xe700
/* 043D6C 800441BC AC580000 */  sw          $t8, 0x0($v0)
/* 043D70 800441C0 AC400004 */  sw          $zero, 0x4($v0)
/* 043D74 800441C4 24470008 */  addiu       $a3, $v0, 0x8
/* 043D78 800441C8 ACEC0000 */  sw          $t4, 0x0($a3)
/* 043D7C 800441CC 8FA50044 */  lw          $a1, 0x44($sp)
/* 043D80 800441D0 014BC825 */  or          $t9, $t2, $t3
/* 043D84 800441D4 32EE0FFF */  andi        $t6, $s7, 0xfff
/* 043D88 800441D8 000EBB00 */  sll         $s7, $t6, 12
/* 043D8C 800441DC ACF90004 */  sw          $t9, 0x4($a3)
/* 043D90 800441E0 3C0EF200 */  lui         $t6, 0xf200
/* 043D94 800441E4 24E30008 */  addiu       $v1, $a3, 0x8
/* 043D98 800441E8 00ADC021 */  addu        $t8, $a1, $t5
/* 043D9C 800441EC AC6E0000 */  sw          $t6, 0x0($v1)
/* 043DA0 800441F0 01067825 */  or          $t7, $t0, $a2
/* 043DA4 800441F4 2719FFFF */  addiu       $t9, $t8, -0x1
/* 043DA8 800441F8 AC6F0004 */  sw          $t7, 0x4($v1)
/* 043DAC 800441FC 00197080 */  sll         $t6, $t9, 2
/* 043DB0 80044200 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 043DB4 80044204 02CFC025 */  or          $t8, $s6, $t7
/* 043DB8 80044208 0125C821 */  addu        $t9, $t1, $a1
/* 043DBC 8004420C 24620008 */  addiu       $v0, $v1, 0x8
/* 043DC0 80044210 00197080 */  sll         $t6, $t9, 2
/* 043DC4 80044214 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 043DC8 80044218 AC580000 */  sw          $t8, 0x0($v0)
/* 043DCC 8004421C 02EFC025 */  or          $t8, $s7, $t7
/* 043DD0 80044220 24430008 */  addiu       $v1, $v0, 0x8
/* 043DD4 80044224 AC580004 */  sw          $t8, 0x4($v0)
/* 043DD8 80044228 24640008 */  addiu       $a0, $v1, 0x8
/* 043DDC 8004422C 3C19E100 */  lui         $t9, 0xe100
/* 043DE0 80044230 AC790000 */  sw          $t9, 0x0($v1)
/* 043DE4 80044234 AC7E0004 */  sw          $fp, 0x4($v1)
/* 043DE8 80044238 3C0F1000 */  lui         $t7, 0x1000
/* 043DEC 8004423C 35EF0400 */  ori         $t7, $t7, 0x400
/* 043DF0 80044240 3C0EF100 */  lui         $t6, 0xf100
/* 043DF4 80044244 AC8E0000 */  sw          $t6, 0x0($a0)
/* 043DF8 80044248 AC8F0004 */  sw          $t7, 0x4($a0)
/* 043DFC 8004424C 24850008 */  addiu       $a1, $a0, 0x8
/* 043E00 80044250 3C194000 */  lui         $t9, 0x4000
/* 043E04 80044254 3C18D700 */  lui         $t8, 0xd700
/* 043E08 80044258 ACB80000 */  sw          $t8, 0x0($a1)
/* 043E0C 8004425C ACB90004 */  sw          $t9, 0x4($a1)
/* 043E10 80044260 24A60008 */  addiu       $a2, $a1, 0x8
/* 043E14 80044264 3C0EDB08 */  lui         $t6, 0xdb08
/* 043E18 80044268 35CE0010 */  ori         $t6, $t6, 0x10
/* 043E1C 8004426C 240F4000 */  addiu       $t7, $zero, 0x4000
/* 043E20 80044270 ACCF0004 */  sw          $t7, 0x4($a2)
/* 043E24 80044274 ACCE0000 */  sw          $t6, 0x0($a2)
/* 043E28 80044278 8FB80038 */  lw          $t8, 0x38($sp)
/* 043E2C 8004427C 24C20008 */  addiu       $v0, $a2, 0x8
/* 043E30 80044280 AF020000 */  sw          $v0, 0x0($t8)
/* 043E34 80044284 8FBF002C */  lw          $ra, 0x2c($sp)
/* 043E38 80044288 8FBE0028 */  lw          $fp, 0x28($sp)
/* 043E3C 8004428C 8FB70024 */  lw          $s7, 0x24($sp)
/* 043E40 80044290 8FB60020 */  lw          $s6, 0x20($sp)
/* 043E44 80044294 8FB5001C */  lw          $s5, 0x1c($sp)
/* 043E48 80044298 8FB40018 */  lw          $s4, 0x18($sp)
/* 043E4C 8004429C 8FB30014 */  lw          $s3, 0x14($sp)
/* 043E50 800442A0 8FB20010 */  lw          $s2, 0x10($sp)
/* 043E54 800442A4 8FB1000C */  lw          $s1, 0xc($sp)
/* 043E58 800442A8 8FB00008 */  lw          $s0, 0x8($sp)
/* 043E5C 800442AC 03E00008 */  jr          $ra
/* 043E60 800442B0 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_800442B4 # 8
/* 043E64 800442B4 27BDFF88 */  addiu       $sp, $sp, -0x78
/* 043E68 800442B8 AFA40078 */  sw          $a0, 0x78($sp)
/* 043E6C 800442BC AFA5007C */  sw          $a1, 0x7c($sp)
/* 043E70 800442C0 AFA60080 */  sw          $a2, 0x80($sp)
/* 043E74 800442C4 AFA70084 */  sw          $a3, 0x84($sp)
/* 043E78 800442C8 8C820000 */  lw          $v0, 0x0($a0)
/* 043E7C 800442CC 3C0FE700 */  lui         $t7, 0xe700
/* 043E80 800442D0 3C18E300 */  lui         $t8, 0xe300
/* 043E84 800442D4 00401825 */  move        $v1, $v0
/* 043E88 800442D8 24420008 */  addiu       $v0, $v0, 0x8
/* 043E8C 800442DC AC6F0000 */  sw          $t7, 0x0($v1)
/* 043E90 800442E0 00404025 */  move        $t0, $v0
/* 043E94 800442E4 AC600004 */  sw          $zero, 0x4($v1)
/* 043E98 800442E8 24420008 */  addiu       $v0, $v0, 0x8
/* 043E9C 800442EC 37180A01 */  ori         $t8, $t8, 0xa01
/* 043EA0 800442F0 AD180000 */  sw          $t8, 0x0($t0)
/* 043EA4 800442F4 3C190020 */  lui         $t9, 0x20
/* 043EA8 800442F8 00404825 */  move        $t1, $v0
/* 043EAC 800442FC AD190004 */  sw          $t9, 0x4($t0)
/* 043EB0 80044300 24420008 */  addiu       $v0, $v0, 0x8
/* 043EB4 80044304 3C0EE200 */  lui         $t6, 0xe200
/* 043EB8 80044308 35CE001C */  ori         $t6, $t6, 0x1c
/* 043EBC 8004430C 00405025 */  move        $t2, $v0
/* 043EC0 80044310 AD2E0000 */  sw          $t6, 0x0($t1)
/* 043EC4 80044314 AD200004 */  sw          $zero, 0x4($t1)
/* 043EC8 80044318 3C0FE300 */  lui         $t7, 0xe300
/* 043ECC 8004431C 35EF0C00 */  ori         $t7, $t7, 0xc00
/* 043ED0 80044320 24420008 */  addiu       $v0, $v0, 0x8
/* 043ED4 80044324 3C18E300 */  lui         $t8, 0xe300
/* 043ED8 80044328 AD4F0000 */  sw          $t7, 0x0($t2)
/* 043EDC 8004432C AD400004 */  sw          $zero, 0x4($t2)
/* 043EE0 80044330 37181001 */  ori         $t8, $t8, 0x1001
/* 043EE4 80044334 00405825 */  move        $t3, $v0
/* 043EE8 80044338 AD780000 */  sw          $t8, 0x0($t3)
/* 043EEC 8004433C 8FA70088 */  lw          $a3, 0x88($sp)
/* 043EF0 80044340 24420008 */  addiu       $v0, $v0, 0x8
/* 043EF4 80044344 00402025 */  move        $a0, $v0
/* 043EF8 80044348 AD600004 */  sw          $zero, 0x4($t3)
/* 043EFC 8004434C 3C0EFFFC */  lui         $t6, 0xfffc
/* 043F00 80044350 3C19FCFF */  lui         $t9, 0xfcff
/* 043F04 80044354 3739FFFF */  ori         $t9, $t9, 0xffff
/* 043F08 80044358 35CEF279 */  ori         $t6, $t6, 0xf279
/* 043F0C 8004435C AC8E0004 */  sw          $t6, 0x4($a0)
/* 043F10 80044360 AC990000 */  sw          $t9, 0x0($a0)
/* 043F14 80044364 24420008 */  addiu       $v0, $v0, 0x8
/* 043F18 80044368 00001825 */  move        $v1, $zero
/* 043F1C 8004436C 00E02825 */  move        $a1, $a3
/* 043F20 80044370 00057842 */  srl         $t7, $a1, 1
/* 043F24 80044374 11E00005 */  beqz        $t7, .L8004438C
/* 043F28 80044378 01E02825 */   move       $a1, $t7
.L8004437C:
/* 043F2C 8004437C 00057842 */  srl         $t7, $a1, 1
/* 043F30 80044380 24630001 */  addiu       $v1, $v1, 0x1
/* 043F34 80044384 15E0FFFD */  bnez        $t7, .L8004437C
/* 043F38 80044388 01E02825 */   move       $a1, $t7
.L8004438C:
/* 043F3C 8004438C 8FAD008C */  lw          $t5, 0x8c($sp)
/* 043F40 80044390 00604025 */  move        $t0, $v1
/* 043F44 80044394 00001825 */  move        $v1, $zero
/* 043F48 80044398 01A02825 */  move        $a1, $t5
/* 043F4C 8004439C 0005C042 */  srl         $t8, $a1, 1
/* 043F50 800443A0 13000005 */  beqz        $t8, .L800443B8
/* 043F54 800443A4 03002825 */   move       $a1, $t8
.L800443A8:
/* 043F58 800443A8 0005C042 */  srl         $t8, $a1, 1
/* 043F5C 800443AC 24630001 */  addiu       $v1, $v1, 0x1
/* 043F60 800443B0 1700FFFD */  bnez        $t8, .L800443A8
/* 043F64 800443B4 03002825 */   move       $a1, $t8
.L800443B8:
/* 043F68 800443B8 AFA20038 */  sw          $v0, 0x38($sp)
/* 043F6C 800443BC 8FB80038 */  lw          $t8, 0x38($sp)
/* 043F70 800443C0 24F9FFFF */  addiu       $t9, $a3, -0x1
/* 043F74 800443C4 332E0FFF */  andi        $t6, $t9, 0xfff
/* 043F78 800443C8 3C01FD10 */  lui         $at, 0xfd10
/* 043F7C 800443CC 8FAB0080 */  lw          $t3, 0x80($sp)
/* 043F80 800443D0 8FAC0084 */  lw          $t4, 0x84($sp)
/* 043F84 800443D4 01C17825 */  or          $t7, $t6, $at
/* 043F88 800443D8 AF0F0000 */  sw          $t7, 0x0($t8)
/* 043F8C 800443DC 8FAE0038 */  lw          $t6, 0x38($sp)
/* 043F90 800443E0 8FB9007C */  lw          $t9, 0x7c($sp)
/* 043F94 800443E4 00077880 */  sll         $t7, $a3, 2
/* 043F98 800443E8 000FC042 */  srl         $t8, $t7, 1
/* 043F9C 800443EC ADD90004 */  sw          $t9, 0x4($t6)
/* 043FA0 800443F0 27190007 */  addiu       $t9, $t8, 0x7
/* 043FA4 800443F4 001970C2 */  srl         $t6, $t9, 3
/* 043FA8 800443F8 31CF01FF */  andi        $t7, $t6, 0x1ff
/* 043FAC 800443FC 24420008 */  addiu       $v0, $v0, 0x8
/* 043FB0 80044400 AFA20034 */  sw          $v0, 0x34($sp)
/* 043FB4 80044404 8FAE0034 */  lw          $t6, 0x34($sp)
/* 043FB8 80044408 000FC240 */  sll         $t8, $t7, 9
/* 043FBC 8004440C 3C09F510 */  lui         $t1, 0xf510
/* 043FC0 80044410 3064000F */  andi        $a0, $v1, 0xf
/* 043FC4 80044414 00047B80 */  sll         $t7, $a0, 14
/* 043FC8 80044418 0309C825 */  or          $t9, $t8, $t1
/* 043FCC 8004441C 3C0A0700 */  lui         $t2, 0x700
/* 043FD0 80044420 ADD90000 */  sw          $t9, 0x0($t6)
/* 043FD4 80044424 01EAC825 */  or          $t9, $t7, $t2
/* 043FD8 80044428 01E02025 */  move        $a0, $t7
/* 043FDC 8004442C 8FAF0034 */  lw          $t7, 0x34($sp)
/* 043FE0 80044430 3105000F */  andi        $a1, $t0, 0xf
/* 043FE4 80044434 0005C100 */  sll         $t8, $a1, 4
/* 043FE8 80044438 03387025 */  or          $t6, $t9, $t8
/* 043FEC 8004443C 24420008 */  addiu       $v0, $v0, 0x8
/* 043FF0 80044440 ADEE0004 */  sw          $t6, 0x4($t7)
/* 043FF4 80044444 AFA20030 */  sw          $v0, 0x30($sp)
/* 043FF8 80044448 8FB90030 */  lw          $t9, 0x30($sp)
/* 043FFC 8004444C 03002825 */  move        $a1, $t8
/* 044000 80044450 3C18E600 */  lui         $t8, 0xe600
/* 044004 80044454 AF380000 */  sw          $t8, 0x0($t9)
/* 044008 80044458 8FAE0030 */  lw          $t6, 0x30($sp)
/* 04400C 8004445C 24E8FFFF */  addiu       $t0, $a3, -0x1
/* 044010 80044460 0008C080 */  sll         $t8, $t0, 2
/* 044014 80044464 3C0FF400 */  lui         $t7, 0xf400
/* 044018 80044468 24460008 */  addiu       $a2, $v0, 0x8
/* 04401C 8004446C ADC00004 */  sw          $zero, 0x4($t6)
/* 044020 80044470 ACCF0000 */  sw          $t7, 0x0($a2)
/* 044024 80044474 33190FFF */  andi        $t9, $t8, 0xfff
/* 044028 80044478 25AFFFFF */  addiu       $t7, $t5, -0x1
/* 04402C 8004447C 000FC080 */  sll         $t8, $t7, 2
/* 044030 80044480 00197300 */  sll         $t6, $t9, 12
/* 044034 80044484 33190FFF */  andi        $t9, $t8, 0xfff
/* 044038 80044488 01CA7825 */  or          $t7, $t6, $t2
/* 04403C 8004448C 01F9C025 */  or          $t8, $t7, $t9
/* 044040 80044490 AFB90000 */  sw          $t9, 0x0($sp)
/* 044044 80044494 AFAE0004 */  sw          $t6, 0x4($sp)
/* 044048 80044498 ACD80004 */  sw          $t8, 0x4($a2)
/* 04404C 8004449C 24C20008 */  addiu       $v0, $a2, 0x8
/* 044050 800444A0 AFA20028 */  sw          $v0, 0x28($sp)
/* 044054 800444A4 8FAF0028 */  lw          $t7, 0x28($sp)
/* 044058 800444A8 3C0EE700 */  lui         $t6, 0xe700
/* 04405C 800444AC 0008C080 */  sll         $t8, $t0, 2
/* 044060 800444B0 ADEE0000 */  sw          $t6, 0x0($t7)
/* 044064 800444B4 8FB90028 */  lw          $t9, 0x28($sp)
/* 044068 800444B8 270E0004 */  addiu       $t6, $t8, 0x4
/* 04406C 800444BC 000E7842 */  srl         $t7, $t6, 1
/* 044070 800444C0 AF200004 */  sw          $zero, 0x4($t9)
/* 044074 800444C4 25F90007 */  addiu       $t9, $t7, 0x7
/* 044078 800444C8 0019C0C2 */  srl         $t8, $t9, 3
/* 04407C 800444CC 24420008 */  addiu       $v0, $v0, 0x8
/* 044080 800444D0 AFA20024 */  sw          $v0, 0x24($sp)
/* 044084 800444D4 330E01FF */  andi        $t6, $t8, 0x1ff
/* 044088 800444D8 8FB80024 */  lw          $t8, 0x24($sp)
/* 04408C 800444DC 000E7A40 */  sll         $t7, $t6, 9
/* 044090 800444E0 01E9C825 */  or          $t9, $t7, $t1
/* 044094 800444E4 AF190000 */  sw          $t9, 0x0($t8)
/* 044098 800444E8 8FAF0024 */  lw          $t7, 0x24($sp)
/* 04409C 800444EC 00857025 */  or          $t6, $a0, $a1
/* 0440A0 800444F0 24420008 */  addiu       $v0, $v0, 0x8
/* 0440A4 800444F4 ADEE0004 */  sw          $t6, 0x4($t7)
/* 0440A8 800444F8 AFA20020 */  sw          $v0, 0x20($sp)
/* 0440AC 800444FC 8FB80020 */  lw          $t8, 0x20($sp)
/* 0440B0 80044500 3C19F200 */  lui         $t9, 0xf200
/* 0440B4 80044504 3C01E400 */  lui         $at, 0xe400
/* 0440B8 80044508 AF190000 */  sw          $t9, 0x0($t8)
/* 0440BC 8004450C 8FAF0000 */  lw          $t7, 0x0($sp)
/* 0440C0 80044510 8FAE0004 */  lw          $t6, 0x4($sp)
/* 0440C4 80044514 8FB80020 */  lw          $t8, 0x20($sp)
/* 0440C8 80044518 24430008 */  addiu       $v1, $v0, 0x8
/* 0440CC 8004451C 01CFC825 */  or          $t9, $t6, $t7
/* 0440D0 80044520 AF190004 */  sw          $t9, 0x4($t8)
/* 0440D4 80044524 8FAE0090 */  lw          $t6, 0x90($sp)
/* 0440D8 80044528 24640008 */  addiu       $a0, $v1, 0x8
/* 0440DC 8004452C 24850008 */  addiu       $a1, $a0, 0x8
/* 0440E0 80044530 016E7821 */  addu        $t7, $t3, $t6
/* 0440E4 80044534 25F9FFFF */  addiu       $t9, $t7, -0x1
/* 0440E8 80044538 0019C080 */  sll         $t8, $t9, 2
/* 0440EC 8004453C 330E0FFF */  andi        $t6, $t8, 0xfff
/* 0440F0 80044540 8FB80094 */  lw          $t8, 0x94($sp)
/* 0440F4 80044544 000E7B00 */  sll         $t7, $t6, 12
/* 0440F8 80044548 01E1C825 */  or          $t9, $t7, $at
/* 0440FC 8004454C 01987021 */  addu        $t6, $t4, $t8
/* 044100 80044550 000E7880 */  sll         $t7, $t6, 2
/* 044104 80044554 31F80FFF */  andi        $t8, $t7, 0xfff
/* 044108 80044558 03387025 */  or          $t6, $t9, $t8
/* 04410C 8004455C 000B7880 */  sll         $t7, $t3, 2
/* 044110 80044560 31F90FFF */  andi        $t9, $t7, 0xfff
/* 044114 80044564 AC6E0000 */  sw          $t6, 0x0($v1)
/* 044118 80044568 000C7080 */  sll         $t6, $t4, 2
/* 04411C 8004456C 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 044120 80044570 0019C300 */  sll         $t8, $t9, 12
/* 044124 80044574 030FC825 */  or          $t9, $t8, $t7
/* 044128 80044578 AC790004 */  sw          $t9, 0x4($v1)
/* 04412C 8004457C 3C0EE100 */  lui         $t6, 0xe100
/* 044130 80044580 AC8E0000 */  sw          $t6, 0x0($a0)
/* 044134 80044584 8FB8009C */  lw          $t8, 0x9c($sp)
/* 044138 80044588 8FB90098 */  lw          $t9, 0x98($sp)
/* 04413C 8004458C 24A20008 */  addiu       $v0, $a1, 0x8
/* 044140 80044590 00187940 */  sll         $t7, $t8, 5
/* 044144 80044594 00197540 */  sll         $t6, $t9, 21
/* 044148 80044598 31F9FFFF */  andi        $t9, $t7, 0xffff
/* 04414C 8004459C 01D9C025 */  or          $t8, $t6, $t9
/* 044150 800445A0 AC980004 */  sw          $t8, 0x4($a0)
/* 044154 800445A4 3C0E1000 */  lui         $t6, 0x1000
/* 044158 800445A8 35CE0400 */  ori         $t6, $t6, 0x400
/* 04415C 800445AC 3C0FF100 */  lui         $t7, 0xf100
/* 044160 800445B0 ACAF0000 */  sw          $t7, 0x0($a1)
/* 044164 800445B4 ACAE0004 */  sw          $t6, 0x4($a1)
/* 044168 800445B8 8FB90078 */  lw          $t9, 0x78($sp)
/* 04416C 800445BC 27BD0078 */  addiu       $sp, $sp, 0x78
/* 044170 800445C0 03E00008 */  jr          $ra
/* 044174 800445C4 AF220000 */   sw         $v0, 0x0($t9)

glabel func_800445C8 # 9
/* 044178 800445C8 27BDFE58 */  addiu       $sp, $sp, -0x1a8
/* 04417C 800445CC AFBF002C */  sw          $ra, 0x2c($sp)
/* 044180 800445D0 AFBE0028 */  sw          $fp, 0x28($sp)
/* 044184 800445D4 AFB70024 */  sw          $s7, 0x24($sp)
/* 044188 800445D8 AFB60020 */  sw          $s6, 0x20($sp)
/* 04418C 800445DC AFB5001C */  sw          $s5, 0x1c($sp)
/* 044190 800445E0 AFB40018 */  sw          $s4, 0x18($sp)
/* 044194 800445E4 AFB30014 */  sw          $s3, 0x14($sp)
/* 044198 800445E8 AFB20010 */  sw          $s2, 0x10($sp)
/* 04419C 800445EC AFB1000C */  sw          $s1, 0xc($sp)
/* 0441A0 800445F0 AFB00008 */  sw          $s0, 0x8($sp)
/* 0441A4 800445F4 AFA401A8 */  sw          $a0, 0x1a8($sp)
/* 0441A8 800445F8 AFA601B0 */  sw          $a2, 0x1b0($sp)
/* 0441AC 800445FC AFA701B4 */  sw          $a3, 0x1b4($sp)
/* 0441B0 80044600 8CAF0000 */  lw          $t7, 0x0($a1)
/* 0441B4 80044604 8C820000 */  lw          $v0, 0x0($a0)
/* 0441B8 80044608 8FB901B8 */  lw          $t9, 0x1b8($sp)
/* 0441BC 8004460C AFAF017C */  sw          $t7, 0x17c($sp)
/* 0441C0 80044610 8CB80018 */  lw          $t8, 0x18($a1)
/* 0441C4 80044614 8CAA0004 */  lw          $t2, 0x4($a1)
/* 0441C8 80044618 8CA8000C */  lw          $t0, 0xc($a1)
/* 0441CC 8004461C 17200003 */  bnez        $t9, .L8004462C
/* 0441D0 80044620 AFB80170 */   sw         $t8, 0x170($sp)
/* 0441D4 80044624 8CAE0010 */  lw          $t6, 0x10($a1)
/* 0441D8 80044628 AFAE01B8 */  sw          $t6, 0x1b8($sp)
.L8004462C:
/* 0441DC 8004462C 8FAF01BC */  lw          $t7, 0x1bc($sp)
/* 0441E0 80044630 3C014F80 */  lui         $at, 0x4f80
/* 0441E4 80044634 55E00004 */  bnel        $t7, $zero, .L80044648
/* 0441E8 80044638 8FA401BC */   lw         $a0, 0x1bc($sp)
/* 0441EC 8004463C 8CA40014 */  lw          $a0, 0x14($a1)
/* 0441F0 80044640 AFA401BC */  sw          $a0, 0x1bc($sp)
/* 0441F4 80044644 8FA401BC */  lw          $a0, 0x1bc($sp)
.L80044648:
/* 0441F8 80044648 C7A001D4 */  lwc1        $f0, 0x1d4($sp)
/* 0441FC 8004464C 8FB901CC */  lw          $t9, 0x1cc($sp)
/* 044200 80044650 44842000 */  mtc1        $a0, $f4
/* 044204 80044654 04810004 */  bgez        $a0, .L80044668
/* 044208 80044658 468021A0 */   cvt.s.w    $f6, $f4
/* 04420C 8004465C 44814000 */  mtc1        $at, $f8
/* 044210 80044660 00000000 */  nop
/* 044214 80044664 46083180 */  add.s       $f6, $f6, $f8
.L80044668:
/* 044218 80044668 46003283 */  div.s       $f10, $f6, $f0
/* 04421C 8004466C 24040001 */  addiu       $a0, $zero, 0x1
/* 044220 80044670 3C014F00 */  lui         $at, 0x4f00
/* 044224 80044674 4458F800 */  cfc1        $t8, $31
/* 044228 80044678 44C4F800 */  ctc1        $a0, $31
/* 04422C 8004467C 00000000 */  nop
/* 044230 80044680 46005424 */  cvt.w.s     $f16, $f10
/* 044234 80044684 4444F800 */  cfc1        $a0, $31
/* 044238 80044688 00000000 */  nop
/* 04423C 8004468C 30840078 */  andi        $a0, $a0, 0x78
/* 044240 80044690 50800013 */  beql        $a0, $zero, .L800446E0
/* 044244 80044694 44048000 */   mfc1       $a0, $f16
/* 044248 80044698 44818000 */  mtc1        $at, $f16
/* 04424C 8004469C 24040001 */  addiu       $a0, $zero, 0x1
/* 044250 800446A0 46105401 */  sub.s       $f16, $f10, $f16
/* 044254 800446A4 44C4F800 */  ctc1        $a0, $31
/* 044258 800446A8 00000000 */  nop
/* 04425C 800446AC 46008424 */  cvt.w.s     $f16, $f16
/* 044260 800446B0 4444F800 */  cfc1        $a0, $31
/* 044264 800446B4 00000000 */  nop
/* 044268 800446B8 30840078 */  andi        $a0, $a0, 0x78
/* 04426C 800446BC 14800005 */  bnez        $a0, .L800446D4
/* 044270 800446C0 00000000 */   nop
/* 044274 800446C4 44048000 */  mfc1        $a0, $f16
/* 044278 800446C8 3C018000 */  lui         $at, 0x8000
/* 04427C 800446CC 10000007 */  b           .L800446EC
/* 044280 800446D0 00812025 */   or         $a0, $a0, $at
.L800446D4:
/* 044284 800446D4 10000005 */  b           .L800446EC
/* 044288 800446D8 2404FFFF */   addiu      $a0, $zero, -0x1
/* 04428C 800446DC 44048000 */  mfc1        $a0, $f16
.L800446E0:
/* 044290 800446E0 00000000 */  nop
/* 044294 800446E4 0480FFFB */  bltz        $a0, .L800446D4
/* 044298 800446E8 00000000 */   nop
.L800446EC:
/* 04429C 800446EC 8CA30014 */  lw          $v1, 0x14($a1)
/* 0442A0 800446F0 44D8F800 */  ctc1        $t8, $31
/* 0442A4 800446F4 00004825 */  move        $t1, $zero
/* 0442A8 800446F8 0064082B */  sltu        $at, $v1, $a0
/* 0442AC 800446FC 10200002 */  beqz        $at, .L80044708
/* 0442B0 80044700 00000000 */   nop
/* 0442B4 80044704 00602025 */  move        $a0, $v1
.L80044708:
/* 0442B8 80044708 13200009 */  beqz        $t9, .L80044730
/* 0442BC 8004470C 8FA301B8 */   lw         $v1, 0x1b8($sp)
.L80044710:
/* 0442C0 80044710 00037042 */  srl         $t6, $v1, 1
/* 0442C4 80044714 15C00004 */  bnez        $t6, .L80044728
/* 0442C8 80044718 01C01825 */   move       $v1, $t6
/* 0442CC 8004471C AFA901A0 */  sw          $t1, 0x1a0($sp)
/* 0442D0 80044720 10000063 */  b           .L800448B0
/* 0442D4 80044724 C7A201D0 */   lwc1       $f2, 0x1d0($sp)
.L80044728:
/* 0442D8 80044728 1000FFF9 */  b           .L80044710
/* 0442DC 8004472C 25290001 */   addiu      $t1, $t1, 0x1
.L80044730:
/* 0442E0 80044730 8CAF0010 */  lw          $t7, 0x10($a1)
/* 0442E4 80044734 C7A201D0 */  lwc1        $f2, 0x1d0($sp)
/* 0442E8 80044738 3C014F80 */  lui         $at, 0x4f80
/* 0442EC 8004473C 448F9000 */  mtc1        $t7, $f18
/* 0442F0 80044740 240E0001 */  addiu       $t6, $zero, 0x1
/* 0442F4 80044744 05E10004 */  bgez        $t7, .L80044758
/* 0442F8 80044748 46809120 */   cvt.s.w    $f4, $f18
/* 0442FC 8004474C 44814000 */  mtc1        $at, $f8
/* 044300 80044750 00000000 */  nop
/* 044304 80044754 46082100 */  add.s       $f4, $f4, $f8
.L80044758:
/* 044308 80044758 8FB801B8 */  lw          $t8, 0x1b8($sp)
/* 04430C 8004475C 46022302 */  mul.s       $f12, $f4, $f2
/* 044310 80044760 3C014F80 */  lui         $at, 0x4f80
/* 044314 80044764 44983000 */  mtc1        $t8, $f6
/* 044318 80044768 07010004 */  bgez        $t8, .L8004477C
/* 04431C 8004476C 468033A0 */   cvt.s.w    $f14, $f6
/* 044320 80044770 44815000 */  mtc1        $at, $f10
/* 044324 80044774 00000000 */  nop
/* 044328 80044778 460A7380 */  add.s       $f14, $f14, $f10
.L8004477C:
/* 04432C 8004477C 460E603C */  c.lt.s      $f12, $f14
/* 044330 80044780 24180001 */  addiu       $t8, $zero, 0x1
/* 044334 80044784 45020026 */  bc1fl       .L80044820
/* 044338 80044788 444FF800 */   cfc1       $t7, $31
/* 04433C 8004478C 4459F800 */  cfc1        $t9, $31
/* 044340 80044790 44CEF800 */  ctc1        $t6, $31
/* 044344 80044794 00000000 */  nop
/* 044348 80044798 46006424 */  cvt.w.s     $f16, $f12
/* 04434C 8004479C 444EF800 */  cfc1        $t6, $31
/* 044350 800447A0 00000000 */  nop
/* 044354 800447A4 31C10004 */  andi        $at, $t6, 0x4
/* 044358 800447A8 31CE0078 */  andi        $t6, $t6, 0x78
/* 04435C 800447AC 51C00015 */  beql        $t6, $zero, .L80044804
/* 044360 800447B0 440E8000 */   mfc1       $t6, $f16
/* 044364 800447B4 3C014F00 */  lui         $at, 0x4f00
/* 044368 800447B8 44818000 */  mtc1        $at, $f16
/* 04436C 800447BC 240E0001 */  addiu       $t6, $zero, 0x1
/* 044370 800447C0 46106401 */  sub.s       $f16, $f12, $f16
/* 044374 800447C4 44CEF800 */  ctc1        $t6, $31
/* 044378 800447C8 00000000 */  nop
/* 04437C 800447CC 46008424 */  cvt.w.s     $f16, $f16
/* 044380 800447D0 444EF800 */  cfc1        $t6, $31
/* 044384 800447D4 00000000 */  nop
/* 044388 800447D8 31C10004 */  andi        $at, $t6, 0x4
/* 04438C 800447DC 31CE0078 */  andi        $t6, $t6, 0x78
/* 044390 800447E0 15C00005 */  bnez        $t6, .L800447F8
/* 044394 800447E4 00000000 */   nop
/* 044398 800447E8 440E8000 */  mfc1        $t6, $f16
/* 04439C 800447EC 3C018000 */  lui         $at, 0x8000
/* 0443A0 800447F0 10000007 */  b           .L80044810
/* 0443A4 800447F4 01C17025 */   or         $t6, $t6, $at
.L800447F8:
/* 0443A8 800447F8 10000005 */  b           .L80044810
/* 0443AC 800447FC 240EFFFF */   addiu      $t6, $zero, -0x1
/* 0443B0 80044800 440E8000 */  mfc1        $t6, $f16
.L80044804:
/* 0443B4 80044804 00000000 */  nop
/* 0443B8 80044808 05C0FFFB */  bltz        $t6, .L800447F8
/* 0443BC 8004480C 00000000 */   nop
.L80044810:
/* 0443C0 80044810 44D9F800 */  ctc1        $t9, $31
/* 0443C4 80044814 10000025 */  b           .L800448AC
/* 0443C8 80044818 AFAE01B8 */   sw         $t6, 0x1b8($sp)
/* 0443CC 8004481C 444FF800 */  cfc1        $t7, $31
.L80044820:
/* 0443D0 80044820 44D8F800 */  ctc1        $t8, $31
/* 0443D4 80044824 00000000 */  nop
/* 0443D8 80044828 460074A4 */  cvt.w.s     $f18, $f14
/* 0443DC 8004482C 4458F800 */  cfc1        $t8, $31
/* 0443E0 80044830 00000000 */  nop
/* 0443E4 80044834 33010004 */  andi        $at, $t8, 0x4
/* 0443E8 80044838 33180078 */  andi        $t8, $t8, 0x78
/* 0443EC 8004483C 53000015 */  beql        $t8, $zero, .L80044894
/* 0443F0 80044840 44189000 */   mfc1       $t8, $f18
/* 0443F4 80044844 3C014F00 */  lui         $at, 0x4f00
/* 0443F8 80044848 44819000 */  mtc1        $at, $f18
/* 0443FC 8004484C 24180001 */  addiu       $t8, $zero, 0x1
/* 044400 80044850 46127481 */  sub.s       $f18, $f14, $f18
/* 044404 80044854 44D8F800 */  ctc1        $t8, $31
/* 044408 80044858 00000000 */  nop
/* 04440C 8004485C 460094A4 */  cvt.w.s     $f18, $f18
/* 044410 80044860 4458F800 */  cfc1        $t8, $31
/* 044414 80044864 00000000 */  nop
/* 044418 80044868 33010004 */  andi        $at, $t8, 0x4
/* 04441C 8004486C 33180078 */  andi        $t8, $t8, 0x78
/* 044420 80044870 17000005 */  bnez        $t8, .L80044888
/* 044424 80044874 00000000 */   nop
/* 044428 80044878 44189000 */  mfc1        $t8, $f18
/* 04442C 8004487C 3C018000 */  lui         $at, 0x8000
/* 044430 80044880 10000007 */  b           .L800448A0
/* 044434 80044884 0301C025 */   or         $t8, $t8, $at
.L80044888:
/* 044438 80044888 10000005 */  b           .L800448A0
/* 04443C 8004488C 2418FFFF */   addiu      $t8, $zero, -0x1
/* 044440 80044890 44189000 */  mfc1        $t8, $f18
.L80044894:
/* 044444 80044894 00000000 */  nop
/* 044448 80044898 0700FFFB */  bltz        $t8, .L80044888
/* 04444C 8004489C 00000000 */   nop
.L800448A0:
/* 044450 800448A0 44CFF800 */  ctc1        $t7, $31
/* 044454 800448A4 AFB801B8 */  sw          $t8, 0x1b8($sp)
/* 044458 800448A8 00000000 */  nop
.L800448AC:
/* 04445C 800448AC AFA001A0 */  sw          $zero, 0x1a0($sp)
.L800448B0:
/* 044460 800448B0 00402825 */  move        $a1, $v0
/* 044464 800448B4 24420008 */  addiu       $v0, $v0, 0x8
/* 044468 800448B8 3C19E700 */  lui         $t9, 0xe700
/* 04446C 800448BC ACB90000 */  sw          $t9, 0x0($a1)
/* 044470 800448C0 00403025 */  move        $a2, $v0
/* 044474 800448C4 3C0EE300 */  lui         $t6, 0xe300
/* 044478 800448C8 ACA00004 */  sw          $zero, 0x4($a1)
/* 04447C 800448CC 35CE0A01 */  ori         $t6, $t6, 0xa01
/* 044480 800448D0 ACCE0000 */  sw          $t6, 0x0($a2)
/* 044484 800448D4 24420008 */  addiu       $v0, $v0, 0x8
/* 044488 800448D8 ACC00004 */  sw          $zero, 0x4($a2)
/* 04448C 800448DC 00403825 */  move        $a3, $v0
/* 044490 800448E0 3C0FE300 */  lui         $t7, 0xe300
/* 044494 800448E4 35EF0C00 */  ori         $t7, $t7, 0xc00
/* 044498 800448E8 24420008 */  addiu       $v0, $v0, 0x8
/* 04449C 800448EC ACEF0000 */  sw          $t7, 0x0($a3)
/* 0444A0 800448F0 00404825 */  move        $t1, $v0
/* 0444A4 800448F4 3C18E300 */  lui         $t8, 0xe300
/* 0444A8 800448F8 ACE00004 */  sw          $zero, 0x4($a3)
/* 0444AC 800448FC 37180F00 */  ori         $t8, $t8, 0xf00
/* 0444B0 80044900 24420008 */  addiu       $v0, $v0, 0x8
/* 0444B4 80044904 AD380000 */  sw          $t8, 0x0($t1)
/* 0444B8 80044908 00401825 */  move        $v1, $v0
/* 0444BC 8004490C 3C19E300 */  lui         $t9, 0xe300
/* 0444C0 80044910 AD200004 */  sw          $zero, 0x4($t1)
/* 0444C4 80044914 37391201 */  ori         $t9, $t9, 0x1201
/* 0444C8 80044918 24420008 */  addiu       $v0, $v0, 0x8
/* 0444CC 8004491C AC790000 */  sw          $t9, 0x0($v1)
/* 0444D0 80044920 240E2000 */  addiu       $t6, $zero, 0x2000
/* 0444D4 80044924 00402825 */  move        $a1, $v0
/* 0444D8 80044928 AC6E0004 */  sw          $t6, 0x4($v1)
/* 0444DC 8004492C 24420008 */  addiu       $v0, $v0, 0x8
/* 0444E0 80044930 3C0FE300 */  lui         $t7, 0xe300
/* 0444E4 80044934 35EF1402 */  ori         $t7, $t7, 0x1402
/* 0444E8 80044938 24180C00 */  addiu       $t8, $zero, 0xc00
/* 0444EC 8004493C 00403025 */  move        $a2, $v0
/* 0444F0 80044940 3C19E300 */  lui         $t9, 0xe300
/* 0444F4 80044944 ACB80004 */  sw          $t8, 0x4($a1)
/* 0444F8 80044948 ACAF0000 */  sw          $t7, 0x0($a1)
/* 0444FC 8004494C 37390D01 */  ori         $t9, $t9, 0xd01
/* 044500 80044950 ACD90000 */  sw          $t9, 0x0($a2)
/* 044504 80044954 ACC00004 */  sw          $zero, 0x4($a2)
/* 044508 80044958 11000006 */  beqz        $t0, .L80044974
/* 04450C 8004495C 24420008 */   addiu      $v0, $v0, 0x8
/* 044510 80044960 24010002 */  addiu       $at, $zero, 0x2
/* 044514 80044964 110101BC */  beq         $t0, $at, .L80045058
/* 044518 80044968 00401825 */   move       $v1, $v0
/* 04451C 8004496C 1000032F */  b           .L8004562C
/* 044520 80044970 8FB901A8 */   lw         $t9, 0x1a8($sp)
.L80044974:
/* 044524 80044974 AFA401BC */  sw          $a0, 0x1bc($sp)
/* 044528 80044978 00401825 */  move        $v1, $v0
/* 04452C 8004497C 24420008 */  addiu       $v0, $v0, 0x8
/* 044530 80044980 3C14FD10 */  lui         $s4, 0xfd10
/* 044534 80044984 00402025 */  move        $a0, $v0
/* 044538 80044988 24420008 */  addiu       $v0, $v0, 0x8
/* 04453C 8004498C AC740000 */  sw          $s4, 0x0($v1)
/* 044540 80044990 AC6A0004 */  sw          $t2, 0x4($v1)
/* 044544 80044994 3C0BE800 */  lui         $t3, 0xe800
/* 044548 80044998 00402825 */  move        $a1, $v0
/* 04454C 8004499C 3C0CF500 */  lui         $t4, 0xf500
/* 044550 800449A0 24420008 */  addiu       $v0, $v0, 0x8
/* 044554 800449A4 AC8B0000 */  sw          $t3, 0x0($a0)
/* 044558 800449A8 AC800004 */  sw          $zero, 0x4($a0)
/* 04455C 800449AC 358C0100 */  ori         $t4, $t4, 0x100
/* 044560 800449B0 3C0D0700 */  lui         $t5, 0x700
/* 044564 800449B4 00403025 */  move        $a2, $v0
/* 044568 800449B8 ACAD0004 */  sw          $t5, 0x4($a1)
/* 04456C 800449BC ACAC0000 */  sw          $t4, 0x0($a1)
/* 044570 800449C0 3C13E600 */  lui         $s3, 0xe600
/* 044574 800449C4 24420008 */  addiu       $v0, $v0, 0x8
/* 044578 800449C8 00403825 */  move        $a3, $v0
/* 04457C 800449CC ACD30000 */  sw          $s3, 0x0($a2)
/* 044580 800449D0 ACC00004 */  sw          $zero, 0x4($a2)
/* 044584 800449D4 24420008 */  addiu       $v0, $v0, 0x8
/* 044588 800449D8 3C110703 */  lui         $s1, 0x703
/* 04458C 800449DC 3C10F000 */  lui         $s0, 0xf000
/* 044590 800449E0 3631C000 */  ori         $s1, $s1, 0xc000
/* 044594 800449E4 00401825 */  move        $v1, $v0
/* 044598 800449E8 24420008 */  addiu       $v0, $v0, 0x8
/* 04459C 800449EC ACF10004 */  sw          $s1, 0x4($a3)
/* 0445A0 800449F0 ACF00000 */  sw          $s0, 0x0($a3)
/* 0445A4 800449F4 3C12E700 */  lui         $s2, 0xe700
/* 0445A8 800449F8 00402025 */  move        $a0, $v0
/* 0445AC 800449FC AC720000 */  sw          $s2, 0x0($v1)
/* 0445B0 80044A00 AC600004 */  sw          $zero, 0x4($v1)
/* 0445B4 80044A04 24420008 */  addiu       $v0, $v0, 0x8
/* 0445B8 80044A08 3C0EE300 */  lui         $t6, 0xe300
/* 0445BC 80044A0C 35CE1001 */  ori         $t6, $t6, 0x1001
/* 0445C0 80044A10 340F8000 */  ori         $t7, $zero, 0x8000
/* 0445C4 80044A14 00402825 */  move        $a1, $v0
/* 0445C8 80044A18 AC8F0004 */  sw          $t7, 0x4($a0)
/* 0445CC 80044A1C AC8E0000 */  sw          $t6, 0x0($a0)
/* 0445D0 80044A20 24420008 */  addiu       $v0, $v0, 0x8
/* 0445D4 80044A24 00403025 */  move        $a2, $v0
/* 0445D8 80044A28 ACAA0004 */  sw          $t2, 0x4($a1)
/* 0445DC 80044A2C ACB40000 */  sw          $s4, 0x0($a1)
/* 0445E0 80044A30 24420008 */  addiu       $v0, $v0, 0x8
/* 0445E4 80044A34 00404025 */  move        $t0, $v0
/* 0445E8 80044A38 ACC00004 */  sw          $zero, 0x4($a2)
/* 0445EC 80044A3C ACCB0000 */  sw          $t3, 0x0($a2)
/* 0445F0 80044A40 8FA701BC */  lw          $a3, 0x1bc($sp)
/* 0445F4 80044A44 24420008 */  addiu       $v0, $v0, 0x8
/* 0445F8 80044A48 00401825 */  move        $v1, $v0
/* 0445FC 80044A4C 24420008 */  addiu       $v0, $v0, 0x8
/* 044600 80044A50 AD0D0004 */  sw          $t5, 0x4($t0)
/* 044604 80044A54 AD0C0000 */  sw          $t4, 0x0($t0)
/* 044608 80044A58 00402025 */  move        $a0, $v0
/* 04460C 80044A5C AC600004 */  sw          $zero, 0x4($v1)
/* 044610 80044A60 AC730000 */  sw          $s3, 0x0($v1)
/* 044614 80044A64 24420008 */  addiu       $v0, $v0, 0x8
/* 044618 80044A68 00402825 */  move        $a1, $v0
/* 04461C 80044A6C AC910004 */  sw          $s1, 0x4($a0)
/* 044620 80044A70 AC900000 */  sw          $s0, 0x0($a0)
/* 044624 80044A74 ACA00004 */  sw          $zero, 0x4($a1)
/* 044628 80044A78 ACB20000 */  sw          $s2, 0x0($a1)
/* 04462C 80044A7C 8FB80170 */  lw          $t8, 0x170($sp)
/* 044630 80044A80 24191000 */  addiu       $t9, $zero, 0x1000
/* 044634 80044A84 00004825 */  move        $t1, $zero
/* 044638 80044A88 0338001B */  divu        $zero, $t9, $t8
/* 04463C 80044A8C 00003012 */  mflo        $a2
/* 044640 80044A90 00C7082B */  sltu        $at, $a2, $a3
/* 044644 80044A94 24420008 */  addiu       $v0, $v0, 0x8
/* 044648 80044A98 17000002 */  bnez        $t8, .L80044AA4
/* 04464C 80044A9C 00000000 */   nop
/* 044650 80044AA0 0007000D */  break       7
.L80044AA4:
/* 044654 80044AA4 8FAE01B4 */  lw          $t6, 0x1b4($sp)
/* 044658 80044AA8 10200003 */  beqz        $at, .L80044AB8
/* 04465C 80044AAC 00E05825 */   move       $t3, $a3
/* 044660 80044AB0 10000001 */  b           .L80044AB8
/* 044664 80044AB4 00C05825 */   move       $t3, $a2
.L80044AB8:
/* 044668 80044AB8 256BFFFF */  addiu       $t3, $t3, -0x1
/* 04466C 80044ABC 00EB6823 */  subu        $t5, $a3, $t3
/* 044670 80044AC0 25ADFFFF */  addiu       $t5, $t5, -0x1
/* 044674 80044AC4 11A000B0 */  beqz        $t5, .L80044D88
/* 044678 80044AC8 8FBE01B0 */   lw         $fp, 0x1b0($sp)
/* 04467C 80044ACC 448E4000 */  mtc1        $t6, $f8
/* 044680 80044AD0 8FBF0170 */  lw          $ra, 0x170($sp)
/* 044684 80044AD4 24060001 */  addiu       $a2, $zero, 0x1
/* 044688 80044AD8 05C10005 */  bgez        $t6, .L80044AF0
/* 04468C 80044ADC 46804320 */   cvt.s.w    $f12, $f8
/* 044690 80044AE0 3C014F80 */  lui         $at, 0x4f80
/* 044694 80044AE4 44812000 */  mtc1        $at, $f4
/* 044698 80044AE8 00000000 */  nop
/* 04469C 80044AEC 46046300 */  add.s       $f12, $f12, $f4
.L80044AF0:
/* 0446A0 80044AF0 27E3FFFF */  addiu       $v1, $ra, -0x1
/* 0446A4 80044AF4 24690001 */  addiu       $t1, $v1, 0x1
/* 0446A8 80044AF8 001F6042 */  srl         $t4, $ra, 1
/* 0446AC 80044AFC 258CFFFF */  addiu       $t4, $t4, -0x1
/* 0446B0 80044B00 0009C042 */  srl         $t8, $t1, 1
/* 0446B4 80044B04 27090007 */  addiu       $t1, $t8, 0x7
/* 0446B8 80044B08 318F0FFF */  andi        $t7, $t4, 0xfff
/* 0446BC 80044B0C 3C01FD48 */  lui         $at, 0xfd48
/* 0446C0 80044B10 8FA401C8 */  lw          $a0, 0x1c8($sp)
/* 0446C4 80044B14 01E16025 */  or          $t4, $t7, $at
/* 0446C8 80044B18 000970C2 */  srl         $t6, $t1, 3
/* 0446CC 80044B1C 8FAA01A0 */  lw          $t2, 0x1a0($sp)
/* 0446D0 80044B20 31CF01FF */  andi        $t7, $t6, 0x1ff
/* 0446D4 80044B24 000F4A40 */  sll         $t1, $t7, 9
/* 0446D8 80044B28 3C01F548 */  lui         $at, 0xf548
/* 0446DC 80044B2C 0121C025 */  or          $t8, $t1, $at
/* 0446E0 80044B30 308E0003 */  andi        $t6, $a0, 0x3
/* 0446E4 80044B34 000E2200 */  sll         $a0, $t6, 8
/* 0446E8 80044B38 3C010708 */  lui         $at, 0x708
/* 0446EC 80044B3C 3159000F */  andi        $t9, $t2, 0xf
/* 0446F0 80044B40 00195100 */  sll         $t2, $t9, 4
/* 0446F4 80044B44 00817025 */  or          $t6, $a0, $at
/* 0446F8 80044B48 0003C840 */  sll         $t9, $v1, 1
/* 0446FC 80044B4C AFB8004C */  sw          $t8, 0x4c($sp)
/* 044700 80044B50 000BA080 */  sll         $s4, $t3, 2
/* 044704 80044B54 328F0FFF */  andi        $t7, $s4, 0xfff
/* 044708 80044B58 33380FFF */  andi        $t8, $t9, 0xfff
/* 04470C 80044B5C 01CA8825 */  or          $s1, $t6, $t2
/* 044710 80044B60 00187300 */  sll         $t6, $t8, 12
/* 044714 80044B64 01E0A025 */  move        $s4, $t7
/* 044718 80044B68 3C010700 */  lui         $at, 0x700
/* 04471C 80044B6C 01C17825 */  or          $t7, $t6, $at
/* 044720 80044B70 3C01F540 */  lui         $at, 0xf540
/* 044724 80044B74 0121C025 */  or          $t8, $t1, $at
/* 044728 80044B78 3C010008 */  lui         $at, 0x8
/* 04472C 80044B7C 00817025 */  or          $t6, $a0, $at
/* 044730 80044B80 01CA9025 */  or          $s2, $t6, $t2
/* 044734 80044B84 01F4C825 */  or          $t9, $t7, $s4
/* 044738 80044B88 8FAE01B8 */  lw          $t6, 0x1b8($sp)
/* 04473C 80044B8C AFB90038 */  sw          $t9, 0x38($sp)
/* 044740 80044B90 00037880 */  sll         $t7, $v1, 2
/* 044744 80044B94 31F90FFF */  andi        $t9, $t7, 0xfff
/* 044748 80044B98 AFB80034 */  sw          $t8, 0x34($sp)
/* 04474C 80044B9C 0019C300 */  sll         $t8, $t9, 12
/* 044750 80044BA0 03CE9821 */  addu        $s3, $fp, $t6
/* 044754 80044BA4 00137880 */  sll         $t7, $s3, 2
/* 044758 80044BA8 31F90FFF */  andi        $t9, $t7, 0xfff
/* 04475C 80044BAC 03148025 */  or          $s0, $t8, $s4
/* 044760 80044BB0 0019C300 */  sll         $t8, $t9, 12
/* 044764 80044BB4 3C01E400 */  lui         $at, 0xe400
/* 044768 80044BB8 03019825 */  or          $s3, $t8, $at
/* 04476C 80044BBC 3C014480 */  lui         $at, 0x4480
/* 044770 80044BC0 44813000 */  mtc1        $at, $f6
/* 044774 80044BC4 3C013FE0 */  lui         $at, 0x3fe0
/* 044778 80044BC8 44819800 */  mtc1        $at, $f19
/* 04477C 80044BCC 46023283 */  div.s       $f10, $f6, $f2
/* 044780 80044BD0 3C014480 */  lui         $at, 0x4480
/* 044784 80044BD4 44813000 */  mtc1        $at, $f6
/* 044788 80044BD8 44809000 */  mtc1        $zero, $f18
/* 04478C 80044BDC 3C013FE0 */  lui         $at, 0x3fe0
/* 044790 80044BE0 8FAE01C0 */  lw          $t6, 0x1c0($sp)
/* 044794 80044BE4 001EA880 */  sll         $s5, $fp, 2
/* 044798 80044BE8 32AF0FFF */  andi        $t7, $s5, 0xfff
/* 04479C 80044BEC 000EB540 */  sll         $s6, $t6, 21
/* 0447A0 80044BF0 000FAB00 */  sll         $s5, $t7, 12
/* 0447A4 80044BF4 3C1EF400 */  lui         $fp, 0xf400
/* 0447A8 80044BF8 8FB401C4 */  lw          $s4, 0x1c4($sp)
/* 0447AC 80044BFC 3C1FF200 */  lui         $ra, 0xf200
/* 0447B0 80044C00 00004025 */  move        $t0, $zero
/* 0447B4 80044C04 01603825 */  move        $a3, $t3
/* 0447B8 80044C08 00002825 */  move        $a1, $zero
/* 0447BC 80044C0C 46005421 */  cvt.d.s     $f16, $f10
/* 0447C0 80044C10 46003283 */  div.s       $f10, $f6, $f0
/* 0447C4 80044C14 46328200 */  add.d       $f8, $f16, $f18
/* 0447C8 80044C18 44809000 */  mtc1        $zero, $f18
/* 0447CC 80044C1C 44819800 */  mtc1        $at, $f19
/* 0447D0 80044C20 4620410D */  trunc.w.d   $f4, $f8
/* 0447D4 80044C24 440E2000 */  mfc1        $t6, $f4
/* 0447D8 80044C28 00000000 */  nop
/* 0447DC 80044C2C 000E7C00 */  sll         $t7, $t6, 16
/* 0447E0 80044C30 46005421 */  cvt.d.s     $f16, $f10
/* 0447E4 80044C34 46328200 */  add.d       $f8, $f16, $f18
/* 0447E8 80044C38 4620410D */  trunc.w.d   $f4, $f8
/* 0447EC 80044C3C 44182000 */  mfc1        $t8, $f4
/* 0447F0 80044C40 00000000 */  nop
/* 0447F4 80044C44 330EFFFF */  andi        $t6, $t8, 0xffff
/* 0447F8 80044C48 01EEB825 */  or          $s7, $t7, $t6
.L80044C4C:
/* 0447FC 80044C4C 00401825 */  move        $v1, $v0
/* 044800 80044C50 AC6C0000 */  sw          $t4, 0x0($v1)
/* 044804 80044C54 8FB90170 */  lw          $t9, 0x170($sp)
/* 044808 80044C58 00B4C021 */  addu        $t8, $a1, $s4
/* 04480C 80044C5C 44873000 */  mtc1        $a3, $f6
/* 044810 80044C60 03380019 */  multu       $t9, $t8
/* 044814 80044C64 8FB9017C */  lw          $t9, 0x17c($sp)
/* 044818 80044C68 468032A0 */  cvt.s.w     $f10, $f6
/* 04481C 80044C6C 44882000 */  mtc1        $t0, $f4
/* 044820 80044C70 24420008 */  addiu       $v0, $v0, 0x8
/* 044824 80044C74 00404825 */  move        $t1, $v0
/* 044828 80044C78 24420008 */  addiu       $v0, $v0, 0x8
/* 04482C 80044C7C 468021A0 */  cvt.s.w     $f6, $f4
/* 044830 80044C80 46005402 */  mul.s       $f16, $f10, $f0
/* 044834 80044C84 010B4021 */  addu        $t0, $t0, $t3
/* 044838 80044C88 00007812 */  mflo        $t7
/* 04483C 80044C8C 000F7042 */  srl         $t6, $t7, 1
/* 044840 80044C90 032EC021 */  addu        $t8, $t9, $t6
/* 044844 80044C94 AC780004 */  sw          $t8, 0x4($v1)
/* 044848 80044C98 8FAF004C */  lw          $t7, 0x4c($sp)
/* 04484C 80044C9C 00401825 */  move        $v1, $v0
/* 044850 80044CA0 AD310004 */  sw          $s1, 0x4($t1)
/* 044854 80044CA4 AD2F0000 */  sw          $t7, 0x0($t1)
/* 044858 80044CA8 46003282 */  mul.s       $f10, $f6, $f0
/* 04485C 80044CAC 24420008 */  addiu       $v0, $v0, 0x8
/* 044860 80044CB0 3C19E600 */  lui         $t9, 0xe600
/* 044864 80044CB4 AC790000 */  sw          $t9, 0x0($v1)
/* 044868 80044CB8 00402025 */  move        $a0, $v0
/* 04486C 80044CBC AC600004 */  sw          $zero, 0x4($v1)
/* 044870 80044CC0 46106480 */  add.s       $f18, $f12, $f16
/* 044874 80044CC4 AC9E0000 */  sw          $fp, 0x0($a0)
/* 044878 80044CC8 8FAE0038 */  lw          $t6, 0x38($sp)
/* 04487C 80044CCC 24420008 */  addiu       $v0, $v0, 0x8
/* 044880 80044CD0 4600920D */  trunc.w.s   $f8, $f18
/* 044884 80044CD4 AC8E0004 */  sw          $t6, 0x4($a0)
/* 044888 80044CD8 00402825 */  move        $a1, $v0
/* 04488C 80044CDC 460A6400 */  add.s       $f16, $f12, $f10
/* 044890 80044CE0 3C18E700 */  lui         $t8, 0xe700
/* 044894 80044CE4 ACB80000 */  sw          $t8, 0x0($a1)
/* 044898 80044CE8 ACA00004 */  sw          $zero, 0x4($a1)
/* 04489C 80044CEC 8FAF0034 */  lw          $t7, 0x34($sp)
/* 0448A0 80044CF0 440E4000 */  mfc1        $t6, $f8
/* 0448A4 80044CF4 24420008 */  addiu       $v0, $v0, 0x8
/* 0448A8 80044CF8 4600848D */  trunc.w.s   $f18, $f16
/* 0448AC 80044CFC 00405025 */  move        $t2, $v0
/* 0448B0 80044D00 24420008 */  addiu       $v0, $v0, 0x8
/* 0448B4 80044D04 AD4F0000 */  sw          $t7, 0x0($t2)
/* 0448B8 80044D08 000EC080 */  sll         $t8, $t6, 2
/* 0448BC 80044D0C 00401825 */  move        $v1, $v0
/* 0448C0 80044D10 330F0FFF */  andi        $t7, $t8, 0xfff
/* 0448C4 80044D14 44189000 */  mfc1        $t8, $f18
/* 0448C8 80044D18 AD520004 */  sw          $s2, 0x4($t2)
/* 0448CC 80044D1C 24420008 */  addiu       $v0, $v0, 0x8
/* 0448D0 80044D20 026FC825 */  or          $t9, $s3, $t7
/* 0448D4 80044D24 AC700004 */  sw          $s0, 0x4($v1)
/* 0448D8 80044D28 AC7F0000 */  sw          $ra, 0x0($v1)
/* 0448DC 80044D2C 00402025 */  move        $a0, $v0
/* 0448E0 80044D30 AC990000 */  sw          $t9, 0x0($a0)
/* 0448E4 80044D34 00187880 */  sll         $t7, $t8, 2
/* 0448E8 80044D38 31F90FFF */  andi        $t9, $t7, 0xfff
/* 0448EC 80044D3C 02B97025 */  or          $t6, $s5, $t9
/* 0448F0 80044D40 24420008 */  addiu       $v0, $v0, 0x8
/* 0448F4 80044D44 00401825 */  move        $v1, $v0
/* 0448F8 80044D48 AC8E0004 */  sw          $t6, 0x4($a0)
/* 0448FC 80044D4C 24420008 */  addiu       $v0, $v0, 0x8
/* 044900 80044D50 00402025 */  move        $a0, $v0
/* 044904 80044D54 3C18E100 */  lui         $t8, 0xe100
/* 044908 80044D58 00C04825 */  move        $t1, $a2
/* 04490C 80044D5C 010D082B */  sltu        $at, $t0, $t5
/* 044910 80044D60 AC780000 */  sw          $t8, 0x0($v1)
/* 044914 80044D64 AC760004 */  sw          $s6, 0x4($v1)
/* 044918 80044D68 3C0FF100 */  lui         $t7, 0xf100
/* 04491C 80044D6C 24C60001 */  addiu       $a2, $a2, 0x1
/* 044920 80044D70 01002825 */  move        $a1, $t0
/* 044924 80044D74 00EB3821 */  addu        $a3, $a3, $t3
/* 044928 80044D78 AC8F0000 */  sw          $t7, 0x0($a0)
/* 04492C 80044D7C AC970004 */  sw          $s7, 0x4($a0)
/* 044930 80044D80 1420FFB2 */  bnez        $at, .L80044C4C
/* 044934 80044D84 24420008 */   addiu      $v0, $v0, 0x8
.L80044D88:
/* 044938 80044D88 012B0019 */  multu       $t1, $t3
/* 04493C 80044D8C 8FA70170 */  lw          $a3, 0x170($sp)
/* 044940 80044D90 8FB401C4 */  lw          $s4, 0x1c4($sp)
/* 044944 80044D94 3C01FD48 */  lui         $at, 0xfd48
/* 044948 80044D98 0007C842 */  srl         $t9, $a3, 1
/* 04494C 80044D9C 272EFFFF */  addiu       $t6, $t9, -0x1
/* 044950 80044DA0 31D80FFF */  andi        $t8, $t6, 0xfff
/* 044954 80044DA4 03017825 */  or          $t7, $t8, $at
/* 044958 80044DA8 00403025 */  move        $a2, $v0
/* 04495C 80044DAC ACCF0000 */  sw          $t7, 0x0($a2)
/* 044960 80044DB0 00004012 */  mflo        $t0
/* 044964 80044DB4 01147021 */  addu        $t6, $t0, $s4
/* 044968 80044DB8 8FB9017C */  lw          $t9, 0x17c($sp)
/* 04496C 80044DBC 00EE0019 */  multu       $a3, $t6
/* 044970 80044DC0 24420008 */  addiu       $v0, $v0, 0x8
/* 044974 80044DC4 3C01F548 */  lui         $at, 0xf548
/* 044978 80044DC8 00406025 */  move        $t4, $v0
/* 04497C 80044DCC 24E3FFFF */  addiu       $v1, $a3, -0x1
/* 044980 80044DD0 3C1EF400 */  lui         $fp, 0xf400
/* 044984 80044DD4 3C1FF200 */  lui         $ra, 0xf200
/* 044988 80044DD8 00038040 */  sll         $s0, $v1, 1
/* 04498C 80044DDC 24420008 */  addiu       $v0, $v0, 0x8
/* 044990 80044DE0 01002825 */  move        $a1, $t0
/* 044994 80044DE4 0000C012 */  mflo        $t8
/* 044998 80044DE8 00187842 */  srl         $t7, $t8, 1
/* 04499C 80044DEC 032F7021 */  addu        $t6, $t9, $t7
/* 0449A0 80044DF0 0007C042 */  srl         $t8, $a3, 1
/* 0449A4 80044DF4 27190007 */  addiu       $t9, $t8, 0x7
/* 0449A8 80044DF8 001978C2 */  srl         $t7, $t9, 3
/* 0449AC 80044DFC ACCE0004 */  sw          $t6, 0x4($a2)
/* 0449B0 80044E00 31EE01FF */  andi        $t6, $t7, 0x1ff
/* 0449B4 80044E04 000EC240 */  sll         $t8, $t6, 9
/* 0449B8 80044E08 0301C825 */  or          $t9, $t8, $at
/* 0449BC 80044E0C AD990000 */  sw          $t9, 0x0($t4)
/* 0449C0 80044E10 8FAF01B4 */  lw          $t7, 0x1b4($sp)
/* 0449C4 80044E14 8FA401C8 */  lw          $a0, 0x1c8($sp)
/* 0449C8 80044E18 8FAA01A0 */  lw          $t2, 0x1a0($sp)
/* 0449CC 80044E1C 448F4000 */  mtc1        $t7, $f8
/* 0449D0 80044E20 308E0003 */  andi        $t6, $a0, 0x3
/* 0449D4 80044E24 05E10005 */  bgez        $t7, .L80044E3C
/* 0449D8 80044E28 46804320 */   cvt.s.w    $f12, $f8
/* 0449DC 80044E2C 3C014F80 */  lui         $at, 0x4f80
/* 0449E0 80044E30 44812000 */  mtc1        $at, $f4
/* 0449E4 80044E34 00000000 */  nop
/* 0449E8 80044E38 46046300 */  add.s       $f12, $f12, $f4
.L80044E3C:
/* 0449EC 80044E3C 000E2200 */  sll         $a0, $t6, 8
/* 0449F0 80044E40 3159000F */  andi        $t9, $t2, 0xf
/* 0449F4 80044E44 3C010708 */  lui         $at, 0x708
/* 0449F8 80044E48 00817025 */  or          $t6, $a0, $at
/* 0449FC 80044E4C 00195100 */  sll         $t2, $t9, 4
/* 044A00 80044E50 32180FFF */  andi        $t8, $s0, 0xfff
/* 044A04 80044E54 0018CB00 */  sll         $t9, $t8, 12
/* 044A08 80044E58 01CA8825 */  or          $s1, $t6, $t2
/* 044A0C 80044E5C 246E0001 */  addiu       $t6, $v1, 0x1
/* 044A10 80044E60 3C010700 */  lui         $at, 0x700
/* 044A14 80044E64 03218025 */  or          $s0, $t9, $at
/* 044A18 80044E68 000EC042 */  srl         $t8, $t6, 1
/* 044A1C 80044E6C 27190007 */  addiu       $t9, $t8, 0x7
/* 044A20 80044E70 001978C2 */  srl         $t7, $t9, 3
/* 044A24 80044E74 31EE01FF */  andi        $t6, $t7, 0x1ff
/* 044A28 80044E78 000EC240 */  sll         $t8, $t6, 9
/* 044A2C 80044E7C 3C01F540 */  lui         $at, 0xf540
/* 044A30 80044E80 0301C825 */  or          $t9, $t8, $at
/* 044A34 80044E84 3C010008 */  lui         $at, 0x8
/* 044A38 80044E88 00817825 */  or          $t7, $a0, $at
/* 044A3C 80044E8C 01EA9025 */  or          $s2, $t7, $t2
/* 044A40 80044E90 AFB90034 */  sw          $t9, 0x34($sp)
/* 044A44 80044E94 8FB901B0 */  lw          $t9, 0x1b0($sp)
/* 044A48 80044E98 8FAF01B8 */  lw          $t7, 0x1b8($sp)
/* 044A4C 80044E9C 00036880 */  sll         $t5, $v1, 2
/* 044A50 80044EA0 31AE0FFF */  andi        $t6, $t5, 0xfff
/* 044A54 80044EA4 000E6B00 */  sll         $t5, $t6, 12
/* 044A58 80044EA8 032F9821 */  addu        $s3, $t9, $t7
/* 044A5C 80044EAC 00137080 */  sll         $t6, $s3, 2
/* 044A60 80044EB0 31D80FFF */  andi        $t8, $t6, 0xfff
/* 044A64 80044EB4 00187B00 */  sll         $t7, $t8, 12
/* 044A68 80044EB8 3C01E400 */  lui         $at, 0xe400
/* 044A6C 80044EBC 01E19825 */  or          $s3, $t7, $at
/* 044A70 80044EC0 3C014480 */  lui         $at, 0x4480
/* 044A74 80044EC4 44813000 */  mtc1        $at, $f6
/* 044A78 80044EC8 3C013FE0 */  lui         $at, 0x3fe0
/* 044A7C 80044ECC 44819800 */  mtc1        $at, $f19
/* 044A80 80044ED0 46023283 */  div.s       $f10, $f6, $f2
/* 044A84 80044ED4 3C014480 */  lui         $at, 0x4480
/* 044A88 80044ED8 44813000 */  mtc1        $at, $f6
/* 044A8C 80044EDC 44809000 */  mtc1        $zero, $f18
/* 044A90 80044EE0 3C013FE0 */  lui         $at, 0x3fe0
/* 044A94 80044EE4 0019A880 */  sll         $s5, $t9, 2
/* 044A98 80044EE8 8FB901C0 */  lw          $t9, 0x1c0($sp)
/* 044A9C 80044EEC 00401825 */  move        $v1, $v0
/* 044AA0 80044EF0 AD910004 */  sw          $s1, 0x4($t4)
/* 044AA4 80044EF4 0019B540 */  sll         $s6, $t9, 21
/* 044AA8 80044EF8 32B80FFF */  andi        $t8, $s5, 0xfff
/* 044AAC 80044EFC 0018AB00 */  sll         $s5, $t8, 12
/* 044AB0 80044F00 24420008 */  addiu       $v0, $v0, 0x8
/* 044AB4 80044F04 3C0FE600 */  lui         $t7, 0xe600
/* 044AB8 80044F08 AC6F0000 */  sw          $t7, 0x0($v1)
/* 044ABC 80044F0C 00402025 */  move        $a0, $v0
/* 044AC0 80044F10 AC600004 */  sw          $zero, 0x4($v1)
/* 044AC4 80044F14 AC9E0000 */  sw          $fp, 0x0($a0)
/* 044AC8 80044F18 24420008 */  addiu       $v0, $v0, 0x8
/* 044ACC 80044F1C 00403825 */  move        $a3, $v0
/* 044AD0 80044F20 24420008 */  addiu       $v0, $v0, 0x8
/* 044AD4 80044F24 00404825 */  move        $t1, $v0
/* 044AD8 80044F28 24420008 */  addiu       $v0, $v0, 0x8
/* 044ADC 80044F2C 46005421 */  cvt.d.s     $f16, $f10
/* 044AE0 80044F30 46003283 */  div.s       $f10, $f6, $f0
/* 044AE4 80044F34 00401825 */  move        $v1, $v0
/* 044AE8 80044F38 24420008 */  addiu       $v0, $v0, 0x8
/* 044AEC 80044F3C 46328200 */  add.d       $f8, $f16, $f18
/* 044AF0 80044F40 44809000 */  mtc1        $zero, $f18
/* 044AF4 80044F44 44819800 */  mtc1        $at, $f19
/* 044AF8 80044F48 3C014F80 */  lui         $at, 0x4f80
/* 044AFC 80044F4C 4620410D */  trunc.w.d   $f4, $f8
/* 044B00 80044F50 44192000 */  mfc1        $t9, $f4
/* 044B04 80044F54 00000000 */  nop
/* 044B08 80044F58 0019C400 */  sll         $t8, $t9, 16
/* 044B0C 80044F5C 46005421 */  cvt.d.s     $f16, $f10
/* 044B10 80044F60 46328200 */  add.d       $f8, $f16, $f18
/* 044B14 80044F64 4620410D */  trunc.w.d   $f4, $f8
/* 044B18 80044F68 440E2000 */  mfc1        $t6, $f4
/* 044B1C 80044F6C 00000000 */  nop
/* 044B20 80044F70 31D9FFFF */  andi        $t9, $t6, 0xffff
/* 044B24 80044F74 8FAE01BC */  lw          $t6, 0x1bc($sp)
/* 044B28 80044F78 0319B825 */  or          $s7, $t8, $t9
/* 044B2C 80044F7C 01C53023 */  subu        $a2, $t6, $a1
/* 044B30 80044F80 24C6FFFF */  addiu       $a2, $a2, -0x1
/* 044B34 80044F84 0006C080 */  sll         $t8, $a2, 2
/* 044B38 80044F88 33190FFF */  andi        $t9, $t8, 0xfff
/* 044B3C 80044F8C 02197825 */  or          $t7, $s0, $t9
/* 044B40 80044F90 AC8F0004 */  sw          $t7, 0x4($a0)
/* 044B44 80044F94 3C0EE700 */  lui         $t6, 0xe700
/* 044B48 80044F98 ACEE0000 */  sw          $t6, 0x0($a3)
/* 044B4C 80044F9C ACE00004 */  sw          $zero, 0x4($a3)
/* 044B50 80044FA0 8FB80034 */  lw          $t8, 0x34($sp)
/* 044B54 80044FA4 AD320004 */  sw          $s2, 0x4($t1)
/* 044B58 80044FA8 01B9C825 */  or          $t9, $t5, $t9
/* 044B5C 80044FAC AD380000 */  sw          $t8, 0x0($t1)
/* 044B60 80044FB0 AC790004 */  sw          $t9, 0x4($v1)
/* 044B64 80044FB4 AC7F0000 */  sw          $ra, 0x0($v1)
/* 044B68 80044FB8 8FAF01BC */  lw          $t7, 0x1bc($sp)
/* 044B6C 80044FBC 00402025 */  move        $a0, $v0
/* 044B70 80044FC0 24420008 */  addiu       $v0, $v0, 0x8
/* 044B74 80044FC4 448F3000 */  mtc1        $t7, $f6
/* 044B78 80044FC8 00000000 */  nop
/* 044B7C 80044FCC 468032A0 */  cvt.s.w     $f10, $f6
/* 044B80 80044FD0 44883000 */  mtc1        $t0, $f6
/* 044B84 80044FD4 05E30005 */  bgezl       $t7, .L80044FEC
/* 044B88 80044FD8 46803420 */   cvt.s.w    $f16, $f6
/* 044B8C 80044FDC 44818000 */  mtc1        $at, $f16
/* 044B90 80044FE0 00000000 */  nop
/* 044B94 80044FE4 46105280 */  add.s       $f10, $f10, $f16
/* 044B98 80044FE8 46803420 */  cvt.s.w     $f16, $f6
.L80044FEC:
/* 044B9C 80044FEC 46005482 */  mul.s       $f18, $f10, $f0
/* 044BA0 80044FF0 00401825 */  move        $v1, $v0
/* 044BA4 80044FF4 24420008 */  addiu       $v0, $v0, 0x8
/* 044BA8 80044FF8 00402825 */  move        $a1, $v0
/* 044BAC 80044FFC 24420008 */  addiu       $v0, $v0, 0x8
/* 044BB0 80045000 46008282 */  mul.s       $f10, $f16, $f0
/* 044BB4 80045004 46126200 */  add.s       $f8, $f12, $f18
/* 044BB8 80045008 4600410D */  trunc.w.s   $f4, $f8
/* 044BBC 8004500C 460A6480 */  add.s       $f18, $f12, $f10
/* 044BC0 80045010 44182000 */  mfc1        $t8, $f4
/* 044BC4 80045014 4600920D */  trunc.w.s   $f8, $f18
/* 044BC8 80045018 0018C880 */  sll         $t9, $t8, 2
/* 044BCC 8004501C 332F0FFF */  andi        $t7, $t9, 0xfff
/* 044BD0 80045020 026F7025 */  or          $t6, $s3, $t7
/* 044BD4 80045024 44194000 */  mfc1        $t9, $f8
/* 044BD8 80045028 AC8E0000 */  sw          $t6, 0x0($a0)
/* 044BDC 8004502C 00197880 */  sll         $t7, $t9, 2
/* 044BE0 80045030 31EE0FFF */  andi        $t6, $t7, 0xfff
/* 044BE4 80045034 02AEC025 */  or          $t8, $s5, $t6
/* 044BE8 80045038 AC980004 */  sw          $t8, 0x4($a0)
/* 044BEC 8004503C 3C19E100 */  lui         $t9, 0xe100
/* 044BF0 80045040 AC790000 */  sw          $t9, 0x0($v1)
/* 044BF4 80045044 AC760004 */  sw          $s6, 0x4($v1)
/* 044BF8 80045048 3C0FF100 */  lui         $t7, 0xf100
/* 044BFC 8004504C ACAF0000 */  sw          $t7, 0x0($a1)
/* 044C00 80045050 10000175 */  b           .L80045628
/* 044C04 80045054 ACB70004 */   sw         $s7, 0x4($a1)
.L80045058:
/* 044C08 80045058 3C0EE300 */  lui         $t6, 0xe300
/* 044C0C 8004505C 35CE1001 */  ori         $t6, $t6, 0x1001
/* 044C10 80045060 AC6E0000 */  sw          $t6, 0x0($v1)
/* 044C14 80045064 AC600004 */  sw          $zero, 0x4($v1)
/* 044C18 80045068 8FB80170 */  lw          $t8, 0x170($sp)
/* 044C1C 8004506C 24190800 */  addiu       $t9, $zero, 0x800
/* 044C20 80045070 24420008 */  addiu       $v0, $v0, 0x8
/* 044C24 80045074 0338001B */  divu        $zero, $t9, $t8
/* 044C28 80045078 00002812 */  mflo        $a1
/* 044C2C 8004507C 00A4082B */  sltu        $at, $a1, $a0
/* 044C30 80045080 17000002 */  bnez        $t8, .L8004508C
/* 044C34 80045084 00000000 */   nop
/* 044C38 80045088 0007000D */  break       7
.L8004508C:
/* 044C3C 8004508C 00004825 */  move        $t1, $zero
/* 044C40 80045090 10200004 */  beqz        $at, .L800450A4
/* 044C44 80045094 00805825 */   move       $t3, $a0
/* 044C48 80045098 00A05825 */  move        $t3, $a1
/* 044C4C 8004509C 10000002 */  b           .L800450A8
/* 044C50 800450A0 AFA401BC */   sw         $a0, 0x1bc($sp)
.L800450A4:
/* 044C54 800450A4 AFA401BC */  sw          $a0, 0x1bc($sp)
.L800450A8:
/* 044C58 800450A8 8FAF01BC */  lw          $t7, 0x1bc($sp)
/* 044C5C 800450AC 256BFFFF */  addiu       $t3, $t3, -0x1
/* 044C60 800450B0 8FAE01B4 */  lw          $t6, 0x1b4($sp)
/* 044C64 800450B4 01EB6823 */  subu        $t5, $t7, $t3
/* 044C68 800450B8 25ADFFFF */  addiu       $t5, $t5, -0x1
/* 044C6C 800450BC 11A000A9 */  beqz        $t5, .L80045364
/* 044C70 800450C0 8FA401C8 */   lw         $a0, 0x1c8($sp)
/* 044C74 800450C4 448E2000 */  mtc1        $t6, $f4
/* 044C78 800450C8 8FBE01B0 */  lw          $fp, 0x1b0($sp)
/* 044C7C 800450CC 8FBF0170 */  lw          $ra, 0x170($sp)
/* 044C80 800450D0 24060001 */  addiu       $a2, $zero, 0x1
/* 044C84 800450D4 05C10005 */  bgez        $t6, .L800450EC
/* 044C88 800450D8 46802320 */   cvt.s.w    $f12, $f4
/* 044C8C 800450DC 3C014F80 */  lui         $at, 0x4f80
/* 044C90 800450E0 44813000 */  mtc1        $at, $f6
/* 044C94 800450E4 00000000 */  nop
/* 044C98 800450E8 46066300 */  add.s       $f12, $f12, $f6
.L800450EC:
/* 044C9C 800450EC 8FAA01A0 */  lw          $t2, 0x1a0($sp)
/* 044CA0 800450F0 30990003 */  andi        $t9, $a0, 0x3
/* 044CA4 800450F4 00192200 */  sll         $a0, $t9, 8
/* 044CA8 800450F8 3C010708 */  lui         $at, 0x708
/* 044CAC 800450FC 314F000F */  andi        $t7, $t2, 0xf
/* 044CB0 80045100 000F7100 */  sll         $t6, $t7, 4
/* 044CB4 80045104 0081C825 */  or          $t9, $a0, $at
/* 044CB8 80045108 3C010008 */  lui         $at, 0x8
/* 044CBC 8004510C 00817825 */  or          $t7, $a0, $at
/* 044CC0 80045110 27E3FFFF */  addiu       $v1, $ra, -0x1
/* 044CC4 80045114 00034880 */  sll         $t1, $v1, 2
/* 044CC8 80045118 01EE9025 */  or          $s2, $t7, $t6
/* 044CCC 8004511C 032E8825 */  or          $s1, $t9, $t6
/* 044CD0 80045120 000BA080 */  sll         $s4, $t3, 2
/* 044CD4 80045124 32980FFF */  andi        $t8, $s4, 0xfff
/* 044CD8 80045128 312E0FFF */  andi        $t6, $t1, 0xfff
/* 044CDC 8004512C 000E4B00 */  sll         $t1, $t6, 12
/* 044CE0 80045130 01388025 */  or          $s0, $t1, $t8
/* 044CE4 80045134 0300A025 */  move        $s4, $t8
/* 044CE8 80045138 8FB801B8 */  lw          $t8, 0x1b8($sp)
/* 044CEC 8004513C 3C01E400 */  lui         $at, 0xe400
/* 044CF0 80045140 001EA880 */  sll         $s5, $fp, 2
/* 044CF4 80045144 03D89821 */  addu        $s3, $fp, $t8
/* 044CF8 80045148 00137880 */  sll         $t7, $s3, 2
/* 044CFC 8004514C 31EE0FFF */  andi        $t6, $t7, 0xfff
/* 044D00 80045150 8FB801C0 */  lw          $t8, 0x1c0($sp)
/* 044D04 80045154 000ECB00 */  sll         $t9, $t6, 12
/* 044D08 80045158 03219825 */  or          $s3, $t9, $at
/* 044D0C 8004515C 27EEFFFF */  addiu       $t6, $ra, -0x1
/* 044D10 80045160 32AF0FFF */  andi        $t7, $s5, 0xfff
/* 044D14 80045164 00036080 */  sll         $t4, $v1, 2
/* 044D18 80045168 258C0004 */  addiu       $t4, $t4, 0x4
/* 044D1C 8004516C 000FAB00 */  sll         $s5, $t7, 12
/* 044D20 80045170 31D90FFF */  andi        $t9, $t6, 0xfff
/* 044D24 80045174 3C01FD10 */  lui         $at, 0xfd10
/* 044D28 80045178 0018B540 */  sll         $s6, $t8, 21
/* 044D2C 8004517C 0321C025 */  or          $t8, $t9, $at
/* 044D30 80045180 000C7842 */  srl         $t7, $t4, 1
/* 044D34 80045184 25EC0007 */  addiu       $t4, $t7, 0x7
/* 044D38 80045188 000C70C2 */  srl         $t6, $t4, 3
/* 044D3C 8004518C 31D901FF */  andi        $t9, $t6, 0x1ff
/* 044D40 80045190 AFB80050 */  sw          $t8, 0x50($sp)
/* 044D44 80045194 0019C240 */  sll         $t8, $t9, 9
/* 044D48 80045198 3C01F510 */  lui         $at, 0xf510
/* 044D4C 8004519C 03016025 */  or          $t4, $t8, $at
/* 044D50 800451A0 3C010700 */  lui         $at, 0x700
/* 044D54 800451A4 01217025 */  or          $t6, $t1, $at
/* 044D58 800451A8 3C014480 */  lui         $at, 0x4480
/* 044D5C 800451AC 44818000 */  mtc1        $at, $f16
/* 044D60 800451B0 3C013FE0 */  lui         $at, 0x3fe0
/* 044D64 800451B4 44814800 */  mtc1        $at, $f9
/* 044D68 800451B8 46028283 */  div.s       $f10, $f16, $f2
/* 044D6C 800451BC 3C014480 */  lui         $at, 0x4480
/* 044D70 800451C0 44818000 */  mtc1        $at, $f16
/* 044D74 800451C4 44804000 */  mtc1        $zero, $f8
/* 044D78 800451C8 3C013FE0 */  lui         $at, 0x3fe0
/* 044D7C 800451CC 01D4C825 */  or          $t9, $t6, $s4
/* 044D80 800451D0 AFB90038 */  sw          $t9, 0x38($sp)
/* 044D84 800451D4 8FB401C4 */  lw          $s4, 0x1c4($sp)
/* 044D88 800451D8 3C1FF200 */  lui         $ra, 0xf200
/* 044D8C 800451DC 3C1EF400 */  lui         $fp, 0xf400
/* 044D90 800451E0 00004025 */  move        $t0, $zero
/* 044D94 800451E4 01603825 */  move        $a3, $t3
/* 044D98 800451E8 00002825 */  move        $a1, $zero
/* 044D9C 800451EC 460054A1 */  cvt.d.s     $f18, $f10
/* 044DA0 800451F0 46008283 */  div.s       $f10, $f16, $f0
/* 044DA4 800451F4 46289100 */  add.d       $f4, $f18, $f8
/* 044DA8 800451F8 44804000 */  mtc1        $zero, $f8
/* 044DAC 800451FC 44814800 */  mtc1        $at, $f9
/* 044DB0 80045200 4620218D */  trunc.w.d   $f6, $f4
/* 044DB4 80045204 440E3000 */  mfc1        $t6, $f6
/* 044DB8 80045208 00000000 */  nop
/* 044DBC 8004520C 000ECC00 */  sll         $t9, $t6, 16
/* 044DC0 80045210 460054A1 */  cvt.d.s     $f18, $f10
/* 044DC4 80045214 46289100 */  add.d       $f4, $f18, $f8
/* 044DC8 80045218 4620218D */  trunc.w.d   $f6, $f4
/* 044DCC 8004521C 440F3000 */  mfc1        $t7, $f6
/* 044DD0 80045220 00000000 */  nop
/* 044DD4 80045224 31EEFFFF */  andi        $t6, $t7, 0xffff
/* 044DD8 80045228 032EB825 */  or          $s7, $t9, $t6
.L8004522C:
/* 044DDC 8004522C 8FB80050 */  lw          $t8, 0x50($sp)
/* 044DE0 80045230 00401825 */  move        $v1, $v0
/* 044DE4 80045234 00B4C821 */  addu        $t9, $a1, $s4
/* 044DE8 80045238 AC780000 */  sw          $t8, 0x0($v1)
/* 044DEC 8004523C 8FAF0170 */  lw          $t7, 0x170($sp)
/* 044DF0 80045240 44878000 */  mtc1        $a3, $f16
/* 044DF4 80045244 44883000 */  mtc1        $t0, $f6
/* 044DF8 80045248 01F90019 */  multu       $t7, $t9
/* 044DFC 8004524C 468082A0 */  cvt.s.w     $f10, $f16
/* 044E00 80045250 8FAF017C */  lw          $t7, 0x17c($sp)
/* 044E04 80045254 24420008 */  addiu       $v0, $v0, 0x8
/* 044E08 80045258 00404825 */  move        $t1, $v0
/* 044E0C 8004525C 24420008 */  addiu       $v0, $v0, 0x8
/* 044E10 80045260 46803420 */  cvt.s.w     $f16, $f6
/* 044E14 80045264 46005482 */  mul.s       $f18, $f10, $f0
/* 044E18 80045268 010B4021 */  addu        $t0, $t0, $t3
/* 044E1C 8004526C 010D082B */  sltu        $at, $t0, $t5
/* 044E20 80045270 00007012 */  mflo        $t6
/* 044E24 80045274 000EC040 */  sll         $t8, $t6, 1
/* 044E28 80045278 01F8C821 */  addu        $t9, $t7, $t8
/* 044E2C 8004527C AC790004 */  sw          $t9, 0x4($v1)
/* 044E30 80045280 46008282 */  mul.s       $f10, $f16, $f0
/* 044E34 80045284 00401825 */  move        $v1, $v0
/* 044E38 80045288 46126200 */  add.s       $f8, $f12, $f18
/* 044E3C 8004528C AD310004 */  sw          $s1, 0x4($t1)
/* 044E40 80045290 AD2C0000 */  sw          $t4, 0x0($t1)
/* 044E44 80045294 24420008 */  addiu       $v0, $v0, 0x8
/* 044E48 80045298 3C0EE600 */  lui         $t6, 0xe600
/* 044E4C 8004529C AC6E0000 */  sw          $t6, 0x0($v1)
/* 044E50 800452A0 00402025 */  move        $a0, $v0
/* 044E54 800452A4 AC600004 */  sw          $zero, 0x4($v1)
/* 044E58 800452A8 AC9E0000 */  sw          $fp, 0x0($a0)
/* 044E5C 800452AC 4600410D */  trunc.w.s   $f4, $f8
/* 044E60 800452B0 8FAF0038 */  lw          $t7, 0x38($sp)
/* 044E64 800452B4 24420008 */  addiu       $v0, $v0, 0x8
/* 044E68 800452B8 460A6480 */  add.s       $f18, $f12, $f10
/* 044E6C 800452BC AC8F0004 */  sw          $t7, 0x4($a0)
/* 044E70 800452C0 440E2000 */  mfc1        $t6, $f4
/* 044E74 800452C4 00402825 */  move        $a1, $v0
/* 044E78 800452C8 4600920D */  trunc.w.s   $f8, $f18
/* 044E7C 800452CC 24420008 */  addiu       $v0, $v0, 0x8
/* 044E80 800452D0 3C18E700 */  lui         $t8, 0xe700
/* 044E84 800452D4 ACB80000 */  sw          $t8, 0x0($a1)
/* 044E88 800452D8 00405025 */  move        $t2, $v0
/* 044E8C 800452DC 24420008 */  addiu       $v0, $v0, 0x8
/* 044E90 800452E0 ACA00004 */  sw          $zero, 0x4($a1)
/* 044E94 800452E4 000E7880 */  sll         $t7, $t6, 2
/* 044E98 800452E8 00401825 */  move        $v1, $v0
/* 044E9C 800452EC 31F80FFF */  andi        $t8, $t7, 0xfff
/* 044EA0 800452F0 440F4000 */  mfc1        $t7, $f8
/* 044EA4 800452F4 AD520004 */  sw          $s2, 0x4($t2)
/* 044EA8 800452F8 AD4C0000 */  sw          $t4, 0x0($t2)
/* 044EAC 800452FC 24420008 */  addiu       $v0, $v0, 0x8
/* 044EB0 80045300 0278C825 */  or          $t9, $s3, $t8
/* 044EB4 80045304 AC700004 */  sw          $s0, 0x4($v1)
/* 044EB8 80045308 AC7F0000 */  sw          $ra, 0x0($v1)
/* 044EBC 8004530C 00402025 */  move        $a0, $v0
/* 044EC0 80045310 AC990000 */  sw          $t9, 0x0($a0)
/* 044EC4 80045314 000FC080 */  sll         $t8, $t7, 2
/* 044EC8 80045318 33190FFF */  andi        $t9, $t8, 0xfff
/* 044ECC 8004531C 02B97025 */  or          $t6, $s5, $t9
/* 044ED0 80045320 24420008 */  addiu       $v0, $v0, 0x8
/* 044ED4 80045324 00401825 */  move        $v1, $v0
/* 044ED8 80045328 AC8E0004 */  sw          $t6, 0x4($a0)
/* 044EDC 8004532C 24420008 */  addiu       $v0, $v0, 0x8
/* 044EE0 80045330 00402025 */  move        $a0, $v0
/* 044EE4 80045334 3C0FE100 */  lui         $t7, 0xe100
/* 044EE8 80045338 00C04825 */  move        $t1, $a2
/* 044EEC 8004533C AC6F0000 */  sw          $t7, 0x0($v1)
/* 044EF0 80045340 AC760004 */  sw          $s6, 0x4($v1)
/* 044EF4 80045344 3C18F100 */  lui         $t8, 0xf100
/* 044EF8 80045348 24C60001 */  addiu       $a2, $a2, 0x1
/* 044EFC 8004534C 01002825 */  move        $a1, $t0
/* 044F00 80045350 00EB3821 */  addu        $a3, $a3, $t3
/* 044F04 80045354 AC980000 */  sw          $t8, 0x0($a0)
/* 044F08 80045358 AC970004 */  sw          $s7, 0x4($a0)
/* 044F0C 8004535C 1420FFB3 */  bnez        $at, .L8004522C
/* 044F10 80045360 24420008 */   addiu      $v0, $v0, 0x8
.L80045364:
/* 044F14 80045364 012B0019 */  multu       $t1, $t3
/* 044F18 80045368 8FA70170 */  lw          $a3, 0x170($sp)
/* 044F1C 8004536C 8FB401C4 */  lw          $s4, 0x1c4($sp)
/* 044F20 80045370 3C01FD10 */  lui         $at, 0xfd10
/* 044F24 80045374 24F9FFFF */  addiu       $t9, $a3, -0x1
/* 044F28 80045378 332E0FFF */  andi        $t6, $t9, 0xfff
/* 044F2C 8004537C 01C17825 */  or          $t7, $t6, $at
/* 044F30 80045380 00403025 */  move        $a2, $v0
/* 044F34 80045384 ACCF0000 */  sw          $t7, 0x0($a2)
/* 044F38 80045388 8FB8017C */  lw          $t8, 0x17c($sp)
/* 044F3C 8004538C 00004012 */  mflo        $t0
/* 044F40 80045390 0114C821 */  addu        $t9, $t0, $s4
/* 044F44 80045394 24420008 */  addiu       $v0, $v0, 0x8
/* 044F48 80045398 00F90019 */  multu       $a3, $t9
/* 044F4C 8004539C 3C01F510 */  lui         $at, 0xf510
/* 044F50 800453A0 00408025 */  move        $s0, $v0
/* 044F54 800453A4 24E3FFFF */  addiu       $v1, $a3, -0x1
/* 044F58 800453A8 3C1EF400 */  lui         $fp, 0xf400
/* 044F5C 800453AC 3C1FF200 */  lui         $ra, 0xf200
/* 044F60 800453B0 00036880 */  sll         $t5, $v1, 2
/* 044F64 800453B4 00036080 */  sll         $t4, $v1, 2
/* 044F68 800453B8 24420008 */  addiu       $v0, $v0, 0x8
/* 044F6C 800453BC 01002825 */  move        $a1, $t0
/* 044F70 800453C0 00007012 */  mflo        $t6
/* 044F74 800453C4 000E7840 */  sll         $t7, $t6, 1
/* 044F78 800453C8 030FC821 */  addu        $t9, $t8, $t7
/* 044F7C 800453CC 00077080 */  sll         $t6, $a3, 2
/* 044F80 800453D0 000EC042 */  srl         $t8, $t6, 1
/* 044F84 800453D4 270F0007 */  addiu       $t7, $t8, 0x7
/* 044F88 800453D8 ACD90004 */  sw          $t9, 0x4($a2)
/* 044F8C 800453DC 000FC8C2 */  srl         $t9, $t7, 3
/* 044F90 800453E0 332E01FF */  andi        $t6, $t9, 0x1ff
/* 044F94 800453E4 000EC240 */  sll         $t8, $t6, 9
/* 044F98 800453E8 03017825 */  or          $t7, $t8, $at
/* 044F9C 800453EC AE0F0000 */  sw          $t7, 0x0($s0)
/* 044FA0 800453F0 8FB901B4 */  lw          $t9, 0x1b4($sp)
/* 044FA4 800453F4 8FA401C8 */  lw          $a0, 0x1c8($sp)
/* 044FA8 800453F8 8FAA01A0 */  lw          $t2, 0x1a0($sp)
/* 044FAC 800453FC 44992000 */  mtc1        $t9, $f4
/* 044FB0 80045400 308E0003 */  andi        $t6, $a0, 0x3
/* 044FB4 80045404 07210005 */  bgez        $t9, .L8004541C
/* 044FB8 80045408 46802320 */   cvt.s.w    $f12, $f4
/* 044FBC 8004540C 3C014F80 */  lui         $at, 0x4f80
/* 044FC0 80045410 44813000 */  mtc1        $at, $f6
/* 044FC4 80045414 00000000 */  nop
/* 044FC8 80045418 46066300 */  add.s       $f12, $f12, $f6
.L8004541C:
/* 044FCC 8004541C 000EC200 */  sll         $t8, $t6, 8
/* 044FD0 80045420 3C010708 */  lui         $at, 0x708
/* 044FD4 80045424 03017025 */  or          $t6, $t8, $at
/* 044FD8 80045428 314F000F */  andi        $t7, $t2, 0xf
/* 044FDC 8004542C 000FC900 */  sll         $t9, $t7, 4
/* 044FE0 80045430 3C010008 */  lui         $at, 0x8
/* 044FE4 80045434 0301C025 */  or          $t8, $t8, $at
/* 044FE8 80045438 03199025 */  or          $s2, $t8, $t9
/* 044FEC 8004543C 01D98825 */  or          $s1, $t6, $t9
/* 044FF0 80045440 8FAE01B0 */  lw          $t6, 0x1b0($sp)
/* 044FF4 80045444 8FB801B8 */  lw          $t8, 0x1b8($sp)
/* 044FF8 80045448 31AF0FFF */  andi        $t7, $t5, 0xfff
/* 044FFC 8004544C 000F6B00 */  sll         $t5, $t7, 12
/* 045000 80045450 01D89821 */  addu        $s3, $t6, $t8
/* 045004 80045454 00137880 */  sll         $t7, $s3, 2
/* 045008 80045458 31F90FFF */  andi        $t9, $t7, 0xfff
/* 04500C 8004545C 0019C300 */  sll         $t8, $t9, 12
/* 045010 80045460 3C01E400 */  lui         $at, 0xe400
/* 045014 80045464 000EA880 */  sll         $s5, $t6, 2
/* 045018 80045468 8FAE01C0 */  lw          $t6, 0x1c0($sp)
/* 04501C 8004546C 03019825 */  or          $s3, $t8, $at
/* 045020 80045470 258C0004 */  addiu       $t4, $t4, 0x4
/* 045024 80045474 000CC042 */  srl         $t8, $t4, 1
/* 045028 80045478 270C0007 */  addiu       $t4, $t8, 0x7
/* 04502C 8004547C 000C78C2 */  srl         $t7, $t4, 3
/* 045030 80045480 32B90FFF */  andi        $t9, $s5, 0xfff
/* 045034 80045484 000EB540 */  sll         $s6, $t6, 21
/* 045038 80045488 31EE01FF */  andi        $t6, $t7, 0x1ff
/* 04503C 8004548C 0019AB00 */  sll         $s5, $t9, 12
/* 045040 80045490 000ECA40 */  sll         $t9, $t6, 9
/* 045044 80045494 3C01F510 */  lui         $at, 0xf510
/* 045048 80045498 03216025 */  or          $t4, $t9, $at
/* 04504C 8004549C 3C010700 */  lui         $at, 0x700
/* 045050 800454A0 01A17825 */  or          $t7, $t5, $at
/* 045054 800454A4 3C014480 */  lui         $at, 0x4480
/* 045058 800454A8 44818000 */  mtc1        $at, $f16
/* 04505C 800454AC 3C013FE0 */  lui         $at, 0x3fe0
/* 045060 800454B0 44814800 */  mtc1        $at, $f9
/* 045064 800454B4 46028283 */  div.s       $f10, $f16, $f2
/* 045068 800454B8 3C014480 */  lui         $at, 0x4480
/* 04506C 800454BC 44818000 */  mtc1        $at, $f16
/* 045070 800454C0 44804000 */  mtc1        $zero, $f8
/* 045074 800454C4 3C013FE0 */  lui         $at, 0x3fe0
/* 045078 800454C8 AFAF0070 */  sw          $t7, 0x70($sp)
/* 04507C 800454CC 00401825 */  move        $v1, $v0
/* 045080 800454D0 AE110004 */  sw          $s1, 0x4($s0)
/* 045084 800454D4 24420008 */  addiu       $v0, $v0, 0x8
/* 045088 800454D8 3C0EE600 */  lui         $t6, 0xe600
/* 04508C 800454DC AC6E0000 */  sw          $t6, 0x0($v1)
/* 045090 800454E0 00402025 */  move        $a0, $v0
/* 045094 800454E4 AC600004 */  sw          $zero, 0x4($v1)
/* 045098 800454E8 AC9E0000 */  sw          $fp, 0x0($a0)
/* 04509C 800454EC 8FAE0070 */  lw          $t6, 0x70($sp)
/* 0450A0 800454F0 24420008 */  addiu       $v0, $v0, 0x8
/* 0450A4 800454F4 00403825 */  move        $a3, $v0
/* 0450A8 800454F8 24420008 */  addiu       $v0, $v0, 0x8
/* 0450AC 800454FC 00404825 */  move        $t1, $v0
/* 0450B0 80045500 24420008 */  addiu       $v0, $v0, 0x8
/* 0450B4 80045504 00401825 */  move        $v1, $v0
/* 0450B8 80045508 24420008 */  addiu       $v0, $v0, 0x8
/* 0450BC 8004550C 460054A1 */  cvt.d.s     $f18, $f10
/* 0450C0 80045510 46008283 */  div.s       $f10, $f16, $f0
/* 0450C4 80045514 46289100 */  add.d       $f4, $f18, $f8
/* 0450C8 80045518 44804000 */  mtc1        $zero, $f8
/* 0450CC 8004551C 44814800 */  mtc1        $at, $f9
/* 0450D0 80045520 3C014F80 */  lui         $at, 0x4f80
/* 0450D4 80045524 4620218D */  trunc.w.d   $f6, $f4
/* 0450D8 80045528 44183000 */  mfc1        $t8, $f6
/* 0450DC 8004552C 00000000 */  nop
/* 0450E0 80045530 00187C00 */  sll         $t7, $t8, 16
/* 0450E4 80045534 460054A1 */  cvt.d.s     $f18, $f10
/* 0450E8 80045538 46289100 */  add.d       $f4, $f18, $f8
/* 0450EC 8004553C 4620218D */  trunc.w.d   $f6, $f4
/* 0450F0 80045540 44193000 */  mfc1        $t9, $f6
/* 0450F4 80045544 00000000 */  nop
/* 0450F8 80045548 3338FFFF */  andi        $t8, $t9, 0xffff
/* 0450FC 8004554C 8FB901BC */  lw          $t9, 0x1bc($sp)
/* 045100 80045550 01F8B825 */  or          $s7, $t7, $t8
/* 045104 80045554 03253023 */  subu        $a2, $t9, $a1
/* 045108 80045558 24C6FFFF */  addiu       $a2, $a2, -0x1
/* 04510C 8004555C 00067880 */  sll         $t7, $a2, 2
/* 045110 80045560 31F80FFF */  andi        $t8, $t7, 0xfff
/* 045114 80045564 01D8C825 */  or          $t9, $t6, $t8
/* 045118 80045568 AC990004 */  sw          $t9, 0x4($a0)
/* 04511C 8004556C 3C0FE700 */  lui         $t7, 0xe700
/* 045120 80045570 ACEF0000 */  sw          $t7, 0x0($a3)
/* 045124 80045574 ACE00004 */  sw          $zero, 0x4($a3)
/* 045128 80045578 AD320004 */  sw          $s2, 0x4($t1)
/* 04512C 8004557C AD2C0000 */  sw          $t4, 0x0($t1)
/* 045130 80045580 01B8C025 */  or          $t8, $t5, $t8
/* 045134 80045584 AC780004 */  sw          $t8, 0x4($v1)
/* 045138 80045588 AC7F0000 */  sw          $ra, 0x0($v1)
/* 04513C 8004558C 8FAE01BC */  lw          $t6, 0x1bc($sp)
/* 045140 80045590 00402025 */  move        $a0, $v0
/* 045144 80045594 24420008 */  addiu       $v0, $v0, 0x8
/* 045148 80045598 448E8000 */  mtc1        $t6, $f16
/* 04514C 8004559C 00000000 */  nop
/* 045150 800455A0 468082A0 */  cvt.s.w     $f10, $f16
/* 045154 800455A4 44888000 */  mtc1        $t0, $f16
/* 045158 800455A8 05C30005 */  bgezl       $t6, .L800455C0
/* 04515C 800455AC 468084A0 */   cvt.s.w    $f18, $f16
/* 045160 800455B0 44819000 */  mtc1        $at, $f18
/* 045164 800455B4 00000000 */  nop
/* 045168 800455B8 46125280 */  add.s       $f10, $f10, $f18
/* 04516C 800455BC 468084A0 */  cvt.s.w     $f18, $f16
.L800455C0:
/* 045170 800455C0 46005202 */  mul.s       $f8, $f10, $f0
/* 045174 800455C4 00401825 */  move        $v1, $v0
/* 045178 800455C8 24420008 */  addiu       $v0, $v0, 0x8
/* 04517C 800455CC 00402825 */  move        $a1, $v0
/* 045180 800455D0 24420008 */  addiu       $v0, $v0, 0x8
/* 045184 800455D4 46009282 */  mul.s       $f10, $f18, $f0
/* 045188 800455D8 46086100 */  add.s       $f4, $f12, $f8
/* 04518C 800455DC 4600218D */  trunc.w.s   $f6, $f4
/* 045190 800455E0 460A6200 */  add.s       $f8, $f12, $f10
/* 045194 800455E4 440F3000 */  mfc1        $t7, $f6
/* 045198 800455E8 4600410D */  trunc.w.s   $f4, $f8
/* 04519C 800455EC 000FC080 */  sll         $t8, $t7, 2
/* 0451A0 800455F0 330E0FFF */  andi        $t6, $t8, 0xfff
/* 0451A4 800455F4 026EC825 */  or          $t9, $s3, $t6
/* 0451A8 800455F8 44182000 */  mfc1        $t8, $f4
/* 0451AC 800455FC AC990000 */  sw          $t9, 0x0($a0)
/* 0451B0 80045600 00187080 */  sll         $t6, $t8, 2
/* 0451B4 80045604 31D90FFF */  andi        $t9, $t6, 0xfff
/* 0451B8 80045608 02B97825 */  or          $t7, $s5, $t9
/* 0451BC 8004560C AC8F0004 */  sw          $t7, 0x4($a0)
/* 0451C0 80045610 3C18E100 */  lui         $t8, 0xe100
/* 0451C4 80045614 AC780000 */  sw          $t8, 0x0($v1)
/* 0451C8 80045618 AC760004 */  sw          $s6, 0x4($v1)
/* 0451CC 8004561C 3C0EF100 */  lui         $t6, 0xf100
/* 0451D0 80045620 ACAE0000 */  sw          $t6, 0x0($a1)
/* 0451D4 80045624 ACB70004 */  sw          $s7, 0x4($a1)
.L80045628:
/* 0451D8 80045628 8FB901A8 */  lw          $t9, 0x1a8($sp)
.L8004562C:
/* 0451DC 8004562C AF220000 */  sw          $v0, 0x0($t9)
/* 0451E0 80045630 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0451E4 80045634 8FBE0028 */  lw          $fp, 0x28($sp)
/* 0451E8 80045638 8FB70024 */  lw          $s7, 0x24($sp)
/* 0451EC 8004563C 8FB60020 */  lw          $s6, 0x20($sp)
/* 0451F0 80045640 8FB5001C */  lw          $s5, 0x1c($sp)
/* 0451F4 80045644 8FB40018 */  lw          $s4, 0x18($sp)
/* 0451F8 80045648 8FB30014 */  lw          $s3, 0x14($sp)
/* 0451FC 8004564C 8FB20010 */  lw          $s2, 0x10($sp)
/* 045200 80045650 8FB1000C */  lw          $s1, 0xc($sp)
/* 045204 80045654 8FB00008 */  lw          $s0, 0x8($sp)
/* 045208 80045658 03E00008 */  jr          $ra
/* 04520C 8004565C 27BD01A8 */   addiu      $sp, $sp, 0x1a8

glabel func_80045660 # 10
/* 045210 80045660 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 045214 80045664 AFBF0014 */  sw          $ra, 0x14($sp)
/* 045218 80045668 AFA50024 */  sw          $a1, 0x24($sp)
/* 04521C 8004566C AC800008 */  sw          $zero, 0x8($a0)
/* 045220 80045670 8FAE0024 */  lw          $t6, 0x24($sp)
/* 045224 80045674 00803825 */  move        $a3, $a0
/* 045228 80045678 24060052 */  addiu       $a2, $zero, 0x52
/* 04522C 8004567C AC8E0004 */  sw          $t6, 0x4($a0)
/* 045230 80045680 8FA50024 */  lw          $a1, 0x24($sp)
/* 045234 80045684 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 045238 80045688 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 04523C 8004568C 000578C0 */  sll         $t7, $a1, 3
/* 045240 80045690 01E02825 */  move        $a1, $t7
/* 045244 80045694 AFAF0018 */  sw          $t7, 0x18($sp)
/* 045248 80045698 0C00DA76 */  jal         func_800369D8
/* 04524C 8004569C AFA70020 */   sw         $a3, 0x20($sp)
/* 045250 800456A0 8FA70020 */  lw          $a3, 0x20($sp)
/* 045254 800456A4 8FA50018 */  lw          $a1, 0x18($sp)
/* 045258 800456A8 00402025 */  move        $a0, $v0
/* 04525C 800456AC 0C013C58 */  jal         func_8004F160
/* 045260 800456B0 ACE20000 */   sw         $v0, 0x0($a3)
/* 045264 800456B4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 045268 800456B8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 04526C 800456BC 03E00008 */  jr          $ra
/* 045270 800456C0 00000000 */   nop

glabel func_800456C4 # 11
/* 045274 800456C4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 045278 800456C8 00803025 */  move        $a2, $a0
/* 04527C 800456CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 045280 800456D0 8CC50000 */  lw          $a1, 0x0($a2)
/* 045284 800456D4 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 045288 800456D8 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 04528C 800456DC 0C00DB8B */  jal         func_80036E2C
/* 045290 800456E0 AFA60018 */   sw         $a2, 0x18($sp)
/* 045294 800456E4 8FA60018 */  lw          $a2, 0x18($sp)
/* 045298 800456E8 ACC00000 */  sw          $zero, 0x0($a2)
/* 04529C 800456EC ACC00004 */  sw          $zero, 0x4($a2)
/* 0452A0 800456F0 ACC00008 */  sw          $zero, 0x8($a2)
/* 0452A4 800456F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0452A8 800456F8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0452AC 800456FC 03E00008 */  jr          $ra
/* 0452B0 80045700 00000000 */   nop

glabel func_80045704 # 12
/* 0452B4 80045704 AFA50004 */  sw          $a1, 0x4($sp)
/* 0452B8 80045708 8C8E0008 */  lw          $t6, 0x8($a0)
/* 0452BC 8004570C 8C820004 */  lw          $v0, 0x4($a0)
/* 0452C0 80045710 00067B02 */  srl         $t7, $a2, 12
/* 0452C4 80045714 01E0C027 */  not         $t8, $t7
/* 0452C8 80045718 01C2082B */  sltu        $at, $t6, $v0
/* 0452CC 8004571C 14200003 */  bnez        $at, .L8004572C
/* 0452D0 80045720 0006CA02 */   srl        $t9, $a2, 8
/* 0452D4 80045724 03E00008 */  jr          $ra
/* 0452D8 80045728 00001025 */   move       $v0, $zero
.L8004572C:
/* 0452DC 8004572C 00067080 */  sll         $t6, $a2, 2
/* 0452E0 80045730 01C67023 */  subu        $t6, $t6, $a2
/* 0452E4 80045734 000E70C0 */  sll         $t6, $t6, 3
/* 0452E8 80045738 01C67023 */  subu        $t6, $t6, $a2
/* 0452EC 8004573C 000E7080 */  sll         $t6, $t6, 2
/* 0452F0 80045740 01C67021 */  addu        $t6, $t6, $a2
/* 0452F4 80045744 00065902 */  srl         $t3, $a2, 4
/* 0452F8 80045748 01606027 */  not         $t4, $t3
/* 0452FC 8004574C 000E70C0 */  sll         $t6, $t6, 3
/* 045300 80045750 03195021 */  addu        $t2, $t8, $t9
/* 045304 80045754 014C6826 */  xor         $t5, $t2, $t4
/* 045308 80045758 01C67023 */  subu        $t6, $t6, $a2
/* 04530C 8004575C 01AE7821 */  addu        $t7, $t5, $t6
/* 045310 80045760 01E2001B */  divu        $zero, $t7, $v0
/* 045314 80045764 8C880000 */  lw          $t0, 0x0($a0)
/* 045318 80045768 00001810 */  mfhi        $v1
/* 04531C 8004576C 0003C0C0 */  sll         $t8, $v1, 3
/* 045320 80045770 01183821 */  addu        $a3, $t0, $t8
/* 045324 80045774 8CF90004 */  lw          $t9, 0x4($a3)
/* 045328 80045778 14400002 */  bnez        $v0, .L80045784
/* 04532C 8004577C 00000000 */   nop
/* 045330 80045780 0007000D */  break       7
.L80045784:
/* 045334 80045784 00602825 */  move        $a1, $v1
/* 045338 80045788 13200012 */  beqz        $t9, .L800457D4
/* 04533C 8004578C 30CB0007 */   andi       $t3, $a2, 0x7
/* 045340 80045790 240A0008 */  addiu       $t2, $zero, 0x8
/* 045344 80045794 014B4823 */  subu        $t1, $t2, $t3
/* 045348 80045798 00A96021 */  addu        $t4, $a1, $t1
.L8004579C:
/* 04534C 8004579C 0182001B */  divu        $zero, $t4, $v0
/* 045350 800457A0 00002810 */  mfhi        $a1
/* 045354 800457A4 000568C0 */  sll         $t5, $a1, 3
/* 045358 800457A8 14400002 */  bnez        $v0, .L800457B4
/* 04535C 800457AC 00000000 */   nop
/* 045360 800457B0 0007000D */  break       7
.L800457B4:
/* 045364 800457B4 010D3821 */  addu        $a3, $t0, $t5
/* 045368 800457B8 54A30004 */  bnel        $a1, $v1, .L800457CC
/* 04536C 800457BC 8CEE0004 */   lw         $t6, 0x4($a3)
/* 045370 800457C0 03E00008 */  jr          $ra
/* 045374 800457C4 00001025 */   move       $v0, $zero
/* 045378 800457C8 8CEE0004 */  lw          $t6, 0x4($a3)
.L800457CC:
/* 04537C 800457CC 55C0FFF3 */  bnel        $t6, $zero, .L8004579C
/* 045380 800457D0 00A96021 */   addu       $t4, $a1, $t1
.L800457D4:
/* 045384 800457D4 ACE60000 */  sw          $a2, 0x0($a3)
/* 045388 800457D8 8FAF0004 */  lw          $t7, 0x4($sp)
/* 04538C 800457DC 24020001 */  addiu       $v0, $zero, 0x1
/* 045390 800457E0 ACEF0004 */  sw          $t7, 0x4($a3)
/* 045394 800457E4 8C980008 */  lw          $t8, 0x8($a0)
/* 045398 800457E8 27190001 */  addiu       $t9, $t8, 0x1
/* 04539C 800457EC AC990008 */  sw          $t9, 0x8($a0)
/* 0453A0 800457F0 03E00008 */  jr          $ra
/* 0453A4 800457F4 00000000 */   nop

glabel func_800457F8 # 13
/* 0453A8 800457F8 00056080 */  sll         $t4, $a1, 2
/* 0453AC 800457FC 01856023 */  subu        $t4, $t4, $a1
/* 0453B0 80045800 000C60C0 */  sll         $t4, $t4, 3
/* 0453B4 80045804 01856023 */  subu        $t4, $t4, $a1
/* 0453B8 80045808 000C6080 */  sll         $t4, $t4, 2
/* 0453BC 8004580C 00057302 */  srl         $t6, $a1, 12
/* 0453C0 80045810 01C07827 */  not         $t7, $t6
/* 0453C4 80045814 01856021 */  addu        $t4, $t4, $a1
/* 0453C8 80045818 0005C202 */  srl         $t8, $a1, 8
/* 0453CC 8004581C 00054902 */  srl         $t1, $a1, 4
/* 0453D0 80045820 8C830004 */  lw          $v1, 0x4($a0)
/* 0453D4 80045824 01205027 */  not         $t2, $t1
/* 0453D8 80045828 01F8C821 */  addu        $t9, $t7, $t8
/* 0453DC 8004582C 000C60C0 */  sll         $t4, $t4, 3
/* 0453E0 80045830 01856023 */  subu        $t4, $t4, $a1
/* 0453E4 80045834 032A5826 */  xor         $t3, $t9, $t2
/* 0453E8 80045838 016C6821 */  addu        $t5, $t3, $t4
/* 0453EC 8004583C 01A3001B */  divu        $zero, $t5, $v1
/* 0453F0 80045840 8C880000 */  lw          $t0, 0x0($a0)
/* 0453F4 80045844 00001010 */  mfhi        $v0
/* 0453F8 80045848 000270C0 */  sll         $t6, $v0, 3
/* 0453FC 8004584C 010E3821 */  addu        $a3, $t0, $t6
/* 045400 80045850 8CEF0000 */  lw          $t7, 0x0($a3)
/* 045404 80045854 14600002 */  bnez        $v1, .L80045860
/* 045408 80045858 00000000 */   nop
/* 04540C 8004585C 0007000D */  break       7
.L80045860:
/* 045410 80045860 00403025 */  move        $a2, $v0
/* 045414 80045864 10AF0016 */  beq         $a1, $t7, .L800458C0
/* 045418 80045868 24040008 */   addiu      $a0, $zero, 0x8
/* 04541C 8004586C 8CF80004 */  lw          $t8, 0x4($a3)
.L80045870:
/* 045420 80045870 30A90007 */  andi        $t1, $a1, 0x7
/* 045424 80045874 0089C823 */  subu        $t9, $a0, $t1
/* 045428 80045878 17000003 */  bnez        $t8, .L80045888
/* 04542C 8004587C 00D95021 */   addu       $t2, $a2, $t9
/* 045430 80045880 03E00008 */  jr          $ra
/* 045434 80045884 00001025 */   move       $v0, $zero
.L80045888:
/* 045438 80045888 0143001B */  divu        $zero, $t2, $v1
/* 04543C 8004588C 00003010 */  mfhi        $a2
/* 045440 80045890 000658C0 */  sll         $t3, $a2, 3
/* 045444 80045894 14600002 */  bnez        $v1, .L800458A0
/* 045448 80045898 00000000 */   nop
/* 04544C 8004589C 0007000D */  break       7
.L800458A0:
/* 045450 800458A0 010B3821 */  addu        $a3, $t0, $t3
/* 045454 800458A4 54C20004 */  bnel        $a2, $v0, .L800458B8
/* 045458 800458A8 8CEC0000 */   lw         $t4, 0x0($a3)
/* 04545C 800458AC 03E00008 */  jr          $ra
/* 045460 800458B0 00001025 */   move       $v0, $zero
/* 045464 800458B4 8CEC0000 */  lw          $t4, 0x0($a3)
.L800458B8:
/* 045468 800458B8 54ACFFED */  bnel        $a1, $t4, .L80045870
/* 04546C 800458BC 8CF80004 */   lw         $t8, 0x4($a3)
.L800458C0:
/* 045470 800458C0 8CE20004 */  lw          $v0, 0x4($a3)
/* 045474 800458C4 03E00008 */  jr          $ra
/* 045478 800458C8 00000000 */   nop
/* 04547C 800458CC 00000000 */  nop
