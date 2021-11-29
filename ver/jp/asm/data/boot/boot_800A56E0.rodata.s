.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A56E0
/* 0A5290 800A56E0  */  .asciz  "カセットに セーブします。"
                        .balign 4

glabel D_800A56FC
/* 0A52AC 800A56FC  */  .asciz  "セーブが おわるまで でんげんを"
                        .balign 4

glabel D_800A571C
/* 0A52CC 800A571C  */  .asciz  "きらないで ください。"
                        .balign 4

glabel D_800A5734
/* 0A52E4 800A5734  */  .asciz  " "
                        .balign 4

glabel D_800A5738
/* 0A52E8 800A5738  */  .asciz  "［］ボタンを おすと セーブします"
                        .balign 4

glabel D_800A575C
/* 0A530C 800A575C  */  .asciz  "セーブしました。"
                        .balign 4

glabel D_800A5770
/* 0A5320 800A5770  */  .asciz  "このまま でんげんを きることが できます。"
                        .balign 4

glabel D_800A579C
/* 0A534C 800A579C  */  .asciz  " "
                        .balign 4

glabel D_800A57A0
/* 0A5350 800A57A0  */  .asciz  "［］ボタンを おすと さきに すすみます"
                        .balign 4

glabel D_800A57C8
/* 0A5378 800A57C8  */  .asciz  "^cセーブできませんでした。^^"
                        .balign 4

glabel D_800A57E8
/* 0A5398 800A57E8  */  .asciz  "でんげんを きって カセットが ただしく"
                        .balign 4

glabel D_800A5810
/* 0A53C0 800A5810  */  .asciz  "ささっているか たしかめて ください。"
                        .balign 4

glabel D_800A5838
/* 0A53E8 800A5838  */  .asciz  " "
                        .balign 4

glabel D_800A583C
/* 0A53EC 800A583C  */  .asciz  "〔〕ボタンで さきに すすみます"
                        .balign 4
/* 0A540C 800A585C  */  .asciz  "\n---------------- OS info ----------------\n"
                        .balign 4
/* 0A5438 800A5888  */  .asciz  "OS   Version %4.1f%1s\n"
                        .balign 4
/* 0A5450 800A58A0  */  .asciz  "RCP  Version 1.0\n"
                        .balign 4
/* 0A5464 800A58B4  */  .asciz  "RCP  Version 2.0\n"
                        .balign 4
/* 0A5478 800A58C8  */  .asciz  "IO  Version %d\n"
                        .balign 4
/* 0A5488 800A58D8  */  .asciz  "RAC Version %d\n"
                        .balign 4
/* 0A5498 800A58E8  */  .asciz  "RDP Version %d\n"
                        .balign 4
/* 0A54A8 800A58F8  */  .asciz  "RSP Version %d\n"
                        .balign 4
/* 0A54B8 800A5908  */  .asciz  "PIF  Version %d\n"
                        .balign 4
/* 0A54CC 800A591C  */  .asciz  "DRAM size 0x%x bytes\n"
                        .balign 4
/* 0A54E4 800A5934  */  .asciz  "ROM base address of the game image is 0x%08x\n"
                        .balign 4
/* 0A5514 800A5964  */  .asciz  "UCODE Version is %s\n"
                        .balign 4
/* 0A552C 800A597C  */  .asciz  "System Clock Ratio = "
                        .balign 4
/* 0A5544 800A5994  */  .asciz  "1:1\n"
                        .balign 4
/* 0A554C 800A599C  */  .asciz  "3:2\n"
                        .balign 4
/* 0A5554 800A59A4  */  .asciz  "2:1\n"
                        .balign 4
/* 0A555C 800A59AC  */  .asciz  "3:1\n"
                        .balign 4
/* 0A5564 800A59B4  */  .asciz  "illegal value\n"
                        .balign 4
/* 0A5574 800A59C4  */  .asciz  "Video Mode is "
                        .balign 4
/* 0A5584 800A59D4  */  .asciz  "PAL\n"
                        .balign 4
/* 0A558C 800A59DC  */  .asciz  "NTSC\n"
                        .balign 4
/* 0A5594 800A59E4  */  .asciz  "MPAL\n"
                        .balign 4
/* 0A559C 800A59EC  */  .asciz  "unknown(%d)\n"
                        .balign 4
/* 0A55AC 800A59FC  */  .asciz  "ROM type is "
                        .balign 4
/* 0A55BC 800A5A0C  */  .asciz  "cartridge\n"
                        .balign 4
/* 0A55C8 800A5A18  */  .asciz  "bulk media\n"
                        .balign 4
/* 0A55D4 800A5A24  */  .asciz  "unknown(%d)\n"
                        .balign 4
/* 0A55E4 800A5A34  */  .asciz  "Reset type is "
                        .balign 4
/* 0A55F4 800A5A44  */  .asciz  "cold reset\n"
                        .balign 4
/* 0A5600 800A5A50  */  .asciz  "NMI\n"
                        .balign 4
/* 0A5608 800A5A58  */  .asciz  "unknown(%d)\n"
                        .balign 4
/* 0A5618 800A5A68  */  .asciz  "EEPROM type is "
                        .balign 4
/* 0A5628 800A5A78  */  .asciz  "none\n"
                        .balign 4
/* 0A5630 800A5A80  */  .asciz  "4K\n"
                        .balign 4
/* 0A5634 800A5A84  */  .asciz  "16K\n"
                        .balign 4
/* 0A563C 800A5A8C  */  .asciz  "unknown(%d)\n"
                        .balign 4
/* 0A564C 800A5A9C  */  .asciz  "\n"
                        .balign 4

glabel D_800A5AA0
/* 0A5650 800A5AA0  */  .asciz  "after loadAreaDlist"
                        .balign 4

glabel D_800A5AB4
/* 0A5664 800A5AB4  */  .asciz  "after initItemSystem"
                        .balign 4

glabel D_800A5ACC
/* 0A567C 800A5ACC  */  .asciz  "after initObjects()"
                        .balign 4

glabel D_800A5AE0
/* 0A5690 800A5AE0  */  .asciz  "after initMaze()"
                        .balign 4

glabel D_800A5AF4
/* 0A56A4 800A5AF4  */  .asciz  "after initPlayerParameters()"
                        .balign 4

glabel D_800A5B14
/* 0A56C4 800A5B14  */  .asciz  "after initPikachu()"
                        .balign 4

glabel D_800A5B28
/* 0A56D8 800A5B28  */  .asciz  "after createItemBox()"
                        .balign 4

glabel D_800A5B40
/* 0A56F0 800A5B40  */  .asciz  "after initMessageMode()"
                        .balign 4

glabel D_800A5B58
/* 0A5708 800A5B58  */  .asciz  "entry_initGame()"
                        .balign 4

glabel D_800A5B6C
/* 0A571C 800A5B6C  */  .asciz  "finish_initGame()"
                        .balign 4
/* 0A5730 800A5B80  */  .asciz  "\nchange program to %d\n\n"
                        .balign 4
/* 0A5748 800A5B98  */  .asciz  "total game play time = %d\n"
                        .balign 4
/* 0A5764 800A5BB4  */  .asciz  "game mode changed to %d\n"
                        .balign 4
/* 0A5780 800A5BD0  */  .asciz  "total system play time = %d\n"
                        .balign 4
/* 0A57A0 800A5BF0  */  .asciz  "Illegal saveFile:%d\n"
                        .balign 4
/* 0A57B8 800A5C08  */  .asciz  "Illegal saveState:%d\n"
                        .balign 4
/* 0A57D0 800A5C20  */  .asciz  "Unknown game mode(%d).\n"
                        .balign 4
/* 0A57E8 800A5C38  */  .asciz  "%16s: %p %p %x\n"
                        .balign 4
/* 0A57F8 800A5C48  */  .asciz  "zbuf"
                        .balign 4
/* 0A5800 800A5C50  */  .asciz  "%16s: %p %p %x\n"
                        .balign 4
/* 0A5810 800A5C60  */  .asciz  "cfb"
                        .balign 4
/* 0A5814 800A5C64  */  .asciz  "unknown program number(%d).\n"
                        .balign 4

glabel D_800A5C84
/* 0A5834 800A5C84  */  .asciz  "after songbuffinit()"
                        .balign 4

glabel D_800A5C9C
/* 0A584C 800A5C9C  */  .asciz  "after gfxInit()"
                        .balign 4
/* 0A585C 800A5CAC  */  .asciz  "MAINLOOP OUT!\n"
                        .balign 4

glabel D_800A5CBC
/* 0A586C 800A5CBC 3C888889 */  .float  0.01666666753590107

glabel D_800A5CC0
/* 0A5870 800A5CC0 3A83126F */  .float  0.0010000000474974513

glabel D_800A5CC4
/* 0A5874 800A5CC4 49742400 */  .float  1000000.0

glabel D_800A5CC8
/* 0A5878 800A5CC8 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A5CCC
/* 0A587C 800A5CCC 3E75C28F */  .float  0.23999999463558197

glabel jtbl_800A5CD0
/* 0A5880 800A5CD0 80009C0C */  .word  L80009C0C
/* 0A5884 800A5CD4 8000A254 */  .word  L8000A254
/* 0A5888 800A5CD8 8000A26C */  .word  L8000A26C
/* 0A588C 800A5CDC 8000A284 */  .word  L8000A284
/* 0A5890 800A5CE0 80009CA0 */  .word  L80009CA0
/* 0A5894 800A5CE4 80009CB0 */  .word  L80009CB0
/* 0A5898 800A5CE8 80009DB4 */  .word  L80009DB4
/* 0A589C 800A5CEC 80009E78 */  .word  L80009E78
/* 0A58A0 800A5CF0 8000A294 */  .word  L8000A294
/* 0A58A4 800A5CF4 8000A29C */  .word  L8000A29C
/* 0A58A8 800A5CF8 8000A29C */  .word  L8000A29C
/* 0A58AC 800A5CFC 80009CC0 */  .word  L80009CC0
/* 0A58B0 800A5D00 80009D34 */  .word  L80009D34
/* 0A58B4 800A5D04 80009E58 */  .word  L80009E58
/* 0A58B8 800A5D08 80009EF4 */  .word  L80009EF4
/* 0A58BC 800A5D0C 8000A054 */  .word  L8000A054
/* 0A58C0 800A5D10 80009FB4 */  .word  L80009FB4
/* 0A58C4 800A5D14 8000A190 */  .word  L8000A190
/* 0A58C8 800A5D18 80009C90 */  .word  L80009C90

glabel D_800A5D1C
/* 0A58CC 800A5D1C 3F4CCCCD */  .float  0.800000011920929

glabel D_800A5D20
/* 0A58D0 800A5D20 3F4CCCCD */  .float  0.800000011920929
/* 0A58D4 800A5D24 00000000 */  .float  0.0

glabel D_800A5D28
/* 0A58D8 800A5D28 3FB99999 */  .word  0x3FB99999

glabel D_800A5D2C
/* 0A58DC 800A5D2C A0000000 */  .word  0xA0000000

glabel D_800A5D30
/* 0A58E0 800A5D30 3F4CCCCD */  .float  0.800000011920929

glabel D_800A5D34
/* 0A58E4 800A5D34 3F4CCCCD */  .float  0.800000011920929

glabel D_800A5D38
/* 0A58E8 800A5D38 3FB99999 */  .word  0x3FB99999

glabel D_800A5D3C
/* 0A58EC 800A5D3C A0000000 */  .word  0xA0000000

glabel _string_800A5D40
/* 0A58F0 800A5D40  */  .asciz  "error: loadMat: texNum out of range: texType:%d texNum:%d \n"
                        .balign 4

glabel D_800A5D7C
/* 0A592C 800A5D7C 3A83126F */  .float  0.0010000000474974513

glabel D_800A5D80
/* 0A5930 800A5D80 BA83126F */  .float  -0.0010000000474974513

glabel D_800A5D84
/* 0A5934 800A5D84 BA83126F */  .float  -0.0010000000474974513
/* 0A5938 800A5D88 00000000 */  .float  0.0
/* 0A593C 800A5D8C 00000000 */  .float  0.0
