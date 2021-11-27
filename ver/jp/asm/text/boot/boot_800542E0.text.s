.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800542E0 # 0
/* 053E90 800542E0 00801025 */  move        $v0, $a0
/* 053E94 800542E4 00A01825 */  move        $v1, $a1
/* 053E98 800542E8 18C00018 */  blez        $a2, .L8005434C
/* 053E9C 800542EC 00003825 */   move       $a3, $zero
/* 053EA0 800542F0 30C50003 */  andi        $a1, $a2, 0x3
/* 053EA4 800542F4 10A00009 */  beqz        $a1, .L8005431C
/* 053EA8 800542F8 00A02025 */   move       $a0, $a1
.L800542FC:
/* 053EAC 800542FC 904E0000 */  lbu         $t6, 0x0($v0)
/* 053EB0 80054300 24E70001 */  addiu       $a3, $a3, 0x1
/* 053EB4 80054304 24630001 */  addiu       $v1, $v1, 0x1
/* 053EB8 80054308 24420001 */  addiu       $v0, $v0, 0x1
/* 053EBC 8005430C 1487FFFB */  bne         $a0, $a3, .L800542FC
/* 053EC0 80054310 A06EFFFF */   sb         $t6, -0x1($v1)
/* 053EC4 80054314 10E6000D */  beq         $a3, $a2, .L8005434C
/* 053EC8 80054318 00000000 */   nop
.L8005431C:
/* 053ECC 8005431C 904F0000 */  lbu         $t7, 0x0($v0)
/* 053ED0 80054320 24E70004 */  addiu       $a3, $a3, 0x4
/* 053ED4 80054324 24630004 */  addiu       $v1, $v1, 0x4
/* 053ED8 80054328 A06FFFFC */  sb          $t7, -0x4($v1)
/* 053EDC 8005432C 90580001 */  lbu         $t8, 0x1($v0)
/* 053EE0 80054330 24420004 */  addiu       $v0, $v0, 0x4
/* 053EE4 80054334 A078FFFD */  sb          $t8, -0x3($v1)
/* 053EE8 80054338 9059FFFE */  lbu         $t9, -0x2($v0)
/* 053EEC 8005433C A079FFFE */  sb          $t9, -0x2($v1)
/* 053EF0 80054340 9048FFFF */  lbu         $t0, -0x1($v0)
/* 053EF4 80054344 14E6FFF5 */  bne         $a3, $a2, .L8005431C
/* 053EF8 80054348 A068FFFF */   sb         $t0, -0x1($v1)
.L8005434C:
/* 053EFC 8005434C 03E00008 */  jr          $ra
/* 053F00 80054350 00000000 */   nop
/* 053F04 80054354 00000000 */  nop
/* 053F08 80054358 00000000 */  nop
/* 053F0C 8005435C 00000000 */  nop
