.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001F680 # 0
/* 01F230 8001F680 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 01F234 8001F684 3C0E8009 */  lui         $t6, %hi(D_80088EE4)
/* 01F238 8001F688 8DCE8EE4 */  lw          $t6, %lo(D_80088EE4)($t6)
/* 01F23C 8001F68C AFB0002C */  sw          $s0, 0x2c($sp)
/* 01F240 8001F690 00E08025 */  move        $s0, $a3
/* 01F244 8001F694 AFBF0034 */  sw          $ra, 0x34($sp)
/* 01F248 8001F698 AFB10030 */  sw          $s1, 0x30($sp)
/* 01F24C 8001F69C AFA40080 */  sw          $a0, 0x80($sp)
/* 01F250 8001F6A0 AFA50084 */  sw          $a1, 0x84($sp)
/* 01F254 8001F6A4 11C00003 */  beq         $t6, $zero, .L8001F6B4
/* 01F258 8001F6A8 AFA60088 */   sw         $a2, 0x88($sp)
/* 01F25C 8001F6AC 100000C6 */  b           .L8001F9C8
/* 01F260 8001F6B0 00001025 */   move       $v0, $zero
.L8001F6B4:
/* 01F264 8001F6B4 27B10070 */  addiu       $s1, $sp, 0x70
/* 01F268 8001F6B8 3C05800B */  lui         $a1, %hi(D_800B6E00)
/* 01F26C 8001F6BC 3C060003 */  lui         $a2, 0x3
/* 01F270 8001F6C0 34C65B60 */  ori         $a2, $a2, 0x5b60
/* 01F274 8001F6C4 24A56E00 */  addiu       $a1, $a1, %lo(D_800B6E00)
/* 01F278 8001F6C8 0C014E58 */  jal         func_80053960
/* 01F27C 8001F6CC 02202025 */   move       $a0, $s1
/* 01F280 8001F6D0 02202025 */  move        $a0, $s1
/* 01F284 8001F6D4 24050040 */  addiu       $a1, $zero, 0x40
/* 01F288 8001F6D8 0C01248D */  jal         func_80049234
/* 01F28C 8001F6DC 2406000A */   addiu      $a2, $zero, 0xa
/* 01F290 8001F6E0 3C078006 */  lui         $a3, %hi(D_80063510)
/* 01F294 8001F6E4 8CE73510 */  lw          $a3, %lo(D_80063510)($a3)
/* 01F298 8001F6E8 24180004 */  addiu       $t8, $zero, 0x4
/* 01F29C 8001F6EC AFB80010 */  sw          $t8, 0x10($sp)
/* 01F2A0 8001F6F0 000778C0 */  sll         $t7, $a3, 3
/* 01F2A4 8001F6F4 25E70002 */  addiu       $a3, $t7, 0x2
/* 01F2A8 8001F6F8 00002025 */  move        $a0, $zero
/* 01F2AC 8001F6FC 00002825 */  move        $a1, $zero
/* 01F2B0 8001F700 0C014E68 */  jal         func_800539A0
/* 01F2B4 8001F704 02203025 */   move       $a2, $s1
/* 01F2B8 8001F708 3C198006 */  lui         $t9, %hi(D_80063510)
/* 01F2BC 8001F70C 8F393510 */  lw          $t9, %lo(D_80063510)($t9)
/* 01F2C0 8001F710 AFA2006C */  sw          $v0, 0x6c($sp)
/* 01F2C4 8001F714 3C088006 */  lui         $t0, %hi(D_80063514)
/* 01F2C8 8001F718 AC590000 */  sw          $t9, 0x0($v0)
/* 01F2CC 8001F71C 8D083514 */  lw          $t0, %lo(D_80063514)($t0)
/* 01F2D0 8001F720 240503E8 */  addiu       $a1, $zero, 0x3e8
/* 01F2D4 8001F724 8FAC006C */  lw          $t4, 0x6c($sp)
/* 01F2D8 8001F728 01100019 */  multu       $t0, $s0
/* 01F2DC 8001F72C 2406FFF8 */  addiu       $a2, $zero, -0x8
/* 01F2E0 8001F730 3C0D8006 */  lui         $t5, %hi(D_80063510)
/* 01F2E4 8001F734 3C038006 */  lui         $v1, %hi(D_80063510)
/* 01F2E8 8001F738 24633510 */  addiu       $v1, $v1, %lo(D_80063510)
/* 01F2EC 8001F73C 00001025 */  move        $v0, $zero
/* 01F2F0 8001F740 00002025 */  move        $a0, $zero
/* 01F2F4 8001F744 00004812 */  mflo        $t1
/* 01F2F8 8001F748 00000000 */  nop
/* 01F2FC 8001F74C 00000000 */  nop
/* 01F300 8001F750 0125001A */  div         $zero, $t1, $a1
/* 01F304 8001F754 00005012 */  mflo        $t2
/* 01F308 8001F758 01465824 */  and         $t3, $t2, $a2
/* 01F30C 8001F75C AD8B0004 */  sw          $t3, 0x4($t4)
/* 01F310 8001F760 8DAD3510 */  lw          $t5, %lo(D_80063510)($t5)
/* 01F314 8001F764 14A00002 */  bne         $a1, $zero, .L8001F770
/* 01F318 8001F768 00000000 */   nop
/* 01F31C 8001F76C 0007000D */  break       7
.L8001F770:
/* 01F320 8001F770 2401FFFF */  addiu       $at, $zero, -0x1
/* 01F324 8001F774 14A10004 */  bne         $a1, $at, .L8001F788
/* 01F328 8001F778 3C018000 */   lui        $at, 0x8000
/* 01F32C 8001F77C 15210002 */  bne         $t1, $at, .L8001F788
/* 01F330 8001F780 00000000 */   nop
/* 01F334 8001F784 0006000D */  break       6
.L8001F788:
/* 01F338 8001F788 19A00049 */  blez        $t5, .L8001F8B0
/* 01F33C 8001F78C 00000000 */   nop
/* 01F340 8001F790 8C6E0008 */  lw          $t6, 0x8($v1)
.L8001F794:
/* 01F344 8001F794 8FA8006C */  lw          $t0, 0x6c($sp)
/* 01F348 8001F798 24840001 */  addiu       $a0, $a0, 0x1
/* 01F34C 8001F79C 01D00019 */  multu       $t6, $s0
/* 01F350 8001F7A0 01024821 */  addu        $t1, $t0, $v0
/* 01F354 8001F7A4 24630020 */  addiu       $v1, $v1, 0x20
/* 01F358 8001F7A8 00007812 */  mflo        $t7
/* 01F35C 8001F7AC 00000000 */  nop
/* 01F360 8001F7B0 00000000 */  nop
/* 01F364 8001F7B4 01E5001A */  div         $zero, $t7, $a1
/* 01F368 8001F7B8 0000C012 */  mflo        $t8
/* 01F36C 8001F7BC 0306C824 */  and         $t9, $t8, $a2
/* 01F370 8001F7C0 AD390008 */  sw          $t9, 0x8($t1)
/* 01F374 8001F7C4 8C6AFFEC */  lw          $t2, -0x14($v1)
/* 01F378 8001F7C8 8FAE006C */  lw          $t6, 0x6c($sp)
/* 01F37C 8001F7CC 14A00002 */  bne         $a1, $zero, .L8001F7D8
/* 01F380 8001F7D0 00000000 */   nop
/* 01F384 8001F7D4 0007000D */  break       7
.L8001F7D8:
/* 01F388 8001F7D8 2401FFFF */  addiu       $at, $zero, -0x1
/* 01F38C 8001F7DC 14A10004 */  bne         $a1, $at, .L8001F7F0
/* 01F390 8001F7E0 3C018000 */   lui        $at, 0x8000
/* 01F394 8001F7E4 15E10002 */  bne         $t7, $at, .L8001F7F0
/* 01F398 8001F7E8 00000000 */   nop
/* 01F39C 8001F7EC 0006000D */  break       6
.L8001F7F0:
/* 01F3A0 8001F7F0 01500019 */  multu       $t2, $s0
/* 01F3A4 8001F7F4 01C27821 */  addu        $t7, $t6, $v0
/* 01F3A8 8001F7F8 00005812 */  mflo        $t3
/* 01F3AC 8001F7FC 00000000 */  nop
/* 01F3B0 8001F800 00000000 */  nop
/* 01F3B4 8001F804 0165001A */  div         $zero, $t3, $a1
/* 01F3B8 8001F808 00006012 */  mflo        $t4
/* 01F3BC 8001F80C 01866824 */  and         $t5, $t4, $a2
/* 01F3C0 8001F810 ADED000C */  sw          $t5, 0xc($t7)
/* 01F3C4 8001F814 8FA8006C */  lw          $t0, 0x6c($sp)
/* 01F3C8 8001F818 8C78FFF0 */  lw          $t8, -0x10($v1)
/* 01F3CC 8001F81C 14A00002 */  bne         $a1, $zero, .L8001F828
/* 01F3D0 8001F820 00000000 */   nop
/* 01F3D4 8001F824 0007000D */  break       7
.L8001F828:
/* 01F3D8 8001F828 2401FFFF */  addiu       $at, $zero, -0x1
/* 01F3DC 8001F82C 14A10004 */  bne         $a1, $at, .L8001F840
/* 01F3E0 8001F830 3C018000 */   lui        $at, 0x8000
/* 01F3E4 8001F834 15610002 */  bne         $t3, $at, .L8001F840
/* 01F3E8 8001F838 00000000 */   nop
/* 01F3EC 8001F83C 0006000D */  break       6
.L8001F840:
/* 01F3F0 8001F840 0102C821 */  addu        $t9, $t0, $v0
/* 01F3F4 8001F844 AF380010 */  sw          $t8, 0x10($t9)
/* 01F3F8 8001F848 8FAA006C */  lw          $t2, 0x6c($sp)
/* 01F3FC 8001F84C 8C69FFF4 */  lw          $t1, -0xc($v1)
/* 01F400 8001F850 01425821 */  addu        $t3, $t2, $v0
/* 01F404 8001F854 AD690014 */  sw          $t1, 0x14($t3)
/* 01F408 8001F858 8FAE006C */  lw          $t6, 0x6c($sp)
/* 01F40C 8001F85C 8C6CFFF8 */  lw          $t4, -0x8($v1)
/* 01F410 8001F860 01C26821 */  addu        $t5, $t6, $v0
/* 01F414 8001F864 ADAC0018 */  sw          $t4, 0x18($t5)
/* 01F418 8001F868 8FA8006C */  lw          $t0, 0x6c($sp)
/* 01F41C 8001F86C 8C6FFFFC */  lw          $t7, -0x4($v1)
/* 01F420 8001F870 3C0D8006 */  lui         $t5, %hi(D_80063510)
/* 01F424 8001F874 0102C021 */  addu        $t8, $t0, $v0
/* 01F428 8001F878 AF0F001C */  sw          $t7, 0x1c($t8)
/* 01F42C 8001F87C 8FAA006C */  lw          $t2, 0x6c($sp)
/* 01F430 8001F880 8C790000 */  lw          $t9, 0x0($v1)
/* 01F434 8001F884 01424821 */  addu        $t1, $t2, $v0
/* 01F438 8001F888 AD390020 */  sw          $t9, 0x20($t1)
/* 01F43C 8001F88C 8FAE006C */  lw          $t6, 0x6c($sp)
/* 01F440 8001F890 8C6B0004 */  lw          $t3, 0x4($v1)
/* 01F444 8001F894 01C26021 */  addu        $t4, $t6, $v0
/* 01F448 8001F898 AD8B0024 */  sw          $t3, 0x24($t4)
/* 01F44C 8001F89C 8DAD3510 */  lw          $t5, %lo(D_80063510)($t5)
/* 01F450 8001F8A0 24420020 */  addiu       $v0, $v0, 0x20
/* 01F454 8001F8A4 008D082A */  slt         $at, $a0, $t5
/* 01F458 8001F8A8 5420FFBA */  bnel        $at, $zero, .L8001F794
/* 01F45C 8001F8AC 8C6E0008 */   lw         $t6, 0x8($v1)
.L8001F8B0:
/* 01F460 8001F8B0 3C0A8005 */  lui         $t2, %hi(func_80049160)
/* 01F464 8001F8B4 24080020 */  addiu       $t0, $zero, 0x20
/* 01F468 8001F8B8 240F0080 */  addiu       $t7, $zero, 0x80
/* 01F46C 8001F8BC 24180006 */  addiu       $t8, $zero, 0x6
/* 01F470 8001F8C0 254A9160 */  addiu       $t2, $t2, %lo(func_80049160)
/* 01F474 8001F8C4 AFA0004C */  sw          $zero, 0x4c($sp)
/* 01F478 8001F8C8 AFA80050 */  sw          $t0, 0x50($sp)
/* 01F47C 8001F8CC AFAF0054 */  sw          $t7, 0x54($sp)
/* 01F480 8001F8D0 A3B80068 */  sb          $t8, 0x68($sp)
/* 01F484 8001F8D4 AFB10060 */  sw          $s1, 0x60($sp)
/* 01F488 8001F8D8 AFAA005C */  sw          $t2, 0x5c($sp)
/* 01F48C 8001F8DC 0C014254 */  jal         func_80050950
/* 01F490 8001F8E0 02002025 */   move       $a0, $s0
/* 01F494 8001F8E4 3C10800F */  lui         $s0, %hi(D_800EC968)
/* 01F498 8001F8E8 2610C968 */  addiu       $s0, $s0, %lo(D_800EC968)
/* 01F49C 8001F8EC AFA20064 */  sw          $v0, 0x64($sp)
/* 01F4A0 8001F8F0 02002025 */  move        $a0, $s0
/* 01F4A4 8001F8F4 0C013618 */  jal         func_8004D860
/* 01F4A8 8001F8F8 27A5004C */   addiu      $a1, $sp, 0x4c
/* 01F4AC 8001F8FC 3C050085 */  lui         $a1, 0x85
/* 01F4B0 8001F900 3C060086 */  lui         $a2, 0x86
/* 01F4B4 8001F904 3C070086 */  lui         $a3, 0x86
/* 01F4B8 8001F908 24E70C80 */  addiu       $a3, $a3, 0xc80
/* 01F4BC 8001F90C 24C60C80 */  addiu       $a2, $a2, 0xc80
/* 01F4C0 8001F910 24A5F5F0 */  addiu       $a1, $a1, -0xa10
/* 01F4C4 8001F914 0C0080D0 */  jal         func_80020340
/* 01F4C8 8001F918 02202025 */   move       $a0, $s1
/* 01F4CC 8001F91C 3C038009 */  lui         $v1, %hi(D_80088EE0)
/* 01F4D0 8001F920 24638EE0 */  addiu       $v1, $v1, %lo(D_80088EE0)
/* 01F4D4 8001F924 AC620000 */  sw          $v0, 0x0($v1)
/* 01F4D8 8001F928 02202025 */  move        $a0, $s1
/* 01F4DC 8001F92C 0C007E9E */  jal         func_8001FA78
/* 01F4E0 8001F930 00402825 */   move       $a1, $v0
/* 01F4E4 8001F934 02002025 */  move        $a0, $s0
/* 01F4E8 8001F938 02202825 */  move        $a1, $s1
/* 01F4EC 8001F93C 0C0084E3 */  jal         func_8002138C
/* 01F4F0 8001F940 24060020 */   addiu      $a2, $zero, 0x20
/* 01F4F4 8001F944 3C198005 */  lui         $t9, %hi(func_8004DBD8)
/* 01F4F8 8001F948 3C098006 */  lui         $t1, %hi(D_80060120)
/* 01F4FC 8001F94C 3C0E800B */  lui         $t6, %hi(D_800A8130)
/* 01F500 8001F950 3C01800F */  lui         $at, %hi(D_800EC960)
/* 01F504 8001F954 25CE8130 */  addiu       $t6, $t6, %lo(D_800A8130)
/* 01F508 8001F958 25290120 */  addiu       $t1, $t1, %lo(D_80060120)
/* 01F50C 8001F95C 2739DBD8 */  addiu       $t9, $t9, %lo(func_8004DBD8)
/* 01F510 8001F960 240B00B8 */  addiu       $t3, $zero, 0xb8
/* 01F514 8001F964 240C0200 */  addiu       $t4, $zero, 0x200
/* 01F518 8001F968 AC22C960 */  sw          $v0, %lo(D_800EC960)($at)
/* 01F51C 8001F96C AFAC0020 */  sw          $t4, 0x20($sp)
/* 01F520 8001F970 AFAB001C */  sw          $t3, 0x1c($sp)
/* 01F524 8001F974 AFB90010 */  sw          $t9, 0x10($sp)
/* 01F528 8001F978 AFA90014 */  sw          $t1, 0x14($sp)
/* 01F52C 8001F97C AFAE0018 */  sw          $t6, 0x18($sp)
/* 01F530 8001F980 8FA40080 */  lw          $a0, 0x80($sp)
/* 01F534 8001F984 02202825 */  move        $a1, $s1
/* 01F538 8001F988 8FA60084 */  lw          $a2, 0x84($sp)
/* 01F53C 8001F98C 0C0125AE */  jal         func_800496B8
/* 01F540 8001F990 8FA70088 */   lw         $a3, 0x88($sp)
/* 01F544 8001F994 8FA80074 */  lw          $t0, 0x74($sp)
/* 01F548 8001F998 8FAF0070 */  lw          $t7, 0x70($sp)
/* 01F54C 8001F99C 240D0001 */  addiu       $t5, $zero, 0x1
/* 01F550 8001F9A0 3C018009 */  lui         $at, %hi(D_80088EE4)
/* 01F554 8001F9A4 AC2D8EE4 */  sw          $t5, %lo(D_80088EE4)($at)
/* 01F558 8001F9A8 3C010003 */  lui         $at, 0x3
/* 01F55C 8001F9AC 34215B61 */  ori         $at, $at, 0x5b61
/* 01F560 8001F9B0 010F1823 */  subu        $v1, $t0, $t7
/* 01F564 8001F9B4 0061082A */  slt         $at, $v1, $at
/* 01F568 8001F9B8 14200003 */  bne         $at, $zero, .L8001F9C8
/* 01F56C 8001F9BC 00601025 */   move       $v0, $v1
.L8001F9C0:
/* 01F570 8001F9C0 1000FFFF */  b           .L8001F9C0
/* 01F574 8001F9C4 00000000 */   nop
.L8001F9C8:
/* 01F578 8001F9C8 8FBF0034 */  lw          $ra, 0x34($sp)
/* 01F57C 8001F9CC 8FB0002C */  lw          $s0, 0x2c($sp)
/* 01F580 8001F9D0 8FB10030 */  lw          $s1, 0x30($sp)
/* 01F584 8001F9D4 03E00008 */  jr          $ra
/* 01F588 8001F9D8 27BD0080 */   addiu      $sp, $sp, 0x80

glabel func_8001F9DC # 1
/* 01F58C 8001F9DC 3C028009 */  lui         $v0, %hi(D_80088EE4)
/* 01F590 8001F9E0 24428EE4 */  addiu       $v0, $v0, %lo(D_80088EE4)
/* 01F594 8001F9E4 8C4E0000 */  lw          $t6, 0x0($v0)
/* 01F598 8001F9E8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01F59C 8001F9EC AFBF0014 */  sw          $ra, 0x14($sp)
/* 01F5A0 8001F9F0 15C00003 */  bne         $t6, $zero, .L8001FA00
/* 01F5A4 8001F9F4 00000000 */   nop
/* 01F5A8 8001F9F8 10000007 */  b           .L8001FA18
/* 01F5AC 8001F9FC 00001025 */   move       $v0, $zero
.L8001FA00:
/* 01F5B0 8001FA00 0C0125A0 */  jal         func_80049680
/* 01F5B4 8001FA04 AC400000 */   sw         $zero, 0x0($v0)
/* 01F5B8 8001FA08 3C04800F */  lui         $a0, %hi(D_800EC968)
/* 01F5BC 8001FA0C 0C01362B */  jal         func_8004D8AC
/* 01F5C0 8001FA10 2484C968 */   addiu      $a0, $a0, %lo(D_800EC968)
/* 01F5C4 8001FA14 2402FFFF */  addiu       $v0, $zero, -0x1
.L8001FA18:
/* 01F5C8 8001FA18 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01F5CC 8001FA1C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01F5D0 8001FA20 03E00008 */  jr          $ra
/* 01F5D4 8001FA24 00000000 */   nop

glabel func_8001FA28 # 2
/* 01F5D8 8001FA28 3C018009 */  lui         $at, %hi(D_80088EE8)
/* 01F5DC 8001FA2C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01F5E0 8001FA30 00802825 */  move        $a1, $a0
/* 01F5E4 8001FA34 AC248EE8 */  sw          $a0, %lo(D_80088EE8)($at)
/* 01F5E8 8001FA38 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01F5EC 8001FA3C 3C04800F */  lui         $a0, %hi(D_800EC9C8)
/* 01F5F0 8001FA40 2484C9C8 */  addiu       $a0, $a0, %lo(D_800EC9C8)
/* 01F5F4 8001FA44 0C001D78 */  jal         func_800075E0
/* 01F5F8 8001FA48 AFA50018 */   sw         $a1, 0x18($sp)
/* 01F5FC 8001FA4C 3C04800F */  lui         $a0, %hi(D_800EC960)
/* 01F600 8001FA50 8FA50018 */  lw          $a1, 0x18($sp)
/* 01F604 8001FA54 0C0084A8 */  jal         func_800212A0
/* 01F608 8001FA58 8C84C960 */   lw         $a0, %lo(D_800EC960)($a0)
/* 01F60C 8001FA5C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01F610 8001FA60 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01F614 8001FA64 03E00008 */  jr          $ra
/* 01F618 8001FA68 00000000 */   nop

glabel func_8001FA6C # 3
/* 01F61C 8001FA6C 3C028009 */  lui         $v0, %hi(D_80088EE8)
/* 01F620 8001FA70 03E00008 */  jr          $ra
/* 01F624 8001FA74 8C428EE8 */   lw         $v0, %lo(D_80088EE8)($v0)

glabel func_8001FA78 # 4
/* 01F628 8001FA78 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 01F62C 8001FA7C AFB5003C */  sw          $s5, 0x3c($sp)
/* 01F630 8001FA80 AFB40038 */  sw          $s4, 0x38($sp)
/* 01F634 8001FA84 00A0A025 */  move        $s4, $a1
/* 01F638 8001FA88 3C15800F */  lui         $s5, %hi(D_800EC9C8)
/* 01F63C 8001FA8C 3C0E800F */  lui         $t6, %hi(D_800EEA18)
/* 01F640 8001FA90 26B5C9C8 */  addiu       $s5, $s5, %lo(D_800EC9C8)
/* 01F644 8001FA94 AFBF0044 */  sw          $ra, 0x44($sp)
/* 01F648 8001FA98 AFA40048 */  sw          $a0, 0x48($sp)
/* 01F64C 8001FA9C 25CEEA18 */  addiu       $t6, $t6, %lo(D_800EEA18)
/* 01F650 8001FAA0 3C05800A */  lui         $a1, %hi(D_8009D9C0)
/* 01F654 8001FAA4 AFB60040 */  sw          $s6, 0x40($sp)
/* 01F658 8001FAA8 AFB30034 */  sw          $s3, 0x34($sp)
/* 01F65C 8001FAAC AFB20030 */  sw          $s2, 0x30($sp)
/* 01F660 8001FAB0 AFB1002C */  sw          $s1, 0x2c($sp)
/* 01F664 8001FAB4 AFB00028 */  sw          $s0, 0x28($sp)
/* 01F668 8001FAB8 8CA5D9C0 */  lw          $a1, %lo(D_8009D9C0)($a1)
/* 01F66C 8001FABC AFAE0010 */  sw          $t6, 0x10($sp)
/* 01F670 8001FAC0 02A02025 */  move        $a0, $s5
/* 01F674 8001FAC4 24060002 */  addiu       $a2, $zero, 0x2
/* 01F678 8001FAC8 0C001D08 */  jal         func_80007420
/* 01F67C 8001FACC 24070028 */   addiu      $a3, $zero, 0x28
/* 01F680 8001FAD0 3C10800F */  lui         $s0, %hi(D_800EC9F0)
/* 01F684 8001FAD4 3C11800F */  lui         $s1, %hi(D_800ECBF0)
/* 01F688 8001FAD8 3C12800F */  lui         $s2, %hi(D_800ED1CC)
/* 01F68C 8001FADC 3C138000 */  lui         $s3, %hi(func_800059E4)
/* 01F690 8001FAE0 3C16800F */  lui         $s6, %hi(D_800EF18C)
/* 01F694 8001FAE4 26D6F18C */  addiu       $s6, $s6, %lo(D_800EF18C)
/* 01F698 8001FAE8 267359E4 */  addiu       $s3, $s3, %lo(func_800059E4)
/* 01F69C 8001FAEC 2652D1CC */  addiu       $s2, $s2, %lo(D_800ED1CC)
/* 01F6A0 8001FAF0 2631CBF0 */  addiu       $s1, $s1, %lo(D_800ECBF0)
/* 01F6A4 8001FAF4 2610C9F0 */  addiu       $s0, $s0, %lo(D_800EC9F0)
.L8001FAF8:
/* 01F6A8 8001FAF8 0C0015F4 */  jal         func_800057D0
/* 01F6AC 8001FAFC 02202025 */   move       $a0, $s1
/* 01F6B0 8001FB00 AE0007D8 */  sw          $zero, 0x7d8($s0)
/* 01F6B4 8001FB04 8E860004 */  lw          $a2, 0x4($s4)
/* 01F6B8 8001FB08 AFB30018 */  sw          $s3, 0x18($sp)
/* 01F6BC 8001FB0C AFB10014 */  sw          $s1, 0x14($sp)
/* 01F6C0 8001FB10 AFB20010 */  sw          $s2, 0x10($sp)
/* 01F6C4 8001FB14 02002025 */  move        $a0, $s0
/* 01F6C8 8001FB18 02A02825 */  move        $a1, $s5
/* 01F6CC 8001FB1C 0C00182A */  jal         func_800060A8
/* 01F6D0 8001FB20 24070014 */   addiu      $a3, $zero, 0x14
/* 01F6D4 8001FB24 265207F0 */  addiu       $s2, $s2, 0x7f0
/* 01F6D8 8001FB28 261007F0 */  addiu       $s0, $s0, 0x7f0
/* 01F6DC 8001FB2C 1656FFF2 */  bne         $s2, $s6, .L8001FAF8
/* 01F6E0 8001FB30 263107F0 */   addiu      $s1, $s1, 0x7f0
/* 01F6E4 8001FB34 8FBF0044 */  lw          $ra, 0x44($sp)
/* 01F6E8 8001FB38 8FB00028 */  lw          $s0, 0x28($sp)
/* 01F6EC 8001FB3C 8FB1002C */  lw          $s1, 0x2c($sp)
/* 01F6F0 8001FB40 8FB20030 */  lw          $s2, 0x30($sp)
/* 01F6F4 8001FB44 8FB30034 */  lw          $s3, 0x34($sp)
/* 01F6F8 8001FB48 8FB40038 */  lw          $s4, 0x38($sp)
/* 01F6FC 8001FB4C 8FB5003C */  lw          $s5, 0x3c($sp)
/* 01F700 8001FB50 8FB60040 */  lw          $s6, 0x40($sp)
/* 01F704 8001FB54 03E00008 */  jr          $ra
/* 01F708 8001FB58 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8001FB5C # 5
/* 01F70C 8001FB5C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01F710 8001FB60 AFB20028 */  sw          $s2, 0x28($sp)
/* 01F714 8001FB64 AFB10024 */  sw          $s1, 0x24($sp)
/* 01F718 8001FB68 AFB00020 */  sw          $s0, 0x20($sp)
/* 01F71C 8001FB6C 3C10800F */  lui         $s0, %hi(D_800ECBF0)
/* 01F720 8001FB70 3C11800F */  lui         $s1, %hi(D_800EC9F0)
/* 01F724 8001FB74 3C12800F */  lui         $s2, %hi(D_800EEBB0)
/* 01F728 8001FB78 AFBF002C */  sw          $ra, 0x2c($sp)
/* 01F72C 8001FB7C AFA40030 */  sw          $a0, 0x30($sp)
/* 01F730 8001FB80 2652EBB0 */  addiu       $s2, $s2, %lo(D_800EEBB0)
/* 01F734 8001FB84 2631C9F0 */  addiu       $s1, $s1, %lo(D_800EC9F0)
/* 01F738 8001FB88 2610CBF0 */  addiu       $s0, $s0, %lo(D_800ECBF0)
.L8001FB8C:
/* 01F73C 8001FB8C 0C0016DC */  jal         func_80005B70
/* 01F740 8001FB90 02002025 */   move       $a0, $s0
/* 01F744 8001FB94 50400015 */  beql        $v0, $zero, .L8001FBEC
/* 01F748 8001FB98 261007F0 */   addiu      $s0, $s0, 0x7f0
/* 01F74C 8001FB9C 3C128009 */  lui         $s2, %hi(D_80088EF4)
/* 01F750 8001FBA0 26528EF4 */  addiu       $s2, $s2, %lo(D_80088EF4)
/* 01F754 8001FBA4 8E4E0000 */  lw          $t6, 0x0($s2)
/* 01F758 8001FBA8 02002025 */  move        $a0, $s0
/* 01F75C 8001FBAC 8FA50030 */  lw          $a1, 0x30($sp)
/* 01F760 8001FBB0 0C001602 */  jal         func_80005808
/* 01F764 8001FBB4 AE2E07D8 */   sw         $t6, 0x7d8($s1)
/* 01F768 8001FBB8 3C013FF0 */  lui         $at, 0x3ff0
/* 01F76C 8001FBBC 44812800 */  mtc1        $at, $f5
/* 01F770 8001FBC0 44802000 */  mtc1        $zero, $f4
/* 01F774 8001FBC4 02002025 */  move        $a0, $s0
/* 01F778 8001FBC8 24060000 */  addiu       $a2, $zero, 0x0
/* 01F77C 8001FBCC 24070000 */  addiu       $a3, $zero, 0x0
/* 01F780 8001FBD0 0C00163D */  jal         func_800058F4
/* 01F784 8001FBD4 F7A40010 */   sdc1       $f4, 0x10($sp)
/* 01F788 8001FBD8 8E420000 */  lw          $v0, 0x0($s2)
/* 01F78C 8001FBDC 244F0001 */  addiu       $t7, $v0, 0x1
/* 01F790 8001FBE0 10000005 */  b           .L8001FBF8
/* 01F794 8001FBE4 AE4F0000 */   sw         $t7, 0x0($s2)
/* 01F798 8001FBE8 261007F0 */  addiu       $s0, $s0, 0x7f0
.L8001FBEC:
/* 01F79C 8001FBEC 1612FFE7 */  bne         $s0, $s2, .L8001FB8C
/* 01F7A0 8001FBF0 263107F0 */   addiu      $s1, $s1, 0x7f0
/* 01F7A4 8001FBF4 00001025 */  move        $v0, $zero
.L8001FBF8:
/* 01F7A8 8001FBF8 8FBF002C */  lw          $ra, 0x2c($sp)
/* 01F7AC 8001FBFC 8FB00020 */  lw          $s0, 0x20($sp)
/* 01F7B0 8001FC00 8FB10024 */  lw          $s1, 0x24($sp)
/* 01F7B4 8001FC04 8FB20028 */  lw          $s2, 0x28($sp)
/* 01F7B8 8001FC08 03E00008 */  jr          $ra
/* 01F7BC 8001FC0C 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8001FC10 # 6
/* 01F7C0 8001FC10 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01F7C4 8001FC14 F7B40010 */  sdc1        $f20, 0x10($sp)
/* 01F7C8 8001FC18 4487A000 */  mtc1        $a3, $f20
/* 01F7CC 8001FC1C 4486A800 */  mtc1        $a2, $f21
/* 01F7D0 8001FC20 308F0002 */  andi        $t7, $a0, 0x2
/* 01F7D4 8001FC24 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01F7D8 8001FC28 AFB10020 */  sw          $s1, 0x20($sp)
/* 01F7DC 8001FC2C AFB0001C */  sw          $s0, 0x1c($sp)
/* 01F7E0 8001FC30 11E0000F */  beq         $t7, $zero, .L8001FC70
/* 01F7E4 8001FC34 AFA40028 */   sw         $a0, 0x28($sp)
/* 01F7E8 8001FC38 3C10800F */  lui         $s0, %hi(D_800EC9F0)
/* 01F7EC 8001FC3C 3C11800F */  lui         $s1, %hi(D_800EE9B0)
/* 01F7F0 8001FC40 2631E9B0 */  addiu       $s1, $s1, %lo(D_800EE9B0)
/* 01F7F4 8001FC44 2610C9F0 */  addiu       $s0, $s0, %lo(D_800EC9F0)
/* 01F7F8 8001FC48 8E0407D8 */  lw          $a0, 0x7d8($s0)
.L8001FC4C:
/* 01F7FC 8001FC4C 50800006 */  beql        $a0, $zero, .L8001FC68
/* 01F800 8001FC50 261007F0 */   addiu      $s0, $s0, 0x7f0
/* 01F804 8001FC54 4406A800 */  mfc1        $a2, $f21
/* 01F808 8001FC58 4407A000 */  mfc1        $a3, $f20
/* 01F80C 8001FC5C 0C00809C */  jal         func_80020270
/* 01F810 8001FC60 00000000 */   nop
/* 01F814 8001FC64 261007F0 */  addiu       $s0, $s0, 0x7f0
.L8001FC68:
/* 01F818 8001FC68 5611FFF8 */  bnel        $s0, $s1, .L8001FC4C
/* 01F81C 8001FC6C 8E0407D8 */   lw         $a0, 0x7d8($s0)
.L8001FC70:
/* 01F820 8001FC70 8FB80028 */  lw          $t8, 0x28($sp)
/* 01F824 8001FC74 3C04800F */  lui         $a0, %hi(D_800EC960)
/* 01F828 8001FC78 33190001 */  andi        $t9, $t8, 0x1
/* 01F82C 8001FC7C 53200004 */  beql        $t9, $zero, .L8001FC90
/* 01F830 8001FC80 8FBF0024 */   lw         $ra, 0x24($sp)
/* 01F834 8001FC84 0C0082A8 */  jal         func_80020AA0
/* 01F838 8001FC88 8C84C960 */   lw         $a0, %lo(D_800EC960)($a0)
/* 01F83C 8001FC8C 8FBF0024 */  lw          $ra, 0x24($sp)
.L8001FC90:
/* 01F840 8001FC90 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 01F844 8001FC94 8FB0001C */  lw          $s0, 0x1c($sp)
/* 01F848 8001FC98 8FB10020 */  lw          $s1, 0x20($sp)
/* 01F84C 8001FC9C 03E00008 */  jr          $ra
/* 01F850 8001FCA0 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8001FCA4 # 7
/* 01F854 8001FCA4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01F858 8001FCA8 AFB1001C */  sw          $s1, 0x1c($sp)
/* 01F85C 8001FCAC 308F0002 */  andi        $t7, $a0, 0x2
/* 01F860 8001FCB0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01F864 8001FCB4 AFB20020 */  sw          $s2, 0x20($sp)
/* 01F868 8001FCB8 AFB00018 */  sw          $s0, 0x18($sp)
/* 01F86C 8001FCBC AFA40028 */  sw          $a0, 0x28($sp)
/* 01F870 8001FCC0 11E0000B */  beq         $t7, $zero, .L8001FCF0
/* 01F874 8001FCC4 00008825 */   move       $s1, $zero
/* 01F878 8001FCC8 3C10800F */  lui         $s0, %hi(D_800ECBF0)
/* 01F87C 8001FCCC 3C12800F */  lui         $s2, %hi(D_800EEBB0)
/* 01F880 8001FCD0 2652EBB0 */  addiu       $s2, $s2, %lo(D_800EEBB0)
/* 01F884 8001FCD4 2610CBF0 */  addiu       $s0, $s0, %lo(D_800ECBF0)
.L8001FCD8:
/* 01F888 8001FCD8 0C0016DC */  jal         func_80005B70
/* 01F88C 8001FCDC 02002025 */   move       $a0, $s0
/* 01F890 8001FCE0 261007F0 */  addiu       $s0, $s0, 0x7f0
/* 01F894 8001FCE4 2C580001 */  sltiu       $t8, $v0, 0x1
/* 01F898 8001FCE8 1612FFFB */  bne         $s0, $s2, .L8001FCD8
/* 01F89C 8001FCEC 02388821 */   addu       $s1, $s1, $t8
.L8001FCF0:
/* 01F8A0 8001FCF0 8FB90028 */  lw          $t9, 0x28($sp)
/* 01F8A4 8001FCF4 3C04800F */  lui         $a0, %hi(D_800EC960)
/* 01F8A8 8001FCF8 33280001 */  andi        $t0, $t9, 0x1
/* 01F8AC 8001FCFC 51000005 */  beql        $t0, $zero, .L8001FD14
/* 01F8B0 8001FD00 8FBF0024 */   lw         $ra, 0x24($sp)
/* 01F8B4 8001FD04 0C00842F */  jal         func_800210BC
/* 01F8B8 8001FD08 8C84C960 */   lw         $a0, %lo(D_800EC960)($a0)
/* 01F8BC 8001FD0C 02228821 */  addu        $s1, $s1, $v0
/* 01F8C0 8001FD10 8FBF0024 */  lw          $ra, 0x24($sp)
.L8001FD14:
/* 01F8C4 8001FD14 02201025 */  move        $v0, $s1
/* 01F8C8 8001FD18 8FB1001C */  lw          $s1, 0x1c($sp)
/* 01F8CC 8001FD1C 8FB00018 */  lw          $s0, 0x18($sp)
/* 01F8D0 8001FD20 8FB20020 */  lw          $s2, 0x20($sp)
/* 01F8D4 8001FD24 03E00008 */  jr          $ra
/* 01F8D8 8001FD28 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8001FD2C # 8
/* 01F8DC 8001FD2C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01F8E0 8001FD30 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01F8E4 8001FD34 14800003 */  bne         $a0, $zero, .L8001FD44
/* 01F8E8 8001FD38 00802825 */   move       $a1, $a0
/* 01F8EC 8001FD3C 10000013 */  b           .L8001FD8C
/* 01F8F0 8001FD40 00001025 */   move       $v0, $zero
.L8001FD44:
/* 01F8F4 8001FD44 3C02800F */  lui         $v0, %hi(D_800EC9F0)
/* 01F8F8 8001FD48 3C03800F */  lui         $v1, %hi(D_800EE9B0)
/* 01F8FC 8001FD4C 2463E9B0 */  addiu       $v1, $v1, %lo(D_800EE9B0)
/* 01F900 8001FD50 2442C9F0 */  addiu       $v0, $v0, %lo(D_800EC9F0)
/* 01F904 8001FD54 8C4E07D8 */  lw          $t6, 0x7d8($v0)
.L8001FD58:
/* 01F908 8001FD58 54AE0007 */  bnel        $a1, $t6, .L8001FD78
/* 01F90C 8001FD5C 244207F0 */   addiu      $v0, $v0, 0x7f0
/* 01F910 8001FD60 0C0016DC */  jal         func_80005B70
/* 01F914 8001FD64 24440200 */   addiu      $a0, $v0, 0x200
/* 01F918 8001FD68 2C4F0001 */  sltiu       $t7, $v0, 0x1
/* 01F91C 8001FD6C 10000007 */  b           .L8001FD8C
/* 01F920 8001FD70 01E01025 */   move       $v0, $t7
/* 01F924 8001FD74 244207F0 */  addiu       $v0, $v0, 0x7f0
.L8001FD78:
/* 01F928 8001FD78 5443FFF7 */  bnel        $v0, $v1, .L8001FD58
/* 01F92C 8001FD7C 8C4E07D8 */   lw         $t6, 0x7d8($v0)
/* 01F930 8001FD80 3C04800F */  lui         $a0, %hi(D_800EC960)
/* 01F934 8001FD84 0C008443 */  jal         func_8002110C
/* 01F938 8001FD88 8C84C960 */   lw         $a0, %lo(D_800EC960)($a0)
.L8001FD8C:
/* 01F93C 8001FD8C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01F940 8001FD90 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01F944 8001FD94 03E00008 */  jr          $ra
/* 01F948 8001FD98 00000000 */   nop

glabel func_8001FD9C # 9
/* 01F94C 8001FD9C 24070058 */  addiu       $a3, $zero, 0x58
/* 01F950 8001FDA0 0087001A */  div         $zero, $a0, $a3
/* 01F954 8001FDA4 3C0E8009 */  lui         $t6, %hi(D_80088EE0)
/* 01F958 8001FDA8 8DCE8EE0 */  lw          $t6, %lo(D_80088EE0)($t6)
/* 01F95C 8001FDAC 00001812 */  mflo        $v1
/* 01F960 8001FDB0 2463007C */  addiu       $v1, $v1, 0x7c
/* 01F964 8001FDB4 8DC20004 */  lw          $v0, 0x4($t6)
/* 01F968 8001FDB8 14E00002 */  bne         $a3, $zero, .L8001FDC4
/* 01F96C 8001FDBC 00000000 */   nop
/* 01F970 8001FDC0 0007000D */  break       7
.L8001FDC4:
/* 01F974 8001FDC4 2401FFFF */  addiu       $at, $zero, -0x1
/* 01F978 8001FDC8 14E10004 */  bne         $a3, $at, .L8001FDDC
/* 01F97C 8001FDCC 3C018000 */   lui        $at, 0x8000
/* 01F980 8001FDD0 14810002 */  bne         $a0, $at, .L8001FDDC
/* 01F984 8001FDD4 00000000 */   nop
/* 01F988 8001FDD8 0006000D */  break       6
.L8001FDDC:
/* 01F98C 8001FDDC 844F0000 */  lh          $t7, 0x0($v0)
/* 01F990 8001FDE0 0003C080 */  sll         $t8, $v1, 2
/* 01F994 8001FDE4 0058C821 */  addu        $t9, $v0, $t8
/* 01F998 8001FDE8 006F082A */  slt         $at, $v1, $t7
/* 01F99C 8001FDEC 10200014 */  beq         $at, $zero, .L8001FE40
/* 01F9A0 8001FDF0 00001025 */   move       $v0, $zero
/* 01F9A4 8001FDF4 0087001A */  div         $zero, $a0, $a3
/* 01F9A8 8001FDF8 8F26000C */  lw          $a2, 0xc($t9)
/* 01F9AC 8001FDFC 14E00002 */  bne         $a3, $zero, .L8001FE08
/* 01F9B0 8001FE00 00000000 */   nop
/* 01F9B4 8001FE04 0007000D */  break       7
.L8001FE08:
/* 01F9B8 8001FE08 2401FFFF */  addiu       $at, $zero, -0x1
/* 01F9BC 8001FE0C 14E10004 */  bne         $a3, $at, .L8001FE20
/* 01F9C0 8001FE10 3C018000 */   lui        $at, 0x8000
/* 01F9C4 8001FE14 14810002 */  bne         $a0, $at, .L8001FE20
/* 01F9C8 8001FE18 00000000 */   nop
/* 01F9CC 8001FE1C 0006000D */  break       6
.L8001FE20:
/* 01F9D0 8001FE20 84C8000E */  lh          $t0, 0xe($a2)
/* 01F9D4 8001FE24 00002810 */  mfhi        $a1
/* 01F9D8 8001FE28 00054880 */  sll         $t1, $a1, 2
/* 01F9DC 8001FE2C 00A8082A */  slt         $at, $a1, $t0
/* 01F9E0 8001FE30 10200003 */  beq         $at, $zero, .L8001FE40
/* 01F9E4 8001FE34 00C95021 */   addu       $t2, $a2, $t1
/* 01F9E8 8001FE38 03E00008 */  jr          $ra
/* 01F9EC 8001FE3C 8D420010 */   lw         $v0, 0x10($t2)
.L8001FE40:
/* 01F9F0 8001FE40 03E00008 */  jr          $ra
/* 01F9F4 8001FE44 00000000 */   nop

glabel func_8001FE48 # 10
/* 01F9F8 8001FE48 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01F9FC 8001FE4C AFBF0014 */  sw          $ra, 0x14($sp)
/* 01FA00 8001FE50 0C007F67 */  jal         func_8001FD9C
/* 01FA04 8001FE54 00000000 */   nop
/* 01FA08 8001FE58 3C04800F */  lui         $a0, %hi(D_800EC960)
/* 01FA0C 8001FE5C 8C84C960 */  lw          $a0, %lo(D_800EC960)($a0)
/* 01FA10 8001FE60 0C0081AC */  jal         func_800206B0
/* 01FA14 8001FE64 00402825 */   move       $a1, $v0
/* 01FA18 8001FE68 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01FA1C 8001FE6C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01FA20 8001FE70 03E00008 */  jr          $ra
/* 01FA24 8001FE74 00000000 */   nop

glabel func_8001FE78 # 11
/* 01FA28 8001FE78 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01FA2C 8001FE7C 00A03025 */  move        $a2, $a1
/* 01FA30 8001FE80 00802825 */  move        $a1, $a0
/* 01FA34 8001FE84 AFA40018 */  sw          $a0, 0x18($sp)
/* 01FA38 8001FE88 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01FA3C 8001FE8C 3C04800F */  lui         $a0, %hi(D_800EC960)
/* 01FA40 8001FE90 8C84C960 */  lw          $a0, %lo(D_800EC960)($a0)
/* 01FA44 8001FE94 0C008391 */  jal         func_80020E44
/* 01FA48 8001FE98 2407FFFF */   addiu      $a3, $zero, -0x1
/* 01FA4C 8001FE9C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01FA50 8001FEA0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01FA54 8001FEA4 03E00008 */  jr          $ra
/* 01FA58 8001FEA8 00000000 */   nop

glabel func_8001FEAC # 12
/* 01FA5C 8001FEAC 00A03025 */  move        $a2, $a1
/* 01FA60 8001FEB0 000671C0 */  sll         $t6, $a2, 7
/* 01FA64 8001FEB4 01C67023 */  subu        $t6, $t6, $a2
/* 01FA68 8001FEB8 01C03025 */  move        $a2, $t6
/* 01FA6C 8001FEBC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01FA70 8001FEC0 AFA40018 */  sw          $a0, 0x18($sp)
/* 01FA74 8001FEC4 00802825 */  move        $a1, $a0
/* 01FA78 8001FEC8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01FA7C 8001FECC 04C10003 */  bgez        $a2, .L8001FEDC
/* 01FA80 8001FED0 00067A03 */   sra        $t7, $a2, 8
/* 01FA84 8001FED4 24C100FF */  addiu       $at, $a2, 0xff
/* 01FA88 8001FED8 00017A03 */  sra         $t7, $at, 8
.L8001FEDC:
/* 01FA8C 8001FEDC 3C04800F */  lui         $a0, %hi(D_800EC960)
/* 01FA90 8001FEE0 01E03025 */  move        $a2, $t7
/* 01FA94 8001FEE4 0C008312 */  jal         func_80020C48
/* 01FA98 8001FEE8 8C84C960 */   lw         $a0, %lo(D_800EC960)($a0)
/* 01FA9C 8001FEEC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01FAA0 8001FEF0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01FAA4 8001FEF4 03E00008 */  jr          $ra
/* 01FAA8 8001FEF8 00000000 */   nop

glabel func_8001FEFC # 13
/* 01FAAC 8001FEFC 3C0142C8 */  lui         $at, 0x42c8
/* 01FAB0 8001FF00 44856000 */  mtc1        $a1, $f12
/* 01FAB4 8001FF04 44812000 */  mtc1        $at, $f4
/* 01FAB8 8001FF08 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01FABC 8001FF0C AFA40018 */  sw          $a0, 0x18($sp)
/* 01FAC0 8001FF10 46046182 */  mul.s       $f6, $f12, $f4
/* 01FAC4 8001FF14 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01FAC8 8001FF18 4600320D */  trunc.w.s   $f8, $f6
/* 01FACC 8001FF1C 44044000 */  mfc1        $a0, $f8
/* 01FAD0 8001FF20 0C014CBC */  jal         func_800532F0
/* 01FAD4 8001FF24 00000000 */   nop
/* 01FAD8 8001FF28 460002A1 */  cvt.d.s     $f10, $f0
/* 01FADC 8001FF2C 3C04800F */  lui         $a0, %hi(D_800EC960)
/* 01FAE0 8001FF30 44075000 */  mfc1        $a3, $f10
/* 01FAE4 8001FF34 44065800 */  mfc1        $a2, $f11
/* 01FAE8 8001FF38 8C84C960 */  lw          $a0, %lo(D_800EC960)($a0)
/* 01FAEC 8001FF3C 0C008350 */  jal         func_80020D40
/* 01FAF0 8001FF40 8FA50018 */   lw         $a1, 0x18($sp)
/* 01FAF4 8001FF44 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01FAF8 8001FF48 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01FAFC 8001FF4C 03E00008 */  jr          $ra
/* 01FB00 8001FF50 00000000 */   nop

glabel func_8001FF54 # 14
/* 01FB04 8001FF54 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01FB08 8001FF58 00A03025 */  move        $a2, $a1
/* 01FB0C 8001FF5C 00802825 */  move        $a1, $a0
/* 01FB10 8001FF60 AFA40018 */  sw          $a0, 0x18($sp)
/* 01FB14 8001FF64 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01FB18 8001FF68 3C04800F */  lui         $a0, %hi(D_800EC960)
/* 01FB1C 8001FF6C 0C0083F6 */  jal         func_80020FD8
/* 01FB20 8001FF70 8C84C960 */   lw         $a0, %lo(D_800EC960)($a0)
/* 01FB24 8001FF74 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01FB28 8001FF78 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01FB2C 8001FF7C 03E00008 */  jr          $ra
/* 01FB30 8001FF80 00000000 */   nop

glabel func_8001FF84 # 15
/* 01FB34 8001FF84 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01FB38 8001FF88 44876000 */  mtc1        $a3, $f12
/* 01FB3C 8001FF8C 44866800 */  mtc1        $a2, $f13
/* 01FB40 8001FF90 14800003 */  bne         $a0, $zero, .L8001FFA0
/* 01FB44 8001FF94 AFBF0014 */   sw         $ra, 0x14($sp)
/* 01FB48 8001FF98 10000012 */  b           .L8001FFE4
/* 01FB4C 8001FF9C 00001025 */   move       $v0, $zero
.L8001FFA0:
/* 01FB50 8001FFA0 3C02800F */  lui         $v0, %hi(D_800EC9F0)
/* 01FB54 8001FFA4 3C03800F */  lui         $v1, %hi(D_800EE9B0)
/* 01FB58 8001FFA8 2463E9B0 */  addiu       $v1, $v1, %lo(D_800EE9B0)
/* 01FB5C 8001FFAC 2442C9F0 */  addiu       $v0, $v0, %lo(D_800EC9F0)
/* 01FB60 8001FFB0 8C4E07D8 */  lw          $t6, 0x7d8($v0)
.L8001FFB4:
/* 01FB64 8001FFB4 548E0008 */  bnel        $a0, $t6, .L8001FFD8
/* 01FB68 8001FFB8 244207F0 */   addiu      $v0, $v0, 0x7f0
/* 01FB6C 8001FFBC 44066800 */  mfc1        $a2, $f13
/* 01FB70 8001FFC0 44076000 */  mfc1        $a3, $f12
/* 01FB74 8001FFC4 0C0016E4 */  jal         func_80005B90
/* 01FB78 8001FFC8 24440200 */   addiu      $a0, $v0, 0x200
/* 01FB7C 8001FFCC 10000005 */  b           .L8001FFE4
/* 01FB80 8001FFD0 24020001 */   addiu      $v0, $zero, 0x1
/* 01FB84 8001FFD4 244207F0 */  addiu       $v0, $v0, 0x7f0
.L8001FFD8:
/* 01FB88 8001FFD8 5443FFF6 */  bnel        $v0, $v1, .L8001FFB4
/* 01FB8C 8001FFDC 8C4E07D8 */   lw         $t6, 0x7d8($v0)
/* 01FB90 8001FFE0 00001025 */  move        $v0, $zero
.L8001FFE4:
/* 01FB94 8001FFE4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01FB98 8001FFE8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01FB9C 8001FFEC 03E00008 */  jr          $ra
/* 01FBA0 8001FFF0 00000000 */   nop

glabel func_8001FFF4 # 16
/* 01FBA4 8001FFF4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01FBA8 8001FFF8 14800006 */  bne         $a0, $zero, .L80020014
/* 01FBAC 8001FFFC AFBF0014 */   sw         $ra, 0x14($sp)
/* 01FBB0 80020000 3C01BFF0 */  lui         $at, 0xbff0
/* 01FBB4 80020004 44810800 */  mtc1        $at, $f1
/* 01FBB8 80020008 44800000 */  mtc1        $zero, $f0
/* 01FBBC 8002000C 10000014 */  b           .L80020060
/* 01FBC0 80020010 8FBF0014 */   lw         $ra, 0x14($sp)
.L80020014:
/* 01FBC4 80020014 3C02800F */  lui         $v0, %hi(D_800EC9F0)
/* 01FBC8 80020018 3C03800F */  lui         $v1, %hi(D_800EE9B0)
/* 01FBCC 8002001C 2463E9B0 */  addiu       $v1, $v1, %lo(D_800EE9B0)
/* 01FBD0 80020020 2442C9F0 */  addiu       $v0, $v0, %lo(D_800EC9F0)
/* 01FBD4 80020024 8C4E07D8 */  lw          $t6, 0x7d8($v0)
.L80020028:
/* 01FBD8 80020028 548E0006 */  bnel        $a0, $t6, .L80020044
/* 01FBDC 8002002C 244207F0 */   addiu      $v0, $v0, 0x7f0
/* 01FBE0 80020030 0C0016F0 */  jal         func_80005BC0
/* 01FBE4 80020034 24440200 */   addiu      $a0, $v0, 0x200
/* 01FBE8 80020038 10000009 */  b           .L80020060
/* 01FBEC 8002003C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 01FBF0 80020040 244207F0 */  addiu       $v0, $v0, 0x7f0
.L80020044:
/* 01FBF4 80020044 5443FFF8 */  bnel        $v0, $v1, .L80020028
/* 01FBF8 80020048 8C4E07D8 */   lw         $t6, 0x7d8($v0)
/* 01FBFC 8002004C 3C01BFF0 */  lui         $at, 0xbff0
/* 01FC00 80020050 44810800 */  mtc1        $at, $f1
/* 01FC04 80020054 44800000 */  mtc1        $zero, $f0
/* 01FC08 80020058 00000000 */  nop
/* 01FC0C 8002005C 8FBF0014 */  lw          $ra, 0x14($sp)
.L80020060:
/* 01FC10 80020060 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01FC14 80020064 03E00008 */  jr          $ra
/* 01FC18 80020068 00000000 */   nop

glabel func_8002006C # 17
/* 01FC1C 8002006C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01FC20 80020070 308F0002 */  andi        $t7, $a0, 0x2
/* 01FC24 80020074 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01FC28 80020078 AFA40018 */  sw          $a0, 0x18($sp)
/* 01FC2C 8002007C 11E0000C */  beq         $t7, $zero, .L800200B0
/* 01FC30 80020080 AFA5001C */   sw         $a1, 0x1c($sp)
/* 01FC34 80020084 44852000 */  mtc1        $a1, $f4
/* 01FC38 80020088 3C01800A */  lui         $at, %hi(D_800A4880)
/* 01FC3C 8002008C D4284880 */  ldc1        $f8, %lo(D_800A4880)($at)
/* 01FC40 80020090 468021A1 */  cvt.d.w     $f6, $f4
/* 01FC44 80020094 3C04800F */  lui         $a0, %hi(D_800EC9C8)
/* 01FC48 80020098 2484C9C8 */  addiu       $a0, $a0, %lo(D_800EC9C8)
/* 01FC4C 8002009C 46283283 */  div.d       $f10, $f6, $f8
/* 01FC50 800200A0 44075000 */  mfc1        $a3, $f10
/* 01FC54 800200A4 44065800 */  mfc1        $a2, $f11
/* 01FC58 800200A8 0C001D4E */  jal         func_80007538
/* 01FC5C 800200AC 00000000 */   nop
.L800200B0:
/* 01FC60 800200B0 8FB90018 */  lw          $t9, 0x18($sp)
/* 01FC64 800200B4 3C04800F */  lui         $a0, %hi(D_800EC960)
/* 01FC68 800200B8 8FA5001C */  lw          $a1, 0x1c($sp)
/* 01FC6C 800200BC 33280001 */  andi        $t0, $t9, 0x1
/* 01FC70 800200C0 51000004 */  beql        $t0, $zero, .L800200D4
/* 01FC74 800200C4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 01FC78 800200C8 0C0084E0 */  jal         func_80021380
/* 01FC7C 800200CC 8C84C960 */   lw         $a0, %lo(D_800EC960)($a0)
/* 01FC80 800200D0 8FBF0014 */  lw          $ra, 0x14($sp)
.L800200D4:
/* 01FC84 800200D4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01FC88 800200D8 03E00008 */  jr          $ra
/* 01FC8C 800200DC 00000000 */   nop

glabel func_800200E0 # 18
/* 01FC90 800200E0 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 01FC94 800200E4 F7BA0030 */  sdc1        $f26, 0x30($sp)
/* 01FC98 800200E8 4487D000 */  mtc1        $a3, $f26
/* 01FC9C 800200EC 4486D800 */  mtc1        $a2, $f27
/* 01FCA0 800200F0 AFBF004C */  sw          $ra, 0x4c($sp)
/* 01FCA4 800200F4 AFB30048 */  sw          $s3, 0x48($sp)
/* 01FCA8 800200F8 AFB20044 */  sw          $s2, 0x44($sp)
/* 01FCAC 800200FC AFB10040 */  sw          $s1, 0x40($sp)
/* 01FCB0 80020100 AFB0003C */  sw          $s0, 0x3c($sp)
/* 01FCB4 80020104 F7B80028 */  sdc1        $f24, 0x28($sp)
/* 01FCB8 80020108 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 01FCBC 8002010C 0C007ED7 */  jal         func_8001FB5C
/* 01FCC0 80020110 F7B40018 */   sdc1       $f20, 0x18($sp)
/* 01FCC4 80020114 3C013FF0 */  lui         $at, 0x3ff0
/* 01FCC8 80020118 4481C800 */  mtc1        $at, $f25
/* 01FCCC 8002011C 3C01800A */  lui         $at, %hi(D_800A4888)
/* 01FCD0 80020120 3C10800F */  lui         $s0, %hi(D_800EC9F0)
/* 01FCD4 80020124 3C12800F */  lui         $s2, %hi(D_800EE9B0)
/* 01FCD8 80020128 4480C000 */  mtc1        $zero, $f24
/* 01FCDC 8002012C 4480A800 */  mtc1        $zero, $f21
/* 01FCE0 80020130 4480A000 */  mtc1        $zero, $f20
/* 01FCE4 80020134 00409825 */  move        $s3, $v0
/* 01FCE8 80020138 2652E9B0 */  addiu       $s2, $s2, %lo(D_800EE9B0)
/* 01FCEC 8002013C 2610C9F0 */  addiu       $s0, $s0, %lo(D_800EC9F0)
/* 01FCF0 80020140 D4364888 */  ldc1        $f22, %lo(D_800A4888)($at)
/* 01FCF4 80020144 8E0E07D8 */  lw          $t6, 0x7d8($s0)
.L80020148:
/* 01FCF8 80020148 26110200 */  addiu       $s1, $s0, 0x200
/* 01FCFC 8002014C 02202025 */  move        $a0, $s1
/* 01FD00 80020150 566E000B */  bnel        $s3, $t6, .L80020180
/* 01FD04 80020154 261007F0 */   addiu      $s0, $s0, 0x7f0
/* 01FD08 80020158 4406A800 */  mfc1        $a2, $f21
/* 01FD0C 8002015C 4407A000 */  mfc1        $a3, $f20
/* 01FD10 80020160 0C00163D */  jal         func_800058F4
/* 01FD14 80020164 F7B60010 */   sdc1       $f22, 0x10($sp)
/* 01FD18 80020168 4406D800 */  mfc1        $a2, $f27
/* 01FD1C 8002016C 4407D000 */  mfc1        $a3, $f26
/* 01FD20 80020170 02202025 */  move        $a0, $s1
/* 01FD24 80020174 0C00163D */  jal         func_800058F4
/* 01FD28 80020178 F7B80010 */   sdc1       $f24, 0x10($sp)
/* 01FD2C 8002017C 261007F0 */  addiu       $s0, $s0, 0x7f0
.L80020180:
/* 01FD30 80020180 5612FFF1 */  bnel        $s0, $s2, .L80020148
/* 01FD34 80020184 8E0E07D8 */   lw         $t6, 0x7d8($s0)
/* 01FD38 80020188 8FBF004C */  lw          $ra, 0x4c($sp)
/* 01FD3C 8002018C 02601025 */  move        $v0, $s3
/* 01FD40 80020190 8FB30048 */  lw          $s3, 0x48($sp)
/* 01FD44 80020194 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 01FD48 80020198 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 01FD4C 8002019C D7B80028 */  ldc1        $f24, 0x28($sp)
/* 01FD50 800201A0 D7BA0030 */  ldc1        $f26, 0x30($sp)
/* 01FD54 800201A4 8FB0003C */  lw          $s0, 0x3c($sp)
/* 01FD58 800201A8 8FB10040 */  lw          $s1, 0x40($sp)
/* 01FD5C 800201AC 8FB20044 */  lw          $s2, 0x44($sp)
/* 01FD60 800201B0 03E00008 */  jr          $ra
/* 01FD64 800201B4 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_800201B8 # 19
/* 01FD68 800201B8 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 01FD6C 800201BC F7B40018 */  sdc1        $f20, 0x18($sp)
/* 01FD70 800201C0 4487A000 */  mtc1        $a3, $f20
/* 01FD74 800201C4 4486A800 */  mtc1        $a2, $f21
/* 01FD78 800201C8 AFB30038 */  sw          $s3, 0x38($sp)
/* 01FD7C 800201CC 00809825 */  move        $s3, $a0
/* 01FD80 800201D0 AFBF003C */  sw          $ra, 0x3c($sp)
/* 01FD84 800201D4 AFB20034 */  sw          $s2, 0x34($sp)
/* 01FD88 800201D8 AFB10030 */  sw          $s1, 0x30($sp)
/* 01FD8C 800201DC AFB0002C */  sw          $s0, 0x2c($sp)
/* 01FD90 800201E0 14800003 */  bne         $a0, $zero, .L800201F0
/* 01FD94 800201E4 F7B60020 */   sdc1       $f22, 0x20($sp)
/* 01FD98 800201E8 10000018 */  b           .L8002024C
/* 01FD9C 800201EC 00001025 */   move       $v0, $zero
.L800201F0:
/* 01FDA0 800201F0 3C10800F */  lui         $s0, %hi(D_800EC9F0)
/* 01FDA4 800201F4 3C01800A */  lui         $at, %hi(D_800A4890)
/* 01FDA8 800201F8 3C12800F */  lui         $s2, %hi(D_800EE9B0)
/* 01FDAC 800201FC 2652E9B0 */  addiu       $s2, $s2, %lo(D_800EE9B0)
/* 01FDB0 80020200 D4364890 */  ldc1        $f22, %lo(D_800A4890)($at)
/* 01FDB4 80020204 2610C9F0 */  addiu       $s0, $s0, %lo(D_800EC9F0)
/* 01FDB8 80020208 8E0E07D8 */  lw          $t6, 0x7d8($s0)
.L8002020C:
/* 01FDBC 8002020C 26110200 */  addiu       $s1, $s0, 0x200
/* 01FDC0 80020210 02202025 */  move        $a0, $s1
/* 01FDC4 80020214 566E000A */  bnel        $s3, $t6, .L80020240
/* 01FDC8 80020218 261007F0 */   addiu      $s0, $s0, 0x7f0
/* 01FDCC 8002021C 4406A800 */  mfc1        $a2, $f21
/* 01FDD0 80020220 4407A000 */  mfc1        $a3, $f20
/* 01FDD4 80020224 0C00163D */  jal         func_800058F4
/* 01FDD8 80020228 F7B60010 */   sdc1       $f22, 0x10($sp)
/* 01FDDC 8002022C 4406A800 */  mfc1        $a2, $f21
/* 01FDE0 80020230 4407A000 */  mfc1        $a3, $f20
/* 01FDE4 80020234 0C001619 */  jal         func_80005864
/* 01FDE8 80020238 02202025 */   move       $a0, $s1
/* 01FDEC 8002023C 261007F0 */  addiu       $s0, $s0, 0x7f0
.L80020240:
/* 01FDF0 80020240 5612FFF2 */  bnel        $s0, $s2, .L8002020C
/* 01FDF4 80020244 8E0E07D8 */   lw         $t6, 0x7d8($s0)
/* 01FDF8 80020248 00001025 */  move        $v0, $zero
.L8002024C:
/* 01FDFC 8002024C 8FBF003C */  lw          $ra, 0x3c($sp)
/* 01FE00 80020250 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 01FE04 80020254 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 01FE08 80020258 8FB0002C */  lw          $s0, 0x2c($sp)
/* 01FE0C 8002025C 8FB10030 */  lw          $s1, 0x30($sp)
/* 01FE10 80020260 8FB20034 */  lw          $s2, 0x34($sp)
/* 01FE14 80020264 8FB30038 */  lw          $s3, 0x38($sp)
/* 01FE18 80020268 03E00008 */  jr          $ra
/* 01FE1C 8002026C 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_80020270 # 20
/* 01FE20 80020270 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01FE24 80020274 44876000 */  mtc1        $a3, $f12
/* 01FE28 80020278 44866800 */  mtc1        $a2, $f13
/* 01FE2C 8002027C AFBF0014 */  sw          $ra, 0x14($sp)
/* 01FE30 80020280 AFA40018 */  sw          $a0, 0x18($sp)
/* 01FE34 80020284 14800003 */  bne         $a0, $zero, .L80020294
/* 01FE38 80020288 00802825 */   move       $a1, $a0
/* 01FE3C 8002028C 1000000D */  b           .L800202C4
/* 01FE40 80020290 00001025 */   move       $v0, $zero
.L80020294:
/* 01FE44 80020294 3C04800F */  lui         $a0, %hi(D_800EC960)
/* 01FE48 80020298 8C84C960 */  lw          $a0, %lo(D_800EC960)($a0)
/* 01FE4C 8002029C AFA50018 */  sw          $a1, 0x18($sp)
/* 01FE50 800202A0 0C0082DA */  jal         func_80020B68
/* 01FE54 800202A4 F7AC0020 */   sdc1       $f12, 0x20($sp)
/* 01FE58 800202A8 D7AC0020 */  ldc1        $f12, 0x20($sp)
/* 01FE5C 800202AC 8FA40018 */  lw          $a0, 0x18($sp)
/* 01FE60 800202B0 44076000 */  mfc1        $a3, $f12
/* 01FE64 800202B4 44066800 */  mfc1        $a2, $f13
/* 01FE68 800202B8 0C00806E */  jal         func_800201B8
/* 01FE6C 800202BC 00000000 */   nop
/* 01FE70 800202C0 00001025 */  move        $v0, $zero
.L800202C4:
/* 01FE74 800202C4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01FE78 800202C8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01FE7C 800202CC 03E00008 */  jr          $ra
/* 01FE80 800202D0 00000000 */   nop

glabel func_800202D4 # 21
/* 01FE84 800202D4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01FE88 800202D8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01FE8C 800202DC AFA00018 */  sw          $zero, 0x18($sp)
/* 01FE90 800202E0 0C014E80 */  jal         osSetIntMask
/* 01FE94 800202E4 24040001 */   addiu      $a0, $zero, 0x1
/* 01FE98 800202E8 3C0F800F */  lui         $t7, %hi(D_800EC980)
/* 01FE9C 800202EC 8DEFC980 */  lw          $t7, %lo(D_800EC980)($t7)
/* 01FEA0 800202F0 3C0E800F */  lui         $t6, %hi(D_800EC980)
/* 01FEA4 800202F4 8FA50018 */  lw          $a1, 0x18($sp)
/* 01FEA8 800202F8 00402025 */  move        $a0, $v0
/* 01FEAC 800202FC 11E00006 */  beq         $t7, $zero, .L80020318
/* 01FEB0 80020300 25CEC980 */   addiu      $t6, $t6, %lo(D_800EC980)
/* 01FEB4 80020304 8DC20000 */  lw          $v0, 0x0($t6)
/* 01FEB8 80020308 8C420000 */  lw          $v0, 0x0($v0)
.L8002030C:
/* 01FEBC 8002030C 24A50001 */  addiu       $a1, $a1, 0x1
/* 01FEC0 80020310 5440FFFE */  bnel        $v0, $zero, .L8002030C
/* 01FEC4 80020314 8C420000 */   lw         $v0, 0x0($v0)
.L80020318:
/* 01FEC8 80020318 0C014E80 */  jal         osSetIntMask
/* 01FECC 8002031C AFA50018 */   sw         $a1, 0x18($sp)
/* 01FED0 80020320 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01FED4 80020324 8FA20018 */  lw          $v0, 0x18($sp)
/* 01FED8 80020328 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01FEDC 8002032C 03E00008 */  jr          $ra
/* 01FEE0 80020330 00000000 */   nop
/* 01FEE4 80020334 00000000 */  nop
/* 01FEE8 80020338 00000000 */  nop
/* 01FEEC 8002033C 00000000 */  nop
