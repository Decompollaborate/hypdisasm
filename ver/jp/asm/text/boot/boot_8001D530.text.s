.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001D530 # 0
/* 01D0E0 8001D530 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01D0E4 8001D534 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D0E8 8001D538 3C048009 */  lui         $a0, %hi(D_8008E300)
/* 01D0EC 8001D53C E7AC0020 */  swc1        $f12, 0x20($sp)
/* 01D0F0 8001D540 E7AE0024 */  swc1        $f14, 0x24($sp)
/* 01D0F4 8001D544 AFA60028 */  sw          $a2, 0x28($sp)
/* 01D0F8 8001D548 AFA7002C */  sw          $a3, 0x2c($sp)
/* 01D0FC 8001D54C 0C001B92 */  jal         func_80006E48
/* 01D100 8001D550 2484E300 */   addiu      $a0, $a0, %lo(D_8008E300)
/* 01D104 8001D554 3C01800B */  lui         $at, %hi(D_800A9838)
/* 01D108 8001D558 C4209838 */  lwc1        $f0, %lo(D_800A9838)($at)
/* 01D10C 8001D55C C7A20020 */  lwc1        $f2, 0x20($sp)
/* 01D110 8001D560 C7AC0024 */  lwc1        $f12, 0x24($sp)
/* 01D114 8001D564 C7AE0028 */  lwc1        $f14, 0x28($sp)
/* 01D118 8001D568 AFA2001C */  sw          $v0, 0x1c($sp)
/* 01D11C 8001D56C E4400008 */  swc1        $f0, 0x8($v0)
/* 01D120 8001D570 E4400004 */  swc1        $f0, 0x4($v0)
/* 01D124 8001D574 E4400000 */  swc1        $f0, 0x0($v0)
/* 01D128 8001D578 E4420018 */  swc1        $f2, 0x18($v0)
/* 01D12C 8001D57C E4420044 */  swc1        $f2, 0x44($v0)
/* 01D130 8001D580 E44C001C */  swc1        $f12, 0x1c($v0)
/* 01D134 8001D584 E44C0048 */  swc1        $f12, 0x48($v0)
/* 01D138 8001D588 E44E0020 */  swc1        $f14, 0x20($v0)
/* 01D13C 8001D58C E44E004C */  swc1        $f14, 0x4c($v0)
/* 01D140 8001D590 8FAE002C */  lw          $t6, 0x2c($sp)
/* 01D144 8001D594 00402025 */  move        $a0, $v0
/* 01D148 8001D598 0C001C1B */  jal         func_8000706C
/* 01D14C 8001D59C A44E0034 */   sh         $t6, 0x34($v0)
/* 01D150 8001D5A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01D154 8001D5A4 8FA2001C */  lw          $v0, 0x1c($sp)
/* 01D158 8001D5A8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01D15C 8001D5AC 03E00008 */  jr          $ra
/* 01D160 8001D5B0 00000000 */   nop

glabel func_8001D5B4 # 1
/* 01D164 8001D5B4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01D168 8001D5B8 AFA40018 */  sw          $a0, 0x18($sp)
/* 01D16C 8001D5BC AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D170 8001D5C0 3C04800C */  lui         $a0, %hi(D_800BB3E0)
/* 01D174 8001D5C4 3C05800B */  lui         $a1, %hi(D_800A9818)
/* 01D178 8001D5C8 24A59818 */  addiu       $a1, $a1, %lo(D_800A9818)
/* 01D17C 8001D5CC 0C014589 */  jal         func_80051624
/* 01D180 8001D5D0 2484B3E0 */   addiu      $a0, $a0, %lo(D_800BB3E0)
/* 01D184 8001D5D4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01D188 8001D5D8 3C02800C */  lui         $v0, %hi(D_800BB3E0)
/* 01D18C 8001D5DC 2442B3E0 */  addiu       $v0, $v0, %lo(D_800BB3E0)
/* 01D190 8001D5E0 03E00008 */  jr          $ra
/* 01D194 8001D5E4 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8001D5E8 # 2
/* 01D198 8001D5E8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01D19C 8001D5EC AFBF0014 */  sw          $ra, 0x14($sp)
/* 01D1A0 8001D5F0 0C007314 */  jal         func_8001CC50
/* 01D1A4 8001D5F4 00000000 */   nop
/* 01D1A8 8001D5F8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01D1AC 8001D5FC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01D1B0 8001D600 03E00008 */  jr          $ra
/* 01D1B4 8001D604 00000000 */   nop
/* 01D1B8 8001D608 00000000 */  nop
/* 01D1BC 8001D60C 00000000 */  nop
