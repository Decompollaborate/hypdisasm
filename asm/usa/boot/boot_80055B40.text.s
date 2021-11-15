.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osVoiceContWrite4 # 0
/* 0556F0 80055B40 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 0556F4 80055B44 AFBF003C */  sw          $ra, 0x3c($sp)
/* 0556F8 80055B48 AFB60030 */  sw          $s6, 0x30($sp)
/* 0556FC 80055B4C AFB5002C */  sw          $s5, 0x2c($sp)
/* 055700 80055B50 AFB40028 */  sw          $s4, 0x28($sp)
/* 055704 80055B54 AFB1001C */  sw          $s1, 0x1c($sp)
/* 055708 80055B58 00A08825 */  move        $s1, $a1
/* 05570C 80055B5C 0080A825 */  move        $s5, $a0
/* 055710 80055B60 00E0B025 */  move        $s6, $a3
/* 055714 80055B64 AFBE0038 */  sw          $fp, 0x38($sp)
/* 055718 80055B68 AFB70034 */  sw          $s7, 0x34($sp)
/* 05571C 80055B6C AFB30024 */  sw          $s3, 0x24($sp)
/* 055720 80055B70 AFB20020 */  sw          $s2, 0x20($sp)
/* 055724 80055B74 AFB00018 */  sw          $s0, 0x18($sp)
/* 055728 80055B78 AFA60078 */  sw          $a2, 0x78($sp)
/* 05572C 80055B7C 0C0160FC */  jal         __osSiGetAccess
/* 055730 80055B80 24140002 */   addiu      $s4, $zero, 0x2
/* 055734 80055B84 97A5007A */  lhu         $a1, 0x7a($sp)
/* 055738 80055B88 3C1E800A */  lui         $fp, %hi(__osPfsLastChannel)
/* 05573C 80055B8C 3C178010 */  lui         $s7, %hi(__osContLastPoll)
/* 055740 80055B90 3C138010 */  lui         $s3, %hi(__osPfsPifRam)
/* 055744 80055B94 000570C3 */  sra         $t6, $a1, 3
/* 055748 80055B98 00057940 */  sll         $t7, $a1, 5
/* 05574C 80055B9C AFAF0048 */  sw          $t7, 0x48($sp)
/* 055750 80055BA0 AFAE004C */  sw          $t6, 0x4c($sp)
/* 055754 80055BA4 26730390 */  addiu       $s3, $s3, %lo(__osPfsPifRam)
/* 055758 80055BA8 26F7DC50 */  addiu       $s7, $s7, %lo(__osContLastPoll)
/* 05575C 80055BAC 27DEF8C0 */  addiu       $fp, $fp, %lo(__osPfsLastChannel)
.L80055BB0:
/* 055760 80055BB0 92F80000 */  lbu         $t8, 0x0($s7)
/* 055764 80055BB4 2401000C */  addiu       $at, $zero, 0xc
/* 055768 80055BB8 97A5007A */  lhu         $a1, 0x7a($sp)
/* 05576C 80055BBC 17010003 */  bne         $t8, $at, .L80055BCC
/* 055770 80055BC0 02608025 */   move       $s0, $s3
/* 055774 80055BC4 8FD90000 */  lw          $t9, 0x0($fp)
/* 055778 80055BC8 12390023 */  beq         $s1, $t9, .L80055C58
.L80055BCC:
/* 05577C 80055BCC 2408000C */   addiu      $t0, $zero, 0xc
/* 055780 80055BD0 A2E80000 */  sb          $t0, 0x0($s7)
/* 055784 80055BD4 AFD10000 */  sw          $s1, 0x0($fp)
/* 055788 80055BD8 1A200010 */  blez        $s1, .L80055C1C
/* 05578C 80055BDC 00001025 */   move       $v0, $zero
/* 055790 80055BE0 32240003 */  andi        $a0, $s1, 0x3
/* 055794 80055BE4 10800006 */  beq         $a0, $zero, .L80055C00
/* 055798 80055BE8 00801825 */   move       $v1, $a0
.L80055BEC:
/* 05579C 80055BEC 24420001 */  addiu       $v0, $v0, 0x1
/* 0557A0 80055BF0 A2000000 */  sb          $zero, 0x0($s0)
/* 0557A4 80055BF4 1462FFFD */  bne         $v1, $v0, .L80055BEC
/* 0557A8 80055BF8 26100001 */   addiu      $s0, $s0, 0x1
/* 0557AC 80055BFC 10510007 */  beq         $v0, $s1, .L80055C1C
.L80055C00:
/* 0557B0 80055C00 24420004 */   addiu      $v0, $v0, 0x4
/* 0557B4 80055C04 A2000000 */  sb          $zero, 0x0($s0)
/* 0557B8 80055C08 A2000001 */  sb          $zero, 0x1($s0)
/* 0557BC 80055C0C A2000002 */  sb          $zero, 0x2($s0)
/* 0557C0 80055C10 A2000003 */  sb          $zero, 0x3($s0)
/* 0557C4 80055C14 1451FFFA */  bne         $v0, $s1, .L80055C00
/* 0557C8 80055C18 26100004 */   addiu      $s0, $s0, 0x4
.L80055C1C:
/* 0557CC 80055C1C 24090001 */  addiu       $t1, $zero, 0x1
/* 0557D0 80055C20 AE69003C */  sw          $t1, 0x3c($s3)
/* 0557D4 80055C24 240A00FF */  addiu       $t2, $zero, 0xff
/* 0557D8 80055C28 240B0007 */  addiu       $t3, $zero, 0x7
/* 0557DC 80055C2C 240C0001 */  addiu       $t4, $zero, 0x1
/* 0557E0 80055C30 240D000C */  addiu       $t5, $zero, 0xc
/* 0557E4 80055C34 240E00FF */  addiu       $t6, $zero, 0xff
/* 0557E8 80055C38 240F00FE */  addiu       $t7, $zero, 0xfe
/* 0557EC 80055C3C A20A0000 */  sb          $t2, 0x0($s0)
/* 0557F0 80055C40 A20B0001 */  sb          $t3, 0x1($s0)
/* 0557F4 80055C44 A20C0002 */  sb          $t4, 0x2($s0)
/* 0557F8 80055C48 A20D0003 */  sb          $t5, 0x3($s0)
/* 0557FC 80055C4C A20E000A */  sb          $t6, 0xa($s0)
/* 055800 80055C50 10000002 */  b           .L80055C5C
/* 055804 80055C54 A20F000B */   sb         $t7, 0xb($s0)
.L80055C58:
/* 055808 80055C58 02718021 */  addu        $s0, $s3, $s1
.L80055C5C:
/* 05580C 80055C5C 8FB8004C */  lw          $t8, 0x4c($sp)
/* 055810 80055C60 30A4FFFF */  andi        $a0, $a1, 0xffff
/* 055814 80055C64 0C0161A8 */  jal         __osContAddressCrc
/* 055818 80055C68 A2180004 */   sb         $t8, 0x4($s0)
/* 05581C 80055C6C 8FB90048 */  lw          $t9, 0x48($sp)
/* 055820 80055C70 02C02025 */  move        $a0, $s6
/* 055824 80055C74 26050006 */  addiu       $a1, $s0, 0x6
/* 055828 80055C78 00594025 */  or          $t0, $v0, $t9
/* 05582C 80055C7C A2080005 */  sb          $t0, 0x5($s0)
/* 055830 80055C80 0C014984 */  jal         bcopy
/* 055834 80055C84 24060004 */   addiu      $a2, $zero, 0x4
/* 055838 80055C88 24040001 */  addiu       $a0, $zero, 0x1
/* 05583C 80055C8C 0C016118 */  jal         __osSiRawStartDma
/* 055840 80055C90 02602825 */   move       $a1, $s3
/* 055844 80055C94 02C02025 */  move        $a0, $s6
/* 055848 80055C98 0C016C0C */  jal         __osVoiceContDataCrc
/* 05584C 80055C9C 24050004 */   addiu      $a1, $zero, 0x4
/* 055850 80055CA0 305200FF */  andi        $s2, $v0, 0xff
/* 055854 80055CA4 02A02025 */  move        $a0, $s5
/* 055858 80055CA8 00002825 */  move        $a1, $zero
/* 05585C 80055CAC 0C014554 */  jal         osRecvMesg
/* 055860 80055CB0 24060001 */   addiu      $a2, $zero, 0x1
/* 055864 80055CB4 00002025 */  move        $a0, $zero
/* 055868 80055CB8 0C016118 */  jal         __osSiRawStartDma
/* 05586C 80055CBC 02602825 */   move       $a1, $s3
/* 055870 80055CC0 02A02025 */  move        $a0, $s5
/* 055874 80055CC4 00002825 */  move        $a1, $zero
/* 055878 80055CC8 0C014554 */  jal         osRecvMesg
/* 05587C 80055CCC 24060001 */   addiu      $a2, $zero, 0x1
/* 055880 80055CD0 92030002 */  lbu         $v1, 0x2($s0)
/* 055884 80055CD4 306900C0 */  andi        $t1, $v1, 0xc0
/* 055888 80055CD8 00091903 */  sra         $v1, $t1, 4
/* 05588C 80055CDC 5460000D */  bnel        $v1, $zero, .L80055D14
/* 055890 80055CE0 24030001 */   addiu      $v1, $zero, 0x1
/* 055894 80055CE4 920B000A */  lbu         $t3, 0xa($s0)
/* 055898 80055CE8 02A02025 */  move        $a0, $s5
/* 05589C 80055CEC 02202825 */  move        $a1, $s1
/* 0558A0 80055CF0 51720009 */  beql        $t3, $s2, .L80055D18
/* 0558A4 80055CF4 24010004 */   addiu      $at, $zero, 0x4
/* 0558A8 80055CF8 0C01558C */  jal         __osVoiceGetStatus
/* 0558AC 80055CFC 27A6006B */   addiu      $a2, $sp, 0x6b
/* 0558B0 80055D00 14400009 */  bne         $v0, $zero, .L80055D28
/* 0558B4 80055D04 00401825 */   move       $v1, $v0
/* 0558B8 80055D08 10000002 */  b           .L80055D14
/* 0558BC 80055D0C 24030004 */   addiu      $v1, $zero, 0x4
/* 0558C0 80055D10 24030001 */  addiu       $v1, $zero, 0x1
.L80055D14:
/* 0558C4 80055D14 24010004 */  addiu       $at, $zero, 0x4
.L80055D18:
/* 0558C8 80055D18 14610003 */  bne         $v1, $at, .L80055D28
/* 0558CC 80055D1C 2A820000 */   slti       $v0, $s4, 0x0
/* 0558D0 80055D20 1040FFA3 */  beq         $v0, $zero, .L80055BB0
/* 0558D4 80055D24 2694FFFF */   addiu      $s4, $s4, -0x1
.L80055D28:
/* 0558D8 80055D28 0C01610D */  jal         __osSiRelAccess
/* 0558DC 80055D2C AFA3006C */   sw         $v1, 0x6c($sp)
/* 0558E0 80055D30 8FBF003C */  lw          $ra, 0x3c($sp)
/* 0558E4 80055D34 8FA2006C */  lw          $v0, 0x6c($sp)
/* 0558E8 80055D38 8FB00018 */  lw          $s0, 0x18($sp)
/* 0558EC 80055D3C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 0558F0 80055D40 8FB20020 */  lw          $s2, 0x20($sp)
/* 0558F4 80055D44 8FB30024 */  lw          $s3, 0x24($sp)
/* 0558F8 80055D48 8FB40028 */  lw          $s4, 0x28($sp)
/* 0558FC 80055D4C 8FB5002C */  lw          $s5, 0x2c($sp)
/* 055900 80055D50 8FB60030 */  lw          $s6, 0x30($sp)
/* 055904 80055D54 8FB70034 */  lw          $s7, 0x34($sp)
/* 055908 80055D58 8FBE0038 */  lw          $fp, 0x38($sp)
/* 05590C 80055D5C 03E00008 */  jr          $ra
/* 055910 80055D60 27BD0070 */   addiu      $sp, $sp, 0x70
/* 055914 80055D64 00000000 */  nop
/* 055918 80055D68 00000000 */  nop
/* 05591C 80055D6C 00000000 */  nop
