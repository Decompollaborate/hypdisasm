.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80059FB0 # 0
/* 000000 80059FB0 C4840000 */  lwc1        $f4, 0x0($a0)
/* 000004 80059FB4 C4A60000 */  lwc1        $f6, 0x0($a1)
/* 000008 80059FB8 C4C80000 */  lwc1        $f8, 0x0($a2)
/* 00000C 80059FBC 46042282 */  mul.s       $f10, $f4, $f4
/* 000010 80059FC0 3C083F80 */  lui         $t0, 0x3f80
/* 000014 80059FC4 46063402 */  mul.s       $f16, $f6, $f6
/* 000018 80059FC8 46105480 */  add.s       $f18, $f10, $f16
/* 00001C 80059FCC 46084402 */  mul.s       $f16, $f8, $f8
/* 000020 80059FD0 46128280 */  add.s       $f10, $f16, $f18
/* 000024 80059FD4 44889000 */  mtc1        $t0, $f18
/* 000028 80059FD8 46005404 */  sqrt.s      $f16, $f10
/* 00002C 80059FDC 46109283 */  div.s       $f10, $f18, $f16
/* 000030 80059FE0 460A2402 */  mul.s       $f16, $f4, $f10
/* 000034 80059FE4 00000000 */  nop
/* 000038 80059FE8 460A3482 */  mul.s       $f18, $f6, $f10
/* 00003C 80059FEC 00000000 */  nop
/* 000040 80059FF0 460A4102 */  mul.s       $f4, $f8, $f10
/* 000044 80059FF4 E4900000 */  swc1        $f16, 0x0($a0)
/* 000048 80059FF8 E4B20000 */  swc1        $f18, 0x0($a1)
/* 00004C 80059FFC 03E00008 */  jr          $ra
/* 000050 8005A000 E4C40000 */   swc1       $f4, 0x0($a2)
/* 000054 8005A004 00000000 */  nop
/* 000058 8005A008 00000000 */  nop
/* 00005C 8005A00C 00000000 */  nop
