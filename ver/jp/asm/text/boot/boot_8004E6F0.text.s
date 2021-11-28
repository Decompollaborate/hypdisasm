.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004E6F0 # 0
/* 04E2A0 8004E6F0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 04E2A4 8004E6F4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04E2A8 8004E6F8 AFA40028 */  sw          $a0, 0x28($sp)
/* 04E2AC 8004E6FC AFB10018 */  sw          $s1, 0x18($sp)
/* 04E2B0 8004E700 0C015594 */  jal         func_80055650
/* 04E2B4 8004E704 AFB00014 */   sw         $s0, 0x14($sp)
/* 04E2B8 8004E708 8FAE0028 */  lw          $t6, 0x28($sp)
/* 04E2BC 8004E70C 24010001 */  addiu       $at, $zero, 0x1
/* 04E2C0 8004E710 00408025 */  move        $s0, $v0
/* 04E2C4 8004E714 95D10010 */  lhu         $s1, 0x10($t6)
/* 04E2C8 8004E718 1221000C */  beq         $s1, $at, .L8004E74C
/* 04E2CC 8004E71C 24010008 */   addiu      $at, $zero, 0x8
/* 04E2D0 8004E720 1621002A */  bne         $s1, $at, .L8004E7CC
/* 04E2D4 8004E724 00000000 */   nop
/* 04E2D8 8004E728 8FB80028 */  lw          $t8, 0x28($sp)
/* 04E2DC 8004E72C 240F0002 */  addiu       $t7, $zero, 0x2
/* 04E2E0 8004E730 3C04800A */  lui         $a0, %hi(__osRunQueue)
/* 04E2E4 8004E734 A70F0010 */  sh          $t7, 0x10($t8)
/* 04E2E8 8004E738 8FA50028 */  lw          $a1, 0x28($sp)
/* 04E2EC 8004E73C 0C0154EB */  jal         __osEnqueueThread
/* 04E2F0 8004E740 24844D68 */   addiu      $a0, $a0, %lo(__osRunQueue)
/* 04E2F4 8004E744 10000021 */  b           .L8004E7CC
/* 04E2F8 8004E748 00000000 */   nop
.L8004E74C:
/* 04E2FC 8004E74C 8FB90028 */  lw          $t9, 0x28($sp)
/* 04E300 8004E750 8F280008 */  lw          $t0, 0x8($t9)
/* 04E304 8004E754 11000005 */  beqz        $t0, .L8004E76C
/* 04E308 8004E758 00000000 */   nop
/* 04E30C 8004E75C 3C09800A */  lui         $t1, %hi(__osRunQueue)
/* 04E310 8004E760 25294D68 */  addiu       $t1, $t1, %lo(__osRunQueue)
/* 04E314 8004E764 1509000A */  bne         $t0, $t1, .L8004E790
/* 04E318 8004E768 00000000 */   nop
.L8004E76C:
/* 04E31C 8004E76C 8FAB0028 */  lw          $t3, 0x28($sp)
/* 04E320 8004E770 240A0002 */  addiu       $t2, $zero, 0x2
/* 04E324 8004E774 3C04800A */  lui         $a0, %hi(__osRunQueue)
/* 04E328 8004E778 A56A0010 */  sh          $t2, 0x10($t3)
/* 04E32C 8004E77C 8FA50028 */  lw          $a1, 0x28($sp)
/* 04E330 8004E780 0C0154EB */  jal         __osEnqueueThread
/* 04E334 8004E784 24844D68 */   addiu      $a0, $a0, %lo(__osRunQueue)
/* 04E338 8004E788 10000010 */  b           .L8004E7CC
/* 04E33C 8004E78C 00000000 */   nop
.L8004E790:
/* 04E340 8004E790 8FAD0028 */  lw          $t5, 0x28($sp)
/* 04E344 8004E794 240C0008 */  addiu       $t4, $zero, 0x8
/* 04E348 8004E798 A5AC0010 */  sh          $t4, 0x10($t5)
/* 04E34C 8004E79C 8FAE0028 */  lw          $t6, 0x28($sp)
/* 04E350 8004E7A0 8DC40008 */  lw          $a0, 0x8($t6)
/* 04E354 8004E7A4 0C0154EB */  jal         __osEnqueueThread
/* 04E358 8004E7A8 01C02825 */   move       $a1, $t6
/* 04E35C 8004E7AC 8FAF0028 */  lw          $t7, 0x28($sp)
/* 04E360 8004E7B0 0C0154FD */  jal         __osPopThread
/* 04E364 8004E7B4 8DE40008 */   lw         $a0, 0x8($t7)
/* 04E368 8004E7B8 00408825 */  move        $s1, $v0
/* 04E36C 8004E7BC 3C04800A */  lui         $a0, %hi(__osRunQueue)
/* 04E370 8004E7C0 24844D68 */  addiu       $a0, $a0, %lo(__osRunQueue)
/* 04E374 8004E7C4 0C0154EB */  jal         __osEnqueueThread
/* 04E378 8004E7C8 02202825 */   move       $a1, $s1
.L8004E7CC:
/* 04E37C 8004E7CC 3C18800A */  lui         $t8, %hi(__osRunningThread)
/* 04E380 8004E7D0 8F184D70 */  lw          $t8, %lo(__osRunningThread)($t8)
/* 04E384 8004E7D4 17000005 */  bnez        $t8, .L8004E7EC
/* 04E388 8004E7D8 00000000 */   nop
/* 04E38C 8004E7DC 0C015501 */  jal         __osDispatchThread
/* 04E390 8004E7E0 00000000 */   nop
/* 04E394 8004E7E4 1000000F */  b           .L8004E824
/* 04E398 8004E7E8 00000000 */   nop
.L8004E7EC:
/* 04E39C 8004E7EC 3C19800A */  lui         $t9, %hi(__osRunningThread)
/* 04E3A0 8004E7F0 3C09800A */  lui         $t1, %hi(__osRunQueue)
/* 04E3A4 8004E7F4 8D294D68 */  lw          $t1, %lo(__osRunQueue)($t1)
/* 04E3A8 8004E7F8 8F394D70 */  lw          $t9, %lo(__osRunningThread)($t9)
/* 04E3AC 8004E7FC 8D2A0004 */  lw          $t2, 0x4($t1)
/* 04E3B0 8004E800 8F280004 */  lw          $t0, 0x4($t9)
/* 04E3B4 8004E804 010A082A */  slt         $at, $t0, $t2
/* 04E3B8 8004E808 10200006 */  beqz        $at, .L8004E824
/* 04E3BC 8004E80C 00000000 */   nop
/* 04E3C0 8004E810 240B0002 */  addiu       $t3, $zero, 0x2
/* 04E3C4 8004E814 3C04800A */  lui         $a0, %hi(__osRunQueue)
/* 04E3C8 8004E818 A72B0010 */  sh          $t3, 0x10($t9)
/* 04E3CC 8004E81C 0C0154AB */  jal         __osEnqueueAndYield
/* 04E3D0 8004E820 24844D68 */   addiu      $a0, $a0, %lo(__osRunQueue)
.L8004E824:
/* 04E3D4 8004E824 0C01559C */  jal         func_80055670
/* 04E3D8 8004E828 02002025 */   move       $a0, $s0
/* 04E3DC 8004E82C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04E3E0 8004E830 8FB00014 */  lw          $s0, 0x14($sp)
/* 04E3E4 8004E834 8FB10018 */  lw          $s1, 0x18($sp)
/* 04E3E8 8004E838 03E00008 */  jr          $ra
/* 04E3EC 8004E83C 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8004E840 # 1
/* 04E3F0 8004E840 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 04E3F4 8004E844 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04E3F8 8004E848 AFA40028 */  sw          $a0, 0x28($sp)
/* 04E3FC 8004E84C AFA5002C */  sw          $a1, 0x2c($sp)
/* 04E400 8004E850 0C015594 */  jal         func_80055650
/* 04E404 8004E854 AFB00018 */   sw         $s0, 0x18($sp)
/* 04E408 8004E858 8FAE0028 */  lw          $t6, 0x28($sp)
/* 04E40C 8004E85C 00408025 */  move        $s0, $v0
/* 04E410 8004E860 15C00004 */  bnez        $t6, .L8004E874
/* 04E414 8004E864 00000000 */   nop
/* 04E418 8004E868 3C0F800A */  lui         $t7, %hi(__osRunningThread)
/* 04E41C 8004E86C 8DEF4D70 */  lw          $t7, %lo(__osRunningThread)($t7)
/* 04E420 8004E870 AFAF0028 */  sw          $t7, 0x28($sp)
.L8004E874:
/* 04E424 8004E874 8FB80028 */  lw          $t8, 0x28($sp)
/* 04E428 8004E878 8FA8002C */  lw          $t0, 0x2c($sp)
/* 04E42C 8004E87C 8F190004 */  lw          $t9, 0x4($t8)
/* 04E430 8004E880 13280020 */  beq         $t9, $t0, .L8004E904
/* 04E434 8004E884 00000000 */   nop
/* 04E438 8004E888 AF080004 */  sw          $t0, 0x4($t8)
/* 04E43C 8004E88C 3C0A800A */  lui         $t2, %hi(__osRunningThread)
/* 04E440 8004E890 8D4A4D70 */  lw          $t2, %lo(__osRunningThread)($t2)
/* 04E444 8004E894 8FA90028 */  lw          $t1, 0x28($sp)
/* 04E448 8004E898 112A000C */  beq         $t1, $t2, .L8004E8CC
/* 04E44C 8004E89C 00000000 */   nop
/* 04E450 8004E8A0 952B0010 */  lhu         $t3, 0x10($t1)
/* 04E454 8004E8A4 24010001 */  addiu       $at, $zero, 0x1
/* 04E458 8004E8A8 11610008 */  beq         $t3, $at, .L8004E8CC
/* 04E45C 8004E8AC 00000000 */   nop
/* 04E460 8004E8B0 8D240008 */  lw          $a0, 0x8($t1)
/* 04E464 8004E8B4 0C0155A4 */  jal         func_80055690
/* 04E468 8004E8B8 01202825 */   move       $a1, $t1
/* 04E46C 8004E8BC 8FAC0028 */  lw          $t4, 0x28($sp)
/* 04E470 8004E8C0 8D840008 */  lw          $a0, 0x8($t4)
/* 04E474 8004E8C4 0C0154EB */  jal         __osEnqueueThread
/* 04E478 8004E8C8 01802825 */   move       $a1, $t4
.L8004E8CC:
/* 04E47C 8004E8CC 3C0D800A */  lui         $t5, %hi(__osRunningThread)
/* 04E480 8004E8D0 3C0F800A */  lui         $t7, %hi(__osRunQueue)
/* 04E484 8004E8D4 8DEF4D68 */  lw          $t7, %lo(__osRunQueue)($t7)
/* 04E488 8004E8D8 8DAD4D70 */  lw          $t5, %lo(__osRunningThread)($t5)
/* 04E48C 8004E8DC 8DF90004 */  lw          $t9, 0x4($t7)
/* 04E490 8004E8E0 8DAE0004 */  lw          $t6, 0x4($t5)
/* 04E494 8004E8E4 01D9082A */  slt         $at, $t6, $t9
/* 04E498 8004E8E8 10200006 */  beqz        $at, .L8004E904
/* 04E49C 8004E8EC 00000000 */   nop
/* 04E4A0 8004E8F0 24080002 */  addiu       $t0, $zero, 0x2
/* 04E4A4 8004E8F4 3C04800A */  lui         $a0, %hi(__osRunQueue)
/* 04E4A8 8004E8F8 A5A80010 */  sh          $t0, 0x10($t5)
/* 04E4AC 8004E8FC 0C0154AB */  jal         __osEnqueueAndYield
/* 04E4B0 8004E900 24844D68 */   addiu      $a0, $a0, %lo(__osRunQueue)
.L8004E904:
/* 04E4B4 8004E904 0C01559C */  jal         func_80055670
/* 04E4B8 8004E908 02002025 */   move       $a0, $s0
/* 04E4BC 8004E90C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04E4C0 8004E910 8FB00018 */  lw          $s0, 0x18($sp)
/* 04E4C4 8004E914 27BD0028 */  addiu       $sp, $sp, 0x28
/* 04E4C8 8004E918 03E00008 */  jr          $ra
/* 04E4CC 8004E91C 00000000 */   nop

glabel func_8004E920 # 2
/* 04E4D0 8004E920 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 04E4D4 8004E924 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04E4D8 8004E928 AFA40028 */  sw          $a0, 0x28($sp)
/* 04E4DC 8004E92C AFA5002C */  sw          $a1, 0x2c($sp)
/* 04E4E0 8004E930 AFA60030 */  sw          $a2, 0x30($sp)
/* 04E4E4 8004E934 AFB10018 */  sw          $s1, 0x18($sp)
/* 04E4E8 8004E938 0C015594 */  jal         func_80055650
/* 04E4EC 8004E93C AFB00014 */   sw         $s0, 0x14($sp)
/* 04E4F0 8004E940 8FAE0028 */  lw          $t6, 0x28($sp)
/* 04E4F4 8004E944 00408025 */  move        $s0, $v0
/* 04E4F8 8004E948 8DCF0008 */  lw          $t7, 0x8($t6)
/* 04E4FC 8004E94C 15E00012 */  bnez        $t7, .L8004E998
/* 04E500 8004E950 00000000 */   nop
.L8004E954:
/* 04E504 8004E954 8FB80030 */  lw          $t8, 0x30($sp)
/* 04E508 8004E958 17000005 */  bnez        $t8, .L8004E970
/* 04E50C 8004E95C 00000000 */   nop
/* 04E510 8004E960 0C01559C */  jal         func_80055670
/* 04E514 8004E964 02002025 */   move       $a0, $s0
/* 04E518 8004E968 10000036 */  b           .L8004EA44
/* 04E51C 8004E96C 2402FFFF */   addiu      $v0, $zero, -0x1
.L8004E970:
/* 04E520 8004E970 3C08800A */  lui         $t0, %hi(__osRunningThread)
/* 04E524 8004E974 8D084D70 */  lw          $t0, %lo(__osRunningThread)($t0)
/* 04E528 8004E978 24190008 */  addiu       $t9, $zero, 0x8
/* 04E52C 8004E97C A5190010 */  sh          $t9, 0x10($t0)
/* 04E530 8004E980 0C0154AB */  jal         __osEnqueueAndYield
/* 04E534 8004E984 8FA40028 */   lw         $a0, 0x28($sp)
/* 04E538 8004E988 8FA90028 */  lw          $t1, 0x28($sp)
/* 04E53C 8004E98C 8D2A0008 */  lw          $t2, 0x8($t1)
/* 04E540 8004E990 1140FFF0 */  beqz        $t2, .L8004E954
/* 04E544 8004E994 00000000 */   nop
.L8004E998:
/* 04E548 8004E998 8FAB002C */  lw          $t3, 0x2c($sp)
/* 04E54C 8004E99C 11600008 */  beqz        $t3, .L8004E9C0
/* 04E550 8004E9A0 00000000 */   nop
/* 04E554 8004E9A4 8FAC0028 */  lw          $t4, 0x28($sp)
/* 04E558 8004E9A8 8D8E000C */  lw          $t6, 0xc($t4)
/* 04E55C 8004E9AC 8D8D0014 */  lw          $t5, 0x14($t4)
/* 04E560 8004E9B0 000E7880 */  sll         $t7, $t6, 2
/* 04E564 8004E9B4 01AFC021 */  addu        $t8, $t5, $t7
/* 04E568 8004E9B8 8F190000 */  lw          $t9, 0x0($t8)
/* 04E56C 8004E9BC AD790000 */  sw          $t9, 0x0($t3)
.L8004E9C0:
/* 04E570 8004E9C0 8FA80028 */  lw          $t0, 0x28($sp)
/* 04E574 8004E9C4 8D09000C */  lw          $t1, 0xc($t0)
/* 04E578 8004E9C8 8D0C0010 */  lw          $t4, 0x10($t0)
/* 04E57C 8004E9CC 252A0001 */  addiu       $t2, $t1, 0x1
/* 04E580 8004E9D0 014C001A */  div         $zero, $t2, $t4
/* 04E584 8004E9D4 00007010 */  mfhi        $t6
/* 04E588 8004E9D8 AD0E000C */  sw          $t6, 0xc($t0)
/* 04E58C 8004E9DC 8FAD0028 */  lw          $t5, 0x28($sp)
/* 04E590 8004E9E0 15800002 */  bnez        $t4, .L8004E9EC
/* 04E594 8004E9E4 00000000 */   nop
/* 04E598 8004E9E8 0007000D */  break       7
.L8004E9EC:
/* 04E59C 8004E9EC 2401FFFF */  addiu       $at, $zero, -0x1
/* 04E5A0 8004E9F0 15810004 */  bne         $t4, $at, .L8004EA04
/* 04E5A4 8004E9F4 3C018000 */   lui        $at, 0x8000
/* 04E5A8 8004E9F8 15410002 */  bne         $t2, $at, .L8004EA04
/* 04E5AC 8004E9FC 00000000 */   nop
/* 04E5B0 8004EA00 0006000D */  break       6
.L8004EA04:
/* 04E5B4 8004EA04 8DAF0008 */  lw          $t7, 0x8($t5)
/* 04E5B8 8004EA08 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 04E5BC 8004EA0C ADB80008 */  sw          $t8, 0x8($t5)
/* 04E5C0 8004EA10 8FB90028 */  lw          $t9, 0x28($sp)
/* 04E5C4 8004EA14 8F2B0004 */  lw          $t3, 0x4($t9)
/* 04E5C8 8004EA18 8D690000 */  lw          $t1, 0x0($t3)
/* 04E5CC 8004EA1C 11200006 */  beqz        $t1, .L8004EA38
/* 04E5D0 8004EA20 00000000 */   nop
/* 04E5D4 8004EA24 0C0154FD */  jal         __osPopThread
/* 04E5D8 8004EA28 27240004 */   addiu      $a0, $t9, 0x4
/* 04E5DC 8004EA2C 00408825 */  move        $s1, $v0
/* 04E5E0 8004EA30 0C0139BC */  jal         func_8004E6F0
/* 04E5E4 8004EA34 02202025 */   move       $a0, $s1
.L8004EA38:
/* 04E5E8 8004EA38 0C01559C */  jal         func_80055670
/* 04E5EC 8004EA3C 02002025 */   move       $a0, $s0
/* 04E5F0 8004EA40 00001025 */  move        $v0, $zero
.L8004EA44:
/* 04E5F4 8004EA44 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04E5F8 8004EA48 8FB00014 */  lw          $s0, 0x14($sp)
/* 04E5FC 8004EA4C 8FB10018 */  lw          $s1, 0x18($sp)
/* 04E600 8004EA50 03E00008 */  jr          $ra
/* 04E604 8004EA54 27BD0028 */   addiu      $sp, $sp, 0x28
/* 04E608 8004EA58 00000000 */  nop
/* 04E60C 8004EA5C 00000000 */  nop
