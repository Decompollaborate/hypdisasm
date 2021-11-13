.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80058180 # 0
/* 000000 80058180 3C083F80 */  lui         $t0, 0x3f80
/* 000004 80058184 AC880000 */  sw          $t0, 0x0($a0)
/* 000008 80058188 AC800004 */  sw          $zero, 0x4($a0)
/* 00000C 8005818C AC800008 */  sw          $zero, 0x8($a0)
/* 000010 80058190 AC80000C */  sw          $zero, 0xc($a0)
/* 000014 80058194 AC800010 */  sw          $zero, 0x10($a0)
/* 000018 80058198 AC880014 */  sw          $t0, 0x14($a0)
/* 00001C 8005819C AC800018 */  sw          $zero, 0x18($a0)
/* 000020 800581A0 AC80001C */  sw          $zero, 0x1c($a0)
/* 000024 800581A4 AC800020 */  sw          $zero, 0x20($a0)
/* 000028 800581A8 AC800024 */  sw          $zero, 0x24($a0)
/* 00002C 800581AC AC880028 */  sw          $t0, 0x28($a0)
/* 000030 800581B0 AC80002C */  sw          $zero, 0x2c($a0)
/* 000034 800581B4 AC800030 */  sw          $zero, 0x30($a0)
/* 000038 800581B8 AC800034 */  sw          $zero, 0x34($a0)
/* 00003C 800581BC AC800038 */  sw          $zero, 0x38($a0)
/* 000040 800581C0 03E00008 */  jr          $ra
/* 000044 800581C4 AC88003C */   sw         $t0, 0x3c($a0)
/* 000048 800581C8 00000000 */  nop
/* 00004C 800581CC 00000000 */  nop
