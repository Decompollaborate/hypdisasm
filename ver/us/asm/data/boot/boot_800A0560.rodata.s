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

glabel D_800A0584
/* 0A0134 800A0584  */  .asciz  "Do not turn the power OFF until"
                        .balign 4

glabel D_800A05A4
/* 0A0154 800A05A4  */  .asciz  "the save is complete."
                        .balign 4

glabel D_800A05BC
/* 0A016C 800A05BC  */  .asciz  " "
                        .balign 4

glabel D_800A05C0
/* 0A0170 800A05C0  */  .asciz  "Press @I@J to save."
                        .balign 4

glabel D_800A05D4
/* 0A0184 800A05D4  */  .asciz  "Your game was saved."
                        .balign 4

glabel D_800A05EC
/* 0A019C 800A05EC  */  .asciz  "You can now turn the power OFF."
                        .balign 4

glabel D_800A060C
/* 0A01BC 800A060C  */  .asciz  " "
                        .balign 4

glabel D_800A0610
/* 0A01C0 800A0610  */  .asciz  "Press @I@J to continue."
                        .balign 4

glabel D_800A0628
/* 0A01D8 800A0628  */  .asciz  "^cUnable to save data.^^"
                        .balign 4

glabel D_800A0644
/* 0A01F4 800A0644  */  .asciz  "Please turn the power OFF and"
                        .balign 4

glabel D_800A0664
/* 0A0214 800A0664  */  .asciz  "confirm that the Game Pak is"
                        .balign 4

glabel D_800A0684
/* 0A0234 800A0684  */  .asciz  "inserted correctly."
                        .balign 4

glabel D_800A0698
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
/* 0A04B8 800A0908  */  .asciz  "after loadAreaDlist"
                        .balign 4

glabel D_800A091C
/* 0A04CC 800A091C  */  .asciz  "aft-loadAreaDlist"
                        .balign 4

glabel D_800A0930
/* 0A04E0 800A0930  */  .asciz  "after initItemSystem"
                        .balign 4

glabel D_800A0948
/* 0A04F8 800A0948  */  .asciz  "after initObjects()"
                        .balign 4

glabel D_800A095C
/* 0A050C 800A095C  */  .asciz  "pre-initMaze"
                        .balign 4

glabel D_800A096C
/* 0A051C 800A096C  */  .asciz  "after initMaze()"
                        .balign 4

glabel D_800A0980
/* 0A0530 800A0980  */  .asciz  "aft-initMaze"
                        .balign 4

glabel D_800A0990
/* 0A0540 800A0990  */  .asciz  "after initPlayerParameters()"
                        .balign 4

glabel D_800A09B0
/* 0A0560 800A09B0  */  .asciz  "after initPikachu()"
                        .balign 4

glabel D_800A09C4
/* 0A0574 800A09C4  */  .asciz  "aft-initSystemMenu"
                        .balign 4

glabel D_800A09D8
/* 0A0588 800A09D8  */  .asciz  "after createItemBox()"
                        .balign 4

glabel D_800A09F0
/* 0A05A0 800A09F0  */  .asciz  "aft-createItemBox"
                        .balign 4

glabel D_800A0A04
/* 0A05B4 800A0A04  */  .asciz  "after initMessageMode()"
                        .balign 4

glabel D_800A0A1C
/* 0A05CC 800A0A1C  */  .asciz  "pre-areaInit"
                        .balign 4

glabel D_800A0A2C
/* 0A05DC 800A0A2C  */  .asciz  "aft-areaInit"
                        .balign 4

glabel D_800A0A3C
/* 0A05EC 800A0A3C  */  .asciz  "entry_initGame()"
                        .balign 4

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
/* 0A06F8 800A0B48  */  .asciz  "pre-overlay"
                        .balign 4

glabel D_800A0B54
/* 0A0704 800A0B54  */  .asciz  "pre-heapInit"
                        .balign 4

glabel D_800A0B64
/* 0A0714 800A0B64  */  .asciz  "aft-heapInit"
                        .balign 4

glabel _string_UnknownProgramNumber
/* 0A0724 800A0B74  */  .asciz  "unknown program number(%d).\n"
                        .balign 4

glabel D_800A0B94
/* 0A0744 800A0B94  */  .asciz  "after songbuffinit()"
                        .balign 4

glabel D_800A0BAC
/* 0A075C 800A0BAC  */  .asciz  "after gfxInit()"
                        .balign 4

glabel D_800A0BBC
/* 0A076C 800A0BBC  */  .asciz  "aft-gfxInit"
                        .balign 4

glabel D_800A0BC8
/* 0A0778 800A0BC8  */  .asciz  "aft-initMessengerSystem"
                        .balign 4

glabel D_800A0BE0
/* 0A0790 800A0BE0  */  .asciz  "MAINLOOP OUT!\n"
                        .balign 4

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
