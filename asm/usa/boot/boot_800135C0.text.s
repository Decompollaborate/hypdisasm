.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800135C0 # 0
/* 000000 800135C0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 000004 800135C4 8FAE0030 */  lw          $t6, 0x30($sp)
/* 000008 800135C8 AFA50024 */  sw          $a1, 0x24($sp)
/* 00000C 800135CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 000010 800135D0 AFA40020 */  sw          $a0, 0x20($sp)
/* 000014 800135D4 01C72823 */  subu        $a1, $t6, $a3
/* 000018 800135D8 AFA60028 */  sw          $a2, 0x28($sp)
/* 00001C 800135DC AFA5001C */  sw          $a1, 0x1c($sp)
/* 000020 800135E0 00E02025 */  move        $a0, $a3
/* 000024 800135E4 0C014388 */  jal         func_80050E20
/* 000028 800135E8 AFA7002C */   sw         $a3, 0x2c($sp)
/* 00002C 800135EC 8FA40034 */  lw          $a0, 0x34($sp)
/* 000030 800135F0 8FAF0038 */  lw          $t7, 0x38($sp)
/* 000034 800135F4 01E42823 */  subu        $a1, $t7, $a0
/* 000038 800135F8 0C014388 */  jal         func_80050E20
/* 00003C 800135FC AFA50018 */   sw         $a1, 0x18($sp)
/* 000040 80013600 8FA4002C */  lw          $a0, 0x2c($sp)
/* 000044 80013604 0C014E18 */  jal         func_80053860
/* 000048 80013608 8FA5001C */   lw         $a1, 0x1c($sp)
/* 00004C 8001360C 8FA40034 */  lw          $a0, 0x34($sp)
/* 000050 80013610 0C014CD0 */  jal         func_80053340
/* 000054 80013614 8FA50018 */   lw         $a1, 0x18($sp)
/* 000058 80013618 8FA40020 */  lw          $a0, 0x20($sp)
/* 00005C 8001361C 8FB80024 */  lw          $t8, 0x24($sp)
/* 000060 80013620 8FA50028 */  lw          $a1, 0x28($sp)
/* 000064 80013624 0C00DEC7 */  jal         func_80037B1C
/* 000068 80013628 03043023 */   subu       $a2, $t8, $a0
/* 00006C 8001362C 8FA4003C */  lw          $a0, 0x3c($sp)
/* 000070 80013630 8FB90040 */  lw          $t9, 0x40($sp)
/* 000074 80013634 0C014388 */  jal         func_80050E20
/* 000078 80013638 03242823 */   subu       $a1, $t9, $a0
/* 00007C 8001363C 8FA20040 */  lw          $v0, 0x40($sp)
/* 000080 80013640 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000084 80013644 2401FFF0 */  addiu       $at, $zero, -0x10
/* 000088 80013648 2442000F */  addiu       $v0, $v0, 0xf
/* 00008C 8001364C 00414024 */  and         $t0, $v0, $at
/* 000090 80013650 01001025 */  move        $v0, $t0
/* 000094 80013654 03E00008 */  jr          $ra
/* 000098 80013658 27BD0020 */   addiu      $sp, $sp, 0x20
/* 00009C 8001365C 00000000 */  nop
