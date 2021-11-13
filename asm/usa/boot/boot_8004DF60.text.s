.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004DF60 # 0
/* 000000 8004DF60 3C0E800A */  lui         $t6, %hi(D_8009D9C4)
/* 000004 8004DF64 8DCED9C4 */  lw          $t6, %lo(D_8009D9C4)($t6)
/* 000008 8004DF68 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00000C 8004DF6C AFBF0014 */  sw          $ra, 0x14($sp)
/* 000010 8004DF70 8DCF0000 */  lw          $t7, 0x0($t6)
/* 000014 8004DF74 00803025 */  move        $a2, $a0
/* 000018 8004DF78 24040001 */  addiu       $a0, $zero, 0x1
/* 00001C 8004DF7C 51E00020 */  beql        $t7, $zero, .L8004E000
/* 000020 8004DF80 24040001 */   addiu      $a0, $zero, 0x1
/* 000024 8004DF84 AFA00018 */  sw          $zero, 0x18($sp)
/* 000028 8004DF88 0C014E80 */  jal         func_80053A00
/* 00002C 8004DF8C AFA60020 */   sw         $a2, 0x20($sp)
/* 000030 8004DF90 3C04800A */  lui         $a0, %hi(D_8009D9C4)
/* 000034 8004DF94 8C84D9C4 */  lw          $a0, %lo(D_8009D9C4)($a0)
/* 000038 8004DF98 8FA50018 */  lw          $a1, 0x18($sp)
/* 00003C 8004DF9C 8FA60020 */  lw          $a2, 0x20($sp)
/* 000040 8004DFA0 8C830000 */  lw          $v1, 0x0($a0)
/* 000044 8004DFA4 00403825 */  move        $a3, $v0
/* 000048 8004DFA8 50600011 */  beql        $v1, $zero, .L8004DFF0
/* 00004C 8004DFAC 00E02025 */   move       $a0, $a3
.L8004DFB0:
/* 000050 8004DFB0 5466000B */  bnel        $v1, $a2, .L8004DFE0
/* 000054 8004DFB4 00602825 */   move       $a1, $v1
/* 000058 8004DFB8 50A00005 */  beql        $a1, $zero, .L8004DFD0
/* 00005C 8004DFBC 8C790000 */   lw         $t9, 0x0($v1)
/* 000060 8004DFC0 8C780000 */  lw          $t8, 0x0($v1)
/* 000064 8004DFC4 10000003 */  b           .L8004DFD4
/* 000068 8004DFC8 ACB80000 */   sw         $t8, 0x0($a1)
/* 00006C 8004DFCC 8C790000 */  lw          $t9, 0x0($v1)
.L8004DFD0:
/* 000070 8004DFD0 AC990000 */  sw          $t9, 0x0($a0)
.L8004DFD4:
/* 000074 8004DFD4 10000005 */  b           .L8004DFEC
/* 000078 8004DFD8 ACC00000 */   sw         $zero, 0x0($a2)
/* 00007C 8004DFDC 00602825 */  move        $a1, $v1
.L8004DFE0:
/* 000080 8004DFE0 8C630000 */  lw          $v1, 0x0($v1)
/* 000084 8004DFE4 1460FFF2 */  bne         $v1, $zero, .L8004DFB0
/* 000088 8004DFE8 00000000 */   nop
.L8004DFEC:
/* 00008C 8004DFEC 00E02025 */  move        $a0, $a3
.L8004DFF0:
/* 000090 8004DFF0 0C014E80 */  jal         func_80053A00
/* 000094 8004DFF4 AFA60020 */   sw         $a2, 0x20($sp)
/* 000098 8004DFF8 8FA60020 */  lw          $a2, 0x20($sp)
/* 00009C 8004DFFC 24040001 */  addiu       $a0, $zero, 0x1
.L8004E000:
/* 0000A0 8004E000 0C014E80 */  jal         func_80053A00
/* 0000A4 8004E004 AFA60020 */   sw         $a2, 0x20($sp)
/* 0000A8 8004E008 3C04800A */  lui         $a0, %hi(D_8009D9C4)
/* 0000AC 8004E00C 8C84D9C4 */  lw          $a0, %lo(D_8009D9C4)($a0)
/* 0000B0 8004E010 8FA60020 */  lw          $a2, 0x20($sp)
/* 0000B4 8004E014 00402825 */  move        $a1, $v0
/* 0000B8 8004E018 8C88000C */  lw          $t0, 0xc($a0)
/* 0000BC 8004E01C 54C80004 */  bnel        $a2, $t0, .L8004E030
/* 0000C0 8004E020 8C890004 */   lw         $t1, 0x4($a0)
/* 0000C4 8004E024 1000000A */  b           .L8004E050
/* 0000C8 8004E028 AC80000C */   sw         $zero, 0xc($a0)
/* 0000CC 8004E02C 8C890004 */  lw          $t1, 0x4($a0)
.L8004E030:
/* 0000D0 8004E030 54C90004 */  bnel        $a2, $t1, .L8004E044
/* 0000D4 8004E034 8C8A0008 */   lw         $t2, 0x8($a0)
/* 0000D8 8004E038 10000005 */  b           .L8004E050
/* 0000DC 8004E03C AC800004 */   sw         $zero, 0x4($a0)
/* 0000E0 8004E040 8C8A0008 */  lw          $t2, 0x8($a0)
.L8004E044:
/* 0000E4 8004E044 14CA0002 */  bne         $a2, $t2, .L8004E050
/* 0000E8 8004E048 00000000 */   nop
/* 0000EC 8004E04C AC800008 */  sw          $zero, 0x8($a0)
.L8004E050:
/* 0000F0 8004E050 0C014E80 */  jal         func_80053A00
/* 0000F4 8004E054 00A02025 */   move       $a0, $a1
/* 0000F8 8004E058 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0000FC 8004E05C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 000100 8004E060 03E00008 */  jr          $ra
/* 000104 8004E064 00000000 */   nop
/* 000108 8004E068 00000000 */  nop
/* 00010C 8004E06C 00000000 */  nop
