.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80035250 # 0
/* 034E00 80035250 03E00008 */  jr          $ra
/* 034E04 80035254 00000000 */   nop

glabel func_80035258 # 1
/* 034E08 80035258 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 034E0C 8003525C AFBF0014 */  sw          $ra, 0x14($sp)
/* 034E10 80035260 3C05800F */  lui         $a1, %hi(D_800F6D40)
/* 034E14 80035264 3C06800F */  lui         $a2, %hi(D_800F6D58)
/* 034E18 80035268 24C66D58 */  addiu       $a2, $a2, %lo(D_800F6D58)
/* 034E1C 8003526C 24A56D40 */  addiu       $a1, $a1, %lo(D_800F6D40)
/* 034E20 80035270 24040096 */  addiu       $a0, $zero, 0x96
/* 034E24 80035274 0C0146F0 */  jal         func_80051BC0
/* 034E28 80035278 240700C8 */   addiu      $a3, $zero, 0xc8
/* 034E2C 8003527C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 034E30 80035280 27BD0018 */  addiu       $sp, $sp, 0x18
/* 034E34 80035284 03E00008 */  jr          $ra
/* 034E38 80035288 00000000 */   nop

glabel func_8003528C # 2
/* 034E3C 8003528C 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 034E40 80035290 AFB40034 */  sw          $s4, 0x34($sp)
/* 034E44 80035294 AFB30030 */  sw          $s3, 0x30($sp)
/* 034E48 80035298 AFB2002C */  sw          $s2, 0x2c($sp)
/* 034E4C 8003529C AFB00024 */  sw          $s0, 0x24($sp)
/* 034E50 800352A0 00C08025 */  move        $s0, $a2
/* 034E54 800352A4 00A09025 */  move        $s2, $a1
/* 034E58 800352A8 00809825 */  move        $s3, $a0
/* 034E5C 800352AC 27B40068 */  addiu       $s4, $sp, 0x68
/* 034E60 800352B0 AFBF003C */  sw          $ra, 0x3c($sp)
/* 034E64 800352B4 AFB50038 */  sw          $s5, 0x38($sp)
/* 034E68 800352B8 AFB10028 */  sw          $s1, 0x28($sp)
/* 034E6C 800352BC 02802025 */  move        $a0, $s4
/* 034E70 800352C0 27A50064 */  addiu       $a1, $sp, 0x64
/* 034E74 800352C4 0C013AEC */  jal         func_8004EBB0
/* 034E78 800352C8 24060001 */   addiu      $a2, $zero, 0x1
/* 034E7C 800352CC 02402025 */  move        $a0, $s2
/* 034E80 800352D0 0C0142CC */  jal         func_80050B30
/* 034E84 800352D4 02002825 */   move       $a1, $s0
/* 034E88 800352D8 12000017 */  beqz        $s0, .L80035338
/* 034E8C 800352DC 02008825 */   move       $s1, $s0
/* 034E90 800352E0 27B5004C */  addiu       $s5, $sp, 0x4c
.L800352E4:
/* 034E94 800352E4 2E214001 */  sltiu       $at, $s1, 0x4001
/* 034E98 800352E8 14200003 */  bnez        $at, .L800352F8
/* 034E9C 800352EC 02A02025 */   move       $a0, $s5
/* 034EA0 800352F0 10000002 */  b           .L800352FC
/* 034EA4 800352F4 24104000 */   addiu      $s0, $zero, 0x4000
.L800352F8:
/* 034EA8 800352F8 02208025 */  move        $s0, $s1
.L800352FC:
/* 034EAC 800352FC 00002825 */  move        $a1, $zero
/* 034EB0 80035300 00003025 */  move        $a2, $zero
/* 034EB4 80035304 02603825 */  move        $a3, $s3
/* 034EB8 80035308 AFB20010 */  sw          $s2, 0x10($sp)
/* 034EBC 8003530C AFB00014 */  sw          $s0, 0x14($sp)
/* 034EC0 80035310 0C0142F8 */  jal         func_80050BE0
/* 034EC4 80035314 AFB40018 */   sw         $s4, 0x18($sp)
/* 034EC8 80035318 02802025 */  move        $a0, $s4
/* 034ECC 8003531C 00002825 */  move        $a1, $zero
/* 034ED0 80035320 0C013A48 */  jal         func_8004E920
/* 034ED4 80035324 24060001 */   addiu      $a2, $zero, 0x1
/* 034ED8 80035328 02308823 */  subu        $s1, $s1, $s0
/* 034EDC 8003532C 02709821 */  addu        $s3, $s3, $s0
/* 034EE0 80035330 1620FFEC */  bnez        $s1, .L800352E4
/* 034EE4 80035334 02509021 */   addu       $s2, $s2, $s0
.L80035338:
/* 034EE8 80035338 8FBF003C */  lw          $ra, 0x3c($sp)
/* 034EEC 8003533C 8FB00024 */  lw          $s0, 0x24($sp)
/* 034EF0 80035340 8FB10028 */  lw          $s1, 0x28($sp)
/* 034EF4 80035344 8FB2002C */  lw          $s2, 0x2c($sp)
/* 034EF8 80035348 8FB30030 */  lw          $s3, 0x30($sp)
/* 034EFC 8003534C 8FB40034 */  lw          $s4, 0x34($sp)
/* 034F00 80035350 8FB50038 */  lw          $s5, 0x38($sp)
/* 034F04 80035354 03E00008 */  jr          $ra
/* 034F08 80035358 27BD0080 */   addiu      $sp, $sp, 0x80

glabel func_8003535C # 3
/* 034F0C 8003535C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 034F10 80035360 AFB00018 */  sw          $s0, 0x18($sp)
/* 034F14 80035364 00808025 */  move        $s0, $a0
/* 034F18 80035368 AFBF001C */  sw          $ra, 0x1c($sp)
/* 034F1C 8003536C AFA5002C */  sw          $a1, 0x2c($sp)
/* 034F20 80035370 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 034F24 80035374 00057080 */  sll         $t6, $a1, 2
/* 034F28 80035378 01C02825 */  move        $a1, $t6
/* 034F2C 8003537C 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 034F30 80035380 0C00DA76 */  jal         func_800369D8
/* 034F34 80035384 24060055 */   addiu      $a2, $zero, 0x55
/* 034F38 80035388 8FA5002C */  lw          $a1, 0x2c($sp)
/* 034F3C 8003538C 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 034F40 80035390 AFA20024 */  sw          $v0, 0x24($sp)
/* 034F44 80035394 00057880 */  sll         $t7, $a1, 2
/* 034F48 80035398 01E57823 */  subu        $t7, $t7, $a1
/* 034F4C 8003539C 000F28C0 */  sll         $a1, $t7, 3
/* 034F50 800353A0 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 034F54 800353A4 0C00DA76 */  jal         func_800369D8
/* 034F58 800353A8 2406005A */   addiu      $a2, $zero, 0x5a
/* 034F5C 800353AC AE020024 */  sw          $v0, 0x24($s0)
/* 034F60 800353B0 8FA6002C */  lw          $a2, 0x2c($sp)
/* 034F64 800353B4 8FA50024 */  lw          $a1, 0x24($sp)
/* 034F68 800353B8 0C013AEC */  jal         func_8004EBB0
/* 034F6C 800353BC 2604000C */   addiu      $a0, $s0, 0xc
/* 034F70 800353C0 AE000000 */  sw          $zero, 0x0($s0)
/* 034F74 800353C4 AE000004 */  sw          $zero, 0x4($s0)
/* 034F78 800353C8 8FB8002C */  lw          $t8, 0x2c($sp)
/* 034F7C 800353CC AE180008 */  sw          $t8, 0x8($s0)
/* 034F80 800353D0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 034F84 800353D4 8FB00018 */  lw          $s0, 0x18($sp)
/* 034F88 800353D8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 034F8C 800353DC 03E00008 */  jr          $ra
/* 034F90 800353E0 00000000 */   nop

glabel func_800353E4 # 4
/* 034F94 800353E4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 034F98 800353E8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 034F9C 800353EC AFB00018 */  sw          $s0, 0x18($sp)
/* 034FA0 800353F0 0C00D584 */  jal         func_80035610
/* 034FA4 800353F4 00808025 */   move       $s0, $a0
/* 034FA8 800353F8 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 034FAC 800353FC 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 034FB0 80035400 0C00DB8B */  jal         func_80036E2C
/* 034FB4 80035404 8E050024 */   lw         $a1, 0x24($s0)
/* 034FB8 80035408 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 034FBC 8003540C 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 034FC0 80035410 0C00DB8B */  jal         func_80036E2C
/* 034FC4 80035414 8E050020 */   lw         $a1, 0x20($s0)
/* 034FC8 80035418 AE000000 */  sw          $zero, 0x0($s0)
/* 034FCC 8003541C AE000004 */  sw          $zero, 0x4($s0)
/* 034FD0 80035420 AE000008 */  sw          $zero, 0x8($s0)
/* 034FD4 80035424 8FBF001C */  lw          $ra, 0x1c($sp)
/* 034FD8 80035428 8FB00018 */  lw          $s0, 0x18($sp)
/* 034FDC 8003542C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 034FE0 80035430 03E00008 */  jr          $ra
/* 034FE4 80035434 00000000 */   nop

glabel func_80035438 # 5
/* 034FE8 80035438 8C8E0000 */  lw          $t6, 0x0($a0)
/* 034FEC 8003543C 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 034FF0 80035440 03E00008 */  jr          $ra
/* 034FF4 80035444 AC8F0000 */   sw         $t7, 0x0($a0)

glabel func_80035448 # 6
/* 034FF8 80035448 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 034FFC 8003544C AFB10018 */  sw          $s1, 0x18($sp)
/* 035000 80035450 AFB00014 */  sw          $s0, 0x14($sp)
/* 035004 80035454 00808025 */  move        $s0, $a0
/* 035008 80035458 AFBF001C */  sw          $ra, 0x1c($sp)
/* 03500C 8003545C 2491000C */  addiu       $s1, $a0, 0xc
/* 035010 80035460 02202025 */  move        $a0, $s1
/* 035014 80035464 00002825 */  move        $a1, $zero
/* 035018 80035468 0C013A48 */  jal         func_8004E920
/* 03501C 8003546C 00003025 */   move       $a2, $zero
/* 035020 80035470 5440000A */  bnel        $v0, $zero, .L8003549C
/* 035024 80035474 8FBF001C */   lw         $ra, 0x1c($sp)
.L80035478:
/* 035028 80035478 0C00D50E */  jal         func_80035438
/* 03502C 8003547C 02002025 */   move       $a0, $s0
/* 035030 80035480 02202025 */  move        $a0, $s1
/* 035034 80035484 00002825 */  move        $a1, $zero
/* 035038 80035488 0C013A48 */  jal         func_8004E920
/* 03503C 8003548C 00003025 */   move       $a2, $zero
/* 035040 80035490 1040FFF9 */  beqz        $v0, .L80035478
/* 035044 80035494 00000000 */   nop
/* 035048 80035498 8FBF001C */  lw          $ra, 0x1c($sp)
.L8003549C:
/* 03504C 8003549C 8E020000 */  lw          $v0, 0x0($s0)
/* 035050 800354A0 8FB00014 */  lw          $s0, 0x14($sp)
/* 035054 800354A4 8FB10018 */  lw          $s1, 0x18($sp)
/* 035058 800354A8 03E00008 */  jr          $ra
/* 03505C 800354AC 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_800354B0 # 7
/* 035060 800354B0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 035064 800354B4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 035068 800354B8 AFB00028 */  sw          $s0, 0x28($sp)
/* 03506C 800354BC 00808025 */  move        $s0, $a0
/* 035070 800354C0 AFA5003C */  sw          $a1, 0x3c($sp)
/* 035074 800354C4 AFA60040 */  sw          $a2, 0x40($sp)
/* 035078 800354C8 0C00D512 */  jal         func_80035448
/* 03507C 800354CC AFA70044 */   sw         $a3, 0x44($sp)
/* 035080 800354D0 8E0E0008 */  lw          $t6, 0x8($s0)
/* 035084 800354D4 2604000C */  addiu       $a0, $s0, 0xc
/* 035088 800354D8 00002825 */  move        $a1, $zero
/* 03508C 800354DC 544E0006 */  bnel        $v0, $t6, .L800354F8
/* 035090 800354E0 260F000C */   addiu      $t7, $s0, 0xc
/* 035094 800354E4 0C013A48 */  jal         func_8004E920
/* 035098 800354E8 24060001 */   addiu      $a2, $zero, 0x1
/* 03509C 800354EC 0C00D50E */  jal         func_80035438
/* 0350A0 800354F0 02002025 */   move       $a0, $s0
/* 0350A4 800354F4 260F000C */  addiu       $t7, $s0, 0xc
.L800354F8:
/* 0350A8 800354F8 AFAF0034 */  sw          $t7, 0x34($sp)
/* 0350AC 800354FC 8FA40040 */  lw          $a0, 0x40($sp)
/* 0350B0 80035500 0C0142CC */  jal         func_80050B30
/* 0350B4 80035504 8FA50044 */   lw         $a1, 0x44($sp)
/* 0350B8 80035508 8E190004 */  lw          $t9, 0x4($s0)
/* 0350BC 8003550C 8E180024 */  lw          $t8, 0x24($s0)
/* 0350C0 80035510 8FA90040 */  lw          $t1, 0x40($sp)
/* 0350C4 80035514 00194080 */  sll         $t0, $t9, 2
/* 0350C8 80035518 8FAA0044 */  lw          $t2, 0x44($sp)
/* 0350CC 8003551C 8FAB0034 */  lw          $t3, 0x34($sp)
/* 0350D0 80035520 01194023 */  subu        $t0, $t0, $t9
/* 0350D4 80035524 000840C0 */  sll         $t0, $t0, 3
/* 0350D8 80035528 00002825 */  move        $a1, $zero
/* 0350DC 8003552C 00003025 */  move        $a2, $zero
/* 0350E0 80035530 8FA7003C */  lw          $a3, 0x3c($sp)
/* 0350E4 80035534 03082021 */  addu        $a0, $t8, $t0
/* 0350E8 80035538 AFA90010 */  sw          $t1, 0x10($sp)
/* 0350EC 8003553C AFAA0014 */  sw          $t2, 0x14($sp)
/* 0350F0 80035540 0C0142F8 */  jal         func_80050BE0
/* 0350F4 80035544 AFAB0018 */   sw         $t3, 0x18($sp)
/* 0350F8 80035548 8E0E0004 */  lw          $t6, 0x4($s0)
/* 0350FC 8003554C 8E0C0000 */  lw          $t4, 0x0($s0)
/* 035100 80035550 8E180008 */  lw          $t8, 0x8($s0)
/* 035104 80035554 25CF0001 */  addiu       $t7, $t6, 0x1
/* 035108 80035558 258D0001 */  addiu       $t5, $t4, 0x1
/* 03510C 8003555C 01F8082A */  slt         $at, $t7, $t8
/* 035110 80035560 AE0D0000 */  sw          $t5, 0x0($s0)
/* 035114 80035564 14200002 */  bnez        $at, .L80035570
/* 035118 80035568 AE0F0004 */   sw         $t7, 0x4($s0)
/* 03511C 8003556C AE000004 */  sw          $zero, 0x4($s0)
.L80035570:
/* 035120 80035570 8FBF002C */  lw          $ra, 0x2c($sp)
/* 035124 80035574 8E020000 */  lw          $v0, 0x0($s0)
/* 035128 80035578 8FB00028 */  lw          $s0, 0x28($sp)
/* 03512C 8003557C 03E00008 */  jr          $ra
/* 035130 80035580 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_80035584 # 8
/* 035134 80035584 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 035138 80035588 AFB40028 */  sw          $s4, 0x28($sp)
/* 03513C 8003558C AFB30024 */  sw          $s3, 0x24($sp)
/* 035140 80035590 AFB20020 */  sw          $s2, 0x20($sp)
/* 035144 80035594 AFB1001C */  sw          $s1, 0x1c($sp)
/* 035148 80035598 0080A025 */  move        $s4, $a0
/* 03514C 8003559C AFBF002C */  sw          $ra, 0x2c($sp)
/* 035150 800355A0 AFB00018 */  sw          $s0, 0x18($sp)
/* 035154 800355A4 00A09025 */  move        $s2, $a1
/* 035158 800355A8 00C09825 */  move        $s3, $a2
/* 03515C 800355AC 10E0000F */  beqz        $a3, .L800355EC
/* 035160 800355B0 00E08825 */   move       $s1, $a3
.L800355B4:
/* 035164 800355B4 2E214001 */  sltiu       $at, $s1, 0x4001
/* 035168 800355B8 14200003 */  bnez        $at, .L800355C8
/* 03516C 800355BC 02802025 */   move       $a0, $s4
/* 035170 800355C0 10000002 */  b           .L800355CC
/* 035174 800355C4 24104000 */   addiu      $s0, $zero, 0x4000
.L800355C8:
/* 035178 800355C8 02208025 */  move        $s0, $s1
.L800355CC:
/* 03517C 800355CC 02402825 */  move        $a1, $s2
/* 035180 800355D0 02603025 */  move        $a2, $s3
/* 035184 800355D4 0C00D52C */  jal         func_800354B0
/* 035188 800355D8 02003825 */   move       $a3, $s0
/* 03518C 800355DC 02308823 */  subu        $s1, $s1, $s0
/* 035190 800355E0 02509021 */  addu        $s2, $s2, $s0
/* 035194 800355E4 1620FFF3 */  bnez        $s1, .L800355B4
/* 035198 800355E8 02709821 */   addu       $s3, $s3, $s0
.L800355EC:
/* 03519C 800355EC 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0351A0 800355F0 8E820000 */  lw          $v0, 0x0($s4)
/* 0351A4 800355F4 8FB40028 */  lw          $s4, 0x28($sp)
/* 0351A8 800355F8 8FB00018 */  lw          $s0, 0x18($sp)
/* 0351AC 800355FC 8FB1001C */  lw          $s1, 0x1c($sp)
/* 0351B0 80035600 8FB20020 */  lw          $s2, 0x20($sp)
/* 0351B4 80035604 8FB30024 */  lw          $s3, 0x24($sp)
/* 0351B8 80035608 03E00008 */  jr          $ra
/* 0351BC 8003560C 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_80035610 # 9
/* 0351C0 80035610 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0351C4 80035614 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0351C8 80035618 AFB10018 */  sw          $s1, 0x18($sp)
/* 0351CC 8003561C AFB00014 */  sw          $s0, 0x14($sp)
/* 0351D0 80035620 8C8E0000 */  lw          $t6, 0x0($a0)
/* 0351D4 80035624 00808025 */  move        $s0, $a0
/* 0351D8 80035628 2491000C */  addiu       $s1, $a0, 0xc
/* 0351DC 8003562C 19C00009 */  blez        $t6, .L80035654
/* 0351E0 80035630 02202025 */   move       $a0, $s1
.L80035634:
/* 0351E4 80035634 00002825 */  move        $a1, $zero
/* 0351E8 80035638 0C013A48 */  jal         func_8004E920
/* 0351EC 8003563C 24060001 */   addiu      $a2, $zero, 0x1
/* 0351F0 80035640 0C00D50E */  jal         func_80035438
/* 0351F4 80035644 02002025 */   move       $a0, $s0
/* 0351F8 80035648 8E0F0000 */  lw          $t7, 0x0($s0)
/* 0351FC 8003564C 5DE0FFF9 */  bgtzl       $t7, .L80035634
/* 035200 80035650 02202025 */   move       $a0, $s1
.L80035654:
/* 035204 80035654 8FBF001C */  lw          $ra, 0x1c($sp)
/* 035208 80035658 8FB00014 */  lw          $s0, 0x14($sp)
/* 03520C 8003565C 8FB10018 */  lw          $s1, 0x18($sp)
/* 035210 80035660 03E00008 */  jr          $ra
/* 035214 80035664 27BD0020 */   addiu      $sp, $sp, 0x20
/* 035218 80035668 00000000 */  nop
/* 03521C 8003566C 00000000 */  nop
