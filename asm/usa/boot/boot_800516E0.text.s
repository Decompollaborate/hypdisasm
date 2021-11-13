.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800516E0 # 0
/* 000000 800516E0 3C0E800A */  lui         $t6, %hi(D_8009F890)
/* 000004 800516E4 3C0F800A */  lui         $t7, %hi(D_8009F890)
/* 000008 800516E8 25CEF890 */  addiu       $t6, $t6, %lo(D_8009F890)
/* 00000C 800516EC 25EFF890 */  addiu       $t7, $t7, %lo(D_8009F890)
/* 000010 800516F0 AC8E0000 */  sw          $t6, 0x0($a0)
/* 000014 800516F4 AC8F0004 */  sw          $t7, 0x4($a0)
/* 000018 800516F8 AC800008 */  sw          $zero, 0x8($a0)
/* 00001C 800516FC AC80000C */  sw          $zero, 0xc($a0)
/* 000020 80051700 AC860010 */  sw          $a2, 0x10($a0)
/* 000024 80051704 03E00008 */  jr          $ra
/* 000028 80051708 AC850014 */   sw         $a1, 0x14($a0)
/* 00002C 8005170C 00000000 */  nop
