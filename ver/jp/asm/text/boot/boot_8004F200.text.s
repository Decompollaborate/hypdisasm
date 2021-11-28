.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004F200 # 0
/* 04EDB0 8004F200 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 04EDB4 8004F204 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04EDB8 8004F208 AFB00018 */  sw          $s0, 0x18($sp)
/* 04EDBC 8004F20C 00A08025 */  move        $s0, $a1
/* 04EDC0 8004F210 AFA40070 */  sw          $a0, 0x70($sp)
/* 04EDC4 8004F214 0C0150EC */  jal         func_800543B0
/* 04EDC8 8004F218 AFA60078 */   sw         $a2, 0x78($sp)
/* 04EDCC 8004F21C 8FA40070 */  lw          $a0, 0x70($sp)
/* 04EDD0 8004F220 0C0155EC */  jal         func_800557B0
/* 04EDD4 8004F224 8FA50078 */   lw         $a1, 0x78($sp)
/* 04EDD8 8004F228 0C0150FD */  jal         func_800543F4
/* 04EDDC 8004F22C AFA2006C */   sw         $v0, 0x6c($sp)
/* 04EDE0 8004F230 8FA3006C */  lw          $v1, 0x6c($sp)
/* 04EDE4 8004F234 8FAE0070 */  lw          $t6, 0x70($sp)
/* 04EDE8 8004F238 02002025 */  move        $a0, $s0
/* 04EDEC 8004F23C 10600003 */  beqz        $v1, .L8004F24C
/* 04EDF0 8004F240 00002825 */   move       $a1, $zero
/* 04EDF4 8004F244 10000065 */  b           .L8004F3DC
/* 04EDF8 8004F248 00601025 */   move       $v0, $v1
.L8004F24C:
/* 04EDFC 8004F24C AE0E0004 */  sw          $t6, 0x4($s0)
/* 04EE00 8004F250 8FAF0078 */  lw          $t7, 0x78($sp)
/* 04EE04 8004F254 AE000000 */  sw          $zero, 0x0($s0)
/* 04EE08 8004F258 0C015678 */  jal         func_800559E0
/* 04EE0C 8004F25C AE0F0008 */   sw         $t7, 0x8($s0)
/* 04EE10 8004F260 10400003 */  beqz        $v0, .L8004F270
/* 04EE14 8004F264 24060001 */   addiu      $a2, $zero, 0x1
/* 04EE18 8004F268 1000005D */  b           .L8004F3E0
/* 04EE1C 8004F26C 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004F270:
/* 04EE20 8004F270 8E040004 */  lw          $a0, 0x4($s0)
/* 04EE24 8004F274 8E050008 */  lw          $a1, 0x8($s0)
/* 04EE28 8004F278 0C015204 */  jal         func_80054810
/* 04EE2C 8004F27C 27A70048 */   addiu      $a3, $sp, 0x48
/* 04EE30 8004F280 10400003 */  beqz        $v0, .L8004F290
/* 04EE34 8004F284 27A40048 */   addiu      $a0, $sp, 0x48
/* 04EE38 8004F288 10000055 */  b           .L8004F3E0
/* 04EE3C 8004F28C 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004F290:
/* 04EE40 8004F290 27A5006A */  addiu       $a1, $sp, 0x6a
/* 04EE44 8004F294 0C0156B5 */  jal         func_80055AD4
/* 04EE48 8004F298 27A60068 */   addiu      $a2, $sp, 0x68
/* 04EE4C 8004F29C 97B8006A */  lhu         $t8, 0x6a($sp)
/* 04EE50 8004F2A0 97B90064 */  lhu         $t9, 0x64($sp)
/* 04EE54 8004F2A4 27A50048 */  addiu       $a1, $sp, 0x48
/* 04EE58 8004F2A8 AFA50044 */  sw          $a1, 0x44($sp)
/* 04EE5C 8004F2AC 17190004 */  bne         $t8, $t9, .L8004F2C0
/* 04EE60 8004F2B0 97A90068 */   lhu        $t1, 0x68($sp)
/* 04EE64 8004F2B4 97AA0066 */  lhu         $t2, 0x66($sp)
/* 04EE68 8004F2B8 512A000A */  beql        $t1, $t2, .L8004F2E4
/* 04EE6C 8004F2BC 97AD0060 */   lhu        $t5, 0x60($sp)
.L8004F2C0:
/* 04EE70 8004F2C0 0C0157C8 */  jal         func_80055F20
/* 04EE74 8004F2C4 02002025 */   move       $a0, $s0
/* 04EE78 8004F2C8 50400006 */  beql        $v0, $zero, .L8004F2E4
/* 04EE7C 8004F2CC 97AD0060 */   lhu        $t5, 0x60($sp)
/* 04EE80 8004F2D0 8E0B0000 */  lw          $t3, 0x0($s0)
/* 04EE84 8004F2D4 356C0004 */  ori         $t4, $t3, 0x4
/* 04EE88 8004F2D8 10000040 */  b           .L8004F3DC
/* 04EE8C 8004F2DC AE0C0000 */   sw         $t4, 0x0($s0)
/* 04EE90 8004F2E0 97AD0060 */  lhu         $t5, 0x60($sp)
.L8004F2E4:
/* 04EE94 8004F2E4 27A50048 */  addiu       $a1, $sp, 0x48
/* 04EE98 8004F2E8 02002025 */  move        $a0, $s0
/* 04EE9C 8004F2EC 31AE0001 */  andi        $t6, $t5, 0x1
/* 04EEA0 8004F2F0 55C00016 */  bnel        $t6, $zero, .L8004F34C
/* 04EEA4 8004F2F4 8FA40044 */   lw         $a0, 0x44($sp)
/* 04EEA8 8004F2F8 0C0156F4 */  jal         func_80055BD0
/* 04EEAC 8004F2FC 27A60020 */   addiu      $a2, $sp, 0x20
/* 04EEB0 8004F300 10400009 */  beqz        $v0, .L8004F328
/* 04EEB4 8004F304 00401825 */   move       $v1, $v0
/* 04EEB8 8004F308 2401000A */  addiu       $at, $zero, 0xa
/* 04EEBC 8004F30C 14410004 */  bne         $v0, $at, .L8004F320
/* 04EEC0 8004F310 00000000 */   nop
/* 04EEC4 8004F314 8E0F0000 */  lw          $t7, 0x0($s0)
/* 04EEC8 8004F318 35F80004 */  ori         $t8, $t7, 0x4
/* 04EECC 8004F31C AE180000 */  sw          $t8, 0x0($s0)
.L8004F320:
/* 04EED0 8004F320 1000002E */  b           .L8004F3DC
/* 04EED4 8004F324 00601025 */   move       $v0, $v1
.L8004F328:
/* 04EED8 8004F328 97A90038 */  lhu         $t1, 0x38($sp)
/* 04EEDC 8004F32C 27B90020 */  addiu       $t9, $sp, 0x20
/* 04EEE0 8004F330 AFB90044 */  sw          $t9, 0x44($sp)
/* 04EEE4 8004F334 312A0001 */  andi        $t2, $t1, 0x1
/* 04EEE8 8004F338 55400004 */  bnel        $t2, $zero, .L8004F34C
/* 04EEEC 8004F33C 8FA40044 */   lw         $a0, 0x44($sp)
/* 04EEF0 8004F340 10000026 */  b           .L8004F3DC
/* 04EEF4 8004F344 2402000B */   addiu      $v0, $zero, 0xb
/* 04EEF8 8004F348 8FA40044 */  lw          $a0, 0x44($sp)
.L8004F34C:
/* 04EEFC 8004F34C 2605000C */  addiu       $a1, $s0, 0xc
/* 04EF00 8004F350 0C013E84 */  jal         bcopy
/* 04EF04 8004F354 24060020 */   addiu      $a2, $zero, 0x20
/* 04EF08 8004F358 8FAB0044 */  lw          $t3, 0x44($sp)
/* 04EF0C 8004F35C 24190010 */  addiu       $t9, $zero, 0x10
/* 04EF10 8004F360 24090008 */  addiu       $t1, $zero, 0x8
/* 04EF14 8004F364 916C001B */  lbu         $t4, 0x1b($t3)
/* 04EF18 8004F368 8E040004 */  lw          $a0, 0x4($s0)
/* 04EF1C 8004F36C 8E050008 */  lw          $a1, 0x8($s0)
/* 04EF20 8004F370 AE0C004C */  sw          $t4, 0x4c($s0)
/* 04EF24 8004F374 8FAD0044 */  lw          $t5, 0x44($sp)
/* 04EF28 8004F378 24060007 */  addiu       $a2, $zero, 0x7
/* 04EF2C 8004F37C 2607002C */  addiu       $a3, $s0, 0x2c
/* 04EF30 8004F380 91AE001A */  lbu         $t6, 0x1a($t5)
/* 04EF34 8004F384 AE190050 */  sw          $t9, 0x50($s0)
/* 04EF38 8004F388 AE090054 */  sw          $t1, 0x54($s0)
/* 04EF3C 8004F38C 31C200FF */  andi        $v0, $t6, 0xff
/* 04EF40 8004F390 000218C0 */  sll         $v1, $v0, 3
/* 04EF44 8004F394 00027840 */  sll         $t7, $v0, 1
/* 04EF48 8004F398 24680008 */  addiu       $t0, $v1, 0x8
/* 04EF4C 8004F39C 25F80003 */  addiu       $t8, $t7, 0x3
/* 04EF50 8004F3A0 01035021 */  addu        $t2, $t0, $v1
/* 04EF54 8004F3A4 AE180060 */  sw          $t8, 0x60($s0)
/* 04EF58 8004F3A8 AE080058 */  sw          $t0, 0x58($s0)
/* 04EF5C 8004F3AC AE0A005C */  sw          $t2, 0x5c($s0)
/* 04EF60 8004F3B0 0C015204 */  jal         func_80054810
/* 04EF64 8004F3B4 A20E0064 */   sb         $t6, 0x64($s0)
/* 04EF68 8004F3B8 10400003 */  beqz        $v0, .L8004F3C8
/* 04EF6C 8004F3BC 00000000 */   nop
/* 04EF70 8004F3C0 10000007 */  b           .L8004F3E0
/* 04EF74 8004F3C4 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004F3C8:
/* 04EF78 8004F3C8 0C015978 */  jal         func_800565E0
/* 04EF7C 8004F3CC 02002025 */   move       $a0, $s0
/* 04EF80 8004F3D0 8E0B0000 */  lw          $t3, 0x0($s0)
/* 04EF84 8004F3D4 356C0001 */  ori         $t4, $t3, 0x1
/* 04EF88 8004F3D8 AE0C0000 */  sw          $t4, 0x0($s0)
.L8004F3DC:
/* 04EF8C 8004F3DC 8FBF001C */  lw          $ra, 0x1c($sp)
.L8004F3E0:
/* 04EF90 8004F3E0 8FB00018 */  lw          $s0, 0x18($sp)
/* 04EF94 8004F3E4 27BD0070 */  addiu       $sp, $sp, 0x70
/* 04EF98 8004F3E8 03E00008 */  jr          $ra
/* 04EF9C 8004F3EC 00000000 */   nop

glabel func_8004F3F0 # 1
/* 04EFA0 8004F3F0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 04EFA4 8004F3F4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04EFA8 8004F3F8 AFB00018 */  sw          $s0, 0x18($sp)
/* 04EFAC 8004F3FC 8C8E0008 */  lw          $t6, 0x8($a0)
/* 04EFB0 8004F400 8C990000 */  lw          $t9, 0x0($a0)
/* 04EFB4 8004F404 3C188010 */  lui         $t8, %hi(D_801023D0)
/* 04EFB8 8004F408 271823D0 */  addiu       $t8, $t8, %lo(D_801023D0)
/* 04EFBC 8004F40C 000E7980 */  sll         $t7, $t6, 6
/* 04EFC0 8004F410 33290008 */  andi        $t1, $t9, 0x8
/* 04EFC4 8004F414 00808025 */  move        $s0, $a0
/* 04EFC8 8004F418 00A03825 */  move        $a3, $a1
/* 04EFCC 8004F41C 15200003 */  bnez        $t1, .L8004F42C
/* 04EFD0 8004F420 01F84021 */   addu       $t0, $t7, $t8
/* 04EFD4 8004F424 10000047 */  b           .L8004F544
/* 04EFD8 8004F428 24020005 */   addiu      $v0, $zero, 0x5
.L8004F42C:
/* 04EFDC 8004F42C AFA70034 */  sw          $a3, 0x34($sp)
/* 04EFE0 8004F430 0C0150EC */  jal         func_800543B0
/* 04EFE4 8004F434 AFA80024 */   sw         $t0, 0x24($sp)
/* 04EFE8 8004F438 8E0B0008 */  lw          $t3, 0x8($s0)
/* 04EFEC 8004F43C 3C068010 */  lui         $a2, %hi(D_801023D0)
/* 04EFF0 8004F440 24C623D0 */  addiu       $a2, $a2, %lo(D_801023D0)
/* 04EFF4 8004F444 000B6180 */  sll         $t4, $t3, 6
/* 04EFF8 8004F448 00CC6821 */  addu        $t5, $a2, $t4
/* 04EFFC 8004F44C 240A0001 */  addiu       $t2, $zero, 0x1
/* 04F000 8004F450 ADAA003C */  sw          $t2, 0x3c($t5)
/* 04F004 8004F454 8FA80024 */  lw          $t0, 0x24($sp)
/* 04F008 8004F458 8E0E0008 */  lw          $t6, 0x8($s0)
/* 04F00C 8004F45C 8FA70034 */  lw          $a3, 0x34($sp)
/* 04F010 8004F460 00001825 */  move        $v1, $zero
/* 04F014 8004F464 010E4021 */  addu        $t0, $t0, $t6
/* 04F018 8004F468 01001025 */  move        $v0, $t0
/* 04F01C 8004F46C 24040020 */  addiu       $a0, $zero, 0x20
.L8004F470:
/* 04F020 8004F470 24630004 */  addiu       $v1, $v1, 0x4
/* 04F024 8004F474 A0470007 */  sb          $a3, 0x7($v0)
/* 04F028 8004F478 A0470008 */  sb          $a3, 0x8($v0)
/* 04F02C 8004F47C A0470009 */  sb          $a3, 0x9($v0)
/* 04F030 8004F480 24420004 */  addiu       $v0, $v0, 0x4
/* 04F034 8004F484 1464FFFA */  bne         $v1, $a0, .L8004F470
/* 04F038 8004F488 A0470002 */   sb         $a3, 0x2($v0)
/* 04F03C 8004F48C 240F00FE */  addiu       $t7, $zero, 0xfe
/* 04F040 8004F490 3C018010 */  lui         $at, %hi(D_80102380)
/* 04F044 8004F494 A02F2380 */  sb          $t7, %lo(D_80102380)($at)
/* 04F048 8004F498 8E180008 */  lw          $t8, 0x8($s0)
/* 04F04C 8004F49C AFA80024 */  sw          $t0, 0x24($sp)
/* 04F050 8004F4A0 AFA70034 */  sw          $a3, 0x34($sp)
/* 04F054 8004F4A4 0018C980 */  sll         $t9, $t8, 6
/* 04F058 8004F4A8 00D92821 */  addu        $a1, $a2, $t9
/* 04F05C 8004F4AC 0C015108 */  jal         func_80054420
/* 04F060 8004F4B0 24040001 */   addiu      $a0, $zero, 0x1
/* 04F064 8004F4B4 8E040004 */  lw          $a0, 0x4($s0)
/* 04F068 8004F4B8 00002825 */  move        $a1, $zero
/* 04F06C 8004F4BC 0C013A48 */  jal         func_8004E920
/* 04F070 8004F4C0 24060001 */   addiu      $a2, $zero, 0x1
/* 04F074 8004F4C4 8E090008 */  lw          $t1, 0x8($s0)
/* 04F078 8004F4C8 3C0C8010 */  lui         $t4, %hi(D_801023D0)
/* 04F07C 8004F4CC 258C23D0 */  addiu       $t4, $t4, %lo(D_801023D0)
/* 04F080 8004F4D0 00095980 */  sll         $t3, $t1, 6
/* 04F084 8004F4D4 016C2821 */  addu        $a1, $t3, $t4
/* 04F088 8004F4D8 0C015108 */  jal         func_80054420
/* 04F08C 8004F4DC 00002025 */   move       $a0, $zero
/* 04F090 8004F4E0 8E040004 */  lw          $a0, 0x4($s0)
/* 04F094 8004F4E4 00002825 */  move        $a1, $zero
/* 04F098 8004F4E8 0C013A48 */  jal         func_8004E920
/* 04F09C 8004F4EC 24060001 */   addiu      $a2, $zero, 0x1
/* 04F0A0 8004F4F0 8FA80024 */  lw          $t0, 0x24($sp)
/* 04F0A4 8004F4F4 8FA70034 */  lw          $a3, 0x34($sp)
/* 04F0A8 8004F4F8 91100002 */  lbu         $s0, 0x2($t0)
/* 04F0AC 8004F4FC 320A00C0 */  andi        $t2, $s0, 0xc0
/* 04F0B0 8004F500 1540000D */  bnez        $t2, .L8004F538
/* 04F0B4 8004F504 01408025 */   move       $s0, $t2
/* 04F0B8 8004F508 54E00007 */  bnel        $a3, $zero, .L8004F528
/* 04F0BC 8004F50C 910E0026 */   lbu        $t6, 0x26($t0)
/* 04F0C0 8004F510 910D0026 */  lbu         $t5, 0x26($t0)
/* 04F0C4 8004F514 11A00008 */  beqz        $t5, .L8004F538
/* 04F0C8 8004F518 00000000 */   nop
/* 04F0CC 8004F51C 10000006 */  b           .L8004F538
/* 04F0D0 8004F520 24100004 */   addiu      $s0, $zero, 0x4
/* 04F0D4 8004F524 910E0026 */  lbu         $t6, 0x26($t0)
.L8004F528:
/* 04F0D8 8004F528 240100EB */  addiu       $at, $zero, 0xeb
/* 04F0DC 8004F52C 11C10002 */  beq         $t6, $at, .L8004F538
/* 04F0E0 8004F530 00000000 */   nop
/* 04F0E4 8004F534 24100004 */  addiu       $s0, $zero, 0x4
.L8004F538:
/* 04F0E8 8004F538 0C0150FD */  jal         func_800543F4
/* 04F0EC 8004F53C 00000000 */   nop
/* 04F0F0 8004F540 02001025 */  move        $v0, $s0
.L8004F544:
/* 04F0F4 8004F544 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04F0F8 8004F548 8FB00018 */  lw          $s0, 0x18($sp)
/* 04F0FC 8004F54C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 04F100 8004F550 03E00008 */  jr          $ra
/* 04F104 8004F554 00000000 */   nop

glabel func_8004F558 # 2
/* 04F108 8004F558 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 04F10C 8004F55C AFBF0014 */  sw          $ra, 0x14($sp)
/* 04F110 8004F560 00803025 */  move        $a2, $a0
/* 04F114 8004F564 240E00FF */  addiu       $t6, $zero, 0xff
/* 04F118 8004F568 240F0023 */  addiu       $t7, $zero, 0x23
/* 04F11C 8004F56C 24180001 */  addiu       $t8, $zero, 0x1
/* 04F120 8004F570 24190003 */  addiu       $t9, $zero, 0x3
/* 04F124 8004F574 240800C0 */  addiu       $t0, $zero, 0xc0
/* 04F128 8004F578 A3AE0024 */  sb          $t6, 0x24($sp)
/* 04F12C 8004F57C A3AF0025 */  sb          $t7, 0x25($sp)
/* 04F130 8004F580 A3B80026 */  sb          $t8, 0x26($sp)
/* 04F134 8004F584 A3B90027 */  sb          $t9, 0x27($sp)
/* 04F138 8004F588 A3A80028 */  sb          $t0, 0x28($sp)
/* 04F13C 8004F58C AFA60050 */  sw          $a2, 0x50($sp)
/* 04F140 8004F590 24040600 */  addiu       $a0, $zero, 0x600
/* 04F144 8004F594 0C015290 */  jal         func_80054A40
/* 04F148 8004F598 AFA5004C */   sw         $a1, 0x4c($sp)
/* 04F14C 8004F59C 8FA60050 */  lw          $a2, 0x50($sp)
/* 04F150 8004F5A0 3449C000 */  ori         $t1, $v0, 0xc000
/* 04F154 8004F5A4 A3A90029 */  sb          $t1, 0x29($sp)
/* 04F158 8004F5A8 10C00012 */  beqz        $a2, .L8004F5F4
/* 04F15C 8004F5AC 8FA3004C */   lw         $v1, 0x4c($sp)
/* 04F160 8004F5B0 18C00010 */  blez        $a2, .L8004F5F4
/* 04F164 8004F5B4 00001025 */   move       $v0, $zero
/* 04F168 8004F5B8 30C50003 */  andi        $a1, $a2, 0x3
/* 04F16C 8004F5BC 10A00006 */  beqz        $a1, .L8004F5D8
/* 04F170 8004F5C0 00A02025 */   move       $a0, $a1
.L8004F5C4:
/* 04F174 8004F5C4 24420001 */  addiu       $v0, $v0, 0x1
/* 04F178 8004F5C8 A0600000 */  sb          $zero, 0x0($v1)
/* 04F17C 8004F5CC 1482FFFD */  bne         $a0, $v0, .L8004F5C4
/* 04F180 8004F5D0 24630001 */   addiu      $v1, $v1, 0x1
/* 04F184 8004F5D4 10460007 */  beq         $v0, $a2, .L8004F5F4
.L8004F5D8:
/* 04F188 8004F5D8 24420004 */   addiu      $v0, $v0, 0x4
/* 04F18C 8004F5DC A0600001 */  sb          $zero, 0x1($v1)
/* 04F190 8004F5E0 A0600002 */  sb          $zero, 0x2($v1)
/* 04F194 8004F5E4 A0600003 */  sb          $zero, 0x3($v1)
/* 04F198 8004F5E8 24630004 */  addiu       $v1, $v1, 0x4
/* 04F19C 8004F5EC 1446FFFA */  bne         $v0, $a2, .L8004F5D8
/* 04F1A0 8004F5F0 A060FFFC */   sb         $zero, -0x4($v1)
.L8004F5F4:
/* 04F1A4 8004F5F4 27AA0024 */  addiu       $t2, $sp, 0x24
/* 04F1A8 8004F5F8 254C0024 */  addiu       $t4, $t2, 0x24
/* 04F1AC 8004F5FC 00606825 */  move        $t5, $v1
.L8004F600:
/* 04F1B0 8004F600 8D410000 */  lw          $at, 0x0($t2)
/* 04F1B4 8004F604 254A000C */  addiu       $t2, $t2, 0xc
/* 04F1B8 8004F608 25AD000C */  addiu       $t5, $t5, 0xc
/* 04F1BC 8004F60C A9A1FFF4 */  swl         $at, -0xc($t5)
/* 04F1C0 8004F610 B9A1FFF7 */  swr         $at, -0x9($t5)
/* 04F1C4 8004F614 8D41FFF8 */  lw          $at, -0x8($t2)
/* 04F1C8 8004F618 A9A1FFF8 */  swl         $at, -0x8($t5)
/* 04F1CC 8004F61C B9A1FFFB */  swr         $at, -0x5($t5)
/* 04F1D0 8004F620 8D41FFFC */  lw          $at, -0x4($t2)
/* 04F1D4 8004F624 A9A1FFFC */  swl         $at, -0x4($t5)
/* 04F1D8 8004F628 154CFFF5 */  bne         $t2, $t4, .L8004F600
/* 04F1DC 8004F62C B9A1FFFF */   swr        $at, -0x1($t5)
/* 04F1E0 8004F630 91410000 */  lbu         $at, 0x0($t2)
/* 04F1E4 8004F634 240E00FE */  addiu       $t6, $zero, 0xfe
/* 04F1E8 8004F638 24630027 */  addiu       $v1, $v1, 0x27
/* 04F1EC 8004F63C A1A10000 */  sb          $at, 0x0($t5)
/* 04F1F0 8004F640 914C0001 */  lbu         $t4, 0x1($t2)
/* 04F1F4 8004F644 A1AC0001 */  sb          $t4, 0x1($t5)
/* 04F1F8 8004F648 91410002 */  lbu         $at, 0x2($t2)
/* 04F1FC 8004F64C A1A10002 */  sb          $at, 0x2($t5)
/* 04F200 8004F650 A06E0000 */  sb          $t6, 0x0($v1)
/* 04F204 8004F654 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04F208 8004F658 27BD0050 */  addiu       $sp, $sp, 0x50
/* 04F20C 8004F65C 03E00008 */  jr          $ra
/* 04F210 8004F660 00000000 */   nop

glabel func_8004F664 # 3
/* 04F214 8004F664 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 04F218 8004F668 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04F21C 8004F66C AFB00018 */  sw          $s0, 0x18($sp)
/* 04F220 8004F670 AFA40048 */  sw          $a0, 0x48($sp)
/* 04F224 8004F674 AFA60050 */  sw          $a2, 0x50($sp)
/* 04F228 8004F678 ACA40004 */  sw          $a0, 0x4($a1)
/* 04F22C 8004F67C 8FAF0050 */  lw          $t7, 0x50($sp)
/* 04F230 8004F680 241800FF */  addiu       $t8, $zero, 0xff
/* 04F234 8004F684 00A08025 */  move        $s0, $a1
/* 04F238 8004F688 A0B80065 */  sb          $t8, 0x65($a1)
/* 04F23C 8004F68C ACA00000 */  sw          $zero, 0x0($a1)
/* 04F240 8004F690 00A02025 */  move        $a0, $a1
/* 04F244 8004F694 ACAF0008 */  sw          $t7, 0x8($a1)
/* 04F248 8004F698 0C015678 */  jal         func_800559E0
/* 04F24C 8004F69C 240500FE */   addiu      $a1, $zero, 0xfe
/* 04F250 8004F6A0 24010002 */  addiu       $at, $zero, 0x2
/* 04F254 8004F6A4 14410005 */  bne         $v0, $at, .L8004F6BC
/* 04F258 8004F6A8 00401825 */   move       $v1, $v0
/* 04F25C 8004F6AC 02002025 */  move        $a0, $s0
/* 04F260 8004F6B0 0C015678 */  jal         func_800559E0
/* 04F264 8004F6B4 24050080 */   addiu      $a1, $zero, 0x80
/* 04F268 8004F6B8 00401825 */  move        $v1, $v0
.L8004F6BC:
/* 04F26C 8004F6BC 10400003 */  beqz        $v0, .L8004F6CC
/* 04F270 8004F6C0 8FA40048 */   lw         $a0, 0x48($sp)
/* 04F274 8004F6C4 10000039 */  b           .L8004F7AC
/* 04F278 8004F6C8 00601025 */   move       $v0, $v1
.L8004F6CC:
/* 04F27C 8004F6CC 8FA50050 */  lw          $a1, 0x50($sp)
/* 04F280 8004F6D0 24060400 */  addiu       $a2, $zero, 0x400
/* 04F284 8004F6D4 0C015204 */  jal         func_80054810
/* 04F288 8004F6D8 27A70024 */   addiu      $a3, $sp, 0x24
/* 04F28C 8004F6DC 24010002 */  addiu       $at, $zero, 0x2
/* 04F290 8004F6E0 14410002 */  bne         $v0, $at, .L8004F6EC
/* 04F294 8004F6E4 00401825 */   move       $v1, $v0
/* 04F298 8004F6E8 24030004 */  addiu       $v1, $zero, 0x4
.L8004F6EC:
/* 04F29C 8004F6EC 10600003 */  beqz        $v1, .L8004F6FC
/* 04F2A0 8004F6F0 93B90043 */   lbu        $t9, 0x43($sp)
/* 04F2A4 8004F6F4 1000002D */  b           .L8004F7AC
/* 04F2A8 8004F6F8 00601025 */   move       $v0, $v1
.L8004F6FC:
/* 04F2AC 8004F6FC 240100FE */  addiu       $at, $zero, 0xfe
/* 04F2B0 8004F700 17210003 */  bne         $t9, $at, .L8004F710
/* 04F2B4 8004F704 02002025 */   move       $a0, $s0
/* 04F2B8 8004F708 10000028 */  b           .L8004F7AC
/* 04F2BC 8004F70C 2402000B */   addiu      $v0, $zero, 0xb
.L8004F710:
/* 04F2C0 8004F710 0C015678 */  jal         func_800559E0
/* 04F2C4 8004F714 24050080 */   addiu      $a1, $zero, 0x80
/* 04F2C8 8004F718 24010002 */  addiu       $at, $zero, 0x2
/* 04F2CC 8004F71C 14410002 */  bne         $v0, $at, .L8004F728
/* 04F2D0 8004F720 00401825 */   move       $v1, $v0
/* 04F2D4 8004F724 24030004 */  addiu       $v1, $zero, 0x4
.L8004F728:
/* 04F2D8 8004F728 10600003 */  beqz        $v1, .L8004F738
/* 04F2DC 8004F72C 8FA40048 */   lw         $a0, 0x48($sp)
/* 04F2E0 8004F730 1000001E */  b           .L8004F7AC
/* 04F2E4 8004F734 00601025 */   move       $v0, $v1
.L8004F738:
/* 04F2E8 8004F738 8FA50050 */  lw          $a1, 0x50($sp)
/* 04F2EC 8004F73C 24060400 */  addiu       $a2, $zero, 0x400
/* 04F2F0 8004F740 0C015204 */  jal         func_80054810
/* 04F2F4 8004F744 27A70024 */   addiu      $a3, $sp, 0x24
/* 04F2F8 8004F748 24010002 */  addiu       $at, $zero, 0x2
/* 04F2FC 8004F74C 14410002 */  bne         $v0, $at, .L8004F758
/* 04F300 8004F750 00401825 */   move       $v1, $v0
/* 04F304 8004F754 24030004 */  addiu       $v1, $zero, 0x4
.L8004F758:
/* 04F308 8004F758 10600003 */  beqz        $v1, .L8004F768
/* 04F30C 8004F75C 93A80043 */   lbu        $t0, 0x43($sp)
/* 04F310 8004F760 10000012 */  b           .L8004F7AC
/* 04F314 8004F764 00601025 */   move       $v0, $v1
.L8004F768:
/* 04F318 8004F768 24010080 */  addiu       $at, $zero, 0x80
/* 04F31C 8004F76C 51010004 */  beql        $t0, $at, .L8004F780
/* 04F320 8004F770 8E090000 */   lw         $t1, 0x0($s0)
/* 04F324 8004F774 1000000D */  b           .L8004F7AC
/* 04F328 8004F778 2402000B */   addiu      $v0, $zero, 0xb
/* 04F32C 8004F77C 8E090000 */  lw          $t1, 0x0($s0)
.L8004F780:
/* 04F330 8004F780 8FA40050 */  lw          $a0, 0x50($sp)
/* 04F334 8004F784 3C0D8010 */  lui         $t5, %hi(D_801023D0)
/* 04F338 8004F788 312A0008 */  andi        $t2, $t1, 0x8
/* 04F33C 8004F78C 15400004 */  bnez        $t2, .L8004F7A0
/* 04F340 8004F790 00046180 */   sll        $t4, $a0, 6
/* 04F344 8004F794 25AD23D0 */  addiu       $t5, $t5, %lo(D_801023D0)
/* 04F348 8004F798 0C013D56 */  jal         func_8004F558
/* 04F34C 8004F79C 018D2821 */   addu       $a1, $t4, $t5
.L8004F7A0:
/* 04F350 8004F7A0 240E0008 */  addiu       $t6, $zero, 0x8
/* 04F354 8004F7A4 AE0E0000 */  sw          $t6, 0x0($s0)
/* 04F358 8004F7A8 00001025 */  move        $v0, $zero
.L8004F7AC:
/* 04F35C 8004F7AC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04F360 8004F7B0 8FB00018 */  lw          $s0, 0x18($sp)
/* 04F364 8004F7B4 27BD0048 */  addiu       $sp, $sp, 0x48
/* 04F368 8004F7B8 03E00008 */  jr          $ra
/* 04F36C 8004F7BC 00000000 */   nop

glabel func_8004F7C0 # 4
/* 04F370 8004F7C0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 04F374 8004F7C4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04F378 8004F7C8 0C0150EC */  jal         func_800543B0
/* 04F37C 8004F7CC AFA40030 */   sw         $a0, 0x30($sp)
/* 04F380 8004F7D0 8FA40030 */  lw          $a0, 0x30($sp)
/* 04F384 8004F7D4 0C014065 */  jal         func_80050194
/* 04F388 8004F7D8 27A50024 */   addiu      $a1, $sp, 0x24
/* 04F38C 8004F7DC 10400003 */  beqz        $v0, .L8004F7EC
/* 04F390 8004F7E0 97AE0024 */   lhu        $t6, 0x24($sp)
/* 04F394 8004F7E4 1000000B */  b           .L8004F814
/* 04F398 8004F7E8 00001825 */   move       $v1, $zero
.L8004F7EC:
/* 04F39C 8004F7EC 31CFC000 */  andi        $t7, $t6, 0xc000
/* 04F3A0 8004F7F0 34018000 */  ori         $at, $zero, 0x8000
/* 04F3A4 8004F7F4 11E10005 */  beq         $t7, $at, .L8004F80C
/* 04F3A8 8004F7F8 3401C000 */   ori        $at, $zero, 0xc000
/* 04F3AC 8004F7FC 11E10005 */  beq         $t7, $at, .L8004F814
/* 04F3B0 8004F800 24030002 */   addiu      $v1, $zero, 0x2
/* 04F3B4 8004F804 10000003 */  b           .L8004F814
/* 04F3B8 8004F808 00001825 */   move       $v1, $zero
.L8004F80C:
/* 04F3BC 8004F80C 10000001 */  b           .L8004F814
/* 04F3C0 8004F810 24030001 */   addiu      $v1, $zero, 0x1
.L8004F814:
/* 04F3C4 8004F814 0C0150FD */  jal         func_800543F4
/* 04F3C8 8004F818 AFA3002C */   sw         $v1, 0x2c($sp)
/* 04F3CC 8004F81C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04F3D0 8004F820 8FA2002C */  lw          $v0, 0x2c($sp)
/* 04F3D4 8004F824 27BD0030 */  addiu       $sp, $sp, 0x30
/* 04F3D8 8004F828 03E00008 */  jr          $ra
/* 04F3DC 8004F82C 00000000 */   nop

glabel func_8004F830 # 5
/* 04F3E0 8004F830 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 04F3E4 8004F834 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04F3E8 8004F838 0C0150EC */  jal         func_800543B0
/* 04F3EC 8004F83C AFA40020 */   sw         $a0, 0x20($sp)
/* 04F3F0 8004F840 3C0E8010 */  lui         $t6, %hi(D_80102380)
/* 04F3F4 8004F844 91CE2380 */  lbu         $t6, %lo(D_80102380)($t6)
/* 04F3F8 8004F848 24010001 */  addiu       $at, $zero, 0x1
/* 04F3FC 8004F84C 11C1000B */  beq         $t6, $at, .L8004F87C
/* 04F400 8004F850 00000000 */   nop
/* 04F404 8004F854 0C013E50 */  jal         func_8004F940
/* 04F408 8004F858 00000000 */   nop
/* 04F40C 8004F85C 3C058010 */  lui         $a1, %hi(D_80102340)
/* 04F410 8004F860 24A52340 */  addiu       $a1, $a1, %lo(D_80102340)
/* 04F414 8004F864 0C015108 */  jal         func_80054420
/* 04F418 8004F868 24040001 */   addiu      $a0, $zero, 0x1
/* 04F41C 8004F86C 8FA40020 */  lw          $a0, 0x20($sp)
/* 04F420 8004F870 00002825 */  move        $a1, $zero
/* 04F424 8004F874 0C013A48 */  jal         func_8004E920
/* 04F428 8004F878 24060001 */   addiu      $a2, $zero, 0x1
.L8004F87C:
/* 04F42C 8004F87C 3C058010 */  lui         $a1, %hi(D_80102340)
/* 04F430 8004F880 24A52340 */  addiu       $a1, $a1, %lo(D_80102340)
/* 04F434 8004F884 0C015108 */  jal         func_80054420
/* 04F438 8004F888 00002025 */   move       $a0, $zero
/* 04F43C 8004F88C 240F0001 */  addiu       $t7, $zero, 0x1
/* 04F440 8004F890 3C018010 */  lui         $at, %hi(D_80102380)
/* 04F444 8004F894 AFA2001C */  sw          $v0, 0x1c($sp)
/* 04F448 8004F898 0C0150FD */  jal         func_800543F4
/* 04F44C 8004F89C A02F2380 */   sb         $t7, %lo(D_80102380)($at)
/* 04F450 8004F8A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04F454 8004F8A4 8FA2001C */  lw          $v0, 0x1c($sp)
/* 04F458 8004F8A8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 04F45C 8004F8AC 03E00008 */  jr          $ra
/* 04F460 8004F8B0 00000000 */   nop

glabel func_8004F8B4 # 6
/* 04F464 8004F8B4 3C058010 */  lui         $a1, %hi(D_80102380 + 0x1)
/* 04F468 8004F8B8 24A52381 */  addiu       $a1, $a1, %lo(D_80102380 + 0x1)
/* 04F46C 8004F8BC 90AE0000 */  lbu         $t6, 0x0($a1)
/* 04F470 8004F8C0 3C028010 */  lui         $v0, %hi(D_80102340)
/* 04F474 8004F8C4 27BDFFF0 */  addiu       $sp, $sp, -0x10
/* 04F478 8004F8C8 24422340 */  addiu       $v0, $v0, %lo(D_80102340)
/* 04F47C 8004F8CC 19C0001A */  blez        $t6, .L8004F938
/* 04F480 8004F8D0 00001825 */   move       $v1, $zero
/* 04F484 8004F8D4 27A60004 */  addiu       $a2, $sp, 0x4
.L8004F8D8:
/* 04F488 8004F8D8 88410000 */  lwl         $at, 0x0($v0)
/* 04F48C 8004F8DC 98410003 */  lwr         $at, 0x3($v0)
/* 04F490 8004F8E0 ACC10000 */  sw          $at, 0x0($a2)
/* 04F494 8004F8E4 88580004 */  lwl         $t8, 0x4($v0)
/* 04F498 8004F8E8 98580007 */  lwr         $t8, 0x7($v0)
/* 04F49C 8004F8EC ACD80004 */  sw          $t8, 0x4($a2)
/* 04F4A0 8004F8F0 93B90006 */  lbu         $t9, 0x6($sp)
/* 04F4A4 8004F8F4 332800C0 */  andi        $t0, $t9, 0xc0
/* 04F4A8 8004F8F8 00084903 */  sra         $t1, $t0, 4
/* 04F4AC 8004F8FC 312A00FF */  andi        $t2, $t1, 0xff
/* 04F4B0 8004F900 15400007 */  bnez        $t2, .L8004F920
/* 04F4B4 8004F904 A0890004 */   sb         $t1, 0x4($a0)
/* 04F4B8 8004F908 97AB0008 */  lhu         $t3, 0x8($sp)
/* 04F4BC 8004F90C A48B0000 */  sh          $t3, 0x0($a0)
/* 04F4C0 8004F910 83AC000A */  lb          $t4, 0xa($sp)
/* 04F4C4 8004F914 A08C0002 */  sb          $t4, 0x2($a0)
/* 04F4C8 8004F918 83AD000B */  lb          $t5, 0xb($sp)
/* 04F4CC 8004F91C A08D0003 */  sb          $t5, 0x3($a0)
.L8004F920:
/* 04F4D0 8004F920 90AE0000 */  lbu         $t6, 0x0($a1)
/* 04F4D4 8004F924 24630001 */  addiu       $v1, $v1, 0x1
/* 04F4D8 8004F928 24420008 */  addiu       $v0, $v0, 0x8
/* 04F4DC 8004F92C 006E082A */  slt         $at, $v1, $t6
/* 04F4E0 8004F930 1420FFE9 */  bnez        $at, .L8004F8D8
/* 04F4E4 8004F934 24840006 */   addiu      $a0, $a0, 0x6
.L8004F938:
/* 04F4E8 8004F938 03E00008 */  jr          $ra
/* 04F4EC 8004F93C 27BD0010 */   addiu      $sp, $sp, 0x10

glabel func_8004F940 # 7
/* 04F4F0 8004F940 3C058010 */  lui         $a1, %hi(D_80102340)
/* 04F4F4 8004F944 24A52340 */  addiu       $a1, $a1, %lo(D_80102340)
/* 04F4F8 8004F948 3C048010 */  lui         $a0, %hi(D_80102340)
/* 04F4FC 8004F94C 3C038010 */  lui         $v1, %hi(D_8010237C)
/* 04F500 8004F950 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04F504 8004F954 00A01025 */  move        $v0, $a1
/* 04F508 8004F958 2463237C */  addiu       $v1, $v1, %lo(D_8010237C)
/* 04F50C 8004F95C 24842340 */  addiu       $a0, $a0, %lo(D_80102340)
.L8004F960:
/* 04F510 8004F960 24840004 */  addiu       $a0, $a0, 0x4
/* 04F514 8004F964 0083082B */  sltu        $at, $a0, $v1
/* 04F518 8004F968 1420FFFD */  bnez        $at, .L8004F960
/* 04F51C 8004F96C AC80FFFC */   sw         $zero, -0x4($a0)
/* 04F520 8004F970 3C048010 */  lui         $a0, %hi(D_80102380 + 0x1)
/* 04F524 8004F974 24842381 */  addiu       $a0, $a0, %lo(D_80102380 + 0x1)
/* 04F528 8004F978 908C0000 */  lbu         $t4, 0x0($a0)
/* 04F52C 8004F97C 240E0001 */  addiu       $t6, $zero, 0x1
/* 04F530 8004F980 240F00FF */  addiu       $t7, $zero, 0xff
/* 04F534 8004F984 24180001 */  addiu       $t8, $zero, 0x1
/* 04F538 8004F988 24190004 */  addiu       $t9, $zero, 0x4
/* 04F53C 8004F98C 24080001 */  addiu       $t0, $zero, 0x1
/* 04F540 8004F990 3409FFFF */  ori         $t1, $zero, 0xffff
/* 04F544 8004F994 240AFFFF */  addiu       $t2, $zero, -0x1
/* 04F548 8004F998 240BFFFF */  addiu       $t3, $zero, -0x1
/* 04F54C 8004F99C ACAE003C */  sw          $t6, 0x3c($a1)
/* 04F550 8004F9A0 A3AF000C */  sb          $t7, 0xc($sp)
/* 04F554 8004F9A4 A3B8000D */  sb          $t8, 0xd($sp)
/* 04F558 8004F9A8 A3B9000E */  sb          $t9, 0xe($sp)
/* 04F55C 8004F9AC A3A8000F */  sb          $t0, 0xf($sp)
/* 04F560 8004F9B0 A7A90010 */  sh          $t1, 0x10($sp)
/* 04F564 8004F9B4 A3AA0012 */  sb          $t2, 0x12($sp)
/* 04F568 8004F9B8 A3AB0013 */  sb          $t3, 0x13($sp)
/* 04F56C 8004F9BC 1980000E */  blez        $t4, .L8004F9F8
/* 04F570 8004F9C0 00001825 */   move       $v1, $zero
/* 04F574 8004F9C4 27A5000C */  addiu       $a1, $sp, 0xc
/* 04F578 8004F9C8 8CA10000 */  lw          $at, 0x0($a1)
.L8004F9CC:
/* 04F57C 8004F9CC 24630001 */  addiu       $v1, $v1, 0x1
/* 04F580 8004F9D0 24420008 */  addiu       $v0, $v0, 0x8
/* 04F584 8004F9D4 A841FFF8 */  swl         $at, -0x8($v0)
/* 04F588 8004F9D8 B841FFFB */  swr         $at, -0x5($v0)
/* 04F58C 8004F9DC 8CAE0004 */  lw          $t6, 0x4($a1)
/* 04F590 8004F9E0 A84EFFFC */  swl         $t6, -0x4($v0)
/* 04F594 8004F9E4 B84EFFFF */  swr         $t6, -0x1($v0)
/* 04F598 8004F9E8 908F0000 */  lbu         $t7, 0x0($a0)
/* 04F59C 8004F9EC 006F082A */  slt         $at, $v1, $t7
/* 04F5A0 8004F9F0 5420FFF6 */  bnel        $at, $zero, .L8004F9CC
/* 04F5A4 8004F9F4 8CA10000 */   lw         $at, 0x0($a1)
.L8004F9F8:
/* 04F5A8 8004F9F8 241800FE */  addiu       $t8, $zero, 0xfe
/* 04F5AC 8004F9FC A0580000 */  sb          $t8, 0x0($v0)
/* 04F5B0 8004FA00 03E00008 */  jr          $ra
/* 04F5B4 8004FA04 27BD0018 */   addiu      $sp, $sp, 0x18
/* 04F5B8 8004FA08 00000000 */  nop
/* 04F5BC 8004FA0C 00000000 */  nop
