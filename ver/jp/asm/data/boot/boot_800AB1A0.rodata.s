.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800AB1A0
/* 0AAD50 800AB1A0  */  .asciz  "^cセーブデータが よめません。^^"
                        .balign 4

glabel D_800AB1C0
/* 0AAD70 800AB1C0  */  .asciz  " "
                        .balign 4

glabel D_800AB1C4
/* 0AAD74 800AB1C4  */  .asciz  "いちど でんげんを きって、カセットが"
                        .balign 4

glabel D_800AB1EC
/* 0AAD9C 800AB1EC  */  .asciz  "きちんと ささっているか たしかめて"
                        .balign 4

glabel D_800AB210
/* 0AADC0 800AB210  */  .asciz  "ください。"
                        .balign 4

glabel D_800AB21C
/* 0AADCC 800AB21C  */  .asciz  " "
                        .balign 4

glabel D_800AB220
/* 0AADD0 800AB220  */  .asciz  "〔〕ボタンで タイトルに もどります。"
                        .balign 4

glabel D_800AB248
/* 0AADF8 800AB248  */  .asciz  "^cコントローラが ささっていません。^^"
                        .balign 4

glabel D_800AB270
/* 0AAE20 800AB270  */  .asciz  " "
                        .balign 4

glabel D_800AB274
/* 0AAE24 800AB274  */  .asciz  "でんげんを きって、コントローラを"
                        .balign 4

glabel D_800AB298
/* 0AAE48 800AB298  */  .asciz  "コントローラコネクタ１に きちんと"
                        .balign 4

glabel D_800AB2BC
/* 0AAE6C 800AB2BC  */  .asciz  "さしてください。"
                        .balign 4

glabel D_800AB2D0
/* 0AAE80 800AB2D0  */  .asciz  "^cマイクが ささっていません。^^"
                        .balign 4

glabel D_800AB2F0
/* 0AAEA0 800AB2F0  */  .asciz  " "
                        .balign 4

glabel D_800AB2F4
/* 0AAEA4 800AB2F4  */  .asciz  "でんげんを きって、マイクが きちんと"
                        .balign 4

glabel D_800AB31C
/* 0AAECC 800AB31C  */  .asciz  "コントローラコネクタ４に ささっているか"
                        .balign 4

glabel D_800AB344
/* 0AAEF4 800AB344  */  .asciz  "たしかめてください。"
                        .balign 4

glabel D_800AB35C
/* 0AAF0C 800AB35C  */  .asciz  " "
                        .balign 4

glabel D_800AB360
/* 0AAF10 800AB360  */  .asciz  "〔〕ボタンで さきに すすみます"
                        .balign 4

glabel D_800AB380
/* 0AAF30 800AB380  */  .asciz  "すでに セーブデータが きろくされています。"
                        .balign 4

glabel D_800AB3AC
/* 0AAF5C 800AB3AC  */  .asciz  " "
                        .balign 4

glabel D_800AB3B0
/* 0AAF60 800AB3B0  */  .asciz  "このまま ゲームを はじめると、まえの"
                        .balign 4

glabel D_800AB3D8
/* 0AAF88 800AB3D8  */  .asciz  "データは なくなりますが よろしいですか？"
                        .balign 4

glabel D_800AB404
/* 0AAFB4 800AB404  */  .asciz  "★"
                        .balign 4

glabel D_800AB408
/* 0AAFB8 800AB408  */  .asciz  "○"
                        .balign 4

glabel D_800AB40C
/* 0AAFBC 800AB40C  */  .asciz  "●"
                        .balign 4

glabel D_800AB410
/* 0AAFC0 800AB410  */  .asciz  "◎"
                        .balign 4

glabel D_800AB414
/* 0AAFC4 800AB414  */  .asciz  "はじめから"
                        .balign 4

glabel D_800AB420
/* 0AAFD0 800AB420  */  .asciz  "つづきから"
                        .balign 4

glabel D_800AB42C
/* 0AAFDC 800AB42C  */  .asciz  "きろく１ はじめから"
                        .balign 4

glabel D_800AB440
/* 0AAFF0 800AB440  */  .asciz  "きろく２ はじめから"
                        .balign 4

glabel D_800AB454
/* 0AB004 800AB454  */  .asciz  "きろく１ つづき"
                        .balign 4

glabel D_800AB464
/* 0AB014 800AB464  */  .asciz  "きろく２ つづき"
                        .balign 4

glabel D_800AB474
/* 0AB024 800AB474  */  .asciz  "やっぱりやめる"
                        .balign 4

glabel D_800AB484
/* 0AB034 800AB484  */  .asciz  "はじめる"
                        .balign 4
/* 0AB040 800AB490  */  .asciz  "ERROR: Invalid titleStat:%d\n"
                        .balign 4
/* 0AB060 800AB4B0  */  .asciz  "_setVolume(%f) vol:%d\n"
                        .balign 4
/* 0AB078 800AB4C8  */  .asciz  "Invalid loadSelNum:%d\n"
                        .balign 4
/* 0AB090 800AB4E0  */  .asciz  "Invalid loadSelNum:%d\n"
                        .balign 4
/* 0AB0A8 800AB4F8  */  .asciz  "pdFCB:%x\n"
                        .balign 4
/* 0AB0B4 800AB504  */  .asciz  "eepromGetState:%d\n"
                        .balign 4
/* 0AB0C8 800AB518  */  .asciz  "fileSelAttr:%x\n"
                        .balign 4

glabel D_800AB528
/* 0AB0D8 800AB528 3B449BA6 */  .float  0.003000000026077032

glabel jtbl_800AB52C
/* 0AB0DC 800AB52C 800329A4 */  .word  L800329A4
/* 0AB0E0 800AB530 800329A4 */  .word  L800329A4
/* 0AB0E4 800AB534 800329A4 */  .word  L800329A4
/* 0AB0E8 800AB538 800327B8 */  .word  L800327B8
/* 0AB0EC 800AB53C 800327B8 */  .word  L800327B8
/* 0AB0F0 800AB540 800327D0 */  .word  L800327D0
/* 0AB0F4 800AB544 800327E8 */  .word  L800327E8
/* 0AB0F8 800AB548 800327D0 */  .word  L800327D0
/* 0AB0FC 800AB54C 800327E8 */  .word  L800327E8
/* 0AB100 800AB550 800327E8 */  .word  L800327E8
/* 0AB104 800AB554 800327F8 */  .word  L800327F8
/* 0AB108 800AB558 800327F8 */  .word  L800327F8
/* 0AB10C 800AB55C 80032808 */  .word  L80032808
/* 0AB110 800AB560 80032860 */  .word  L80032860
/* 0AB114 800AB564 800328CC */  .word  L800328CC
/* 0AB118 800AB568 8003294C */  .word  L8003294C
/* 0AB11C 800AB56C 80032808 */  .word  L80032808
/* 0AB120 800AB570 80032838 */  .word  L80032838
/* 0AB124 800AB574 80032994 */  .word  L80032994

glabel D_800AB578
/* 0AB128 800AB578 3FB99999 */  .word  0x3FB99999

glabel D_800AB57C
/* 0AB12C 800AB57C A0000000 */  .word  0xA0000000

glabel D_800AB580
/* 0AB130 800AB580 46FFFE00 */  .float  32767.0

glabel jtbl_800AB584
/* 0AB134 800AB584 80033010 */  .word  L80033010
/* 0AB138 800AB588 80033028 */  .word  L80033028
/* 0AB13C 800AB58C 80033190 */  .word  L80033190
/* 0AB140 800AB590 80033A88 */  .word  L80033A88
/* 0AB144 800AB594 8003314C */  .word  L8003314C
/* 0AB148 800AB598 8003325C */  .word  L8003325C
/* 0AB14C 800AB59C 800332F8 */  .word  L800332F8
/* 0AB150 800AB5A0 800331DC */  .word  L800331DC
/* 0AB154 800AB5A4 80033384 */  .word  L80033384
/* 0AB158 800AB5A8 80033400 */  .word  L80033400
/* 0AB15C 800AB5AC 8003345C */  .word  L8003345C
/* 0AB160 800AB5B0 800334C8 */  .word  L800334C8
/* 0AB164 800AB5B4 80033540 */  .word  L80033540
/* 0AB168 800AB5B8 800336A8 */  .word  L800336A8
/* 0AB16C 800AB5BC 80033850 */  .word  L80033850
/* 0AB170 800AB5C0 800338A8 */  .word  L800338A8
/* 0AB174 800AB5C4 8003360C */  .word  L8003360C
/* 0AB178 800AB5C8 8003393C */  .word  L8003393C
/* 0AB17C 800AB5CC 80033A48 */  .word  L80033A48

glabel D_800AB5D0
/* 0AB180 800AB5D0 3ECCCCCD */  .float  0.4000000059604645
/* 0AB184 800AB5D4 00000000 */  .float  0.0

glabel D_800AB5D8
/* 0AB188 800AB5D8 3FB99999 */  .word  0x3FB99999

glabel D_800AB5DC
/* 0AB18C 800AB5DC A0000000 */  .word  0xA0000000

glabel D_800AB5E0
/* 0AB190 800AB5E0 3FB99999 */  .word  0x3FB99999

glabel D_800AB5E4
/* 0AB194 800AB5E4 A0000000 */  .word  0xA0000000
/* 0AB198 800AB5E8 00000000 */  .word  0x00000000
/* 0AB19C 800AB5EC 00000000 */  .word  0x00000000
