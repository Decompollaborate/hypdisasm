.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80054390 # 0
/* 053F40 80054390 3C0EA410 */  lui         $t6, %hi(D_A4100010)
/* 053F44 80054394 8DCF0010 */  lw          $t7, %lo(D_A4100010)($t6)
/* 053F48 80054398 3C18A410 */  lui         $t8, %hi(D_A4100014)
/* 053F4C 8005439C 3C08A410 */  lui         $t0, %hi(D_A4100018)
/* 053F50 800543A0 AC8F0000 */  sw          $t7, 0x0($a0)
/* 053F54 800543A4 8F190014 */  lw          $t9, %lo(D_A4100014)($t8)
/* 053F58 800543A8 3C0AA410 */  lui         $t2, %hi(D_A410001C)
/* 053F5C 800543AC 2484000C */  addiu       $a0, $a0, 0xc
/* 053F60 800543B0 AC99FFF8 */  sw          $t9, -0x8($a0)
/* 053F64 800543B4 8D090018 */  lw          $t1, %lo(D_A4100018)($t0)
/* 053F68 800543B8 AC89FFFC */  sw          $t1, -0x4($a0)
/* 053F6C 800543BC 8D4B001C */  lw          $t3, %lo(D_A410001C)($t2)
/* 053F70 800543C0 03E00008 */  jr          $ra
/* 053F74 800543C4 AC8B0000 */   sw         $t3, 0x0($a0)
/* 053F78 800543C8 00000000 */  nop
/* 053F7C 800543CC 00000000 */  nop
