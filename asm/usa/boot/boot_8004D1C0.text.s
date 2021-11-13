.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D1C0 # 0
/* 000000 8004D1C0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 000004 8004D1C4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000008 8004D1C8 AFA40020 */  sw          $a0, 0x20($sp)
/* 00000C 8004D1CC AFA50024 */  sw          $a1, 0x24($sp)
/* 000010 8004D1D0 AFA60028 */  sw          $a2, 0x28($sp)
/* 000014 8004D1D4 8C8F0008 */  lw          $t7, 0x8($a0)
/* 000018 8004D1D8 51E0001B */  beql        $t7, $zero, .L8004D248
/* 00001C 8004D1DC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 000020 8004D1E0 0C013763 */  jal         func_8004DD8C
/* 000024 8004D1E4 00000000 */   nop
/* 000028 8004D1E8 10400016 */  beq         $v0, $zero, .L8004D244
/* 00002C 8004D1EC 8FA80020 */   lw         $t0, 0x20($sp)
/* 000030 8004D1F0 3C18800A */  lui         $t8, %hi(D_8009D9C4)
/* 000034 8004D1F4 8F18D9C4 */  lw          $t8, %lo(D_8009D9C4)($t8)
/* 000038 8004D1F8 8D090008 */  lw          $t1, 0x8($t0)
/* 00003C 8004D1FC 240C000B */  addiu       $t4, $zero, 0xb
/* 000040 8004D200 8F190028 */  lw          $t9, 0x28($t8)
/* 000044 8004D204 8D2A0088 */  lw          $t2, 0x88($t1)
/* 000048 8004D208 A44C0008 */  sh          $t4, 0x8($v0)
/* 00004C 8004D20C 032A5821 */  addu        $t3, $t9, $t2
/* 000050 8004D210 AC4B0004 */  sw          $t3, 0x4($v0)
/* 000054 8004D214 87AD0026 */  lh          $t5, 0x26($sp)
/* 000058 8004D218 AC4D000C */  sw          $t5, 0xc($v0)
/* 00005C 8004D21C AFA2001C */  sw          $v0, 0x1c($sp)
/* 000060 8004D220 0C0137B2 */  jal         func_8004DEC8
/* 000064 8004D224 8FA40028 */   lw         $a0, 0x28($sp)
/* 000068 8004D228 8FA6001C */  lw          $a2, 0x1c($sp)
/* 00006C 8004D22C 24050003 */  addiu       $a1, $zero, 0x3
/* 000070 8004D230 ACC20010 */  sw          $v0, 0x10($a2)
/* 000074 8004D234 ACC00000 */  sw          $zero, 0x0($a2)
/* 000078 8004D238 8FAE0020 */  lw          $t6, 0x20($sp)
/* 00007C 8004D23C 0C013986 */  jal         func_8004E618
/* 000080 8004D240 8DC40008 */   lw         $a0, 0x8($t6)
.L8004D244:
/* 000084 8004D244 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004D248:
/* 000088 8004D248 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00008C 8004D24C 03E00008 */  jr          $ra
/* 000090 8004D250 00000000 */   nop
/* 000094 8004D254 00000000 */  nop
/* 000098 8004D258 00000000 */  nop
/* 00009C 8004D25C 00000000 */  nop
