.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D5B0 # 0
/* 04D160 8004D5B0 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 04D164 8004D5B4 AFBF003C */  sw          $ra, 0x3c($sp)
/* 04D168 8004D5B8 AFB40028 */  sw          $s4, 0x28($sp)
/* 04D16C 8004D5BC AFB30024 */  sw          $s3, 0x24($sp)
/* 04D170 8004D5C0 AFB1001C */  sw          $s1, 0x1c($sp)
/* 04D174 8004D5C4 00A08825 */  move        $s1, $a1
/* 04D178 8004D5C8 0080A025 */  move        $s4, $a0
/* 04D17C 8004D5CC AFBE0038 */  sw          $fp, 0x38($sp)
/* 04D180 8004D5D0 AFB70034 */  sw          $s7, 0x34($sp)
/* 04D184 8004D5D4 AFB60030 */  sw          $s6, 0x30($sp)
/* 04D188 8004D5D8 AFB5002C */  sw          $s5, 0x2c($sp)
/* 04D18C 8004D5DC AFB20020 */  sw          $s2, 0x20($sp)
/* 04D190 8004D5E0 AFB00018 */  sw          $s0, 0x18($sp)
/* 04D194 8004D5E4 AFA60070 */  sw          $a2, 0x70($sp)
/* 04D198 8004D5E8 0C0150EC */  jal         func_800543B0
/* 04D19C 8004D5EC 24130002 */   addiu      $s3, $zero, 0x2
/* 04D1A0 8004D5F0 93A50073 */  lbu         $a1, 0x73($sp)
/* 04D1A4 8004D5F4 3C16800A */  lui         $s6, %hi(D_800A4D30)
/* 04D1A8 8004D5F8 3C158010 */  lui         $s5, %hi(D_80102380)
/* 04D1AC 8004D5FC 000570C0 */  sll         $t6, $a1, 3
/* 04D1B0 8004D600 31CFFFFF */  andi        $t7, $t6, 0xffff
/* 04D1B4 8004D604 3C128010 */  lui         $s2, %hi(D_80104A60)
/* 04D1B8 8004D608 26524A60 */  addiu       $s2, $s2, %lo(D_80104A60)
/* 04D1BC 8004D60C AFAF0048 */  sw          $t7, 0x48($sp)
/* 04D1C0 8004D610 26B52380 */  addiu       $s5, $s5, %lo(D_80102380)
/* 04D1C4 8004D614 26D64D30 */  addiu       $s6, $s6, %lo(D_800A4D30)
/* 04D1C8 8004D618 241E0001 */  addiu       $fp, $zero, 0x1
/* 04D1CC 8004D61C 2417000D */  addiu       $s7, $zero, 0xd
.L8004D620:
/* 04D1D0 8004D620 92B80000 */  lbu         $t8, 0x0($s5)
/* 04D1D4 8004D624 2401000D */  addiu       $at, $zero, 0xd
/* 04D1D8 8004D628 93A50073 */  lbu         $a1, 0x73($sp)
/* 04D1DC 8004D62C 17010004 */  bne         $t8, $at, .L8004D640
/* 04D1E0 8004D630 02408025 */   move       $s0, $s2
/* 04D1E4 8004D634 8ED90000 */  lw          $t9, 0x0($s6)
/* 04D1E8 8004D638 5239001E */  beql        $s1, $t9, .L8004D6B4
/* 04D1EC 8004D63C 02518021 */   addu       $s0, $s2, $s1
.L8004D640:
/* 04D1F0 8004D640 A2B70000 */  sb          $s7, 0x0($s5)
/* 04D1F4 8004D644 AED10000 */  sw          $s1, 0x0($s6)
/* 04D1F8 8004D648 1A200010 */  blez        $s1, .L8004D68C
/* 04D1FC 8004D64C 00001025 */   move       $v0, $zero
/* 04D200 8004D650 32240003 */  andi        $a0, $s1, 0x3
/* 04D204 8004D654 10800006 */  beqz        $a0, .L8004D670
/* 04D208 8004D658 00801825 */   move       $v1, $a0
.L8004D65C:
/* 04D20C 8004D65C 24420001 */  addiu       $v0, $v0, 0x1
/* 04D210 8004D660 A2000000 */  sb          $zero, 0x0($s0)
/* 04D214 8004D664 1462FFFD */  bne         $v1, $v0, .L8004D65C
/* 04D218 8004D668 26100001 */   addiu      $s0, $s0, 0x1
/* 04D21C 8004D66C 10510007 */  beq         $v0, $s1, .L8004D68C
.L8004D670:
/* 04D220 8004D670 24420004 */   addiu      $v0, $v0, 0x4
/* 04D224 8004D674 A2000000 */  sb          $zero, 0x0($s0)
/* 04D228 8004D678 A2000001 */  sb          $zero, 0x1($s0)
/* 04D22C 8004D67C A2000002 */  sb          $zero, 0x2($s0)
/* 04D230 8004D680 A2000003 */  sb          $zero, 0x3($s0)
/* 04D234 8004D684 1451FFFA */  bne         $v0, $s1, .L8004D670
/* 04D238 8004D688 26100004 */   addiu      $s0, $s0, 0x4
.L8004D68C:
/* 04D23C 8004D68C AE5E003C */  sw          $fp, 0x3c($s2)
/* 04D240 8004D690 24080003 */  addiu       $t0, $zero, 0x3
/* 04D244 8004D694 240900FE */  addiu       $t1, $zero, 0xfe
/* 04D248 8004D698 A2080000 */  sb          $t0, 0x0($s0)
/* 04D24C 8004D69C A21E0001 */  sb          $fp, 0x1($s0)
/* 04D250 8004D6A0 A2170002 */  sb          $s7, 0x2($s0)
/* 04D254 8004D6A4 A2000005 */  sb          $zero, 0x5($s0)
/* 04D258 8004D6A8 10000002 */  b           .L8004D6B4
/* 04D25C 8004D6AC A2090006 */   sb         $t1, 0x6($s0)
/* 04D260 8004D6B0 02518021 */  addu        $s0, $s2, $s1
.L8004D6B4:
/* 04D264 8004D6B4 A2050003 */  sb          $a1, 0x3($s0)
/* 04D268 8004D6B8 0C015290 */  jal         func_80054A40
/* 04D26C 8004D6BC 97A4004A */   lhu        $a0, 0x4a($sp)
/* 04D270 8004D6C0 A2020004 */  sb          $v0, 0x4($s0)
/* 04D274 8004D6C4 24040001 */  addiu       $a0, $zero, 0x1
/* 04D278 8004D6C8 0C015108 */  jal         func_80054420
/* 04D27C 8004D6CC 02402825 */   move       $a1, $s2
/* 04D280 8004D6D0 02802025 */  move        $a0, $s4
/* 04D284 8004D6D4 00002825 */  move        $a1, $zero
/* 04D288 8004D6D8 0C013A48 */  jal         func_8004E920
/* 04D28C 8004D6DC 24060001 */   addiu      $a2, $zero, 0x1
/* 04D290 8004D6E0 00002025 */  move        $a0, $zero
/* 04D294 8004D6E4 0C015108 */  jal         func_80054420
/* 04D298 8004D6E8 02402825 */   move       $a1, $s2
/* 04D29C 8004D6EC 02802025 */  move        $a0, $s4
/* 04D2A0 8004D6F0 00002825 */  move        $a1, $zero
/* 04D2A4 8004D6F4 0C013A48 */  jal         func_8004E920
/* 04D2A8 8004D6F8 24060001 */   addiu      $a2, $zero, 0x1
/* 04D2AC 8004D6FC 92030001 */  lbu         $v1, 0x1($s0)
/* 04D2B0 8004D700 306A00C0 */  andi        $t2, $v1, 0xc0
/* 04D2B4 8004D704 000A1903 */  sra         $v1, $t2, 4
/* 04D2B8 8004D708 5460000E */  bnel        $v1, $zero, .L8004D744
/* 04D2BC 8004D70C 24030001 */   addiu      $v1, $zero, 0x1
/* 04D2C0 8004D710 920C0005 */  lbu         $t4, 0x5($s0)
/* 04D2C4 8004D714 02802025 */  move        $a0, $s4
/* 04D2C8 8004D718 02202825 */  move        $a1, $s1
/* 04D2CC 8004D71C 318D0001 */  andi        $t5, $t4, 0x1
/* 04D2D0 8004D720 51A00009 */  beql        $t5, $zero, .L8004D748
/* 04D2D4 8004D724 24010004 */   addiu      $at, $zero, 0x4
/* 04D2D8 8004D728 0C0134B4 */  jal         func_8004D2D0
/* 04D2DC 8004D72C 27A6005B */   addiu      $a2, $sp, 0x5b
/* 04D2E0 8004D730 14400009 */  bnez        $v0, .L8004D758
/* 04D2E4 8004D734 00401825 */   move       $v1, $v0
/* 04D2E8 8004D738 10000002 */  b           .L8004D744
/* 04D2EC 8004D73C 24030004 */   addiu      $v1, $zero, 0x4
/* 04D2F0 8004D740 24030001 */  addiu       $v1, $zero, 0x1
.L8004D744:
/* 04D2F4 8004D744 24010004 */  addiu       $at, $zero, 0x4
.L8004D748:
/* 04D2F8 8004D748 14610003 */  bne         $v1, $at, .L8004D758
/* 04D2FC 8004D74C 2A620000 */   slti       $v0, $s3, 0x0
/* 04D300 8004D750 1040FFB3 */  beqz        $v0, .L8004D620
/* 04D304 8004D754 2673FFFF */   addiu      $s3, $s3, -0x1
.L8004D758:
/* 04D308 8004D758 0C0150FD */  jal         func_800543F4
/* 04D30C 8004D75C AFA30064 */   sw         $v1, 0x64($sp)
/* 04D310 8004D760 8FBF003C */  lw          $ra, 0x3c($sp)
/* 04D314 8004D764 8FA20064 */  lw          $v0, 0x64($sp)
/* 04D318 8004D768 8FB00018 */  lw          $s0, 0x18($sp)
/* 04D31C 8004D76C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 04D320 8004D770 8FB20020 */  lw          $s2, 0x20($sp)
/* 04D324 8004D774 8FB30024 */  lw          $s3, 0x24($sp)
/* 04D328 8004D778 8FB40028 */  lw          $s4, 0x28($sp)
/* 04D32C 8004D77C 8FB5002C */  lw          $s5, 0x2c($sp)
/* 04D330 8004D780 8FB60030 */  lw          $s6, 0x30($sp)
/* 04D334 8004D784 8FB70034 */  lw          $s7, 0x34($sp)
/* 04D338 8004D788 8FBE0038 */  lw          $fp, 0x38($sp)
/* 04D33C 8004D78C 03E00008 */  jr          $ra
/* 04D340 8004D790 27BD0068 */   addiu      $sp, $sp, 0x68
/* 04D344 8004D794 00000000 */  nop
/* 04D348 8004D798 00000000 */  nop
/* 04D34C 8004D79C 00000000 */  nop
