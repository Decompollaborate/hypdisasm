.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004CB30 # 0
/* 04C6E0 8004CB30 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 04C6E4 8004CB34 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04C6E8 8004CB38 AFB00018 */  sw          $s0, 0x18($sp)
/* 04C6EC 8004CB3C 00808025 */  move        $s0, $a0
/* 04C6F0 8004CB40 AFA50034 */  sw          $a1, 0x34($sp)
/* 04C6F4 8004CB44 8E050004 */  lw          $a1, 0x4($s0)
/* 04C6F8 8004CB48 8C840000 */  lw          $a0, 0x0($a0)
/* 04C6FC 8004CB4C 0C0134B4 */  jal         func_8004D2D0
/* 04C700 8004CB50 27A6002B */   addiu      $a2, $sp, 0x2b
/* 04C704 8004CB54 10400003 */  beqz        $v0, .L8004CB64
/* 04C708 8004CB58 93AE002B */   lbu        $t6, 0x2b($sp)
/* 04C70C 8004CB5C 1000001A */  b           .L8004CBC8
/* 04C710 8004CB60 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CB64:
/* 04C714 8004CB64 31CF0002 */  andi        $t7, $t6, 0x2
/* 04C718 8004CB68 11E00003 */  beqz        $t7, .L8004CB78
/* 04C71C 8004CB6C 27A70024 */   addiu      $a3, $sp, 0x24
/* 04C720 8004CB70 10000014 */  b           .L8004CBC4
/* 04C724 8004CB74 2402000F */   addiu      $v0, $zero, 0xf
.L8004CB78:
/* 04C728 8004CB78 93B90037 */  lbu         $t9, 0x37($sp)
/* 04C72C 8004CB7C 3C180200 */  lui         $t8, 0x200
/* 04C730 8004CB80 AFB80024 */  sw          $t8, 0x24($sp)
/* 04C734 8004CB84 A0F90002 */  sb          $t9, 0x2($a3)
/* 04C738 8004CB88 8E050004 */  lw          $a1, 0x4($s0)
/* 04C73C 8004CB8C 8E040000 */  lw          $a0, 0x0($s0)
/* 04C740 8004CB90 0C0135E8 */  jal         func_8004D7A0
/* 04C744 8004CB94 00003025 */   move       $a2, $zero
/* 04C748 8004CB98 10400003 */  beqz        $v0, .L8004CBA8
/* 04C74C 8004CB9C 02002025 */   move       $a0, $s0
/* 04C750 8004CBA0 10000009 */  b           .L8004CBC8
/* 04C754 8004CBA4 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004CBA8:
/* 04C758 8004CBA8 0C013674 */  jal         func_8004D9D0
/* 04C75C 8004CBAC 27A5002B */   addiu      $a1, $sp, 0x2b
/* 04C760 8004CBB0 3048FF00 */  andi        $t0, $v0, 0xff00
/* 04C764 8004CBB4 11000002 */  beqz        $t0, .L8004CBC0
/* 04C768 8004CBB8 00401825 */   move       $v1, $v0
/* 04C76C 8004CBBC 24030005 */  addiu       $v1, $zero, 0x5
.L8004CBC0:
/* 04C770 8004CBC0 00601025 */  move        $v0, $v1
.L8004CBC4:
/* 04C774 8004CBC4 8FBF001C */  lw          $ra, 0x1c($sp)
.L8004CBC8:
/* 04C778 8004CBC8 8FB00018 */  lw          $s0, 0x18($sp)
/* 04C77C 8004CBCC 27BD0030 */  addiu       $sp, $sp, 0x30
/* 04C780 8004CBD0 03E00008 */  jr          $ra
/* 04C784 8004CBD4 00000000 */   nop
/* 04C788 8004CBD8 00000000 */  nop
/* 04C78C 8004CBDC 00000000 */  nop
