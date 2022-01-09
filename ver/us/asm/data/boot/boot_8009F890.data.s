.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel __osThreadTail
/* 09F440 8009F890 */ .word 0x00000000
/* 09F444 8009F894 */ .word 0xFFFFFFFF

glabel __osRunQueue
/* 09F448 8009F898 */ .word __osThreadTail

glabel __osActiveQueue
/* 09F44C 8009F89C */ .word __osThreadTail

glabel __osRunningThread
/* 09F450 8009F8A0 */ .word 0x00000000

glabel __osFaultedThread
/* 09F454 8009F8A4 */ .word 0x00000000
/* 09F458 8009F8A8 */ .word 0x00000000
/* 09F45C 8009F8AC */ .word 0x00000000

glabel __osSiAccessQueueEnabled
/* 09F460 8009F8B0 */ .word 0x00000000
/* 09F464 8009F8B4 */ .word 0x00000000
/* 09F468 8009F8B8 */ .word 0x00000000
/* 09F46C 8009F8BC */ .word 0x00000000

glabel __osPfsLastChannel
/* 09F470 8009F8C0 */ .word 0xFFFFFFFF
/* 09F474 8009F8C4 */ .word 0x00000000
/* 09F478 8009F8C8 */ .word 0x00000000
/* 09F47C 8009F8CC */ .word 0x00000000

glabel __osTimerList
/* 09F480 8009F8D0 */ .word D_80100330
/* 09F484 8009F8D4 */ .word 0x00000000
/* 09F488 8009F8D8 */ .word 0x00000000
/* 09F48C 8009F8DC */ .word 0x00000000

glabel __osPiAccessQueueEnabled
/* 09F490 8009F8E0 */ .word 0x00000000
/* 09F494 8009F8E4 */ .word 0x00000000
/* 09F498 8009F8E8 */ .word 0x00000000
/* 09F49C 8009F8EC */ .word 0x00000000

glabel D_8009F8F0
/* 09F4A0 8009F8F0 */ .word 0x00000000
/* 09F4A4 8009F8F4 */ .word 0x00000000
/* 09F4A8 8009F8F8 */ .word 0x00000000
/* 09F4AC 8009F8FC */ .word 0x00000000
/* 09F4B0 8009F900 */ .word 0x00000000
/* 09F4B4 8009F904 */ .word 0x00000000
/* 09F4B8 8009F908 */ .word 0x00000000
/* 09F4BC 8009F90C */ .word 0x00000000
/* 09F4C0 8009F910 */ .word 0x00000000
/* 09F4C4 8009F914 */ .word 0x00000000
/* 09F4C8 8009F918 */ .word 0x00000000
/* 09F4CC 8009F91C */ .word 0x00000000
/* 09F4D0 8009F920 */ .word 0x00000000
/* 09F4D4 8009F924 */ .word 0x00000000
/* 09F4D8 8009F928 */ .word 0x00000000
/* 09F4DC 8009F92C */ .word 0x00000000
/* 09F4E0 8009F930 */ .word 0x00000000
/* 09F4E4 8009F934 */ .word 0x00000000
/* 09F4E8 8009F938 */ .word 0x00000000
/* 09F4EC 8009F93C */ .word 0x00000000
/* 09F4F0 8009F940 */ .word 0x00000000
/* 09F4F4 8009F944 */ .word 0x00000000
/* 09F4F8 8009F948 */ .word 0x00000000
/* 09F4FC 8009F94C */ .word 0x00000000

glabel __osViCurr
/* 09F500 8009F950 */ .word D_8009F8F0

glabel __osViNext
/* 09F504 8009F954 */ .word 0x8009F920
/* 09F508 8009F958 */ .word 0x00000000
/* 09F50C 8009F95C */ .word 0x00000000
