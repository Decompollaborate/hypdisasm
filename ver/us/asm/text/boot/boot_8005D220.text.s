.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005D220 # 0
/* 05CDD0 8005D220 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 05CDD4 8005D224 AFB10024 */  sw          $s1, 0x24($sp)
/* 05CDD8 8005D228 8FB10050 */  lw          $s1, 0x50($sp)
/* 05CDDC 8005D22C AFBF003C */  sw          $ra, 0x3c($sp)
/* 05CDE0 8005D230 AFB60038 */  sw          $s6, 0x38($sp)
/* 05CDE4 8005D234 AFB50034 */  sw          $s5, 0x34($sp)
/* 05CDE8 8005D238 AFB40030 */  sw          $s4, 0x30($sp)
/* 05CDEC 8005D23C AFB3002C */  sw          $s3, 0x2c($sp)
/* 05CDF0 8005D240 AFB20028 */  sw          $s2, 0x28($sp)
/* 05CDF4 8005D244 AFB00020 */  sw          $s0, 0x20($sp)
/* 05CDF8 8005D248 8C83001C */  lw          $v1, 0x1c($a0)
/* 05CDFC 8005D24C 3C0E0200 */  lui         $t6, (0x20006C0 >> 16)
/* 05CE00 8005D250 00061040 */  sll         $v0, $a2, 1
/* 05CE04 8005D254 3C0F0200 */  lui         $t7, (0x2000800 >> 16)
/* 05CE08 8005D258 35CE06C0 */  ori         $t6, $t6, (0x20006C0 & 0xFFFF)
/* 05CE0C 8005D25C 35EF0800 */  ori         $t7, $t7, (0x2000800 & 0xFFFF)
/* 05CE10 8005D260 AE2E0000 */  sw          $t6, 0x0($s1)
/* 05CE14 8005D264 AE220004 */  sw          $v0, 0x4($s1)
/* 05CE18 8005D268 AE2F0008 */  sw          $t7, 0x8($s1)
/* 05CE1C 8005D26C AE22000C */  sw          $v0, 0xc($s1)
/* 05CE20 8005D270 8C980014 */  lw          $t8, 0x14($a0)
/* 05CE24 8005D274 00C0A025 */  move        $s4, $a2
/* 05CE28 8005D278 00A0A825 */  move        $s5, $a1
/* 05CE2C 8005D27C 00E0B025 */  move        $s6, $a3
/* 05CE30 8005D280 00809825 */  move        $s3, $a0
/* 05CE34 8005D284 00008025 */  move        $s0, $zero
/* 05CE38 8005D288 1B000010 */  blez        $t8, .L8005D2CC
/* 05CE3C 8005D28C 26320010 */   addiu      $s2, $s1, 0x10
/* 05CE40 8005D290 00608825 */  move        $s1, $v1
.L8005D294:
/* 05CE44 8005D294 8E240000 */  lw          $a0, 0x0($s1)
/* 05CE48 8005D298 AFB20010 */  sw          $s2, 0x10($sp)
/* 05CE4C 8005D29C 02A02825 */  move        $a1, $s5
/* 05CE50 8005D2A0 8C990004 */  lw          $t9, 0x4($a0)
/* 05CE54 8005D2A4 02803025 */  move        $a2, $s4
/* 05CE58 8005D2A8 02C03825 */  move        $a3, $s6
/* 05CE5C 8005D2AC 0320F809 */  jalr        $t9
/* 05CE60 8005D2B0 00000000 */   nop
/* 05CE64 8005D2B4 8E680014 */  lw          $t0, 0x14($s3)
/* 05CE68 8005D2B8 26100001 */  addiu       $s0, $s0, 0x1
/* 05CE6C 8005D2BC 26310004 */  addiu       $s1, $s1, 0x4
/* 05CE70 8005D2C0 0208082A */  slt         $at, $s0, $t0
/* 05CE74 8005D2C4 1420FFF3 */  bnez        $at, .L8005D294
/* 05CE78 8005D2C8 00409025 */   move       $s2, $v0
.L8005D2CC:
/* 05CE7C 8005D2CC 8FBF003C */  lw          $ra, 0x3c($sp)
/* 05CE80 8005D2D0 02401025 */  move        $v0, $s2
/* 05CE84 8005D2D4 8FB20028 */  lw          $s2, 0x28($sp)
/* 05CE88 8005D2D8 8FB00020 */  lw          $s0, 0x20($sp)
/* 05CE8C 8005D2DC 8FB10024 */  lw          $s1, 0x24($sp)
/* 05CE90 8005D2E0 8FB3002C */  lw          $s3, 0x2c($sp)
/* 05CE94 8005D2E4 8FB40030 */  lw          $s4, 0x30($sp)
/* 05CE98 8005D2E8 8FB50034 */  lw          $s5, 0x34($sp)
/* 05CE9C 8005D2EC 8FB60038 */  lw          $s6, 0x38($sp)
/* 05CEA0 8005D2F0 03E00008 */  jr          $ra
/* 05CEA4 8005D2F4 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8005D2F8 # 1
/* 05CEA8 8005D2F8 24010002 */  addiu       $at, $zero, 0x2
/* 05CEAC 8005D2FC 14A10008 */  bne         $a1, $at, .L8005D320
/* 05CEB0 8005D300 8C82001C */   lw         $v0, 0x1c($a0)
/* 05CEB4 8005D304 8C8E0014 */  lw          $t6, 0x14($a0)
/* 05CEB8 8005D308 000E7880 */  sll         $t7, $t6, 2
/* 05CEBC 8005D30C 004FC021 */  addu        $t8, $v0, $t7
/* 05CEC0 8005D310 AF060000 */  sw          $a2, 0x0($t8)
/* 05CEC4 8005D314 8C990014 */  lw          $t9, 0x14($a0)
/* 05CEC8 8005D318 27280001 */  addiu       $t0, $t9, 0x1
/* 05CECC 8005D31C AC880014 */  sw          $t0, 0x14($a0)
.L8005D320:
/* 05CED0 8005D320 03E00008 */  jr          $ra
/* 05CED4 8005D324 00001025 */   move       $v0, $zero
/* 05CED8 8005D328 00000000 */  nop
/* 05CEDC 8005D32C 00000000 */  nop
