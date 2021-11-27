.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80050BE0 # 0
/* 050790 80050BE0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 050794 80050BE4 3C0E800A */  lui         $t6, %hi(D_800A31A0)
/* 050798 80050BE8 8DCE31A0 */  lw          $t6, %lo(D_800A31A0)($t6)
/* 05079C 80050BEC AFBF001C */  sw          $ra, 0x1c($sp)
/* 0507A0 80050BF0 AFA40028 */  sw          $a0, 0x28($sp)
/* 0507A4 80050BF4 AFA5002C */  sw          $a1, 0x2c($sp)
/* 0507A8 80050BF8 AFA60030 */  sw          $a2, 0x30($sp)
/* 0507AC 80050BFC AFA70034 */  sw          $a3, 0x34($sp)
/* 0507B0 80050C00 AFB10018 */  sw          $s1, 0x18($sp)
/* 0507B4 80050C04 15C00003 */  bnez        $t6, .L80050C14
/* 0507B8 80050C08 AFB00014 */   sw         $s0, 0x14($sp)
/* 0507BC 80050C0C 10000032 */  b           .L80050CD8
/* 0507C0 80050C10 2402FFFF */   addiu      $v0, $zero, -0x1
.L80050C14:
/* 0507C4 80050C14 8FAF0030 */  lw          $t7, 0x30($sp)
/* 0507C8 80050C18 15E00005 */  bnez        $t7, .L80050C30
/* 0507CC 80050C1C 00000000 */   nop
/* 0507D0 80050C20 8FB90028 */  lw          $t9, 0x28($sp)
/* 0507D4 80050C24 2418000B */  addiu       $t8, $zero, 0xb
/* 0507D8 80050C28 10000004 */  b           .L80050C3C
/* 0507DC 80050C2C A7380000 */   sh         $t8, 0x0($t9)
.L80050C30:
/* 0507E0 80050C30 8FA90028 */  lw          $t1, 0x28($sp)
/* 0507E4 80050C34 2408000C */  addiu       $t0, $zero, 0xc
/* 0507E8 80050C38 A5280000 */  sh          $t0, 0x0($t1)
.L80050C3C:
/* 0507EC 80050C3C 8FAA002C */  lw          $t2, 0x2c($sp)
/* 0507F0 80050C40 8FAB0028 */  lw          $t3, 0x28($sp)
/* 0507F4 80050C44 24010001 */  addiu       $at, $zero, 0x1
/* 0507F8 80050C48 A16A0002 */  sb          $t2, 0x2($t3)
/* 0507FC 80050C4C 8FAD0028 */  lw          $t5, 0x28($sp)
/* 050800 80050C50 8FAC0040 */  lw          $t4, 0x40($sp)
/* 050804 80050C54 ADAC0004 */  sw          $t4, 0x4($t5)
/* 050808 80050C58 8FAF0028 */  lw          $t7, 0x28($sp)
/* 05080C 80050C5C 8FAE0038 */  lw          $t6, 0x38($sp)
/* 050810 80050C60 ADEE0008 */  sw          $t6, 0x8($t7)
/* 050814 80050C64 8FB90028 */  lw          $t9, 0x28($sp)
/* 050818 80050C68 8FB80034 */  lw          $t8, 0x34($sp)
/* 05081C 80050C6C AF38000C */  sw          $t8, 0xc($t9)
/* 050820 80050C70 8FA90028 */  lw          $t1, 0x28($sp)
/* 050824 80050C74 8FA8003C */  lw          $t0, 0x3c($sp)
/* 050828 80050C78 AD280010 */  sw          $t0, 0x10($t1)
/* 05082C 80050C7C 8FAA0028 */  lw          $t2, 0x28($sp)
/* 050830 80050C80 AD400014 */  sw          $zero, 0x14($t2)
/* 050834 80050C84 8FAB002C */  lw          $t3, 0x2c($sp)
/* 050838 80050C88 1561000A */  bne         $t3, $at, .L80050CB4
/* 05083C 80050C8C 00000000 */   nop
/* 050840 80050C90 0C015E84 */  jal         func_80057A10
/* 050844 80050C94 00000000 */   nop
/* 050848 80050C98 00408825 */  move        $s1, $v0
/* 05084C 80050C9C 02202025 */  move        $a0, $s1
/* 050850 80050CA0 8FA50028 */  lw          $a1, 0x28($sp)
/* 050854 80050CA4 0C015E30 */  jal         func_800578C0
/* 050858 80050CA8 00003025 */   move       $a2, $zero
/* 05085C 80050CAC 10000009 */  b           .L80050CD4
/* 050860 80050CB0 00408025 */   move       $s0, $v0
.L80050CB4:
/* 050864 80050CB4 0C015E84 */  jal         func_80057A10
/* 050868 80050CB8 00000000 */   nop
/* 05086C 80050CBC 00408825 */  move        $s1, $v0
/* 050870 80050CC0 02202025 */  move        $a0, $s1
/* 050874 80050CC4 8FA50028 */  lw          $a1, 0x28($sp)
/* 050878 80050CC8 0C013A98 */  jal         func_8004EA60
/* 05087C 80050CCC 00003025 */   move       $a2, $zero
/* 050880 80050CD0 00408025 */  move        $s0, $v0
.L80050CD4:
/* 050884 80050CD4 02001025 */  move        $v0, $s0
.L80050CD8:
/* 050888 80050CD8 8FBF001C */  lw          $ra, 0x1c($sp)
/* 05088C 80050CDC 8FB00014 */  lw          $s0, 0x14($sp)
/* 050890 80050CE0 8FB10018 */  lw          $s1, 0x18($sp)
/* 050894 80050CE4 03E00008 */  jr          $ra
/* 050898 80050CE8 27BD0028 */   addiu      $sp, $sp, 0x28
/* 05089C 80050CEC 00000000 */  nop
