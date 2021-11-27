.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005D660 # 0
/* 05D210 8005D660 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 05D214 8005D664 00054400 */  sll         $t0, $a1, 16
/* 05D218 8005D668 00087403 */  sra         $t6, $t0, 16
/* 05D21C 8005D66C AFB10018 */  sw          $s1, 0x18($sp)
/* 05D220 8005D670 000E8880 */  sll         $s1, $t6, 2
/* 05D224 8005D674 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05D228 8005D678 AFB00014 */  sw          $s0, 0x14($sp)
/* 05D22C 8005D67C AFA50024 */  sw          $a1, 0x24($sp)
/* 05D230 8005D680 022E8821 */  addu        $s1, $s1, $t6
/* 05D234 8005D684 8C8F0034 */  lw          $t7, 0x34($a0)
/* 05D238 8005D688 00118880 */  sll         $s1, $s1, 2
/* 05D23C 8005D68C 022E8823 */  subu        $s1, $s1, $t6
/* 05D240 8005D690 00808025 */  move        $s0, $a0
/* 05D244 8005D694 00118880 */  sll         $s1, $s1, 2
/* 05D248 8005D698 00C02825 */  move        $a1, $a2
/* 05D24C 8005D69C 01F12021 */  addu        $a0, $t7, $s1
/* 05D250 8005D6A0 24840020 */  addiu       $a0, $a0, 0x20
/* 05D254 8005D6A4 0C014C94 */  jal         func_80053250
/* 05D258 8005D6A8 00E03025 */   move       $a2, $a3
/* 05D25C 8005D6AC 8E180034 */  lw          $t8, 0x34($s0)
/* 05D260 8005D6B0 24050001 */  addiu       $a1, $zero, 0x1
/* 05D264 8005D6B4 03113021 */  addu        $a2, $t8, $s1
/* 05D268 8005D6B8 0C014FE1 */  jal         func_80053F84
/* 05D26C 8005D6BC 24C40020 */   addiu      $a0, $a2, 0x20
/* 05D270 8005D6C0 8E190034 */  lw          $t9, 0x34($s0)
/* 05D274 8005D6C4 8E040030 */  lw          $a0, 0x30($s0)
/* 05D278 8005D6C8 24050002 */  addiu       $a1, $zero, 0x2
/* 05D27C 8005D6CC 03313021 */  addu        $a2, $t9, $s1
/* 05D280 8005D6D0 0C016E20 */  jal         func_8005B880
/* 05D284 8005D6D4 24C60020 */   addiu      $a2, $a2, 0x20
/* 05D288 8005D6D8 8E0A0034 */  lw          $t2, 0x34($s0)
/* 05D28C 8005D6DC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 05D290 8005D6E0 8FB00014 */  lw          $s0, 0x14($sp)
/* 05D294 8005D6E4 01511021 */  addu        $v0, $t2, $s1
/* 05D298 8005D6E8 8FB10018 */  lw          $s1, 0x18($sp)
/* 05D29C 8005D6EC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 05D2A0 8005D6F0 03E00008 */  jr          $ra
/* 05D2A4 8005D6F4 24420020 */   addiu      $v0, $v0, 0x20
/* 05D2A8 8005D6F8 00000000 */  nop
/* 05D2AC 8005D6FC 00000000 */  nop
