.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80058810 # 0
/* 0583C0 80058810 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 0583C4 80058814 AFB00020 */  sw          $s0, 0x20($sp)
/* 0583C8 80058818 30B000FF */  andi        $s0, $a1, 0xff
/* 0583CC 8005881C AFBF0024 */  sw          $ra, 0x24($sp)
/* 0583D0 80058820 AFA40058 */  sw          $a0, 0x58($sp)
/* 0583D4 80058824 AFA5005C */  sw          $a1, 0x5c($sp)
/* 0583D8 80058828 27A20038 */  addiu       $v0, $sp, 0x38
/* 0583DC 8005882C 27A30058 */  addiu       $v1, $sp, 0x58
.L80058830:
/* 0583E0 80058830 24420004 */  addiu       $v0, $v0, 0x4
/* 0583E4 80058834 A050FFFD */  sb          $s0, -0x3($v0)
/* 0583E8 80058838 A050FFFE */  sb          $s0, -0x2($v0)
/* 0583EC 8005883C A050FFFF */  sb          $s0, -0x1($v0)
/* 0583F0 80058840 1443FFFB */  bne         $v0, $v1, .L80058830
/* 0583F4 80058844 A050FFFC */   sb         $s0, -0x4($v0)
/* 0583F8 80058848 8FAE0058 */  lw          $t6, 0x58($sp)
/* 0583FC 8005884C 24060400 */  addiu       $a2, $zero, 0x400
/* 058400 80058850 27A70038 */  addiu       $a3, $sp, 0x38
/* 058404 80058854 8DC40004 */  lw          $a0, 0x4($t6)
/* 058408 80058858 8DC50008 */  lw          $a1, 0x8($t6)
/* 05840C 8005885C 0C0175A0 */  jal         func_8005D680
/* 058410 80058860 AFA00010 */   sw         $zero, 0x10($sp)
/* 058414 80058864 14400003 */  bne         $v0, $zero, .L80058874
/* 058418 80058868 00401825 */   move       $v1, $v0
/* 05841C 8005886C 8FAF0058 */  lw          $t7, 0x58($sp)
/* 058420 80058870 A1F00065 */  sb          $s0, 0x65($t7)
.L80058874:
/* 058424 80058874 8FBF0024 */  lw          $ra, 0x24($sp)
/* 058428 80058878 8FB00020 */  lw          $s0, 0x20($sp)
/* 05842C 8005887C 27BD0058 */  addiu       $sp, $sp, 0x58
/* 058430 80058880 03E00008 */  jr          $ra
/* 058434 80058884 00601025 */   move       $v0, $v1
/* 058438 80058888 00000000 */  nop
/* 05843C 8005888C 00000000 */  nop
