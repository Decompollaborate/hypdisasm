.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_DataWillBeSaved
/* 0A0110 800A0560  */  .asciz  "Data will be saved to the Game Pak."
                        .balign 4
/* 0A0134 800A0584  */  .asciz  "Do not turn the power OFF until"
                        .balign 4
/* 0A0154 800A05A4  */  .asciz  "the save is complete."
                        .balign 4
/* 0A016C 800A05BC  */  .asciz  " "
                        .balign 4
/* 0A0170 800A05C0  */  .asciz  "Press @I@J to save."
                        .balign 4
/* 0A0184 800A05D4  */  .asciz  "Your game was saved."
                        .balign 4
/* 0A019C 800A05EC  */  .asciz  "You can now turn the power OFF."
                        .balign 4
/* 0A01BC 800A060C  */  .asciz  " "
                        .balign 4
/* 0A01C0 800A0610  */  .asciz  "Press @I@J to continue."
                        .balign 4
/* 0A01D8 800A0628  */  .asciz  "^cUnable to save data.^^"
                        .balign 4
/* 0A01F4 800A0644  */  .asciz  "Please turn the power OFF and"
                        .balign 4
/* 0A0214 800A0664  */  .asciz  "confirm that the Game Pak is"
                        .balign 4
/* 0A0234 800A0684  */  .asciz  "inserted correctly."
                        .balign 4
/* 0A0248 800A0698  */  .asciz  "Press @U@V to continue."
                        .balign 4
/* 0A0260 800A06B0  */  .asciz  "\n---------------- OS info ----------------\n"
                        .balign 4
/* 0A028C 800A06DC  */  .asciz  "OS   Version %4.1f%1s\n"
                        .balign 4
/* 0A02A4 800A06F4  */  .asciz  "RCP  Version 1.0\n"
                        .balign 4
/* 0A02B8 800A0708  */  .asciz  "RCP  Version 2.0\n"
                        .balign 4
/* 0A02CC 800A071C  */  .asciz  "IO  Version %d\n"
                        .balign 4
/* 0A02DC 800A072C  */  .asciz  "RAC Version %d\n"
                        .balign 4
/* 0A02EC 800A073C  */  .asciz  "RDP Version %d\n"
                        .balign 4
/* 0A02FC 800A074C  */  .asciz  "RSP Version %d\n"
                        .balign 4
/* 0A030C 800A075C  */  .asciz  "PIF  Version %d\n"
                        .balign 4
/* 0A0320 800A0770  */  .asciz  "DRAM size 0x%x bytes\n"
                        .balign 4
/* 0A0338 800A0788  */  .asciz  "ROM base address of the game image is 0x%08x\n"
                        .balign 4
/* 0A0368 800A07B8  */  .asciz  "UCODE Version is %s\n"
                        .balign 4
/* 0A0380 800A07D0  */  .asciz  "System Clock Ratio = "
                        .balign 4
/* 0A0398 800A07E8  */  .asciz  "1:1\n"
                        .balign 4
/* 0A03A0 800A07F0  */  .asciz  "3:2\n"
                        .balign 4
/* 0A03A8 800A07F8  */  .asciz  "2:1\n"
                        .balign 4
/* 0A03B0 800A0800  */  .asciz  "3:1\n"
                        .balign 4
/* 0A03B8 800A0808  */  .asciz  "illegal value\n"
                        .balign 4
/* 0A03C8 800A0818  */  .asciz  "Video Mode is "
                        .balign 4
/* 0A03D8 800A0828  */  .asciz  "PAL\n"
                        .balign 4
/* 0A03E0 800A0830  */  .asciz  "NTSC\n"
                        .balign 4
/* 0A03E8 800A0838  */  .asciz  "MPAL\n"
                        .balign 4
/* 0A03F0 800A0840  */  .asciz  "unknown(%d)\n"
                        .balign 4
/* 0A0400 800A0850  */  .asciz  "ROM type is "
                        .balign 4
/* 0A0410 800A0860  */  .asciz  "cartridge\n"
                        .balign 4
/* 0A041C 800A086C  */  .asciz  "bulk media\n"
                        .balign 4
/* 0A0428 800A0878  */  .asciz  "unknown(%d)\n"
                        .balign 4
/* 0A0438 800A0888  */  .asciz  "Reset type is "
                        .balign 4
/* 0A0448 800A0898  */  .asciz  "cold reset\n"
                        .balign 4
/* 0A0454 800A08A4  */  .asciz  "NMI\n"
                        .balign 4
/* 0A045C 800A08AC  */  .asciz  "unknown(%d)\n"
                        .balign 4
/* 0A046C 800A08BC  */  .asciz  "EEPROM type is "
                        .balign 4
/* 0A047C 800A08CC  */  .asciz  "none\n"
                        .balign 4
/* 0A0484 800A08D4  */  .asciz  "4K\n"
                        .balign 4
/* 0A0488 800A08D8  */  .asciz  "16K\n"
                        .balign 4
/* 0A0490 800A08E0  */  .asciz  "unknown(%d)\n"
                        .balign 4
/* 0A04A0 800A08F0  */  .asciz  "\n"
                        .balign 4

glabel D_800A08F4
/* 0A04A4 800A08F4  */  .asciz  "pre-loadAreaDlist"
                        .balign 4

glabel D_800A0908
/* 0A04B8 800A0908 61667465 */  .word  0x61667465
/* 0A04BC 800A090C 72206C6F */  .word  0x72206C6F
/* 0A04C0 800A0910 61644172 */  .word  0x61644172
/* 0A04C4 800A0914 6561446C */  .word  0x6561446C
/* 0A04C8 800A0918 69737400 */  .word  0x69737400

glabel D_800A091C
/* 0A04CC 800A091C 6166742D */  .word  0x6166742D
/* 0A04D0 800A0920 6C6F6164 */  .word  0x6C6F6164
/* 0A04D4 800A0924 41726561 */  .word  0x41726561
/* 0A04D8 800A0928 446C6973 */  .word  0x446C6973
/* 0A04DC 800A092C 74000000 */  .word  0x74000000

glabel D_800A0930
/* 0A04E0 800A0930 61667465 */  .word  0x61667465
/* 0A04E4 800A0934 7220696E */  .word  0x7220696E
/* 0A04E8 800A0938 69744974 */  .word  0x69744974
/* 0A04EC 800A093C 656D5379 */  .word  0x656D5379
/* 0A04F0 800A0940 7374656D */  .word  0x7374656D
/* 0A04F4 800A0944 00000000 */  .word  0x00000000

glabel D_800A0948
/* 0A04F8 800A0948 61667465 */  .word  0x61667465
/* 0A04FC 800A094C 7220696E */  .word  0x7220696E
/* 0A0500 800A0950 69744F62 */  .word  0x69744F62
/* 0A0504 800A0954 6A656374 */  .word  0x6A656374
/* 0A0508 800A0958 73282900 */  .word  0x73282900

glabel D_800A095C
/* 0A050C 800A095C 7072652D */  .word  0x7072652D
/* 0A0510 800A0960 696E6974 */  .word  0x696E6974
/* 0A0514 800A0964 4D617A65 */  .word  0x4D617A65
/* 0A0518 800A0968 00000000 */  .word  0x00000000

glabel D_800A096C
/* 0A051C 800A096C 61667465 */  .word  0x61667465
/* 0A0520 800A0970 7220696E */  .word  0x7220696E
/* 0A0524 800A0974 69744D61 */  .word  0x69744D61
/* 0A0528 800A0978 7A652829 */  .word  0x7A652829
/* 0A052C 800A097C 00000000 */  .word  0x00000000

glabel D_800A0980
/* 0A0530 800A0980 6166742D */  .word  0x6166742D
/* 0A0534 800A0984 696E6974 */  .word  0x696E6974
/* 0A0538 800A0988 4D617A65 */  .word  0x4D617A65
/* 0A053C 800A098C 00000000 */  .word  0x00000000

glabel D_800A0990
/* 0A0540 800A0990 61667465 */  .word  0x61667465
/* 0A0544 800A0994 7220696E */  .word  0x7220696E
/* 0A0548 800A0998 6974506C */  .word  0x6974506C
/* 0A054C 800A099C 61796572 */  .word  0x61796572
/* 0A0550 800A09A0 50617261 */  .word  0x50617261
/* 0A0554 800A09A4 6D657465 */  .word  0x6D657465
/* 0A0558 800A09A8 72732829 */  .word  0x72732829
/* 0A055C 800A09AC 00000000 */  .word  0x00000000

glabel D_800A09B0
/* 0A0560 800A09B0 61667465 */  .word  0x61667465
/* 0A0564 800A09B4 7220696E */  .word  0x7220696E
/* 0A0568 800A09B8 69745069 */  .word  0x69745069
/* 0A056C 800A09BC 6B616368 */  .word  0x6B616368
/* 0A0570 800A09C0 75282900 */  .word  0x75282900

glabel D_800A09C4
/* 0A0574 800A09C4 6166742D */  .word  0x6166742D
/* 0A0578 800A09C8 696E6974 */  .word  0x696E6974
/* 0A057C 800A09CC 53797374 */  .word  0x53797374
/* 0A0580 800A09D0 656D4D65 */  .word  0x656D4D65
/* 0A0584 800A09D4 6E750000 */  .word  0x6E750000

glabel D_800A09D8
/* 0A0588 800A09D8 61667465 */  .word  0x61667465
/* 0A058C 800A09DC 72206372 */  .word  0x72206372
/* 0A0590 800A09E0 65617465 */  .word  0x65617465
/* 0A0594 800A09E4 4974656D */  .word  0x4974656D
/* 0A0598 800A09E8 426F7828 */  .word  0x426F7828
/* 0A059C 800A09EC 29000000 */  .word  0x29000000

glabel D_800A09F0
/* 0A05A0 800A09F0 6166742D */  .word  0x6166742D
/* 0A05A4 800A09F4 63726561 */  .word  0x63726561
/* 0A05A8 800A09F8 74654974 */  .word  0x74654974
/* 0A05AC 800A09FC 656D426F */  .word  0x656D426F
/* 0A05B0 800A0A00 78000000 */  .word  0x78000000

glabel D_800A0A04
/* 0A05B4 800A0A04 61667465 */  .word  0x61667465
/* 0A05B8 800A0A08 7220696E */  .word  0x7220696E
/* 0A05BC 800A0A0C 69744D65 */  .word  0x69744D65
/* 0A05C0 800A0A10 73736167 */  .word  0x73736167
/* 0A05C4 800A0A14 654D6F64 */  .word  0x654D6F64
/* 0A05C8 800A0A18 65282900 */  .word  0x65282900

glabel D_800A0A1C
/* 0A05CC 800A0A1C 7072652D */  .word  0x7072652D
/* 0A05D0 800A0A20 61726561 */  .word  0x61726561
/* 0A05D4 800A0A24 496E6974 */  .word  0x496E6974
/* 0A05D8 800A0A28 00000000 */  .word  0x00000000

glabel D_800A0A2C
/* 0A05DC 800A0A2C 6166742D */  .word  0x6166742D
/* 0A05E0 800A0A30 61726561 */  .word  0x61726561
/* 0A05E4 800A0A34 496E6974 */  .word  0x496E6974
/* 0A05E8 800A0A38 00000000 */  .word  0x00000000

glabel D_800A0A3C
/* 0A05EC 800A0A3C 656E7472 */  .word  0x656E7472
/* 0A05F0 800A0A40 795F696E */  .word  0x795F696E
/* 0A05F4 800A0A44 69744761 */  .word  0x69744761
/* 0A05F8 800A0A48 6D652829 */  .word  0x6D652829
/* 0A05FC 800A0A4C 00000000 */  .word  0x00000000

glabel D_800A0A50
/* 0A0600 800A0A50  */  .asciz  "finish_initGame()"
                        .balign 4
/* 0A0614 800A0A64  */  .asciz  "\nchange program to %d\n\n"
                        .balign 4
/* 0A062C 800A0A7C  */  .asciz  "total game play time = %d\n"
                        .balign 4
/* 0A0648 800A0A98  */  .asciz  "game mode changed to %d\n"
                        .balign 4
/* 0A0664 800A0AB4  */  .asciz  "total system play time = %d\n"
                        .balign 4
/* 0A0684 800A0AD4  */  .asciz  "Illegal saveFile:%d\n"
                        .balign 4
/* 0A069C 800A0AEC  */  .asciz  "Illegal saveState:%d\n"
                        .balign 4
/* 0A06B4 800A0B04  */  .asciz  "Unknown game mode(%d).\n"
                        .balign 4
/* 0A06CC 800A0B1C  */  .asciz  "%16s: %p %p %x\n"
                        .balign 4
/* 0A06DC 800A0B2C  */  .asciz  "zbuf"
                        .balign 4
/* 0A06E4 800A0B34  */  .asciz  "%16s: %p %p %x\n"
                        .balign 4
/* 0A06F4 800A0B44  */  .asciz  "cfb"
                        .balign 4

glabel D_800A0B48
/* 0A06F8 800A0B48 7072652D */  .word  0x7072652D
/* 0A06FC 800A0B4C 6F766572 */  .word  0x6F766572
/* 0A0700 800A0B50 6C617900 */  .word  0x6C617900

glabel D_800A0B54
/* 0A0704 800A0B54 7072652D */  .word  0x7072652D
/* 0A0708 800A0B58 68656170 */  .word  0x68656170
/* 0A070C 800A0B5C 496E6974 */  .word  0x496E6974
/* 0A0710 800A0B60 00000000 */  .word  0x00000000

glabel D_800A0B64
/* 0A0714 800A0B64 6166742D */  .word  0x6166742D
/* 0A0718 800A0B68 68656170 */  .word  0x68656170
/* 0A071C 800A0B6C 496E6974 */  .word  0x496E6974
/* 0A0720 800A0B70 00000000 */  .word  0x00000000
/* 0A0724 800A0B74 756E6B6E */  .word  0x756E6B6E
/* 0A0728 800A0B78 6F776E20 */  .word  0x6F776E20
/* 0A072C 800A0B7C 70726F67 */  .word  0x70726F67
/* 0A0730 800A0B80 72616D20 */  .word  0x72616D20
/* 0A0734 800A0B84 6E756D62 */  .word  0x6E756D62
/* 0A0738 800A0B88 65722825 */  .word  0x65722825
/* 0A073C 800A0B8C 64292E0A */  .word  0x64292E0A
/* 0A0740 800A0B90 00000000 */  .word  0x00000000

glabel D_800A0B94
/* 0A0744 800A0B94 61667465 */  .word  0x61667465
/* 0A0748 800A0B98 7220736F */  .word  0x7220736F
/* 0A074C 800A0B9C 6E676275 */  .word  0x6E676275
/* 0A0750 800A0BA0 6666696E */  .word  0x6666696E
/* 0A0754 800A0BA4 69742829 */  .word  0x69742829
/* 0A0758 800A0BA8 00000000 */  .word  0x00000000

glabel D_800A0BAC
/* 0A075C 800A0BAC 61667465 */  .word  0x61667465
/* 0A0760 800A0BB0 72206766 */  .word  0x72206766
/* 0A0764 800A0BB4 78496E69 */  .word  0x78496E69
/* 0A0768 800A0BB8 74282900 */  .word  0x74282900

glabel D_800A0BBC
/* 0A076C 800A0BBC 6166742D */  .word  0x6166742D
/* 0A0770 800A0BC0 67667849 */  .word  0x67667849
/* 0A0774 800A0BC4 6E697400 */  .word  0x6E697400

glabel D_800A0BC8
/* 0A0778 800A0BC8 6166742D */  .word  0x6166742D
/* 0A077C 800A0BCC 696E6974 */  .word  0x696E6974
/* 0A0780 800A0BD0 4D657373 */  .word  0x4D657373
/* 0A0784 800A0BD4 656E6765 */  .word  0x656E6765
/* 0A0788 800A0BD8 72537973 */  .word  0x72537973
/* 0A078C 800A0BDC 74656D00 */  .word  0x74656D00
/* 0A0790 800A0BE0 4D41494E */  .word  0x4D41494E
/* 0A0794 800A0BE4 4C4F4F50 */  .word  0x4C4F4F50
/* 0A0798 800A0BE8 204F5554 */  .word  0x204F5554
/* 0A079C 800A0BEC 210A0000 */  .word  0x210A0000

glabel D_800A0BF0
/* 0A07A0 800A0BF0 3E99999A */  .float  0.30000001192092896

glabel D_800A0BF4
/* 0A07A4 800A0BF4 3D4CCCCD */  .float  0.05000000074505806

glabel D_800A0BF8
/* 0A07A8 800A0BF8 3C888889 */  .float  0.01666666753590107

glabel D_800A0BFC
/* 0A07AC 800A0BFC 3A83126F */  .float  0.0010000000474974513

glabel D_800A0C00
/* 0A07B0 800A0C00 49742400 */  .float  1000000.0

glabel D_800A0C04
/* 0A07B4 800A0C04 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A0C08
/* 0A07B8 800A0C08 3E75C28F */  .float  0.23999999463558197

glabel jtbl_800A0C0C
/* 0A07BC 800A0C0C 8000B344 */  .word  L8000B344
/* 0A07C0 800A0C10 8000B988 */  .word  L8000B988
/* 0A07C4 800A0C14 8000B9A0 */  .word  L8000B9A0
/* 0A07C8 800A0C18 8000B9B8 */  .word  L8000B9B8
/* 0A07CC 800A0C1C 8000B3D8 */  .word  L8000B3D8
/* 0A07D0 800A0C20 8000B3E8 */  .word  L8000B3E8
/* 0A07D4 800A0C24 8000B4EC */  .word  L8000B4EC
/* 0A07D8 800A0C28 8000B5B0 */  .word  L8000B5B0
/* 0A07DC 800A0C2C 8000B9C8 */  .word  L8000B9C8
/* 0A07E0 800A0C30 8000B9D0 */  .word  L8000B9D0
/* 0A07E4 800A0C34 8000B9D0 */  .word  L8000B9D0
/* 0A07E8 800A0C38 8000B3F8 */  .word  L8000B3F8
/* 0A07EC 800A0C3C 8000B46C */  .word  L8000B46C
/* 0A07F0 800A0C40 8000B590 */  .word  L8000B590
/* 0A07F4 800A0C44 8000B62C */  .word  L8000B62C
/* 0A07F8 800A0C48 8000B788 */  .word  L8000B788
/* 0A07FC 800A0C4C 8000B6EC */  .word  L8000B6EC
/* 0A0800 800A0C50 8000B8C4 */  .word  L8000B8C4
/* 0A0804 800A0C54 8000B3C8 */  .word  L8000B3C8

glabel D_800A0C58
/* 0A0808 800A0C58 3F4CCCCD */  .float  0.800000011920929

glabel D_800A0C5C
/* 0A080C 800A0C5C 3F4CCCCD */  .float  0.800000011920929

glabel D_800A0C60
/* 0A0810 800A0C60 3FB99999 */  .word  0x3FB99999

glabel D_800A0C64
/* 0A0814 800A0C64 A0000000 */  .word  0xA0000000

glabel D_800A0C68
/* 0A0818 800A0C68 3F4CCCCD */  .float  0.800000011920929

glabel D_800A0C6C
/* 0A081C 800A0C6C 3F4CCCCD */  .float  0.800000011920929

glabel D_800A0C70
/* 0A0820 800A0C70 3FB99999 */  .word  0x3FB99999

glabel D_800A0C74
/* 0A0824 800A0C74 A0000000 */  .word  0xA0000000
/* 0A0828 800A0C78 00000000 */  .word  0x00000000
/* 0A082C 800A0C7C 00000000 */  .word  0x00000000
