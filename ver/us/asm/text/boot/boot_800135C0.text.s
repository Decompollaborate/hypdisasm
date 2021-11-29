.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800135C0_LoadOverlay # 0
/* 013170 800135C0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013174 800135C4 8FAE0030 */  lw          $t6, 0x30($sp)
/* 013178 800135C8 AFA50024 */  sw          $a1, 0x24($sp)
/* 01317C 800135CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 013180 800135D0 AFA40020 */  sw          $a0, 0x20($sp)
/* 013184 800135D4 01C72823 */  subu        $a1, $t6, $a3
/* 013188 800135D8 AFA60028 */  sw          $a2, 0x28($sp)
/* 01318C 800135DC AFA5001C */  sw          $a1, 0x1c($sp)
/* 013190 800135E0 00E02025 */  move        $a0, $a3
/* 013194 800135E4 0C014388 */  jal         bzero
/* 013198 800135E8 AFA7002C */   sw         $a3, 0x2c($sp)
/* 01319C 800135EC 8FA40034 */  lw          $a0, 0x34($sp)
/* 0131A0 800135F0 8FAF0038 */  lw          $t7, 0x38($sp)
/* 0131A4 800135F4 01E42823 */  subu        $a1, $t7, $a0
/* 0131A8 800135F8 0C014388 */  jal         bzero
/* 0131AC 800135FC AFA50018 */   sw         $a1, 0x18($sp)
/* 0131B0 80013600 8FA4002C */  lw          $a0, 0x2c($sp)
/* 0131B4 80013604 0C014E18 */  jal         osInvalICache
/* 0131B8 80013608 8FA5001C */   lw         $a1, 0x1c($sp)
/* 0131BC 8001360C 8FA40034 */  lw          $a0, 0x34($sp)
/* 0131C0 80013610 0C014CD0 */  jal         osInvalDCache
/* 0131C4 80013614 8FA50018 */   lw         $a1, 0x18($sp)
/* 0131C8 80013618 8FA40020 */  lw          $a0, 0x20($sp)
/* 0131CC 8001361C 8FB80024 */  lw          $t8, 0x24($sp)
/* 0131D0 80013620 8FA50028 */  lw          $a1, 0x28($sp)
/* 0131D4 80013624 0C00DEC7 */  jal         func_80037B1C_RomToRam
/* 0131D8 80013628 03043023 */   subu       $a2, $t8, $a0
/* 0131DC 8001362C 8FA4003C */  lw          $a0, 0x3c($sp)
/* 0131E0 80013630 8FB90040 */  lw          $t9, 0x40($sp)
/* 0131E4 80013634 0C014388 */  jal         bzero
/* 0131E8 80013638 03242823 */   subu       $a1, $t9, $a0
/* 0131EC 8001363C 8FA20040 */  lw          $v0, 0x40($sp)
/* 0131F0 80013640 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0131F4 80013644 2401FFF0 */  addiu       $at, $zero, -0x10
/* 0131F8 80013648 2442000F */  addiu       $v0, $v0, 0xf
/* 0131FC 8001364C 00414024 */  and         $t0, $v0, $at
/* 013200 80013650 01001025 */  move        $v0, $t0
/* 013204 80013654 03E00008 */  jr          $ra
/* 013208 80013658 27BD0020 */   addiu      $sp, $sp, 0x20
/* 01320C 8001365C 00000000 */  nop
