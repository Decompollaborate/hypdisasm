.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osGetTime # 0
/* 051C60 800520B0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 051C64 800520B4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 051C68 800520B8 0C015FFC */  jal         __osDisableInt
/* 051C6C 800520BC AFB00018 */   sw         $s0, 0x18($sp)
/* 051C70 800520C0 0C014CB8 */  jal         osGetCount
/* 051C74 800520C4 00408025 */   move       $s0, $v0
/* 051C78 800520C8 AFA20034 */  sw          $v0, 0x34($sp)
/* 051C7C 800520CC 3C0F8010 */  lui         $t7, %hi(__osBaseCounter)
/* 051C80 800520D0 8DEF0358 */  lw          $t7, %lo(__osBaseCounter)($t7)
/* 051C84 800520D4 8FAE0034 */  lw          $t6, 0x34($sp)
/* 051C88 800520D8 3C088010 */  lui         $t0, %hi(__osCurrentTime)
/* 051C8C 800520DC 3C098010 */  lui         $t1, %hi(__osCurrentTime + 0x4)
/* 051C90 800520E0 8D290354 */  lw          $t1, %lo(__osCurrentTime + 0x4)($t1)
/* 051C94 800520E4 8D080350 */  lw          $t0, %lo(__osCurrentTime)($t0)
/* 051C98 800520E8 01CFC023 */  subu        $t8, $t6, $t7
/* 051C9C 800520EC AFB80030 */  sw          $t8, 0x30($sp)
/* 051CA0 800520F0 02002025 */  move        $a0, $s0
/* 051CA4 800520F4 AFA9002C */  sw          $t1, 0x2c($sp)
/* 051CA8 800520F8 0C016018 */  jal         __osRestoreInt
/* 051CAC 800520FC AFA80028 */   sw         $t0, 0x28($sp)
/* 051CB0 80052100 8FB90030 */  lw          $t9, 0x30($sp)
/* 051CB4 80052104 8FAD002C */  lw          $t5, 0x2c($sp)
/* 051CB8 80052108 8FBF001C */  lw          $ra, 0x1c($sp)
/* 051CBC 8005210C 03205825 */  move        $t3, $t9
/* 051CC0 80052110 016D1821 */  addu        $v1, $t3, $t5
/* 051CC4 80052114 8FAC0028 */  lw          $t4, 0x28($sp)
/* 051CC8 80052118 240A0000 */  addiu       $t2, $zero, 0x0
/* 051CCC 8005211C 006D082B */  sltu        $at, $v1, $t5
/* 051CD0 80052120 002A1021 */  addu        $v0, $at, $t2
/* 051CD4 80052124 8FB00018 */  lw          $s0, 0x18($sp)
/* 051CD8 80052128 27BD0038 */  addiu       $sp, $sp, 0x38
/* 051CDC 8005212C 03E00008 */  jr          $ra
/* 051CE0 80052130 004C1021 */   addu       $v0, $v0, $t4
/* 051CE4 80052134 00000000 */  nop
/* 051CE8 80052138 00000000 */  nop
/* 051CEC 8005213C 00000000 */  nop
