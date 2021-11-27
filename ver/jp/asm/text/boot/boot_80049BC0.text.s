.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80049BC0 # 0
/* 049770 80049BC0 3C0E800A */  lui         $t6, %hi(D_800A2E60)
/* 049774 80049BC4 8DCE2E60 */  lw          $t6, %lo(D_800A2E60)($t6)
/* 049778 80049BC8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04977C 80049BCC AFBF0014 */  sw          $ra, 0x14($sp)
/* 049780 80049BD0 11C00007 */  beqz        $t6, .L80049BF0
/* 049784 80049BD4 AFA40018 */   sw         $a0, 0x18($sp)
/* 049788 80049BD8 0C012BA0 */  jal         func_8004AE80
/* 04978C 80049BDC 00000000 */   nop
/* 049790 80049BE0 3C01800A */  lui         $at, %hi(D_800A2E60)
/* 049794 80049BE4 AC202E60 */  sw          $zero, %lo(D_800A2E60)($at)
/* 049798 80049BE8 3C01800A */  lui         $at, %hi(D_800A2E64)
/* 04979C 80049BEC AC202E64 */  sw          $zero, %lo(D_800A2E64)($at)
.L80049BF0:
/* 0497A0 80049BF0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0497A4 80049BF4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0497A8 80049BF8 03E00008 */  jr          $ra
/* 0497AC 80049BFC 00000000 */   nop

glabel func_80049C00 # 1
/* 0497B0 80049C00 3C02800A */  lui         $v0, %hi(D_800A2E60)
/* 0497B4 80049C04 24422E60 */  addiu       $v0, $v0, %lo(D_800A2E60)
/* 0497B8 80049C08 8C4E0000 */  lw          $t6, 0x0($v0)
/* 0497BC 80049C0C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0497C0 80049C10 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0497C4 80049C14 15C00009 */  bnez        $t6, .L80049C3C
/* 0497C8 80049C18 3C03800A */   lui        $v1, %hi(D_800A2E64)
/* 0497CC 80049C1C 24632E64 */  addiu       $v1, $v1, %lo(D_800A2E64)
/* 0497D0 80049C20 8C6F0000 */  lw          $t7, 0x0($v1)
/* 0497D4 80049C24 AC440000 */  sw          $a0, 0x0($v0)
/* 0497D8 80049C28 55E00005 */  bnel        $t7, $zero, .L80049C40
/* 0497DC 80049C2C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 0497E0 80049C30 AC640000 */  sw          $a0, 0x0($v1)
/* 0497E4 80049C34 0C012811 */  jal         func_8004A044
/* 0497E8 80049C38 00A02025 */   move       $a0, $a1
.L80049C3C:
/* 0497EC 80049C3C 8FBF0014 */  lw          $ra, 0x14($sp)
.L80049C40:
/* 0497F0 80049C40 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0497F4 80049C44 03E00008 */  jr          $ra
/* 0497F8 80049C48 00000000 */   nop
/* 0497FC 80049C4C 00000000 */  nop
