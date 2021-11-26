.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osAiDeviceBusy # 0
/* 05ABB0 8005B000 3C0EA450 */  lui         $t6, %hi(D_A450000C)
/* 05ABB4 8005B004 8DC2000C */  lw          $v0, %lo(D_A450000C)($t6)
/* 05ABB8 8005B008 00027800 */  sll         $t7, $v0, 0
/* 05ABBC 8005B00C 05E10003 */  bgez        $t7, .L8005B01C
/* 05ABC0 8005B010 00001025 */   move       $v0, $zero
/* 05ABC4 8005B014 03E00008 */  jr          $ra
/* 05ABC8 8005B018 24020001 */   addiu      $v0, $zero, 0x1
.L8005B01C:
/* 05ABCC 8005B01C 03E00008 */  jr          $ra
/* 05ABD0 8005B020 00000000 */   nop
/* 05ABD4 8005B024 00000000 */  nop
/* 05ABD8 8005B028 00000000 */  nop
/* 05ABDC 8005B02C 00000000 */  nop
