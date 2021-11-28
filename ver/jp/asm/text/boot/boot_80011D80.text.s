.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80011D80 # 0
/* 011930 80011D80 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011934 80011D84 8FAE0030 */  lw          $t6, 0x30($sp)
/* 011938 80011D88 AFA50024 */  sw          $a1, 0x24($sp)
/* 01193C 80011D8C AFBF0014 */  sw          $ra, 0x14($sp)
/* 011940 80011D90 AFA40020 */  sw          $a0, 0x20($sp)
/* 011944 80011D94 01C72823 */  subu        $a1, $t6, $a3
/* 011948 80011D98 AFA60028 */  sw          $a2, 0x28($sp)
/* 01194C 80011D9C AFA5001C */  sw          $a1, 0x1c($sp)
/* 011950 80011DA0 00E02025 */  move        $a0, $a3
/* 011954 80011DA4 0C013C58 */  jal         func_8004F160
/* 011958 80011DA8 AFA7002C */   sw         $a3, 0x2c($sp)
/* 01195C 80011DAC 8FA40034 */  lw          $a0, 0x34($sp)
/* 011960 80011DB0 8FAF0038 */  lw          $t7, 0x38($sp)
/* 011964 80011DB4 01E42823 */  subu        $a1, $t7, $a0
/* 011968 80011DB8 0C013C58 */  jal         func_8004F160
/* 01196C 80011DBC AFA50018 */   sw         $a1, 0x18($sp)
/* 011970 80011DC0 8FA4002C */  lw          $a0, 0x2c($sp)
/* 011974 80011DC4 0C014560 */  jal         func_80051580
/* 011978 80011DC8 8FA5001C */   lw         $a1, 0x1c($sp)
/* 01197C 80011DCC 8FA40034 */  lw          $a0, 0x34($sp)
/* 011980 80011DD0 0C0142CC */  jal         func_80050B30
/* 011984 80011DD4 8FA50018 */   lw         $a1, 0x18($sp)
/* 011988 80011DD8 8FA40020 */  lw          $a0, 0x20($sp)
/* 01198C 80011DDC 8FB80024 */  lw          $t8, 0x24($sp)
/* 011990 80011DE0 8FA50028 */  lw          $a1, 0x28($sp)
/* 011994 80011DE4 0C00D4A3 */  jal         func_8003528C_RomToRam
/* 011998 80011DE8 03043023 */   subu       $a2, $t8, $a0
/* 01199C 80011DEC 8FA4003C */  lw          $a0, 0x3c($sp)
/* 0119A0 80011DF0 8FB90040 */  lw          $t9, 0x40($sp)
/* 0119A4 80011DF4 0C013C58 */  jal         func_8004F160
/* 0119A8 80011DF8 03242823 */   subu       $a1, $t9, $a0
/* 0119AC 80011DFC 8FA20040 */  lw          $v0, 0x40($sp)
/* 0119B0 80011E00 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0119B4 80011E04 2401FFF0 */  addiu       $at, $zero, -0x10
/* 0119B8 80011E08 2442000F */  addiu       $v0, $v0, 0xf
/* 0119BC 80011E0C 00414024 */  and         $t0, $v0, $at
/* 0119C0 80011E10 01001025 */  move        $v0, $t0
/* 0119C4 80011E14 03E00008 */  jr          $ra
/* 0119C8 80011E18 27BD0020 */   addiu      $sp, $sp, 0x20
/* 0119CC 80011E1C 00000000 */  nop
