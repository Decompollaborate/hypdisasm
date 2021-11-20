.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8002B6B0 # 0
/* 02B260 8002B6B0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02B264 8002B6B4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 02B268 8002B6B8 3C04800F */  lui         $a0, %hi(D_800F1080)
/* 02B26C 8002B6BC AFB30020 */  sw          $s3, 0x20($sp)
/* 02B270 8002B6C0 AFB2001C */  sw          $s2, 0x1c($sp)
/* 02B274 8002B6C4 AFB10018 */  sw          $s1, 0x18($sp)
/* 02B278 8002B6C8 AFB00014 */  sw          $s0, 0x14($sp)
/* 02B27C 8002B6CC 24841080 */  addiu       $a0, $a0, %lo(D_800F1080)
/* 02B280 8002B6D0 0C014388 */  jal         bzero
/* 02B284 8002B6D4 24050028 */   addiu      $a1, $zero, 0x28
/* 02B288 8002B6D8 3C04800F */  lui         $a0, %hi(D_800F10B0)
/* 02B28C 8002B6DC 248410B0 */  addiu       $a0, $a0, %lo(D_800F10B0)
/* 02B290 8002B6E0 0C014388 */  jal         bzero
/* 02B294 8002B6E4 240509C4 */   addiu      $a1, $zero, 0x9c4
/* 02B298 8002B6E8 3C01800F */  lui         $at, %hi(D_800F10A8)
/* 02B29C 8002B6EC AC2010A8 */  sw          $zero, %lo(D_800F10A8)($at)
/* 02B2A0 8002B6F0 3C01800F */  lui         $at, %hi(D_800F1AB4)
/* 02B2A4 8002B6F4 AC201AB4 */  sw          $zero, %lo(D_800F1AB4)($at)
/* 02B2A8 8002B6F8 24030001 */  addiu       $v1, $zero, 0x1
/* 02B2AC 8002B6FC 3C01800F */  lui         $at, %hi(D_800F1AB8)
/* 02B2B0 8002B700 AC231AB8 */  sw          $v1, %lo(D_800F1AB8)($at)
/* 02B2B4 8002B704 3C01800F */  lui         $at, %hi(D_800F1A80)
/* 02B2B8 8002B708 AC201A80 */  sw          $zero, %lo(D_800F1A80)($at)
/* 02B2BC 8002B70C 3C01800F */  lui         $at, %hi(D_800F1ABC)
/* 02B2C0 8002B710 AC201ABC */  sw          $zero, %lo(D_800F1ABC)($at)
/* 02B2C4 8002B714 3C01800F */  lui         $at, %hi(D_800F1A74)
/* 02B2C8 8002B718 AC201A74 */  sw          $zero, %lo(D_800F1A74)($at)
/* 02B2CC 8002B71C 3C01800F */  lui         $at, %hi(D_800F1A78)
/* 02B2D0 8002B720 AC201A78 */  sw          $zero, %lo(D_800F1A78)($at)
/* 02B2D4 8002B724 3C01800F */  lui         $at, %hi(D_800F1A7C)
/* 02B2D8 8002B728 AC231A7C */  sw          $v1, %lo(D_800F1A7C)($at)
/* 02B2DC 8002B72C 3C01800F */  lui         $at, %hi(D_800F1AC0)
/* 02B2E0 8002B730 240E0004 */  addiu       $t6, $zero, 0x4
/* 02B2E4 8002B734 3C11800F */  lui         $s1, %hi(D_800F1AD4)
/* 02B2E8 8002B738 3C10800A */  lui         $s0, %hi(D_80099DA4)
/* 02B2EC 8002B73C 3C13800A */  lui         $s3, %hi(D_80099DBC)
/* 02B2F0 8002B740 3C128007 */  lui         $s2, %hi(D_8006B090)
/* 02B2F4 8002B744 AC2E1AC0 */  sw          $t6, %lo(D_800F1AC0)($at)
/* 02B2F8 8002B748 2652B090 */  addiu       $s2, $s2, %lo(D_8006B090)
/* 02B2FC 8002B74C 26739DBC */  addiu       $s3, $s3, %lo(D_80099DBC)
/* 02B300 8002B750 26109DA4 */  addiu       $s0, $s0, %lo(D_80099DA4)
/* 02B304 8002B754 26311AD4 */  addiu       $s1, $s1, %lo(D_800F1AD4)
.L8002B758:
/* 02B308 8002B758 8E0F0000 */  lw          $t7, 0x0($s0)
/* 02B30C 8002B75C 02202025 */  move        $a0, $s1
/* 02B310 8002B760 000FC080 */  sll         $t8, $t7, 2
/* 02B314 8002B764 0258C821 */  addu        $t9, $s2, $t8
/* 02B318 8002B768 0C002973 */  jal         func_8000A5CC
/* 02B31C 8002B76C 8F250000 */   lw         $a1, 0x0($t9)
/* 02B320 8002B770 26100004 */  addiu       $s0, $s0, 0x4
/* 02B324 8002B774 1613FFF8 */  bne         $s0, $s3, .L8002B758
/* 02B328 8002B778 2631000C */   addiu      $s1, $s1, 0xc
/* 02B32C 8002B77C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 02B330 8002B780 8FB00014 */  lw          $s0, 0x14($sp)
/* 02B334 8002B784 8FB10018 */  lw          $s1, 0x18($sp)
/* 02B338 8002B788 8FB2001C */  lw          $s2, 0x1c($sp)
/* 02B33C 8002B78C 8FB30020 */  lw          $s3, 0x20($sp)
/* 02B340 8002B790 03E00008 */  jr          $ra
/* 02B344 8002B794 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8002B798 # 1
/* 02B348 8002B798 3C03800F */  lui         $v1, %hi(D_800F1AB4)
/* 02B34C 8002B79C 24631AB4 */  addiu       $v1, $v1, %lo(D_800F1AB4)
/* 02B350 8002B7A0 8C620000 */  lw          $v0, 0x0($v1)
/* 02B354 8002B7A4 3C01800F */  lui         $at, %hi(D_800F1A88)
/* 02B358 8002B7A8 3C05800F */  lui         $a1, %hi(D_800F1AB8)
/* 02B35C 8002B7AC 00027080 */  sll         $t6, $v0, 2
/* 02B360 8002B7B0 002E0821 */  addu        $at, $at, $t6
/* 02B364 8002B7B4 244F0001 */  addiu       $t7, $v0, 0x1
/* 02B368 8002B7B8 AC241A88 */  sw          $a0, %lo(D_800F1A88)($at)
/* 02B36C 8002B7BC AC6F0000 */  sw          $t7, 0x0($v1)
/* 02B370 8002B7C0 05E10005 */  bgez        $t7, .L8002B7D8
/* 02B374 8002B7C4 01E01025 */   move       $v0, $t7
.L8002B7C8:
/* 02B378 8002B7C8 2458000B */  addiu       $t8, $v0, 0xb
/* 02B37C 8002B7CC AC780000 */  sw          $t8, 0x0($v1)
/* 02B380 8002B7D0 0700FFFD */  bltz        $t8, .L8002B7C8
/* 02B384 8002B7D4 03001025 */   move       $v0, $t8
.L8002B7D8:
/* 02B388 8002B7D8 2841000B */  slti        $at, $v0, 0xb
/* 02B38C 8002B7DC 14200006 */  bnez        $at, .L8002B7F8
/* 02B390 8002B7E0 24A51AB8 */   addiu      $a1, $a1, %lo(D_800F1AB8)
.L8002B7E4:
/* 02B394 8002B7E4 2459FFF5 */  addiu       $t9, $v0, -0xb
/* 02B398 8002B7E8 2B21000B */  slti        $at, $t9, 0xb
/* 02B39C 8002B7EC AC790000 */  sw          $t9, 0x0($v1)
/* 02B3A0 8002B7F0 1020FFFC */  beqz        $at, .L8002B7E4
/* 02B3A4 8002B7F4 03201025 */   move       $v0, $t9
.L8002B7F8:
/* 02B3A8 8002B7F8 8CA30000 */  lw          $v1, 0x0($a1)
/* 02B3AC 8002B7FC 1462000F */  bne         $v1, $v0, .L8002B83C
/* 02B3B0 8002B800 24680001 */   addiu      $t0, $v1, 0x1
/* 02B3B4 8002B804 ACA80000 */  sw          $t0, 0x0($a1)
/* 02B3B8 8002B808 05010005 */  bgez        $t0, .L8002B820
/* 02B3BC 8002B80C 01001825 */   move       $v1, $t0
.L8002B810:
/* 02B3C0 8002B810 2469000B */  addiu       $t1, $v1, 0xb
/* 02B3C4 8002B814 ACA90000 */  sw          $t1, 0x0($a1)
/* 02B3C8 8002B818 0520FFFD */  bltz        $t1, .L8002B810
/* 02B3CC 8002B81C 01201825 */   move       $v1, $t1
.L8002B820:
/* 02B3D0 8002B820 2861000B */  slti        $at, $v1, 0xb
/* 02B3D4 8002B824 14200005 */  bnez        $at, .L8002B83C
.L8002B828:
/* 02B3D8 8002B828 246AFFF5 */   addiu      $t2, $v1, -0xb
/* 02B3DC 8002B82C 2941000B */  slti        $at, $t2, 0xb
/* 02B3E0 8002B830 ACAA0000 */  sw          $t2, 0x0($a1)
/* 02B3E4 8002B834 1020FFFC */  beqz        $at, .L8002B828
/* 02B3E8 8002B838 01401825 */   move       $v1, $t2
.L8002B83C:
/* 02B3EC 8002B83C 03E00008 */  jr          $ra
/* 02B3F0 8002B840 00801025 */   move       $v0, $a0

glabel func_8002B844 # 2
/* 02B3F4 8002B844 3C02800F */  lui         $v0, %hi(D_800F1AB4)
/* 02B3F8 8002B848 24421AB4 */  addiu       $v0, $v0, %lo(D_800F1AB4)
/* 02B3FC 8002B84C 8C4E0000 */  lw          $t6, 0x0($v0)
/* 02B400 8002B850 3C08800F */  lui         $t0, %hi(D_800F1AB8)
/* 02B404 8002B854 25C3FFFF */  addiu       $v1, $t6, -0x1
/* 02B408 8002B858 04610005 */  bgez        $v1, .L8002B870
/* 02B40C 8002B85C AC430000 */   sw         $v1, 0x0($v0)
.L8002B860:
/* 02B410 8002B860 2478000B */  addiu       $t8, $v1, 0xb
/* 02B414 8002B864 AC580000 */  sw          $t8, 0x0($v0)
/* 02B418 8002B868 0700FFFD */  bltz        $t8, .L8002B860
/* 02B41C 8002B86C 03001825 */   move       $v1, $t8
.L8002B870:
/* 02B420 8002B870 2861000B */  slti        $at, $v1, 0xb
/* 02B424 8002B874 14200005 */  bnez        $at, .L8002B88C
.L8002B878:
/* 02B428 8002B878 2479FFF5 */   addiu      $t9, $v1, -0xb
/* 02B42C 8002B87C 2B21000B */  slti        $at, $t9, 0xb
/* 02B430 8002B880 AC590000 */  sw          $t9, 0x0($v0)
/* 02B434 8002B884 1020FFFC */  beqz        $at, .L8002B878
/* 02B438 8002B888 03201825 */   move       $v1, $t9
.L8002B88C:
/* 02B43C 8002B88C 8D081AB8 */  lw          $t0, %lo(D_800F1AB8)($t0)
/* 02B440 8002B890 24690001 */  addiu       $t1, $v1, 0x1
/* 02B444 8002B894 55030010 */  bnel        $t0, $v1, .L8002B8D8
/* 02B448 8002B898 00036080 */   sll        $t4, $v1, 2
/* 02B44C 8002B89C AC490000 */  sw          $t1, 0x0($v0)
/* 02B450 8002B8A0 05210005 */  bgez        $t1, .L8002B8B8
/* 02B454 8002B8A4 01201825 */   move       $v1, $t1
.L8002B8A8:
/* 02B458 8002B8A8 246A000B */  addiu       $t2, $v1, 0xb
/* 02B45C 8002B8AC AC4A0000 */  sw          $t2, 0x0($v0)
/* 02B460 8002B8B0 0540FFFD */  bltz        $t2, .L8002B8A8
/* 02B464 8002B8B4 01401825 */   move       $v1, $t2
.L8002B8B8:
/* 02B468 8002B8B8 2861000B */  slti        $at, $v1, 0xb
/* 02B46C 8002B8BC 14200005 */  bnez        $at, .L8002B8D4
.L8002B8C0:
/* 02B470 8002B8C0 246BFFF5 */   addiu      $t3, $v1, -0xb
/* 02B474 8002B8C4 2961000B */  slti        $at, $t3, 0xb
/* 02B478 8002B8C8 AC4B0000 */  sw          $t3, 0x0($v0)
/* 02B47C 8002B8CC 1020FFFC */  beqz        $at, .L8002B8C0
/* 02B480 8002B8D0 01601825 */   move       $v1, $t3
.L8002B8D4:
/* 02B484 8002B8D4 00036080 */  sll         $t4, $v1, 2
.L8002B8D8:
/* 02B488 8002B8D8 3C02800F */  lui         $v0, %hi(D_800F1A88)
/* 02B48C 8002B8DC 004C1021 */  addu        $v0, $v0, $t4
/* 02B490 8002B8E0 03E00008 */  jr          $ra
/* 02B494 8002B8E4 8C421A88 */   lw         $v0, %lo(D_800F1A88)($v0)

glabel func_8002B8E8 # 3
/* 02B498 8002B8E8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02B49C 8002B8EC AFBF0014 */  sw          $ra, 0x14($sp)
/* 02B4A0 8002B8F0 3C01800F */  lui         $at, %hi(D_800F1AC0)
/* 02B4A4 8002B8F4 0C002C3F */  jal         func_8000B0FC
/* 02B4A8 8002B8F8 AC241AC0 */   sw         $a0, %lo(D_800F1AC0)($at)
/* 02B4AC 8002B8FC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02B4B0 8002B900 3C01800F */  lui         $at, %hi(D_800F1AC4)
/* 02B4B4 8002B904 AC231AC4 */  sw          $v1, %lo(D_800F1AC4)($at)
/* 02B4B8 8002B908 03E00008 */  jr          $ra
/* 02B4BC 8002B90C 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8002B910 # 4
/* 02B4C0 8002B910 3C0A800F */  lui         $t2, %hi(D_800F1A7C)
/* 02B4C4 8002B914 254A1A7C */  addiu       $t2, $t2, %lo(D_800F1A7C)
/* 02B4C8 8002B918 8D4E0000 */  lw          $t6, 0x0($t2)
/* 02B4CC 8002B91C 27BDFF50 */  addiu       $sp, $sp, -0xb0
/* 02B4D0 8002B920 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02B4D4 8002B924 AFA500B4 */  sw          $a1, 0xb4($sp)
/* 02B4D8 8002B928 11C0008B */  beqz        $t6, .L8002BB58
/* 02B4DC 8002B92C 00803825 */   move       $a3, $a0
/* 02B4E0 8002B930 8C820000 */  lw          $v0, 0x0($a0)
/* 02B4E4 8002B934 3C09E700 */  lui         $t1, 0xe700
/* 02B4E8 8002B938 3C19E200 */  lui         $t9, 0xe200
/* 02B4EC 8002B93C 244F0008 */  addiu       $t7, $v0, 0x8
/* 02B4F0 8002B940 AC8F0000 */  sw          $t7, 0x0($a0)
/* 02B4F4 8002B944 AC400004 */  sw          $zero, 0x4($v0)
/* 02B4F8 8002B948 AC490000 */  sw          $t1, 0x0($v0)
/* 02B4FC 8002B94C 8C820000 */  lw          $v0, 0x0($a0)
/* 02B500 8002B950 3C0B0050 */  lui         $t3, 0x50
/* 02B504 8002B954 356B4240 */  ori         $t3, $t3, 0x4240
/* 02B508 8002B958 24580008 */  addiu       $t8, $v0, 0x8
/* 02B50C 8002B95C ACF80000 */  sw          $t8, 0x0($a3)
/* 02B510 8002B960 3739001C */  ori         $t9, $t9, 0x1c
/* 02B514 8002B964 AC590000 */  sw          $t9, 0x0($v0)
/* 02B518 8002B968 AC4B0004 */  sw          $t3, 0x4($v0)
/* 02B51C 8002B96C 8CE20000 */  lw          $v0, 0x0($a3)
/* 02B520 8002B970 3C0DFC11 */  lui         $t5, 0xfc11
/* 02B524 8002B974 35ADFE23 */  ori         $t5, $t5, 0xfe23
/* 02B528 8002B978 244C0008 */  addiu       $t4, $v0, 0x8
/* 02B52C 8002B97C ACEC0000 */  sw          $t4, 0x0($a3)
/* 02B530 8002B980 240EF7FB */  addiu       $t6, $zero, -0x805
/* 02B534 8002B984 AC4E0004 */  sw          $t6, 0x4($v0)
/* 02B538 8002B988 AC4D0000 */  sw          $t5, 0x0($v0)
/* 02B53C 8002B98C 8CE20000 */  lw          $v0, 0x0($a3)
/* 02B540 8002B990 3C18FA00 */  lui         $t8, 0xfa00
/* 02B544 8002B994 2401FF00 */  addiu       $at, $zero, -0x100
/* 02B548 8002B998 244F0008 */  addiu       $t7, $v0, 0x8
/* 02B54C 8002B99C ACEF0000 */  sw          $t7, 0x0($a3)
/* 02B550 8002B9A0 AC580000 */  sw          $t8, 0x0($v0)
/* 02B554 8002B9A4 8FB900B4 */  lw          $t9, 0xb4($sp)
/* 02B558 8002B9A8 3C0FE300 */  lui         $t7, 0xe300
/* 02B55C 8002B9AC 35EF0C00 */  ori         $t7, $t7, 0xc00
/* 02B560 8002B9B0 332B00FF */  andi        $t3, $t9, 0xff
/* 02B564 8002B9B4 01616025 */  or          $t4, $t3, $at
/* 02B568 8002B9B8 AC4C0004 */  sw          $t4, 0x4($v0)
/* 02B56C 8002B9BC 8CE20000 */  lw          $v0, 0x0($a3)
/* 02B570 8002B9C0 3C19E300 */  lui         $t9, 0xe300
/* 02B574 8002B9C4 37390F00 */  ori         $t9, $t9, 0xf00
/* 02B578 8002B9C8 244D0008 */  addiu       $t5, $v0, 0x8
/* 02B57C 8002B9CC ACED0000 */  sw          $t5, 0x0($a3)
/* 02B580 8002B9D0 AC400004 */  sw          $zero, 0x4($v0)
/* 02B584 8002B9D4 AC490000 */  sw          $t1, 0x0($v0)
/* 02B588 8002B9D8 8CE20000 */  lw          $v0, 0x0($a3)
/* 02B58C 8002B9DC 3C0CE300 */  lui         $t4, 0xe300
/* 02B590 8002B9E0 358C1201 */  ori         $t4, $t4, 0x1201
/* 02B594 8002B9E4 244E0008 */  addiu       $t6, $v0, 0x8
/* 02B598 8002B9E8 ACEE0000 */  sw          $t6, 0x0($a3)
/* 02B59C 8002B9EC AC400004 */  sw          $zero, 0x4($v0)
/* 02B5A0 8002B9F0 AC4F0000 */  sw          $t7, 0x0($v0)
/* 02B5A4 8002B9F4 8CE20000 */  lw          $v0, 0x0($a3)
/* 02B5A8 8002B9F8 240D2000 */  addiu       $t5, $zero, 0x2000
/* 02B5AC 8002B9FC 3C0FE300 */  lui         $t7, 0xe300
/* 02B5B0 8002BA00 24580008 */  addiu       $t8, $v0, 0x8
/* 02B5B4 8002BA04 ACF80000 */  sw          $t8, 0x0($a3)
/* 02B5B8 8002BA08 AC400004 */  sw          $zero, 0x4($v0)
/* 02B5BC 8002BA0C AC590000 */  sw          $t9, 0x0($v0)
/* 02B5C0 8002BA10 8CE20000 */  lw          $v0, 0x0($a3)
/* 02B5C4 8002BA14 24180C00 */  addiu       $t8, $zero, 0xc00
/* 02B5C8 8002BA18 35EF1402 */  ori         $t7, $t7, 0x1402
/* 02B5CC 8002BA1C 244B0008 */  addiu       $t3, $v0, 0x8
/* 02B5D0 8002BA20 ACEB0000 */  sw          $t3, 0x0($a3)
/* 02B5D4 8002BA24 AC4D0004 */  sw          $t5, 0x4($v0)
/* 02B5D8 8002BA28 AC4C0000 */  sw          $t4, 0x0($v0)
/* 02B5DC 8002BA2C 8CE20000 */  lw          $v0, 0x0($a3)
/* 02B5E0 8002BA30 3C0BE300 */  lui         $t3, 0xe300
/* 02B5E4 8002BA34 356B0D01 */  ori         $t3, $t3, 0xd01
/* 02B5E8 8002BA38 244E0008 */  addiu       $t6, $v0, 0x8
/* 02B5EC 8002BA3C ACEE0000 */  sw          $t6, 0x0($a3)
/* 02B5F0 8002BA40 AC580004 */  sw          $t8, 0x4($v0)
/* 02B5F4 8002BA44 AC4F0000 */  sw          $t7, 0x0($v0)
/* 02B5F8 8002BA48 8CE20000 */  lw          $v0, 0x0($a3)
/* 02B5FC 8002BA4C 3C0DE300 */  lui         $t5, 0xe300
/* 02B600 8002BA50 35AD1001 */  ori         $t5, $t5, 0x1001
/* 02B604 8002BA54 24590008 */  addiu       $t9, $v0, 0x8
/* 02B608 8002BA58 ACF90000 */  sw          $t9, 0x0($a3)
/* 02B60C 8002BA5C AC400004 */  sw          $zero, 0x4($v0)
/* 02B610 8002BA60 AC4B0000 */  sw          $t3, 0x0($v0)
/* 02B614 8002BA64 8CE20000 */  lw          $v0, 0x0($a3)
/* 02B618 8002BA68 340E8000 */  ori         $t6, $zero, 0x8000
/* 02B61C 8002BA6C 3C18D700 */  lui         $t8, 0xd700
/* 02B620 8002BA70 244C0008 */  addiu       $t4, $v0, 0x8
/* 02B624 8002BA74 ACEC0000 */  sw          $t4, 0x0($a3)
/* 02B628 8002BA78 AC4E0004 */  sw          $t6, 0x4($v0)
/* 02B62C 8002BA7C AC4D0000 */  sw          $t5, 0x0($v0)
/* 02B630 8002BA80 8CE20000 */  lw          $v0, 0x0($a3)
/* 02B634 8002BA84 37180002 */  ori         $t8, $t8, 0x2
/* 02B638 8002BA88 3C197FFF */  lui         $t9, 0x7fff
/* 02B63C 8002BA8C 244F0008 */  addiu       $t7, $v0, 0x8
/* 02B640 8002BA90 ACEF0000 */  sw          $t7, 0x0($a3)
/* 02B644 8002BA94 AC590004 */  sw          $t9, 0x4($v0)
/* 02B648 8002BA98 AC580000 */  sw          $t8, 0x0($v0)
/* 02B64C 8002BA9C 8CE20000 */  lw          $v0, 0x0($a3)
/* 02B650 8002BAA0 3C0CDB08 */  lui         $t4, 0xdb08
/* 02B654 8002BAA4 358C0010 */  ori         $t4, $t4, 0x10
/* 02B658 8002BAA8 244B0008 */  addiu       $t3, $v0, 0x8
/* 02B65C 8002BAAC ACEB0000 */  sw          $t3, 0x0($a3)
/* 02B660 8002BAB0 240D7FFF */  addiu       $t5, $zero, 0x7fff
/* 02B664 8002BAB4 AC4D0004 */  sw          $t5, 0x4($v0)
/* 02B668 8002BAB8 AC4C0000 */  sw          $t4, 0x0($v0)
/* 02B66C 8002BABC 8CE20000 */  lw          $v0, 0x0($a3)
/* 02B670 8002BAC0 3C19800F */  lui         $t9, %hi(D_800F1AC8)
/* 02B674 8002BAC4 27391AC8 */  addiu       $t9, $t9, %lo(D_800F1AC8)
/* 02B678 8002BAC8 244E0008 */  addiu       $t6, $v0, 0x8
/* 02B67C 8002BACC ACEE0000 */  sw          $t6, 0x0($a3)
/* 02B680 8002BAD0 AC400004 */  sw          $zero, 0x4($v0)
/* 02B684 8002BAD4 AC490000 */  sw          $t1, 0x0($v0)
/* 02B688 8002BAD8 8D4F0000 */  lw          $t7, 0x0($t2)
/* 02B68C 8002BADC 3C06800B */  lui         $a2, %hi(D_800AE4E4)
/* 02B690 8002BAE0 8CC6E4E4 */  lw          $a2, %lo(D_800AE4E4)($a2)
/* 02B694 8002BAE4 000FC080 */  sll         $t8, $t7, 2
/* 02B698 8002BAE8 030FC023 */  subu        $t8, $t8, $t7
/* 02B69C 8002BAEC 0018C080 */  sll         $t8, $t8, 2
/* 02B6A0 8002BAF0 03192021 */  addu        $a0, $t8, $t9
/* 02B6A4 8002BAF4 AFA700B0 */  sw          $a3, 0xb0($sp)
/* 02B6A8 8002BAF8 0C002980 */  jal         func_8000A600
/* 02B6AC 8002BAFC 27A50054 */   addiu      $a1, $sp, 0x54
/* 02B6B0 8002BB00 3C013F80 */  lui         $at, 0x3f80
/* 02B6B4 8002BB04 44810000 */  mtc1        $at, $f0
/* 02B6B8 8002BB08 8FAB0054 */  lw          $t3, 0x54($sp)
/* 02B6BC 8002BB0C 240C001F */  addiu       $t4, $zero, 0x1f
/* 02B6C0 8002BB10 240D001F */  addiu       $t5, $zero, 0x1f
/* 02B6C4 8002BB14 240E0030 */  addiu       $t6, $zero, 0x30
/* 02B6C8 8002BB18 240F0030 */  addiu       $t7, $zero, 0x30
/* 02B6CC 8002BB1C 2418FFFF */  addiu       $t8, $zero, -0x1
/* 02B6D0 8002BB20 8FA600B0 */  lw          $a2, 0xb0($sp)
/* 02B6D4 8002BB24 AFAC006C */  sw          $t4, 0x6c($sp)
/* 02B6D8 8002BB28 AFAD0070 */  sw          $t5, 0x70($sp)
/* 02B6DC 8002BB2C AFAE0074 */  sw          $t6, 0x74($sp)
/* 02B6E0 8002BB30 AFAF0078 */  sw          $t7, 0x78($sp)
/* 02B6E4 8002BB34 AFA0007C */  sw          $zero, 0x7c($sp)
/* 02B6E8 8002BB38 AFA00080 */  sw          $zero, 0x80($sp)
/* 02B6EC 8002BB3C AFB8008C */  sw          $t8, 0x8c($sp)
/* 02B6F0 8002BB40 24040005 */  addiu       $a0, $zero, 0x5
/* 02B6F4 8002BB44 27A50068 */  addiu       $a1, $sp, 0x68
/* 02B6F8 8002BB48 AFAB0068 */  sw          $t3, 0x68($sp)
/* 02B6FC 8002BB4C E7A00084 */  swc1        $f0, 0x84($sp)
/* 02B700 8002BB50 0C0030D5 */  jal         func_8000C354
/* 02B704 8002BB54 E7A00088 */   swc1       $f0, 0x88($sp)
.L8002BB58:
/* 02B708 8002BB58 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02B70C 8002BB5C 27BD00B0 */  addiu       $sp, $sp, 0xb0
/* 02B710 8002BB60 03E00008 */  jr          $ra
/* 02B714 8002BB64 00000000 */   nop

glabel func_8002BB68 # 5
/* 02B718 8002BB68 8C830000 */  lw          $v1, 0x0($a0)
/* 02B71C 8002BB6C 3C0FE700 */  lui         $t7, 0xe700
/* 02B720 8002BB70 3C19E200 */  lui         $t9, 0xe200
/* 02B724 8002BB74 246E0008 */  addiu       $t6, $v1, 0x8
/* 02B728 8002BB78 AC8E0000 */  sw          $t6, 0x0($a0)
/* 02B72C 8002BB7C AC600004 */  sw          $zero, 0x4($v1)
/* 02B730 8002BB80 AC6F0000 */  sw          $t7, 0x0($v1)
/* 02B734 8002BB84 8C830000 */  lw          $v1, 0x0($a0)
/* 02B738 8002BB88 3C090050 */  lui         $t1, 0x50
/* 02B73C 8002BB8C 35294240 */  ori         $t1, $t1, 0x4240
/* 02B740 8002BB90 24780008 */  addiu       $t8, $v1, 0x8
/* 02B744 8002BB94 AC980000 */  sw          $t8, 0x0($a0)
/* 02B748 8002BB98 3739001C */  ori         $t9, $t9, 0x1c
/* 02B74C 8002BB9C AC790000 */  sw          $t9, 0x0($v1)
/* 02B750 8002BBA0 AC690004 */  sw          $t1, 0x4($v1)
/* 02B754 8002BBA4 8C830000 */  lw          $v1, 0x0($a0)
/* 02B758 8002BBA8 3C0BFCFF */  lui         $t3, 0xfcff
/* 02B75C 8002BBAC 3C0CFFFD */  lui         $t4, 0xfffd
/* 02B760 8002BBB0 246A0008 */  addiu       $t2, $v1, 0x8
/* 02B764 8002BBB4 AC8A0000 */  sw          $t2, 0x0($a0)
/* 02B768 8002BBB8 358CF6FB */  ori         $t4, $t4, 0xf6fb
/* 02B76C 8002BBBC 356BFFFF */  ori         $t3, $t3, 0xffff
/* 02B770 8002BBC0 AC6B0000 */  sw          $t3, 0x0($v1)
/* 02B774 8002BBC4 AC6C0004 */  sw          $t4, 0x4($v1)
/* 02B778 8002BBC8 8C830000 */  lw          $v1, 0x0($a0)
/* 02B77C 8002BBCC 30AF00FF */  andi        $t7, $a1, 0xff
/* 02B780 8002BBD0 3C0EFA00 */  lui         $t6, 0xfa00
/* 02B784 8002BBD4 246D0008 */  addiu       $t5, $v1, 0x8
/* 02B788 8002BBD8 AC8D0000 */  sw          $t5, 0x0($a0)
/* 02B78C 8002BBDC AC6F0004 */  sw          $t7, 0x4($v1)
/* 02B790 8002BBE0 AC6E0000 */  sw          $t6, 0x0($v1)
/* 02B794 8002BBE4 8C830000 */  lw          $v1, 0x0($a0)
/* 02B798 8002BBE8 3C09000B */  lui         $t1, 0xb
/* 02B79C 8002BBEC 3C19F644 */  lui         $t9, 0xf644
/* 02B7A0 8002BBF0 24780008 */  addiu       $t8, $v1, 0x8
/* 02B7A4 8002BBF4 AC980000 */  sw          $t8, 0x0($a0)
/* 02B7A8 8002BBF8 37394334 */  ori         $t9, $t9, 0x4334
/* 02B7AC 8002BBFC 3529C0DC */  ori         $t1, $t1, 0xc0dc
/* 02B7B0 8002BC00 AC690004 */  sw          $t1, 0x4($v1)
/* 02B7B4 8002BC04 03E00008 */  jr          $ra
/* 02B7B8 8002BC08 AC790000 */   sw         $t9, 0x0($v1)

glabel func_8002BC0C # 6
/* 02B7BC 8002BC0C 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 02B7C0 8002BC10 AFB50048 */  sw          $s5, 0x48($sp)
/* 02B7C4 8002BC14 AFB2003C */  sw          $s2, 0x3c($sp)
/* 02B7C8 8002BC18 AFB00034 */  sw          $s0, 0x34($sp)
/* 02B7CC 8002BC1C 00C08025 */  move        $s0, $a2
/* 02B7D0 8002BC20 00A09025 */  move        $s2, $a1
/* 02B7D4 8002BC24 0080A825 */  move        $s5, $a0
/* 02B7D8 8002BC28 AFBF004C */  sw          $ra, 0x4c($sp)
/* 02B7DC 8002BC2C AFB40044 */  sw          $s4, 0x44($sp)
/* 02B7E0 8002BC30 AFB30040 */  sw          $s3, 0x40($sp)
/* 02B7E4 8002BC34 AFB10038 */  sw          $s1, 0x38($sp)
/* 02B7E8 8002BC38 04E10003 */  bgez        $a3, .L8002BC48
/* 02B7EC 8002BC3C F7B40028 */   sdc1       $f20, 0x28($sp)
/* 02B7F0 8002BC40 10000005 */  b           .L8002BC58
/* 02B7F4 8002BC44 00003825 */   move       $a3, $zero
.L8002BC48:
/* 02B7F8 8002BC48 28E10100 */  slti        $at, $a3, 0x100
/* 02B7FC 8002BC4C 54200003 */  bnel        $at, $zero, .L8002BC5C
/* 02B800 8002BC50 8EA20000 */   lw         $v0, 0x0($s5)
/* 02B804 8002BC54 240700FF */  addiu       $a3, $zero, 0xff
.L8002BC58:
/* 02B808 8002BC58 8EA20000 */  lw          $v0, 0x0($s5)
.L8002BC5C:
/* 02B80C 8002BC5C 3C0FE700 */  lui         $t7, 0xe700
/* 02B810 8002BC60 30E800FF */  andi        $t0, $a3, 0xff
/* 02B814 8002BC64 244E0008 */  addiu       $t6, $v0, 0x8
/* 02B818 8002BC68 AEAE0000 */  sw          $t6, 0x0($s5)
/* 02B81C 8002BC6C AC400004 */  sw          $zero, 0x4($v0)
/* 02B820 8002BC70 AC4F0000 */  sw          $t7, 0x0($v0)
/* 02B824 8002BC74 8EA20000 */  lw          $v0, 0x0($s5)
/* 02B828 8002BC78 2401DC00 */  addiu       $at, $zero, -0x2400
/* 02B82C 8002BC7C 01014825 */  or          $t1, $t0, $at
/* 02B830 8002BC80 24580008 */  addiu       $t8, $v0, 0x8
/* 02B834 8002BC84 AEB80000 */  sw          $t8, 0x0($s5)
/* 02B838 8002BC88 3C19FA00 */  lui         $t9, 0xfa00
/* 02B83C 8002BC8C 28E100FF */  slti        $at, $a3, 0xff
/* 02B840 8002BC90 AC590000 */  sw          $t9, 0x0($v0)
/* 02B844 8002BC94 1020000B */  beqz        $at, .L8002BCC4
/* 02B848 8002BC98 AC490004 */   sw         $t1, 0x4($v0)
/* 02B84C 8002BC9C 8EA20000 */  lw          $v0, 0x0($s5)
/* 02B850 8002BCA0 3C0BE200 */  lui         $t3, 0xe200
/* 02B854 8002BCA4 3C0C0050 */  lui         $t4, 0x50
/* 02B858 8002BCA8 244A0008 */  addiu       $t2, $v0, 0x8
/* 02B85C 8002BCAC AEAA0000 */  sw          $t2, 0x0($s5)
/* 02B860 8002BCB0 358C41C8 */  ori         $t4, $t4, 0x41c8
/* 02B864 8002BCB4 356B001C */  ori         $t3, $t3, 0x1c
/* 02B868 8002BCB8 AC4B0000 */  sw          $t3, 0x0($v0)
/* 02B86C 8002BCBC 1000000A */  b           .L8002BCE8
/* 02B870 8002BCC0 AC4C0004 */   sw         $t4, 0x4($v0)
.L8002BCC4:
/* 02B874 8002BCC4 8EA20000 */  lw          $v0, 0x0($s5)
/* 02B878 8002BCC8 3C0EE200 */  lui         $t6, 0xe200
/* 02B87C 8002BCCC 3C0F0055 */  lui         $t7, 0x55
/* 02B880 8002BCD0 244D0008 */  addiu       $t5, $v0, 0x8
/* 02B884 8002BCD4 AEAD0000 */  sw          $t5, 0x0($s5)
/* 02B888 8002BCD8 35EF3048 */  ori         $t7, $t7, 0x3048
/* 02B88C 8002BCDC 35CE001C */  ori         $t6, $t6, 0x1c
/* 02B890 8002BCE0 AC4E0000 */  sw          $t6, 0x0($v0)
/* 02B894 8002BCE4 AC4F0004 */  sw          $t7, 0x4($v0)
.L8002BCE8:
/* 02B898 8002BCE8 3C19800F */  lui         $t9, %hi(D_800F1ABC)
/* 02B89C 8002BCEC 8F391ABC */  lw          $t9, %lo(D_800F1ABC)($t9)
/* 02B8A0 8002BCF0 3C18800F */  lui         $t8, %hi(D_800F1080)
/* 02B8A4 8002BCF4 3C013F80 */  lui         $at, 0x3f80
/* 02B8A8 8002BCF8 27111080 */  addiu       $s1, $t8, %lo(D_800F1080)
/* 02B8AC 8002BCFC 3C14800F */  lui         $s4, %hi(D_800F10A8)
/* 02B8B0 8002BD00 3C13800F */  lui         $s3, %hi(D_800F1ABC)
/* 02B8B4 8002BD04 00194080 */  sll         $t0, $t9, 2
/* 02B8B8 8002BD08 4481A000 */  mtc1        $at, $f20
/* 02B8BC 8002BD0C 01111021 */  addu        $v0, $t0, $s1
/* 02B8C0 8002BD10 26731ABC */  addiu       $s3, $s3, %lo(D_800F1ABC)
/* 02B8C4 8002BD14 269410A8 */  addiu       $s4, $s4, %lo(D_800F10A8)
.L8002BD18:
/* 02B8C8 8002BD18 8C450000 */  lw          $a1, 0x0($v0)
/* 02B8CC 8002BD1C 02A02025 */  move        $a0, $s5
/* 02B8D0 8002BD20 50A00017 */  beql        $a1, $zero, .L8002BD80
/* 02B8D4 8002BD24 26100014 */   addiu      $s0, $s0, 0x14
/* 02B8D8 8002BD28 8CA90004 */  lw          $t1, 0x4($a1)
/* 02B8DC 8002BD2C 02403025 */  move        $a2, $s2
/* 02B8E0 8002BD30 02003825 */  move        $a3, $s0
/* 02B8E4 8002BD34 01325021 */  addu        $t2, $t1, $s2
/* 02B8E8 8002BD38 AFAA0010 */  sw          $t2, 0x10($sp)
/* 02B8EC 8002BD3C 8CAB0008 */  lw          $t3, 0x8($a1)
/* 02B8F0 8002BD40 E7B40024 */  swc1        $f20, 0x24($sp)
/* 02B8F4 8002BD44 E7B40020 */  swc1        $f20, 0x20($sp)
/* 02B8F8 8002BD48 01706021 */  addu        $t4, $t3, $s0
/* 02B8FC 8002BD4C AFAC0014 */  sw          $t4, 0x14($sp)
/* 02B900 8002BD50 AFA0001C */  sw          $zero, 0x1c($sp)
/* 02B904 8002BD54 0C00F5D9 */  jal         func_8003D764
/* 02B908 8002BD58 AFA00018 */   sw         $zero, 0x18($sp)
/* 02B90C 8002BD5C 8E6D0000 */  lw          $t5, 0x0($s3)
/* 02B910 8002BD60 000D7080 */  sll         $t6, $t5, 2
/* 02B914 8002BD64 022E1021 */  addu        $v0, $s1, $t6
/* 02B918 8002BD68 8C4F0000 */  lw          $t7, 0x0($v0)
/* 02B91C 8002BD6C 8DF90008 */  lw          $t9, 0x8($t7)
/* 02B920 8002BD70 02198021 */  addu        $s0, $s0, $t9
/* 02B924 8002BD74 10000002 */  b           .L8002BD80
/* 02B928 8002BD78 26100004 */   addiu      $s0, $s0, 0x4
/* 02B92C 8002BD7C 26100014 */  addiu       $s0, $s0, 0x14
.L8002BD80:
/* 02B930 8002BD80 26310008 */  addiu       $s1, $s1, 0x8
/* 02B934 8002BD84 1634FFE4 */  bne         $s1, $s4, .L8002BD18
/* 02B938 8002BD88 24420008 */   addiu      $v0, $v0, 0x8
/* 02B93C 8002BD8C 8FBF004C */  lw          $ra, 0x4c($sp)
/* 02B940 8002BD90 D7B40028 */  ldc1        $f20, 0x28($sp)
/* 02B944 8002BD94 8FB00034 */  lw          $s0, 0x34($sp)
/* 02B948 8002BD98 8FB10038 */  lw          $s1, 0x38($sp)
/* 02B94C 8002BD9C 8FB2003C */  lw          $s2, 0x3c($sp)
/* 02B950 8002BDA0 8FB30040 */  lw          $s3, 0x40($sp)
/* 02B954 8002BDA4 8FB40044 */  lw          $s4, 0x44($sp)
/* 02B958 8002BDA8 8FB50048 */  lw          $s5, 0x48($sp)
/* 02B95C 8002BDAC 03E00008 */  jr          $ra
/* 02B960 8002BDB0 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_8002BDB4 # 7
/* 02B964 8002BDB4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02B968 8002BDB8 AFB00020 */  sw          $s0, 0x20($sp)
/* 02B96C 8002BDBC 00808025 */  move        $s0, $a0
/* 02B970 8002BDC0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 02B974 8002BDC4 0C00F389 */  jal         func_8003CE24
/* 02B978 8002BDC8 8C840000 */   lw         $a0, 0x0($a0)
/* 02B97C 8002BDCC 0C00F3DE */  jal         func_8003CF78
/* 02B980 8002BDD0 00000000 */   nop
/* 02B984 8002BDD4 3C048006 */  lui         $a0, %hi(D_80063800)
/* 02B988 8002BDD8 0C00F560 */  jal         func_8003D580
/* 02B98C 8002BDDC 24843800 */   addiu      $a0, $a0, %lo(D_80063800)
/* 02B990 8002BDE0 0C00F3DA */  jal         func_8003CF68
/* 02B994 8002BDE4 02002025 */   move       $a0, $s0
/* 02B998 8002BDE8 3C0E800F */  lui         $t6, %hi(D_800F1AC0)
/* 02B99C 8002BDEC 8DCE1AC0 */  lw          $t6, %lo(D_800F1AC0)($t6)
/* 02B9A0 8002BDF0 24010002 */  addiu       $at, $zero, 0x2
/* 02B9A4 8002BDF4 02002025 */  move        $a0, $s0
/* 02B9A8 8002BDF8 15C1001B */  bne         $t6, $at, .L8002BE68
/* 02B9AC 8002BDFC 24050036 */   addiu      $a1, $zero, 0x36
/* 02B9B0 8002BE00 0C002C3F */  jal         func_8000B0FC
/* 02B9B4 8002BE04 00000000 */   nop
/* 02B9B8 8002BE08 3C0F800F */  lui         $t7, %hi(D_800F1AC4)
/* 02B9BC 8002BE0C 8DEF1AC4 */  lw          $t7, %lo(D_800F1AC4)($t7)
/* 02B9C0 8002BE10 24180000 */  addiu       $t8, $zero, 0x0
/* 02B9C4 8002BE14 00582023 */  subu        $a0, $v0, $t8
/* 02B9C8 8002BE18 006F082B */  sltu        $at, $v1, $t7
/* 02B9CC 8002BE1C 00812023 */  subu        $a0, $a0, $at
/* 02B9D0 8002BE20 0C0148C6 */  jal         func_80052318
/* 02B9D4 8002BE24 006F2823 */   subu       $a1, $v1, $t7
/* 02B9D8 8002BE28 3C01437F */  lui         $at, 0x437f
/* 02B9DC 8002BE2C 44817000 */  mtc1        $at, $f14
/* 02B9E0 8002BE30 44806000 */  mtc1        $zero, $f12
/* 02B9E4 8002BE34 3C0642B4 */  lui         $a2, 0x42b4
/* 02B9E8 8002BE38 3C074120 */  lui         $a3, 0x4120
/* 02B9EC 8002BE3C 0C00EA85 */  jal         func_8003AA14
/* 02B9F0 8002BE40 E7A00010 */   swc1       $f0, 0x10($sp)
/* 02B9F4 8002BE44 4600010D */  trunc.w.s   $f4, $f0
/* 02B9F8 8002BE48 02002025 */  move        $a0, $s0
/* 02B9FC 8002BE4C 24050035 */  addiu       $a1, $zero, 0x35
/* 02BA00 8002BE50 24060053 */  addiu       $a2, $zero, 0x53
/* 02BA04 8002BE54 44072000 */  mfc1        $a3, $f4
/* 02BA08 8002BE58 0C00AF03 */  jal         func_8002BC0C
/* 02BA0C 8002BE5C 00000000 */   nop
/* 02BA10 8002BE60 1000000A */  b           .L8002BE8C
/* 02BA14 8002BE64 8FBF0024 */   lw         $ra, 0x24($sp)
.L8002BE68:
/* 02BA18 8002BE68 24060054 */  addiu       $a2, $zero, 0x54
/* 02BA1C 8002BE6C 0C00AF03 */  jal         func_8002BC0C
/* 02BA20 8002BE70 24070050 */   addiu      $a3, $zero, 0x50
/* 02BA24 8002BE74 02002025 */  move        $a0, $s0
/* 02BA28 8002BE78 24050035 */  addiu       $a1, $zero, 0x35
/* 02BA2C 8002BE7C 24060053 */  addiu       $a2, $zero, 0x53
/* 02BA30 8002BE80 0C00AF03 */  jal         func_8002BC0C
/* 02BA34 8002BE84 240700FF */   addiu      $a3, $zero, 0xff
/* 02BA38 8002BE88 8FBF0024 */  lw          $ra, 0x24($sp)
.L8002BE8C:
/* 02BA3C 8002BE8C 8FB00020 */  lw          $s0, 0x20($sp)
/* 02BA40 8002BE90 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02BA44 8002BE94 03E00008 */  jr          $ra
/* 02BA48 8002BE98 00000000 */   nop

glabel func_8002BE9C # 8
/* 02BA4C 8002BE9C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02BA50 8002BEA0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02BA54 8002BEA4 AFA40018 */  sw          $a0, 0x18($sp)
/* 02BA58 8002BEA8 0C00F389 */  jal         func_8003CE24
/* 02BA5C 8002BEAC 8C840000 */   lw         $a0, 0x0($a0)
/* 02BA60 8002BEB0 0C00F3DE */  jal         func_8003CF78
/* 02BA64 8002BEB4 00000000 */   nop
/* 02BA68 8002BEB8 3C048006 */  lui         $a0, %hi(D_80063800)
/* 02BA6C 8002BEBC 0C00F560 */  jal         func_8003D580
/* 02BA70 8002BEC0 24843800 */   addiu      $a0, $a0, %lo(D_80063800)
/* 02BA74 8002BEC4 0C002C4D */  jal         func_8000B134
/* 02BA78 8002BEC8 00000000 */   nop
/* 02BA7C 8002BECC 240400FF */  addiu       $a0, $zero, 0xff
/* 02BA80 8002BED0 240500FF */  addiu       $a1, $zero, 0xff
/* 02BA84 8002BED4 240600FF */  addiu       $a2, $zero, 0xff
/* 02BA88 8002BED8 0C00F528 */  jal         func_8003D4A0
/* 02BA8C 8002BEDC 00403825 */   move       $a3, $v0
/* 02BA90 8002BEE0 3C0F800F */  lui         $t7, %hi(D_800F10A8)
/* 02BA94 8002BEE4 8DEF10A8 */  lw          $t7, %lo(D_800F10A8)($t7)
/* 02BA98 8002BEE8 24190140 */  addiu       $t9, $zero, 0x140
/* 02BA9C 8002BEEC 2405009F */  addiu       $a1, $zero, 0x9f
/* 02BAA0 8002BEF0 8DF80004 */  lw          $t8, 0x4($t7)
/* 02BAA4 8002BEF4 03382023 */  subu        $a0, $t9, $t8
/* 02BAA8 8002BEF8 04810003 */  bgez        $a0, .L8002BF08
/* 02BAAC 8002BEFC 00044043 */   sra        $t0, $a0, 1
/* 02BAB0 8002BF00 24810001 */  addiu       $at, $a0, 0x1
/* 02BAB4 8002BF04 00014043 */  sra         $t0, $at, 1
.L8002BF08:
/* 02BAB8 8002BF08 0C00F4F9 */  jal         func_8003D3E4
/* 02BABC 8002BF0C 2504FFE0 */   addiu      $a0, $t0, -0x20
/* 02BAC0 8002BF10 3C04800F */  lui         $a0, %hi(D_800F10A8)
/* 02BAC4 8002BF14 0C00F57B */  jal         func_8003D5EC
/* 02BAC8 8002BF18 8C8410A8 */   lw         $a0, %lo(D_800F10A8)($a0)
/* 02BACC 8002BF1C 0C00F3DA */  jal         func_8003CF68
/* 02BAD0 8002BF20 8FA40018 */   lw         $a0, 0x18($sp)
/* 02BAD4 8002BF24 0C00F3DE */  jal         func_8003CF78
/* 02BAD8 8002BF28 00000000 */   nop
/* 02BADC 8002BF2C 3C048006 */  lui         $a0, %hi(D_80063800)
/* 02BAE0 8002BF30 0C00F560 */  jal         func_8003D580
/* 02BAE4 8002BF34 24843800 */   addiu      $a0, $a0, %lo(D_80063800)
/* 02BAE8 8002BF38 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02BAEC 8002BF3C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02BAF0 8002BF40 03E00008 */  jr          $ra
/* 02BAF4 8002BF44 00000000 */   nop

glabel func_8002BF48 # 9
/* 02BAF8 8002BF48 3C18800F */  lui         $t8, %hi(D_800F1ABC)
/* 02BAFC 8002BF4C 8F181ABC */  lw          $t8, %lo(D_800F1ABC)($t8)
/* 02BB00 8002BF50 3C0F800F */  lui         $t7, %hi(D_800F1080)
/* 02BB04 8002BF54 25EF1080 */  addiu       $t7, $t7, %lo(D_800F1080)
/* 02BB08 8002BF58 000470C0 */  sll         $t6, $a0, 3
/* 02BB0C 8002BF5C 01CF1021 */  addu        $v0, $t6, $t7
/* 02BB10 8002BF60 0018C880 */  sll         $t9, $t8, 2
/* 02BB14 8002BF64 00593821 */  addu        $a3, $v0, $t9
/* 02BB18 8002BF68 8CE80000 */  lw          $t0, 0x0($a3)
/* 02BB1C 8002BF6C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02BB20 8002BF70 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02BB24 8002BF74 AFA60030 */  sw          $a2, 0x30($sp)
/* 02BB28 8002BF78 1100000C */  beqz        $t0, .L8002BFAC
/* 02BB2C 8002BF7C AFA8001C */   sw         $t0, 0x1c($sp)
/* 02BB30 8002BF80 01002025 */  move        $a0, $t0
/* 02BB34 8002BF84 AFA20024 */  sw          $v0, 0x24($sp)
/* 02BB38 8002BF88 0C00FD94 */  jal         func_8003F650
/* 02BB3C 8002BF8C AFA5002C */   sw         $a1, 0x2c($sp)
/* 02BB40 8002BF90 3C0A800F */  lui         $t2, %hi(D_800F1ABC)
/* 02BB44 8002BF94 8D4A1ABC */  lw          $t2, %lo(D_800F1ABC)($t2)
/* 02BB48 8002BF98 8FA20024 */  lw          $v0, 0x24($sp)
/* 02BB4C 8002BF9C 8FA5002C */  lw          $a1, 0x2c($sp)
/* 02BB50 8002BFA0 000A5880 */  sll         $t3, $t2, 2
/* 02BB54 8002BFA4 004B3821 */  addu        $a3, $v0, $t3
/* 02BB58 8002BFA8 ACE00000 */  sw          $zero, 0x0($a3)
.L8002BFAC:
/* 02BB5C 8002BFAC 50A0000B */  beql        $a1, $zero, .L8002BFDC
/* 02BB60 8002BFB0 8FBF0014 */   lw         $ra, 0x14($sp)
/* 02BB64 8002BFB4 90AC0000 */  lbu         $t4, 0x0($a1)
/* 02BB68 8002BFB8 8FAD0030 */  lw          $t5, 0x30($sp)
/* 02BB6C 8002BFBC 00E02025 */  move        $a0, $a3
/* 02BB70 8002BFC0 11800005 */  beqz        $t4, .L8002BFD8
/* 02BB74 8002BFC4 000D7100 */   sll        $t6, $t5, 4
/* 02BB78 8002BFC8 3C0F8007 */  lui         $t7, %hi(D_80074DE0)
/* 02BB7C 8002BFCC 25EF4DE0 */  addiu       $t7, $t7, %lo(D_80074DE0)
/* 02BB80 8002BFD0 0C00F770 */  jal         func_8003DDC0
/* 02BB84 8002BFD4 01CF3021 */   addu       $a2, $t6, $t7
.L8002BFD8:
/* 02BB88 8002BFD8 8FBF0014 */  lw          $ra, 0x14($sp)
.L8002BFDC:
/* 02BB8C 8002BFDC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02BB90 8002BFE0 03E00008 */  jr          $ra
/* 02BB94 8002BFE4 00000000 */   nop

glabel func_8002BFE8 # 10
/* 02BB98 8002BFE8 3C07800F */  lui         $a3, %hi(D_800F10A8)
/* 02BB9C 8002BFEC 24E710A8 */  addiu       $a3, $a3, %lo(D_800F10A8)
/* 02BBA0 8002BFF0 8CE50000 */  lw          $a1, 0x0($a3)
/* 02BBA4 8002BFF4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02BBA8 8002BFF8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02BBAC 8002BFFC 10A00006 */  beqz        $a1, .L8002C018
/* 02BBB0 8002C000 AFA40018 */   sw         $a0, 0x18($sp)
/* 02BBB4 8002C004 0C00FD94 */  jal         func_8003F650
/* 02BBB8 8002C008 00A02025 */   move       $a0, $a1
/* 02BBBC 8002C00C 3C07800F */  lui         $a3, %hi(D_800F10A8)
/* 02BBC0 8002C010 24E710A8 */  addiu       $a3, $a3, %lo(D_800F10A8)
/* 02BBC4 8002C014 ACE00000 */  sw          $zero, 0x0($a3)
.L8002C018:
/* 02BBC8 8002C018 3C068007 */  lui         $a2, %hi(D_80074DE0)
/* 02BBCC 8002C01C 24C64DE0 */  addiu       $a2, $a2, %lo(D_80074DE0)
/* 02BBD0 8002C020 00E02025 */  move        $a0, $a3
/* 02BBD4 8002C024 0C00F770 */  jal         func_8003DDC0
/* 02BBD8 8002C028 8FA50018 */   lw         $a1, 0x18($sp)
/* 02BBDC 8002C02C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02BBE0 8002C030 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02BBE4 8002C034 03E00008 */  jr          $ra
/* 02BBE8 8002C038 00000000 */   nop

glabel func_8002C03C # 11
/* 02BBEC 8002C03C 27BDFF78 */  addiu       $sp, $sp, -0x88
/* 02BBF0 8002C040 AFB6002C */  sw          $s6, 0x2c($sp)
/* 02BBF4 8002C044 AFB50028 */  sw          $s5, 0x28($sp)
/* 02BBF8 8002C048 AFB40024 */  sw          $s4, 0x24($sp)
/* 02BBFC 8002C04C AFB30020 */  sw          $s3, 0x20($sp)
/* 02BC00 8002C050 AFB2001C */  sw          $s2, 0x1c($sp)
/* 02BC04 8002C054 AFB10018 */  sw          $s1, 0x18($sp)
/* 02BC08 8002C058 AFB00014 */  sw          $s0, 0x14($sp)
/* 02BC0C 8002C05C 00A0A825 */  move        $s5, $a1
/* 02BC10 8002C060 AFBF0034 */  sw          $ra, 0x34($sp)
/* 02BC14 8002C064 AFB70030 */  sw          $s7, 0x30($sp)
/* 02BC18 8002C068 00808025 */  move        $s0, $a0
/* 02BC1C 8002C06C 00008825 */  move        $s1, $zero
/* 02BC20 8002C070 2412000C */  addiu       $s2, $zero, 0xc
/* 02BC24 8002C074 2413000A */  addiu       $s3, $zero, 0xa
/* 02BC28 8002C078 27B40085 */  addiu       $s4, $sp, 0x85
/* 02BC2C 8002C07C 27B60054 */  addiu       $s6, $sp, 0x54
/* 02BC30 8002C080 27A70054 */  addiu       $a3, $sp, 0x54
.L8002C084:
/* 02BC34 8002C084 92030000 */  lbu         $v1, 0x0($s0)
/* 02BC38 8002C088 14600013 */  bnez        $v1, .L8002C0D8
/* 02BC3C 8002C08C 00601025 */   move       $v0, $v1
/* 02BC40 8002C090 A0E00000 */  sb          $zero, 0x0($a3)
/* 02BC44 8002C094 02202025 */  move        $a0, $s1
/* 02BC48 8002C098 02C02825 */  move        $a1, $s6
/* 02BC4C 8002C09C 0C00AFD2 */  jal         func_8002BF48
/* 02BC50 8002C0A0 02A03025 */   move       $a2, $s5
/* 02BC54 8002C0A4 26310001 */  addiu       $s1, $s1, 0x1
/* 02BC58 8002C0A8 2A210005 */  slti        $at, $s1, 0x5
/* 02BC5C 8002C0AC 10200008 */  beqz        $at, .L8002C0D0
/* 02BC60 8002C0B0 02202025 */   move       $a0, $s1
.L8002C0B4:
/* 02BC64 8002C0B4 00002825 */  move        $a1, $zero
/* 02BC68 8002C0B8 0C00AFD2 */  jal         func_8002BF48
/* 02BC6C 8002C0BC 02A03025 */   move       $a2, $s5
/* 02BC70 8002C0C0 26310001 */  addiu       $s1, $s1, 0x1
/* 02BC74 8002C0C4 2A210005 */  slti        $at, $s1, 0x5
/* 02BC78 8002C0C8 5420FFFA */  bnel        $at, $zero, .L8002C0B4
/* 02BC7C 8002C0CC 02202025 */   move       $a0, $s1
.L8002C0D0:
/* 02BC80 8002C0D0 10000028 */  b           .L8002C174
/* 02BC84 8002C0D4 00001025 */   move       $v0, $zero
.L8002C0D8:
/* 02BC88 8002C0D8 16420013 */  bne         $s2, $v0, .L8002C128
/* 02BC8C 8002C0DC 00000000 */   nop
/* 02BC90 8002C0E0 A0E00000 */  sb          $zero, 0x0($a3)
/* 02BC94 8002C0E4 02202025 */  move        $a0, $s1
/* 02BC98 8002C0E8 02C02825 */  move        $a1, $s6
/* 02BC9C 8002C0EC 0C00AFD2 */  jal         func_8002BF48
/* 02BCA0 8002C0F0 02A03025 */   move       $a2, $s5
/* 02BCA4 8002C0F4 26310001 */  addiu       $s1, $s1, 0x1
/* 02BCA8 8002C0F8 2A210005 */  slti        $at, $s1, 0x5
/* 02BCAC 8002C0FC 10200008 */  beqz        $at, .L8002C120
/* 02BCB0 8002C100 02202025 */   move       $a0, $s1
.L8002C104:
/* 02BCB4 8002C104 00002825 */  move        $a1, $zero
/* 02BCB8 8002C108 0C00AFD2 */  jal         func_8002BF48
/* 02BCBC 8002C10C 02A03025 */   move       $a2, $s5
/* 02BCC0 8002C110 26310001 */  addiu       $s1, $s1, 0x1
/* 02BCC4 8002C114 2A210005 */  slti        $at, $s1, 0x5
/* 02BCC8 8002C118 5420FFFA */  bnel        $at, $zero, .L8002C104
/* 02BCCC 8002C11C 02202025 */   move       $a0, $s1
.L8002C120:
/* 02BCD0 8002C120 10000014 */  b           .L8002C174
/* 02BCD4 8002C124 26020001 */   addiu      $v0, $s0, 0x1
.L8002C128:
/* 02BCD8 8002C128 56620005 */  bnel        $s3, $v0, .L8002C140
/* 02BCDC 8002C12C 24E70001 */   addiu      $a3, $a3, 0x1
/* 02BCE0 8002C130 A0E00000 */  sb          $zero, 0x0($a3)
/* 02BCE4 8002C134 10000005 */  b           .L8002C14C
/* 02BCE8 8002C138 26100001 */   addiu      $s0, $s0, 0x1
/* 02BCEC 8002C13C 24E70001 */  addiu       $a3, $a3, 0x1
.L8002C140:
/* 02BCF0 8002C140 A0E3FFFF */  sb          $v1, -0x1($a3)
/* 02BCF4 8002C144 14F4FFCF */  bne         $a3, $s4, .L8002C084
/* 02BCF8 8002C148 26100001 */   addiu      $s0, $s0, 0x1
.L8002C14C:
/* 02BCFC 8002C14C A3A00085 */  sb          $zero, 0x85($sp)
/* 02BD00 8002C150 02202025 */  move        $a0, $s1
/* 02BD04 8002C154 02C02825 */  move        $a1, $s6
/* 02BD08 8002C158 0C00AFD2 */  jal         func_8002BF48
/* 02BD0C 8002C15C 02A03025 */   move       $a2, $s5
/* 02BD10 8002C160 26310001 */  addiu       $s1, $s1, 0x1
/* 02BD14 8002C164 2A210005 */  slti        $at, $s1, 0x5
/* 02BD18 8002C168 5420FFC6 */  bnel        $at, $zero, .L8002C084
/* 02BD1C 8002C16C 27A70054 */   addiu      $a3, $sp, 0x54
/* 02BD20 8002C170 26020001 */  addiu       $v0, $s0, 0x1
.L8002C174:
/* 02BD24 8002C174 8FBF0034 */  lw          $ra, 0x34($sp)
/* 02BD28 8002C178 8FB00014 */  lw          $s0, 0x14($sp)
/* 02BD2C 8002C17C 8FB10018 */  lw          $s1, 0x18($sp)
/* 02BD30 8002C180 8FB2001C */  lw          $s2, 0x1c($sp)
/* 02BD34 8002C184 8FB30020 */  lw          $s3, 0x20($sp)
/* 02BD38 8002C188 8FB40024 */  lw          $s4, 0x24($sp)
/* 02BD3C 8002C18C 8FB50028 */  lw          $s5, 0x28($sp)
/* 02BD40 8002C190 8FB6002C */  lw          $s6, 0x2c($sp)
/* 02BD44 8002C194 8FB70030 */  lw          $s7, 0x30($sp)
/* 02BD48 8002C198 03E00008 */  jr          $ra
/* 02BD4C 8002C19C 27BD0088 */   addiu      $sp, $sp, 0x88

glabel func_8002C1A0 # 12
/* 02BD50 8002C1A0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02BD54 8002C1A4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02BD58 8002C1A8 0C00ADE6 */  jal         func_8002B798
/* 02BD5C 8002C1AC AFA40018 */   sw         $a0, 0x18($sp)
/* 02BD60 8002C1B0 3C03800F */  lui         $v1, %hi(D_800F1ABC)
/* 02BD64 8002C1B4 24631ABC */  addiu       $v1, $v1, %lo(D_800F1ABC)
/* 02BD68 8002C1B8 8C6E0000 */  lw          $t6, 0x0($v1)
/* 02BD6C 8002C1BC 3C05800F */  lui         $a1, %hi(D_800F1A78)
/* 02BD70 8002C1C0 8FA40018 */  lw          $a0, 0x18($sp)
/* 02BD74 8002C1C4 39CF0001 */  xori        $t7, $t6, 0x1
/* 02BD78 8002C1C8 AC6F0000 */  sw          $t7, 0x0($v1)
/* 02BD7C 8002C1CC 0C00B00F */  jal         func_8002C03C
/* 02BD80 8002C1D0 8CA51A78 */   lw         $a1, %lo(D_800F1A78)($a1)
/* 02BD84 8002C1D4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02BD88 8002C1D8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02BD8C 8002C1DC 03E00008 */  jr          $ra
/* 02BD90 8002C1E0 00000000 */   nop

glabel func_8002C1E4 # 13
/* 02BD94 8002C1E4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02BD98 8002C1E8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02BD9C 8002C1EC 3C04800F */  lui         $a0, %hi(D_800F10B0)
/* 02BDA0 8002C1F0 248410B0 */  addiu       $a0, $a0, %lo(D_800F10B0)
/* 02BDA4 8002C1F4 0C014388 */  jal         bzero
/* 02BDA8 8002C1F8 240509C4 */   addiu      $a1, $zero, 0x9c4
/* 02BDAC 8002C1FC 3C0E800F */  lui         $t6, %hi(D_800F10B0)
/* 02BDB0 8002C200 25CE10B0 */  addiu       $t6, $t6, %lo(D_800F10B0)
/* 02BDB4 8002C204 3C01800F */  lui         $at, %hi(D_800F1A80)
/* 02BDB8 8002C208 3C02800F */  lui         $v0, %hi(D_800F1AB8)
/* 02BDBC 8002C20C AC2E1A80 */  sw          $t6, %lo(D_800F1A80)($at)
/* 02BDC0 8002C210 24421AB8 */  addiu       $v0, $v0, %lo(D_800F1AB8)
/* 02BDC4 8002C214 AC400000 */  sw          $zero, 0x0($v0)
/* 02BDC8 8002C218 3C01800F */  lui         $at, %hi(D_800F1AB4)
/* 02BDCC 8002C21C 24180001 */  addiu       $t8, $zero, 0x1
/* 02BDD0 8002C220 3C04800A */  lui         $a0, %hi(D_800A58D4)
/* 02BDD4 8002C224 AC381AB4 */  sw          $t8, %lo(D_800F1AB4)($at)
/* 02BDD8 8002C228 0C00AFFA */  jal         func_8002BFE8
/* 02BDDC 8002C22C 248458D4 */   addiu      $a0, $a0, %lo(D_800A58D4)
/* 02BDE0 8002C230 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02BDE4 8002C234 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02BDE8 8002C238 03E00008 */  jr          $ra
/* 02BDEC 8002C23C 00000000 */   nop

glabel func_8002C240 # 14
/* 02BDF0 8002C240 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02BDF4 8002C244 AFB40028 */  sw          $s4, 0x28($sp)
/* 02BDF8 8002C248 AFB30024 */  sw          $s3, 0x24($sp)
/* 02BDFC 8002C24C AFB20020 */  sw          $s2, 0x20($sp)
/* 02BE00 8002C250 3C13800F */  lui         $s3, %hi(D_800F1080)
/* 02BE04 8002C254 3C14800F */  lui         $s4, %hi(D_800F10B0)
/* 02BE08 8002C258 AFBF002C */  sw          $ra, 0x2c($sp)
/* 02BE0C 8002C25C AFB1001C */  sw          $s1, 0x1c($sp)
/* 02BE10 8002C260 AFB00018 */  sw          $s0, 0x18($sp)
/* 02BE14 8002C264 269410B0 */  addiu       $s4, $s4, %lo(D_800F10B0)
/* 02BE18 8002C268 26731080 */  addiu       $s3, $s3, %lo(D_800F1080)
/* 02BE1C 8002C26C 24120002 */  addiu       $s2, $zero, 0x2
/* 02BE20 8002C270 00008825 */  move        $s1, $zero
.L8002C274:
/* 02BE24 8002C274 02608025 */  move        $s0, $s3
.L8002C278:
/* 02BE28 8002C278 8E040000 */  lw          $a0, 0x0($s0)
/* 02BE2C 8002C27C 50800004 */  beql        $a0, $zero, .L8002C290
/* 02BE30 8002C280 26310001 */   addiu      $s1, $s1, 0x1
/* 02BE34 8002C284 0C00FD94 */  jal         func_8003F650
/* 02BE38 8002C288 00000000 */   nop
/* 02BE3C 8002C28C 26310001 */  addiu       $s1, $s1, 0x1
.L8002C290:
/* 02BE40 8002C290 26100004 */  addiu       $s0, $s0, 0x4
/* 02BE44 8002C294 1632FFF8 */  bne         $s1, $s2, .L8002C278
/* 02BE48 8002C298 AE00FFFC */   sw         $zero, -0x4($s0)
/* 02BE4C 8002C29C 26730008 */  addiu       $s3, $s3, 0x8
/* 02BE50 8002C2A0 5674FFF4 */  bnel        $s3, $s4, .L8002C274
/* 02BE54 8002C2A4 00008825 */   move       $s1, $zero
/* 02BE58 8002C2A8 240E0004 */  addiu       $t6, $zero, 0x4
/* 02BE5C 8002C2AC 3C01800F */  lui         $at, %hi(D_800F1AC0)
/* 02BE60 8002C2B0 AC2E1AC0 */  sw          $t6, %lo(D_800F1AC0)($at)
/* 02BE64 8002C2B4 0C002CB2 */  jal         func_8000B2C8
/* 02BE68 8002C2B8 00002025 */   move       $a0, $zero
/* 02BE6C 8002C2BC 0C04467D */  jal         func_801119F4
/* 02BE70 8002C2C0 00002025 */   move       $a0, $zero
/* 02BE74 8002C2C4 8FBF002C */  lw          $ra, 0x2c($sp)
/* 02BE78 8002C2C8 8FB00018 */  lw          $s0, 0x18($sp)
/* 02BE7C 8002C2CC 8FB1001C */  lw          $s1, 0x1c($sp)
/* 02BE80 8002C2D0 8FB20020 */  lw          $s2, 0x20($sp)
/* 02BE84 8002C2D4 8FB30024 */  lw          $s3, 0x24($sp)
/* 02BE88 8002C2D8 8FB40028 */  lw          $s4, 0x28($sp)
/* 02BE8C 8002C2DC 03E00008 */  jr          $ra
/* 02BE90 8002C2E0 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8002C2E4 # 15
/* 02BE94 8002C2E4 3C05800F */  lui         $a1, %hi(D_800F10B0)
/* 02BE98 8002C2E8 24A510B0 */  addiu       $a1, $a1, %lo(D_800F10B0)
/* 02BE9C 8002C2EC 90AE0000 */  lbu         $t6, 0x0($a1)
/* 02BEA0 8002C2F0 00001025 */  move        $v0, $zero
/* 02BEA4 8002C2F4 11C00007 */  beqz        $t6, .L8002C314
/* 02BEA8 8002C2F8 284109C5 */   slti       $at, $v0, 0x9c5
.L8002C2FC:
/* 02BEAC 8002C2FC 10200010 */  beqz        $at, .L8002C340
/* 02BEB0 8002C300 24420001 */   addiu      $v0, $v0, 0x1
/* 02BEB4 8002C304 00A27821 */  addu        $t7, $a1, $v0
/* 02BEB8 8002C308 91F80000 */  lbu         $t8, 0x0($t7)
/* 02BEBC 8002C30C 5700FFFB */  bnel        $t8, $zero, .L8002C2FC
/* 02BEC0 8002C310 284109C5 */   slti       $at, $v0, 0x9c5
.L8002C314:
/* 02BEC4 8002C314 90830000 */  lbu         $v1, 0x0($a0)
/* 02BEC8 8002C318 10600009 */  beqz        $v1, .L8002C340
/* 02BECC 8002C31C 284109C5 */   slti       $at, $v0, 0x9c5
.L8002C320:
/* 02BED0 8002C320 10200007 */  beqz        $at, .L8002C340
/* 02BED4 8002C324 00A2C821 */   addu       $t9, $a1, $v0
/* 02BED8 8002C328 A3230000 */  sb          $v1, 0x0($t9)
/* 02BEDC 8002C32C 90830001 */  lbu         $v1, 0x1($a0)
/* 02BEE0 8002C330 24420001 */  addiu       $v0, $v0, 0x1
/* 02BEE4 8002C334 24840001 */  addiu       $a0, $a0, 0x1
/* 02BEE8 8002C338 5460FFF9 */  bnel        $v1, $zero, .L8002C320
/* 02BEEC 8002C33C 284109C5 */   slti       $at, $v0, 0x9c5
.L8002C340:
/* 02BEF0 8002C340 03E00008 */  jr          $ra
/* 02BEF4 8002C344 00000000 */   nop

glabel func_8002C348 # 16
/* 02BEF8 8002C348 3C0E800F */  lui         $t6, %hi(D_800F1AC0)
/* 02BEFC 8002C34C 8DCE1AC0 */  lw          $t6, %lo(D_800F1AC0)($t6)
/* 02BF00 8002C350 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02BF04 8002C354 24010004 */  addiu       $at, $zero, 0x4
/* 02BF08 8002C358 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02BF0C 8002C35C AFA40018 */  sw          $a0, 0x18($sp)
/* 02BF10 8002C360 AFA5001C */  sw          $a1, 0x1c($sp)
/* 02BF14 8002C364 11C10003 */  beq         $t6, $at, .L8002C374
/* 02BF18 8002C368 AFA60020 */   sw         $a2, 0x20($sp)
/* 02BF1C 8002C36C 1000000F */  b           .L8002C3AC
/* 02BF20 8002C370 00001025 */   move       $v0, $zero
.L8002C374:
/* 02BF24 8002C374 0C00B079 */  jal         func_8002C1E4
/* 02BF28 8002C378 00000000 */   nop
/* 02BF2C 8002C37C 0C00AE3A */  jal         func_8002B8E8
/* 02BF30 8002C380 00002025 */   move       $a0, $zero
/* 02BF34 8002C384 8FAF0018 */  lw          $t7, 0x18($sp)
/* 02BF38 8002C388 8FB80020 */  lw          $t8, 0x20($sp)
/* 02BF3C 8002C38C 3C01800F */  lui         $at, %hi(D_800F1A7C)
/* 02BF40 8002C390 AC2F1A7C */  sw          $t7, %lo(D_800F1A7C)($at)
/* 02BF44 8002C394 8FB9001C */  lw          $t9, 0x1c($sp)
/* 02BF48 8002C398 3C01800F */  lui         $at, %hi(D_800F1A74)
/* 02BF4C 8002C39C AC381A74 */  sw          $t8, %lo(D_800F1A74)($at)
/* 02BF50 8002C3A0 3C01800F */  lui         $at, %hi(D_800F1A78)
/* 02BF54 8002C3A4 24020001 */  addiu       $v0, $zero, 0x1
/* 02BF58 8002C3A8 AC391A78 */  sw          $t9, %lo(D_800F1A78)($at)
.L8002C3AC:
/* 02BF5C 8002C3AC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02BF60 8002C3B0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02BF64 8002C3B4 03E00008 */  jr          $ra
/* 02BF68 8002C3B8 00000000 */   nop

glabel func_8002C3BC # 17
/* 02BF6C 8002C3BC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02BF70 8002C3C0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02BF74 8002C3C4 3C04800B */  lui         $a0, %hi(D_800ABDD0)
/* 02BF78 8002C3C8 2484BDD0 */  addiu       $a0, $a0, %lo(D_800ABDD0)
/* 02BF7C 8002C3CC 0C00AEDA */  jal         func_8002BB68
/* 02BF80 8002C3D0 240500BE */   addiu      $a1, $zero, 0xbe
/* 02BF84 8002C3D4 3C04800B */  lui         $a0, %hi(D_800ABDD0)
/* 02BF88 8002C3D8 0C00AF6D */  jal         func_8002BDB4
/* 02BF8C 8002C3DC 2484BDD0 */   addiu      $a0, $a0, %lo(D_800ABDD0)
/* 02BF90 8002C3E0 3C04800B */  lui         $a0, %hi(D_800ABDD0)
/* 02BF94 8002C3E4 0C00AFA7 */  jal         func_8002BE9C
/* 02BF98 8002C3E8 2484BDD0 */   addiu      $a0, $a0, %lo(D_800ABDD0)
/* 02BF9C 8002C3EC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02BFA0 8002C3F0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02BFA4 8002C3F4 03E00008 */  jr          $ra
/* 02BFA8 8002C3F8 00000000 */   nop

glabel func_8002C3FC # 18
/* 02BFAC 8002C3FC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02BFB0 8002C400 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02BFB4 8002C404 3C04800F */  lui         $a0, %hi(D_800F10B0)
/* 02BFB8 8002C408 0C00B068 */  jal         func_8002C1A0
/* 02BFBC 8002C40C 248410B0 */   addiu      $a0, $a0, %lo(D_800F10B0)
/* 02BFC0 8002C410 3C03800F */  lui         $v1, %hi(D_800F1A80)
/* 02BFC4 8002C414 24631A80 */  addiu       $v1, $v1, %lo(D_800F1A80)
/* 02BFC8 8002C418 10400003 */  beqz        $v0, .L8002C428
/* 02BFCC 8002C41C AC620000 */   sw         $v0, 0x0($v1)
/* 02BFD0 8002C420 10000002 */  b           .L8002C42C
/* 02BFD4 8002C424 24020001 */   addiu      $v0, $zero, 0x1
.L8002C428:
/* 02BFD8 8002C428 00001025 */  move        $v0, $zero
.L8002C42C:
/* 02BFDC 8002C42C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02BFE0 8002C430 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02BFE4 8002C434 03E00008 */  jr          $ra
/* 02BFE8 8002C438 00000000 */   nop

glabel func_8002C43C # 19
/* 02BFEC 8002C43C 240E0004 */  addiu       $t6, $zero, 0x4
/* 02BFF0 8002C440 3C01800F */  lui         $at, %hi(D_800F1AC0)
/* 02BFF4 8002C444 03E00008 */  jr          $ra
/* 02BFF8 8002C448 AC2E1AC0 */   sw         $t6, %lo(D_800F1AC0)($at)

glabel func_8002C44C # 20
/* 02BFFC 8002C44C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02C000 8002C450 AFBF001C */  sw          $ra, 0x1c($sp)
/* 02C004 8002C454 AFB00018 */  sw          $s0, 0x18($sp)
/* 02C008 8002C458 0C0025B5 */  jal         func_800096D4
/* 02C00C 8002C45C 00002025 */   move       $a0, $zero
/* 02C010 8002C460 3C04800B */  lui         $a0, %hi(D_800ABDD8)
/* 02C014 8002C464 3C05800F */  lui         $a1, %hi(D_800F1A74)
/* 02C018 8002C468 8CA51A74 */  lw          $a1, %lo(D_800F1A74)($a1)
/* 02C01C 8002C46C 0C000453 */  jal         func_8000114C
/* 02C020 8002C470 8C84BDD8 */   lw         $a0, %lo(D_800ABDD8)($a0)
/* 02C024 8002C474 3C04800B */  lui         $a0, %hi(D_800ABDD8)
/* 02C028 8002C478 0C000486 */  jal         func_80001218
/* 02C02C 8002C47C 8C84BDD8 */   lw         $a0, %lo(D_800ABDD8)($a0)
/* 02C030 8002C480 3C10800B */  lui         $s0, %hi(D_800ABDD0)
/* 02C034 8002C484 2610BDD0 */  addiu       $s0, $s0, %lo(D_800ABDD0)
/* 02C038 8002C488 0C008BF4 */  jal         func_80022FD0
/* 02C03C 8002C48C 02002025 */   move       $a0, $s0
/* 02C040 8002C490 3C04800B */  lui         $a0, %hi(D_800ABDD8)
/* 02C044 8002C494 0C0004C9 */  jal         func_80001324
/* 02C048 8002C498 8C84BDD8 */   lw         $a0, %lo(D_800ABDD8)($a0)
/* 02C04C 8002C49C 8E020000 */  lw          $v0, 0x0($s0)
/* 02C050 8002C4A0 3C0FE700 */  lui         $t7, 0xe700
/* 02C054 8002C4A4 3C19E300 */  lui         $t9, 0xe300
/* 02C058 8002C4A8 244E0008 */  addiu       $t6, $v0, 0x8
/* 02C05C 8002C4AC AE0E0000 */  sw          $t6, 0x0($s0)
/* 02C060 8002C4B0 AC400004 */  sw          $zero, 0x4($v0)
/* 02C064 8002C4B4 AC4F0000 */  sw          $t7, 0x0($v0)
/* 02C068 8002C4B8 8E020000 */  lw          $v0, 0x0($s0)
/* 02C06C 8002C4BC 37390A01 */  ori         $t9, $t9, 0xa01
/* 02C070 8002C4C0 3C08800F */  lui         $t0, %hi(D_800F1AC0)
/* 02C074 8002C4C4 24580008 */  addiu       $t8, $v0, 0x8
/* 02C078 8002C4C8 AE180000 */  sw          $t8, 0x0($s0)
/* 02C07C 8002C4CC AC400004 */  sw          $zero, 0x4($v0)
/* 02C080 8002C4D0 AC590000 */  sw          $t9, 0x0($v0)
/* 02C084 8002C4D4 8D081AC0 */  lw          $t0, %lo(D_800F1AC0)($t0)
/* 02C088 8002C4D8 2D010005 */  sltiu       $at, $t0, 0x5
/* 02C08C 8002C4DC 1020006C */  beqz        $at, L8002C690
/* 02C090 8002C4E0 00084080 */   sll        $t0, $t0, 2
/* 02C094 8002C4E4 3C01800A */  lui         $at, %hi(jtbl_800A58EC)
/* 02C098 8002C4E8 00280821 */  addu        $at, $at, $t0
/* 02C09C 8002C4EC 8C2858EC */  lw          $t0, %lo(jtbl_800A58EC)($at)
/* 02C0A0 8002C4F0 01000008 */  jr          $t0
/* 02C0A4 8002C4F4 00000000 */   nop
glabel L8002C4F8
/* 02C0A8 8002C4F8 02002025 */  move        $a0, $s0
/* 02C0AC 8002C4FC 0C00AEDA */  jal         func_8002BB68
/* 02C0B0 8002C500 240500AA */   addiu      $a1, $zero, 0xaa
/* 02C0B4 8002C504 02002025 */  move        $a0, $s0
/* 02C0B8 8002C508 0C00AE44 */  jal         func_8002B910
/* 02C0BC 8002C50C 240500FF */   addiu      $a1, $zero, 0xff
/* 02C0C0 8002C510 0C00AF6D */  jal         func_8002BDB4
/* 02C0C4 8002C514 02002025 */   move       $a0, $s0
/* 02C0C8 8002C518 0C00AFA7 */  jal         func_8002BE9C
/* 02C0CC 8002C51C 02002025 */   move       $a0, $s0
/* 02C0D0 8002C520 1000005C */  b           .L8002C694
/* 02C0D4 8002C524 8FBF001C */   lw         $ra, 0x1c($sp)
glabel L8002C528
/* 02C0D8 8002C528 02002025 */  move        $a0, $s0
/* 02C0DC 8002C52C 0C00AEDA */  jal         func_8002BB68
/* 02C0E0 8002C530 240500AA */   addiu      $a1, $zero, 0xaa
/* 02C0E4 8002C534 02002025 */  move        $a0, $s0
/* 02C0E8 8002C538 0C00AE44 */  jal         func_8002B910
/* 02C0EC 8002C53C 240500FF */   addiu      $a1, $zero, 0xff
/* 02C0F0 8002C540 0C00AF6D */  jal         func_8002BDB4
/* 02C0F4 8002C544 02002025 */   move       $a0, $s0
/* 02C0F8 8002C548 10000052 */  b           .L8002C694
/* 02C0FC 8002C54C 8FBF001C */   lw         $ra, 0x1c($sp)
glabel L8002C550
/* 02C100 8002C550 0C002C3F */  jal         func_8000B0FC
/* 02C104 8002C554 00000000 */   nop
/* 02C108 8002C558 3C09800F */  lui         $t1, %hi(D_800F1AC4)
/* 02C10C 8002C55C 8D291AC4 */  lw          $t1, %lo(D_800F1AC4)($t1)
/* 02C110 8002C560 240A0000 */  addiu       $t2, $zero, 0x0
/* 02C114 8002C564 004A3023 */  subu        $a2, $v0, $t2
/* 02C118 8002C568 0069082B */  sltu        $at, $v1, $t1
/* 02C11C 8002C56C 00C13023 */  subu        $a2, $a2, $at
/* 02C120 8002C570 24040000 */  addiu       $a0, $zero, 0x0
/* 02C124 8002C574 240500FF */  addiu       $a1, $zero, 0xff
/* 02C128 8002C578 0C01492E */  jal         __ll_mul
/* 02C12C 8002C57C 00693823 */   subu       $a3, $v1, $t1
/* 02C130 8002C580 00402025 */  move        $a0, $v0
/* 02C134 8002C584 00602825 */  move        $a1, $v1
/* 02C138 8002C588 24060000 */  addiu       $a2, $zero, 0x0
/* 02C13C 8002C58C 0C0148EE */  jal         __ull_div
/* 02C140 8002C590 2407012C */   addiu      $a3, $zero, 0x12c
/* 02C144 8002C594 00602025 */  move        $a0, $v1
/* 02C148 8002C598 04610003 */  bgez        $v1, .L8002C5A8
/* 02C14C 8002C59C 00603025 */   move       $a2, $v1
/* 02C150 8002C5A0 10000005 */  b           .L8002C5B8
/* 02C154 8002C5A4 00003025 */   move       $a2, $zero
.L8002C5A8:
/* 02C158 8002C5A8 28810100 */  slti        $at, $a0, 0x100
/* 02C15C 8002C5AC 54200003 */  bnel        $at, $zero, .L8002C5BC
/* 02C160 8002C5B0 02002025 */   move       $a0, $s0
/* 02C164 8002C5B4 240600FF */  addiu       $a2, $zero, 0xff
.L8002C5B8:
/* 02C168 8002C5B8 02002025 */  move        $a0, $s0
.L8002C5BC:
/* 02C16C 8002C5BC 04C10003 */  bgez        $a2, .L8002C5CC
/* 02C170 8002C5C0 00062843 */   sra        $a1, $a2, 1
/* 02C174 8002C5C4 24C10001 */  addiu       $at, $a2, 0x1
/* 02C178 8002C5C8 00012843 */  sra         $a1, $at, 1
.L8002C5CC:
/* 02C17C 8002C5CC 0C00AEDA */  jal         func_8002BB68
/* 02C180 8002C5D0 AFA60024 */   sw         $a2, 0x24($sp)
/* 02C184 8002C5D4 8FA50024 */  lw          $a1, 0x24($sp)
/* 02C188 8002C5D8 0C00AE44 */  jal         func_8002B910
/* 02C18C 8002C5DC 02002025 */   move       $a0, $s0
/* 02C190 8002C5E0 1000002C */  b           .L8002C694
/* 02C194 8002C5E4 8FBF001C */   lw         $ra, 0x1c($sp)
glabel L8002C5E8
/* 02C198 8002C5E8 0C002C3F */  jal         func_8000B0FC
/* 02C19C 8002C5EC 00000000 */   nop
/* 02C1A0 8002C5F0 3C18800F */  lui         $t8, %hi(D_800F1AC4)
/* 02C1A4 8002C5F4 8F181AC4 */  lw          $t8, %lo(D_800F1AC4)($t8)
/* 02C1A8 8002C5F8 240D012C */  addiu       $t5, $zero, 0x12c
/* 02C1AC 8002C5FC 240C0000 */  addiu       $t4, $zero, 0x0
/* 02C1B0 8002C600 01827023 */  subu        $t6, $t4, $v0
/* 02C1B4 8002C604 01A3082B */  sltu        $at, $t5, $v1
/* 02C1B8 8002C608 01A37823 */  subu        $t7, $t5, $v1
/* 02C1BC 8002C60C 01C17023 */  subu        $t6, $t6, $at
/* 02C1C0 8002C610 01F83821 */  addu        $a3, $t7, $t8
/* 02C1C4 8002C614 00F8082B */  sltu        $at, $a3, $t8
/* 02C1C8 8002C618 002E3021 */  addu        $a2, $at, $t6
/* 02C1CC 8002C61C 24080000 */  addiu       $t0, $zero, 0x0
/* 02C1D0 8002C620 00C83021 */  addu        $a2, $a2, $t0
/* 02C1D4 8002C624 24040000 */  addiu       $a0, $zero, 0x0
/* 02C1D8 8002C628 0C01492E */  jal         __ll_mul
/* 02C1DC 8002C62C 240500FF */   addiu      $a1, $zero, 0xff
/* 02C1E0 8002C630 00402025 */  move        $a0, $v0
/* 02C1E4 8002C634 00602825 */  move        $a1, $v1
/* 02C1E8 8002C638 24060000 */  addiu       $a2, $zero, 0x0
/* 02C1EC 8002C63C 0C0148EE */  jal         __ull_div
/* 02C1F0 8002C640 2407012C */   addiu      $a3, $zero, 0x12c
/* 02C1F4 8002C644 00602025 */  move        $a0, $v1
/* 02C1F8 8002C648 04610003 */  bgez        $v1, .L8002C658
/* 02C1FC 8002C64C 00603025 */   move       $a2, $v1
/* 02C200 8002C650 10000005 */  b           .L8002C668
/* 02C204 8002C654 00003025 */   move       $a2, $zero
.L8002C658:
/* 02C208 8002C658 28810100 */  slti        $at, $a0, 0x100
/* 02C20C 8002C65C 54200003 */  bnel        $at, $zero, .L8002C66C
/* 02C210 8002C660 02002025 */   move       $a0, $s0
/* 02C214 8002C664 240600FF */  addiu       $a2, $zero, 0xff
.L8002C668:
/* 02C218 8002C668 02002025 */  move        $a0, $s0
.L8002C66C:
/* 02C21C 8002C66C 04C10003 */  bgez        $a2, .L8002C67C
/* 02C220 8002C670 00062843 */   sra        $a1, $a2, 1
/* 02C224 8002C674 24C10001 */  addiu       $at, $a2, 0x1
/* 02C228 8002C678 00012843 */  sra         $a1, $at, 1
.L8002C67C:
/* 02C22C 8002C67C 0C00AEDA */  jal         func_8002BB68
/* 02C230 8002C680 AFA60024 */   sw         $a2, 0x24($sp)
/* 02C234 8002C684 8FA50024 */  lw          $a1, 0x24($sp)
/* 02C238 8002C688 0C00AE44 */  jal         func_8002B910
/* 02C23C 8002C68C 02002025 */   move       $a0, $s0
glabel L8002C690
/* 02C240 8002C690 8FBF001C */  lw          $ra, 0x1c($sp)
.L8002C694:
/* 02C244 8002C694 8FB00018 */  lw          $s0, 0x18($sp)
/* 02C248 8002C698 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02C24C 8002C69C 03E00008 */  jr          $ra
/* 02C250 8002C6A0 00000000 */   nop

glabel func_8002C6A4 # 21
/* 02C254 8002C6A4 3C0E800F */  lui         $t6, %hi(D_800F1AC0)
/* 02C258 8002C6A8 8DCE1AC0 */  lw          $t6, %lo(D_800F1AC0)($t6)
/* 02C25C 8002C6AC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02C260 8002C6B0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 02C264 8002C6B4 2DC10005 */  sltiu       $at, $t6, 0x5
/* 02C268 8002C6B8 10200058 */  beqz        $at, L8002C81C
/* 02C26C 8002C6BC AFB00018 */   sw         $s0, 0x18($sp)
/* 02C270 8002C6C0 000E7080 */  sll         $t6, $t6, 2
/* 02C274 8002C6C4 3C01800A */  lui         $at, %hi(jtbl_800A5900)
/* 02C278 8002C6C8 002E0821 */  addu        $at, $at, $t6
/* 02C27C 8002C6CC 8C2E5900 */  lw          $t6, %lo(jtbl_800A5900)($at)
/* 02C280 8002C6D0 01C00008 */  jr          $t6
/* 02C284 8002C6D4 00000000 */   nop
glabel L8002C6D8
/* 02C288 8002C6D8 3C0F800B */  lui         $t7, %hi(D_800AD54C)
/* 02C28C 8002C6DC 8DEFD54C */  lw          $t7, %lo(D_800AD54C)($t7)
/* 02C290 8002C6E0 3C10800F */  lui         $s0, %hi(D_800F1A80)
/* 02C294 8002C6E4 26101A80 */  addiu       $s0, $s0, %lo(D_800F1A80)
/* 02C298 8002C6E8 31F88000 */  andi        $t8, $t7, 0x8000
/* 02C29C 8002C6EC 1300000A */  beqz        $t8, .L8002C718
/* 02C2A0 8002C6F0 00000000 */   nop
/* 02C2A4 8002C6F4 8E190000 */  lw          $t9, 0x0($s0)
/* 02C2A8 8002C6F8 17200005 */  bnez        $t9, .L8002C710
/* 02C2AC 8002C6FC 00000000 */   nop
/* 02C2B0 8002C700 0C00AE3A */  jal         func_8002B8E8
/* 02C2B4 8002C704 24040003 */   addiu      $a0, $zero, 0x3
/* 02C2B8 8002C708 10000003 */  b           .L8002C718
/* 02C2BC 8002C70C 00000000 */   nop
.L8002C710:
/* 02C2C0 8002C710 0C00AE3A */  jal         func_8002B8E8
/* 02C2C4 8002C714 24040002 */   addiu      $a0, $zero, 0x2
.L8002C718:
/* 02C2C8 8002C718 3C01800B */  lui         $at, %hi(D_800AD54C)
/* 02C2CC 8002C71C AC20D54C */  sw          $zero, %lo(D_800AD54C)($at)
/* 02C2D0 8002C720 3C01800B */  lui         $at, %hi(D_800AD548)
/* 02C2D4 8002C724 AC20D548 */  sw          $zero, %lo(D_800AD548)($at)
/* 02C2D8 8002C728 3C01800B */  lui         $at, %hi(D_800AD544)
/* 02C2DC 8002C72C AC20D544 */  sw          $zero, %lo(D_800AD544)($at)
/* 02C2E0 8002C730 3C01800B */  lui         $at, %hi(D_800AD540)
/* 02C2E4 8002C734 10000039 */  b           L8002C81C
/* 02C2E8 8002C738 AC20D540 */   sw         $zero, %lo(D_800AD540)($at)
glabel L8002C73C
/* 02C2EC 8002C73C 0C002C3F */  jal         func_8000B0FC
/* 02C2F0 8002C740 00000000 */   nop
/* 02C2F4 8002C744 3C08800F */  lui         $t0, %hi(D_800F1AC4)
/* 02C2F8 8002C748 8D081AC4 */  lw          $t0, %lo(D_800F1AC4)($t0)
/* 02C2FC 8002C74C 240A0000 */  addiu       $t2, $zero, 0x0
/* 02C300 8002C750 004A6023 */  subu        $t4, $v0, $t2
/* 02C304 8002C754 0068082B */  sltu        $at, $v1, $t0
/* 02C308 8002C758 01816023 */  subu        $t4, $t4, $at
/* 02C30C 8002C75C 00686823 */  subu        $t5, $v1, $t0
/* 02C310 8002C760 15800002 */  bnez        $t4, .L8002C76C
/* 02C314 8002C764 2DA1005B */   sltiu      $at, $t5, 0x5b
/* 02C318 8002C768 1420002C */  bnez        $at, L8002C81C
.L8002C76C:
/* 02C31C 8002C76C 3C10800F */   lui        $s0, %hi(D_800F1A80)
/* 02C320 8002C770 26101A80 */  addiu       $s0, $s0, %lo(D_800F1A80)
/* 02C324 8002C774 0C00B068 */  jal         func_8002C1A0
/* 02C328 8002C778 8E040000 */   lw         $a0, 0x0($s0)
/* 02C32C 8002C77C 0C002C49 */  jal         func_8000B124
/* 02C330 8002C780 AE020000 */   sw         $v0, 0x0($s0)
/* 02C334 8002C784 0C00AE3A */  jal         func_8002B8E8
/* 02C338 8002C788 24040001 */   addiu      $a0, $zero, 0x1
/* 02C33C 8002C78C 10000023 */  b           L8002C81C
/* 02C340 8002C790 00000000 */   nop
glabel L8002C794
/* 02C344 8002C794 0C002C3F */  jal         func_8000B0FC
/* 02C348 8002C798 00000000 */   nop
/* 02C34C 8002C79C 3C09800F */  lui         $t1, %hi(D_800F1AC4)
/* 02C350 8002C7A0 8D291AC4 */  lw          $t1, %lo(D_800F1AC4)($t1)
/* 02C354 8002C7A4 240E0000 */  addiu       $t6, $zero, 0x0
/* 02C358 8002C7A8 004EC023 */  subu        $t8, $v0, $t6
/* 02C35C 8002C7AC 0069082B */  sltu        $at, $v1, $t1
/* 02C360 8002C7B0 0301C023 */  subu        $t8, $t8, $at
/* 02C364 8002C7B4 0069C823 */  subu        $t9, $v1, $t1
/* 02C368 8002C7B8 17000003 */  bnez        $t8, .L8002C7C8
/* 02C36C 8002C7BC 2F21012D */   sltiu      $at, $t9, 0x12d
/* 02C370 8002C7C0 14200016 */  bnez        $at, L8002C81C
/* 02C374 8002C7C4 00000000 */   nop
.L8002C7C8:
/* 02C378 8002C7C8 0C002C49 */  jal         func_8000B124
/* 02C37C 8002C7CC 00000000 */   nop
/* 02C380 8002C7D0 0C00AE3A */  jal         func_8002B8E8
/* 02C384 8002C7D4 24040001 */   addiu      $a0, $zero, 0x1
/* 02C388 8002C7D8 10000010 */  b           L8002C81C
/* 02C38C 8002C7DC 00000000 */   nop
glabel L8002C7E0
/* 02C390 8002C7E0 0C002C3F */  jal         func_8000B0FC
/* 02C394 8002C7E4 00000000 */   nop
/* 02C398 8002C7E8 3C08800F */  lui         $t0, %hi(D_800F1AC4)
/* 02C39C 8002C7EC 8D081AC4 */  lw          $t0, %lo(D_800F1AC4)($t0)
/* 02C3A0 8002C7F0 240A0000 */  addiu       $t2, $zero, 0x0
/* 02C3A4 8002C7F4 004A6023 */  subu        $t4, $v0, $t2
/* 02C3A8 8002C7F8 0068082B */  sltu        $at, $v1, $t0
/* 02C3AC 8002C7FC 01816023 */  subu        $t4, $t4, $at
/* 02C3B0 8002C800 00686823 */  subu        $t5, $v1, $t0
/* 02C3B4 8002C804 15800003 */  bnez        $t4, .L8002C814
/* 02C3B8 8002C808 2DA1012D */   sltiu      $at, $t5, 0x12d
/* 02C3BC 8002C80C 14200003 */  bnez        $at, L8002C81C
/* 02C3C0 8002C810 00000000 */   nop
.L8002C814:
/* 02C3C4 8002C814 0C00B090 */  jal         func_8002C240
/* 02C3C8 8002C818 00000000 */   nop
glabel L8002C81C
/* 02C3CC 8002C81C 3C09800F */  lui         $t1, %hi(D_800F1A74)
/* 02C3D0 8002C820 8D291A74 */  lw          $t1, %lo(D_800F1A74)($t1)
/* 02C3D4 8002C824 00008025 */  move        $s0, $zero
/* 02C3D8 8002C828 5120000E */  beql        $t1, $zero, .L8002C864
/* 02C3DC 8002C82C 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002C830:
/* 02C3E0 8002C830 5E000004 */  bgtzl       $s0, .L8002C844
/* 02C3E4 8002C834 26100001 */   addiu      $s0, $s0, 0x1
/* 02C3E8 8002C838 0C0448D1 */  jal         func_80112344
/* 02C3EC 8002C83C 02002025 */   move       $a0, $s0
/* 02C3F0 8002C840 26100001 */  addiu       $s0, $s0, 0x1
.L8002C844:
/* 02C3F4 8002C844 24010003 */  addiu       $at, $zero, 0x3
/* 02C3F8 8002C848 1601FFF9 */  bne         $s0, $at, .L8002C830
/* 02C3FC 8002C84C 00000000 */   nop
/* 02C400 8002C850 0C044BC4 */  jal         func_80112F10
/* 02C404 8002C854 00000000 */   nop
/* 02C408 8002C858 0C0024D1 */  jal         func_80009344
/* 02C40C 8002C85C 00002025 */   move       $a0, $zero
/* 02C410 8002C860 8FBF001C */  lw          $ra, 0x1c($sp)
.L8002C864:
/* 02C414 8002C864 8FB00018 */  lw          $s0, 0x18($sp)
/* 02C418 8002C868 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02C41C 8002C86C 03E00008 */  jr          $ra
/* 02C420 8002C870 00000000 */   nop

glabel func_8002C874 # 22
/* 02C424 8002C874 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02C428 8002C878 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02C42C 8002C87C 0C04467D */  jal         func_801119F4
/* 02C430 8002C880 2404FFFF */   addiu      $a0, $zero, -0x1
/* 02C434 8002C884 3C04800F */  lui         $a0, %hi(D_800F10B0)
/* 02C438 8002C888 0C00B068 */  jal         func_8002C1A0
/* 02C43C 8002C88C 248410B0 */   addiu      $a0, $a0, %lo(D_800F10B0)
/* 02C440 8002C890 3C01800F */  lui         $at, %hi(D_800F1A80)
/* 02C444 8002C894 AC221A80 */  sw          $v0, %lo(D_800F1A80)($at)
/* 02C448 8002C898 0C002CB2 */  jal         func_8000B2C8
/* 02C44C 8002C89C 24040003 */   addiu      $a0, $zero, 0x3
/* 02C450 8002C8A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02C454 8002C8A4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02C458 8002C8A8 03E00008 */  jr          $ra
/* 02C45C 8002C8AC 00000000 */   nop

glabel func_8002C8B0 # 23
/* 02C460 8002C8B0 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 02C464 8002C8B4 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 02C468 8002C8B8 4487B000 */  mtc1        $a3, $f22
/* 02C46C 8002C8BC AFBF0034 */  sw          $ra, 0x34($sp)
/* 02C470 8002C8C0 AFB00030 */  sw          $s0, 0x30($sp)
/* 02C474 8002C8C4 00C08025 */  move        $s0, $a2
/* 02C478 8002C8C8 F7B80028 */  sdc1        $f24, 0x28($sp)
/* 02C47C 8002C8CC F7B40018 */  sdc1        $f20, 0x18($sp)
/* 02C480 8002C8D0 AFA40050 */  sw          $a0, 0x50($sp)
/* 02C484 8002C8D4 0C0071C5 */  jal         func_8001C714
/* 02C488 8002C8D8 AFA50054 */   sw         $a1, 0x54($sp)
/* 02C48C 8002C8DC 28410004 */  slti        $at, $v0, 0x4
/* 02C490 8002C8E0 10200003 */  beqz        $at, .L8002C8F0
/* 02C494 8002C8E4 00000000 */   nop
/* 02C498 8002C8E8 100000A4 */  b           .L8002CB7C
/* 02C49C 8002C8EC 00001025 */   move       $v0, $zero
.L8002C8F0:
/* 02C4A0 8002C8F0 3C01800A */  lui         $at, %hi(D_800A5948)
/* 02C4A4 8002C8F4 C4245948 */  lwc1        $f4, %lo(D_800A5948)($at)
/* 02C4A8 8002C8F8 3C013F80 */  lui         $at, 0x3f80
/* 02C4AC 8002C8FC 4604B03C */  c.lt.s      $f22, $f4
/* 02C4B0 8002C900 00000000 */  nop
/* 02C4B4 8002C904 45020031 */  bc1fl       .L8002C9CC
/* 02C4B8 8002C908 44819000 */   mtc1       $at, $f18
/* 02C4BC 8002C90C 0C00EADA */  jal         func_8003AB68
/* 02C4C0 8002C910 00000000 */   nop
/* 02C4C4 8002C914 3C013DF0 */  lui         $at, 0x3df0
/* 02C4C8 8002C918 4481B800 */  mtc1        $at, $f23
/* 02C4CC 8002C91C 44823000 */  mtc1        $v0, $f6
/* 02C4D0 8002C920 3C013FE0 */  lui         $at, 0x3fe0
/* 02C4D4 8002C924 4481C800 */  mtc1        $at, $f25
/* 02C4D8 8002C928 4480B000 */  mtc1        $zero, $f22
/* 02C4DC 8002C92C 4480C000 */  mtc1        $zero, $f24
/* 02C4E0 8002C930 04410006 */  bgez        $v0, .L8002C94C
/* 02C4E4 8002C934 46803221 */   cvt.d.w    $f8, $f6
/* 02C4E8 8002C938 3C0141F0 */  lui         $at, 0x41f0
/* 02C4EC 8002C93C 44815800 */  mtc1        $at, $f11
/* 02C4F0 8002C940 44805000 */  mtc1        $zero, $f10
/* 02C4F4 8002C944 00000000 */  nop
/* 02C4F8 8002C948 462A4200 */  add.d       $f8, $f8, $f10
.L8002C94C:
/* 02C4FC 8002C94C 46364402 */  mul.d       $f16, $f8, $f22
/* 02C500 8002C950 3C01800A */  lui         $at, %hi(D_800A5950)
/* 02C504 8002C954 D4245950 */  ldc1        $f4, %lo(D_800A5950)($at)
/* 02C508 8002C958 3C013F00 */  lui         $at, 0x3f00
/* 02C50C 8002C95C 44814000 */  mtc1        $at, $f8
/* 02C510 8002C960 00000000 */  nop
/* 02C514 8002C964 E7A80044 */  swc1        $f8, 0x44($sp)
/* 02C518 8002C968 46388481 */  sub.d       $f18, $f16, $f24
/* 02C51C 8002C96C 46249182 */  mul.d       $f6, $f18, $f4
/* 02C520 8002C970 462032A0 */  cvt.s.d     $f10, $f6
/* 02C524 8002C974 0C00EADA */  jal         func_8003AB68
/* 02C528 8002C978 E7AA0040 */   swc1       $f10, 0x40($sp)
/* 02C52C 8002C97C 44828000 */  mtc1        $v0, $f16
/* 02C530 8002C980 3C014120 */  lui         $at, 0x4120
/* 02C534 8002C984 44810000 */  mtc1        $at, $f0
/* 02C538 8002C988 04410006 */  bgez        $v0, .L8002C9A4
/* 02C53C 8002C98C 468084A1 */   cvt.d.w    $f18, $f16
/* 02C540 8002C990 3C0141F0 */  lui         $at, 0x41f0
/* 02C544 8002C994 44812800 */  mtc1        $at, $f5
/* 02C548 8002C998 44802000 */  mtc1        $zero, $f4
/* 02C54C 8002C99C 00000000 */  nop
/* 02C550 8002C9A0 46249480 */  add.d       $f18, $f18, $f4
.L8002C9A4:
/* 02C554 8002C9A4 46369182 */  mul.d       $f6, $f18, $f22
/* 02C558 8002C9A8 3C01800A */  lui         $at, %hi(D_800A5958)
/* 02C55C 8002C9AC D4285958 */  ldc1        $f8, %lo(D_800A5958)($at)
/* 02C560 8002C9B0 46000506 */  mov.s       $f20, $f0
/* 02C564 8002C9B4 46383281 */  sub.d       $f10, $f6, $f24
/* 02C568 8002C9B8 46285402 */  mul.d       $f16, $f10, $f8
/* 02C56C 8002C9BC 46208120 */  cvt.s.d     $f4, $f16
/* 02C570 8002C9C0 1000004B */  b           .L8002CAF0
/* 02C574 8002C9C4 E7A40048 */   swc1       $f4, 0x48($sp)
/* 02C578 8002C9C8 44819000 */  mtc1        $at, $f18
.L8002C9CC:
/* 02C57C 8002C9CC 0C00EADA */  jal         func_8003AB68
/* 02C580 8002C9D0 46169503 */   div.s      $f20, $f18, $f22
/* 02C584 8002C9D4 3C013DF0 */  lui         $at, 0x3df0
/* 02C588 8002C9D8 4481B800 */  mtc1        $at, $f23
/* 02C58C 8002C9DC 44823000 */  mtc1        $v0, $f6
/* 02C590 8002C9E0 3C013FE0 */  lui         $at, 0x3fe0
/* 02C594 8002C9E4 4481C800 */  mtc1        $at, $f25
/* 02C598 8002C9E8 4480B000 */  mtc1        $zero, $f22
/* 02C59C 8002C9EC 4480C000 */  mtc1        $zero, $f24
/* 02C5A0 8002C9F0 04410006 */  bgez        $v0, .L8002CA0C
/* 02C5A4 8002C9F4 468032A1 */   cvt.d.w    $f10, $f6
/* 02C5A8 8002C9F8 3C0141F0 */  lui         $at, 0x41f0
/* 02C5AC 8002C9FC 44814800 */  mtc1        $at, $f9
/* 02C5B0 8002CA00 44804000 */  mtc1        $zero, $f8
/* 02C5B4 8002CA04 00000000 */  nop
/* 02C5B8 8002CA08 46285280 */  add.d       $f10, $f10, $f8
.L8002CA0C:
/* 02C5BC 8002CA0C 46365402 */  mul.d       $f16, $f10, $f22
/* 02C5C0 8002CA10 3C01800A */  lui         $at, %hi(D_800A5960)
/* 02C5C4 8002CA14 D4325960 */  ldc1        $f18, %lo(D_800A5960)($at)
/* 02C5C8 8002CA18 C6080000 */  lwc1        $f8, 0x0($s0)
/* 02C5CC 8002CA1C 46388101 */  sub.d       $f4, $f16, $f24
/* 02C5D0 8002CA20 46322182 */  mul.d       $f6, $f4, $f18
/* 02C5D4 8002CA24 00000000 */  nop
/* 02C5D8 8002CA28 46144282 */  mul.s       $f10, $f8, $f20
/* 02C5DC 8002CA2C 46005421 */  cvt.d.s     $f16, $f10
/* 02C5E0 8002CA30 46303100 */  add.d       $f4, $f6, $f16
/* 02C5E4 8002CA34 462024A0 */  cvt.s.d     $f18, $f4
/* 02C5E8 8002CA38 0C00EADA */  jal         func_8003AB68
/* 02C5EC 8002CA3C E6120000 */   swc1       $f18, 0x0($s0)
/* 02C5F0 8002CA40 44824000 */  mtc1        $v0, $f8
/* 02C5F4 8002CA44 3C0141F0 */  lui         $at, 0x41f0
/* 02C5F8 8002CA48 04410005 */  bgez        $v0, .L8002CA60
/* 02C5FC 8002CA4C 468042A1 */   cvt.d.w    $f10, $f8
/* 02C600 8002CA50 44813800 */  mtc1        $at, $f7
/* 02C604 8002CA54 44803000 */  mtc1        $zero, $f6
/* 02C608 8002CA58 00000000 */  nop
/* 02C60C 8002CA5C 46265280 */  add.d       $f10, $f10, $f6
.L8002CA60:
/* 02C610 8002CA60 46365402 */  mul.d       $f16, $f10, $f22
/* 02C614 8002CA64 3C01800A */  lui         $at, %hi(D_800A5968)
/* 02C618 8002CA68 D4325968 */  ldc1        $f18, %lo(D_800A5968)($at)
/* 02C61C 8002CA6C C6060004 */  lwc1        $f6, 0x4($s0)
/* 02C620 8002CA70 46388101 */  sub.d       $f4, $f16, $f24
/* 02C624 8002CA74 46322202 */  mul.d       $f8, $f4, $f18
/* 02C628 8002CA78 00000000 */  nop
/* 02C62C 8002CA7C 46143282 */  mul.s       $f10, $f6, $f20
/* 02C630 8002CA80 46005421 */  cvt.d.s     $f16, $f10
/* 02C634 8002CA84 46304100 */  add.d       $f4, $f8, $f16
/* 02C638 8002CA88 462024A0 */  cvt.s.d     $f18, $f4
/* 02C63C 8002CA8C 0C00EADA */  jal         func_8003AB68
/* 02C640 8002CA90 E6120004 */   swc1       $f18, 0x4($s0)
/* 02C644 8002CA94 44823000 */  mtc1        $v0, $f6
/* 02C648 8002CA98 3C014120 */  lui         $at, 0x4120
/* 02C64C 8002CA9C 44810000 */  mtc1        $at, $f0
/* 02C650 8002CAA0 04410006 */  bgez        $v0, .L8002CABC
/* 02C654 8002CAA4 468032A1 */   cvt.d.w    $f10, $f6
/* 02C658 8002CAA8 3C0141F0 */  lui         $at, 0x41f0
/* 02C65C 8002CAAC 44814800 */  mtc1        $at, $f9
/* 02C660 8002CAB0 44804000 */  mtc1        $zero, $f8
/* 02C664 8002CAB4 00000000 */  nop
/* 02C668 8002CAB8 46285280 */  add.d       $f10, $f10, $f8
.L8002CABC:
/* 02C66C 8002CABC 46365402 */  mul.d       $f16, $f10, $f22
/* 02C670 8002CAC0 3C01800A */  lui         $at, %hi(D_800A5970)
/* 02C674 8002CAC4 D4325970 */  ldc1        $f18, %lo(D_800A5970)($at)
/* 02C678 8002CAC8 C6080008 */  lwc1        $f8, 0x8($s0)
/* 02C67C 8002CACC 46388101 */  sub.d       $f4, $f16, $f24
/* 02C680 8002CAD0 46322182 */  mul.d       $f6, $f4, $f18
/* 02C684 8002CAD4 00000000 */  nop
/* 02C688 8002CAD8 46144282 */  mul.s       $f10, $f8, $f20
/* 02C68C 8002CADC 46005421 */  cvt.d.s     $f16, $f10
/* 02C690 8002CAE0 4600A502 */  mul.s       $f20, $f20, $f0
/* 02C694 8002CAE4 46303100 */  add.d       $f4, $f6, $f16
/* 02C698 8002CAE8 462024A0 */  cvt.s.d     $f18, $f4
/* 02C69C 8002CAEC E6120008 */  swc1        $f18, 0x8($s0)
.L8002CAF0:
/* 02C6A0 8002CAF0 3C01800A */  lui         $at, %hi(D_800A5978)
/* 02C6A4 8002CAF4 C4285978 */  lwc1        $f8, %lo(D_800A5978)($at)
/* 02C6A8 8002CAF8 02002025 */  move        $a0, $s0
/* 02C6AC 8002CAFC 4608A03C */  c.lt.s      $f20, $f8
/* 02C6B0 8002CB00 00000000 */  nop
/* 02C6B4 8002CB04 45000003 */  bc1f        .L8002CB14
/* 02C6B8 8002CB08 00000000 */   nop
/* 02C6BC 8002CB0C 1000001B */  b           .L8002CB7C
/* 02C6C0 8002CB10 24020001 */   addiu      $v0, $zero, 0x1
.L8002CB14:
/* 02C6C4 8002CB14 0C00E939 */  jal         func_8003A4E4
/* 02C6C8 8002CB18 27A5004C */   addiu      $a1, $sp, 0x4c
/* 02C6CC 8002CB1C 3C014120 */  lui         $at, 0x4120
/* 02C6D0 8002CB20 44810000 */  mtc1        $at, $f0
/* 02C6D4 8002CB24 00000000 */  nop
/* 02C6D8 8002CB28 4600A03C */  c.lt.s      $f20, $f0
/* 02C6DC 8002CB2C 00000000 */  nop
/* 02C6E0 8002CB30 45020006 */  bc1fl       .L8002CB4C
/* 02C6E4 8002CB34 4600018D */   trunc.w.s  $f6, $f0
/* 02C6E8 8002CB38 4600A28D */  trunc.w.s   $f10, $f20
/* 02C6EC 8002CB3C 440F5000 */  mfc1        $t7, $f10
/* 02C6F0 8002CB40 10000005 */  b           .L8002CB58
/* 02C6F4 8002CB44 A3AF004F */   sb         $t7, 0x4f($sp)
/* 02C6F8 8002CB48 4600018D */  trunc.w.s   $f6, $f0
.L8002CB4C:
/* 02C6FC 8002CB4C 44193000 */  mfc1        $t9, $f6
/* 02C700 8002CB50 00000000 */  nop
/* 02C704 8002CB54 A3B9004F */  sb          $t9, 0x4f($sp)
.L8002CB58:
/* 02C708 8002CB58 8BA8004C */  lwl         $t0, 0x4c($sp)
/* 02C70C 8002CB5C 9BA8004F */  lwr         $t0, 0x4f($sp)
/* 02C710 8002CB60 8FA40050 */  lw          $a0, 0x50($sp)
/* 02C714 8002CB64 8FA50054 */  lw          $a1, 0x54($sp)
/* 02C718 8002CB68 ABA80008 */  swl         $t0, 0x8($sp)
/* 02C71C 8002CB6C BBA8000B */  swr         $t0, 0xb($sp)
/* 02C720 8002CB70 0C007201 */  jal         func_8001C804
/* 02C724 8002CB74 8FA60008 */   lw         $a2, 0x8($sp)
/* 02C728 8002CB78 24020001 */  addiu       $v0, $zero, 0x1
.L8002CB7C:
/* 02C72C 8002CB7C 8FBF0034 */  lw          $ra, 0x34($sp)
/* 02C730 8002CB80 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 02C734 8002CB84 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 02C738 8002CB88 D7B80028 */  ldc1        $f24, 0x28($sp)
/* 02C73C 8002CB8C 8FB00030 */  lw          $s0, 0x30($sp)
/* 02C740 8002CB90 03E00008 */  jr          $ra
/* 02C744 8002CB94 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_8002CB98 # 24
/* 02C748 8002CB98 03E00008 */  jr          $ra
/* 02C74C 8002CB9C 00000000 */   nop

glabel func_8002CBA0 # 25
/* 02C750 8002CBA0 03E00008 */  jr          $ra
/* 02C754 8002CBA4 00000000 */   nop

glabel func_8002CBA8 # 26
/* 02C758 8002CBA8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02C75C 8002CBAC AFBF0014 */  sw          $ra, 0x14($sp)
/* 02C760 8002CBB0 948E0036 */  lhu         $t6, 0x36($a0)
/* 02C764 8002CBB4 00802825 */  move        $a1, $a0
/* 02C768 8002CBB8 3C01800A */  lui         $at, %hi(D_800A597C)
/* 02C76C 8002CBBC 31CF00F0 */  andi        $t7, $t6, 0xf0
/* 02C770 8002CBC0 15E00009 */  bnez        $t7, .L8002CBE8
/* 02C774 8002CBC4 00000000 */   nop
/* 02C778 8002CBC8 C4840024 */  lwc1        $f4, 0x24($a0)
/* 02C77C 8002CBCC C426597C */  lwc1        $f6, %lo(D_800A597C)($at)
/* 02C780 8002CBD0 3C04800F */  lui         $a0, %hi(D_800F1B20)
/* 02C784 8002CBD4 3C013E00 */  lui         $at, 0x3e00
/* 02C788 8002CBD8 4606203C */  c.lt.s      $f4, $f6
/* 02C78C 8002CBDC 24841B20 */  addiu       $a0, $a0, %lo(D_800F1B20)
/* 02C790 8002CBE0 45020004 */  bc1fl       .L8002CBF4
/* 02C794 8002CBE4 44810000 */   mtc1       $at, $f0
.L8002CBE8:
/* 02C798 8002CBE8 1000002E */  b           .L8002CCA4
/* 02C79C 8002CBEC 00001025 */   move       $v0, $zero
/* 02C7A0 8002CBF0 44810000 */  mtc1        $at, $f0
.L8002CBF4:
/* 02C7A4 8002CBF4 3C01800F */  lui         $at, %hi(D_800F1B44)
/* 02C7A8 8002CBF8 C42A1B44 */  lwc1        $f10, %lo(D_800F1B44)($at)
/* 02C7AC 8002CBFC C4A8004C */  lwc1        $f8, 0x4c($a1)
/* 02C7B0 8002CC00 3C01800F */  lui         $at, %hi(D_800F1B40)
/* 02C7B4 8002CC04 C4A60044 */  lwc1        $f6, 0x44($a1)
/* 02C7B8 8002CC08 460A4400 */  add.s       $f16, $f8, $f10
/* 02C7BC 8002CC0C C4281B40 */  lwc1        $f8, %lo(D_800F1B40)($at)
/* 02C7C0 8002CC10 3C010001 */  lui         $at, 0x1
/* 02C7C4 8002CC14 3421E240 */  ori         $at, $at, 0xe240
/* 02C7C8 8002CC18 46083280 */  add.s       $f10, $f6, $f8
/* 02C7CC 8002CC1C 46008482 */  mul.s       $f18, $f16, $f0
/* 02C7D0 8002CC20 00000000 */  nop
/* 02C7D4 8002CC24 46005402 */  mul.s       $f16, $f10, $f0
/* 02C7D8 8002CC28 4600910D */  trunc.w.s   $f4, $f18
/* 02C7DC 8002CC2C 4600848D */  trunc.w.s   $f18, $f16
/* 02C7E0 8002CC30 44192000 */  mfc1        $t9, $f4
/* 02C7E4 8002CC34 440A9000 */  mfc1        $t2, $f18
/* 02C7E8 8002CC38 001940C0 */  sll         $t0, $t9, 3
/* 02C7EC 8002CC3C 01194021 */  addu        $t0, $t0, $t9
/* 02C7F0 8002CC40 000A5880 */  sll         $t3, $t2, 2
/* 02C7F4 8002CC44 016A5823 */  subu        $t3, $t3, $t2
/* 02C7F8 8002CC48 000B5880 */  sll         $t3, $t3, 2
/* 02C7FC 8002CC4C 016A5823 */  subu        $t3, $t3, $t2
/* 02C800 8002CC50 000B5880 */  sll         $t3, $t3, 2
/* 02C804 8002CC54 00084080 */  sll         $t0, $t0, 2
/* 02C808 8002CC58 01194023 */  subu        $t0, $t0, $t9
/* 02C80C 8002CC5C 016A5823 */  subu        $t3, $t3, $t2
/* 02C810 8002CC60 000B5880 */  sll         $t3, $t3, 2
/* 02C814 8002CC64 00084080 */  sll         $t0, $t0, 2
/* 02C818 8002CC68 01194023 */  subu        $t0, $t0, $t9
/* 02C81C 8002CC6C 016A5821 */  addu        $t3, $t3, $t2
/* 02C820 8002CC70 010B1021 */  addu        $v0, $t0, $t3
/* 02C824 8002CC74 00411021 */  addu        $v0, $v0, $at
/* 02C828 8002CC78 14400003 */  bnez        $v0, .L8002CC88
/* 02C82C 8002CC7C 00403025 */   move       $a2, $v0
/* 02C830 8002CC80 10000001 */  b           .L8002CC88
/* 02C834 8002CC84 24060001 */   addiu      $a2, $zero, 0x1
.L8002CC88:
/* 02C838 8002CC88 0C010695 */  jal         func_80041A54
/* 02C83C 8002CC8C AFA6001C */   sw         $a2, 0x1c($sp)
/* 02C840 8002CC90 10400003 */  beqz        $v0, .L8002CCA0
/* 02C844 8002CC94 8FA6001C */   lw         $a2, 0x1c($sp)
/* 02C848 8002CC98 10000002 */  b           .L8002CCA4
/* 02C84C 8002CC9C 00C01025 */   move       $v0, $a2
.L8002CCA0:
/* 02C850 8002CCA0 00001025 */  move        $v0, $zero
.L8002CCA4:
/* 02C854 8002CCA4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02C858 8002CCA8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 02C85C 8002CCAC 03E00008 */  jr          $ra
/* 02C860 8002CCB0 00000000 */   nop

glabel func_8002CCB4 # 27
/* 02C864 8002CCB4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02C868 8002CCB8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02C86C 8002CCBC AFA40018 */  sw          $a0, 0x18($sp)
/* 02C870 8002CCC0 8CA60000 */  lw          $a2, 0x0($a1)
/* 02C874 8002CCC4 3C04800F */  lui         $a0, %hi(D_800F1B20)
/* 02C878 8002CCC8 00A03825 */  move        $a3, $a1
/* 02C87C 8002CCCC 10C00006 */  beqz        $a2, .L8002CCE8
/* 02C880 8002CCD0 24841B20 */   addiu      $a0, $a0, %lo(D_800F1B20)
/* 02C884 8002CCD4 8FA50018 */  lw          $a1, 0x18($sp)
/* 02C888 8002CCD8 0C0107CF */  jal         func_80041F3C
/* 02C88C 8002CCDC AFA7001C */   sw         $a3, 0x1c($sp)
/* 02C890 8002CCE0 8FA7001C */  lw          $a3, 0x1c($sp)
/* 02C894 8002CCE4 ACE00000 */  sw          $zero, 0x0($a3)
.L8002CCE8:
/* 02C898 8002CCE8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02C89C 8002CCEC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02C8A0 8002CCF0 03E00008 */  jr          $ra
/* 02C8A4 8002CCF4 00000000 */   nop

glabel func_8002CCF8 # 28
/* 02C8A8 8002CCF8 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 02C8AC 8002CCFC AFBF0034 */  sw          $ra, 0x34($sp)
/* 02C8B0 8002CD00 AFB60030 */  sw          $s6, 0x30($sp)
/* 02C8B4 8002CD04 AFB5002C */  sw          $s5, 0x2c($sp)
/* 02C8B8 8002CD08 AFB40028 */  sw          $s4, 0x28($sp)
/* 02C8BC 8002CD0C AFB30024 */  sw          $s3, 0x24($sp)
/* 02C8C0 8002CD10 AFB20020 */  sw          $s2, 0x20($sp)
/* 02C8C4 8002CD14 AFB1001C */  sw          $s1, 0x1c($sp)
/* 02C8C8 8002CD18 AFB00018 */  sw          $s0, 0x18($sp)
/* 02C8CC 8002CD1C 3C01800A */  lui         $at, %hi(D_800A5980)
/* 02C8D0 8002CD20 C4265980 */  lwc1        $f6, %lo(D_800A5980)($at)
/* 02C8D4 8002CD24 C4840024 */  lwc1        $f4, 0x24($a0)
/* 02C8D8 8002CD28 3C15800F */  lui         $s5, %hi(D_800F1B20)
/* 02C8DC 8002CD2C 00808825 */  move        $s1, $a0
/* 02C8E0 8002CD30 4606203C */  c.lt.s      $f4, $f6
/* 02C8E4 8002CD34 26B51B20 */  addiu       $s5, $s5, %lo(D_800F1B20)
/* 02C8E8 8002CD38 3C013E00 */  lui         $at, 0x3e00
/* 02C8EC 8002CD3C 0000A025 */  move        $s4, $zero
/* 02C8F0 8002CD40 45000003 */  bc1f        .L8002CD50
/* 02C8F4 8002CD44 02A02025 */   move       $a0, $s5
/* 02C8F8 8002CD48 10000057 */  b           .L8002CEA8
/* 02C8FC 8002CD4C 00001025 */   move       $v0, $zero
.L8002CD50:
/* 02C900 8002CD50 44810000 */  mtc1        $at, $f0
/* 02C904 8002CD54 3C01800F */  lui         $at, %hi(D_800F1B44)
/* 02C908 8002CD58 C42A1B44 */  lwc1        $f10, %lo(D_800F1B44)($at)
/* 02C90C 8002CD5C C628004C */  lwc1        $f8, 0x4c($s1)
/* 02C910 8002CD60 3C01800F */  lui         $at, %hi(D_800F1B40)
/* 02C914 8002CD64 C6260044 */  lwc1        $f6, 0x44($s1)
/* 02C918 8002CD68 460A4400 */  add.s       $f16, $f8, $f10
/* 02C91C 8002CD6C C4281B40 */  lwc1        $f8, %lo(D_800F1B40)($at)
/* 02C920 8002CD70 3C010001 */  lui         $at, 0x1
/* 02C924 8002CD74 3421E240 */  ori         $at, $at, 0xe240
/* 02C928 8002CD78 46083280 */  add.s       $f10, $f6, $f8
/* 02C92C 8002CD7C 46008482 */  mul.s       $f18, $f16, $f0
/* 02C930 8002CD80 00000000 */  nop
/* 02C934 8002CD84 46005402 */  mul.s       $f16, $f10, $f0
/* 02C938 8002CD88 4600910D */  trunc.w.s   $f4, $f18
/* 02C93C 8002CD8C 4600848D */  trunc.w.s   $f18, $f16
/* 02C940 8002CD90 440F2000 */  mfc1        $t7, $f4
/* 02C944 8002CD94 44089000 */  mfc1        $t0, $f18
/* 02C948 8002CD98 000FC0C0 */  sll         $t8, $t7, 3
/* 02C94C 8002CD9C 030FC021 */  addu        $t8, $t8, $t7
/* 02C950 8002CDA0 00084880 */  sll         $t1, $t0, 2
/* 02C954 8002CDA4 01284823 */  subu        $t1, $t1, $t0
/* 02C958 8002CDA8 00094880 */  sll         $t1, $t1, 2
/* 02C95C 8002CDAC 01284823 */  subu        $t1, $t1, $t0
/* 02C960 8002CDB0 00094880 */  sll         $t1, $t1, 2
/* 02C964 8002CDB4 0018C080 */  sll         $t8, $t8, 2
/* 02C968 8002CDB8 030FC023 */  subu        $t8, $t8, $t7
/* 02C96C 8002CDBC 01284823 */  subu        $t1, $t1, $t0
/* 02C970 8002CDC0 00094880 */  sll         $t1, $t1, 2
/* 02C974 8002CDC4 0018C080 */  sll         $t8, $t8, 2
/* 02C978 8002CDC8 030FC023 */  subu        $t8, $t8, $t7
/* 02C97C 8002CDCC 01284821 */  addu        $t1, $t1, $t0
/* 02C980 8002CDD0 03091021 */  addu        $v0, $t8, $t1
/* 02C984 8002CDD4 00411021 */  addu        $v0, $v0, $at
/* 02C988 8002CDD8 14400003 */  bnez        $v0, .L8002CDE8
/* 02C98C 8002CDDC 00409825 */   move       $s3, $v0
/* 02C990 8002CDE0 10000001 */  b           .L8002CDE8
/* 02C994 8002CDE4 24130001 */   addiu      $s3, $zero, 0x1
.L8002CDE8:
/* 02C998 8002CDE8 0C01081E */  jal         func_80042078
/* 02C99C 8002CDEC 02602825 */   move       $a1, $s3
/* 02C9A0 8002CDF0 1040002C */  beqz        $v0, .L8002CEA4
/* 02C9A4 8002CDF4 00408025 */   move       $s0, $v0
/* 02C9A8 8002CDF8 24160086 */  addiu       $s6, $zero, 0x86
/* 02C9AC 8002CDFC 27B20040 */  addiu       $s2, $sp, 0x40
.L8002CE00:
/* 02C9B0 8002CE00 50510024 */  beql        $v0, $s1, .L8002CE94
/* 02C9B4 8002CE04 02A02025 */   move       $a0, $s5
/* 02C9B8 8002CE08 944A0036 */  lhu         $t2, 0x36($v0)
/* 02C9BC 8002CE0C 314B00C0 */  andi        $t3, $t2, 0xc0
/* 02C9C0 8002CE10 55600020 */  bnel        $t3, $zero, .L8002CE94
/* 02C9C4 8002CE14 02A02025 */   move       $a0, $s5
/* 02C9C8 8002CE18 C6040044 */  lwc1        $f4, 0x44($s0)
/* 02C9CC 8002CE1C C6260044 */  lwc1        $f6, 0x44($s1)
/* 02C9D0 8002CE20 02402025 */  move        $a0, $s2
/* 02C9D4 8002CE24 46062201 */  sub.s       $f8, $f4, $f6
/* 02C9D8 8002CE28 E7A80040 */  swc1        $f8, 0x40($sp)
/* 02C9DC 8002CE2C C6300048 */  lwc1        $f16, 0x48($s1)
/* 02C9E0 8002CE30 C60A0048 */  lwc1        $f10, 0x48($s0)
/* 02C9E4 8002CE34 46105481 */  sub.s       $f18, $f10, $f16
/* 02C9E8 8002CE38 E7B20044 */  swc1        $f18, 0x44($sp)
/* 02C9EC 8002CE3C C626004C */  lwc1        $f6, 0x4c($s1)
/* 02C9F0 8002CE40 C604004C */  lwc1        $f4, 0x4c($s0)
/* 02C9F4 8002CE44 46062201 */  sub.s       $f8, $f4, $f6
/* 02C9F8 8002CE48 0C00E974 */  jal         func_8003A5D0
/* 02C9FC 8002CE4C E7A80048 */   swc1       $f8, 0x48($sp)
/* 02CA00 8002CE50 C62A0024 */  lwc1        $f10, 0x24($s1)
/* 02CA04 8002CE54 C6100024 */  lwc1        $f16, 0x24($s0)
/* 02CA08 8002CE58 46105480 */  add.s       $f18, $f10, $f16
/* 02CA0C 8002CE5C 4600903C */  c.lt.s      $f18, $f0
/* 02CA10 8002CE60 00000000 */  nop
/* 02CA14 8002CE64 4503000B */  bc1tl       .L8002CE94
/* 02CA18 8002CE68 02A02025 */   move       $a0, $s5
/* 02CA1C 8002CE6C 960C0034 */  lhu         $t4, 0x34($s0)
/* 02CA20 8002CE70 0200A025 */  move        $s4, $s0
/* 02CA24 8002CE74 02202025 */  move        $a0, $s1
/* 02CA28 8002CE78 16CC0005 */  bne         $s6, $t4, .L8002CE90
/* 02CA2C 8002CE7C 02002825 */   move       $a1, $s0
/* 02CA30 8002CE80 44070000 */  mfc1        $a3, $f0
/* 02CA34 8002CE84 0C00B22C */  jal         func_8002C8B0
/* 02CA38 8002CE88 02403025 */   move       $a2, $s2
/* 02CA3C 8002CE8C 10400005 */  beqz        $v0, .L8002CEA4
.L8002CE90:
/* 02CA40 8002CE90 02A02025 */   move       $a0, $s5
.L8002CE94:
/* 02CA44 8002CE94 0C01082D */  jal         func_800420B4
/* 02CA48 8002CE98 02602825 */   move       $a1, $s3
/* 02CA4C 8002CE9C 1440FFD8 */  bnez        $v0, .L8002CE00
/* 02CA50 8002CEA0 00408025 */   move       $s0, $v0
.L8002CEA4:
/* 02CA54 8002CEA4 02801025 */  move        $v0, $s4
.L8002CEA8:
/* 02CA58 8002CEA8 8FBF0034 */  lw          $ra, 0x34($sp)
/* 02CA5C 8002CEAC 8FB00018 */  lw          $s0, 0x18($sp)
/* 02CA60 8002CEB0 8FB1001C */  lw          $s1, 0x1c($sp)
/* 02CA64 8002CEB4 8FB20020 */  lw          $s2, 0x20($sp)
/* 02CA68 8002CEB8 8FB30024 */  lw          $s3, 0x24($sp)
/* 02CA6C 8002CEBC 8FB40028 */  lw          $s4, 0x28($sp)
/* 02CA70 8002CEC0 8FB5002C */  lw          $s5, 0x2c($sp)
/* 02CA74 8002CEC4 8FB60030 */  lw          $s6, 0x30($sp)
/* 02CA78 8002CEC8 03E00008 */  jr          $ra
/* 02CA7C 8002CECC 27BD0058 */   addiu      $sp, $sp, 0x58

glabel func_8002CED0 # 29
/* 02CA80 8002CED0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02CA84 8002CED4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02CA88 8002CED8 0C00EADA */  jal         func_8003AB68
/* 02CA8C 8002CEDC 00000000 */   nop
/* 02CA90 8002CEE0 44822000 */  mtc1        $v0, $f4
/* 02CA94 8002CEE4 44805000 */  mtc1        $zero, $f10
/* 02CA98 8002CEE8 04410006 */  bgez        $v0, .L8002CF04
/* 02CA9C 8002CEEC 468021A1 */   cvt.d.w    $f6, $f4
/* 02CAA0 8002CEF0 3C0141F0 */  lui         $at, 0x41f0
/* 02CAA4 8002CEF4 44814800 */  mtc1        $at, $f9
/* 02CAA8 8002CEF8 44804000 */  mtc1        $zero, $f8
/* 02CAAC 8002CEFC 00000000 */  nop
/* 02CAB0 8002CF00 46283180 */  add.d       $f6, $f6, $f8
.L8002CF04:
/* 02CAB4 8002CF04 3C013DF0 */  lui         $at, 0x3df0
/* 02CAB8 8002CF08 44815800 */  mtc1        $at, $f11
/* 02CABC 8002CF0C 3C013FE0 */  lui         $at, 0x3fe0
/* 02CAC0 8002CF10 44819800 */  mtc1        $at, $f19
/* 02CAC4 8002CF14 462A3402 */  mul.d       $f16, $f6, $f10
/* 02CAC8 8002CF18 44809000 */  mtc1        $zero, $f18
/* 02CACC 8002CF1C 3C014020 */  lui         $at, 0x4020
/* 02CAD0 8002CF20 44814800 */  mtc1        $at, $f9
/* 02CAD4 8002CF24 44804000 */  mtc1        $zero, $f8
/* 02CAD8 8002CF28 3C01800F */  lui         $at, %hi(D_800F1B40)
/* 02CADC 8002CF2C 46309101 */  sub.d       $f4, $f18, $f16
/* 02CAE0 8002CF30 46282182 */  mul.d       $f6, $f4, $f8
/* 02CAE4 8002CF34 462032A0 */  cvt.s.d     $f10, $f6
/* 02CAE8 8002CF38 0C00EADA */  jal         func_8003AB68
/* 02CAEC 8002CF3C E42A1B40 */   swc1       $f10, %lo(D_800F1B40)($at)
/* 02CAF0 8002CF40 44829000 */  mtc1        $v0, $f18
/* 02CAF4 8002CF44 44804000 */  mtc1        $zero, $f8
/* 02CAF8 8002CF48 04410006 */  bgez        $v0, .L8002CF64
/* 02CAFC 8002CF4C 46809421 */   cvt.d.w    $f16, $f18
/* 02CB00 8002CF50 3C0141F0 */  lui         $at, 0x41f0
/* 02CB04 8002CF54 44812800 */  mtc1        $at, $f5
/* 02CB08 8002CF58 44802000 */  mtc1        $zero, $f4
/* 02CB0C 8002CF5C 00000000 */  nop
/* 02CB10 8002CF60 46248400 */  add.d       $f16, $f16, $f4
.L8002CF64:
/* 02CB14 8002CF64 3C013DF0 */  lui         $at, 0x3df0
/* 02CB18 8002CF68 44814800 */  mtc1        $at, $f9
/* 02CB1C 8002CF6C 3C013FE0 */  lui         $at, 0x3fe0
/* 02CB20 8002CF70 44815800 */  mtc1        $at, $f11
/* 02CB24 8002CF74 46288182 */  mul.d       $f6, $f16, $f8
/* 02CB28 8002CF78 44805000 */  mtc1        $zero, $f10
/* 02CB2C 8002CF7C 3C014020 */  lui         $at, 0x4020
/* 02CB30 8002CF80 44812800 */  mtc1        $at, $f5
/* 02CB34 8002CF84 44802000 */  mtc1        $zero, $f4
/* 02CB38 8002CF88 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02CB3C 8002CF8C 3C01800F */  lui         $at, %hi(D_800F1B44)
/* 02CB40 8002CF90 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02CB44 8002CF94 46265481 */  sub.d       $f18, $f10, $f6
/* 02CB48 8002CF98 46249402 */  mul.d       $f16, $f18, $f4
/* 02CB4C 8002CF9C 46208220 */  cvt.s.d     $f8, $f16
/* 02CB50 8002CFA0 03E00008 */  jr          $ra
/* 02CB54 8002CFA4 E4281B44 */   swc1       $f8, %lo(D_800F1B44)($at)

glabel func_8002CFA8 # 30
/* 02CB58 8002CFA8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02CB5C 8002CFAC AFBF0014 */  sw          $ra, 0x14($sp)
/* 02CB60 8002CFB0 3C04800F */  lui         $a0, %hi(D_800F1B20)
/* 02CB64 8002CFB4 24841B20 */  addiu       $a0, $a0, %lo(D_800F1B20)
/* 02CB68 8002CFB8 0C01059C */  jal         func_80041670
/* 02CB6C 8002CFBC 240501F3 */   addiu      $a1, $zero, 0x1f3
/* 02CB70 8002CFC0 44800000 */  mtc1        $zero, $f0
/* 02CB74 8002CFC4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02CB78 8002CFC8 3C01800F */  lui         $at, %hi(D_800F1B40)
/* 02CB7C 8002CFCC E4201B40 */  swc1        $f0, %lo(D_800F1B40)($at)
/* 02CB80 8002CFD0 3C01800F */  lui         $at, %hi(D_800F1B44)
/* 02CB84 8002CFD4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02CB88 8002CFD8 03E00008 */  jr          $ra
/* 02CB8C 8002CFDC E4201B44 */   swc1       $f0, %lo(D_800F1B44)($at)

glabel func_8002CFE0 # 31
/* 02CB90 8002CFE0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02CB94 8002CFE4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02CB98 8002CFE8 3C04800F */  lui         $a0, %hi(D_800F1B20)
/* 02CB9C 8002CFEC 0C0105FB */  jal         func_800417EC
/* 02CBA0 8002CFF0 24841B20 */   addiu      $a0, $a0, %lo(D_800F1B20)
/* 02CBA4 8002CFF4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02CBA8 8002CFF8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02CBAC 8002CFFC 03E00008 */  jr          $ra
/* 02CBB0 8002D000 00000000 */   nop
/* 02CBB4 8002D004 00000000 */  nop
/* 02CBB8 8002D008 00000000 */  nop
/* 02CBBC 8002D00C 00000000 */  nop
