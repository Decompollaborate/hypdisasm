.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel sCpuExceptions
/* 09D100 8009D550 */ .word D_80000000
/* 09D104 8009D554 */ .word D_80000000
/* 09D108 8009D558 */ .word D_800A7460
/* 09D10C 8009D55C */ .word 0x00008000
/* 09D110 8009D560 */ .word 0x00008000
/* 09D114 8009D564 */ .word D_800A7464
/* 09D118 8009D568 */ .word 0x00004000
/* 09D11C 8009D56C */ .word 0x00004000
/* 09D120 8009D570 */ .word D_800A7468
/* 09D124 8009D574 */ .word 0x00002000
/* 09D128 8009D578 */ .word 0x00002000
/* 09D12C 8009D57C */ .word D_800A746C
/* 09D130 8009D580 */ .word 0x00001000
/* 09D134 8009D584 */ .word 0x00001000
/* 09D138 8009D588 */ .word D_800A7470
/* 09D13C 8009D58C */ .word 0x00000800
/* 09D140 8009D590 */ .word 0x00000800
/* 09D144 8009D594 */ .word D_800A7474
/* 09D148 8009D598 */ .word 0x00000400
/* 09D14C 8009D59C */ .word 0x00000400
/* 09D150 8009D5A0 */ .word D_800A7478
/* 09D154 8009D5A4 */ .word 0x00000200
/* 09D158 8009D5A8 */ .word 0x00000200
/* 09D15C 8009D5AC */ .word D_800A747C
/* 09D160 8009D5B0 */ .word 0x00000100
/* 09D164 8009D5B4 */ .word 0x00000100
/* 09D168 8009D5B8 */ .word D_800A7480
/* 09D16C 8009D5BC */ .word 0x0000007C
/* 09D170 8009D5C0 */ .word 0x00000000
/* 09D174 8009D5C4 */ .word D_800A7484
/* 09D178 8009D5C8 */ .word 0x0000007C
/* 09D17C 8009D5CC */ .word 0x00000004
/* 09D180 8009D5D0 */ .word D_800A7490
/* 09D184 8009D5D4 */ .word 0x0000007C
/* 09D188 8009D5D8 */ .word 0x00000008
/* 09D18C 8009D5DC */ .word D_800A74AC
/* 09D190 8009D5E0 */ .word 0x0000007C
/* 09D194 8009D5E4 */ .word 0x0000000C
/* 09D198 8009D5E8 */ .word D_800A74D8
/* 09D19C 8009D5EC */ .word 0x0000007C
/* 09D1A0 8009D5F0 */ .word 0x00000010
/* 09D1A4 8009D5F4 */ .word D_800A74F0
/* 09D1A8 8009D5F8 */ .word 0x0000007C
/* 09D1AC 8009D5FC */ .word 0x00000014
/* 09D1B0 8009D600 */ .word D_800A751C
/* 09D1B4 8009D604 */ .word 0x0000007C
/* 09D1B8 8009D608 */ .word 0x00000018
/* 09D1BC 8009D60C */ .word D_800A7534
/* 09D1C0 8009D610 */ .word 0x0000007C
/* 09D1C4 8009D614 */ .word 0x0000001C
/* 09D1C8 8009D618 */ .word D_800A7560
/* 09D1CC 8009D61C */ .word 0x0000007C
/* 09D1D0 8009D620 */ .word 0x00000020
/* 09D1D4 8009D624 */ .word D_800A7588
/* 09D1D8 8009D628 */ .word 0x0000007C
/* 09D1DC 8009D62C */ .word 0x00000024
/* 09D1E0 8009D630 */ .word D_800A75A0
/* 09D1E4 8009D634 */ .word 0x0000007C
/* 09D1E8 8009D638 */ .word 0x00000028
/* 09D1EC 8009D63C */ .word D_800A75B8
/* 09D1F0 8009D640 */ .word 0x0000007C
/* 09D1F4 8009D644 */ .word 0x0000002C
/* 09D1F8 8009D648 */ .word D_800A75D8
/* 09D1FC 8009D64C */ .word 0x0000007C
/* 09D200 8009D650 */ .word 0x00000030
/* 09D204 8009D654 */ .word D_800A75F8
/* 09D208 8009D658 */ .word 0x0000007C
/* 09D20C 8009D65C */ .word 0x00000034
/* 09D210 8009D660 */ .word D_800A7618
/* 09D214 8009D664 */ .word 0x0000007C
/* 09D218 8009D668 */ .word 0x00000038
/* 09D21C 8009D66C */ .word D_800A7628
/* 09D220 8009D670 */ .word 0x0000007C
/* 09D224 8009D674 */ .word 0x0000003C
/* 09D228 8009D678 */ .word D_800A7658
/* 09D22C 8009D67C */ .word 0x0000007C
/* 09D230 8009D680 */ .word 0x0000005C
/* 09D234 8009D684 */ .word D_800A7680
/* 09D238 8009D688 */ .word 0x0000007C
/* 09D23C 8009D68C */ .word 0x0000007C
/* 09D240 8009D690 */ .word D_800A7698
/* 09D244 8009D694 */ .word 0x00000000
/* 09D248 8009D698 */ .word 0x00000000
/* 09D24C 8009D69C */ .word D_800A76C8

glabel D_8009D6A0
/* 09D250 8009D6A0 */ .word D_80000000
/* 09D254 8009D6A4 */ .word D_80000000
/* 09D258 8009D6A8 */ .word D_800A76CC
/* 09D25C 8009D6AC */ .word 0x40000000
/* 09D260 8009D6B0 */ .word 0x40000000
/* 09D264 8009D6B4 */ .word D_800A76D0
/* 09D268 8009D6B8 */ .word 0x20000000
/* 09D26C 8009D6BC */ .word 0x20000000
/* 09D270 8009D6C0 */ .word D_800A76D4
/* 09D274 8009D6C4 */ .word 0x10000000
/* 09D278 8009D6C8 */ .word 0x10000000
/* 09D27C 8009D6CC */ .word D_800A76D8
/* 09D280 8009D6D0 */ .word 0x08000000
/* 09D284 8009D6D4 */ .word 0x08000000
/* 09D288 8009D6D8 */ .word D_800A76DC
/* 09D28C 8009D6DC */ .word 0x04000000
/* 09D290 8009D6E0 */ .word 0x04000000
/* 09D294 8009D6E4 */ .word D_800A76E0
/* 09D298 8009D6E8 */ .word 0x02000000
/* 09D29C 8009D6EC */ .word 0x02000000
/* 09D2A0 8009D6F0 */ .word D_800A76E4
/* 09D2A4 8009D6F4 */ .word 0x00400000
/* 09D2A8 8009D6F8 */ .word 0x00400000
/* 09D2AC 8009D6FC */ .word D_800A76E8
/* 09D2B0 8009D700 */ .word 0x00200000
/* 09D2B4 8009D704 */ .word 0x00200000
/* 09D2B8 8009D708 */ .word D_800A76EC
/* 09D2BC 8009D70C */ .word 0x00100000
/* 09D2C0 8009D710 */ .word 0x00100000
/* 09D2C4 8009D714 */ .word D_800A76F0
/* 09D2C8 8009D718 */ .word 0x00040000
/* 09D2CC 8009D71C */ .word 0x00040000
/* 09D2D0 8009D720 */ .word D_800A76F4
/* 09D2D4 8009D724 */ .word 0x00020000
/* 09D2D8 8009D728 */ .word 0x00020000
/* 09D2DC 8009D72C */ .word D_800A76F8
/* 09D2E0 8009D730 */ .word 0x00010000
/* 09D2E4 8009D734 */ .word 0x00010000
/* 09D2E8 8009D738 */ .word D_800A76FC
/* 09D2EC 8009D73C */ .word 0x00008000
/* 09D2F0 8009D740 */ .word 0x00008000
/* 09D2F4 8009D744 */ .word D_800A7700
/* 09D2F8 8009D748 */ .word 0x00004000
/* 09D2FC 8009D74C */ .word 0x00004000
/* 09D300 8009D750 */ .word D_800A7704
/* 09D304 8009D754 */ .word 0x00002000
/* 09D308 8009D758 */ .word 0x00002000
/* 09D30C 8009D75C */ .word D_800A7708
/* 09D310 8009D760 */ .word 0x00001000
/* 09D314 8009D764 */ .word 0x00001000
/* 09D318 8009D768 */ .word D_800A770C
/* 09D31C 8009D76C */ .word 0x00000800
/* 09D320 8009D770 */ .word 0x00000800
/* 09D324 8009D774 */ .word D_800A7710
/* 09D328 8009D778 */ .word 0x00000400
/* 09D32C 8009D77C */ .word 0x00000400
/* 09D330 8009D780 */ .word D_800A7714
/* 09D334 8009D784 */ .word 0x00000200
/* 09D338 8009D788 */ .word 0x00000200
/* 09D33C 8009D78C */ .word D_800A7718
/* 09D340 8009D790 */ .word 0x00000100
/* 09D344 8009D794 */ .word 0x00000100
/* 09D348 8009D798 */ .word D_800A771C
/* 09D34C 8009D79C */ .word 0x00000080
/* 09D350 8009D7A0 */ .word 0x00000080
/* 09D354 8009D7A4 */ .word D_800A7720
/* 09D358 8009D7A8 */ .word 0x00000040
/* 09D35C 8009D7AC */ .word 0x00000040
/* 09D360 8009D7B0 */ .word D_800A7724
/* 09D364 8009D7B4 */ .word 0x00000020
/* 09D368 8009D7B8 */ .word 0x00000020
/* 09D36C 8009D7BC */ .word D_800A7728
/* 09D370 8009D7C0 */ .word 0x00000018
/* 09D374 8009D7C4 */ .word 0x00000010
/* 09D378 8009D7C8 */ .word D_800A772C
/* 09D37C 8009D7CC */ .word 0x00000018
/* 09D380 8009D7D0 */ .word 0x00000008
/* 09D384 8009D7D4 */ .word D_800A7730
/* 09D388 8009D7D8 */ .word 0x00000018
/* 09D38C 8009D7DC */ .word 0x00000000
/* 09D390 8009D7E0 */ .word D_800A7734
/* 09D394 8009D7E4 */ .word 0x00000004
/* 09D398 8009D7E8 */ .word 0x00000004
/* 09D39C 8009D7EC */ .word D_800A7738
/* 09D3A0 8009D7F0 */ .word 0x00000002
/* 09D3A4 8009D7F4 */ .word 0x00000002
/* 09D3A8 8009D7F8 */ .word D_800A773C
/* 09D3AC 8009D7FC */ .word 0x00000001
/* 09D3B0 8009D800 */ .word 0x00000001
/* 09D3B4 8009D804 */ .word D_800A7740
/* 09D3B8 8009D808 */ .word 0x00000000
/* 09D3BC 8009D80C */ .word 0x00000000
/* 09D3C0 8009D810 */ .word D_800A7744

glabel sFpuExceptions
/* 09D3C4 8009D814 */ .word 0x01000000
/* 09D3C8 8009D818 */ .word 0x01000000
/* 09D3CC 8009D81C */ .word D_800A7748
/* 09D3D0 8009D820 */ .word 0x00800000
/* 09D3D4 8009D824 */ .word 0x00800000
/* 09D3D8 8009D828 */ .word D_800A774C
/* 09D3DC 8009D82C */ .word 0x00020000
/* 09D3E0 8009D830 */ .word 0x00020000
/* 09D3E4 8009D834 */ .word D_800A7750
/* 09D3E8 8009D838 */ .word 0x00010000
/* 09D3EC 8009D83C */ .word 0x00010000
/* 09D3F0 8009D840 */ .word D_800A7768
/* 09D3F4 8009D844 */ .word 0x00008000
/* 09D3F8 8009D848 */ .word 0x00008000
/* 09D3FC 8009D84C */ .word D_800A777C
/* 09D400 8009D850 */ .word 0x00004000
/* 09D404 8009D854 */ .word 0x00004000
/* 09D408 8009D858 */ .word D_800A7790
/* 09D40C 8009D85C */ .word 0x00002000
/* 09D410 8009D860 */ .word 0x00002000
/* 09D414 8009D864 */ .word D_800A779C
/* 09D418 8009D868 */ .word 0x00001000
/* 09D41C 8009D86C */ .word 0x00001000
/* 09D420 8009D870 */ .word D_800A77A8
/* 09D424 8009D874 */ .word 0x00000800
/* 09D428 8009D878 */ .word 0x00000800
/* 09D42C 8009D87C */ .word D_800A77BC
/* 09D430 8009D880 */ .word 0x00000400
/* 09D434 8009D884 */ .word 0x00000400
/* 09D438 8009D888 */ .word D_800A77C0
/* 09D43C 8009D88C */ .word 0x00000200
/* 09D440 8009D890 */ .word 0x00000200
/* 09D444 8009D894 */ .word D_800A77C4
/* 09D448 8009D898 */ .word 0x00000100
/* 09D44C 8009D89C */ .word 0x00000100
/* 09D450 8009D8A0 */ .word D_800A77C8
/* 09D454 8009D8A4 */ .word 0x00000080
/* 09D458 8009D8A8 */ .word 0x00000080
/* 09D45C 8009D8AC */ .word D_800A77CC
/* 09D460 8009D8B0 */ .word 0x00000040
/* 09D464 8009D8B4 */ .word 0x00000040
/* 09D468 8009D8B8 */ .word D_800A77D0
/* 09D46C 8009D8BC */ .word 0x00000020
/* 09D470 8009D8C0 */ .word 0x00000020
/* 09D474 8009D8C4 */ .word D_800A77D4
/* 09D478 8009D8C8 */ .word 0x00000010
/* 09D47C 8009D8CC */ .word 0x00000010
/* 09D480 8009D8D0 */ .word D_800A77D8
/* 09D484 8009D8D4 */ .word 0x00000008
/* 09D488 8009D8D8 */ .word 0x00000008
/* 09D48C 8009D8DC */ .word D_800A77DC
/* 09D490 8009D8E0 */ .word 0x00000004
/* 09D494 8009D8E4 */ .word 0x00000004
/* 09D498 8009D8E8 */ .word D_800A77E0
/* 09D49C 8009D8EC */ .word 0x00000003
/* 09D4A0 8009D8F0 */ .word 0x00000000
/* 09D4A4 8009D8F4 */ .word D_800A77E4
/* 09D4A8 8009D8F8 */ .word 0x00000003
/* 09D4AC 8009D8FC */ .word 0x00000001
/* 09D4B0 8009D900 */ .word D_800A77E8
/* 09D4B4 8009D904 */ .word 0x00000003
/* 09D4B8 8009D908 */ .word 0x00000002
/* 09D4BC 8009D90C */ .word D_800A77EC
/* 09D4C0 8009D910 */ .word 0x00000003
/* 09D4C4 8009D914 */ .word 0x00000003
/* 09D4C8 8009D918 */ .word D_800A77F0
/* 09D4CC 8009D91C */ .word 0x00000000
/* 09D4D0 8009D920 */ .word 0x00000000
/* 09D4D4 8009D924 */ .word D_800A77F4
/* 09D4D8 8009D928 */ .word 0x00000000
/* 09D4DC 8009D92C */ .word 0x00000000