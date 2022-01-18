.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800AAA20
/* 0AA5D0 800AAA20  */  .asciz  "voice %d\n"
                        .balign 4
/* 0AA5DC 800AAA2C  */  .asciz  "index = %d, map = %d\n"
                        .balign 4
/* 0AA5F4 800AAA44  */  .asciz  "restart skit.\n"
                        .balign 4
/* 0AA604 800AAA54  */  .asciz  "Illegal difficulty:%d\n"
                        .balign 4
/* 0AA61C 800AAA6C  */  .asciz  "whole map initialized.\n"
                        .balign 4
/* 0AA634 800AAA84  */  .asciz  "whole map canceled.\n"
                        .balign 4
/* 0AA64C 800AAA9C  */  .asciz  "whole map finished.\n"
                        .balign 4

glabel D_800AAAB4
/* 0AA664 800AAAB4 BC23D70A */  .float  -0.009999999776482582

glabel D_800AAAB8
/* 0AA668 800AAAB8 3C23D70A */  .float  0.009999999776482582

glabel D_800AAABC
/* 0AA66C 800AAABC 3F19999A */  .float  0.6000000238418579

glabel D_800AAAC0
/* 0AA670 800AAAC0 3FB99999 */  .word  0x3FB99999

glabel D_800AAAC4
/* 0AA674 800AAAC4 9999999A */  .word  0x9999999A

glabel jtbl_800AAAC8
/* 0AA678 800AAAC8 8002BF88 */  .word  L8002BF88
/* 0AA67C 800AAACC 8002BF88 */  .word  L8002BF88
/* 0AA680 800AAAD0 8002BF88 */  .word  L8002BF88
/* 0AA684 800AAAD4 8002BF88 */  .word  L8002BF88
/* 0AA688 800AAAD8 8002BF88 */  .word  L8002BF88
/* 0AA68C 800AAADC 8002BF88 */  .word  L8002BF88
/* 0AA690 800AAAE0 8002BF94 */  .word  L8002BF94
/* 0AA694 800AAAE4 8002BF94 */  .word  L8002BF94
/* 0AA698 800AAAE8 8002BF94 */  .word  L8002BF94
/* 0AA69C 800AAAEC 8002BFB4 */  .word  L8002BFB4
/* 0AA6A0 800AAAF0 8002BFB4 */  .word  L8002BFB4
/* 0AA6A4 800AAAF4 8002BFA4 */  .word  L8002BFA4
/* 0AA6A8 800AAAF8 8002BFA4 */  .word  L8002BFA4
/* 0AA6AC 800AAAFC 8002BFC4 */  .word  L8002BFC4
/* 0AA6B0 800AAB00 8002BFC4 */  .word  L8002BFC4
/* 0AA6B4 800AAB04 8002BFD4 */  .word  L8002BFD4
/* 0AA6B8 800AAB08 8002BFC4 */  .word  L8002BFC4

glabel jtbl_800AAB0C
/* 0AA6BC 800AAB0C 8002C1D4 */  .word  L8002C1D4
/* 0AA6C0 800AAB10 8002C2E0 */  .word  L8002C2E0
/* 0AA6C4 800AAB14 8002C320 */  .word  L8002C320
/* 0AA6C8 800AAB18 8002C340 */  .word  L8002C340
/* 0AA6CC 800AAB1C 8002C3D8 */  .word  L8002C3D8
/* 0AA6D0 800AAB20 8002C498 */  .word  L8002C498

glabel D_800AAB24
/* 0AA6D4 800AAB24 3ECCCCCD */  .float  0.4000000059604645

glabel D_800AAB28
/* 0AA6D8 800AAB28 3FB999999999999A */  .double  0.1

glabel D_800AAB30
/* 0AA6E0 800AAB30 3FB999999999999A */  .double  0.1

glabel D_800AAB38
/* 0AA6E8 800AAB38 3FB999999999999A */  .double  0.1

glabel D_800AAB40
/* 0AA6F0 800AAB40 3F19999A */  .float  0.6000000238418579
/* 0AA6F4 800AAB44 00000000 */  .float  0.0

glabel D_800AAB48
/* 0AA6F8 800AAB48 3FB999999999999A */  .double  0.1

glabel D_800AAB50
/* 0AA700 800AAB50  */  .asciz  "\n"
                        .balign 4

glabel D_800AAB54
/* 0AA704 800AAB54  */  .asciz  "\n［］ボタンで とりだすことが できる"
                        .balign 4

glabel D_800AAB78
/* 0AA728 800AAB78  */  .asciz  "\n（とりだすことは できない）"
                        .balign 4

glabel D_800AAB98
/* 0AA748 800AAB98  */  .asciz  "\n［］ボタンで とりだすことが できる"
                        .balign 4

glabel D_800AABBC
/* 0AA76C 800AABBC  */  .asciz  "\n［］ボタンで とりだすことが できる"
                        .balign 4

glabel D_800AABE0
/* 0AA790 800AABE0  */  .asciz  "\n［］ボタンで メニューが ひらく"
                        .balign 4

glabel D_800AAC00
/* 0AA7B0 800AAC00  */  .asciz  "\n？？"
                        .balign 4

glabel D_800AAC08
/* 0AA7B8 800AAC08  */  .asciz  "［］ボタン  もちものを だしいれする"
                        .balign 4

glabel D_800AAC2C
/* 0AA7DC 800AAC2C  */  .asciz  "｛｝ボタン  せつめいを よむ"
                        .balign 4

glabel D_800AAC48
/* 0AA7F8 800AAC48  */  .asciz  "〔〕ボタン  ツールボックスを とじる"
                        .balign 4

glabel D_800AAC6C
/* 0AA81C 800AAC6C  */  .asciz  "^3３Ｄスティック^^うえ  ガラクタいれを あける"
                        .balign 4

glabel D_800AAC9C
/* 0AA84C 800AAC9C  */  .asciz  "^3３Ｄスティック^^した  どうぐいれを あける"
                        .balign 4

glabel D_800AACC8
/* 0AA878 800AACC8  */  .asciz  "^3３Ｄスティック^^さゆう  もちものを えらぶ"
                        .balign 4

glabel D_800AACF4
/* 0AA8A4 800AACF4  */  .asciz  "ガラクタいれ"
                        .balign 4

glabel D_800AAD04
/* 0AA8B4 800AAD04  */  .asciz  "どうぐいれ"
                        .balign 4
/* 0AA8C0 800AAD10  */  .asciz  "putItemBoxIntoContent(%p, %p(%s))\n"
                        .balign 4
/* 0AA8E4 800AAD34  */  .asciz  "putItemIntoBox(%s)\n"
                        .balign 4
/* 0AA8F8 800AAD48  */  .asciz  "itembox full.\n"
                        .balign 4
/* 0AA908 800AAD58  */  .asciz  "putBonusItemIntoBox(%s)\n"
                        .balign 4
/* 0AA924 800AAD74  */  .asciz  "putPurchaseItemIntoBox(%s)\n"
                        .balign 4
/* 0AA940 800AAD90  */  .asciz  "keeping supply item, %s\n"
                        .balign 4

glabel D_800AADAC
/* 0AA95C 800AADAC  */  .asciz  "^4%s^^ %s"
                        .balign 4

glabel D_800AADB8
/* 0AA968 800AADB8  */  .asciz  " "
                        .balign 4

glabel D_800AADBC
/* 0AA96C 800AADBC  */  .asciz  "は とりだすことが できない"
                        .balign 4

glabel D_800AADD8
/* 0AA988 800AADD8  */  .asciz  "は どうぐいれには はいらない"
                        .balign 4

glabel D_800AADF8
/* 0AA9A8 800AADF8  */  .asciz  "どうぐは ガラクタいれには はいらない"
                        .balign 4

glabel D_800AAE20
/* 0AA9D0 800AAE20  */  .asciz  "は もう もっている"
                        .balign 4

glabel D_800AAE34
/* 0AA9E4 800AAE34  */  .asciz  "を ツールボックスに しまった"
                        .balign 4

glabel D_800AAE54
/* 0AAA04 800AAE54  */  .asciz  "を かわりに だした"
                        .balign 4

glabel D_800AAE68
/* 0AAA18 800AAE68  */  .asciz  "を ツールボックスから だした"
                        .balign 4

glabel D_800AAE88
/* 0AAA38 800AAE88  */  .asciz  "を ツールボックスに しまった"
                        .balign 4

glabel D_800AAEA8
/* 0AAA58 800AAEA8  */  .asciz  "なにも ない"
                        .balign 4
/* 0AAA64 800AAEB4  */  .asciz  "contents[%d][%d].objID = %d\n"
                        .balign 4
/* 0AAA84 800AAED4  */  .asciz  "ERROR: Cannot change mode to %d\n"
                        .balign 4

glabel D_800AAEF8
/* 0AAAA8 800AAEF8  */  .asciz  "ツールボックスを とじた"
                        .balign 4
/* 0AAAC0 800AAF10  */  .asciz  "itembox help mode.\n"
                        .balign 4

glabel D_800AAF24
/* 0AAAD4 800AAF24  */  .asciz  "（なにも ない）\nもちものが ある ところで\n｛｝ボタンを おすと せつめいを\nよむことが できる"
                        .balign 4

glabel D_800AAF80
/* 0AAB30 800AAF80  */  .asciz  "^4%-22s^^%s\n"
                        .balign 4

glabel D_800AAF90
/* 0AAB40 800AAF90 3E99999A */  .float  0.30000001192092896

glabel D_800AAF94
/* 0AAB44 800AAF94 3E99999A */  .float  0.30000001192092896

glabel jtbl_800AAF98
/* 0AAB48 800AAF98 8002F810 */  .word  L8002F810
/* 0AAB4C 800AAF9C 8002F820 */  .word  L8002F820
/* 0AAB50 800AAFA0 8002F830 */  .word  L8002F830
/* 0AAB54 800AAFA4 8002F840 */  .word  L8002F840
/* 0AAB58 800AAFA8 8002F810 */  .word  L8002F810
/* 0AAB5C 800AAFAC 8002F830 */  .word  L8002F830

glabel _string_800AAFB0
/* 0AAB60 800AAFB0  */  .asciz  "invalid array of itemFreqT:%d > %d\n"
                        .balign 4
/* 0AAB84 800AAFD4  */  .asciz  ""
                        .balign 4
/* 0AAB88 800AAFD8  */  .asciz  ""
                        .balign 4
/* 0AAB8C 800AAFDC  */  .asciz  ""
                        .balign 4
