.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D7A0 # 0
/* 04D350 8004D7A0 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 04D354 8004D7A4 AFBF003C */  sw          $ra, 0x3c($sp)
/* 04D358 8004D7A8 AFB60030 */  sw          $s6, 0x30($sp)
/* 04D35C 8004D7AC AFB5002C */  sw          $s5, 0x2c($sp)
/* 04D360 8004D7B0 AFB40028 */  sw          $s4, 0x28($sp)
/* 04D364 8004D7B4 AFB1001C */  sw          $s1, 0x1c($sp)
/* 04D368 8004D7B8 00A08825 */  move        $s1, $a1
/* 04D36C 8004D7BC 0080A825 */  move        $s5, $a0
/* 04D370 8004D7C0 00E0B025 */  move        $s6, $a3
/* 04D374 8004D7C4 AFBE0038 */  sw          $fp, 0x38($sp)
/* 04D378 8004D7C8 AFB70034 */  sw          $s7, 0x34($sp)
/* 04D37C 8004D7CC AFB30024 */  sw          $s3, 0x24($sp)
/* 04D380 8004D7D0 AFB20020 */  sw          $s2, 0x20($sp)
/* 04D384 8004D7D4 AFB00018 */  sw          $s0, 0x18($sp)
/* 04D388 8004D7D8 AFA60078 */  sw          $a2, 0x78($sp)
/* 04D38C 8004D7DC 0C0150EC */  jal         func_800543B0
/* 04D390 8004D7E0 24140002 */   addiu      $s4, $zero, 0x2
/* 04D394 8004D7E4 97A5007A */  lhu         $a1, 0x7a($sp)
/* 04D398 8004D7E8 3C1E800A */  lui         $fp, %hi(D_800A4D30)
/* 04D39C 8004D7EC 3C178010 */  lui         $s7, %hi(D_80102380)
/* 04D3A0 8004D7F0 3C138010 */  lui         $s3, %hi(D_80104A60)
/* 04D3A4 8004D7F4 000570C3 */  sra         $t6, $a1, 3
/* 04D3A8 8004D7F8 00057940 */  sll         $t7, $a1, 5
/* 04D3AC 8004D7FC AFAF0048 */  sw          $t7, 0x48($sp)
/* 04D3B0 8004D800 AFAE004C */  sw          $t6, 0x4c($sp)
/* 04D3B4 8004D804 26734A60 */  addiu       $s3, $s3, %lo(D_80104A60)
/* 04D3B8 8004D808 26F72380 */  addiu       $s7, $s7, %lo(D_80102380)
/* 04D3BC 8004D80C 27DE4D30 */  addiu       $fp, $fp, %lo(D_800A4D30)
.L8004D810:
/* 04D3C0 8004D810 92F80000 */  lbu         $t8, 0x0($s7)
/* 04D3C4 8004D814 2401000C */  addiu       $at, $zero, 0xc
/* 04D3C8 8004D818 97A5007A */  lhu         $a1, 0x7a($sp)
/* 04D3CC 8004D81C 17010003 */  bne         $t8, $at, .L8004D82C
/* 04D3D0 8004D820 02608025 */   move       $s0, $s3
/* 04D3D4 8004D824 8FD90000 */  lw          $t9, 0x0($fp)
/* 04D3D8 8004D828 12390023 */  beq         $s1, $t9, .L8004D8B8
.L8004D82C:
/* 04D3DC 8004D82C 2408000C */   addiu      $t0, $zero, 0xc
/* 04D3E0 8004D830 A2E80000 */  sb          $t0, 0x0($s7)
/* 04D3E4 8004D834 AFD10000 */  sw          $s1, 0x0($fp)
/* 04D3E8 8004D838 1A200010 */  blez        $s1, .L8004D87C
/* 04D3EC 8004D83C 00001025 */   move       $v0, $zero
/* 04D3F0 8004D840 32240003 */  andi        $a0, $s1, 0x3
/* 04D3F4 8004D844 10800006 */  beqz        $a0, .L8004D860
/* 04D3F8 8004D848 00801825 */   move       $v1, $a0
.L8004D84C:
/* 04D3FC 8004D84C 24420001 */  addiu       $v0, $v0, 0x1
/* 04D400 8004D850 A2000000 */  sb          $zero, 0x0($s0)
/* 04D404 8004D854 1462FFFD */  bne         $v1, $v0, .L8004D84C
/* 04D408 8004D858 26100001 */   addiu      $s0, $s0, 0x1
/* 04D40C 8004D85C 10510007 */  beq         $v0, $s1, .L8004D87C
.L8004D860:
/* 04D410 8004D860 24420004 */   addiu      $v0, $v0, 0x4
/* 04D414 8004D864 A2000000 */  sb          $zero, 0x0($s0)
/* 04D418 8004D868 A2000001 */  sb          $zero, 0x1($s0)
/* 04D41C 8004D86C A2000002 */  sb          $zero, 0x2($s0)
/* 04D420 8004D870 A2000003 */  sb          $zero, 0x3($s0)
/* 04D424 8004D874 1451FFFA */  bne         $v0, $s1, .L8004D860
/* 04D428 8004D878 26100004 */   addiu      $s0, $s0, 0x4
.L8004D87C:
/* 04D42C 8004D87C 24090001 */  addiu       $t1, $zero, 0x1
/* 04D430 8004D880 AE69003C */  sw          $t1, 0x3c($s3)
/* 04D434 8004D884 240A00FF */  addiu       $t2, $zero, 0xff
/* 04D438 8004D888 240B0007 */  addiu       $t3, $zero, 0x7
/* 04D43C 8004D88C 240C0001 */  addiu       $t4, $zero, 0x1
/* 04D440 8004D890 240D000C */  addiu       $t5, $zero, 0xc
/* 04D444 8004D894 240E00FF */  addiu       $t6, $zero, 0xff
/* 04D448 8004D898 240F00FE */  addiu       $t7, $zero, 0xfe
/* 04D44C 8004D89C A20A0000 */  sb          $t2, 0x0($s0)
/* 04D450 8004D8A0 A20B0001 */  sb          $t3, 0x1($s0)
/* 04D454 8004D8A4 A20C0002 */  sb          $t4, 0x2($s0)
/* 04D458 8004D8A8 A20D0003 */  sb          $t5, 0x3($s0)
/* 04D45C 8004D8AC A20E000A */  sb          $t6, 0xa($s0)
/* 04D460 8004D8B0 10000002 */  b           .L8004D8BC
/* 04D464 8004D8B4 A20F000B */   sb         $t7, 0xb($s0)
.L8004D8B8:
/* 04D468 8004D8B8 02718021 */  addu        $s0, $s3, $s1
.L8004D8BC:
/* 04D46C 8004D8BC 8FB8004C */  lw          $t8, 0x4c($sp)
/* 04D470 8004D8C0 30A4FFFF */  andi        $a0, $a1, 0xffff
/* 04D474 8004D8C4 0C015290 */  jal         func_80054A40
/* 04D478 8004D8C8 A2180004 */   sb         $t8, 0x4($s0)
/* 04D47C 8004D8CC 8FB90048 */  lw          $t9, 0x48($sp)
/* 04D480 8004D8D0 02C02025 */  move        $a0, $s6
/* 04D484 8004D8D4 26050006 */  addiu       $a1, $s0, 0x6
/* 04D488 8004D8D8 00594025 */  or          $t0, $v0, $t9
/* 04D48C 8004D8DC A2080005 */  sb          $t0, 0x5($s0)
/* 04D490 8004D8E0 0C013E84 */  jal         func_8004FA10
/* 04D494 8004D8E4 24060004 */   addiu      $a2, $zero, 0x4
/* 04D498 8004D8E8 24040001 */  addiu       $a0, $zero, 0x1
/* 04D49C 8004D8EC 0C015108 */  jal         func_80054420
/* 04D4A0 8004D8F0 02602825 */   move       $a1, $s3
/* 04D4A4 8004D8F4 02C02025 */  move        $a0, $s6
/* 04D4A8 8004D8F8 0C013844 */  jal         func_8004E110
/* 04D4AC 8004D8FC 24050004 */   addiu      $a1, $zero, 0x4
/* 04D4B0 8004D900 305200FF */  andi        $s2, $v0, 0xff
/* 04D4B4 8004D904 02A02025 */  move        $a0, $s5
/* 04D4B8 8004D908 00002825 */  move        $a1, $zero
/* 04D4BC 8004D90C 0C013A48 */  jal         func_8004E920
/* 04D4C0 8004D910 24060001 */   addiu      $a2, $zero, 0x1
/* 04D4C4 8004D914 00002025 */  move        $a0, $zero
/* 04D4C8 8004D918 0C015108 */  jal         func_80054420
/* 04D4CC 8004D91C 02602825 */   move       $a1, $s3
/* 04D4D0 8004D920 02A02025 */  move        $a0, $s5
/* 04D4D4 8004D924 00002825 */  move        $a1, $zero
/* 04D4D8 8004D928 0C013A48 */  jal         func_8004E920
/* 04D4DC 8004D92C 24060001 */   addiu      $a2, $zero, 0x1
/* 04D4E0 8004D930 92030002 */  lbu         $v1, 0x2($s0)
/* 04D4E4 8004D934 306900C0 */  andi        $t1, $v1, 0xc0
/* 04D4E8 8004D938 00091903 */  sra         $v1, $t1, 4
/* 04D4EC 8004D93C 5460000D */  bnel        $v1, $zero, .L8004D974
/* 04D4F0 8004D940 24030001 */   addiu      $v1, $zero, 0x1
/* 04D4F4 8004D944 920B000A */  lbu         $t3, 0xa($s0)
/* 04D4F8 8004D948 02A02025 */  move        $a0, $s5
/* 04D4FC 8004D94C 02202825 */  move        $a1, $s1
/* 04D500 8004D950 51720009 */  beql        $t3, $s2, .L8004D978
/* 04D504 8004D954 24010004 */   addiu      $at, $zero, 0x4
/* 04D508 8004D958 0C0134B4 */  jal         func_8004D2D0
/* 04D50C 8004D95C 27A6006B */   addiu      $a2, $sp, 0x6b
/* 04D510 8004D960 14400009 */  bnez        $v0, .L8004D988
/* 04D514 8004D964 00401825 */   move       $v1, $v0
/* 04D518 8004D968 10000002 */  b           .L8004D974
/* 04D51C 8004D96C 24030004 */   addiu      $v1, $zero, 0x4
/* 04D520 8004D970 24030001 */  addiu       $v1, $zero, 0x1
.L8004D974:
/* 04D524 8004D974 24010004 */  addiu       $at, $zero, 0x4
.L8004D978:
/* 04D528 8004D978 14610003 */  bne         $v1, $at, .L8004D988
/* 04D52C 8004D97C 2A820000 */   slti       $v0, $s4, 0x0
/* 04D530 8004D980 1040FFA3 */  beqz        $v0, .L8004D810
/* 04D534 8004D984 2694FFFF */   addiu      $s4, $s4, -0x1
.L8004D988:
/* 04D538 8004D988 0C0150FD */  jal         func_800543F4
/* 04D53C 8004D98C AFA3006C */   sw         $v1, 0x6c($sp)
/* 04D540 8004D990 8FBF003C */  lw          $ra, 0x3c($sp)
/* 04D544 8004D994 8FA2006C */  lw          $v0, 0x6c($sp)
/* 04D548 8004D998 8FB00018 */  lw          $s0, 0x18($sp)
/* 04D54C 8004D99C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 04D550 8004D9A0 8FB20020 */  lw          $s2, 0x20($sp)
/* 04D554 8004D9A4 8FB30024 */  lw          $s3, 0x24($sp)
/* 04D558 8004D9A8 8FB40028 */  lw          $s4, 0x28($sp)
/* 04D55C 8004D9AC 8FB5002C */  lw          $s5, 0x2c($sp)
/* 04D560 8004D9B0 8FB60030 */  lw          $s6, 0x30($sp)
/* 04D564 8004D9B4 8FB70034 */  lw          $s7, 0x34($sp)
/* 04D568 8004D9B8 8FBE0038 */  lw          $fp, 0x38($sp)
/* 04D56C 8004D9BC 03E00008 */  jr          $ra
/* 04D570 8004D9C0 27BD0070 */   addiu      $sp, $sp, 0x70
/* 04D574 8004D9C4 00000000 */  nop
/* 04D578 8004D9C8 00000000 */  nop
/* 04D57C 8004D9CC 00000000 */  nop
