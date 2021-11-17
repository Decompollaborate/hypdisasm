.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel guMtxIdentF # 0
/* 057D30 80058180 3C083F80 */  lui         $t0, 0x3f80
/* 057D34 80058184 AC880000 */  sw          $t0, 0x0($a0)
/* 057D38 80058188 AC800004 */  sw          $zero, 0x4($a0)
/* 057D3C 8005818C AC800008 */  sw          $zero, 0x8($a0)
/* 057D40 80058190 AC80000C */  sw          $zero, 0xc($a0)
/* 057D44 80058194 AC800010 */  sw          $zero, 0x10($a0)
/* 057D48 80058198 AC880014 */  sw          $t0, 0x14($a0)
/* 057D4C 8005819C AC800018 */  sw          $zero, 0x18($a0)
/* 057D50 800581A0 AC80001C */  sw          $zero, 0x1c($a0)
/* 057D54 800581A4 AC800020 */  sw          $zero, 0x20($a0)
/* 057D58 800581A8 AC800024 */  sw          $zero, 0x24($a0)
/* 057D5C 800581AC AC880028 */  sw          $t0, 0x28($a0)
/* 057D60 800581B0 AC80002C */  sw          $zero, 0x2c($a0)
/* 057D64 800581B4 AC800030 */  sw          $zero, 0x30($a0)
/* 057D68 800581B8 AC800034 */  sw          $zero, 0x34($a0)
/* 057D6C 800581BC AC800038 */  sw          $zero, 0x38($a0)
/* 057D70 800581C0 03E00008 */  jr          $ra
/* 057D74 800581C4 AC88003C */   sw         $t0, 0x3c($a0)
/* 057D78 800581C8 00000000 */  nop
/* 057D7C 800581CC 00000000 */  nop
