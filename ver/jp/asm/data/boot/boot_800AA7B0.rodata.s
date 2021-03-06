.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800AA7B0
/* 0AA360 800AA7B0 3FB99999 */  .word  0x3FB99999

glabel D_800AA7B4
/* 0AA364 800AA7B4 A0000000 */  .word  0xA0000000

glabel D_800AA7B8
/* 0AA368 800AA7B8 3F4CCCCD */  .float  0.800000011920929

glabel jtbl_800AA7BC
/* 0AA36C 800AA7BC 80027E8C */  .word  L80027E8C
/* 0AA370 800AA7C0 80027EA0 */  .word  L80027EA0
/* 0AA374 800AA7C4 80027EB4 */  .word  L80027EB4
/* 0AA378 800AA7C8 80027EC8 */  .word  L80027EC8
/* 0AA37C 800AA7CC 80027EDC */  .word  L80027EDC
/* 0AA380 800AA7D0 80027EF0 */  .word  L80027EF0
/* 0AA384 800AA7D4 80027F04 */  .word  L80027F04
/* 0AA388 800AA7D8 80027F18 */  .word  L80027F18
/* 0AA38C 800AA7DC 80027F38 */  .word  L80027F38

glabel jtbl_800AA7E0
/* 0AA390 800AA7E0 80027FF8 */  .word  L80027FF8
/* 0AA394 800AA7E4 80027F98 */  .word  L80027F98
/* 0AA398 800AA7E8 80028018 */  .word  L80028018
/* 0AA39C 800AA7EC 80027FA8 */  .word  L80027FA8
/* 0AA3A0 800AA7F0 80028028 */  .word  L80028028
/* 0AA3A4 800AA7F4 80027FB8 */  .word  L80027FB8
/* 0AA3A8 800AA7F8 80027FD8 */  .word  L80027FD8

glabel jtbl_800AA7FC
/* 0AA3AC 800AA7FC 800285F8 */  .word  L800285F8
/* 0AA3B0 800AA800 80028610 */  .word  L80028610
/* 0AA3B4 800AA804 80028628 */  .word  L80028628
/* 0AA3B8 800AA808 80028640 */  .word  L80028640
/* 0AA3BC 800AA80C 80028658 */  .word  L80028658
/* 0AA3C0 800AA810 80028670 */  .word  L80028670
/* 0AA3C4 800AA814 80028688 */  .word  L80028688
/* 0AA3C8 800AA818 80028688 */  .word  L80028688
/* 0AA3CC 800AA81C 80028688 */  .word  L80028688
/* 0AA3D0 800AA820 800286A0 */  .word  L800286A0
/* 0AA3D4 800AA824 800286A0 */  .word  L800286A0
/* 0AA3D8 800AA828 800286B8 */  .word  L800286B8
/* 0AA3DC 800AA82C 800286B8 */  .word  L800286B8
/* 0AA3E0 800AA830 800286D0 */  .word  L800286D0
/* 0AA3E4 800AA834 800286E8 */  .word  L800286E8
/* 0AA3E8 800AA838 80028700 */  .word  L80028700
/* 0AA3EC 800AA83C 80028718 */  .word  L80028718
/* 0AA3F0 800AA840 80028730 */  .word  L80028730
/* 0AA3F4 800AA844 80028730 */  .word  L80028730
/* 0AA3F8 800AA848 80028730 */  .word  L80028730
/* 0AA3FC 800AA84C 80028748 */  .word  L80028748
/* 0AA400 800AA850 80028760 */  .word  L80028760
/* 0AA404 800AA854 80028778 */  .word  L80028778

glabel jtbl_800AA858
/* 0AA408 800AA858 80028950 */  .word  L80028950
/* 0AA40C 800AA85C 80028AA8 */  .word  L80028AA8
/* 0AA410 800AA860 80028978 */  .word  L80028978
/* 0AA414 800AA864 80028AA8 */  .word  L80028AA8
/* 0AA418 800AA868 800289EC */  .word  L800289EC
/* 0AA41C 800AA86C 80028A70 */  .word  L80028A70
/* 0AA420 800AA870 80028A90 */  .word  L80028A90
/* 0AA424 800AA874 00000000 */  .word  0x00000000
/* 0AA428 800AA878 00000000 */  .word  0x00000000
/* 0AA42C 800AA87C 00000000 */  .word  0x00000000
