.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800559E0 # 0
/* 055590 800559E0 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 055594 800559E4 AFB00020 */  sw          $s0, 0x20($sp)
/* 055598 800559E8 30B000FF */  andi        $s0, $a1, 0xff
/* 05559C 800559EC AFBF0024 */  sw          $ra, 0x24($sp)
/* 0555A0 800559F0 AFA40058 */  sw          $a0, 0x58($sp)
/* 0555A4 800559F4 AFA5005C */  sw          $a1, 0x5c($sp)
/* 0555A8 800559F8 27A20038 */  addiu       $v0, $sp, 0x38
/* 0555AC 800559FC 27A30058 */  addiu       $v1, $sp, 0x58
.L80055A00:
/* 0555B0 80055A00 24420004 */  addiu       $v0, $v0, 0x4
/* 0555B4 80055A04 A050FFFD */  sb          $s0, -0x3($v0)
/* 0555B8 80055A08 A050FFFE */  sb          $s0, -0x2($v0)
/* 0555BC 80055A0C A050FFFF */  sb          $s0, -0x1($v0)
/* 0555C0 80055A10 1443FFFB */  bne         $v0, $v1, .L80055A00
/* 0555C4 80055A14 A050FFFC */   sb         $s0, -0x4($v0)
/* 0555C8 80055A18 8FAE0058 */  lw          $t6, 0x58($sp)
/* 0555CC 80055A1C 24060400 */  addiu       $a2, $zero, 0x400
/* 0555D0 80055A20 27A70038 */  addiu       $a3, $sp, 0x38
/* 0555D4 80055A24 8DC40004 */  lw          $a0, 0x4($t6)
/* 0555D8 80055A28 8DC50008 */  lw          $a1, 0x8($t6)
/* 0555DC 80055A2C 0C0170B0 */  jal         func_8005C2C0
/* 0555E0 80055A30 AFA00010 */   sw         $zero, 0x10($sp)
/* 0555E4 80055A34 14400003 */  bnez        $v0, .L80055A44
/* 0555E8 80055A38 00401825 */   move       $v1, $v0
/* 0555EC 80055A3C 8FAF0058 */  lw          $t7, 0x58($sp)
/* 0555F0 80055A40 A1F00065 */  sb          $s0, 0x65($t7)
.L80055A44:
/* 0555F4 80055A44 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0555F8 80055A48 8FB00020 */  lw          $s0, 0x20($sp)
/* 0555FC 80055A4C 27BD0058 */  addiu       $sp, $sp, 0x58
/* 055600 80055A50 03E00008 */  jr          $ra
/* 055604 80055A54 00601025 */   move       $v0, $v1
/* 055608 80055A58 00000000 */  nop
/* 05560C 80055A5C 00000000 */  nop
