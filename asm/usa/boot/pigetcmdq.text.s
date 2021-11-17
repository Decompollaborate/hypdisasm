.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osPiGetCmdQueue # 0
/* 058BF0 80059040 3C03800A */  lui         $v1, %hi(__osPiDevMgr)
/* 058BF4 80059044 2463EE40 */  addiu       $v1, $v1, %lo(__osPiDevMgr)
/* 058BF8 80059048 8C6E0000 */  lw          $t6, 0x0($v1)
/* 058BFC 8005904C 55C00004 */  bnel        $t6, $zero, .L80059060
/* 058C00 80059050 8C620008 */   lw         $v0, 0x8($v1)
/* 058C04 80059054 03E00008 */  jr          $ra
/* 058C08 80059058 00001025 */   move       $v0, $zero
/* 058C0C 8005905C 8C620008 */  lw          $v0, 0x8($v1)
.L80059060:
/* 058C10 80059060 03E00008 */  jr          $ra
/* 058C14 80059064 00000000 */   nop
/* 058C18 80059068 00000000 */  nop
/* 058C1C 8005906C 00000000 */  nop
