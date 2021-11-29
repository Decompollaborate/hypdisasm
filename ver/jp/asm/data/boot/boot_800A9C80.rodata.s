.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A9C80
/* 0A9830 800A9C80  */  .asciz  "^6ピカチュウ^^ と おはなしした！\n\n^6ピカチュウ^^ は おもしろいことを\nもっと いっぱい やりたいみたいだ！"
                        .balign 4

glabel D_800A9CE8
/* 0A9898 800A9CE8  */  .asciz  "^6ピカチュウ^^ と すこし なかよく\nなった！\n\n^6ピカチュウ^^ は いろんな ポケモンと\nなかよしみたいだ！"
                        .balign 4

glabel D_800A9D50
/* 0A9900 800A9D50  */  .asciz  "^6ピカチュウ^^ と トモダチに なった！\n\n^6ピカチュウ^^ は おさんぽが\nきにいっている みたいだ！"
                        .balign 4

glabel D_800A9DB0
/* 0A9960 800A9DB0  */  .asciz  "^6ピカチュウ^^ と すこし きがあった！\n\n^6ピカチュウ^^ は ごはんが だいすき\nみたいだ！"
                        .balign 4

glabel D_800A9E08
/* 0A99B8 800A9E08  */  .asciz  "^6ピカチュウ^^ と つりをして\nたのしかった！\n\n^6ピカチュウ^^ は いろんな あそびを\nしっているみたいだ！"
                        .balign 4

glabel D_800A9E70
/* 0A9A20 800A9E70  */  .asciz  "^6ピカチュウ^^ と いっしょに\nおおものを つりあげた！\n\n^6ピカチュウ^^ は つりが だいすき\nみたいだ！"
                        .balign 4

glabel D_800A9ED4
/* 0A9A84 800A9ED4  */  .asciz  "^6ピカチュウ^^ と いっしょに\nいっぱい さかなを つった！\n\n^6ピカチュウ^^ は おおものが つれて\nごきげんだ！"
                        .balign 4

glabel D_800A9F40
/* 0A9AF0 800A9F40  */  .asciz  "^6ピカチュウ^^ と もっと なかよく\nなった！\n\n^6ピカチュウ^^ は ^4ナゾノクサ^^ に みずを\nやるのが すきみたいだ！\n"
                        .balign 4

glabel D_800A9FB0
/* 0A9B60 800A9FB0  */  .asciz  "^6ピカチュウ^^ と いっしょに\nおしょくじかいへ いった！\n\n^6ピカチュウ^^ は おいしい りょうりを\nいっぱい たべて まんぷくだ！"
                        .balign 4

glabel D_800AA02C
/* 0A9BDC 800AA02C  */  .asciz  "^6ピカチュウ^^ と いっしょに\nまいごの ^4ニョロモ^^ を\nたすけてあげた！\n^6ピカチュウ^^ は ^4ゼニガメ^^ に おれいを\nいわれて よろこんでいる！"
                        .balign 4

glabel D_800AA0B8
/* 0A9C68 800AA0B8  */  .asciz  "^6ピカチュウ^^ と いっしょに\nとおくまで でかけた！\n\n^6ピカチュウ^^ は ^4たからばこ^^ を もっと\nいっぱい あけたいみたいだ！"
                        .balign 4

glabel D_800AA134
/* 0A9CE4 800AA134  */  .asciz  "^6ピカチュウ^^ と いっしょに ^4スイカ^^ を\nたべた！\n\n^6ピカチュウ^^ は ^4スイカ^^ を たべすぎて\nすこし くるしそうだ！"
                        .balign 4

glabel D_800AA1AC
/* 0A9D5C 800AA1AC  */  .asciz  "^6ピカチュウ^^ と こころが つうじた！\n\n^6ピカチュウ^^ は もっと たくさん\nおしゃべりしたい みたいだ！"
                        .balign 4

glabel D_800AA214
/* 0A9DC4 800AA214  */  .asciz  "^6ピカチュウ^^ と いっしょに\nはたらいた！\n^6ピカチュウ^^ は ^4キャタピー^^ の\nこもりが かんぺきに できて\nとくいに なっている！"
                        .balign 4

glabel D_800AA294
/* 0A9E44 800AA294  */  .asciz  "^6ピカチュウ^^ と なかよし こよしに\nなった！\n^6ピカチュウ^^ は でんせつの\n^4ナゾノクサ^^ を みつけることが\nできて よろこんでいる！"
                        .balign 4

glabel D_800AA318
/* 0A9EC8 800AA318  */  .asciz  "^6ピカチュウ^^ との ゆうじょうを\nたしかめた！\n^6ピカチュウ^^ は ^4ニョロモ^^ を みんな\nたすけてあげることが できて\nあんしんしている！"
                        .balign 4

glabel D_800AA3A0
/* 0A9F50 800AA3A0  */  .asciz  "^6ピカチュウ^^ と だいぼうけんした！\n\n^6ピカチュウ^^ は ^4たいほう^^ の おとに\nまだ くらくらしている！"
                        .balign 4

glabel D_800AA408
/* 0A9FB8 800AA408  */  .asciz  "^6ピカチュウ^^ と とても きがあった！\n\n^6ピカチュウ^^ は めずらしい\nりょうりを たべることが できて\nおおよろこび している！"
                        .balign 4

glabel D_800AA484
/* 0AA034 800AA484  */  .asciz  "^6ピカチュウ^^ との ゆうじょうを\nふかめた！\n\n^6ピカチュウ^^ は きげんが なおった\nみたいだ！"
                        .balign 4

glabel D_800AA4E0
/* 0AA090 800AA4E0  */  .asciz  "^6ピカチュウ^^ と いっしょに ほしを\nみた！\n^6ピカチュウ^^ は あんなに いっぱい\nほしが あるなんて しらなかった\nみたいだ。"
                        .balign 4
/* 0AA10C 800AA55C  */  .asciz  "keeping item found, %s\n"
                        .balign 4
/* 0AA124 800AA574  */  .asciz  "Strange area. curAreaNum = %d\n"
                        .balign 4
/* 0AA144 800AA594  */  .asciz  "title image changed, to %d\n"
                        .balign 4

glabel D_800AA5B0
/* 0AA160 800AA5B0  */  .asciz  "%s「%s」"
                        .balign 4

glabel D_800AA5BC
/* 0AA16C 800AA5BC  */  .asciz  "「%s」 ￥＄%d"
                        .balign 4

glabel D_800AA5CC
/* 0AA17C 800AA5CC  */  .asciz  "￥＄%d"
                        .balign 4
/* 0AA184 800AA5D4  */  .asciz  "value = %d\n"
                        .balign 4
/* 0AA190 800AA5E0  */  .asciz  "iedeTimer:%d otukaiTimer:%d\n"
                        .balign 4
/* 0AA1B0 800AA600  */  .asciz  "gameClear:%d timer:%d r:%d\n"
                        .balign 4
/* 0AA1CC 800AA61C  */  .asciz  "ERROR: Strange flow. chapter:%d\n"
                        .balign 4
/* 0AA1F0 800AA640  */  .asciz  "ERROR: Strange flow. chapter:%d\n"
                        .balign 4
/* 0AA214 800AA664  */  .asciz  "ERROR: Strange flow. chapter:%d\n"
                        .balign 4
/* 0AA238 800AA688  */  .asciz  "ERROR: Strange flow. chapter:%d\n"
                        .balign 4
/* 0AA25C 800AA6AC  */  .asciz  "ERROR: Strange flow. chapter:%d\n"
                        .balign 4
/* 0AA280 800AA6D0  */  .asciz  "ERROR: Strange flow. chapter:%d\n"
                        .balign 4
/* 0AA2A4 800AA6F4  */  .asciz  "ERROR: Strange flow. chapter:%d\n"
                        .balign 4
/* 0AA2C8 800AA718  */  .asciz  "ERROR : unknown area (%d) ?\n"
                        .balign 4
/* 0AA2E8 800AA738  */  .asciz  "chapterGo(%d)\n"
                        .balign 4

glabel D_800AA748
/* 0AA2F8 800AA748 3F430C31 */  .float  0.761904776096344

glabel D_800AA74C
/* 0AA2FC 800AA74C 3F19999A */  .float  0.6000000238418579

glabel D_800AA750
/* 0AA300 800AA750 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800AA758
/* 0AA308 800AA758 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800AA760
/* 0AA310 800AA760 3F4CCCCD */  .float  0.800000011920929

glabel D_800AA764
/* 0AA314 800AA764 3F430C31 */  .float  0.761904776096344

glabel D_800AA768
/* 0AA318 800AA768 3F430C31 */  .float  0.761904776096344
/* 0AA31C 800AA76C 00000000 */  .float  0.0

glabel D_800AA770
/* 0AA320 800AA770 3FD3333333333333 */  .double  0.3

glabel jtbl_800AA778
/* 0AA328 800AA778 80027894 */  .word  L80027894
/* 0AA32C 800AA77C 80027974 */  .word  L80027974
/* 0AA330 800AA780 800279AC */  .word  L800279AC
/* 0AA334 800AA784 80027A90 */  .word  L80027A90
/* 0AA338 800AA788 80027AEC */  .word  L80027AEC
/* 0AA33C 800AA78C 80027B54 */  .word  L80027B54
/* 0AA340 800AA790 80027BEC */  .word  L80027BEC

glabel D_800AA794
/* 0AA344 800AA794 3F19999A */  .float  0.6000000238418579

glabel D_800AA798
/* 0AA348 800AA798 3FE33333 */  .word  0x3FE33333

glabel D_800AA79C
/* 0AA34C 800AA79C 40000000 */  .word  0x40000000

glabel D_800AA7A0
/* 0AA350 800AA7A0 3FB99999 */  .word  0x3FB99999

glabel D_800AA7A4
/* 0AA354 800AA7A4 A0000000 */  .word  0xA0000000

glabel D_800AA7A8
/* 0AA358 800AA7A8 3F4CCCCD */  .float  0.800000011920929
/* 0AA35C 800AA7AC 00000000 */  .float  0.0
