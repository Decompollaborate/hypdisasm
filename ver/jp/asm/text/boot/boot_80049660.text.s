.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80049660 # 0
/* 049210 80049660 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 049214 80049664 AFBF0014 */  sw          $ra, 0x14($sp)
/* 049218 80049668 AFA5001C */  sw          $a1, 0x1c($sp)
/* 04921C 8004966C 8C8E0008 */  lw          $t6, 0x8($a0)
/* 049220 80049670 51C0001A */  beql        $t6, $zero, .L800496DC
/* 049224 80049674 8FBF0014 */   lw         $ra, 0x14($sp)
/* 049228 80049678 0C01275C */  jal         func_80049D70
/* 04922C 8004967C AFA40018 */   sw         $a0, 0x18($sp)
/* 049230 80049680 8FA70018 */  lw          $a3, 0x18($sp)
/* 049234 80049684 10400014 */  beqz        $v0, .L800496D8
/* 049238 80049688 00403025 */   move       $a2, $v0
/* 04923C 8004968C 3C0F800A */  lui         $t7, %hi(D_800A2E64)
/* 049240 80049690 8DEF2E64 */  lw          $t7, %lo(D_800A2E64)($t7)
/* 049244 80049694 8CF90008 */  lw          $t9, 0x8($a3)
/* 049248 80049698 240A0010 */  addiu       $t2, $zero, 0x10
/* 04924C 8004969C 8DF80028 */  lw          $t8, 0x28($t7)
/* 049250 800496A0 8F280088 */  lw          $t0, 0x88($t9)
/* 049254 800496A4 A44A0008 */  sh          $t2, 0x8($v0)
/* 049258 800496A8 24050003 */  addiu       $a1, $zero, 0x3
/* 04925C 800496AC 03084821 */  addu        $t1, $t8, $t0
/* 049260 800496B0 AC490004 */  sw          $t1, 0x4($v0)
/* 049264 800496B4 93A3001F */  lbu         $v1, 0x1f($sp)
/* 049268 800496B8 04610003 */  bgez        $v1, .L800496C8
/* 04926C 800496BC 00035823 */   negu       $t3, $v1
/* 049270 800496C0 10000002 */  b           .L800496CC
/* 049274 800496C4 AC4B000C */   sw         $t3, 0xc($v0)
.L800496C8:
/* 049278 800496C8 AC43000C */  sw          $v1, 0xc($v0)
.L800496CC:
/* 04927C 800496CC ACC00000 */  sw          $zero, 0x0($a2)
/* 049280 800496D0 0C012910 */  jal         func_8004A440
/* 049284 800496D4 8CE40008 */   lw         $a0, 0x8($a3)
.L800496D8:
/* 049288 800496D8 8FBF0014 */  lw          $ra, 0x14($sp)
.L800496DC:
/* 04928C 800496DC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 049290 800496E0 03E00008 */  jr          $ra
/* 049294 800496E4 00000000 */   nop
/* 049298 800496E8 00000000 */  nop
/* 04929C 800496EC 00000000 */  nop
