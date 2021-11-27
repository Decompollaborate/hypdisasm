.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel bootproc # 0
/* 000000 80000450 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 000004 80000454 AFBF001C */  sw          $ra, 0x1c($sp)
/* 000008 80000458 0C01386C */  jal         func_8004E1B0
/* 00000C 8000045C 00000000 */   nop
/* 000010 80000460 0C013910 */  jal         func_8004E440
/* 000014 80000464 24042710 */   addiu      $a0, $zero, 0x2710
/* 000018 80000468 3C0E800B */  lui         $t6, %hi(D_800AEA28)
/* 00001C 8000046C 25CEEA28 */  addiu       $t6, $t6, %lo(D_800AEA28)
/* 000020 80000470 3C04800B */  lui         $a0, %hi(D_800AE2C8)
/* 000024 80000474 3C068000 */  lui         $a2, %hi(func_800004B4)
/* 000028 80000478 240F000A */  addiu       $t7, $zero, 0xa
/* 00002C 8000047C AFAF0014 */  sw          $t7, 0x14($sp)
/* 000030 80000480 24C604B4 */  addiu       $a2, $a2, %lo(func_800004B4)
/* 000034 80000484 2484E2C8 */  addiu       $a0, $a0, %lo(D_800AE2C8)
/* 000038 80000488 AFAE0010 */  sw          $t6, 0x10($sp)
/* 00003C 8000048C 2405000A */  addiu       $a1, $zero, 0xa
/* 000040 80000490 0C013968 */  jal         func_8004E5A0
/* 000044 80000494 00003825 */   move       $a3, $zero
/* 000048 80000498 3C04800B */  lui         $a0, %hi(D_800AE2C8)
/* 00004C 8000049C 0C0139BC */  jal         func_8004E6F0
/* 000050 800004A0 2484E2C8 */   addiu      $a0, $a0, %lo(D_800AE2C8)
/* 000054 800004A4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 000058 800004A8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00005C 800004AC 03E00008 */  jr          $ra
/* 000060 800004B0 00000000 */   nop

glabel func_800004B4 # 1
/* 000064 800004B4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000068 800004B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00006C 800004BC 0C00D494 */  jal         func_80035250
/* 000070 800004C0 AFA40018 */   sw         $a0, 0x18($sp)
/* 000074 800004C4 0C00D496 */  jal         func_80035258
/* 000078 800004C8 00000000 */   nop
/* 00007C 800004CC 3C04800B */  lui         $a0, %hi(D_800ADC40)
/* 000080 800004D0 0C002A1F */  jal         func_8000A87C
/* 000084 800004D4 2484DC40 */   addiu      $a0, $a0, %lo(D_800ADC40)
/* 000088 800004D8 00002025 */  move        $a0, $zero
/* 00008C 800004DC 0C013A10 */  jal         func_8004E840
/* 000090 800004E0 00002825 */   move       $a1, $zero
.L800004E4:
/* 000094 800004E4 1000FFFF */  b           .L800004E4
/* 000098 800004E8 00000000 */   nop
/* 00009C 800004EC 00000000 */  nop
/* 0000A0 800004F0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0000A4 800004F4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0000A8 800004F8 03E00008 */  jr          $ra
/* 0000AC 800004FC 00000000 */   nop

glabel func_80000500 # 2
/* 0000B0 80000500 03E00008 */  jr          $ra
/* 0000B4 80000504 00000000 */   nop

glabel func_80000508 # 3
/* 0000B8 80000508 03E00008 */  jr          $ra
/* 0000BC 8000050C 00000000 */   nop
