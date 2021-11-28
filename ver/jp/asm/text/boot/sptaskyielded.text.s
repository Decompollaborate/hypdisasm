.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osSpTaskYielded # 0
/* 051DF0 80052240 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 051DF4 80052244 AFBF0014 */  sw          $ra, 0x14($sp)
/* 051DF8 80052248 0C01652C */  jal         __osSpGetStatus
/* 051DFC 8005224C AFA40020 */   sw         $a0, 0x20($sp)
/* 051E00 80052250 AFA2001C */  sw          $v0, 0x1c($sp)
/* 051E04 80052254 8FAE001C */  lw          $t6, 0x1c($sp)
/* 051E08 80052258 31CF0100 */  andi        $t7, $t6, 0x100
/* 051E0C 8005225C 11E00004 */  beqz        $t7, .L80052270
/* 051E10 80052260 00000000 */   nop
/* 051E14 80052264 24180001 */  addiu       $t8, $zero, 0x1
/* 051E18 80052268 10000002 */  b           .L80052274
/* 051E1C 8005226C AFB80018 */   sw         $t8, 0x18($sp)
.L80052270:
/* 051E20 80052270 AFA00018 */  sw          $zero, 0x18($sp)
.L80052274:
/* 051E24 80052274 8FB9001C */  lw          $t9, 0x1c($sp)
/* 051E28 80052278 33280080 */  andi        $t0, $t9, 0x80
/* 051E2C 8005227C 1100000B */  beqz        $t0, .L800522AC
/* 051E30 80052280 00000000 */   nop
/* 051E34 80052284 8FA90020 */  lw          $t1, 0x20($sp)
/* 051E38 80052288 8FAB0018 */  lw          $t3, 0x18($sp)
/* 051E3C 8005228C 2401FFFD */  addiu       $at, $zero, -0x3
/* 051E40 80052290 8D2A0004 */  lw          $t2, 0x4($t1)
/* 051E44 80052294 014B6025 */  or          $t4, $t2, $t3
/* 051E48 80052298 AD2C0004 */  sw          $t4, 0x4($t1)
/* 051E4C 8005229C 8FAD0020 */  lw          $t5, 0x20($sp)
/* 051E50 800522A0 8DAE0004 */  lw          $t6, 0x4($t5)
/* 051E54 800522A4 01C17824 */  and         $t7, $t6, $at
/* 051E58 800522A8 ADAF0004 */  sw          $t7, 0x4($t5)
.L800522AC:
/* 051E5C 800522AC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 051E60 800522B0 8FA20018 */  lw          $v0, 0x18($sp)
/* 051E64 800522B4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 051E68 800522B8 03E00008 */  jr          $ra
/* 051E6C 800522BC 00000000 */   nop
