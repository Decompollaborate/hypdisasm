.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80054BB0 # 0
/* 000000 80054BB0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000004 80054BB4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 000008 80054BB8 AFB00018 */  sw          $s0, 0x18($sp)
/* 00000C 80054BBC 00808025 */  move        $s0, $a0
/* 000010 80054BC0 8E050004 */  lw          $a1, 0x4($s0)
/* 000014 80054BC4 8C840000 */  lw          $a0, 0x0($a0)
/* 000018 80054BC8 0C01558C */  jal         func_80055630
/* 00001C 80054BCC 27A6002B */   addiu      $a2, $sp, 0x2b
/* 000020 80054BD0 10400003 */  beq         $v0, $zero, .L80054BE0
/* 000024 80054BD4 93AE002B */   lbu        $t6, 0x2b($sp)
/* 000028 80054BD8 1000001F */  b           .L80054C58
/* 00002C 80054BDC 8FBF001C */   lw         $ra, 0x1c($sp)
.L80054BE0:
/* 000030 80054BE0 31CF0002 */  andi        $t7, $t6, 0x2
/* 000034 80054BE4 51E00004 */  beql        $t7, $zero, .L80054BF8
/* 000038 80054BE8 8E180008 */   lw         $t8, 0x8($s0)
/* 00003C 80054BEC 10000019 */  b           .L80054C54
/* 000040 80054BF0 2402000F */   addiu      $v0, $zero, 0xf
/* 000044 80054BF4 8E180008 */  lw          $t8, 0x8($s0)
.L80054BF8:
/* 000048 80054BF8 3C190500 */  lui         $t9, 0x500
/* 00004C 80054BFC 00003025 */  move        $a2, $zero
/* 000050 80054C00 13000003 */  beq         $t8, $zero, .L80054C10
/* 000054 80054C04 27A70024 */   addiu      $a3, $sp, 0x24
/* 000058 80054C08 10000012 */  b           .L80054C54
/* 00005C 80054C0C 24020005 */   addiu      $v0, $zero, 0x5
.L80054C10:
/* 000060 80054C10 AFB90024 */  sw          $t9, 0x24($sp)
/* 000064 80054C14 8E050004 */  lw          $a1, 0x4($s0)
/* 000068 80054C18 0C0156D0 */  jal         func_80055B40
/* 00006C 80054C1C 8E040000 */   lw         $a0, 0x0($s0)
/* 000070 80054C20 1440000B */  bne         $v0, $zero, .L80054C50
/* 000074 80054C24 00401825 */   move       $v1, $v0
/* 000078 80054C28 02002025 */  move        $a0, $s0
/* 00007C 80054C2C 0C01575C */  jal         func_80055D70
/* 000080 80054C30 27A5002B */   addiu      $a1, $sp, 0x2b
/* 000084 80054C34 3048FF00 */  andi        $t0, $v0, 0xff00
/* 000088 80054C38 11000003 */  beq         $t0, $zero, .L80054C48
/* 00008C 80054C3C 00401825 */   move       $v1, $v0
/* 000090 80054C40 10000003 */  b           .L80054C50
/* 000094 80054C44 24030005 */   addiu      $v1, $zero, 0x5
.L80054C48:
/* 000098 80054C48 24090001 */  addiu       $t1, $zero, 0x1
/* 00009C 80054C4C AE090008 */  sw          $t1, 0x8($s0)
.L80054C50:
/* 0000A0 80054C50 00601025 */  move        $v0, $v1
.L80054C54:
/* 0000A4 80054C54 8FBF001C */  lw          $ra, 0x1c($sp)
.L80054C58:
/* 0000A8 80054C58 8FB00018 */  lw          $s0, 0x18($sp)
/* 0000AC 80054C5C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0000B0 80054C60 03E00008 */  jr          $ra
/* 0000B4 80054C64 00000000 */   nop
/* 0000B8 80054C68 00000000 */  nop
/* 0000BC 80054C6C 00000000 */  nop
