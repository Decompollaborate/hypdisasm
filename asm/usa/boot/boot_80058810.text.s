.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80058810 # 0
/* 000000 80058810 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 000004 80058814 AFB00020 */  sw          $s0, 0x20($sp)
/* 000008 80058818 30B000FF */  andi        $s0, $a1, 0xff
/* 00000C 8005881C AFBF0024 */  sw          $ra, 0x24($sp)
/* 000010 80058820 AFA40058 */  sw          $a0, 0x58($sp)
/* 000014 80058824 AFA5005C */  sw          $a1, 0x5c($sp)
/* 000018 80058828 27A20038 */  addiu       $v0, $sp, 0x38
/* 00001C 8005882C 27A30058 */  addiu       $v1, $sp, 0x58
.L80058830:
/* 000020 80058830 24420004 */  addiu       $v0, $v0, 0x4
/* 000024 80058834 A050FFFD */  sb          $s0, -0x3($v0)
/* 000028 80058838 A050FFFE */  sb          $s0, -0x2($v0)
/* 00002C 8005883C A050FFFF */  sb          $s0, -0x1($v0)
/* 000030 80058840 1443FFFB */  bne         $v0, $v1, .L80058830
/* 000034 80058844 A050FFFC */   sb         $s0, -0x4($v0)
/* 000038 80058848 8FAE0058 */  lw          $t6, 0x58($sp)
/* 00003C 8005884C 24060400 */  addiu       $a2, $zero, 0x400
/* 000040 80058850 27A70038 */  addiu       $a3, $sp, 0x38
/* 000044 80058854 8DC40004 */  lw          $a0, 0x4($t6)
/* 000048 80058858 8DC50008 */  lw          $a1, 0x8($t6)
/* 00004C 8005885C 0C0175A0 */  jal         func_8005D680
/* 000050 80058860 AFA00010 */   sw         $zero, 0x10($sp)
/* 000054 80058864 14400003 */  bne         $v0, $zero, .L80058874
/* 000058 80058868 00401825 */   move       $v1, $v0
/* 00005C 8005886C 8FAF0058 */  lw          $t7, 0x58($sp)
/* 000060 80058870 A1F00065 */  sb          $s0, 0x65($t7)
.L80058874:
/* 000064 80058874 8FBF0024 */  lw          $ra, 0x24($sp)
/* 000068 80058878 8FB00020 */  lw          $s0, 0x20($sp)
/* 00006C 8005887C 27BD0058 */  addiu       $sp, $sp, 0x58
/* 000070 80058880 03E00008 */  jr          $ra
/* 000074 80058884 00601025 */   move       $v0, $v1
/* 000078 80058888 00000000 */  nop
/* 00007C 8005888C 00000000 */  nop
