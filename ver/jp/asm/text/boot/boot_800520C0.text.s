.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800520C0 # 0
/* 051C70 800520C0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 051C74 800520C4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 051C78 800520C8 AFA40028 */  sw          $a0, 0x28($sp)
/* 051C7C 800520CC 0C015594 */  jal         func_80055650
/* 051C80 800520D0 AFB00018 */   sw         $s0, 0x18($sp)
/* 051C84 800520D4 3C0F800A */  lui         $t7, %hi(D_800A4E14)
/* 051C88 800520D8 8DEF4E14 */  lw          $t7, %lo(D_800A4E14)($t7)
/* 051C8C 800520DC 8FAE0028 */  lw          $t6, 0x28($sp)
/* 051C90 800520E0 3C19800A */  lui         $t9, %hi(D_800A4E14)
/* 051C94 800520E4 24180001 */  addiu       $t8, $zero, 0x1
/* 051C98 800520E8 ADEE0008 */  sw          $t6, 0x8($t7)
/* 051C9C 800520EC 8F394E14 */  lw          $t9, %lo(D_800A4E14)($t9)
/* 051CA0 800520F0 3C08800A */  lui         $t0, %hi(D_800A4E14)
/* 051CA4 800520F4 00408025 */  move        $s0, $v0
/* 051CA8 800520F8 A7380000 */  sh          $t8, 0x0($t9)
/* 051CAC 800520FC 8D084E14 */  lw          $t0, %lo(D_800A4E14)($t0)
/* 051CB0 80052100 02002025 */  move        $a0, $s0
/* 051CB4 80052104 8D090008 */  lw          $t1, 0x8($t0)
/* 051CB8 80052108 8D2A0004 */  lw          $t2, 0x4($t1)
/* 051CBC 8005210C 0C01559C */  jal         func_80055670
/* 051CC0 80052110 AD0A000C */   sw         $t2, 0xc($t0)
/* 051CC4 80052114 8FBF001C */  lw          $ra, 0x1c($sp)
/* 051CC8 80052118 8FB00018 */  lw          $s0, 0x18($sp)
/* 051CCC 8005211C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 051CD0 80052120 03E00008 */  jr          $ra
/* 051CD4 80052124 00000000 */   nop
/* 051CD8 80052128 00000000 */  nop
/* 051CDC 8005212C 00000000 */  nop
