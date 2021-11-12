.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004DF60 # 0
/* 04DB10 8004DF60 3C0E800A */  lui         $t6, %hi(D_8009D9C4)
/* 04DB14 8004DF64 8DCED9C4 */  lw          $t6, %lo(D_8009D9C4)($t6)
/* 04DB18 8004DF68 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 04DB1C 8004DF6C AFBF0014 */  sw          $ra, 0x14($sp)
/* 04DB20 8004DF70 8DCF0000 */  lw          $t7, 0x0($t6)
/* 04DB24 8004DF74 00803025 */  move        $a2, $a0
/* 04DB28 8004DF78 24040001 */  addiu       $a0, $zero, 0x1
/* 04DB2C 8004DF7C 51E00020 */  beql        $t7, $zero, .L8004E000
/* 04DB30 8004DF80 24040001 */   addiu      $a0, $zero, 0x1
/* 04DB34 8004DF84 AFA00018 */  sw          $zero, 0x18($sp)
/* 04DB38 8004DF88 0C014E80 */  jal         osSetIntMask
/* 04DB3C 8004DF8C AFA60020 */   sw         $a2, 0x20($sp)
/* 04DB40 8004DF90 3C04800A */  lui         $a0, %hi(D_8009D9C4)
/* 04DB44 8004DF94 8C84D9C4 */  lw          $a0, %lo(D_8009D9C4)($a0)
/* 04DB48 8004DF98 8FA50018 */  lw          $a1, 0x18($sp)
/* 04DB4C 8004DF9C 8FA60020 */  lw          $a2, 0x20($sp)
/* 04DB50 8004DFA0 8C830000 */  lw          $v1, 0x0($a0)
/* 04DB54 8004DFA4 00403825 */  move        $a3, $v0
/* 04DB58 8004DFA8 50600011 */  beql        $v1, $zero, .L8004DFF0
/* 04DB5C 8004DFAC 00E02025 */   move       $a0, $a3
.L8004DFB0:
/* 04DB60 8004DFB0 5466000B */  bnel        $v1, $a2, .L8004DFE0
/* 04DB64 8004DFB4 00602825 */   move       $a1, $v1
/* 04DB68 8004DFB8 50A00005 */  beql        $a1, $zero, .L8004DFD0
/* 04DB6C 8004DFBC 8C790000 */   lw         $t9, 0x0($v1)
/* 04DB70 8004DFC0 8C780000 */  lw          $t8, 0x0($v1)
/* 04DB74 8004DFC4 10000003 */  b           .L8004DFD4
/* 04DB78 8004DFC8 ACB80000 */   sw         $t8, 0x0($a1)
/* 04DB7C 8004DFCC 8C790000 */  lw          $t9, 0x0($v1)
.L8004DFD0:
/* 04DB80 8004DFD0 AC990000 */  sw          $t9, 0x0($a0)
.L8004DFD4:
/* 04DB84 8004DFD4 10000005 */  b           .L8004DFEC
/* 04DB88 8004DFD8 ACC00000 */   sw         $zero, 0x0($a2)
/* 04DB8C 8004DFDC 00602825 */  move        $a1, $v1
.L8004DFE0:
/* 04DB90 8004DFE0 8C630000 */  lw          $v1, 0x0($v1)
/* 04DB94 8004DFE4 1460FFF2 */  bne         $v1, $zero, .L8004DFB0
/* 04DB98 8004DFE8 00000000 */   nop
.L8004DFEC:
/* 04DB9C 8004DFEC 00E02025 */  move        $a0, $a3
.L8004DFF0:
/* 04DBA0 8004DFF0 0C014E80 */  jal         osSetIntMask
/* 04DBA4 8004DFF4 AFA60020 */   sw         $a2, 0x20($sp)
/* 04DBA8 8004DFF8 8FA60020 */  lw          $a2, 0x20($sp)
/* 04DBAC 8004DFFC 24040001 */  addiu       $a0, $zero, 0x1
.L8004E000:
/* 04DBB0 8004E000 0C014E80 */  jal         osSetIntMask
/* 04DBB4 8004E004 AFA60020 */   sw         $a2, 0x20($sp)
/* 04DBB8 8004E008 3C04800A */  lui         $a0, %hi(D_8009D9C4)
/* 04DBBC 8004E00C 8C84D9C4 */  lw          $a0, %lo(D_8009D9C4)($a0)
/* 04DBC0 8004E010 8FA60020 */  lw          $a2, 0x20($sp)
/* 04DBC4 8004E014 00402825 */  move        $a1, $v0
/* 04DBC8 8004E018 8C88000C */  lw          $t0, 0xc($a0)
/* 04DBCC 8004E01C 54C80004 */  bnel        $a2, $t0, .L8004E030
/* 04DBD0 8004E020 8C890004 */   lw         $t1, 0x4($a0)
/* 04DBD4 8004E024 1000000A */  b           .L8004E050
/* 04DBD8 8004E028 AC80000C */   sw         $zero, 0xc($a0)
/* 04DBDC 8004E02C 8C890004 */  lw          $t1, 0x4($a0)
.L8004E030:
/* 04DBE0 8004E030 54C90004 */  bnel        $a2, $t1, .L8004E044
/* 04DBE4 8004E034 8C8A0008 */   lw         $t2, 0x8($a0)
/* 04DBE8 8004E038 10000005 */  b           .L8004E050
/* 04DBEC 8004E03C AC800004 */   sw         $zero, 0x4($a0)
/* 04DBF0 8004E040 8C8A0008 */  lw          $t2, 0x8($a0)
.L8004E044:
/* 04DBF4 8004E044 14CA0002 */  bne         $a2, $t2, .L8004E050
/* 04DBF8 8004E048 00000000 */   nop
/* 04DBFC 8004E04C AC800008 */  sw          $zero, 0x8($a0)
.L8004E050:
/* 04DC00 8004E050 0C014E80 */  jal         osSetIntMask
/* 04DC04 8004E054 00A02025 */   move       $a0, $a1
/* 04DC08 8004E058 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04DC0C 8004E05C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 04DC10 8004E060 03E00008 */  jr          $ra
/* 04DC14 8004E064 00000000 */   nop
/* 04DC18 8004E068 00000000 */  nop
/* 04DC1C 8004E06C 00000000 */  nop
