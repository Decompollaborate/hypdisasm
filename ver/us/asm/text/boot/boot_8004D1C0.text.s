.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D1C0 # 0
/* 04CD70 8004D1C0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 04CD74 8004D1C4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04CD78 8004D1C8 AFA40020 */  sw          $a0, 0x20($sp)
/* 04CD7C 8004D1CC AFA50024 */  sw          $a1, 0x24($sp)
/* 04CD80 8004D1D0 AFA60028 */  sw          $a2, 0x28($sp)
/* 04CD84 8004D1D4 8C8F0008 */  lw          $t7, 0x8($a0)
/* 04CD88 8004D1D8 51E0001B */  beql        $t7, $zero, .L8004D248
/* 04CD8C 8004D1DC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04CD90 8004D1E0 0C013763 */  jal         func_8004DD8C
/* 04CD94 8004D1E4 00000000 */   nop
/* 04CD98 8004D1E8 10400016 */  beqz        $v0, .L8004D244
/* 04CD9C 8004D1EC 8FA80020 */   lw         $t0, 0x20($sp)
/* 04CDA0 8004D1F0 3C18800A */  lui         $t8, %hi(D_8009D9C4)
/* 04CDA4 8004D1F4 8F18D9C4 */  lw          $t8, %lo(D_8009D9C4)($t8)
/* 04CDA8 8004D1F8 8D090008 */  lw          $t1, 0x8($t0)
/* 04CDAC 8004D1FC 240C000B */  addiu       $t4, $zero, 0xb
/* 04CDB0 8004D200 8F190028 */  lw          $t9, 0x28($t8)
/* 04CDB4 8004D204 8D2A0088 */  lw          $t2, 0x88($t1)
/* 04CDB8 8004D208 A44C0008 */  sh          $t4, 0x8($v0)
/* 04CDBC 8004D20C 032A5821 */  addu        $t3, $t9, $t2
/* 04CDC0 8004D210 AC4B0004 */  sw          $t3, 0x4($v0)
/* 04CDC4 8004D214 87AD0026 */  lh          $t5, 0x26($sp)
/* 04CDC8 8004D218 AC4D000C */  sw          $t5, 0xc($v0)
/* 04CDCC 8004D21C AFA2001C */  sw          $v0, 0x1c($sp)
/* 04CDD0 8004D220 0C0137B2 */  jal         func_8004DEC8
/* 04CDD4 8004D224 8FA40028 */   lw         $a0, 0x28($sp)
/* 04CDD8 8004D228 8FA6001C */  lw          $a2, 0x1c($sp)
/* 04CDDC 8004D22C 24050003 */  addiu       $a1, $zero, 0x3
/* 04CDE0 8004D230 ACC20010 */  sw          $v0, 0x10($a2)
/* 04CDE4 8004D234 ACC00000 */  sw          $zero, 0x0($a2)
/* 04CDE8 8004D238 8FAE0020 */  lw          $t6, 0x20($sp)
/* 04CDEC 8004D23C 0C013986 */  jal         func_8004E618
/* 04CDF0 8004D240 8DC40008 */   lw         $a0, 0x8($t6)
.L8004D244:
/* 04CDF4 8004D244 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004D248:
/* 04CDF8 8004D248 27BD0020 */  addiu       $sp, $sp, 0x20
/* 04CDFC 8004D24C 03E00008 */  jr          $ra
/* 04CE00 8004D250 00000000 */   nop
/* 04CE04 8004D254 00000000 */  nop
/* 04CE08 8004D258 00000000 */  nop
/* 04CE0C 8004D25C 00000000 */  nop
