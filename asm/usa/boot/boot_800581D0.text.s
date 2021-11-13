.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800581D0 # 0
/* 000000 800581D0 3C014780 */  lui         $at, 0x4780
/* 000004 800581D4 44810000 */  mtc1        $at, $f0
/* 000008 800581D8 3C19FFFF */  lui         $t9, 0xffff
/* 00000C 800581DC 24B80020 */  addiu       $t8, $a1, 0x20
.L800581E0:
/* 000010 800581E0 C4840000 */  lwc1        $f4, 0x0($a0)
/* 000014 800581E4 C48A0004 */  lwc1        $f10, 0x4($a0)
/* 000018 800581E8 24A50004 */  addiu       $a1, $a1, 0x4
/* 00001C 800581EC 46002182 */  mul.s       $f6, $f4, $f0
/* 000020 800581F0 24840008 */  addiu       $a0, $a0, 0x8
/* 000024 800581F4 46005402 */  mul.s       $f16, $f10, $f0
/* 000028 800581F8 4600320D */  trunc.w.s   $f8, $f6
/* 00002C 800581FC 4600848D */  trunc.w.s   $f18, $f16
/* 000030 80058200 44084000 */  mfc1        $t0, $f8
/* 000034 80058204 44099000 */  mfc1        $t1, $f18
/* 000038 80058208 01195024 */  and         $t2, $t0, $t9
/* 00003C 8005820C 00086C00 */  sll         $t5, $t0, 16
/* 000040 80058210 00095C02 */  srl         $t3, $t1, 16
/* 000044 80058214 312EFFFF */  andi        $t6, $t1, 0xffff
/* 000048 80058218 014B6025 */  or          $t4, $t2, $t3
/* 00004C 8005821C 01AE7825 */  or          $t7, $t5, $t6
/* 000050 80058220 ACACFFFC */  sw          $t4, -0x4($a1)
/* 000054 80058224 14B8FFEE */  bne         $a1, $t8, .L800581E0
/* 000058 80058228 ACAF001C */   sw         $t7, 0x1c($a1)
/* 00005C 8005822C 03E00008 */  jr          $ra
/* 000060 80058230 00000000 */   nop
/* 000064 80058234 00000000 */  nop
/* 000068 80058238 00000000 */  nop
/* 00006C 8005823C 00000000 */  nop
