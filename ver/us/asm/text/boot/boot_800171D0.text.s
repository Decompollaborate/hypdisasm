.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800171D0 # 0
/* 016D80 800171D0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 016D84 800171D4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016D88 800171D8 3C04800B */  lui         $a0, %hi(D_800B6930)
/* 016D8C 800171DC 3C050003 */  lui         $a1, 0x3
/* 016D90 800171E0 34A52000 */  ori         $a1, $a1, 0x2000
/* 016D94 800171E4 24846930 */  addiu       $a0, $a0, %lo(D_800B6930)
/* 016D98 800171E8 2406001F */  addiu       $a2, $zero, 0x1f
/* 016D9C 800171EC 0C00FDC0 */  jal         func_8003F700
/* 016DA0 800171F0 24070010 */   addiu      $a3, $zero, 0x10
/* 016DA4 800171F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016DA8 800171F8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 016DAC 800171FC 03E00008 */  jr          $ra
/* 016DB0 80017200 00000000 */   nop

glabel func_80017204 # 1
/* 016DB4 80017204 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 016DB8 80017208 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016DBC 8001720C 3C04800B */  lui         $a0, %hi(D_800B6930)
/* 016DC0 80017210 0C00FDDC */  jal         func_8003F770
/* 016DC4 80017214 24846930 */   addiu      $a0, $a0, %lo(D_800B6930)
/* 016DC8 80017218 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016DCC 8001721C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 016DD0 80017220 03E00008 */  jr          $ra
/* 016DD4 80017224 00000000 */   nop

glabel func_80017228 # 2
/* 016DD8 80017228 3C188007 */  lui         $t8, %hi(D_80077778)
/* 016DDC 8001722C 27187778 */  addiu       $t8, $t8, %lo(D_80077778)
/* 016DE0 80017230 00057880 */  sll         $t7, $a1, 2
/* 016DE4 80017234 01F81021 */  addu        $v0, $t7, $t8
/* 016DE8 80017238 8C430000 */  lw          $v1, 0x0($v0)
/* 016DEC 8001723C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016DF0 80017240 8C480004 */  lw          $t0, 0x4($v0)
/* 016DF4 80017244 3C1900B7 */  lui         $t9, 0xb7
/* 016DF8 80017248 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016DFC 8001724C AFA50024 */  sw          $a1, 0x24($sp)
/* 016E00 80017250 00C03825 */  move        $a3, $a2
/* 016E04 80017254 27397EB0 */  addiu       $t9, $t9, 0x7eb0
/* 016E08 80017258 AFA70028 */  sw          $a3, 0x28($sp)
/* 016E0C 8001725C 00792821 */  addu        $a1, $v1, $t9
/* 016E10 80017260 AFA30018 */  sw          $v1, 0x18($sp)
/* 016E14 80017264 0C00FE12 */  jal         func_8003F848
/* 016E18 80017268 01033023 */   subu       $a2, $t0, $v1
/* 016E1C 8001726C 8FA70028 */  lw          $a3, 0x28($sp)
/* 016E20 80017270 8FA30018 */  lw          $v1, 0x18($sp)
/* 016E24 80017274 8CE90000 */  lw          $t1, 0x0($a3)
/* 016E28 80017278 01235023 */  subu        $t2, $t1, $v1
/* 016E2C 8001727C ACEA0000 */  sw          $t2, 0x0($a3)
/* 016E30 80017280 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016E34 80017284 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016E38 80017288 03E00008 */  jr          $ra
/* 016E3C 8001728C 00000000 */   nop

glabel func_80017290 # 3
/* 016E40 80017290 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016E44 80017294 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016E48 80017298 AFA40020 */  sw          $a0, 0x20($sp)
/* 016E4C 8001729C 0C005C8A */  jal         func_80017228
/* 016E50 800172A0 27A6001C */   addiu      $a2, $sp, 0x1c
/* 016E54 800172A4 24010004 */  addiu       $at, $zero, 0x4
/* 016E58 800172A8 54410004 */  bnel        $v0, $at, .L800172BC
/* 016E5C 800172AC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 016E60 800172B0 0C00FED3 */  jal         func_8003FB4C
/* 016E64 800172B4 8FA40020 */   lw         $a0, 0x20($sp)
/* 016E68 800172B8 8FBF0014 */  lw          $ra, 0x14($sp)
.L800172BC:
/* 016E6C 800172BC 8FA2001C */  lw          $v0, 0x1c($sp)
/* 016E70 800172C0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016E74 800172C4 03E00008 */  jr          $ra
/* 016E78 800172C8 00000000 */   nop

glabel func_800172CC # 4
/* 016E7C 800172CC 04800003 */  bltz        $a0, .L800172DC
/* 016E80 800172D0 288100E6 */   slti       $at, $a0, 0xe6
/* 016E84 800172D4 14200004 */  bnez        $at, .L800172E8
/* 016E88 800172D8 00047080 */   sll        $t6, $a0, 2
.L800172DC:
/* 016E8C 800172DC 3C02800A */  lui         $v0, %hi(D_800A3624)
/* 016E90 800172E0 03E00008 */  jr          $ra
/* 016E94 800172E4 24423624 */   addiu      $v0, $v0, %lo(D_800A3624)
.L800172E8:
/* 016E98 800172E8 3C028007 */  lui         $v0, %hi(D_80076CB0)
/* 016E9C 800172EC 004E1021 */  addu        $v0, $v0, $t6
/* 016EA0 800172F0 8C426CB0 */  lw          $v0, %lo(D_80076CB0)($v0)
/* 016EA4 800172F4 03E00008 */  jr          $ra
/* 016EA8 800172F8 00000000 */   nop
/* 016EAC 800172FC 00000000 */  nop
