.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004CBE0 # 0
/* 04C790 8004CBE0 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 04C794 8004CBE4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04C798 8004CBE8 AFA5005C */  sw          $a1, 0x5c($sp)
/* 04C79C 8004CBEC 00803825 */  move        $a3, $a0
/* 04C7A0 8004CBF0 8CE50004 */  lw          $a1, 0x4($a3)
/* 04C7A4 8004CBF4 8C840000 */  lw          $a0, 0x0($a0)
/* 04C7A8 8004CBF8 AFA70058 */  sw          $a3, 0x58($sp)
/* 04C7AC 8004CBFC 0C0134B4 */  jal         func_8004D2D0
/* 04C7B0 8004CC00 27A6004B */   addiu      $a2, $sp, 0x4b
/* 04C7B4 8004CC04 10400003 */  beqz        $v0, .L8004CC14
/* 04C7B8 8004CC08 8FA7005C */   lw         $a3, 0x5c($sp)
/* 04C7BC 8004CC0C 10000052 */  b           .L8004CD58
/* 04C7C0 8004CC10 8FBF0014 */   lw         $ra, 0x14($sp)
.L8004CC14:
/* 04C7C4 8004CC14 93AE004B */  lbu         $t6, 0x4b($sp)
/* 04C7C8 8004CC18 27A40020 */  addiu       $a0, $sp, 0x20
/* 04C7CC 8004CC1C 24050028 */  addiu       $a1, $zero, 0x28
/* 04C7D0 8004CC20 31CF0002 */  andi        $t7, $t6, 0x2
/* 04C7D4 8004CC24 51E00004 */  beql        $t7, $zero, .L8004CC38
/* 04C7D8 8004CC28 90F80000 */   lbu        $t8, 0x0($a3)
/* 04C7DC 8004CC2C 10000049 */  b           .L8004CD54
/* 04C7E0 8004CC30 2402000F */   addiu      $v0, $zero, 0xf
/* 04C7E4 8004CC34 90F80000 */  lbu         $t8, 0x0($a3)
.L8004CC38:
/* 04C7E8 8004CC38 00003025 */  move        $a2, $zero
/* 04C7EC 8004CC3C 00E01025 */  move        $v0, $a3
/* 04C7F0 8004CC40 13000006 */  beqz        $t8, .L8004CC5C
/* 04C7F4 8004CC44 00000000 */   nop
/* 04C7F8 8004CC48 90590002 */  lbu         $t9, 0x2($v0)
.L8004CC4C:
/* 04C7FC 8004CC4C 24C60002 */  addiu       $a2, $a2, 0x2
/* 04C800 8004CC50 24420002 */  addiu       $v0, $v0, 0x2
/* 04C804 8004CC54 5720FFFD */  bnel        $t9, $zero, .L8004CC4C
/* 04C808 8004CC58 90590002 */   lbu        $t9, 0x2($v0)
.L8004CC5C:
/* 04C80C 8004CC5C 0C013C58 */  jal         func_8004F160
/* 04C810 8004CC60 AFA60050 */   sw         $a2, 0x50($sp)
/* 04C814 8004CC64 8FA60050 */  lw          $a2, 0x50($sp)
/* 04C818 8004CC68 8FA7005C */  lw          $a3, 0x5c($sp)
/* 04C81C 8004CC6C 00002025 */  move        $a0, $zero
/* 04C820 8004CC70 18C0000E */  blez        $a2, .L8004CCAC
/* 04C824 8004CC74 240C0003 */   addiu      $t4, $zero, 0x3
/* 04C828 8004CC78 00064023 */  negu        $t0, $a2
/* 04C82C 8004CC7C 27A90047 */  addiu       $t1, $sp, 0x47
/* 04C830 8004CC80 01091021 */  addu        $v0, $t0, $t1
/* 04C834 8004CC84 00E01825 */  move        $v1, $a3
.L8004CC88:
/* 04C838 8004CC88 906A0000 */  lbu         $t2, 0x0($v1)
/* 04C83C 8004CC8C 24840002 */  addiu       $a0, $a0, 0x2
/* 04C840 8004CC90 0086082A */  slt         $at, $a0, $a2
/* 04C844 8004CC94 A04A0000 */  sb          $t2, 0x0($v0)
/* 04C848 8004CC98 906B0001 */  lbu         $t3, 0x1($v1)
/* 04C84C 8004CC9C 24420002 */  addiu       $v0, $v0, 0x2
/* 04C850 8004CCA0 24630002 */  addiu       $v1, $v1, 0x2
/* 04C854 8004CCA4 1420FFF8 */  bnez        $at, .L8004CC88
/* 04C858 8004CCA8 A04BFFFD */   sb         $t3, -0x3($v0)
.L8004CCAC:
/* 04C85C 8004CCAC 00046823 */  negu        $t5, $a0
/* 04C860 8004CCB0 03AD7021 */  addu        $t6, $sp, $t5
/* 04C864 8004CCB4 28C1000F */  slti        $at, $a2, 0xf
/* 04C868 8004CCB8 1420000B */  bnez        $at, .L8004CCE8
/* 04C86C 8004CCBC A1CC0042 */   sb         $t4, 0x42($t6)
/* 04C870 8004CCC0 8FA20058 */  lw          $v0, 0x58($sp)
/* 04C874 8004CCC4 00003025 */  move        $a2, $zero
/* 04C878 8004CCC8 27A70020 */  addiu       $a3, $sp, 0x20
/* 04C87C 8004CCCC 8C440000 */  lw          $a0, 0x0($v0)
/* 04C880 8004CCD0 0C0136A0 */  jal         func_8004DA80
/* 04C884 8004CCD4 8C450004 */   lw         $a1, 0x4($v0)
/* 04C888 8004CCD8 50400004 */  beql        $v0, $zero, .L8004CCEC
/* 04C88C 8004CCDC 8FA20058 */   lw         $v0, 0x58($sp)
/* 04C890 8004CCE0 1000001D */  b           .L8004CD58
/* 04C894 8004CCE4 8FBF0014 */   lw         $ra, 0x14($sp)
.L8004CCE8:
/* 04C898 8004CCE8 8FA20058 */  lw          $v0, 0x58($sp)
.L8004CCEC:
/* 04C89C 8004CCEC 00003025 */  move        $a2, $zero
/* 04C8A0 8004CCF0 27A70034 */  addiu       $a3, $sp, 0x34
/* 04C8A4 8004CCF4 8C440000 */  lw          $a0, 0x0($v0)
/* 04C8A8 8004CCF8 0C0136A0 */  jal         func_8004DA80
/* 04C8AC 8004CCFC 8C450004 */   lw         $a1, 0x4($v0)
/* 04C8B0 8004CD00 10400003 */  beqz        $v0, .L8004CD10
/* 04C8B4 8004CD04 8FA40058 */   lw         $a0, 0x58($sp)
/* 04C8B8 8004CD08 10000013 */  b           .L8004CD58
/* 04C8BC 8004CD0C 8FBF0014 */   lw         $ra, 0x14($sp)
.L8004CD10:
/* 04C8C0 8004CD10 0C013674 */  jal         func_8004D9D0
/* 04C8C4 8004CD14 27A5004B */   addiu      $a1, $sp, 0x4b
/* 04C8C8 8004CD18 1040000D */  beqz        $v0, .L8004CD50
/* 04C8CC 8004CD1C 00401825 */   move       $v1, $v0
/* 04C8D0 8004CD20 304F0100 */  andi        $t7, $v0, 0x100
/* 04C8D4 8004CD24 11E00003 */  beqz        $t7, .L8004CD34
/* 04C8D8 8004CD28 30580200 */   andi       $t8, $v0, 0x200
/* 04C8DC 8004CD2C 10000008 */  b           .L8004CD50
/* 04C8E0 8004CD30 2403000D */   addiu      $v1, $zero, 0xd
.L8004CD34:
/* 04C8E4 8004CD34 13000003 */  beqz        $t8, .L8004CD44
/* 04C8E8 8004CD38 3059FF00 */   andi       $t9, $v0, 0xff00
/* 04C8EC 8004CD3C 10000004 */  b           .L8004CD50
/* 04C8F0 8004CD40 2403000E */   addiu      $v1, $zero, 0xe
.L8004CD44:
/* 04C8F4 8004CD44 53200003 */  beql        $t9, $zero, .L8004CD54
/* 04C8F8 8004CD48 00601025 */   move       $v0, $v1
/* 04C8FC 8004CD4C 24030005 */  addiu       $v1, $zero, 0x5
.L8004CD50:
/* 04C900 8004CD50 00601025 */  move        $v0, $v1
.L8004CD54:
/* 04C904 8004CD54 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004CD58:
/* 04C908 8004CD58 27BD0058 */  addiu       $sp, $sp, 0x58
/* 04C90C 8004CD5C 03E00008 */  jr          $ra
/* 04C910 8004CD60 00000000 */   nop
/* 04C914 8004CD64 00000000 */  nop
/* 04C918 8004CD68 00000000 */  nop
/* 04C91C 8004CD6C 00000000 */  nop
