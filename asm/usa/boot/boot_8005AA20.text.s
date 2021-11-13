.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005AA20 # 0
/* 000000 8005AA20 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000004 8005AA24 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000008 8005AA28 AFA40018 */  sw          $a0, 0x18($sp)
/* 00000C 8005AA2C AFA5001C */  sw          $a1, 0x1c($sp)
/* 000010 8005AA30 AFA60020 */  sw          $a2, 0x20($sp)
/* 000014 8005AA34 0C016AAC */  jal         func_8005AAB0
/* 000018 8005AA38 AFA70024 */   sw         $a3, 0x24($sp)
/* 00001C 8005AA3C 10400003 */  beq         $v0, $zero, .L8005AA4C
/* 000020 8005AA40 8FAE001C */   lw         $t6, 0x1c($sp)
/* 000024 8005AA44 10000013 */  b           .L8005AA94
/* 000028 8005AA48 2402FFFF */   addiu      $v0, $zero, -0x1
.L8005AA4C:
/* 00002C 8005AA4C 3C0FA404 */  lui         $t7, %hi(D_A4040000)
/* 000030 8005AA50 ADEE0000 */  sw          $t6, %lo(D_A4040000)($t7)
/* 000034 8005AA54 0C0143B0 */  jal         func_80050EC0
/* 000038 8005AA58 8FA40020 */   lw         $a0, 0x20($sp)
/* 00003C 8005AA5C 3C18A404 */  lui         $t8, %hi(D_A4040004)
/* 000040 8005AA60 AF020004 */  sw          $v0, %lo(D_A4040004)($t8)
/* 000044 8005AA64 8FB90018 */  lw          $t9, 0x18($sp)
/* 000048 8005AA68 8FAB0024 */  lw          $t3, 0x24($sp)
/* 00004C 8005AA6C 00001025 */  move        $v0, $zero
/* 000050 8005AA70 17200006 */  bne         $t9, $zero, .L8005AA8C
/* 000054 8005AA74 256CFFFF */   addiu      $t4, $t3, -0x1
/* 000058 8005AA78 8FA80024 */  lw          $t0, 0x24($sp)
/* 00005C 8005AA7C 3C0AA404 */  lui         $t2, %hi(D_A404000C)
/* 000060 8005AA80 2509FFFF */  addiu       $t1, $t0, -0x1
/* 000064 8005AA84 10000003 */  b           .L8005AA94
/* 000068 8005AA88 AD49000C */   sw         $t1, %lo(D_A404000C)($t2)
.L8005AA8C:
/* 00006C 8005AA8C 3C0DA404 */  lui         $t5, %hi(D_A4040008)
/* 000070 8005AA90 ADAC0008 */  sw          $t4, %lo(D_A4040008)($t5)
.L8005AA94:
/* 000074 8005AA94 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000078 8005AA98 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00007C 8005AA9C 03E00008 */  jr          $ra
/* 000080 8005AAA0 00000000 */   nop
/* 000084 8005AAA4 00000000 */  nop
/* 000088 8005AAA8 00000000 */  nop
/* 00008C 8005AAAC 00000000 */  nop
