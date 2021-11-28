.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel _VirtualToPhysicalTask # 0
/* 051E70 800522C0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 051E74 800522C4 3C0E8010 */  lui         $t6, %hi(tmpTask)
/* 051E78 800522C8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 051E7C 800522CC AFA40020 */  sw          $a0, 0x20($sp)
/* 051E80 800522D0 25CE4A00 */  addiu       $t6, $t6, %lo(tmpTask)
/* 051E84 800522D4 AFAE001C */  sw          $t6, 0x1c($sp)
/* 051E88 800522D8 01C02825 */  move        $a1, $t6
/* 051E8C 800522DC 8FA40020 */  lw          $a0, 0x20($sp)
/* 051E90 800522E0 0C013E84 */  jal         bcopy
/* 051E94 800522E4 24060040 */   addiu      $a2, $zero, 0x40
/* 051E98 800522E8 8FAF001C */  lw          $t7, 0x1c($sp)
/* 051E9C 800522EC 8DF80010 */  lw          $t8, 0x10($t7)
/* 051EA0 800522F0 13000005 */  beqz        $t8, .L80052308
/* 051EA4 800522F4 00000000 */   nop
/* 051EA8 800522F8 0C0140F4 */  jal         osVirtualToPhysical
/* 051EAC 800522FC 03002025 */   move       $a0, $t8
/* 051EB0 80052300 8FB9001C */  lw          $t9, 0x1c($sp)
/* 051EB4 80052304 AF220010 */  sw          $v0, 0x10($t9)
.L80052308:
/* 051EB8 80052308 8FA8001C */  lw          $t0, 0x1c($sp)
/* 051EBC 8005230C 8D090018 */  lw          $t1, 0x18($t0)
/* 051EC0 80052310 11200005 */  beqz        $t1, .L80052328
/* 051EC4 80052314 00000000 */   nop
/* 051EC8 80052318 0C0140F4 */  jal         osVirtualToPhysical
/* 051ECC 8005231C 01202025 */   move       $a0, $t1
/* 051ED0 80052320 8FAA001C */  lw          $t2, 0x1c($sp)
/* 051ED4 80052324 AD420018 */  sw          $v0, 0x18($t2)
.L80052328:
/* 051ED8 80052328 8FAB001C */  lw          $t3, 0x1c($sp)
/* 051EDC 8005232C 8D6C0020 */  lw          $t4, 0x20($t3)
/* 051EE0 80052330 11800005 */  beqz        $t4, .L80052348
/* 051EE4 80052334 00000000 */   nop
/* 051EE8 80052338 0C0140F4 */  jal         osVirtualToPhysical
/* 051EEC 8005233C 01802025 */   move       $a0, $t4
/* 051EF0 80052340 8FAD001C */  lw          $t5, 0x1c($sp)
/* 051EF4 80052344 ADA20020 */  sw          $v0, 0x20($t5)
.L80052348:
/* 051EF8 80052348 8FAE001C */  lw          $t6, 0x1c($sp)
/* 051EFC 8005234C 8DCF0028 */  lw          $t7, 0x28($t6)
/* 051F00 80052350 11E00005 */  beqz        $t7, .L80052368
/* 051F04 80052354 00000000 */   nop
/* 051F08 80052358 0C0140F4 */  jal         osVirtualToPhysical
/* 051F0C 8005235C 01E02025 */   move       $a0, $t7
/* 051F10 80052360 8FB8001C */  lw          $t8, 0x1c($sp)
/* 051F14 80052364 AF020028 */  sw          $v0, 0x28($t8)
.L80052368:
/* 051F18 80052368 8FB9001C */  lw          $t9, 0x1c($sp)
/* 051F1C 8005236C 8F28002C */  lw          $t0, 0x2c($t9)
/* 051F20 80052370 11000005 */  beqz        $t0, .L80052388
/* 051F24 80052374 00000000 */   nop
/* 051F28 80052378 0C0140F4 */  jal         osVirtualToPhysical
/* 051F2C 8005237C 01002025 */   move       $a0, $t0
/* 051F30 80052380 8FA9001C */  lw          $t1, 0x1c($sp)
/* 051F34 80052384 AD22002C */  sw          $v0, 0x2c($t1)
.L80052388:
/* 051F38 80052388 8FAA001C */  lw          $t2, 0x1c($sp)
/* 051F3C 8005238C 8D4B0030 */  lw          $t3, 0x30($t2)
/* 051F40 80052390 11600005 */  beqz        $t3, .L800523A8
/* 051F44 80052394 00000000 */   nop
/* 051F48 80052398 0C0140F4 */  jal         osVirtualToPhysical
/* 051F4C 8005239C 01602025 */   move       $a0, $t3
/* 051F50 800523A0 8FAC001C */  lw          $t4, 0x1c($sp)
/* 051F54 800523A4 AD820030 */  sw          $v0, 0x30($t4)
.L800523A8:
/* 051F58 800523A8 8FAD001C */  lw          $t5, 0x1c($sp)
/* 051F5C 800523AC 8DAE0038 */  lw          $t6, 0x38($t5)
/* 051F60 800523B0 11C00005 */  beqz        $t6, .L800523C8
/* 051F64 800523B4 00000000 */   nop
/* 051F68 800523B8 0C0140F4 */  jal         osVirtualToPhysical
/* 051F6C 800523BC 01C02025 */   move       $a0, $t6
/* 051F70 800523C0 8FAF001C */  lw          $t7, 0x1c($sp)
/* 051F74 800523C4 ADE20038 */  sw          $v0, 0x38($t7)
.L800523C8:
/* 051F78 800523C8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 051F7C 800523CC 8FA2001C */  lw          $v0, 0x1c($sp)
/* 051F80 800523D0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 051F84 800523D4 03E00008 */  jr          $ra
/* 051F88 800523D8 00000000 */   nop

glabel osSpTaskLoad # 1
/* 051F8C 800523DC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 051F90 800523E0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 051F94 800523E4 AFA40020 */  sw          $a0, 0x20($sp)
/* 051F98 800523E8 0C0148B0 */  jal         _VirtualToPhysicalTask
/* 051F9C 800523EC 8FA40020 */   lw         $a0, 0x20($sp)
/* 051FA0 800523F0 AFA2001C */  sw          $v0, 0x1c($sp)
/* 051FA4 800523F4 8FAE001C */  lw          $t6, 0x1c($sp)
/* 051FA8 800523F8 8DCF0004 */  lw          $t7, 0x4($t6)
/* 051FAC 800523FC 31F80001 */  andi        $t8, $t7, 0x1
/* 051FB0 80052400 13000017 */  beqz        $t8, .L80052460
/* 051FB4 80052404 00000000 */   nop
/* 051FB8 80052408 8DD90038 */  lw          $t9, 0x38($t6)
/* 051FBC 8005240C 2401FFFE */  addiu       $at, $zero, -0x2
/* 051FC0 80052410 ADD90018 */  sw          $t9, 0x18($t6)
/* 051FC4 80052414 8FA8001C */  lw          $t0, 0x1c($sp)
/* 051FC8 80052418 8D09003C */  lw          $t1, 0x3c($t0)
/* 051FCC 8005241C AD09001C */  sw          $t1, 0x1c($t0)
/* 051FD0 80052420 8FAA0020 */  lw          $t2, 0x20($sp)
/* 051FD4 80052424 8D4B0004 */  lw          $t3, 0x4($t2)
/* 051FD8 80052428 01616024 */  and         $t4, $t3, $at
/* 051FDC 8005242C AD4C0004 */  sw          $t4, 0x4($t2)
/* 051FE0 80052430 8FAD001C */  lw          $t5, 0x1c($sp)
/* 051FE4 80052434 8DAF0004 */  lw          $t7, 0x4($t5)
/* 051FE8 80052438 31F80004 */  andi        $t8, $t7, 0x4
/* 051FEC 8005243C 13000008 */  beqz        $t8, .L80052460
/* 051FF0 80052440 00000000 */   nop
/* 051FF4 80052444 8FB90020 */  lw          $t9, 0x20($sp)
/* 051FF8 80052448 3C01A000 */  lui         $at, 0xa000
/* 051FFC 8005244C 8F2E0038 */  lw          $t6, 0x38($t9)
/* 052000 80052450 25C90BFC */  addiu       $t1, $t6, 0xbfc
/* 052004 80052454 01214025 */  or          $t0, $t1, $at
/* 052008 80052458 8D0B0000 */  lw          $t3, 0x0($t0)
/* 05200C 8005245C ADAB0010 */  sw          $t3, 0x10($t5)
.L80052460:
/* 052010 80052460 8FA4001C */  lw          $a0, 0x1c($sp)
/* 052014 80052464 0C014868 */  jal         func_800521A0
/* 052018 80052468 24050040 */   addiu      $a1, $zero, 0x40
/* 05201C 8005246C 0C016528 */  jal         __osSpSetStatus
/* 052020 80052470 24042B00 */   addiu      $a0, $zero, 0x2b00
/* 052024 80052474 3C040400 */  lui         $a0, 0x400
/* 052028 80052478 0C015F10 */  jal         func_80057C40
/* 05202C 8005247C 34841000 */   ori        $a0, $a0, 0x1000
/* 052030 80052480 2401FFFF */  addiu       $at, $zero, -0x1
/* 052034 80052484 14410007 */  bne         $v0, $at, .L800524A4
/* 052038 80052488 00000000 */   nop
.L8005248C:
/* 05203C 8005248C 3C040400 */  lui         $a0, 0x400
/* 052040 80052490 0C015F10 */  jal         func_80057C40
/* 052044 80052494 34841000 */   ori        $a0, $a0, 0x1000
/* 052048 80052498 2401FFFF */  addiu       $at, $zero, -0x1
/* 05204C 8005249C 1041FFFB */  beq         $v0, $at, .L8005248C
/* 052050 800524A0 00000000 */   nop
.L800524A4:
/* 052054 800524A4 3C050400 */  lui         $a1, 0x400
/* 052058 800524A8 34A50FC0 */  ori         $a1, $a1, 0xfc0
/* 05205C 800524AC 24040001 */  addiu       $a0, $zero, 0x1
/* 052060 800524B0 8FA6001C */  lw          $a2, 0x1c($sp)
/* 052064 800524B4 0C016530 */  jal         __osSpRawStartDma
/* 052068 800524B8 24070040 */   addiu      $a3, $zero, 0x40
/* 05206C 800524BC 2401FFFF */  addiu       $at, $zero, -0x1
/* 052070 800524C0 1441000A */  bne         $v0, $at, .L800524EC
/* 052074 800524C4 00000000 */   nop
.L800524C8:
/* 052078 800524C8 3C050400 */  lui         $a1, 0x400
/* 05207C 800524CC 34A50FC0 */  ori         $a1, $a1, 0xfc0
/* 052080 800524D0 24040001 */  addiu       $a0, $zero, 0x1
/* 052084 800524D4 8FA6001C */  lw          $a2, 0x1c($sp)
/* 052088 800524D8 0C016530 */  jal         __osSpRawStartDma
/* 05208C 800524DC 24070040 */   addiu      $a3, $zero, 0x40
/* 052090 800524E0 2401FFFF */  addiu       $at, $zero, -0x1
/* 052094 800524E4 1041FFF8 */  beq         $v0, $at, .L800524C8
/* 052098 800524E8 00000000 */   nop
.L800524EC:
/* 05209C 800524EC 0C016554 */  jal         __osSpDeviceBusy
/* 0520A0 800524F0 00000000 */   nop
/* 0520A4 800524F4 10400005 */  beqz        $v0, .L8005250C
/* 0520A8 800524F8 00000000 */   nop
.L800524FC:
/* 0520AC 800524FC 0C016554 */  jal         __osSpDeviceBusy
/* 0520B0 80052500 00000000 */   nop
/* 0520B4 80052504 1440FFFD */  bnez        $v0, .L800524FC
/* 0520B8 80052508 00000000 */   nop
.L8005250C:
/* 0520BC 8005250C 8FAC001C */  lw          $t4, 0x1c($sp)
/* 0520C0 80052510 3C050400 */  lui         $a1, 0x400
/* 0520C4 80052514 34A51000 */  ori         $a1, $a1, 0x1000
/* 0520C8 80052518 24040001 */  addiu       $a0, $zero, 0x1
/* 0520CC 8005251C 8D860008 */  lw          $a2, 0x8($t4)
/* 0520D0 80052520 0C016530 */  jal         __osSpRawStartDma
/* 0520D4 80052524 8D87000C */   lw         $a3, 0xc($t4)
/* 0520D8 80052528 2401FFFF */  addiu       $at, $zero, -0x1
/* 0520DC 8005252C 1441000B */  bne         $v0, $at, .L8005255C
/* 0520E0 80052530 00000000 */   nop
.L80052534:
/* 0520E4 80052534 8FAA001C */  lw          $t2, 0x1c($sp)
/* 0520E8 80052538 3C050400 */  lui         $a1, 0x400
/* 0520EC 8005253C 34A51000 */  ori         $a1, $a1, 0x1000
/* 0520F0 80052540 24040001 */  addiu       $a0, $zero, 0x1
/* 0520F4 80052544 8D460008 */  lw          $a2, 0x8($t2)
/* 0520F8 80052548 0C016530 */  jal         __osSpRawStartDma
/* 0520FC 8005254C 8D47000C */   lw         $a3, 0xc($t2)
/* 052100 80052550 2401FFFF */  addiu       $at, $zero, -0x1
/* 052104 80052554 1041FFF7 */  beq         $v0, $at, .L80052534
/* 052108 80052558 00000000 */   nop
.L8005255C:
/* 05210C 8005255C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 052110 80052560 27BD0020 */  addiu       $sp, $sp, 0x20
/* 052114 80052564 03E00008 */  jr          $ra
/* 052118 80052568 00000000 */   nop

glabel func_8005256C # 2
/* 05211C 8005256C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 052120 80052570 AFBF0014 */  sw          $ra, 0x14($sp)
/* 052124 80052574 0C016554 */  jal         __osSpDeviceBusy
/* 052128 80052578 AFA40018 */   sw         $a0, 0x18($sp)
/* 05212C 8005257C 10400005 */  beqz        $v0, .L80052594
/* 052130 80052580 00000000 */   nop
.L80052584:
/* 052134 80052584 0C016554 */  jal         __osSpDeviceBusy
/* 052138 80052588 00000000 */   nop
/* 05213C 8005258C 1440FFFD */  bnez        $v0, .L80052584
/* 052140 80052590 00000000 */   nop
.L80052594:
/* 052144 80052594 0C016528 */  jal         __osSpSetStatus
/* 052148 80052598 24040125 */   addiu      $a0, $zero, 0x125
/* 05214C 8005259C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 052150 800525A0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 052154 800525A4 03E00008 */  jr          $ra
/* 052158 800525A8 00000000 */   nop
/* 05215C 800525AC 00000000 */  nop