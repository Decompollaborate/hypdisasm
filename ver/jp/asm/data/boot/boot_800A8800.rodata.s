.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800A8800
/* 0A83B0 800A8800  */  .asciz  "door object was made, (%3.2f, %3.2f, %3.2f), type = %d, area = %d, entrance = %d\n, lock = %s \n"
                        .balign 4
/* 0A8410 800A8860  */  .asciz  "TRUE"
                        .balign 4
/* 0A8418 800A8868  */  .asciz  "FALSE"
                        .balign 4

glabel D_800A8870
/* 0A8420 800A8870 A5C9A5A2 */  .word  0xA5C9A5A2
/* 0A8424 800A8874 0AA4B3A4 */  .word  0x0AA4B3A4
/* 0A8428 800A8878 B3A4ABA4 */  .word  0xB3A4ABA4
/* 0A842C 800A887C E9202573 */  .word  0xE9202573
/* 0A8430 800A8880 20A4CB0A */  .word  0x20A4CB0A
/* 0A8434 800A8884 A4A4A4B1 */  .word  0xA4A4A4B1
/* 0A8438 800A8888 A4EB0000 */  .word  0xA4EB0000

glabel D_800A888C
/* 0A843C 800A888C A4ABA4F3 */  .word  0xA4ABA4F3
/* 0A8440 800A8890 A4D0A4F3 */  .word  0xA4D0A4F3
/* 0A8444 800A8894 0AA4B3A4 */  .word  0x0AA4B3A4
/* 0A8448 800A8898 CEA4B5A4 */  .word  0xCEA4B5A4
/* 0A844C 800A889C AD202573 */  .word  0xAD202573
/* 0A8450 800A88A0 20A4C80A */  .word  0x20A4C80A
/* 0A8454 800A88A4 A4ABA4A4 */  .word  0xA4ABA4A4
/* 0A8458 800A88A8 A4C6A4A2 */  .word  0xA4C6A4A2
/* 0A845C 800A88AC A4EB0000 */  .word  0xA4EB0000

glabel D_800A88B0
/* 0A8460 800A88B0 A4E2A4F3 */  .word  0xA4E2A4F3
/* 0A8464 800A88B4 0AA4B3A4 */  .word  0x0AA4B3A4
/* 0A8468 800A88B8 B3A4ABA4 */  .word  0xB3A4ABA4
/* 0A846C 800A88BC E9A4DBA4 */  .word  0xE9A4DBA4
/* 0A8470 800A88C0 ABA4CEA4 */  .word  0xABA4CEA4
/* 0A8474 800A88C4 C8A4B3A4 */  .word  0xC8A4B3A4
/* 0A8478 800A88C8 EDA4D80A */  .word  0xEDA4D80A
/* 0A847C 800A88CC A4A2A4BD */  .word  0xA4A2A4BD
/* 0A8480 800A88D0 A4D3A4CB */  .word  0xA4D3A4CB
/* 0A8484 800A88D4 A4A4A4B1 */  .word  0xA4A4A4B1
/* 0A8488 800A88D8 A4EB0000 */  .word  0xA4EB0000

glabel D_800A88DC
/* 0A848C 800A88DC A4DEA4C9 */  .word  0xA4DEA4C9
/* 0A8490 800A88E0 0AA4B3A4 */  .word  0x0AA4B3A4
/* 0A8494 800A88E4 B3A4ABA4 */  .word  0xB3A4ABA4
/* 0A8498 800A88E8 E9A4DBA4 */  .word  0xE9A4DBA4
/* 0A849C 800A88EC ABA4CEA4 */  .word  0xABA4CEA4
/* 0A84A0 800A88F0 C8A4B3A4 */  .word  0xC8A4B3A4
/* 0A84A4 800A88F4 EDA4D80A */  .word  0xEDA4D80A
/* 0A84A8 800A88F8 A4A2A4BD */  .word  0xA4A2A4BD
/* 0A84AC 800A88FC A4D3A4CB */  .word  0xA4D3A4CB
/* 0A84B0 800A8900 A4A4A4B1 */  .word  0xA4A4A4B1
/* 0A84B4 800A8904 A4EB0000 */  .word  0xA4EB0000

glabel D_800A8908
/* 0A84B8 800A8908 0AA1CEA1 */  .word  0x0AA1CEA1
/* 0A84BC 800A890C CFA5DCA5 */  .word  0xCFA5DCA5
/* 0A84C0 800A8910 BFA5F3A4 */  .word  0xBFA5F3A4
/* 0A84C4 800A8914 C720A4B5 */  .word  0xC720A4B5
/* 0A84C8 800A8918 A4ADA4D8 */  .word  0xA4ADA4D8
/* 0A84CC 800A891C 20A4A4A4 */  .word  0x20A4A4A4
/* 0A84D0 800A8920 B1A4EB00 */  .word  0xB1A4EB00

glabel D_800A8924
/* 0A84D4 800A8924 0AA4ABA4 */  .word  0x0AA4ABA4
/* 0A84D8 800A8928 AEA4AC20 */  .word  0xAEA4AC20
/* 0A84DC 800A892C A4ABA4AB */  .word  0xA4ABA4AB
/* 0A84E0 800A8930 A4C3A4C6 */  .word  0xA4C3A4C6
/* 0A84E4 800A8934 A4A4A4EB */  .word  0xA4A4A4EB
/* 0A84E8 800A8938 00000000 */  .word  0x00000000

glabel D_800A893C
/* 0A84EC 800A893C 0AA4DEA4 */  .word  0x0AA4DEA4
/* 0A84F0 800A8940 C020A4C8 */  .word  0xC020A4C8
/* 0A84F4 800A8944 A4AAA4EC */  .word  0xA4AAA4EC
/* 0A84F8 800A8948 A4CAA4A4 */  .word  0xA4CAA4A4
/* 0A84FC 800A894C 00000000 */  .word  0x00000000

glabel D_800A8950
/* 0A8500 800A8950 0A5E36A5 */  .word  0x0A5E36A5
/* 0A8504 800A8954 D4A5ABA5 */  .word  0xD4A5ABA5
/* 0A8508 800A8958 C1A5E5A5 */  .word  0xC1A5E5A5
/* 0A850C 800A895C A65E5E20 */  .word  0xA65E5E20
/* 0A8510 800A8960 A4AC20A4 */  .word  0xA4AC20A4
/* 0A8514 800A8964 C1A4ABA4 */  .word  0xC1A4ABA4
/* 0A8518 800A8968 AFA4CB20 */  .word  0xAFA4CB20
/* 0A851C 800A896C A4A4A4EB */  .word  0xA4A4A4EB
/* 0A8520 800A8970 A4C80AA4 */  .word  0xA4C80AA4
/* 0A8524 800A8974 C8A4AAA4 */  .word  0xC8A4AAA4
/* 0A8528 800A8978 EBA4B3A4 */  .word  0xEBA4B3A4
/* 0A852C 800A897C C8A4AC20 */  .word  0xC8A4AC20
/* 0A8530 800A8980 A4C7A4AD */  .word  0xA4C7A4AD
/* 0A8534 800A8984 A4EB0000 */  .word  0xA4EB0000

glabel D_800A8988
/* 0A8538 800A8988 0A5E34A5 */  .word  0x0A5E34A5
/* 0A853C 800A898C BCA5CBA5 */  .word  0xBCA5CBA5
/* 0A8540 800A8990 ACA5E15E */  .word  0xACA5E15E
/* 0A8544 800A8994 5E20A4AC */  .word  0x5E20A4AC
/* 0A8548 800A8998 20A4C8A4 */  .word  0x20A4C8A4
/* 0A854C 800A899C AAA4BBA4 */  .word  0xAAA4BBA4
/* 0A8550 800A89A0 F3A4DCA4 */  .word  0xF3A4DCA4
/* 0A8554 800A89A4 B7A4C6A4 */  .word  0xB7A4C6A4
/* 0A8558 800A89A8 A4A4EB00 */  .word  0xA4A4EB00
/* 0A855C 800A89AC 0AA4CAA4 */  .word  0x0AA4CAA4
/* 0A8560 800A89B0 F3A4C7A4 */  .word  0xF3A4C7A4
/* 0A8564 800A89B4 AB20A4C8 */  .word  0xAB20A4C8
/* 0A8568 800A89B8 A4AAA4EC */  .word  0xA4AAA4EC
/* 0A856C 800A89BC A4CAA4A4 */  .word  0xA4CAA4A4
/* 0A8570 800A89C0 00000000 */  .word  0x00000000

glabel jtbl_800A89C4
/* 0A8574 800A89C4 8001A7AC */  .word  L8001A7AC
/* 0A8578 800A89C8 8001A7C8 */  .word  L8001A7C8
/* 0A857C 800A89CC 8001A7E4 */  .word  L8001A7E4
/* 0A8580 800A89D0 8001A800 */  .word  L8001A800
/* 0A8584 800A89D4 8001A81C */  .word  L8001A81C
/* 0A8588 800A89D8 00000000 */  .word  0x00000000
/* 0A858C 800A89DC 00000000 */  .word  0x00000000
/* 0A8590 800A89E0 2D2D2D2D */  .word  0x2D2D2D2D
/* 0A8594 800A89E4 2D2D2D2D */  .word  0x2D2D2D2D
/* 0A8598 800A89E8 204F626A */  .word  0x204F626A
/* 0A859C 800A89EC 65637420 */  .word  0x65637420
/* 0A85A0 800A89F0 4D657373 */  .word  0x4D657373
/* 0A85A4 800A89F4 61676520 */  .word  0x61676520
/* 0A85A8 800A89F8 496E666F */  .word  0x496E666F
/* 0A85AC 800A89FC 202D2D2D */  .word  0x202D2D2D
/* 0A85B0 800A8A00 2D2D2D2D */  .word  0x2D2D2D2D
/* 0A85B4 800A8A04 2D0A0000 */  .word  0x2D0A0000
/* 0A85B8 800A8A08 0A000000 */  .word  0x0A000000
/* 0A85BC 800A8A0C 00000000 */  .word  0x00000000

glabel D_800A8A10
/* 0A85C0 800A8A10 3FD99999A0000000 */  .double  0.4000000059604645

glabel D_800A8A18
/* 0A85C8 800A8A18 3FE3333340000000 */  .double  0.6000000238418579

glabel D_800A8A20
/* 0A85D0 800A8A20 3F4CCCCD */  .float  0.800000011920929

glabel D_800A8A24
/* 0A85D4 800A8A24 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A8A28
/* 0A85D8 800A8A28 3FD3333340000000 */  .double  0.30000001192092896

glabel D_800A8A30
/* 0A85E0 800A8A30 3FC99999A0000000 */  .double  0.20000000298023224

glabel D_800A8A38
/* 0A85E8 800A8A38 3E99999A */  .float  0.30000001192092896

glabel D_800A8A3C
/* 0A85EC 800A8A3C 43098000 */  .float  137.5
/* 0A85F0 800A8A40 6C616E64 */  .float  1.0901184576032584e+27
/* 0A85F4 800A8A44 4D696E65 */  .float  244770384.0
/* 0A85F8 800A8A48 4E657728 */  .float  962447872.0
/* 0A85FC 800A8A4C 25662C25 */  .float  1.996427672269722e-16
/* 0A8600 800A8A50 662C2566 */  .float  2.0323422861472452e+23
/* 0A8604 800A8A54 290A0000 */  .float  3.064215547965432e-14

glabel D_800A8A58
/* 0A8608 800A8A58 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A8A5C
/* 0A860C 800A8A5C 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A8A60
/* 0A8610 800A8A60 3D8F5C29 */  .float  0.07000000029802322

glabel D_800A8A64
/* 0A8614 800A8A64 3F4CCCCD */  .float  0.800000011920929
/* 0A8618 800A8A68 00000000 */  .float  0.0
/* 0A861C 800A8A6C 00000000 */  .float  0.0

glabel D_800A8A70
/* 0A8620 800A8A70  */  .asciz  "フシギダネ"
                        .balign 4

glabel D_800A8A7C
/* 0A862C 800A8A7C  */  .asciz  "フシギダネ"
                        .balign 4

glabel D_800A8A88
/* 0A8638 800A8A88  */  .asciz  "たねポケモン\nせなかに しょくぶつの たねを\nせおっている\n^6ピカチュウ^^ の トモダチ"
                        .balign 4

glabel D_800A8ADC
/* 0A868C 800A8ADC  */  .asciz  "フシギバナ"
                        .balign 4

glabel D_800A8AE8
/* 0A8698 800A8AE8  */  .asciz  "フシギバナ"
                        .balign 4

glabel D_800A8AF4
/* 0A86A4 800A8AF4  */  .asciz  "たねポケモン\nたいようエネルギーを\nえいように している\nひなたを このむ"
                        .balign 4

glabel D_800A8B3C
/* 0A86EC 800A8B3C  */  .asciz  "ゼニガメ"
                        .balign 4

glabel D_800A8B48
/* 0A86F8 800A8B48  */  .asciz  "ゼニガメ"
                        .balign 4

glabel D_800A8B54
/* 0A8704 800A8B54  */  .asciz  "かめのこポケモン\nみずべが すきな ポケモン\n^6ピカチュウ^^ の トモダチ"
                        .balign 4

glabel D_800A8B9C
/* 0A874C 800A8B9C  */  .asciz  "ヒトカゲ"
                        .balign 4

glabel D_800A8BA8
/* 0A8758 800A8BA8  */  .asciz  "ヒトカゲ"
                        .balign 4

glabel D_800A8BB4
/* 0A8764 800A8BB4  */  .asciz  "とかげポケモン\nしっぽの さきの ほのおは\nげんきの しるし\n^6ピカチュウ^^ の トモダチ"
                        .balign 4

glabel D_800A8C08
/* 0A87B8 800A8C08  */  .asciz  "ナゾノクサ"
                        .balign 4

glabel D_800A8C14
/* 0A87C4 800A8C14  */  .asciz  "みずを かけると\nおおきくなることが ある"
                        .balign 4

glabel D_800A8C3C
/* 0A87EC 800A8C3C  */  .asciz  "ナゾノクサ"
                        .balign 4

glabel D_800A8C48
/* 0A87F8 800A8C48  */  .asciz  "ざっそうポケモン\nひあたりの よい ばしょを このむ"
                        .balign 4

glabel D_800A8C7C
/* 0A882C 800A8C7C  */  .asciz  "クサイハナ"
                        .balign 4

glabel D_800A8C88
/* 0A8838 800A8C88  */  .asciz  "みずを かけると\nおおきくなることが ある"
                        .balign 4

glabel D_800A8CB0
/* 0A8860 800A8CB0  */  .asciz  "クサイハナ"
                        .balign 4

glabel D_800A8CBC
/* 0A886C 800A8CBC  */  .asciz  "ざっそうポケモン\n^4ナゾノクサ^^ の しんかけい\nくさい においで\nてきを きぜつさせる"
                        .balign 4

glabel D_800A8D10
/* 0A88C0 800A8D10  */  .asciz  "ラフレシア"
                        .balign 4

glabel D_800A8D1C
/* 0A88CC 800A8D1C  */  .asciz  "ラフレシア"
                        .balign 4

glabel D_800A8D28
/* 0A88D8 800A8D28  */  .asciz  "フラワーポケモン\n^4クサイハナ^^ の しんかけい\nせかいいち おおきな はなびらを\nもつという"
                        .balign 4

glabel D_800A8D80
/* 0A8930 800A8D80  */  .asciz  "キャタピー"
                        .balign 4

glabel D_800A8D8C
/* 0A893C 800A8D8C  */  .asciz  "キャタピー"
                        .balign 4

glabel D_800A8D98
/* 0A8948 800A8D98  */  .asciz  "いもむしポケモン\nだっぴして せいちょうすると\nいとを かけて サナギに なるという"
                        .balign 4

glabel D_800A8DE8
/* 0A8998 800A8DE8  */  .asciz  "トランセル"
                        .balign 4

glabel D_800A8DF4
/* 0A89A4 800A8DF4  */  .asciz  "トランセル"
                        .balign 4

glabel D_800A8E00
/* 0A89B0 800A8E00  */  .asciz  "さなぎポケモン\nかたい からで からだを おおって\nしんかの じゅんびをしている"
                        .balign 4

glabel D_800A8E4C
/* 0A89FC 800A8E4C  */  .asciz  "ディグダ"
                        .balign 4

glabel D_800A8E58
/* 0A8A08 800A8E58  */  .asciz  "ディグダ"
                        .balign 4

glabel D_800A8E64
/* 0A8A14 800A8E64  */  .asciz  "もぐらポケモン\nふだんは つちの なかに いるが\nたまに ちじょうに でて\nいたずらを することもある"
                        .balign 4

glabel D_800A8EC4
/* 0A8A74 800A8EC4  */  .asciz  "ラプラス"
                        .balign 4

glabel D_800A8ED0
/* 0A8A80 800A8ED0  */  .asciz  "ラプラス"
                        .balign 4

glabel D_800A8EDC
/* 0A8A8C 800A8EDC  */  .asciz  "のりものポケモン\nうみの うえを\nひとを のせていくのが すきな\nかしこい ポケモン"
                        .balign 4

glabel D_800A8F2C
/* 0A8ADC 800A8F2C  */  .asciz  "ニョロモ"
                        .balign 4

glabel D_800A8F38
/* 0A8AE8 800A8F38  */  .asciz  "ニョロモ"
                        .balign 4

glabel D_800A8F44
/* 0A8AF4 800A8F44  */  .asciz  "おたまポケモン\nあしが はえた ばかり なので\nうまく あるけない\nおどかすと にげるので ちゅうい"
                        .balign 4

glabel D_800A8FA0
/* 0A8B50 800A8FA0  */  .asciz  "ニョロゾ"
                        .balign 4

glabel D_800A8FAC
/* 0A8B5C 800A8FAC  */  .asciz  "ニョロゾ"
                        .balign 4

glabel D_800A8FB8
/* 0A8B68 800A8FB8  */  .asciz  "おたまポケモン\nちじょうでも すいちゅうでも\nくらせる\n^4ニョロモ^^ の しんかけい "
                        .balign 4

glabel D_800A9008
/* 0A8BB8 800A9008  */  .asciz  "バタフリー"
                        .balign 4

glabel D_800A9014
/* 0A8BC4 800A9014  */  .asciz  "バタフリー"
                        .balign 4

glabel D_800A9020
/* 0A8BD0 800A9020  */  .asciz  "ちょうちょポケモン\nひらひらと いろんなところを\nとんでいる\nめんどうみの よい ポケモン"
                        .balign 4

glabel D_800A9078
/* 0A8C28 800A9078  */  .asciz  "ケーシィ"
                        .balign 4

glabel D_800A9084
/* 0A8C34 800A9084  */  .asciz  "ケーシィ"
                        .balign 4

glabel D_800A9090
/* 0A8C40 800A9090  */  .asciz  "ねんりきポケモン"
                        .balign 4

glabel D_800A90A4
/* 0A8C54 800A90A4  */  .asciz  "たからばこ"
                        .balign 4

glabel D_800A90B0
/* 0A8C60 800A90B0  */  .asciz  "たからばこ"
                        .balign 4

glabel D_800A90BC
/* 0A8C6C 800A90BC  */  .asciz  "かいぞくが かくした\nふしぎな たからばこ"
                        .balign 4

glabel D_800A90E4
/* 0A8C94 800A90E4  */  .asciz  "ゴースト"
                        .balign 4

glabel D_800A90F0
/* 0A8CA0 800A90F0  */  .asciz  "ゴースト"
                        .balign 4

glabel D_800A90FC
/* 0A8CAC 800A90FC  */  .asciz  "ガスじょうポケモン\nうしろから すーっと あらわれて\nみんなを おどろかして\nあそぶのが すき"
                        .balign 4

glabel D_800A9154
/* 0A8D04 800A9154  */  .asciz  "ヤドン"
                        .balign 4

glabel D_800A915C
/* 0A8D0C 800A915C  */  .asciz  "ヤドン"
                        .balign 4

glabel D_800A9164
/* 0A8D14 800A9164  */  .asciz  "まぬけポケモン\nいつも ボーッと している\nしっぽを つかって\nつりを するのが とくい"
                        .balign 4

glabel D_800A91B8
/* 0A8D68 800A91B8  */  .asciz  "コイル"
                        .balign 4

glabel D_800A91C0
/* 0A8D70 800A91C0  */  .asciz  "コイル"
                        .balign 4

glabel D_800A91C8
/* 0A8D78 800A91C8  */  .asciz  "じしゃくポケモン\nはんじゅうりょくの ちからで\nういているらしい\n^6ピカチュウ^^ の トモダチ"
                        .balign 4

glabel D_800A9224
/* 0A8DD4 800A9224  */  .asciz  "つりざお"
                        .balign 4

glabel D_800A9230
/* 0A8DE0 800A9230  */  .asciz  "つりざお"
                        .balign 4

glabel D_800A923C
/* 0A8DEC 800A923C  */  .asciz  "^6ピカチュウ^^ の つりざお"
                        .balign 4

glabel D_800A9258
/* 0A8E08 800A9258  */  .asciz  "ぼうえんゐゑ"
                        .balign 4

glabel D_800A9268
/* 0A8E18 800A9268  */  .asciz  "ぼうえんゐゑ"
                        .balign 4

glabel D_800A9278
/* 0A8E28 800A9278  */  .asciz  "よぞらを ながめる どうぐ"
                        .balign 4

glabel D_800A9294
/* 0A8E44 800A9294  */  .asciz  "トゲピー"
                        .balign 4

glabel D_800A92A0
/* 0A8E50 800A92A0  */  .asciz  "トゲピー"
                        .balign 4

glabel D_800A92AC
/* 0A8E5C 800A92AC  */  .asciz  "ずかんにも のっていない\nみちの ポケモン"
                        .balign 4

glabel D_800A92D4
/* 0A8E84 800A92D4  */  .asciz  "トゲピーのたまご"
                        .balign 4

glabel D_800A92E8
/* 0A8E98 800A92E8  */  .asciz  "トゲピーのたまご"
                        .balign 4

glabel D_800A92FC
/* 0A8EAC 800A92FC  */  .asciz  "みちの ポケモンの たまご"
                        .balign 4

glabel D_800A9318
/* 0A8EC8 800A9318  */  .asciz  "アズマオウ"
                        .balign 4

glabel D_800A9324
/* 0A8ED4 800A9324  */  .asciz  "アズマオウ"
                        .balign 4

glabel D_800A9330
/* 0A8EE0 800A9330  */  .asciz  "きんぎょポケモン"
                        .balign 4

glabel D_800A9344
/* 0A8EF4 800A9344  */  .asciz  "クラブ"
                        .balign 4

glabel D_800A934C
/* 0A8EFC 800A934C  */  .asciz  "クラブ"
                        .balign 4

glabel D_800A9354
/* 0A8F04 800A9354  */  .asciz  "さわがにポケモン"
                        .balign 4

glabel D_800A9368
/* 0A8F18 800A9368  */  .asciz  "ドククラゲ"
                        .balign 4

glabel D_800A9374
/* 0A8F24 800A9374  */  .asciz  "ドククラゲ"
                        .balign 4

glabel D_800A9380
/* 0A8F30 800A9380  */  .asciz  "くらげポケモン"
                        .balign 4

glabel D_800A9390
/* 0A8F40 800A9390  */  .asciz  "ヒトデマン"
                        .balign 4

glabel D_800A939C
/* 0A8F4C 800A939C  */  .asciz  "ヒトデマン"
                        .balign 4

glabel D_800A93A8
/* 0A8F58 800A93A8  */  .asciz  "ほしがたポケモン"
                        .balign 4

glabel D_800A93BC
/* 0A8F6C 800A93BC  */  .asciz  "キングラー"
                        .balign 4

glabel D_800A93C8
/* 0A8F78 800A93C8  */  .asciz  "キングラー"
                        .balign 4

glabel D_800A93D4
/* 0A8F84 800A93D4  */  .asciz  "はさみポケモン"
                        .balign 4

glabel D_800A93E4
/* 0A8F94 800A93E4  */  .asciz  "コイキング"
                        .balign 4

glabel D_800A93F0
/* 0A8FA0 800A93F0  */  .asciz  "コイキング"
                        .balign 4

glabel D_800A93FC
/* 0A8FAC 800A93FC  */  .asciz  "さかなポケモン"
                        .balign 4

glabel D_800A940C
/* 0A8FBC 800A940C  */  .asciz  "メノクラゲ"
                        .balign 4

glabel D_800A9418
/* 0A8FC8 800A9418  */  .asciz  "メノクラゲ"
                        .balign 4

glabel D_800A9424
/* 0A8FD4 800A9424  */  .asciz  "くらげポケモン"
                        .balign 4

glabel D_800A9434
/* 0A8FE4 800A9434  */  .asciz  "ミニリュウ"
                        .balign 4

glabel D_800A9440
/* 0A8FF0 800A9440  */  .asciz  "ミニリュウ"
                        .balign 4

glabel D_800A944C
/* 0A8FFC 800A944C  */  .asciz  "ドラゴンポケモン"
                        .balign 4

glabel D_800A9460
/* 0A9010 800A9460  */  .asciz  "シードラ"
                        .balign 4

glabel D_800A946C
/* 0A901C 800A946C  */  .asciz  "シードラ"
                        .balign 4

glabel D_800A9478
/* 0A9028 800A9478  */  .asciz  "ドラゴンポケモン"
                        .balign 4

glabel D_800A948C
/* 0A903C 800A948C  */  .asciz  "スターミー"
                        .balign 4

glabel D_800A9498
/* 0A9048 800A9498  */  .asciz  "スターミー"
                        .balign 4

glabel D_800A94A4
/* 0A9054 800A94A4  */  .asciz  "なぞのポケモン"
                        .balign 4

glabel D_800A94B4
/* 0A9064 800A94B4  */  .asciz  "タッツー"
                        .balign 4

glabel D_800A94C0
/* 0A9070 800A94C0  */  .asciz  "タッツー"
                        .balign 4

glabel D_800A94CC
/* 0A907C 800A94CC  */  .asciz  "ドラゴンポケモン"
                        .balign 4

glabel D_800A94E0
/* 0A9090 800A94E0  */  .asciz  "トサキント"
                        .balign 4

glabel D_800A94EC
/* 0A909C 800A94EC  */  .asciz  "トサキント"
                        .balign 4

glabel D_800A94F8
/* 0A90A8 800A94F8  */  .asciz  "きんぎょポケモン"
                        .balign 4

glabel D_800A950C
/* 0A90BC 800A950C  */  .asciz  "ピカチュウ"
                        .balign 4

glabel D_800A9518
/* 0A90C8 800A9518  */  .asciz  "ピカチュウ"
                        .balign 4

glabel D_800A9524
/* 0A90D4 800A9524  */  .asciz  "ねずみポケモン"
                        .balign 4

glabel D_800A9534
/* 0A90E4 800A9534  */  .asciz  "ピカチュウ"
                        .balign 4

glabel D_800A9540
/* 0A90F0 800A9540  */  .asciz  "ピカチュウ"
                        .balign 4

glabel D_800A954C
/* 0A90FC 800A954C  */  .asciz  "ねずみポケモン"
                        .balign 4
/* 0A910C 800A955C  */  .asciz  "ERROR: Invalid _segmentData\n_segmentData[%d].segmentIdx != %d\n"
                        .balign 4
/* 0A914C 800A959C  */  .asciz  "modelsRequestLoad(%d)\n"
                        .balign 4
/* 0A9164 800A95B4  */  .asciz  "type(%d):%s\n"
                        .balign 4
/* 0A9174 800A95C4  */  .asciz  "segmentIdx:%d\n"
                        .balign 4
/* 0A9184 800A95D4  */  .asciz  "zipType : ZIPTYPE_RAW  size:%d\n"
                        .balign 4
/* 0A91A4 800A95F4  */  .asciz  "zipType : ZIPTYPE_ZIP  bufferSize:%d "
                        .balign 4
/* 0A91CC 800A961C  */  .asciz  "size:%d\n"
                        .balign 4
/* 0A91D8 800A9628  */  .asciz  "rom start:%p end:%p size:%d _buffer:%p\n"
                        .balign 4
/* 0A9200 800A9650  */  .asciz  "ERROR: Hara(%s) is not loaded. Execute modelsRequestLoad() first.\n"
                        .balign 4

glabel D_800A9694
/* 0A9244 800A9694 7072655F */  .word  0x7072655F
/* 0A9248 800A9698 6D6F6465 */  .word  0x6D6F6465
/* 0A924C 800A969C 6C734E65 */  .word  0x6C734E65
/* 0A9250 800A96A0 77000000 */  .word  0x77000000
/* 0A9254 800A96A4 73697A65 */  .word  0x73697A65
/* 0A9258 800A96A8 6F66286A */  .word  0x6F66286A
/* 0A925C 800A96AC 6F696E74 */  .word  0x6F696E74
/* 0A9260 800A96B0 54293A25 */  .word  0x54293A25
/* 0A9264 800A96B4 640A7369 */  .word  0x640A7369
/* 0A9268 800A96B8 7A656F66 */  .word  0x7A656F66
/* 0A926C 800A96BC 28686172 */  .word  0x28686172
/* 0A9270 800A96C0 6154293A */  .word  0x6154293A
/* 0A9274 800A96C4 25640A73 */  .word  0x25640A73
/* 0A9278 800A96C8 697A656F */  .word  0x697A656F
/* 0A927C 800A96CC 66286F62 */  .word  0x66286F62
/* 0A9280 800A96D0 6A54293A */  .word  0x6A54293A
/* 0A9284 800A96D4 25640A00 */  .word  0x25640A00
/* 0A9288 800A96D8 6D6F6465 */  .word  0x6D6F6465
/* 0A928C 800A96DC 6C734E65 */  .word  0x6C734E65
/* 0A9290 800A96E0 77282564 */  .word  0x77282564
/* 0A9294 800A96E4 2C20252E */  .word  0x2C20252E
/* 0A9298 800A96E8 33662C25 */  .word  0x33662C25
/* 0A929C 800A96EC 2E33662C */  .word  0x2E33662C
/* 0A92A0 800A96F0 252E3366 */  .word  0x252E3366
/* 0A92A4 800A96F4 2C20252E */  .word  0x2C20252E
/* 0A92A8 800A96F8 33662C25 */  .word  0x33662C25
/* 0A92AC 800A96FC 2E33662C */  .word  0x2E33662C
/* 0A92B0 800A9700 20252E33 */  .word  0x20252E33
/* 0A92B4 800A9704 66290A00 */  .word  0x66290A00

glabel D_800A9708
/* 0A92B8 800A9708 6166745F */  .word  0x6166745F
/* 0A92BC 800A970C 6D6F6465 */  .word  0x6D6F6465
/* 0A92C0 800A9710 6C735265 */  .word  0x6C735265
/* 0A92C4 800A9714 71756573 */  .word  0x71756573
/* 0A92C8 800A9718 744C6F61 */  .word  0x744C6F61
/* 0A92CC 800A971C 64000000 */  .word  0x64000000

glabel D_800A9720
/* 0A92D0 800A9720 6166745F */  .word  0x6166745F
/* 0A92D4 800A9724 6F6D4872 */  .word  0x6F6D4872
/* 0A92D8 800A9728 63416C6C */  .word  0x63416C6C
/* 0A92DC 800A972C 6F630000 */  .word  0x6F630000

glabel D_800A9730
/* 0A92E0 800A9730 6166745F */  .word  0x6166745F
/* 0A92E4 800A9734 6F6D4872 */  .word  0x6F6D4872
/* 0A92E8 800A9738 63416C6C */  .word  0x63416C6C
/* 0A92EC 800A973C 6F634D74 */  .word  0x6F634D74
/* 0A92F0 800A9740 78000000 */  .word  0x78000000

glabel D_800A9744
/* 0A92F4 800A9744 6166745F */  .word  0x6166745F
/* 0A92F8 800A9748 6A6F5365 */  .word  0x6A6F5365
/* 0A92FC 800A974C 744A6F69 */  .word  0x744A6F69
/* 0A9300 800A9750 6E745462 */  .word  0x6E745462
/* 0A9304 800A9754 6C000000 */  .word  0x6C000000
/* 0A9308 800A9758 73657470 */  .word  0x73657470
/* 0A930C 800A975C 7075202D */  .word  0x7075202D
/* 0A9310 800A9760 206F626A */  .word  0x206F626A
/* 0A9314 800A9764 3A257020 */  .word  0x3A257020
/* 0A9318 800A9768 6F626A54 */  .word  0x6F626A54
/* 0A931C 800A976C 7970653A */  .word  0x7970653A
/* 0A9320 800A9770 25642020 */  .word  0x25642020
/* 0A9324 800A9774 7070753A */  .word  0x7070753A
/* 0A9328 800A9778 25700A00 */  .word  0x25700A00

glabel D_800A977C
/* 0A932C 800A977C 7072655F */  .word  0x7072655F
/* 0A9330 800A9780 66726565 */  .word  0x66726565
/* 0A9334 800A9784 42756666 */  .word  0x42756666
/* 0A9338 800A9788 65720000 */  .word  0x65720000

glabel D_800A978C
/* 0A933C 800A978C 6166745F */  .word  0x6166745F
/* 0A9340 800A9790 66726565 */  .word  0x66726565
/* 0A9344 800A9794 42756666 */  .word  0x42756666
/* 0A9348 800A9798 65720000 */  .word  0x65720000

glabel D_800A979C
/* 0A934C 800A979C 6166745F */  .word  0x6166745F
/* 0A9350 800A97A0 6D6F6465 */  .word  0x6D6F6465
/* 0A9354 800A97A4 6C734E65 */  .word  0x6C734E65
/* 0A9358 800A97A8 77000000 */  .word  0x77000000

glabel D_800A97AC
/* 0A935C 800A97AC 40966666 */  .float  4.699999809265137

glabel D_800A97B0
/* 0A9360 800A97B0 3F8CCCCD */  .float  1.100000023841858

glabel D_800A97B4
/* 0A9364 800A97B4 3FE66666 */  .float  1.7999999523162842
/* 0A9368 800A97B8 00000000 */  .float  0.0
/* 0A936C 800A97BC 00000000 */  .float  0.0

glabel D_800A97C0
/* 0A9370 800A97C0 00000002 */  .word  0x00000002
/* 0A9374 800A97C4 00000001 */  .word  0x00000001
/* 0A9378 800A97C8 74617267 */  .word  0x74617267
/* 0A937C 800A97CC 65744963 */  .word  0x65744963
/* 0A9380 800A97D0 6F6E2063 */  .word  0x6F6E2063
/* 0A9384 800A97D4 68616E67 */  .word  0x68616E67
/* 0A9388 800A97D8 653A2025 */  .word  0x653A2025
/* 0A938C 800A97DC 64202D3E */  .word  0x64202D3E
/* 0A9390 800A97E0 2025640A */  .word  0x2025640A
/* 0A9394 800A97E4 00000000 */  .word  0x00000000

glabel D_800A97E8
/* 0A9398 800A97E8 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A97EC
/* 0A939C 800A97EC 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A97F0
/* 0A93A0 800A97F0 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A97F4
/* 0A93A4 800A97F4 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A97F8
/* 0A93A8 800A97F8 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A97FC
/* 0A93AC 800A97FC 3DCCCCCD */  .float  0.10000000149011612
/* 0A93B0 800A9800 6C616E64 */  .float  1.0901184576032584e+27
/* 0A93B4 800A9804 4D61726B */  .float  236398256.0
/* 0A93B8 800A9808 4E657728 */  .float  962447872.0
/* 0A93BC 800A980C 25662C25 */  .float  1.996427672269722e-16
/* 0A93C0 800A9810 662C2566 */  .float  2.0323422861472452e+23
/* 0A93C4 800A9814 290A0000 */  .float  3.064215547965432e-14

glabel D_800A9818
/* 0A93C8 800A9818 5E34A4BF */  .word  0x5E34A4BF
/* 0A93CC 800A981C A4A4A4DB */  .word  0xA4A4A4DB
/* 0A93D0 800A9820 A4A65E5E */  .word  0xA4A65E5E
/* 0A93D4 800A9824 0AA4ABA4 */  .word  0x0AA4ABA4
/* 0A93D8 800A9828 A4A4BEA4 */  .word  0xA4A4BEA4
/* 0A93DC 800A982C AFA4BFA4 */  .word  0xAFA4BFA4
/* 0A93E0 800A9830 C1A4CEA4 */  .word  0xC1A4CEA4
/* 0A93E4 800A9834 D6A4AD00 */  .word  0xD6A4AD00

glabel D_800A9838
/* 0A93E8 800A9838 3DCCCCCD */  .float  0.10000000149011612
/* 0A93EC 800A983C 00000000 */  .float  0.0
/* 0A93F0 800A9840 63617270 */  .float  4.1587635075023645e+21
/* 0A93F4 800A9844 6574206F */  .float  7.205348225146815e+22
/* 0A93F8 800A9848 626A6563 */  .float  1.08096094906714e+21
/* 0A93FC 800A984C 74207761 */  .float  5.085380793702215e+31
/* 0A9400 800A9850 73206D61 */  .float  1.2710357134157323e+31
/* 0A9404 800A9854 64652C20 */  .float  1.6909935736865644e+22
/* 0A9408 800A9858 2825332E */  .float  9.170437778832467e-15
/* 0A940C 800A985C 32662C20 */  .float  1.3397794873526436e-08
/* 0A9410 800A9860 25332E32 */  .float  1.5541426690670907e-16
/* 0A9414 800A9864 662C2025 */  .float  2.0320999924872927e+23
/* 0A9418 800A9868 332E3266 */  .float  4.05583691076572e-08
/* 0A941C 800A986C 292C2078 */  .float  3.8219834198535696e-14
/* 0A9420 800A9870 73696465 */  .float  1.8491232468313506e+31
/* 0A9424 800A9874 203D2025 */  .float  1.6019558436326118e-19
/* 0A9428 800A9878 662C207A */  .float  2.0321153047260258e+23
/* 0A942C 800A987C 73696465 */  .float  1.8491232468313506e+31
/* 0A9430 800A9880 203D2025 */  .float  1.6019558436326118e-19
/* 0A9434 800A9884 660A0000 */  .float  1.6292164365900276e+23
/* 0A9438 800A9888 00000000 */  .float  0.0
/* 0A943C 800A988C 00000000 */  .float  0.0

glabel D_800A9890
/* 0A9440 800A9890 A4C9A4A6 */  .word  0xA4C9A4A6
/* 0A9444 800A9894 A4AFA4C4 */  .word  0xA4AFA4C4
/* 0A9448 800A9898 0AA4C9A4 */  .word  0x0AA4C9A4
/* 0A944C 800A989C B3A4ABA4 */  .word  0xB3A4ABA4
/* 0A9450 800A98A0 CBA4C4A4 */  .word  0xCBA4C4A4
/* 0A9454 800A98A4 A6A4B8A4 */  .word  0xA6A4B8A4
/* 0A9458 800A98A8 C6A4A4A4 */  .word  0xC6A4A4A4
/* 0A945C 800A98AC EB000000 */  .word  0xEB000000

glabel D_800A98B0
/* 0A9460 800A98B0 40EFFFE000000000 */  .double  65535.0

glabel D_800A98B8
/* 0A9468 800A98B8 3FD3333333333333 */  .double  0.3

glabel D_800A98C0
/* 0A9470 800A98C0 3FD3333333333333 */  .double  0.3
/* 0A9478 800A98C8 0000000000000000 */  .double  0.0

glabel D_800A98D0
/* 0A9480 800A98D0 45B3B000 */  .float  5750.0
/* 0A9484 800A98D4 00000000 */  .float  0.0
/* 0A9488 800A98D8 00000000 */  .float  0.0
/* 0A948C 800A98DC 00000000 */  .float  0.0

glabel D_800A98E0
/* 0A9490 800A98E0 A5ADA5DF */  .word  0xA5ADA5DF
/* 0A9494 800A98E4 00000000 */  .word  0x00000000
/* 0A9498 800A98E8 00000000 */  .word  0x00000000
/* 0A949C 800A98EC 00000000 */  .word  0x00000000
/* 0A94A0 800A98F0 6D696353 */  .word  0x6D696353
/* 0A94A4 800A98F4 74617465 */  .word  0x74617465
/* 0A94A8 800A98F8 4368616E */  .word  0x4368616E
/* 0A94AC 800A98FC 67653A20 */  .word  0x67653A20
/* 0A94B0 800A9900 2564202D */  .word  0x2564202D
/* 0A94B4 800A9904 3E202564 */  .word  0x3E202564
/* 0A94B8 800A9908 0A000000 */  .word  0x0A000000

glabel D_800A990C
/* 0A94BC 800A990C 3F333333 */  .float  0.699999988079071

glabel D_800A9910
/* 0A94C0 800A9910 3F4CCCCD */  .float  0.800000011920929

glabel D_800A9914
/* 0A94C4 800A9914 3F59999A */  .float  0.8500000238418579

glabel D_800A9918
/* 0A94C8 800A9918 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800A9920
/* 0A94D0 800A9920 3FEE666660000000 */  .double  0.949999988079071

glabel D_800A9928
/* 0A94D8 800A9928 3EA3D70A */  .float  0.3199999928474426

glabel D_800A992C
/* 0A94DC 800A992C 3F430C31 */  .float  0.761904776096344
/* 0A94E0 800A9930 556E6B6E */  .float  16384073400320.0
/* 0A94E4 800A9934 6F776E20 */  .float  7.657593038175729e+28
/* 0A94E8 800A9938 7468726F */  .float  7.366539674077975e+31
/* 0A94EC 800A993C 775F6469 */  .float  4.53093265379178e+33
/* 0A94F0 800A9940 723A2564 */  .float  3.6870025163996295e+30
/* 0A94F4 800A9944 0A000000 */  .float  6.162975822039155e-33

glabel D_800A9948
/* 0A94F8 800A9948 C1F00000 */  .float  -30.0
/* 0A94FC 800A994C C1F00000 */  .float  -30.0
/* 0A9500 800A9950 C2700000 */  .float  -60.0
/* 0A9504 800A9954 C4160000 */  .float  -600.0
/* 0A9508 800A9958 43960000 */  .float  300.0
/* 0A950C 800A995C C1F00000 */  .float  -30.0
/* 0A9510 800A9960 C2700000 */  .float  -60.0

glabel D_800A9964
/* 0A9514 800A9964 00000000 */  .float  0.0
/* 0A9518 800A9968 00000000 */  .float  0.0
/* 0A951C 800A996C 43700000 */  .float  240.0
/* 0A9520 800A9970 00000000 */  .float  0.0
/* 0A9524 800A9974 00000000 */  .float  0.0
/* 0A9528 800A9978 00000000 */  .float  0.0
/* 0A952C 800A997C 43480000 */  .float  200.0
/* 0A9530 800A9980 4552524F */  .float  3365.144287109375
/* 0A9534 800A9984 523A2049 */  .float  199851393024.0
/* 0A9538 800A9988 6C6C6567 */  .float  1.1431414098338476e+27
/* 0A953C 800A998C 616C2070 */  .float  2.7223556060012872e+20
/* 0A9540 800A9990 6F735479 */  .float  7.530697856177891e+28
/* 0A9544 800A9994 70652825 */  .float  2.836823960377299e+29
/* 0A9548 800A9998 64290A00 */  .float  1.2472881297589174e+22
/* 0A954C 800A999C 4552524F */  .float  3365.144287109375
/* 0A9550 800A99A0 523A2049 */  .float  199851393024.0
/* 0A9554 800A99A4 6C6C6567 */  .float  1.1431414098338476e+27
/* 0A9558 800A99A8 616C2070 */  .float  2.7223556060012872e+20
/* 0A955C 800A99AC 6F735479 */  .float  7.530697856177891e+28
/* 0A9560 800A99B0 70652825 */  .float  2.836823960377299e+29
/* 0A9564 800A99B4 64290A00 */  .float  1.2472881297589174e+22
/* 0A9568 800A99B8 7665633A */  .float  1.1631333343639286e+33
/* 0A956C 800A99BC 25662C25 */  .float  1.996427672269722e-16
/* 0A9570 800A99C0 662C2566 */  .float  2.0323422861472452e+23
/* 0A9574 800A99C4 206C656E */  .float  2.0023537823616413e-19
/* 0A9578 800A99C8 3A256620 */  .float  0.0006309468299150467
/* 0A957C 800A99CC 20737475 */  .float  2.062143301765769e-19
/* 0A9580 800A99D0 6E52616E */  .float  1.627740933182455e+28
/* 0A9584 800A99D4 67653A25 */  .float  1.0824945018644033e+24
/* 0A9588 800A99D8 660A0000 */  .float  1.6292164365900276e+23
/* 0A958C 800A99DC 5761726E */  .float  247881588015104.0
/* 0A9590 800A99E0 696E673A */  .float  1.801323867044835e+25
/* 0A9594 800A99E4 20547269 */  .float  1.7994953627042832e-19
/* 0A9598 800A99E8 65642074 */  .float  6.733113828659664e+22
/* 0A959C 800A99EC 6F206368 */  .float  4.963777635367128e+28
/* 0A95A0 800A99F0 616E6765 */  .float  2.7486096566883923e+20
/* 0A95A4 800A99F4 206E6F6E */  .float  2.0196253135517485e-19
/* 0A95A8 800A99F8 5F697465 */  .float  1.682218155881005e+19
/* 0A95AC 800A99FC 6D5F676F */  .float  4.321262545766241e+27
/* 0A95B0 800A9A00 616C5F6F */  .float  2.72519269784467e+20
/* 0A95B4 800A9A04 626A0A00 */  .float  1.0793146722971036e+21

glabel jtbl_800A9A08
/* 0A95B8 800A9A08 80021918 */  .word  L80021918
/* 0A95BC 800A9A0C 800219C0 */  .word  L800219C0
/* 0A95C0 800A9A10 800219C0 */  .word  L800219C0
/* 0A95C4 800A9A14 800219C0 */  .word  L800219C0
/* 0A95C8 800A9A18 800219C0 */  .word  L800219C0
/* 0A95CC 800A9A1C 80021B4C */  .word  L80021B4C
/* 0A95D0 800A9A20 80021A28 */  .word  L80021A28
/* 0A95D4 800A9A24 00000000 */  .word  0x00000000

glabel D_800A9A28
/* 0A95D8 800A9A28 4056800000000000 */  .double  90.0

glabel D_800A9A30
/* 0A95E0 800A9A30 3FD3333340000000 */  .double  0.30000001192092896

glabel D_800A9A38
/* 0A95E8 800A9A38 3FD99999A0000000 */  .double  0.4000000059604645

glabel D_800A9A40
/* 0A95F0 800A9A40 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800A9A48
/* 0A95F8 800A9A48 BA83126F */  .float  -0.0010000000474974513

glabel D_800A9A4C
/* 0A95FC 800A9A4C 3A83126F */  .float  0.0010000000474974513
/* 0A9600 800A9A50 73626449 */  .float  1.7936601480790707e+31
/* 0A9604 800A9A54 6E697428 */  .float  1.8062607894527003e+28
/* 0A9608 800A9A58 25702C20 */  .float  2.0831631843240724e-16
/* 0A960C 800A9A5C 25642C20 */  .float  1.979079775765464e-16
/* 0A9610 800A9A60 2564290A */  .float  1.9789752201360372e-16
/* 0A9614 800A9A64 00000000 */  .float  0.0
/* 0A9618 800A9A68 7362642D */  .float  1.7936567630867757e+31
/* 0A961C 800A9A6C 3E6C696E */  .float  0.23087093234062195
/* 0A9620 800A9A70 653A2564 */  .float  5.494061881899282e+22
/* 0A9624 800A9A74 0A000000 */  .float  6.162975822039155e-33
/* 0A9628 800A9A78 76747849 */  .float  1.239609478799609e+33
/* 0A962C 800A9A7C 64783A25 */  .float  1.8315929141233228e+22
/* 0A9630 800A9A80 64202076 */  .float  1.1815272435399975e+22
/* 0A9634 800A9A84 74784D61 */  .float  7.869012766039321e+31
/* 0A9638 800A9A88 783A2564 */  .float  1.5101962307172882e+34
/* 0A963C 800A9A8C 20207674 */  .float  1.3591720007467334e-19
/* 0A9640 800A9A90 784C6566 */  .float  1.6582580684119533e+34
/* 0A9644 800A9A94 743A2564 */  .float  5.899204026239407e+31
/* 0A9648 800A9A98 0A000000 */  .float  6.162975822039155e-33
/* 0A964C 800A9A9C 4552524F */  .float  3365.144287109375
/* 0A9650 800A9AA0 523A2067 */  .float  199851884544.0
/* 0A9654 800A9AA4 7053697A */  .float  2.6171540164829702e+29
/* 0A9658 800A9AA8 65206F76 */  .float  4.735217054046384e+22
/* 0A965C 800A9AAC 65723A25 */  .float  7.149282913385679e+22
/* 0A9660 800A9AB0 640A0000 */  .float  1.0182602728687672e+22
/* 0A9664 800A9AB4 64726177 */  .float  1.7884540591926476e+22
/* 0A9668 800A9AB8 4964783A */  .float  935811.625
/* 0A966C 800A9ABC 25640A00 */  .float  1.9779235757924618e-16
/* 0A9670 800A9AC0 776F726B */  .float  4.856561020695426e+33
/* 0A9674 800A9AC4 4964783A */  .float  935811.625
/* 0A9678 800A9AC8 25640A00 */  .float  1.9779235757924618e-16
/* 0A967C 800A9ACC 4552524F */  .float  3365.144287109375
/* 0A9680 800A9AD0 523A2067 */  .float  199851884544.0
/* 0A9684 800A9AD4 7053697A */  .float  2.6171540164829702e+29
/* 0A9688 800A9AD8 65206F76 */  .float  4.735217054046384e+22
/* 0A968C 800A9ADC 65723A25 */  .float  7.149282913385679e+22
/* 0A9690 800A9AE0 640A0000 */  .float  1.0182602728687672e+22
/* 0A9694 800A9AE4 73626441 */  .float  1.793659180938415e+31
/* 0A9698 800A9AE8 70706C79 */  .float  2.976301510079425e+29
/* 0A969C 800A9AEC 2825702C */  .float  9.183663351270896e-15
/* 0A96A0 800A9AF0 2025702C */  .float  1.4013158189805444e-19
/* 0A96A4 800A9AF4 20256429 */  .float  1.4009183845456068e-19
/* 0A96A8 800A9AF8 0A000000 */  .float  6.162975822039155e-33
/* 0A96AC 800A9AFC 20417070 */  .float  1.638493833005757e-19
/* 0A96B0 800A9B00 6C793A28 */  .float  1.2051886568392482e+27
/* 0A96B4 800A9B04 2573290A */  .float  2.1090794808342978e-16
/* 0A96B8 800A9B08 00000000 */  .float  0.0
/* 0A96BC 800A9B0C 6E657754 */  .float  1.775408152510168e+28
/* 0A96C0 800A9B10 65787449 */  .float  7.333074814178669e+22
/* 0A96C4 800A9B14 64783A25 */  .float  1.8315929141233228e+22
/* 0A96C8 800A9B18 640A0000 */  .float  1.0182602728687672e+22
/* 0A96CC 800A9B1C 4572726F */  .float  3879.152099609375
/* 0A96D0 800A9B20 723A2074 */  .float  3.6866204958406313e+30
/* 0A96D4 800A9B24 65787444 */  .float  7.333072562378856e+22
/* 0A96D8 800A9B28 6174615F */  .float  2.8175136754559982e+20
/* 0A96DC 800A9B2C 6C696E65 */  .float  1.1288041576179028e+27
/* 0A96E0 800A9B30 733A2564 */  .float  1.4748010065598518e+31
/* 0A96E4 800A9B34 203C2025 */  .float  1.5934855141600688e-19
/* 0A96E8 800A9B38 640A0000 */  .float  1.0182602728687672e+22
/* 0A96EC 800A9B3C 73626453 */  .float  1.7936613570048903e+31
/* 0A96F0 800A9B40 63726F6C */  .float  4.472140858073406e+21
/* 0A96F4 800A9B44 6C426F61 */  .float  9.40230324076047e+26
/* 0A96F8 800A9B48 72644E65 */  .float  4.522070746381529e+30
/* 0A96FC 800A9B4C 77282564 */  .float  3.4104072039274905e+33
/* 0A9700 800A9B50 2C202564 */  .float  2.275812351071327e-12
/* 0A9704 800A9B54 290A0000 */  .float  3.064215547965432e-14
/* 0A9708 800A9B58 00000000 */  .float  0.0
/* 0A970C 800A9B5C 00000000 */  .float  0.0
/* 0A9710 800A9B60 4552524F */  .float  3365.144287109375
/* 0A9714 800A9B64 523A2055 */  .float  199851589632.0
/* 0A9718 800A9B68 6E6B6E6F */  .float  1.8215620832713325e+28
/* 0A971C 800A9B6C 776E2073 */  .float  4.8297843776456835e+33
/* 0A9720 800A9B70 74617475 */  .float  7.144951308467859e+31
/* 0A9724 800A9B74 733A2564 */  .float  1.4748010065598518e+31
/* 0A9728 800A9B78 0A000000 */  .float  6.162975822039155e-33
/* 0A972C 800A9B7C 73656E64 */  .float  1.8177413459428843e+31
/* 0A9730 800A9B80 4D657373 */  .float  240596784.0
/* 0A9734 800A9B84 656E6765 */  .float  7.036440721122284e+22
/* 0A9738 800A9B88 72282564 */  .float  3.33047578508544e+30
/* 0A973C 800A9B8C 2C202825 */  .float  2.2759652235776473e-12
/* 0A9740 800A9B90 2E33662C */  .float  4.079063475881384e-11
/* 0A9744 800A9B94 20252E33 */  .float  1.3991329668921994e-19
/* 0A9748 800A9B98 662C2025 */  .float  2.0320999924872927e+23
/* 0A974C 800A9B9C 2E336629 */  .float  4.079062435047298e-11
/* 0A9750 800A9BA0 2C202825 */  .float  2.2759652235776473e-12
/* 0A9754 800A9BA4 2E33662C */  .float  4.079063475881384e-11
/* 0A9758 800A9BA8 20252E33 */  .float  1.3991329668921994e-19
/* 0A975C 800A9BAC 662C2025 */  .float  2.0320999924872927e+23
/* 0A9760 800A9BB0 2E336629 */  .float  4.079062435047298e-11
/* 0A9764 800A9BB4 2C20252E */  .float  2.275800641687864e-12
/* 0A9768 800A9BB8 33662C0A */  .float  5.359110133440481e-08
/* 0A976C 800A9BBC 09092825 */  .float  1.650965101669602e-33
/* 0A9770 800A9BC0 642C2025 */  .float  1.270062495304558e+22
/* 0A9774 800A9BC4 642C2030 */  .float  1.2700637337944555e+22
/* 0A9778 800A9BC8 7825782C */  .float  1.3424474325778678e+34
/* 0A977C 800A9BCC 2025642C */  .float  1.400918772286519e-19
/* 0A9780 800A9BD0 20256429 */  .float  1.4009183845456068e-19
/* 0A9784 800A9BD4 2C202564 */  .float  2.275812351071327e-12
/* 0A9788 800A9BD8 2C202564 */  .float  2.275812351071327e-12
/* 0A978C 800A9BDC 290A0000 */  .float  3.064215547965432e-14

glabel D_800A9BE0
/* 0A9790 800A9BE0 3ECCCCCD */  .float  0.4000000059604645

glabel D_800A9BE4
/* 0A9794 800A9BE4 3F4CCCCD */  .float  0.800000011920929

glabel D_800A9BE8
/* 0A9798 800A9BE8 3DCCCCCD */  .float  0.10000000149011612

glabel jtbl_800A9BEC
/* 0A979C 800A9BEC 800244D0 */  .word  L800244D0
/* 0A97A0 800A9BF0 800244E0 */  .word  L800244E0
/* 0A97A4 800A9BF4 800244F0 */  .word  L800244F0
/* 0A97A8 800A9BF8 80024500 */  .word  L80024500
/* 0A97AC 800A9BFC 80024510 */  .word  L80024510

glabel D_800A9C00
/* 0A97B0 800A9C00 3EB33333 */  .float  0.3499999940395355

glabel D_800A9C04
/* 0A97B4 800A9C04 3E99999A */  .float  0.30000001192092896

glabel D_800A9C08
/* 0A97B8 800A9C08 3CF5C28F */  .float  0.029999999329447746

glabel D_800A9C0C
/* 0A97BC 800A9C0C 3D4CCCCD */  .float  0.05000000074505806

glabel D_800A9C10
/* 0A97C0 800A9C10 3F333333 */  .float  0.699999988079071
/* 0A97C4 800A9C14 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A9C18
/* 0A97C8 800A9C18 BECCCCCD */  .float  -0.4000000059604645

glabel D_800A9C1C
/* 0A97CC 800A9C1C 3ECCCCCD */  .float  0.4000000059604645
/* 0A97D0 800A9C20 6163746F */  .float  2.6223755183518017e+20
/* 0A97D4 800A9C24 72207479 */  .float  3.178138135861436e+30
/* 0A97D8 800A9C28 7065203A */  .float  2.8364410709028678e+29
/* 0A97DC 800A9C2C 20414354 */  .float  1.6370012889879815e-19
/* 0A97E0 800A9C30 4F525F50 */  .float  3529461760.0
/* 0A97E4 800A9C34 494B4143 */  .float  832532.1875
/* 0A97E8 800A9C38 48550A00 */  .float  218152.0
/* 0A97EC 800A9C3C 6163746F */  .float  2.6223755183518017e+20
/* 0A97F0 800A9C40 72207479 */  .float  3.178138135861436e+30
/* 0A97F4 800A9C44 7065203A */  .float  2.8364410709028678e+29
/* 0A97F8 800A9C48 20414354 */  .float  1.6370012889879815e-19
/* 0A97FC 800A9C4C 4F525F50 */  .float  3529461760.0
/* 0A9800 800A9C50 4F4B454D */  .float  3410316544.0
/* 0A9804 800A9C54 4F4E0A00 */  .float  3456761856.0

glabel D_800A9C58
/* 0A9808 800A9C58 3A83126F */  .float  0.0010000000474974513

glabel D_800A9C5C
/* 0A980C 800A9C5C BA83126F */  .float  -0.0010000000474974513
/* 0A9810 800A9C60 5F736574 */  .float  1.7538551867213087e+19
/* 0A9814 800A9C64 53707269 */  .float  1032711634944.0
/* 0A9818 800A9C68 74653A28 */  .float  7.264499081347582e+31
/* 0A981C 800A9C6C 25732920 */  .float  2.109082392510054e-16
/* 0A9820 800A9C70 6964783A */  .float  1.7262677547577255e+25
/* 0A9824 800A9C74 25640A00 */  .float  1.9779235757924618e-16

glabel D_800A9C78
/* 0A9828 800A9C78 3D4CCCCD */  .float  0.05000000074505806
/* 0A982C 800A9C7C 00000000 */  .float  0.0

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
/* 0AA160 800AA5B0 2573A1D6 */  .word  0x2573A1D6
/* 0AA164 800AA5B4 2573A1D7 */  .word  0x2573A1D7
/* 0AA168 800AA5B8 00000000 */  .word  0x00000000

glabel D_800AA5BC
/* 0AA16C 800AA5BC A1D62573 */  .word  0xA1D62573
/* 0AA170 800AA5C0 A1D720A1 */  .word  0xA1D720A1
/* 0AA174 800AA5C4 EFA1F025 */  .word  0xEFA1F025
/* 0AA178 800AA5C8 64000000 */  .word  0x64000000

glabel D_800AA5CC
/* 0AA17C 800AA5CC A1EFA1F0 */  .word  0xA1EFA1F0
/* 0AA180 800AA5D0 25640000 */  .word  0x25640000
/* 0AA184 800AA5D4 76616C75 */  .word  0x76616C75
/* 0AA188 800AA5D8 65203D20 */  .word  0x65203D20
/* 0AA18C 800AA5DC 25640A00 */  .word  0x25640A00
/* 0AA190 800AA5E0 69656465 */  .word  0x69656465
/* 0AA194 800AA5E4 54696D65 */  .word  0x54696D65
/* 0AA198 800AA5E8 723A2564 */  .word  0x723A2564
/* 0AA19C 800AA5EC 206F7475 */  .word  0x206F7475
/* 0AA1A0 800AA5F0 6B616954 */  .word  0x6B616954
/* 0AA1A4 800AA5F4 696D6572 */  .word  0x696D6572
/* 0AA1A8 800AA5F8 3A25640A */  .word  0x3A25640A
/* 0AA1AC 800AA5FC 00000000 */  .word  0x00000000
/* 0AA1B0 800AA600 67616D65 */  .word  0x67616D65
/* 0AA1B4 800AA604 436C6561 */  .word  0x436C6561
/* 0AA1B8 800AA608 723A2564 */  .word  0x723A2564
/* 0AA1BC 800AA60C 2074696D */  .word  0x2074696D
/* 0AA1C0 800AA610 65723A25 */  .word  0x65723A25
/* 0AA1C4 800AA614 6420723A */  .word  0x6420723A
/* 0AA1C8 800AA618 25640A00 */  .word  0x25640A00
/* 0AA1CC 800AA61C 4552524F */  .word  0x4552524F
/* 0AA1D0 800AA620 523A2053 */  .word  0x523A2053
/* 0AA1D4 800AA624 7472616E */  .word  0x7472616E
/* 0AA1D8 800AA628 67652066 */  .word  0x67652066
/* 0AA1DC 800AA62C 6C6F772E */  .word  0x6C6F772E
/* 0AA1E0 800AA630 20636861 */  .word  0x20636861
/* 0AA1E4 800AA634 70746572 */  .word  0x70746572
/* 0AA1E8 800AA638 3A25640A */  .word  0x3A25640A
/* 0AA1EC 800AA63C 00000000 */  .word  0x00000000
/* 0AA1F0 800AA640 4552524F */  .word  0x4552524F
/* 0AA1F4 800AA644 523A2053 */  .word  0x523A2053
/* 0AA1F8 800AA648 7472616E */  .word  0x7472616E
/* 0AA1FC 800AA64C 67652066 */  .word  0x67652066
/* 0AA200 800AA650 6C6F772E */  .word  0x6C6F772E
/* 0AA204 800AA654 20636861 */  .word  0x20636861
/* 0AA208 800AA658 70746572 */  .word  0x70746572
/* 0AA20C 800AA65C 3A25640A */  .word  0x3A25640A
/* 0AA210 800AA660 00000000 */  .word  0x00000000
/* 0AA214 800AA664 4552524F */  .word  0x4552524F
/* 0AA218 800AA668 523A2053 */  .word  0x523A2053
/* 0AA21C 800AA66C 7472616E */  .word  0x7472616E
/* 0AA220 800AA670 67652066 */  .word  0x67652066
/* 0AA224 800AA674 6C6F772E */  .word  0x6C6F772E
/* 0AA228 800AA678 20636861 */  .word  0x20636861
/* 0AA22C 800AA67C 70746572 */  .word  0x70746572
/* 0AA230 800AA680 3A25640A */  .word  0x3A25640A
/* 0AA234 800AA684 00000000 */  .word  0x00000000
/* 0AA238 800AA688 4552524F */  .word  0x4552524F
/* 0AA23C 800AA68C 523A2053 */  .word  0x523A2053
/* 0AA240 800AA690 7472616E */  .word  0x7472616E
/* 0AA244 800AA694 67652066 */  .word  0x67652066
/* 0AA248 800AA698 6C6F772E */  .word  0x6C6F772E
/* 0AA24C 800AA69C 20636861 */  .word  0x20636861
/* 0AA250 800AA6A0 70746572 */  .word  0x70746572
/* 0AA254 800AA6A4 3A25640A */  .word  0x3A25640A
/* 0AA258 800AA6A8 00000000 */  .word  0x00000000
/* 0AA25C 800AA6AC 4552524F */  .word  0x4552524F
/* 0AA260 800AA6B0 523A2053 */  .word  0x523A2053
/* 0AA264 800AA6B4 7472616E */  .word  0x7472616E
/* 0AA268 800AA6B8 67652066 */  .word  0x67652066
/* 0AA26C 800AA6BC 6C6F772E */  .word  0x6C6F772E
/* 0AA270 800AA6C0 20636861 */  .word  0x20636861
/* 0AA274 800AA6C4 70746572 */  .word  0x70746572
/* 0AA278 800AA6C8 3A25640A */  .word  0x3A25640A
/* 0AA27C 800AA6CC 00000000 */  .word  0x00000000
/* 0AA280 800AA6D0 4552524F */  .word  0x4552524F
/* 0AA284 800AA6D4 523A2053 */  .word  0x523A2053
/* 0AA288 800AA6D8 7472616E */  .word  0x7472616E
/* 0AA28C 800AA6DC 67652066 */  .word  0x67652066
/* 0AA290 800AA6E0 6C6F772E */  .word  0x6C6F772E
/* 0AA294 800AA6E4 20636861 */  .word  0x20636861
/* 0AA298 800AA6E8 70746572 */  .word  0x70746572
/* 0AA29C 800AA6EC 3A25640A */  .word  0x3A25640A
/* 0AA2A0 800AA6F0 00000000 */  .word  0x00000000
/* 0AA2A4 800AA6F4 4552524F */  .word  0x4552524F
/* 0AA2A8 800AA6F8 523A2053 */  .word  0x523A2053
/* 0AA2AC 800AA6FC 7472616E */  .word  0x7472616E
/* 0AA2B0 800AA700 67652066 */  .word  0x67652066
/* 0AA2B4 800AA704 6C6F772E */  .word  0x6C6F772E
/* 0AA2B8 800AA708 20636861 */  .word  0x20636861
/* 0AA2BC 800AA70C 70746572 */  .word  0x70746572
/* 0AA2C0 800AA710 3A25640A */  .word  0x3A25640A
/* 0AA2C4 800AA714 00000000 */  .word  0x00000000
/* 0AA2C8 800AA718 4552524F */  .word  0x4552524F
/* 0AA2CC 800AA71C 52203A20 */  .word  0x52203A20
/* 0AA2D0 800AA720 756E6B6E */  .word  0x756E6B6E
/* 0AA2D4 800AA724 6F776E20 */  .word  0x6F776E20
/* 0AA2D8 800AA728 61726561 */  .word  0x61726561
/* 0AA2DC 800AA72C 20282564 */  .word  0x20282564
/* 0AA2E0 800AA730 29203F0A */  .word  0x29203F0A
/* 0AA2E4 800AA734 00000000 */  .word  0x00000000
/* 0AA2E8 800AA738 63686170 */  .word  0x63686170
/* 0AA2EC 800AA73C 74657247 */  .word  0x74657247
/* 0AA2F0 800AA740 6F282564 */  .word  0x6F282564
/* 0AA2F4 800AA744 290A0000 */  .word  0x290A0000

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
/* 0AA430 800AA880 6D657368 */  .word  0x6D657368
/* 0AA434 800AA884 526F6F74 */  .word  0x526F6F74
/* 0AA438 800AA888 496E6974 */  .word  0x496E6974
/* 0AA43C 800AA88C 3A25700A */  .word  0x3A25700A
/* 0AA440 800AA890 00000000 */  .word  0x00000000
/* 0AA444 800AA894 4552524F */  .word  0x4552524F
/* 0AA448 800AA898 523A2055 */  .word  0x523A2055
/* 0AA44C 800AA89C 6E6B6E6F */  .word  0x6E6B6E6F
/* 0AA450 800AA8A0 776E206D */  .word  0x776E206D
/* 0AA454 800AA8A4 65736854 */  .word  0x65736854
/* 0AA458 800AA8A8 7970653A */  .word  0x7970653A
/* 0AA45C 800AA8AC 25640A00 */  .word  0x25640A00
/* 0AA460 800AA8B0 6D657368 */  .word  0x6D657368
/* 0AA464 800AA8B4 4E756D3A */  .word  0x4E756D3A
/* 0AA468 800AA8B8 25640A00 */  .word  0x25640A00

glabel D_800AA8BC
/* 0AA46C 800AA8BC 3DCCCCCD */  .float  0.10000000149011612
/* 0AA470 800AA8C0 70616765 */  .float  2.7903649411295087e+29
/* 0AA474 800AA8C4 20737461 */  .float  2.0621407168263549e-19
/* 0AA478 800AA8C8 636B206F */  .float  4.337321944053373e+21
/* 0AA47C 800AA8CC 76657266 */  .float  1.1634338443084651e+33
/* 0AA480 800AA8D0 6C6F772E */  .float  1.157984324198341e+27
/* 0AA484 800AA8D4 0A000000 */  .float  6.162975822039155e-33
/* 0AA488 800AA8D8 70616765 */  .float  2.7903649411295087e+29
/* 0AA48C 800AA8DC 20737461 */  .float  2.0621407168263549e-19
/* 0AA490 800AA8E0 636B2065 */  .float  4.337319129303606e+21
/* 0AA494 800AA8E4 78686175 */  .float  1.885296147822888e+34
/* 0AA498 800AA8E8 73746564 */  .float  1.9363050532054416e+31
/* 0AA49C 800AA8EC 2E0A0000 */  .float  3.1377567211166024e-11
/* 0AA4A0 800AA8F0 616C7068 */  .float  2.7259570783283e+20
/* 0AA4A4 800AA8F4 613A2564 */  .float  2.146117922616907e+20
/* 0AA4A8 800AA8F8 0A000000 */  .float  6.162975822039155e-33
/* 0AA4AC 800AA8FC 6C696E65 */  .float  1.1288041576179028e+27
/* 0AA4B0 800AA900 20256420 */  .float  1.4009172213228704e-19
/* 0AA4B4 800AA904 6D657373 */  .float  4.438227299405577e+27
/* 0AA4B8 800AA908 61676520 */  .float  2.667802940764995e+20
/* 0AA4BC 800AA90C 27257327 */  .float  2.2960774093524127e-15
/* 0AA4C0 800AA910 0A000000 */  .float  6.162975822039155e-33

glabel D_800AA914
/* 0AA4C4 800AA914 A1CEA1CF */  .word  0xA1CEA1CF
/* 0AA4C8 800AA918 A5DCA5BF */  .word  0xA5DCA5BF
/* 0AA4CC 800AA91C A5F3A4F2 */  .word  0xA5F3A4F2
/* 0AA4D0 800AA920 20A4AAA4 */  .word  0x20A4AAA4
/* 0AA4D4 800AA924 B7A4C6A4 */  .word  0xB7A4C6A4
/* 0AA4D8 800AA928 AFA4C0A4 */  .word  0xAFA4C0A4
/* 0AA4DC 800AA92C B5A4A400 */  .word  0xB5A4A400

glabel jtbl_800AA930
/* 0AA4E0 800AA930 80029F9C */  .word  L80029F9C
/* 0AA4E4 800AA934 80029F44 */  .word  L80029F44
/* 0AA4E8 800AA938 80029F74 */  .word  L80029F74
/* 0AA4EC 800AA93C 8002A034 */  .word  L8002A034
/* 0AA4F0 800AA940 8002A0DC */  .word  L8002A0DC

glabel jtbl_800AA944
/* 0AA4F4 800AA944 8002A1E0 */  .word  L8002A1E0
/* 0AA4F8 800AA948 8002A124 */  .word  L8002A124
/* 0AA4FC 800AA94C 8002A188 */  .word  L8002A188
/* 0AA500 800AA950 8002A22C */  .word  L8002A22C
/* 0AA504 800AA954 8002A268 */  .word  L8002A268
/* 0AA508 800AA958 00000000 */  .word  0x00000000
/* 0AA50C 800AA95C 00000000 */  .word  0x00000000
/* 0AA510 800AA960 2D2D2D2D */  .word  0x2D2D2D2D
/* 0AA514 800AA964 2D2D2D2D */  .word  0x2D2D2D2D
/* 0AA518 800AA968 20636F6C */  .word  0x20636F6C
/* 0AA51C 800AA96C 6C697369 */  .word  0x6C697369
/* 0AA520 800AA970 6F6E5462 */  .word  0x6F6E5462
/* 0AA524 800AA974 6C20496E */  .word  0x6C20496E
/* 0AA528 800AA978 666F202D */  .word  0x666F202D
/* 0AA52C 800AA97C 2D2D2D2D */  .word  0x2D2D2D2D
/* 0AA530 800AA980 2D2D2D0A */  .word  0x2D2D2D0A
/* 0AA534 800AA984 00000000 */  .word  0x00000000

glabel D_800AA988
/* 0AA538 800AA988 3A83126F */  .float  0.0010000000474974513
/* 0AA53C 800AA98C 00000000 */  .float  0.0

glabel D_800AA990
/* 0AA540 800AA990 3FF3333340000000 */  .double  1.2000000476837158

glabel D_800AA998
/* 0AA548 800AA998 3FF3333340000000 */  .double  1.2000000476837158

glabel D_800AA9A0
/* 0AA550 800AA9A0 3F50624DE0000000 */  .double  0.0010000000474974513

glabel D_800AA9A8
/* 0AA558 800AA9A8 3F50624DE0000000 */  .double  0.0010000000474974513

glabel D_800AA9B0
/* 0AA560 800AA9B0 3F50624DE0000000 */  .double  0.0010000000474974513

glabel D_800AA9B8
/* 0AA568 800AA9B8 3A83126F */  .float  0.0010000000474974513

glabel D_800AA9BC
/* 0AA56C 800AA9BC 3A83126F */  .float  0.0010000000474974513

glabel D_800AA9C0
/* 0AA570 800AA9C0 3A83126F */  .float  0.0010000000474974513
/* 0AA574 800AA9C4 00000000 */  .float  0.0
/* 0AA578 800AA9C8 00000000 */  .float  0.0
/* 0AA57C 800AA9CC 00000000 */  .float  0.0
/* 0AA580 800AA9D0 65787472 */  .float  7.3330932789371415e+22
/* 0AA584 800AA9D4 61637465 */  .float  2.6223737591331973e+20
/* 0AA588 800AA9D8 64202575 */  .float  1.1816712461380827e+22
/* 0AA58C 800AA9DC 20627974 */  .float  1.918313007608078e-19
/* 0AA590 800AA9E0 65732E0A */  .float  7.1774020383790925e+22
/* 0AA594 800AA9E4 00000000 */  .float  0.0
/* 0AA598 800AA9E8 72656C4F */  .float  4.544192275491747e+30
/* 0AA59C 800AA9EC 6673203D */  .float  2.870324366652297e+23
/* 0AA5A0 800AA9F0 2025752C */  .float  1.401481255103055e-19
/* 0AA5A4 800AA9F4 2072656C */  .float  2.053175500702958e-19
/* 0AA5A8 800AA9F8 4E756D20 */  .float  1029392384.0
/* 0AA5AC 800AA9FC 3D202575 */  .float  0.03909822180867195
/* 0AA5B0 800AAA00 0A000000 */  .float  6.162975822039155e-33
/* 0AA5B4 800AAA04 726F6D43 */  .float  4.7423364262524044e+30
/* 0AA5B8 800AAA08 6F707920 */  .float  7.442283349702364e+28
/* 0AA5BC 800AAA0C 636F6D70 */  .float  4.4166576365641086e+21
/* 0AA5C0 800AAA10 6C657465 */  .float  1.1095746812996576e+27
/* 0AA5C4 800AAA14 2E0A0000 */  .float  3.1377567211166024e-11
/* 0AA5C8 800AAA18 00000000 */  .float  0.0
/* 0AA5CC 800AAA1C 00000000 */  .float  0.0
/* 0AA5D0 800AAA20 766F6963 */  .float  1.2139613728381798e+33
/* 0AA5D4 800AAA24 65202564 */  .float  4.726677328432964e+22
/* 0AA5D8 800AAA28 0A000000 */  .float  6.162975822039155e-33
/* 0AA5DC 800AAA2C 696E6465 */  .float  1.801240280235751e+25
/* 0AA5E0 800AAA30 78203D20 */  .float  1.3000113432071807e+34
/* 0AA5E4 800AAA34 25642C20 */  .float  1.979079775765464e-16
/* 0AA5E8 800AAA38 6D617020 */  .float  4.360604876082933e+27
/* 0AA5EC 800AAA3C 3D202564 */  .float  0.03909815847873688
/* 0AA5F0 800AAA40 0A000000 */  .float  6.162975822039155e-33
/* 0AA5F4 800AAA44 72657374 */  .float  4.544745056822766e+30
/* 0AA5F8 800AAA48 61727420 */  .float  2.7952998462158537e+20
/* 0AA5FC 800AAA4C 736B6974 */  .float  1.8651254352278436e+31
/* 0AA600 800AAA50 2E0A0000 */  .float  3.1377567211166024e-11
/* 0AA604 800AAA54 496C6C65 */  .float  968390.3125
/* 0AA608 800AAA58 67616C20 */  .float  1.06452701284864e+24
/* 0AA60C 800AAA5C 64696666 */  .float  1.7221879816855275e+22
/* 0AA610 800AAA60 6963756C */  .float  1.7186291886211033e+25
/* 0AA614 800AAA64 74793A25 */  .float  7.8983229307507135e+31
/* 0AA618 800AAA68 640A0000 */  .float  1.0182602728687672e+22
/* 0AA61C 800AAA6C 77686F6C */  .float  4.7143467784673316e+33
/* 0AA620 800AAA70 65206D61 */  .float  4.734977012186245e+22
/* 0AA624 800AAA74 7020696E */  .float  1.9858023297115145e+29
/* 0AA628 800AAA78 69746961 */  .float  1.8467221112552874e+25
/* 0AA62C 800AAA7C 6C697A65 */  .float  1.1290308312090806e+27
/* 0AA630 800AAA80 642E0A00 */  .float  1.2841816179063365e+22
/* 0AA634 800AAA84 77686F6C */  .float  4.7143467784673316e+33
/* 0AA638 800AAA88 65206D61 */  .float  4.734977012186245e+22
/* 0AA63C 800AAA8C 70206361 */  .float  1.985509731884236e+29
/* 0AA640 800AAA90 6E63656C */  .float  1.759392718820164e+28
/* 0AA644 800AAA94 65642E0A */  .float  6.734680180610063e+22
/* 0AA648 800AAA98 00000000 */  .float  0.0
/* 0AA64C 800AAA9C 77686F6C */  .float  4.7143467784673316e+33
/* 0AA650 800AAAA0 65206D61 */  .float  4.734977012186245e+22
/* 0AA654 800AAAA4 70206669 */  .float  1.9856563141398642e+29
/* 0AA658 800AAAA8 6E697368 */  .float  1.8062381220935825e+28
/* 0AA65C 800AAAAC 65642E0A */  .float  6.734680180610063e+22
/* 0AA660 800AAAB0 00000000 */  .float  0.0

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
/* 0AA95C 800AADAC 5E342573 */  .word  0x5E342573
/* 0AA960 800AADB0 5E5E2025 */  .word  0x5E5E2025
/* 0AA964 800AADB4 73000000 */  .word  0x73000000

glabel D_800AADB8
/* 0AA968 800AADB8 20000000 */  .word  0x20000000

glabel D_800AADBC
/* 0AA96C 800AADBC A4CF20A4 */  .word  0xA4CF20A4
/* 0AA970 800AADC0 C8A4EAA4 */  .word  0xC8A4EAA4
/* 0AA974 800AADC4 C0A4B9A4 */  .word  0xC0A4B9A4
/* 0AA978 800AADC8 B3A4C8A4 */  .word  0xB3A4C8A4
/* 0AA97C 800AADCC AC20A4C7 */  .word  0xAC20A4C7
/* 0AA980 800AADD0 A4ADA4CA */  .word  0xA4ADA4CA
/* 0AA984 800AADD4 A4A40000 */  .word  0xA4A40000

glabel D_800AADD8
/* 0AA988 800AADD8 A4CF20A4 */  .word  0xA4CF20A4
/* 0AA98C 800AADDC C9A4A6A4 */  .word  0xC9A4A6A4
/* 0AA990 800AADE0 B0A4A4A4 */  .word  0xB0A4A4A4
/* 0AA994 800AADE4 ECA4CBA4 */  .word  0xECA4CBA4
/* 0AA998 800AADE8 CF20A4CF */  .word  0xCF20A4CF
/* 0AA99C 800AADEC A4A4A4E9 */  .word  0xA4A4A4E9
/* 0AA9A0 800AADF0 A4CAA4A4 */  .word  0xA4CAA4A4
/* 0AA9A4 800AADF4 00000000 */  .word  0x00000000

glabel D_800AADF8
/* 0AA9A8 800AADF8 A4C9A4A6 */  .word  0xA4C9A4A6
/* 0AA9AC 800AADFC A4B0A4CF */  .word  0xA4B0A4CF
/* 0AA9B0 800AAE00 20A5ACA5 */  .word  0x20A5ACA5
/* 0AA9B4 800AAE04 E9A5AFA5 */  .word  0xE9A5AFA5
/* 0AA9B8 800AAE08 BFA4A4A4 */  .word  0xBFA4A4A4
/* 0AA9BC 800AAE0C ECA4CBA4 */  .word  0xECA4CBA4
/* 0AA9C0 800AAE10 CF20A4CF */  .word  0xCF20A4CF
/* 0AA9C4 800AAE14 A4A4A4E9 */  .word  0xA4A4A4E9
/* 0AA9C8 800AAE18 A4CAA4A4 */  .word  0xA4CAA4A4
/* 0AA9CC 800AAE1C 00000000 */  .word  0x00000000

glabel D_800AAE20
/* 0AA9D0 800AAE20 A4CF20A4 */  .word  0xA4CF20A4
/* 0AA9D4 800AAE24 E2A4A620 */  .word  0xE2A4A620
/* 0AA9D8 800AAE28 A4E2A4C3 */  .word  0xA4E2A4C3
/* 0AA9DC 800AAE2C A4C6A4A4 */  .word  0xA4C6A4A4
/* 0AA9E0 800AAE30 A4EB0000 */  .word  0xA4EB0000

glabel D_800AAE34
/* 0AA9E4 800AAE34 A4F220A5 */  .word  0xA4F220A5
/* 0AA9E8 800AAE38 C4A1BCA5 */  .word  0xC4A1BCA5
/* 0AA9EC 800AAE3C EBA5DCA5 */  .word  0xEBA5DCA5
/* 0AA9F0 800AAE40 C3A5AFA5 */  .word  0xC3A5AFA5
/* 0AA9F4 800AAE44 B9A4CB20 */  .word  0xB9A4CB20
/* 0AA9F8 800AAE48 A4B7A4DE */  .word  0xA4B7A4DE
/* 0AA9FC 800AAE4C A4C3A4BF */  .word  0xA4C3A4BF
/* 0AAA00 800AAE50 00000000 */  .word  0x00000000

glabel D_800AAE54
/* 0AAA04 800AAE54 A4F220A4 */  .word  0xA4F220A4
/* 0AAA08 800AAE58 ABA4EFA4 */  .word  0xABA4EFA4
/* 0AAA0C 800AAE5C EAA4CB20 */  .word  0xEAA4CB20
/* 0AAA10 800AAE60 A4C0A4B7 */  .word  0xA4C0A4B7
/* 0AAA14 800AAE64 A4BF0000 */  .word  0xA4BF0000

glabel D_800AAE68
/* 0AAA18 800AAE68 A4F220A5 */  .word  0xA4F220A5
/* 0AAA1C 800AAE6C C4A1BCA5 */  .word  0xC4A1BCA5
/* 0AAA20 800AAE70 EBA5DCA5 */  .word  0xEBA5DCA5
/* 0AAA24 800AAE74 C3A5AFA5 */  .word  0xC3A5AFA5
/* 0AAA28 800AAE78 B9A4ABA4 */  .word  0xB9A4ABA4
/* 0AAA2C 800AAE7C E920A4C0 */  .word  0xE920A4C0
/* 0AAA30 800AAE80 A4B7A4BF */  .word  0xA4B7A4BF
/* 0AAA34 800AAE84 00000000 */  .word  0x00000000

glabel D_800AAE88
/* 0AAA38 800AAE88 A4F220A5 */  .word  0xA4F220A5
/* 0AAA3C 800AAE8C C4A1BCA5 */  .word  0xC4A1BCA5
/* 0AAA40 800AAE90 EBA5DCA5 */  .word  0xEBA5DCA5
/* 0AAA44 800AAE94 C3A5AFA5 */  .word  0xC3A5AFA5
/* 0AAA48 800AAE98 B9A4CB20 */  .word  0xB9A4CB20
/* 0AAA4C 800AAE9C A4B7A4DE */  .word  0xA4B7A4DE
/* 0AAA50 800AAEA0 A4C3A4BF */  .word  0xA4C3A4BF
/* 0AAA54 800AAEA4 00000000 */  .word  0x00000000

glabel D_800AAEA8
/* 0AAA58 800AAEA8 A4CAA4CB */  .word  0xA4CAA4CB
/* 0AAA5C 800AAEAC A4E220A4 */  .word  0xA4E220A4
/* 0AAA60 800AAEB0 CAA4A400 */  .word  0xCAA4A400
/* 0AAA64 800AAEB4 636F6E74 */  .word  0x636F6E74
/* 0AAA68 800AAEB8 656E7473 */  .word  0x656E7473
/* 0AAA6C 800AAEBC 5B25645D */  .word  0x5B25645D
/* 0AAA70 800AAEC0 5B25645D */  .word  0x5B25645D
/* 0AAA74 800AAEC4 2E6F626A */  .word  0x2E6F626A
/* 0AAA78 800AAEC8 4944203D */  .word  0x4944203D
/* 0AAA7C 800AAECC 2025640A */  .word  0x2025640A
/* 0AAA80 800AAED0 00000000 */  .word  0x00000000
/* 0AAA84 800AAED4 4552524F */  .word  0x4552524F
/* 0AAA88 800AAED8 523A2043 */  .word  0x523A2043
/* 0AAA8C 800AAEDC 616E6E6F */  .word  0x616E6E6F
/* 0AAA90 800AAEE0 74206368 */  .word  0x74206368
/* 0AAA94 800AAEE4 616E6765 */  .word  0x616E6765
/* 0AAA98 800AAEE8 206D6F64 */  .word  0x206D6F64
/* 0AAA9C 800AAEEC 6520746F */  .word  0x6520746F
/* 0AAAA0 800AAEF0 2025640A */  .word  0x2025640A
/* 0AAAA4 800AAEF4 00000000 */  .word  0x00000000

glabel D_800AAEF8
/* 0AAAA8 800AAEF8 A5C4A1BC */  .word  0xA5C4A1BC
/* 0AAAAC 800AAEFC A5EBA5DC */  .word  0xA5EBA5DC
/* 0AAAB0 800AAF00 A5C3A5AF */  .word  0xA5C3A5AF
/* 0AAAB4 800AAF04 A5B9A4F2 */  .word  0xA5B9A4F2
/* 0AAAB8 800AAF08 20A4C8A4 */  .word  0x20A4C8A4
/* 0AAABC 800AAF0C B8A4BF00 */  .word  0xB8A4BF00
/* 0AAAC0 800AAF10 6974656D */  .word  0x6974656D
/* 0AAAC4 800AAF14 626F7820 */  .word  0x626F7820
/* 0AAAC8 800AAF18 68656C70 */  .word  0x68656C70
/* 0AAACC 800AAF1C 206D6F64 */  .word  0x206D6F64
/* 0AAAD0 800AAF20 652E0A00 */  .word  0x652E0A00

glabel D_800AAF24
/* 0AAAD4 800AAF24 A1CAA4CA */  .word  0xA1CAA4CA
/* 0AAAD8 800AAF28 A4CBA4E2 */  .word  0xA4CBA4E2
/* 0AAADC 800AAF2C 20A4CAA4 */  .word  0x20A4CAA4
/* 0AAAE0 800AAF30 A4A1CB0A */  .word  0xA4A1CB0A
/* 0AAAE4 800AAF34 A4E2A4C1 */  .word  0xA4E2A4C1
/* 0AAAE8 800AAF38 A4E2A4CE */  .word  0xA4E2A4CE
/* 0AAAEC 800AAF3C A4AC20A4 */  .word  0xA4AC20A4
/* 0AAAF0 800AAF40 A2A4EB20 */  .word  0xA2A4EB20
/* 0AAAF4 800AAF44 A4C8A4B3 */  .word  0xA4C8A4B3
/* 0AAAF8 800AAF48 A4EDA4C7 */  .word  0xA4EDA4C7
/* 0AAAFC 800AAF4C 0AA1D0A1 */  .word  0x0AA1D0A1
/* 0AAB00 800AAF50 D1A5DCA5 */  .word  0xD1A5DCA5
/* 0AAB04 800AAF54 BFA5F3A4 */  .word  0xBFA5F3A4
/* 0AAB08 800AAF58 F220A4AA */  .word  0xF220A4AA
/* 0AAB0C 800AAF5C A4B9A4C8 */  .word  0xA4B9A4C8
/* 0AAB10 800AAF60 20A4BBA4 */  .word  0x20A4BBA4
/* 0AAB14 800AAF64 C4A4E1A4 */  .word  0xC4A4E1A4
/* 0AAB18 800AAF68 A4A4F20A */  .word  0xA4A4F20A
/* 0AAB1C 800AAF6C A4E8A4E0 */  .word  0xA4E8A4E0
/* 0AAB20 800AAF70 A4B3A4C8 */  .word  0xA4B3A4C8
/* 0AAB24 800AAF74 A4AC20A4 */  .word  0xA4AC20A4
/* 0AAB28 800AAF78 C7A4ADA4 */  .word  0xC7A4ADA4
/* 0AAB2C 800AAF7C EB000000 */  .word  0xEB000000

glabel D_800AAF80
/* 0AAB30 800AAF80 5E34252D */  .word  0x5E34252D
/* 0AAB34 800AAF84 3232735E */  .word  0x3232735E
/* 0AAB38 800AAF88 5E25730A */  .word  0x5E25730A
/* 0AAB3C 800AAF8C 00000000 */  .word  0x00000000

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
/* 0AAB60 800AAFB0 696E7661 */  .word  0x696E7661
/* 0AAB64 800AAFB4 6C696420 */  .word  0x6C696420
/* 0AAB68 800AAFB8 61727261 */  .word  0x61727261
/* 0AAB6C 800AAFBC 79206F66 */  .word  0x79206F66
/* 0AAB70 800AAFC0 20697465 */  .word  0x20697465
/* 0AAB74 800AAFC4 6D467265 */  .word  0x6D467265
/* 0AAB78 800AAFC8 71543A25 */  .word  0x71543A25
/* 0AAB7C 800AAFCC 64203E20 */  .word  0x64203E20
/* 0AAB80 800AAFD0 25640A00 */  .word  0x25640A00
/* 0AAB84 800AAFD4 00000000 */  .word  0x00000000
/* 0AAB88 800AAFD8 00000000 */  .word  0x00000000
/* 0AAB8C 800AAFDC 00000000 */  .word  0x00000000
/* 0AAB90 800AAFE0 205F6565 */  .word  0x205F6565
/* 0AAB94 800AAFE4 70726F6D */  .word  0x70726F6D
/* 0AAB98 800AAFE8 4964785B */  .word  0x4964785B
/* 0AAB9C 800AAFEC 25645D20 */  .word  0x25645D20
/* 0AABA0 800AAFF0 3D202564 */  .word  0x3D202564
/* 0AABA4 800AAFF4 0A000000 */  .word  0x0A000000
/* 0AABA8 800AAFF8 0A707265 */  .word  0x0A707265
/* 0AABAC 800AAFFC 73657276 */  .word  0x73657276
/* 0AABB0 800AB000 65642064 */  .word  0x65642064
/* 0AABB4 800AB004 61746120 */  .word  0x61746120
/* 0AABB8 800AB008 20207369 */  .word  0x20207369
/* 0AABBC 800AB00C 7A653A20 */  .word  0x7A653A20
/* 0AABC0 800AB010 25640A00 */  .word  0x25640A00
/* 0AABC4 800AB014 556E6B6E */  .word  0x556E6B6E
/* 0AABC8 800AB018 6F776E20 */  .word  0x6F776E20
/* 0AABCC 800AB01C 74797065 */  .word  0x74797065
/* 0AABD0 800AB020 3A25640A */  .word  0x3A25640A
/* 0AABD4 800AB024 00000000 */  .word  0x00000000
/* 0AABD8 800AB028 556E6B6E */  .word  0x556E6B6E
/* 0AABDC 800AB02C 6F776E20 */  .word  0x6F776E20
/* 0AABE0 800AB030 74797065 */  .word  0x74797065
/* 0AABE4 800AB034 3A25640A */  .word  0x3A25640A
/* 0AABE8 800AB038 00000000 */  .word  0x00000000
/* 0AABEC 800AB03C 70645361 */  .word  0x70645361
/* 0AABF0 800AB040 76654643 */  .word  0x76654643
/* 0AABF4 800AB044 425F4545 */  .word  0x425F4545
/* 0AABF8 800AB048 50524F4D */  .word  0x50524F4D
/* 0AABFC 800AB04C 3A206565 */  .word  0x3A206565
/* 0AAC00 800AB050 70726F6D */  .word  0x70726F6D
/* 0AAC04 800AB054 57726974 */  .word  0x57726974
/* 0AAC08 800AB058 6520616E */  .word  0x6520616E
/* 0AAC0C 800AB05C 733A2564 */  .word  0x733A2564
/* 0AAC10 800AB060 0A000000 */  .word  0x0A000000
/* 0AAC14 800AB064 70644C6F */  .word  0x70644C6F
/* 0AAC18 800AB068 61644643 */  .word  0x61644643
/* 0AAC1C 800AB06C 425F4545 */  .word  0x425F4545
/* 0AAC20 800AB070 50524F4D */  .word  0x50524F4D
/* 0AAC24 800AB074 3A206565 */  .word  0x3A206565
/* 0AAC28 800AB078 70726F6D */  .word  0x70726F6D
/* 0AAC2C 800AB07C 57726974 */  .word  0x57726974
/* 0AAC30 800AB080 6520616E */  .word  0x6520616E
/* 0AAC34 800AB084 733A2564 */  .word  0x733A2564
/* 0AAC38 800AB088 0A000000 */  .word  0x0A000000
/* 0AAC3C 800AB08C 70645361 */  .word  0x70645361
/* 0AAC40 800AB090 76654545 */  .word  0x76654545
/* 0AAC44 800AB094 50524F4D */  .word  0x50524F4D
/* 0AAC48 800AB098 3A206565 */  .word  0x3A206565
/* 0AAC4C 800AB09C 70726F6D */  .word  0x70726F6D
/* 0AAC50 800AB0A0 57726974 */  .word  0x57726974
/* 0AAC54 800AB0A4 6520616E */  .word  0x6520616E
/* 0AAC58 800AB0A8 733A2564 */  .word  0x733A2564
/* 0AAC5C 800AB0AC 0A000000 */  .word  0x0A000000
/* 0AAC60 800AB0B0 70644C6F */  .word  0x70644C6F
/* 0AAC64 800AB0B4 61644545 */  .word  0x61644545
/* 0AAC68 800AB0B8 50524F4D */  .word  0x50524F4D
/* 0AAC6C 800AB0BC 3A206565 */  .word  0x3A206565
/* 0AAC70 800AB0C0 70726F6D */  .word  0x70726F6D
/* 0AAC74 800AB0C4 52656164 */  .word  0x52656164
/* 0AAC78 800AB0C8 20616E73 */  .word  0x20616E73
/* 0AAC7C 800AB0CC 3A25640A */  .word  0x3A25640A
/* 0AAC80 800AB0D0 00000000 */  .word  0x00000000

glabel jtbl_800AB0D4
/* 0AAC84 800AB0D4 80030174 */  .word  L80030174
/* 0AAC88 800AB0D8 80030194 */  .word  L80030194
/* 0AAC8C 800AB0DC 800301B4 */  .word  L800301B4
/* 0AAC90 800AB0E0 800301D4 */  .word  L800301D4
/* 0AAC94 800AB0E4 800301F4 */  .word  L800301F4
/* 0AAC98 800AB0E8 80030214 */  .word  L80030214
/* 0AAC9C 800AB0EC 80030214 */  .word  L80030214
/* 0AACA0 800AB0F0 80030214 */  .word  L80030214

glabel jtbl_800AB0F4
/* 0AACA4 800AB0F4 800302F0 */  .word  L800302F0
/* 0AACA8 800AB0F8 80030318 */  .word  L80030318
/* 0AACAC 800AB0FC 80030340 */  .word  L80030340
/* 0AACB0 800AB100 80030368 */  .word  L80030368
/* 0AACB4 800AB104 80030390 */  .word  L80030390
/* 0AACB8 800AB108 800303B8 */  .word  L800303B8
/* 0AACBC 800AB10C 800303B8 */  .word  L800303B8
/* 0AACC0 800AB110 800303B8 */  .word  L800303B8
/* 0AACC4 800AB114 00000000 */  .word  0x00000000
/* 0AACC8 800AB118 00000000 */  .word  0x00000000
/* 0AACCC 800AB11C 00000000 */  .word  0x00000000
/* 0AACD0 800AB120 616C6C6F */  .word  0x616C6C6F
/* 0AACD4 800AB124 63617465 */  .word  0x63617465
/* 0AACD8 800AB128 64202575 */  .word  0x64202575
/* 0AACDC 800AB12C 20627974 */  .word  0x20627974
/* 0AACE0 800AB130 65732066 */  .word  0x65732066
/* 0AACE4 800AB134 6F722042 */  .word  0x6F722042
/* 0AACE8 800AB138 470A0000 */  .word  0x470A0000
/* 0AACEC 800AB13C 25642062 */  .word  0x25642062
/* 0AACF0 800AB140 79746573 */  .word  0x79746573
/* 0AACF4 800AB144 20627566 */  .word  0x20627566
/* 0AACF8 800AB148 66657220 */  .word  0x66657220
/* 0AACFC 800AB14C 6E656564 */  .word  0x6E656564
/* 0AAD00 800AB150 65642066 */  .word  0x65642066
/* 0AAD04 800AB154 6F72206D */  .word  0x6F72206D
/* 0AAD08 800AB158 656C7469 */  .word  0x656C7469
/* 0AAD0C 800AB15C 6E672042 */  .word  0x6E672042
/* 0AAD10 800AB160 472E0A00 */  .word  0x472E0A00
/* 0AAD14 800AB164 636E743A */  .word  0x636E743A
/* 0AAD18 800AB168 25640A00 */  .word  0x25640A00

glabel D_800AB16C
/* 0AAD1C 800AB16C 3A83126F */  .float  0.0010000000474974513

glabel D_800AB170
/* 0AAD20 800AB170 3C98EAD6 */  .float  0.018666666001081467

glabel D_800AB174
/* 0AAD24 800AB174 40B60B61 */  .float  5.688889026641846
/* 0AAD28 800AB178 00000000 */  .float  0.0
/* 0AAD2C 800AB17C 00000000 */  .float  0.0
/* 0AAD30 800AB180 556E6B6E */  .float  16384073400320.0
/* 0AAD34 800AB184 6F776E20 */  .float  7.657593038175729e+28
/* 0AAD38 800AB188 73706561 */  .float  1.90461342552199e+31
/* 0AAD3C 800AB18C 6B657254 */  .float  2.773839119972994e+26
/* 0AAD40 800AB190 79706520 */  .float  7.801264404497049e+34
/* 0AAD44 800AB194 25640A00 */  .float  1.9779235757924618e-16

glabel D_800AB198
/* 0AAD48 800AB198 3F19999A */  .float  0.6000000238418579
/* 0AAD4C 800AB19C 00000000 */  .float  0.0

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

glabel D_800AB5F0
/* 0AB1A0 800AB5F0 3E2E147B */  .float  0.17000000178813934

glabel D_800AB5F4
/* 0AB1A4 800AB5F4 3E99999A */  .float  0.30000001192092896
/* 0AB1A8 800AB5F8 00000000 */  .float  0.0
/* 0AB1AC 800AB5FC 00000000 */  .float  0.0
/* 0AB1B0 800AB600 496E7661 */  .float  976742.0625
/* 0AB1B4 800AB604 6C696420 */  .float  1.1286101716572237e+27
/* 0AB1B8 800AB608 65796543 */  .float  7.360857520279918e+22
/* 0AB1BC 800AB60C 61746368 */  .float  2.8176053307452896e+20
/* 0AB1C0 800AB610 20746162 */  .float  2.0699825182803283e-19
/* 0AB1C4 800AB614 6C652E0A */  .float  1.1082457040696113e+27
/* 0AB1C8 800AB618 5F657965 */  .float  1.6535358557541892e+19
/* 0AB1CC 800AB61C 43617463 */  .float  225.4546356201172
/* 0AB1D0 800AB620 6854626C */  .float  4.0118290300309777e+24
/* 0AB1D4 800AB624 5B25645D */  .float  4.655372175199437e+16
/* 0AB1D8 800AB628 2E636174 */  .float  5.1700380088171016e-11
/* 0AB1DC 800AB62C 6368203D */  .float  4.281967638083409e+21
/* 0AB1E0 800AB630 2025640A */  .float  1.4009143778895148e-19
/* 0AB1E4 800AB634 00000000 */  .float  0.0
/* 0AB1E8 800AB638 6563496E */  .float  6.70832331415084e+22
/* 0AB1EC 800AB63C 69742825 */  .float  1.844796732342594e+25
/* 0AB1F0 800AB640 64290A00 */  .float  1.2472881297589174e+22
/* 0AB1F4 800AB644 63686970 */  .float  4.28724219767199e+21
/* 0AB1F8 800AB648 3A25642F */  .float  0.0006309179007075727
/* 0AB1FC 800AB64C 25640A00 */  .float  1.9779235757924618e-16

glabel D_800AB650
/* 0AB200 800AB650 3DCCCCCD */  .float  0.10000000149011612

glabel D_800AB654
/* 0AB204 800AB654 3F99999A */  .float  1.2000000476837158

glabel D_800AB658
/* 0AB208 800AB658 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800AB660
/* 0AB210 800AB660 40266666 */  .float  2.5999999046325684

glabel D_800AB664
/* 0AB214 800AB664 3F4CCCCD */  .float  0.800000011920929

glabel D_800AB668
/* 0AB218 800AB668 3FE99999 */  .word  0x3FE99999

glabel D_800AB66C
/* 0AB21C 800AB66C A0000000 */  .word  0xA0000000
/* 0AB220 800AB670 616C6C6F */  .word  0x616C6C6F
/* 0AB224 800AB674 6320646D */  .word  0x6320646D
/* 0AB228 800AB678 614D6573 */  .word  0x614D6573
/* 0AB22C 800AB67C 73616765 */  .word  0x73616765
/* 0AB230 800AB680 42756670 */  .word  0x42756670
/* 0AB234 800AB684 3A257020 */  .word  0x3A257020
/* 0AB238 800AB688 73697A65 */  .word  0x73697A65
/* 0AB23C 800AB68C 3A25640A */  .word  0x3A25640A
/* 0AB240 800AB690 00000000 */  .word  0x00000000
/* 0AB244 800AB694 616C6C6F */  .word  0x616C6C6F
/* 0AB248 800AB698 6320646D */  .word  0x6320646D
/* 0AB24C 800AB69C 61496F4D */  .word  0x61496F4D
/* 0AB250 800AB6A0 65736746 */  .word  0x65736746
/* 0AB254 800AB6A4 69666F3A */  .word  0x69666F3A
/* 0AB258 800AB6A8 25702073 */  .word  0x25702073
/* 0AB25C 800AB6AC 697A653A */  .word  0x697A653A
/* 0AB260 800AB6B0 25640A00 */  .word  0x25640A00
/* 0AB264 800AB6B4 66726565 */  .word  0x66726565
/* 0AB268 800AB6B8 20646D61 */  .word  0x20646D61
/* 0AB26C 800AB6BC 496F4D65 */  .word  0x496F4D65
/* 0AB270 800AB6C0 73674669 */  .word  0x73674669
/* 0AB274 800AB6C4 666F3A25 */  .word  0x666F3A25
/* 0AB278 800AB6C8 700A0000 */  .word  0x700A0000
/* 0AB27C 800AB6CC 66726565 */  .word  0x66726565
/* 0AB280 800AB6D0 20646D61 */  .word  0x20646D61
/* 0AB284 800AB6D4 4D657373 */  .word  0x4D657373
/* 0AB288 800AB6D8 61676542 */  .word  0x61676542
/* 0AB28C 800AB6DC 7566703A */  .word  0x7566703A
/* 0AB290 800AB6E0 25700A00 */  .word  0x25700A00
/* 0AB294 800AB6E4 00000000 */  .word  0x00000000
/* 0AB298 800AB6E8 00000000 */  .word  0x00000000
/* 0AB29C 800AB6EC 00000000 */  .word  0x00000000

glabel D_800AB6F0
/* 0AB2A0 800AB6F0  */  .asciz  "none"
                        .balign 4
/* 0AB2A8 800AB6F8  */  .asciz  ""
                        .balign 4
/* 0AB2AC 800AB6FC  */  .asciz  ""
                        .balign 4
/* 0AB2B0 800AB700  */  .asciz  "Initializing Mic failed.\n"
                        .balign 4
/* 0AB2CC 800AB71C  */  .asciz  "mic64Init() End\n"
                        .balign 4
/* 0AB2E0 800AB730  */  .asciz  "%d:%s\n"
                        .balign 4
/* 0AB2E8 800AB738  */  .asciz  "All Words Downloaded.\n"
                        .balign 4

glabel D_800AB750
/* 0AB300 800AB750 00000000 */  .word  0x00000000

glabel jtbl_800AB754
/* 0AB304 800AB754 80036544 */  .word  L80036544
/* 0AB308 800AB758 800364E0 */  .word  L800364E0
/* 0AB30C 800AB75C 80036544 */  .word  L80036544
/* 0AB310 800AB760 800364E0 */  .word  L800364E0
/* 0AB314 800AB764 80036544 */  .word  L80036544
/* 0AB318 800AB768 80036544 */  .word  L80036544
/* 0AB31C 800AB76C 80036544 */  .word  L80036544
/* 0AB320 800AB770 80036544 */  .word  L80036544
/* 0AB324 800AB774 00000000 */  .word  0x00000000
/* 0AB328 800AB778 00000000 */  .word  0x00000000
/* 0AB32C 800AB77C 00000000 */  .word  0x00000000
/* 0AB330 800AB780 68656170 */  .word  0x68656170
/* 0AB334 800AB784 52656769 */  .word  0x52656769
/* 0AB338 800AB788 6F6E3A25 */  .word  0x6F6E3A25
/* 0AB33C 800AB78C 70206865 */  .word  0x70206865
/* 0AB340 800AB790 61704865 */  .word  0x61704865
/* 0AB344 800AB794 61643A25 */  .word  0x61643A25
/* 0AB348 800AB798 700A6865 */  .word  0x700A6865
/* 0AB34C 800AB79C 61705369 */  .word  0x61705369
/* 0AB350 800AB7A0 7A653A30 */  .word  0x7A653A30
/* 0AB354 800AB7A4 78257820 */  .word  0x78257820
/* 0AB358 800AB7A8 616C6967 */  .word  0x616C6967
/* 0AB35C 800AB7AC 6E5F6D61 */  .word  0x6E5F6D61
/* 0AB360 800AB7B0 736B3A30 */  .word  0x736B3A30
/* 0AB364 800AB7B4 78257820 */  .word  0x78257820
/* 0AB368 800AB7B8 73697A65 */  .word  0x73697A65
/* 0AB36C 800AB7BC 6F662868 */  .word  0x6F662868
/* 0AB370 800AB7C0 65617048 */  .word  0x65617048
/* 0AB374 800AB7C4 65616465 */  .word  0x65616465
/* 0AB378 800AB7C8 7254293A */  .word  0x7254293A
/* 0AB37C 800AB7CC 25640A00 */  .word  0x25640A00
/* 0AB380 800AB7D0 68703A25 */  .word  0x68703A25
/* 0AB384 800AB7D4 70206D65 */  .word  0x70206D65
/* 0AB388 800AB7D8 6D703A25 */  .word  0x6D703A25
/* 0AB38C 800AB7DC 700A0000 */  .word  0x700A0000
/* 0AB390 800AB7E0 70726576 */  .word  0x70726576
/* 0AB394 800AB7E4 3A257020 */  .word  0x3A257020
/* 0AB398 800AB7E8 6E657874 */  .word  0x6E657874
/* 0AB39C 800AB7EC 3A257020 */  .word  0x3A257020
/* 0AB3A0 800AB7F0 73697A65 */  .word  0x73697A65
/* 0AB3A4 800AB7F4 3A25640A */  .word  0x3A25640A
/* 0AB3A8 800AB7F8 00000000 */  .word  0x00000000
/* 0AB3AC 800AB7FC 6F776E65 */  .word  0x6F776E65
/* 0AB3B0 800AB800 723A2564 */  .word  0x723A2564
/* 0AB3B4 800AB804 20636865 */  .word  0x20636865
/* 0AB3B8 800AB808 636B6572 */  .word  0x636B6572
/* 0AB3BC 800AB80C 3A307825 */  .word  0x3A307825
/* 0AB3C0 800AB810 78207573 */  .word  0x78207573
/* 0AB3C4 800AB814 65466C61 */  .word  0x65466C61
/* 0AB3C8 800AB818 673A2564 */  .word  0x673A2564
/* 0AB3CC 800AB81C 0A000000 */  .word  0x0A000000
/* 0AB3D0 800AB820 72656769 */  .word  0x72656769
/* 0AB3D4 800AB824 6F6E5369 */  .word  0x6F6E5369
/* 0AB3D8 800AB828 7A653A25 */  .word  0x7A653A25
/* 0AB3DC 800AB82C 64206865 */  .word  0x64206865
/* 0AB3E0 800AB830 61705265 */  .word  0x61705265
/* 0AB3E4 800AB834 67696F6E */  .word  0x67696F6E
/* 0AB3E8 800AB838 3A257020 */  .word  0x3A257020
/* 0AB3EC 800AB83C 68656170 */  .word  0x68656170
/* 0AB3F0 800AB840 456E7472 */  .word  0x456E7472
/* 0AB3F4 800AB844 793A2570 */  .word  0x793A2570
/* 0AB3F8 800AB848 0A0A0000 */  .word  0x0A0A0000
/* 0AB3FC 800AB84C 2D2D2D2D */  .word  0x2D2D2D2D
/* 0AB400 800AB850 2D2D2D2D */  .word  0x2D2D2D2D
/* 0AB404 800AB854 2D2D2D2D */  .word  0x2D2D2D2D
/* 0AB408 800AB858 2D2D2D2D */  .word  0x2D2D2D2D
/* 0AB40C 800AB85C 0A486561 */  .word  0x0A486561
/* 0AB410 800AB860 705F4469 */  .word  0x705F4469
/* 0AB414 800AB864 73706C61 */  .word  0x73706C61
/* 0AB418 800AB868 795F416C */  .word  0x795F416C
/* 0AB41C 800AB86C 6C280A00 */  .word  0x6C280A00
/* 0AB420 800AB870 72656769 */  .word  0x72656769
/* 0AB424 800AB874 6F6E5369 */  .word  0x6F6E5369
/* 0AB428 800AB878 7A653A25 */  .word  0x7A653A25
/* 0AB42C 800AB87C 64206865 */  .word  0x64206865
/* 0AB430 800AB880 61705265 */  .word  0x61705265
/* 0AB434 800AB884 67696F6E */  .word  0x67696F6E
/* 0AB438 800AB888 3A257020 */  .word  0x3A257020
/* 0AB43C 800AB88C 68656170 */  .word  0x68656170
/* 0AB440 800AB890 456E7472 */  .word  0x456E7472
/* 0AB444 800AB894 793A2570 */  .word  0x793A2570
/* 0AB448 800AB898 0A0A0000 */  .word  0x0A0A0000
/* 0AB44C 800AB89C 68656170 */  .word  0x68656170
/* 0AB450 800AB8A0 3A257020 */  .word  0x3A257020
/* 0AB454 800AB8A4 6F776E65 */  .word  0x6F776E65
/* 0AB458 800AB8A8 723A2564 */  .word  0x723A2564
/* 0AB45C 800AB8AC 2073697A */  .word  0x2073697A
/* 0AB460 800AB8B0 653A2564 */  .word  0x653A2564
/* 0AB464 800AB8B4 20636865 */  .word  0x20636865
/* 0AB468 800AB8B8 636B6572 */  .word  0x636B6572
/* 0AB46C 800AB8BC 3A307825 */  .word  0x3A307825
/* 0AB470 800AB8C0 78207573 */  .word  0x78207573
/* 0AB474 800AB8C4 65466C61 */  .word  0x65466C61
/* 0AB478 800AB8C8 673A2564 */  .word  0x673A2564
/* 0AB47C 800AB8CC 0A000000 */  .word  0x0A000000
/* 0AB480 800AB8D0 292D2D2D */  .word  0x292D2D2D
/* 0AB484 800AB8D4 2D2D2D2D */  .word  0x2D2D2D2D
/* 0AB488 800AB8D8 2D2D2D2D */  .word  0x2D2D2D2D
/* 0AB48C 800AB8DC 2D2D2D2D */  .word  0x2D2D2D2D
/* 0AB490 800AB8E0 2D0A0000 */  .word  0x2D0A0000
/* 0AB494 800AB8E4 20206375 */  .word  0x20206375
/* 0AB498 800AB8E8 7272206F */  .word  0x7272206F
/* 0AB49C 800AB8EC 776E6572 */  .word  0x776E6572
/* 0AB4A0 800AB8F0 20746872 */  .word  0x20746872
/* 0AB4A4 800AB8F4 6561643A */  .word  0x6561643A
/* 0AB4A8 800AB8F8 2025640A */  .word  0x2025640A
/* 0AB4AC 800AB8FC 20207072 */  .word  0x20207072
/* 0AB4B0 800AB900 6576206F */  .word  0x6576206F
/* 0AB4B4 800AB904 776E6572 */  .word  0x776E6572
/* 0AB4B8 800AB908 20746872 */  .word  0x20746872
/* 0AB4BC 800AB90C 6561643A */  .word  0x6561643A
/* 0AB4C0 800AB910 2025640A */  .word  0x2025640A
/* 0AB4C4 800AB914 20206E65 */  .word  0x20206E65
/* 0AB4C8 800AB918 7874206F */  .word  0x7874206F
/* 0AB4CC 800AB91C 776E6572 */  .word  0x776E6572
/* 0AB4D0 800AB920 20746872 */  .word  0x20746872
/* 0AB4D4 800AB924 6561643A */  .word  0x6561643A
/* 0AB4D8 800AB928 2025640A */  .word  0x2025640A
/* 0AB4DC 800AB92C 00000000 */  .word  0x00000000
/* 0AB4E0 800AB930 25733A20 */  .word  0x25733A20
/* 0AB4E4 800AB934 4572726F */  .word  0x4572726F
/* 0AB4E8 800AB938 723A2053 */  .word  0x723A2053
/* 0AB4EC 800AB93C 7472616E */  .word  0x7472616E
/* 0AB4F0 800AB940 67652062 */  .word  0x67652062
/* 0AB4F4 800AB944 6F756E64 */  .word  0x6F756E64
/* 0AB4F8 800AB948 61727920 */  .word  0x61727920
/* 0AB4FC 800AB94C 6F66206D */  .word  0x6F66206D
/* 0AB500 800AB950 656D6F72 */  .word  0x656D6F72
/* 0AB504 800AB954 792E2825 */  .word  0x792E2825
/* 0AB508 800AB958 70290A00 */  .word  0x70290A00
/* 0AB50C 800AB95C 25733A20 */  .word  0x25733A20
/* 0AB510 800AB960 4572726F */  .word  0x4572726F
/* 0AB514 800AB964 723A2048 */  .word  0x723A2048
/* 0AB518 800AB968 65617020 */  .word  0x65617020
/* 0AB51C 800AB96C 63686169 */  .word  0x63686169
/* 0AB520 800AB970 6E206973 */  .word  0x6E206973
/* 0AB524 800AB974 2062726F */  .word  0x2062726F
/* 0AB528 800AB978 6B656E20 */  .word  0x6B656E20
/* 0AB52C 800AB97C 61742025 */  .word  0x61742025
/* 0AB530 800AB980 700A0000 */  .word  0x700A0000
/* 0AB534 800AB984 25733A20 */  .word  0x25733A20
/* 0AB538 800AB988 4572726F */  .word  0x4572726F
/* 0AB53C 800AB98C 723A2048 */  .word  0x723A2048
/* 0AB540 800AB990 65617020 */  .word  0x65617020
/* 0AB544 800AB994 69732025 */  .word  0x69732025
/* 0AB548 800AB998 73757365 */  .word  0x73757365
/* 0AB54C 800AB99C 64206174 */  .word  0x64206174
/* 0AB550 800AB9A0 2025700A */  .word  0x2025700A
/* 0AB554 800AB9A4 00000000 */  .word  0x00000000
/* 0AB558 800AB9A8 00000000 */  .word  0x00000000
/* 0AB55C 800AB9AC 756E0000 */  .word  0x756E0000

glabel D_800AB9B0
/* 0AB560 800AB9B0  */  .asciz  "heapDivide"
                        .balign 4

glabel D_800AB9BC
/* 0AB56C 800AB9BC  */  .asciz  "heapAllocLocal"
                        .balign 4

glabel D_800AB9CC
/* 0AB57C 800AB9CC  */  .asciz  "heapAllocLocal"
                        .balign 4

glabel D_800AB9DC
/* 0AB58C 800AB9DC  */  .asciz  "heapPrevCombine"
                        .balign 4
/* 0AB59C 800AB9EC  */  .asciz  "%s: Error: Heap chain is broken at %p\n"
                        .balign 4

glabel D_800ABA14
/* 0AB5C4 800ABA14  */  .asciz  "heapNextCombine"
                        .balign 4
/* 0AB5D4 800ABA24  */  .asciz  "%s: Error: Heap chain is broken at %p\n"
                        .balign 4

glabel D_800ABA4C
/* 0AB5FC 800ABA4C  */  .asciz  "heapShrinkLocal"
                        .balign 4
/* 0AB60C 800ABA5C  */  .asciz  "%s: warning: tried to shrink NULL\n"
                        .balign 4

glabel D_800ABA80
/* 0AB630 800ABA80  */  .asciz  "heapCheckSize"
                        .balign 4

glabel D_800ABA90
/* 0AB640 800ABA90  */  .asciz  "heapFreeLocal"
                        .balign 4
/* 0AB650 800ABAA0  */  .asciz  "%s: warning: tried to free NULL\n"
                        .balign 4

glabel D_800ABAC4
/* 0AB674 800ABAC4  */  .asciz  "heapGetSize"
                        .balign 4
/* 0AB680 800ABAD0  */  .asciz  "heapRegion:%p "
                        .balign 4
/* 0AB690 800ABAE0  */  .asciz  "globalHeap "
                        .balign 4
/* 0AB69C 800ABAEC  */  .asciz  "%s total 0x%x  max 0x%x\n"
                        .balign 4

glabel D_800ABB08
/* 0AB6B8 800ABB08  */  .asciz  "setHeapEntryNext"
                        .balign 4
/* 0AB6CC 800ABB1C  */  .asciz  "%s: warning: tried to set entry to NULL\n"
                        .balign 4

glabel D_800ABB48
/* 0AB6F8 800ABB48  */  .asciz  "setHeapEntryMax"
                        .balign 4
/* 0AB708 800ABB58  */  .asciz  ""
                        .balign 4
/* 0AB70C 800ABB5C  */  .asciz  ""
                        .balign 4
/* 0AB710 800ABB60 3F800000 */  .word  0x3F800000
/* 0AB714 800ABB64  */  .asciz  ""
                        .balign 4
/* 0AB718 800ABB68  */  .asciz  ""
                        .balign 4
/* 0AB71C 800ABB6C  */  .asciz  ""
                        .balign 4
/* 0AB720 800ABB70  */  .asciz  ""
                        .balign 4
/* 0AB724 800ABB74 3F800000 */  .word  0x3F800000
/* 0AB728 800ABB78  */  .asciz  ""
                        .balign 4
/* 0AB72C 800ABB7C  */  .asciz  ""
                        .balign 4
/* 0AB730 800ABB80  */  .asciz  ""
                        .balign 4
/* 0AB734 800ABB84  */  .asciz  ""
                        .balign 4
/* 0AB738 800ABB88 3F800000 */  .word  0x3F800000
/* 0AB73C 800ABB8C  */  .asciz  ""
                        .balign 4
/* 0AB740 800ABB90  */  .asciz  ""
                        .balign 4
/* 0AB744 800ABB94  */  .asciz  ""
                        .balign 4
/* 0AB748 800ABB98  */  .asciz  ""
                        .balign 4
/* 0AB74C 800ABB9C 3F800000 */  .word  0x3F800000

glabel D_800ABBA0
/* 0AB750 800ABBA0 3F800000 */  .word  0x3F800000
/* 0AB754 800ABBA4 00000000 */  .word  0x00000000
/* 0AB758 800ABBA8 00000000 */  .word  0x00000000
/* 0AB75C 800ABBAC 00000000 */  .word  0x00000000
/* 0AB760 800ABBB0 3F800000 */  .word  0x3F800000
/* 0AB764 800ABBB4 00000000 */  .word  0x00000000
/* 0AB768 800ABBB8 00000000 */  .word  0x00000000
/* 0AB76C 800ABBBC 00000000 */  .word  0x00000000
/* 0AB770 800ABBC0 3F800000 */  .word  0x3F800000
/* 0AB774 800ABBC4 00000000 */  .word  0x00000000
/* 0AB778 800ABBC8 00000000 */  .word  0x00000000
/* 0AB77C 800ABBCC 00000000 */  .word  0x00000000
/* 0AB780 800ABBD0 00000001 */  .word  0x00000001
/* 0AB784 800ABBD4 00000001 */  .word  0x00000001
/* 0AB788 800ABBD8 00000000 */  .word  0x00000000
/* 0AB78C 800ABBDC 00000001 */  .word  0x00000001
/* 0AB790 800ABBE0 00000001 */  .word  0x00000001
/* 0AB794 800ABBE4 00000001 */  .word  0x00000001
/* 0AB798 800ABBE8 00000000 */  .word  0x00000000
/* 0AB79C 800ABBEC 00000001 */  .word  0x00000001
/* 0AB7A0 800ABBF0 00000001 */  .word  0x00000001
/* 0AB7A4 800ABBF4 4D617472 */  .word  0x4D617472
/* 0AB7A8 800ABBF8 69783334 */  .word  0x69783334
/* 0AB7AC 800ABBFC 2025700A */  .word  0x2025700A
/* 0AB7B0 800ABC00 00000000 */  .word  0x00000000
/* 0AB7B4 800ABC04 25352E33 */  .word  0x25352E33
/* 0AB7B8 800ABC08 66200000 */  .word  0x66200000
/* 0AB7BC 800ABC0C 0A000000 */  .word  0x0A000000
/* 0AB7C0 800ABC10 4D617472 */  .word  0x4D617472
/* 0AB7C4 800ABC14 69782025 */  .word  0x69782025
/* 0AB7C8 800ABC18 700A0000 */  .word  0x700A0000
/* 0AB7CC 800ABC1C 25352E33 */  .word  0x25352E33
/* 0AB7D0 800ABC20 66200000 */  .word  0x66200000
/* 0AB7D4 800ABC24 0A000000 */  .word  0x0A000000
/* 0AB7D8 800ABC28 4D747820 */  .word  0x4D747820
/* 0AB7DC 800ABC2C 25700A00 */  .word  0x25700A00
/* 0AB7E0 800ABC30 25352E33 */  .word  0x25352E33
/* 0AB7E4 800ABC34 66200000 */  .word  0x66200000
/* 0AB7E8 800ABC38 0A000000 */  .word  0x0A000000

glabel D_800ABC3C
/* 0AB7EC 800ABC3C BDDD6712 */  .float  -0.10810674726963043

glabel D_800ABC40
/* 0AB7F0 800ABC40 C23249A5 */  .float  -44.57191848754883

glabel D_800ABC44
/* 0AB7F4 800ABC44 BE25CB3D */  .float  -0.1619081050157547

glabel D_800ABC48
/* 0AB7F8 800ABC48 C17C6261 */  .float  -15.774018287658691

glabel D_800ABC4C
/* 0AB7FC 800ABC4C BF0E39D2 */  .float  -0.5555697679519653

glabel D_800ABC50
/* 0AB800 800ABC50 C040000D */  .float  -3.0000030994415283
/* 0AB804 800ABC54 00000000 */  .float  0.0

glabel D_800ABC58
/* 0AB808 800ABC58 3FF921FB54442D18 */  .double  1.5707963267948966

glabel D_800ABC60
/* 0AB810 800ABC60 BFF921FB54442D18 */  .double  -1.5707963267948966

glabel D_800ABC68
/* 0AB818 800ABC68 400921FB54442D18 */  .double  3.141592653589793

glabel D_800ABC70
/* 0AB820 800ABC70 3FF921FB54442D18 */  .double  1.5707963267948966

glabel D_800ABC78
/* 0AB828 800ABC78 3FEFFFEB074A771D */  .double  0.99999

glabel D_800ABC80
/* 0AB830 800ABC80 3FC90FDB */  .float  1.5707963705062866
/* 0AB834 800ABC84 00000000 */  .float  0.0

glabel D_800ABC88
/* 0AB838 800ABC88 BFEFFFEB074A771D */  .double  -0.99999

glabel D_800ABC90
/* 0AB840 800ABC90 BFC90FDB */  .float  -1.5707963705062866
/* 0AB844 800ABC94 00000000 */  .float  0.0

glabel D_800ABC98
/* 0AB848 800ABC98 3FEFFFEB074A771D */  .double  0.99999

glabel D_800ABCA0
/* 0AB850 800ABCA0 BFEFFFEB074A771D */  .double  -0.99999

glabel D_800ABCA8
/* 0AB858 800ABCA8 40490FDB */  .float  3.1415927410125732
/* 0AB85C 800ABCAC 00000000 */  .float  0.0

glabel D_800ABCB0
/* 0AB860 800ABCB0 3FF921FB54442D18 */  .double  1.5707963267948966

glabel D_800ABCB8
/* 0AB868 800ABCB8 40C45F07AF68ECEF */  .double  10430.060040584269

glabel D_800ABCC0
/* 0AB870 800ABCC0 38000100 */  .float  3.0518509447574615e-05
/* 0AB874 800ABCC4 00000000 */  .float  0.0

glabel D_800ABCC8
/* 0AB878 800ABCC8 40C45F07AF68ECEF */  .double  10430.060040584269

glabel D_800ABCD0
/* 0AB880 800ABCD0 38000100 */  .float  3.0518509447574615e-05

glabel D_800ABCD4
/* 0AB884 800ABCD4 3C010204 */  .float  0.007874015718698502

glabel D_800ABCD8
/* 0AB888 800ABCD8 3A83126F */  .float  0.0010000000474974513

glabel jtbl_800ABCDC
/* 0AB88C 800ABCDC 80039568 */  .word  L80039568
/* 0AB890 800ABCE0 800395C4 */  .word  L800395C4
/* 0AB894 800ABCE4 80039620 */  .word  L80039620
/* 0AB898 800ABCE8 80039680 */  .word  L80039680
/* 0AB89C 800ABCEC 800396E0 */  .word  L800396E0
/* 0AB8A0 800ABCF0 8003973C */  .word  L8003973C

glabel D_800ABCF4
/* 0AB8A4 800ABCF4 40233333 */  .float  2.549999952316284

glabel D_800ABCF8
/* 0AB8A8 800ABCF8 3BA3D70A */  .float  0.004999999888241291

glabel D_800ABCFC
/* 0AB8AC 800ABCFC 40233333 */  .float  2.549999952316284

glabel D_800ABD00
/* 0AB8B0 800ABD00 3F350529 */  .float  0.7071099877357483

glabel D_800ABD04
/* 0AB8B4 800ABD04 44B504BD */  .float  1448.1480712890625
/* 0AB8B8 800ABD08 44B504BD */  .float  1448.1480712890625

glabel D_800ABD0C
/* 0AB8BC 800ABD0C 3A83126F */  .float  0.0010000000474974513

glabel D_800ABD10
/* 0AB8C0 800ABD10 BA83126F */  .float  -0.0010000000474974513

glabel D_800ABD14
/* 0AB8C4 800ABD14 BA83126F */  .float  -0.0010000000474974513

glabel D_800ABD18
/* 0AB8C8 800ABD18 3A83126F */  .float  0.0010000000474974513

glabel D_800ABD1C
/* 0AB8CC 800ABD1C 3A83126F */  .float  0.0010000000474974513

glabel D_800ABD20
/* 0AB8D0 800ABD20 3F7FBE77 */  .float  0.9990000128746033

glabel D_800ABD24
/* 0AB8D4 800ABD24 BF7FBE77 */  .float  -0.9990000128746033

glabel D_800ABD28
/* 0AB8D8 800ABD28 3A83126F */  .float  0.0010000000474974513

glabel D_800ABD2C
/* 0AB8DC 800ABD2C BA83126F */  .float  -0.0010000000474974513

glabel D_800ABD30
/* 0AB8E0 800ABD30 BA83126F */  .float  -0.0010000000474974513

glabel D_800ABD34
/* 0AB8E4 800ABD34 3A83126F */  .float  0.0010000000474974513

glabel D_800ABD38
/* 0AB8E8 800ABD38 40B60B61 */  .float  5.688889026641846
/* 0AB8EC 800ABD3C 00000000 */  .float  0.0
/* 0AB8F0 800ABD40 76695374 */  .float  1.1831033188501656e+33
/* 0AB8F4 800ABD44 61747573 */  .float  2.8184179138186812e+20
/* 0AB8F8 800ABD48 28257829 */  .float  9.185395533648031e-15
/* 0AB8FC 800ABD4C 0A706978 */  .float  1.1575416133493541e-32
/* 0AB900 800ABD50 656C2073 */  .float  6.969231702443183e+22
/* 0AB904 800ABD54 697A653A */  .float  1.8919342739348963e+25
/* 0AB908 800ABD58 2025730A */  .float  1.4014106862570466e-19
/* 0AB90C 800ABD5C 67616D6D */  .float  1.0645510080274546e+24
/* 0AB910 800ABD60 615F6469 */  .float  2.575537026695986e+20
/* 0AB914 800ABD64 74686572 */  .float  7.364931802737887e+31
/* 0AB918 800ABD68 3A25730A */  .float  0.0006311392644420266
/* 0AB91C 800ABD6C 67616D6D */  .float  1.0645510080274546e+24
/* 0AB920 800ABD70 613A2573 */  .float  2.1461205614448135e+20
/* 0AB924 800ABD74 0A646976 */  .float  1.0997635680809432e-32
/* 0AB928 800ABD78 6F743A25 */  .float  7.558463482150571e+28
/* 0AB92C 800ABD7C 730A7365 */  .float  1.0969199304605714e+31
/* 0AB930 800ABD80 72726174 */  .float  4.800843902449929e+30
/* 0AB934 800ABD84 653A2573 */  .float  5.494068637298723e+22
/* 0AB938 800ABD88 0A616E74 */  .float  1.0854129861093109e-32
/* 0AB93C 800ABD8C 69616C69 */  .float  1.7032516368848077e+25
/* 0AB940 800ABD90 61735F6D */  .float  2.8058968513234285e+20
/* 0AB944 800ABD94 6F64653A */  .float  7.068495764430376e+28
/* 0AB948 800ABD98 2025730A */  .float  1.4014106862570466e-19
/* 0AB94C 800ABD9C 64697468 */  .float  1.7225917293921212e+22
/* 0AB950 800ABDA0 65725F66 */  .float  7.153577996350303e+22
/* 0AB954 800ABDA4 696C7465 */  .float  1.786600944138855e+25
/* 0AB958 800ABDA8 723A2573 */  .float  3.687007049871453e+30
/* 0AB95C 800ABDAC 0A000000 */  .float  6.162975822039155e-33
/* 0AB960 800ABDB0 303A2062 */  .float  6.771242455627657e-10
/* 0AB964 800ABDB4 6C616E6B */  .float  1.0901189741120924e+27
/* 0AB968 800ABDB8 20286E6F */  .float  1.4266692924962069e-19
/* 0AB96C 800ABDBC 20646174 */  .float  1.934459573165113e-19
/* 0AB970 800ABDC0 612C206E */  .float  1.9844854912091842e+20
/* 0AB974 800ABDC4 6F207379 */  .float  4.965719944701532e+28
/* 0AB978 800ABDC8 6E632900 */  .float  1.7575665797012383e+28
/* 0AB97C 800ABDCC 313A2072 */  .float  2.7085005349647417e-09
/* 0AB980 800ABDD0 65736572 */  .float  7.183789944090555e+22
/* 0AB984 800ABDD4 76656400 */  .float  1.1631486538719147e+33
/* 0AB988 800ABDD8 323A2035 */  .float  1.0833947960975365e-08
/* 0AB98C 800ABDDC 2F352F35 */  .float  1.6478625408655745e-10
/* 0AB990 800ABDE0 2F332028 */  .float  1.6291379356658808e-10
/* 0AB994 800ABDE4 31362062 */  .float  2.6502893213375955e-09
/* 0AB998 800ABDE8 69742900 */  .float  1.8448219813235448e+25
/* 0AB99C 800ABDEC 333A2038 */  .float  4.33358025020425e-08
/* 0AB9A0 800ABDF0 2F382F38 */  .float  1.6751477982523966e-10
/* 0AB9A4 800ABDF4 2F382028 */  .float  1.6746126707545272e-10
/* 0AB9A8 800ABDF8 33322062 */  .float  4.147330656678605e-08
/* 0AB9AC 800ABDFC 69742900 */  .float  1.8448219813235448e+25
/* 0AB9B0 800ABE00 6F6E0000 */  .float  7.365743233748013e+28
/* 0AB9B4 800ABE04 6F666600 */  .float  7.130486269251006e+28
/* 0AB9B8 800ABE08 6F6E0000 */  .float  7.365743233748013e+28
/* 0AB9BC 800ABE0C 6F666600 */  .float  7.130486269251006e+28
/* 0AB9C0 800ABE10 6F6E0000 */  .float  7.365743233748013e+28
/* 0AB9C4 800ABE14 6F666600 */  .float  7.130486269251006e+28
/* 0AB9C8 800ABE18 6F6E0000 */  .float  7.365743233748013e+28
/* 0AB9CC 800ABE1C 6F666600 */  .float  7.130486269251006e+28
/* 0AB9D0 800ABE20 303A2061 */  .float  6.771241900516145e-10
/* 0AB9D4 800ABE24 61202620 */  .float  1.84639140472889e+20
/* 0AB9D8 800ABE28 72657361 */  .float  4.5447393144251227e+30
/* 0AB9DC 800ABE2C 6D702028 */  .float  4.6447048048756125e+27
/* 0AB9E0 800ABE30 616C7761 */  .float  2.726271098849193e+20
/* 0AB9E4 800ABE34 79732066 */  .float  7.889907843774103e+34
/* 0AB9E8 800ABE38 65746368 */  .float  7.213069646707941e+22
/* 0AB9EC 800ABE3C 20657874 */  .float  1.9436909088012048e-19
/* 0AB9F0 800ABE40 7261206C */  .float  4.4590926625030693e+30
/* 0AB9F4 800ABE44 696E6573 */  .float  1.8012714091163753e+25
/* 0AB9F8 800ABE48 29000000 */  .float  2.842170943040401e-14
/* 0AB9FC 800ABE4C 313A2061 */  .float  2.708496760206458e-09
/* 0ABA00 800ABE50 61202620 */  .float  1.84639140472889e+20
/* 0ABA04 800ABE54 72657361 */  .float  4.5447393144251227e+30
/* 0ABA08 800ABE58 6D702028 */  .float  4.6447048048756125e+27
/* 0ABA0C 800ABE5C 66657463 */  .float  2.708922201478772e+23
/* 0ABA10 800ABE60 68206578 */  .float  3.02980162128749e+24
/* 0ABA14 800ABE64 74726120 */  .float  7.681309624012347e+31
/* 0ABA18 800ABE68 6C696E65 */  .float  1.1288041576179028e+27
/* 0ABA1C 800ABE6C 73206966 */  .float  1.2709125238747136e+31
/* 0ABA20 800ABE70 206E6565 */  .float  2.019293278083991e-19
/* 0ABA24 800ABE74 64656429 */  .float  1.69260867710293e+22
/* 0ABA28 800ABE78 00000000 */  .float  0.0
/* 0ABA2C 800ABE7C 323A2072 */  .float  1.0834002139858967e-08
/* 0ABA30 800ABE80 6573616D */  .float  7.1833265236888984e+22
/* 0ABA34 800ABE84 70206F6E */  .float  1.986092471908222e+29
/* 0ABA38 800ABE88 6C792028 */  .float  1.2046975307250298e+27
/* 0ABA3C 800ABE8C 74726561 */  .float  7.681836232099371e+31
/* 0ABA40 800ABE90 74206173 */  .float  5.082666029881688e+31
/* 0ABA44 800ABE94 20616C6C */  .float  1.9094115102412417e-19
/* 0ABA48 800ABE98 2066756C */  .float  1.9520609426244758e-19
/* 0ABA4C 800ABE9C 6C792063 */  .float  1.2047018841566312e+27
/* 0ABA50 800ABEA0 6F766572 */  .float  7.625595227361101e+28
/* 0ABA54 800ABEA4 65642900 */  .float  6.7340992162581325e+22
/* 0ABA58 800ABEA8 333A206E */  .float  4.333599434858115e-08
/* 0ABA5C 800ABEAC 65697468 */  .float  6.890366917568485e+22
/* 0ABA60 800ABEB0 65722028 */  .float  7.14628666855359e+22
/* 0ABA64 800ABEB4 7265706C */  .float  4.5445105252137606e+30
/* 0ABA68 800ABEB8 69636174 */  .float  1.7180398151479483e+25
/* 0ABA6C 800ABEBC 65207069 */  .float  4.735326491517329e+22
/* 0ABA70 800ABEC0 78656C73 */  .float  1.861305612625561e+34
/* 0ABA74 800ABEC4 2C206E6F */  .float  2.279867050355988e-12
/* 0ABA78 800ABEC8 20696E74 */  .float  1.9772413544463556e-19
/* 0ABA7C 800ABECC 6572706F */  .float  7.155542016147799e+22
/* 0ABA80 800ABED0 6C617465 */  .float  1.0902318681858236e+27
/* 0ABA84 800ABED4 29000000 */  .float  2.842170943040401e-14
/* 0ABA88 800ABED8 6F6E0000 */  .float  7.365743233748013e+28
/* 0ABA8C 800ABEDC 6F666600 */  .float  7.130486269251006e+28
/* 0ABA90 800ABEE0 25730A00 */  .float  2.1080278364907223e-16
/* 0ABA94 800ABEE4 5761726E */  .float  247881588015104.0
/* 0ABA98 800ABEE8 696E673A */  .float  1.801323867044835e+25
/* 0ABA9C 800ABEEC 546F6F20 */  .float  4113446207488.0
/* 0ABAA0 800ABEF0 4C6F6E67 */  .float  62765468.0
/* 0ABAA4 800ABEF4 20537472 */  .float  1.7910923709034809e-19
/* 0ABAA8 800ABEF8 696E6728 */  .float  1.8013217917861267e+25
/* 0ABAAC 800ABEFC 6C656E20 */  .float  1.1094562532027044e+27
/* 0ABAB0 800ABF00 3E202564 */  .float  0.1563926339149475
/* 0ABAB4 800ABF04 290A0000 */  .float  3.064215547965432e-14
/* 0ABAB8 800ABF08 25730A00 */  .float  2.1080278364907223e-16
/* 0ABABC 800ABF0C 5761726E */  .float  247881588015104.0
/* 0ABAC0 800ABF10 696E673A */  .float  1.801323867044835e+25
/* 0ABAC4 800ABF14 546F6F20 */  .float  4113446207488.0
/* 0ABAC8 800ABF18 4C6F6E67 */  .float  62765468.0
/* 0ABACC 800ABF1C 20537472 */  .float  1.7910923709034809e-19
/* 0ABAD0 800ABF20 696E6728 */  .float  1.8013217917861267e+25
/* 0ABAD4 800ABF24 6C656E20 */  .float  1.1094562532027044e+27
/* 0ABAD8 800ABF28 3E202564 */  .float  0.1563926339149475
/* 0ABADC 800ABF2C 290A0000 */  .float  3.064215547965432e-14
/* 0ABAE0 800ABF30 4B414E4A */  .float  12668490.0
/* 0ABAE4 800ABF34 4920434F */  .float  656436.9375
/* 0ABAE8 800ABF38 44452045 */  .float  788.5042114257812
/* 0ABAEC 800ABF3C 52524F52 */  .float  225818476544.0
/* 0ABAF0 800ABF40 210A0000 */  .float  4.675621868843738e-19

glabel jtbl_800ABF44
/* 0ABAF4 800ABF44 8003CCD8 */  .word  L8003CCD8
/* 0ABAF8 800ABF48 8003CDFC */  .word  L8003CDFC
/* 0ABAFC 800ABF4C 8003CDFC */  .word  L8003CDFC
/* 0ABB00 800ABF50 8003CDFC */  .word  L8003CDFC
/* 0ABB04 800ABF54 8003CDFC */  .word  L8003CDFC
/* 0ABB08 800ABF58 8003CDFC */  .word  L8003CDFC
/* 0ABB0C 800ABF5C 8003CDFC */  .word  L8003CDFC
/* 0ABB10 800ABF60 8003CDFC */  .word  L8003CDFC
/* 0ABB14 800ABF64 8003CDFC */  .word  L8003CDFC
/* 0ABB18 800ABF68 8003CDFC */  .word  L8003CDFC
/* 0ABB1C 800ABF6C 8003CDFC */  .word  L8003CDFC
/* 0ABB20 800ABF70 8003CDFC */  .word  L8003CDFC
/* 0ABB24 800ABF74 8003CDFC */  .word  L8003CDFC
/* 0ABB28 800ABF78 8003CDFC */  .word  L8003CDFC
/* 0ABB2C 800ABF7C 8003CD8C */  .word  L8003CD8C
/* 0ABB30 800ABF80 8003CDFC */  .word  L8003CDFC
/* 0ABB34 800ABF84 8003CD18 */  .word  L8003CD18
/* 0ABB38 800ABF88 8003CD18 */  .word  L8003CD18
/* 0ABB3C 800ABF8C 8003CD18 */  .word  L8003CD18
/* 0ABB40 800ABF90 8003CD18 */  .word  L8003CD18
/* 0ABB44 800ABF94 8003CD18 */  .word  L8003CD18
/* 0ABB48 800ABF98 8003CD18 */  .word  L8003CD18
/* 0ABB4C 800ABF9C 8003CD18 */  .word  L8003CD18
/* 0ABB50 800ABFA0 8003CD18 */  .word  L8003CD18
/* 0ABB54 800ABFA4 8003CD18 */  .word  L8003CD18
/* 0ABB58 800ABFA8 8003CD18 */  .word  L8003CD18
/* 0ABB5C 800ABFAC 00000000 */  .word  0x00000000
/* 0ABB60 800ABFB0 436F6E66 */  .word  0x436F6E66
/* 0ABB64 800ABFB4 6C696374 */  .word  0x6C696374
/* 0ABB68 800ABFB8 20757369 */  .word  0x20757369
/* 0ABB6C 800ABFBC 6E67206F */  .word  0x6E67206F
/* 0ABB70 800ABFC0 6620524F */  .word  0x6620524F
/* 0ABB74 800ABFC4 4D3A2025 */  .word  0x4D3A2025
/* 0ABB78 800ABFC8 70287369 */  .word  0x70287369
/* 0ABB7C 800ABFCC 7A652030 */  .word  0x7A652030
/* 0ABB80 800ABFD0 78257829 */  .word  0x78257829
/* 0ABB84 800ABFD4 20616E64 */  .word  0x20616E64
/* 0ABB88 800ABFD8 20257028 */  .word  0x20257028
/* 0ABB8C 800ABFDC 73697A65 */  .word  0x73697A65
/* 0ABB90 800ABFE0 20307825 */  .word  0x20307825
/* 0ABB94 800ABFE4 78290A00 */  .word  0x78290A00
/* 0ABB98 800ABFE8 4F757420 */  .word  0x4F757420
/* 0ABB9C 800ABFEC 6F662063 */  .word  0x6F662063
/* 0ABBA0 800ABFF0 61636865 */  .word  0x61636865
/* 0ABBA4 800ABFF4 5F6D656D */  .word  0x5F6D656D
/* 0ABBA8 800ABFF8 6F72792E */  .word  0x6F72792E
/* 0ABBAC 800ABFFC 0A000000 */  .word  0x0A000000
/* 0ABBB0 800AC000 53686F72 */  .word  0x53686F72
/* 0ABBB4 800AC004 74616765 */  .word  0x74616765
/* 0ABBB8 800AC008 206F6620 */  .word  0x206F6620
/* 0ABBBC 800AC00C 43616368 */  .word  0x43616368
/* 0ABBC0 800AC010 655F626C */  .word  0x655F626C
/* 0ABBC4 800AC014 6F636B5F */  .word  0x6F636B5F
/* 0ABBC8 800AC018 6E756D2E */  .word  0x6E756D2E
/* 0ABBCC 800AC01C 0A000000 */  .word  0x0A000000
/* 0ABBD0 800AC020 63615265 */  .word  0x63615265
/* 0ABBD4 800AC024 71756573 */  .word  0x71756573
/* 0ABBD8 800AC028 74526F6D */  .word  0x74526F6D
/* 0ABBDC 800AC02C 436F7079 */  .word  0x436F7079
/* 0ABBE0 800AC030 2825702C */  .word  0x2825702C
/* 0ABBE4 800AC034 2025702C */  .word  0x2025702C
/* 0ABBE8 800AC038 20307825 */  .word  0x20307825
/* 0ABBEC 800AC03C 782C2025 */  .word  0x782C2025
/* 0ABBF0 800AC040 70290A00 */  .word  0x70290A00
/* 0ABBF4 800AC044 00000000 */  .word  0x00000000
/* 0ABBF8 800AC048 00000000 */  .word  0x00000000
/* 0ABBFC 800AC04C 00000000 */  .word  0x00000000
/* 0ABC00 800AC050 0A000000 */  .word  0x0A000000
/* 0ABC04 800AC054 7C202020 */  .word  0x7C202020
/* 0ABC08 800AC058 20000000 */  .word  0x20000000
/* 0ABC0C 800AC05C 726F6F74 */  .word  0x726F6F74
/* 0ABC10 800AC060 3A25700A */  .word  0x3A25700A
/* 0ABC14 800AC064 00000000 */  .word  0x00000000
/* 0ABC18 800AC068 0A0A0000 */  .word  0x0A0A0000
/* 0ABC1C 800AC06C 6E6F6465 */  .word  0x6E6F6465
/* 0ABC20 800AC070 20257020 */  .word  0x20257020
/* 0ABC24 800AC074 206C696E */  .word  0x206C696E
/* 0ABC28 800AC078 6B3A2025 */  .word  0x6B3A2025
/* 0ABC2C 800AC07C 702C2025 */  .word  0x702C2025
/* 0ABC30 800AC080 70202064 */  .word  0x70202064
/* 0ABC34 800AC084 6174613A */  .word  0x6174613A
/* 0ABC38 800AC088 2025700A */  .word  0x2025700A
/* 0ABC3C 800AC08C 00000000 */  .word  0x00000000

glabel D_800AC090
/* 0ABC40 800AC090  */  .asciz  "BD"
                        .balign 4

glabel D_800AC094
/* 0ABC44 800AC094  */  .asciz  "IP8"
                        .balign 4

glabel D_800AC098
/* 0ABC48 800AC098  */  .asciz  "IP7"
                        .balign 4

glabel D_800AC09C
/* 0ABC4C 800AC09C  */  .asciz  "IP6"
                        .balign 4

glabel D_800AC0A0
/* 0ABC50 800AC0A0  */  .asciz  "IP5"
                        .balign 4

glabel D_800AC0A4
/* 0ABC54 800AC0A4  */  .asciz  "IP4"
                        .balign 4

glabel D_800AC0A8
/* 0ABC58 800AC0A8  */  .asciz  "IP3"
                        .balign 4

glabel D_800AC0AC
/* 0ABC5C 800AC0AC  */  .asciz  "IP2"
                        .balign 4

glabel D_800AC0B0
/* 0ABC60 800AC0B0  */  .asciz  "IP1"
                        .balign 4

glabel D_800AC0B4
/* 0ABC64 800AC0B4  */  .asciz  "Interrupt"
                        .balign 4

glabel D_800AC0C0
/* 0ABC70 800AC0C0  */  .asciz  "TLB modification exception"
                        .balign 4

glabel D_800AC0DC
/* 0ABC8C 800AC0DC  */  .asciz  "TLB exception on load or instruction fetch"
                        .balign 4

glabel D_800AC108
/* 0ABCB8 800AC108  */  .asciz  "TLB exception on store"
                        .balign 4

glabel D_800AC120
/* 0ABCD0 800AC120  */  .asciz  "Address error on load or instruction fetch"
                        .balign 4

glabel D_800AC14C
/* 0ABCFC 800AC14C  */  .asciz  "Address error on store"
                        .balign 4

glabel D_800AC164
/* 0ABD14 800AC164  */  .asciz  "Bus error exception on instruction fetch"
                        .balign 4

glabel D_800AC190
/* 0ABD40 800AC190  */  .asciz  "Bus error exception on data reference"
                        .balign 4

glabel D_800AC1B8
/* 0ABD68 800AC1B8  */  .asciz  "System call exception"
                        .balign 4

glabel D_800AC1D0
/* 0ABD80 800AC1D0  */  .asciz  "Breakpoint exception"
                        .balign 4

glabel D_800AC1E8
/* 0ABD98 800AC1E8  */  .asciz  "Reserved instruction exception"
                        .balign 4

glabel D_800AC208
/* 0ABDB8 800AC208  */  .asciz  "Coprocessor unusable exception"
                        .balign 4

glabel D_800AC228
/* 0ABDD8 800AC228  */  .asciz  "Arithmetic overflow exception"
                        .balign 4

glabel D_800AC248
/* 0ABDF8 800AC248  */  .asciz  "Trap exception"
                        .balign 4

glabel D_800AC258
/* 0ABE08 800AC258  */  .asciz  "Virtual coherency exception on intruction fetch"
                        .balign 4

glabel D_800AC288
/* 0ABE38 800AC288  */  .asciz  "Floating point exception (see fpcsr)"
                        .balign 4

glabel D_800AC2B0
/* 0ABE60 800AC2B0  */  .asciz  "Watchpoint exception"
                        .balign 4

glabel D_800AC2C8
/* 0ABE78 800AC2C8  */  .asciz  "Virtual coherency exception on data reference"
                        .balign 4

glabel D_800AC2F8
/* 0ABEA8 800AC2F8 00000000 */  .word  0x00000000

glabel D_800AC2FC
/* 0ABEAC 800AC2FC  */  .asciz  "CU3"
                        .balign 4

glabel D_800AC300
/* 0ABEB0 800AC300  */  .asciz  "CU2"
                        .balign 4

glabel D_800AC304
/* 0ABEB4 800AC304  */  .asciz  "CU1"
                        .balign 4

glabel D_800AC308
/* 0ABEB8 800AC308  */  .asciz  "CU0"
                        .balign 4

glabel D_800AC30C
/* 0ABEBC 800AC30C  */  .asciz  "RP"
                        .balign 4

glabel D_800AC310
/* 0ABEC0 800AC310  */  .asciz  "FR"
                        .balign 4

glabel D_800AC314
/* 0ABEC4 800AC314  */  .asciz  "RE"
                        .balign 4

glabel D_800AC318
/* 0ABEC8 800AC318  */  .asciz  "BEV"
                        .balign 4

glabel D_800AC31C
/* 0ABECC 800AC31C  */  .asciz  "TS"
                        .balign 4

glabel D_800AC320
/* 0ABED0 800AC320  */  .asciz  "SR"
                        .balign 4

glabel D_800AC324
/* 0ABED4 800AC324  */  .asciz  "CH"
                        .balign 4

glabel D_800AC328
/* 0ABED8 800AC328  */  .asciz  "CE"
                        .balign 4

glabel D_800AC32C
/* 0ABEDC 800AC32C  */  .asciz  "DE"
                        .balign 4

glabel D_800AC330
/* 0ABEE0 800AC330  */  .asciz  "IM8"
                        .balign 4

glabel D_800AC334
/* 0ABEE4 800AC334  */  .asciz  "IM7"
                        .balign 4

glabel D_800AC338
/* 0ABEE8 800AC338  */  .asciz  "IM6"
                        .balign 4

glabel D_800AC33C
/* 0ABEEC 800AC33C  */  .asciz  "IM5"
                        .balign 4

glabel D_800AC340
/* 0ABEF0 800AC340  */  .asciz  "IM4"
                        .balign 4

glabel D_800AC344
/* 0ABEF4 800AC344  */  .asciz  "IM3"
                        .balign 4

glabel D_800AC348
/* 0ABEF8 800AC348  */  .asciz  "IM2"
                        .balign 4

glabel D_800AC34C
/* 0ABEFC 800AC34C  */  .asciz  "IM1"
                        .balign 4

glabel D_800AC350
/* 0ABF00 800AC350  */  .asciz  "KX"
                        .balign 4

glabel D_800AC354
/* 0ABF04 800AC354  */  .asciz  "SX"
                        .balign 4

glabel D_800AC358
/* 0ABF08 800AC358  */  .asciz  "UX"
                        .balign 4

glabel D_800AC35C
/* 0ABF0C 800AC35C  */  .asciz  "USR"
                        .balign 4

glabel D_800AC360
/* 0ABF10 800AC360  */  .asciz  "SUP"
                        .balign 4

glabel D_800AC364
/* 0ABF14 800AC364  */  .asciz  "KER"
                        .balign 4

glabel D_800AC368
/* 0ABF18 800AC368  */  .asciz  "ERL"
                        .balign 4

glabel D_800AC36C
/* 0ABF1C 800AC36C  */  .asciz  "EXL"
                        .balign 4

glabel D_800AC370
/* 0ABF20 800AC370  */  .asciz  "IE"
                        .balign 4

glabel D_800AC374
/* 0ABF24 800AC374 00000000 */  .word  0x00000000

glabel D_800AC378
/* 0ABF28 800AC378  */  .asciz  "FS"
                        .balign 4

glabel D_800AC37C
/* 0ABF2C 800AC37C  */  .asciz  "C"
                        .balign 4

glabel D_800AC380
/* 0ABF30 800AC380  */  .asciz  "Unimplemented operation"
                        .balign 4

glabel D_800AC398
/* 0ABF48 800AC398  */  .asciz  "Invalid operation"
                        .balign 4

glabel D_800AC3AC
/* 0ABF5C 800AC3AC  */  .asciz  "Division by zero"
                        .balign 4

glabel D_800AC3C0
/* 0ABF70 800AC3C0  */  .asciz  "Overflow"
                        .balign 4

glabel D_800AC3CC
/* 0ABF7C 800AC3CC  */  .asciz  "Underflow"
                        .balign 4

glabel D_800AC3D8
/* 0ABF88 800AC3D8  */  .asciz  "Inexact operation"
                        .balign 4

glabel D_800AC3EC
/* 0ABF9C 800AC3EC  */  .asciz  "EV"
                        .balign 4

glabel D_800AC3F0
/* 0ABFA0 800AC3F0  */  .asciz  "EZ"
                        .balign 4

glabel D_800AC3F4
/* 0ABFA4 800AC3F4  */  .asciz  "EO"
                        .balign 4

glabel D_800AC3F8
/* 0ABFA8 800AC3F8  */  .asciz  "EU"
                        .balign 4

glabel D_800AC3FC
/* 0ABFAC 800AC3FC  */  .asciz  "EI"
                        .balign 4

glabel D_800AC400
/* 0ABFB0 800AC400  */  .asciz  "FV"
                        .balign 4

glabel D_800AC404
/* 0ABFB4 800AC404  */  .asciz  "FZ"
                        .balign 4

glabel D_800AC408
/* 0ABFB8 800AC408  */  .asciz  "FO"
                        .balign 4

glabel D_800AC40C
/* 0ABFBC 800AC40C  */  .asciz  "FU"
                        .balign 4

glabel D_800AC410
/* 0ABFC0 800AC410  */  .asciz  "FI"
                        .balign 4

glabel D_800AC414
/* 0ABFC4 800AC414  */  .asciz  "RN"
                        .balign 4

glabel D_800AC418
/* 0ABFC8 800AC418  */  .asciz  "RZ"
                        .balign 4

glabel D_800AC41C
/* 0ABFCC 800AC41C  */  .asciz  "RP"
                        .balign 4

glabel D_800AC420
/* 0ABFD0 800AC420  */  .asciz  "RM"
                        .balign 4

glabel D_800AC424
/* 0ABFD4 800AC424 00000000 */  .word  0x00000000
/* 0ABFD8 800AC428 25730909 */  .word  0x25730909
/* 0ABFDC 800AC42C 30782530 */  .word  0x30782530
/* 0ABFE0 800AC430 38782000 */  .word  0x38782000
/* 0ABFE4 800AC434 3C000000 */  .word  0x3C000000
/* 0ABFE8 800AC438 2C000000 */  .word  0x2C000000
/* 0ABFEC 800AC43C 25730000 */  .word  0x25730000
/* 0ABFF0 800AC440 3E0A0000 */  .word  0x3E0A0000
/* 0ABFF4 800AC444 25732020 */  .word  0x25732020
/* 0ABFF8 800AC448 4E614E20 */  .word  0x4E614E20
/* 0ABFFC 800AC44C 20202020 */  .word  0x20202020
/* 0AC000 800AC450 20202020 */  .word  0x20202020
/* 0AC004 800AC454 20200000 */  .word  0x20200000
/* 0AC008 800AC458 25732020 */  .word  0x25732020
/* 0AC00C 800AC45C 496E6620 */  .word  0x496E6620
/* 0AC010 800AC460 20202020 */  .word  0x20202020
/* 0AC014 800AC464 20202020 */  .word  0x20202020
/* 0AC018 800AC468 20200000 */  .word  0x20200000
/* 0AC01C 800AC46C 25732020 */  .word  0x25732020
/* 0AC020 800AC470 44656E6F */  .word  0x44656E6F
/* 0AC024 800AC474 726D2020 */  .word  0x726D2020
/* 0AC028 800AC478 20202020 */  .word  0x20202020
/* 0AC02C 800AC47C 20200000 */  .word  0x20200000
/* 0AC030 800AC480 25732020 */  .word  0x25732020
/* 0AC034 800AC484 252E3765 */  .word  0x252E3765
/* 0AC038 800AC488 20000000 */  .word  0x20000000
/* 0AC03C 800AC48C 25732020 */  .word  0x25732020
/* 0AC040 800AC490 4E614E20 */  .word  0x4E614E20
/* 0AC044 800AC494 20202020 */  .word  0x20202020
/* 0AC048 800AC498 20202020 */  .word  0x20202020
/* 0AC04C 800AC49C 20202020 */  .word  0x20202020
/* 0AC050 800AC4A0 20202020 */  .word  0x20202020
/* 0AC054 800AC4A4 20200000 */  .word  0x20200000
/* 0AC058 800AC4A8 25732020 */  .word  0x25732020
/* 0AC05C 800AC4AC 496E6620 */  .word  0x496E6620
/* 0AC060 800AC4B0 20202020 */  .word  0x20202020
/* 0AC064 800AC4B4 20202020 */  .word  0x20202020
/* 0AC068 800AC4B8 20202020 */  .word  0x20202020
/* 0AC06C 800AC4BC 20202020 */  .word  0x20202020
/* 0AC070 800AC4C0 20200000 */  .word  0x20200000
/* 0AC074 800AC4C4 25732020 */  .word  0x25732020
/* 0AC078 800AC4C8 44656E6F */  .word  0x44656E6F
/* 0AC07C 800AC4CC 726D2020 */  .word  0x726D2020
/* 0AC080 800AC4D0 20202020 */  .word  0x20202020
/* 0AC084 800AC4D4 20202020 */  .word  0x20202020
/* 0AC088 800AC4D8 20202020 */  .word  0x20202020
/* 0AC08C 800AC4DC 20200000 */  .word  0x20200000
/* 0AC090 800AC4E0 25732020 */  .word  0x25732020
/* 0AC094 800AC4E4 252E3135 */  .word  0x252E3135
/* 0AC098 800AC4E8 65200000 */  .word  0x65200000
/* 0AC09C 800AC4EC 0A466175 */  .word  0x0A466175
/* 0AC0A0 800AC4F0 6C742069 */  .word  0x6C742069
/* 0AC0A4 800AC4F4 6E207468 */  .word  0x6E207468
/* 0AC0A8 800AC4F8 72656164 */  .word  0x72656164
/* 0AC0AC 800AC4FC 2025643A */  .word  0x2025643A
/* 0AC0B0 800AC500 0A0A0000 */  .word  0x0A0A0000
/* 0AC0B4 800AC504 65706309 */  .word  0x65706309
/* 0AC0B8 800AC508 09307825 */  .word  0x09307825
/* 0AC0BC 800AC50C 3038780A */  .word  0x3038780A
/* 0AC0C0 800AC510 00000000 */  .word  0x00000000

glabel D_800AC514
/* 0AC0C4 800AC514 63617573 */  .word  0x63617573
/* 0AC0C8 800AC518 65000000 */  .word  0x65000000

glabel D_800AC51C
/* 0AC0CC 800AC51C 73720000 */  .word  0x73720000
/* 0AC0D0 800AC520 62616476 */  .word  0x62616476
/* 0AC0D4 800AC524 61646472 */  .word  0x61646472
/* 0AC0D8 800AC528 09307825 */  .word  0x09307825
/* 0AC0DC 800AC52C 3038780A */  .word  0x3038780A
/* 0AC0E0 800AC530 00000000 */  .word  0x00000000
/* 0AC0E4 800AC534 72637009 */  .word  0x72637009
/* 0AC0E8 800AC538 09307825 */  .word  0x09307825
/* 0AC0EC 800AC53C 3038780A */  .word  0x3038780A
/* 0AC0F0 800AC540 0A000000 */  .word  0x0A000000
/* 0AC0F4 800AC544 61742030 */  .word  0x61742030
/* 0AC0F8 800AC548 78253031 */  .word  0x78253031
/* 0AC0FC 800AC54C 366C6C78 */  .word  0x366C6C78
/* 0AC100 800AC550 20763020 */  .word  0x20763020
/* 0AC104 800AC554 30782530 */  .word  0x30782530
/* 0AC108 800AC558 31366C6C */  .word  0x31366C6C
/* 0AC10C 800AC55C 78207631 */  .word  0x78207631
/* 0AC110 800AC560 20307825 */  .word  0x20307825
/* 0AC114 800AC564 3031366C */  .word  0x3031366C
/* 0AC118 800AC568 6C780A00 */  .word  0x6C780A00
/* 0AC11C 800AC56C 61302030 */  .word  0x61302030
/* 0AC120 800AC570 78253031 */  .word  0x78253031
/* 0AC124 800AC574 366C6C78 */  .word  0x366C6C78
/* 0AC128 800AC578 20613120 */  .word  0x20613120
/* 0AC12C 800AC57C 30782530 */  .word  0x30782530
/* 0AC130 800AC580 31366C6C */  .word  0x31366C6C
/* 0AC134 800AC584 78206132 */  .word  0x78206132
/* 0AC138 800AC588 20307825 */  .word  0x20307825
/* 0AC13C 800AC58C 3031366C */  .word  0x3031366C
/* 0AC140 800AC590 6C780A00 */  .word  0x6C780A00
/* 0AC144 800AC594 61332030 */  .word  0x61332030
/* 0AC148 800AC598 78253031 */  .word  0x78253031
/* 0AC14C 800AC59C 366C6C78 */  .word  0x366C6C78
/* 0AC150 800AC5A0 20743020 */  .word  0x20743020
/* 0AC154 800AC5A4 30782530 */  .word  0x30782530
/* 0AC158 800AC5A8 31366C6C */  .word  0x31366C6C
/* 0AC15C 800AC5AC 78207431 */  .word  0x78207431
/* 0AC160 800AC5B0 20307825 */  .word  0x20307825
/* 0AC164 800AC5B4 3031366C */  .word  0x3031366C
/* 0AC168 800AC5B8 6C780A00 */  .word  0x6C780A00
/* 0AC16C 800AC5BC 74322030 */  .word  0x74322030
/* 0AC170 800AC5C0 78253031 */  .word  0x78253031
/* 0AC174 800AC5C4 366C6C78 */  .word  0x366C6C78
/* 0AC178 800AC5C8 20743320 */  .word  0x20743320
/* 0AC17C 800AC5CC 30782530 */  .word  0x30782530
/* 0AC180 800AC5D0 31366C6C */  .word  0x31366C6C
/* 0AC184 800AC5D4 78207434 */  .word  0x78207434
/* 0AC188 800AC5D8 20307825 */  .word  0x20307825
/* 0AC18C 800AC5DC 3031366C */  .word  0x3031366C
/* 0AC190 800AC5E0 6C780A00 */  .word  0x6C780A00
/* 0AC194 800AC5E4 74352030 */  .word  0x74352030
/* 0AC198 800AC5E8 78253031 */  .word  0x78253031
/* 0AC19C 800AC5EC 366C6C78 */  .word  0x366C6C78
/* 0AC1A0 800AC5F0 20743620 */  .word  0x20743620
/* 0AC1A4 800AC5F4 30782530 */  .word  0x30782530
/* 0AC1A8 800AC5F8 31366C6C */  .word  0x31366C6C
/* 0AC1AC 800AC5FC 78207437 */  .word  0x78207437
/* 0AC1B0 800AC600 20307825 */  .word  0x20307825
/* 0AC1B4 800AC604 3031366C */  .word  0x3031366C
/* 0AC1B8 800AC608 6C780A00 */  .word  0x6C780A00
/* 0AC1BC 800AC60C 73302030 */  .word  0x73302030
/* 0AC1C0 800AC610 78253031 */  .word  0x78253031
/* 0AC1C4 800AC614 366C6C78 */  .word  0x366C6C78
/* 0AC1C8 800AC618 20733120 */  .word  0x20733120
/* 0AC1CC 800AC61C 30782530 */  .word  0x30782530
/* 0AC1D0 800AC620 31366C6C */  .word  0x31366C6C
/* 0AC1D4 800AC624 78207332 */  .word  0x78207332
/* 0AC1D8 800AC628 20307825 */  .word  0x20307825
/* 0AC1DC 800AC62C 3031366C */  .word  0x3031366C
/* 0AC1E0 800AC630 6C780A00 */  .word  0x6C780A00
/* 0AC1E4 800AC634 73332030 */  .word  0x73332030
/* 0AC1E8 800AC638 78253031 */  .word  0x78253031
/* 0AC1EC 800AC63C 366C6C78 */  .word  0x366C6C78
/* 0AC1F0 800AC640 20733420 */  .word  0x20733420
/* 0AC1F4 800AC644 30782530 */  .word  0x30782530
/* 0AC1F8 800AC648 31366C6C */  .word  0x31366C6C
/* 0AC1FC 800AC64C 78207335 */  .word  0x78207335
/* 0AC200 800AC650 20307825 */  .word  0x20307825
/* 0AC204 800AC654 3031366C */  .word  0x3031366C
/* 0AC208 800AC658 6C780A00 */  .word  0x6C780A00
/* 0AC20C 800AC65C 73362030 */  .word  0x73362030
/* 0AC210 800AC660 78253031 */  .word  0x78253031
/* 0AC214 800AC664 366C6C78 */  .word  0x366C6C78
/* 0AC218 800AC668 20733720 */  .word  0x20733720
/* 0AC21C 800AC66C 30782530 */  .word  0x30782530
/* 0AC220 800AC670 31366C6C */  .word  0x31366C6C
/* 0AC224 800AC674 78207438 */  .word  0x78207438
/* 0AC228 800AC678 20307825 */  .word  0x20307825
/* 0AC22C 800AC67C 3031366C */  .word  0x3031366C
/* 0AC230 800AC680 6C780A00 */  .word  0x6C780A00
/* 0AC234 800AC684 74392030 */  .word  0x74392030
/* 0AC238 800AC688 78253031 */  .word  0x78253031
/* 0AC23C 800AC68C 366C6C78 */  .word  0x366C6C78
/* 0AC240 800AC690 20677020 */  .word  0x20677020
/* 0AC244 800AC694 30782530 */  .word  0x30782530
/* 0AC248 800AC698 31366C6C */  .word  0x31366C6C
/* 0AC24C 800AC69C 78207370 */  .word  0x78207370
/* 0AC250 800AC6A0 20307825 */  .word  0x20307825
/* 0AC254 800AC6A4 3031366C */  .word  0x3031366C
/* 0AC258 800AC6A8 6C780A00 */  .word  0x6C780A00
/* 0AC25C 800AC6AC 73382030 */  .word  0x73382030
/* 0AC260 800AC6B0 78253031 */  .word  0x78253031
/* 0AC264 800AC6B4 366C6C78 */  .word  0x366C6C78
/* 0AC268 800AC6B8 20726120 */  .word  0x20726120
/* 0AC26C 800AC6BC 30782530 */  .word  0x30782530
/* 0AC270 800AC6C0 31366C6C */  .word  0x31366C6C
/* 0AC274 800AC6C4 780A0000 */  .word  0x780A0000
/* 0AC278 800AC6C8 6C6F2030 */  .word  0x6C6F2030
/* 0AC27C 800AC6CC 78253031 */  .word  0x78253031
/* 0AC280 800AC6D0 366C6C78 */  .word  0x366C6C78
/* 0AC284 800AC6D4 20686920 */  .word  0x20686920
/* 0AC288 800AC6D8 30782530 */  .word  0x30782530
/* 0AC28C 800AC6DC 31366C6C */  .word  0x31366C6C
/* 0AC290 800AC6E0 780A0A00 */  .word  0x780A0A00

glabel D_800AC6E4
/* 0AC294 800AC6E4 66706373 */  .word  0x66706373
/* 0AC298 800AC6E8 72000000 */  .word  0x72000000

glabel D_800AC6EC
/* 0AC29C 800AC6EC 0A643020 */  .word  0x0A643020
/* 0AC2A0 800AC6F0 00000000 */  .word  0x00000000

glabel D_800AC6F4
/* 0AC2A4 800AC6F4 64322000 */  .word  0x64322000

glabel D_800AC6F8
/* 0AC2A8 800AC6F8 0A643420 */  .word  0x0A643420
/* 0AC2AC 800AC6FC 00000000 */  .word  0x00000000

glabel D_800AC700
/* 0AC2B0 800AC700 64362000 */  .word  0x64362000

glabel D_800AC704
/* 0AC2B4 800AC704 0A643820 */  .word  0x0A643820
/* 0AC2B8 800AC708 00000000 */  .word  0x00000000

glabel D_800AC70C
/* 0AC2BC 800AC70C 64313000 */  .word  0x64313000

glabel D_800AC710
/* 0AC2C0 800AC710 0A643132 */  .word  0x0A643132
/* 0AC2C4 800AC714 00000000 */  .word  0x00000000

glabel D_800AC718
/* 0AC2C8 800AC718 64313400 */  .word  0x64313400

glabel D_800AC71C
/* 0AC2CC 800AC71C 0A643136 */  .word  0x0A643136
/* 0AC2D0 800AC720 00000000 */  .word  0x00000000

glabel D_800AC724
/* 0AC2D4 800AC724 64313800 */  .word  0x64313800

glabel D_800AC728
/* 0AC2D8 800AC728 0A643230 */  .word  0x0A643230
/* 0AC2DC 800AC72C 00000000 */  .word  0x00000000

glabel D_800AC730
/* 0AC2E0 800AC730 64323200 */  .word  0x64323200

glabel D_800AC734
/* 0AC2E4 800AC734 0A643234 */  .word  0x0A643234
/* 0AC2E8 800AC738 00000000 */  .word  0x00000000

glabel D_800AC73C
/* 0AC2EC 800AC73C 64323600 */  .word  0x64323600

glabel D_800AC740
/* 0AC2F0 800AC740 0A643238 */  .word  0x0A643238
/* 0AC2F4 800AC744 00000000 */  .word  0x00000000

glabel D_800AC748
/* 0AC2F8 800AC748 64333000 */  .word  0x64333000
/* 0AC2FC 800AC74C 0A000000 */  .word  0x0A000000

glabel D_800AC750
/* 0AC300 800AC750 0A663020 */  .word  0x0A663020
/* 0AC304 800AC754 00000000 */  .word  0x00000000

glabel D_800AC758
/* 0AC308 800AC758 66322000 */  .word  0x66322000

glabel D_800AC75C
/* 0AC30C 800AC75C 66342000 */  .word  0x66342000

glabel D_800AC760
/* 0AC310 800AC760 66362000 */  .word  0x66362000

glabel D_800AC764
/* 0AC314 800AC764 0A663820 */  .word  0x0A663820
/* 0AC318 800AC768 00000000 */  .word  0x00000000

glabel D_800AC76C
/* 0AC31C 800AC76C 66313000 */  .word  0x66313000

glabel D_800AC770
/* 0AC320 800AC770 66313200 */  .word  0x66313200

glabel D_800AC774
/* 0AC324 800AC774 66313400 */  .word  0x66313400

glabel D_800AC778
/* 0AC328 800AC778 0A663136 */  .word  0x0A663136
/* 0AC32C 800AC77C 00000000 */  .word  0x00000000

glabel D_800AC780
/* 0AC330 800AC780 66313800 */  .word  0x66313800

glabel D_800AC784
/* 0AC334 800AC784 66323000 */  .word  0x66323000

glabel D_800AC788
/* 0AC338 800AC788 66323200 */  .word  0x66323200

glabel D_800AC78C
/* 0AC33C 800AC78C 0A663234 */  .word  0x0A663234
/* 0AC340 800AC790 00000000 */  .word  0x00000000

glabel D_800AC794
/* 0AC344 800AC794 66323600 */  .word  0x66323600

glabel D_800AC798
/* 0AC348 800AC798 66323800 */  .word  0x66323800

glabel D_800AC79C
/* 0AC34C 800AC79C 66333000 */  .word  0x66333000
/* 0AC350 800AC7A0 0A000000 */  .word  0x0A000000

glabel D_800AC7A4
/* 0AC354 800AC7A4 46695400 */  .word  0x46695400

glabel D_800AC7A8
/* 0AC358 800AC7A8 25640000 */  .word  0x25640000

glabel D_800AC7AC
/* 0AC35C 800AC7AC 25303878 */  .word  0x25303878
/* 0AC360 800AC7B0 00000000 */  .word  0x00000000

glabel D_800AC7B4
/* 0AC364 800AC7B4 25303878 */  .word  0x25303878
/* 0AC368 800AC7B8 00000000 */  .word  0x00000000
/* 0AC36C 800AC7BC 0A202866 */  .word  0x0A202866
/* 0AC370 800AC7C0 6C506173 */  .word  0x6C506173
/* 0AC374 800AC7C4 733A2066 */  .word  0x733A2066
/* 0AC378 800AC7C8 696C6520 */  .word  0x696C6520
/* 0AC37C 800AC7CC 2573206C */  .word  0x2573206C
/* 0AC380 800AC7D0 696E6520 */  .word  0x696E6520
/* 0AC384 800AC7D4 2564290A */  .word  0x2564290A
/* 0AC388 800AC7D8 00000000 */  .word  0x00000000
/* 0AC38C 800AC7DC 68616C74 */  .word  0x68616C74
/* 0AC390 800AC7E0 3A202573 */  .word  0x3A202573
/* 0AC394 800AC7E4 3A202564 */  .word  0x3A202564
/* 0AC398 800AC7E8 0A000000 */  .word  0x0A000000

glabel D_800AC7EC
/* 0AC39C 800AC7EC 25640000 */  .word  0x25640000
/* 0AC3A0 800AC7F0 4552524F */  .word  0x4552524F
/* 0AC3A4 800AC7F4 523A2043 */  .word  0x523A2043
/* 0AC3A8 800AC7F8 616E2774 */  .word  0x616E2774
/* 0AC3AC 800AC7FC 20616C6C */  .word  0x20616C6C
/* 0AC3B0 800AC800 6F632025 */  .word  0x6F632025
/* 0AC3B4 800AC804 64206279 */  .word  0x64206279
/* 0AC3B8 800AC808 74657320 */  .word  0x74657320
/* 0AC3BC 800AC80C 66726F6D */  .word  0x66726F6D
/* 0AC3C0 800AC810 20686561 */  .word  0x20686561
/* 0AC3C4 800AC814 702E0A00 */  .word  0x702E0A00
/* 0AC3C8 800AC818 00000000 */  .word  0x00000000
/* 0AC3CC 800AC81C 00000000 */  .word  0x00000000
/* 0AC3D0 800AC820 6572726F */  .word  0x6572726F
/* 0AC3D4 800AC824 723A2073 */  .word  0x723A2073
/* 0AC3D8 800AC828 74726370 */  .word  0x74726370
/* 0AC3DC 800AC82C 793A2064 */  .word  0x793A2064
/* 0AC3E0 800AC830 7374206F */  .word  0x7374206F
/* 0AC3E4 800AC834 72207372 */  .word  0x72207372
/* 0AC3E8 800AC838 63206973 */  .word  0x63206973
/* 0AC3EC 800AC83C 204E554C */  .word  0x204E554C
/* 0AC3F0 800AC840 4C20706F */  .word  0x4C20706F
/* 0AC3F4 800AC844 696E7465 */  .word  0x696E7465
/* 0AC3F8 800AC848 722E2064 */  .word  0x722E2064
/* 0AC3FC 800AC84C 73743A25 */  .word  0x73743A25
/* 0AC400 800AC850 70207372 */  .word  0x70207372
/* 0AC404 800AC854 633A2570 */  .word  0x633A2570
/* 0AC408 800AC858 0A000000 */  .word  0x0A000000
/* 0AC40C 800AC85C 00000000 */  .word  0x00000000

glabel D_800AC860
/* 0AC410 800AC860 7FFFFFFF */  .word  0x7FFFFFFF
/* 0AC414 800AC864 FFFFFFFF */  .word  0xFFFFFFFF
/* 0AC418 800AC868 0000000000000000 */  .double  0.0

glabel D_800AC870
/* 0AC420 800AC870 412E848000000000 */  .double  1000000.0

glabel D_800AC878
/* 0AC428 800AC878 412E848000000000 */  .double  1000000.0

glabel D_800AC880
/* 0AC430 800AC880 40EFFFE000000000 */  .double  65535.0

glabel jtbl_800AC888
/* 0AC438 800AC888 8004ACE0 */  .word  L8004ACE0
/* 0AC43C 800AC88C 8004AD8C */  .word  L8004AD8C
/* 0AC440 800AC890 8004AD8C */  .word  L8004AD8C
/* 0AC444 800AC894 8004AD8C */  .word  L8004AD8C
/* 0AC448 800AC898 8004AD8C */  .word  L8004AD8C
/* 0AC44C 800AC89C 8004AD50 */  .word  L8004AD50
/* 0AC450 800AC8A0 8004AD8C */  .word  L8004AD8C
/* 0AC454 800AC8A4 8004ACF8 */  .word  L8004ACF8
/* 0AC458 800AC8A8 8004AD28 */  .word  L8004AD28
/* 0AC45C 800AC8AC 8004AD8C */  .word  L8004AD8C
/* 0AC460 800AC8B0 8004AD8C */  .word  L8004AD8C
/* 0AC464 800AC8B4 8004AAC8 */  .word  L8004AAC8
/* 0AC468 800AC8B8 8004AAC8 */  .word  L8004AAC8
/* 0AC46C 800AC8BC 8004A99C */  .word  L8004A99C
/* 0AC470 800AC8C0 8004AC80 */  .word  L8004AC80
/* 0AC474 800AC8C4 8004ACA8 */  .word  L8004ACA8
/* 0AC478 800AC8C8 8004AAC8 */  .word  L8004AAC8
/* 0AC47C 800AC8CC 00000000 */  .word  0x00000000

glabel jtbl_800AC8D0
/* 0AC480 800AC8D0 8004B488 */  .word  L8004B488
/* 0AC484 800AC8D4 8004B4BC */  .word  L8004B4BC
/* 0AC488 800AC8D8 8004B51C */  .word  L8004B51C
/* 0AC48C 800AC8DC 8004B4F0 */  .word  L8004B4F0
/* 0AC490 800AC8E0 8004B548 */  .word  L8004B548
/* 0AC494 800AC8E4 8004B574 */  .word  L8004B574
/* 0AC498 800AC8E8 8004B5DC */  .word  L8004B5DC
/* 0AC49C 800AC8EC 8004B654 */  .word  L8004B654

glabel D_800AC8F0
/* 0AC4A0 800AC8F0 4105221B3D3FB61B */  .double  173123.404906676
/* 0AC4A8 800AC8F8 0000000000000000 */  .double  0.0

glabel jtbl_800AC900
/* 0AC4B0 800AC900 8004BC14 */  .word  L8004BC14
/* 0AC4B4 800AC904 8004BC20 */  .word  L8004BC20
/* 0AC4B8 800AC908 8004BC38 */  .word  L8004BC38
/* 0AC4BC 800AC90C 8004BC44 */  .word  L8004BC44
/* 0AC4C0 800AC910 8004BC2C */  .word  L8004BC2C
/* 0AC4C4 800AC914 8004BC50 */  .word  L8004BC50

glabel D_800AC918
/* 0AC4C8 800AC918 4105221B3D3FB61B */  .double  173123.404906676

glabel D_800AC920
/* 0AC4D0 800AC920 3FFFFFD60E94EE39 */  .double  1.99996

glabel D_800AC928
/* 0AC4D8 800AC928 3FFFFEB0 */  .float  1.999959945678711
/* 0AC4DC 800AC92C 00000000 */  .float  0.0

glabel D_800AC930
/* 0AC4E0 800AC930 3F91DF469D353918 */  .double  0.017453292222222222
/* 0AC4E8 800AC938 0000000000000000 */  .double  0.0

glabel D_800AC940
/* 0AC4F0 800AC940 3F8012EF */  .float  1.0005778074264526

glabel D_800AC944
/* 0AC4F4 800AC944 3F7FDA28 */  .float  0.999422550201416
/* 0AC4F8 800AC948 00000000 */  .float  0.0
/* 0AC4FC 800AC94C 00000000 */  .float  0.0

glabel D_800AC950
/* 0AC500 800AC950 80000000 */  .word  0x80000000
/* 0AC504 800AC954 00000000 */  .word  0x00000000

glabel D_800AC958
/* 0AC508 800AC958 80000000 */  .word  0x80000000
/* 0AC50C 800AC95C 00000000 */  .word  0x00000000

glabel D_800AC960
/* 0AC510 800AC960 05550556 */  .word  0x05550556
/* 0AC514 800AC964 0559055A */  .word  0x0559055A
/* 0AC518 800AC968 05650566 */  .word  0x05650566
/* 0AC51C 800AC96C 0569056A */  .word  0x0569056A
/* 0AC520 800AC970 05950596 */  .word  0x05950596
/* 0AC524 800AC974 0599059A */  .word  0x0599059A
/* 0AC528 800AC978 05A505A6 */  .word  0x05A505A6
/* 0AC52C 800AC97C 05A905AA */  .word  0x05A905AA
/* 0AC530 800AC980 06550656 */  .word  0x06550656
/* 0AC534 800AC984 0659065A */  .word  0x0659065A
/* 0AC538 800AC988 06650666 */  .word  0x06650666
/* 0AC53C 800AC98C 0669066A */  .word  0x0669066A
/* 0AC540 800AC990 06950696 */  .word  0x06950696
/* 0AC544 800AC994 0699069A */  .word  0x0699069A
/* 0AC548 800AC998 06A506A6 */  .word  0x06A506A6
/* 0AC54C 800AC99C 06A906AA */  .word  0x06A906AA
/* 0AC550 800AC9A0 09550956 */  .word  0x09550956
/* 0AC554 800AC9A4 0959095A */  .word  0x0959095A
/* 0AC558 800AC9A8 09650966 */  .word  0x09650966
/* 0AC55C 800AC9AC 0969096A */  .word  0x0969096A
/* 0AC560 800AC9B0 09950996 */  .word  0x09950996
/* 0AC564 800AC9B4 0999099A */  .word  0x0999099A
/* 0AC568 800AC9B8 09A509A6 */  .word  0x09A509A6
/* 0AC56C 800AC9BC 09A909AA */  .word  0x09A909AA
/* 0AC570 800AC9C0 0A550A56 */  .word  0x0A550A56
/* 0AC574 800AC9C4 0A590A5A */  .word  0x0A590A5A
/* 0AC578 800AC9C8 0A650A66 */  .word  0x0A650A66
/* 0AC57C 800AC9CC 0A690A6A */  .word  0x0A690A6A
/* 0AC580 800AC9D0 0A950A96 */  .word  0x0A950A96
/* 0AC584 800AC9D4 0A990A9A */  .word  0x0A990A9A
/* 0AC588 800AC9D8 0AA50AA6 */  .word  0x0AA50AA6
/* 0AC58C 800AC9DC 0AA90AAA */  .word  0x0AA90AAA

glabel D_800AC9E0
/* 0AC590 800AC9E0 3C8EFA35 */  .float  0.01745329238474369
/* 0AC594 800AC9E4 00000000 */  .float  0.0
/* 0AC598 800AC9E8 00000000 */  .float  0.0
/* 0AC59C 800AC9EC 00000000 */  .float  0.0

glabel D_800AC9F0
/* 0AC5A0 800AC9F0 3FF00000 */  .word  0x3FF00000
/* 0AC5A4 800AC9F4 00000000 */  .word  0x00000000
/* 0AC5A8 800AC9F8 BFC55554 */  .word  0xBFC55554
/* 0AC5AC 800AC9FC BC83656D */  .word  0xBC83656D
/* 0AC5B0 800ACA00 3F8110ED */  .word  0x3F8110ED
/* 0AC5B4 800ACA04 3804C2A0 */  .word  0x3804C2A0
/* 0AC5B8 800ACA08 BF29F6FF */  .word  0xBF29F6FF
/* 0AC5BC 800ACA0C EEA56814 */  .word  0xEEA56814
/* 0AC5C0 800ACA10 3EC5DBDF */  .word  0x3EC5DBDF
/* 0AC5C4 800ACA14 0E314BFE */  .word  0x0E314BFE

glabel D_800ACA18
/* 0AC5C8 800ACA18 3FD45F306DC9C883 */  .double  0.3183098861837907

glabel D_800ACA20
/* 0AC5D0 800ACA20 400921FB50000000 */  .double  3.1415926218032837

glabel D_800ACA28
/* 0AC5D8 800ACA28 3E6110B4611A6263 */  .double  3.178650954705639e-08

glabel D_800ACA30
/* 0AC5E0 800ACA30 00000000 */  .float  0.0
/* 0AC5E4 800ACA34 00000000 */  .float  0.0
/* 0AC5E8 800ACA38 00000000 */  .float  0.0
/* 0AC5EC 800ACA3C 00000000 */  .float  0.0

glabel D_800ACA40
/* 0AC5F0 800ACA40 3FF00000 */  .word  0x3FF00000
/* 0AC5F4 800ACA44 00000000 */  .word  0x00000000
/* 0AC5F8 800ACA48 BFC55554 */  .word  0xBFC55554
/* 0AC5FC 800ACA4C BC83656D */  .word  0xBC83656D
/* 0AC600 800ACA50 3F8110ED */  .word  0x3F8110ED
/* 0AC604 800ACA54 3804C2A0 */  .word  0x3804C2A0
/* 0AC608 800ACA58 BF29F6FF */  .word  0xBF29F6FF
/* 0AC60C 800ACA5C EEA56814 */  .word  0xEEA56814
/* 0AC610 800ACA60 3EC5DBDF */  .word  0x3EC5DBDF
/* 0AC614 800ACA64 0E314BFE */  .word  0x0E314BFE

glabel D_800ACA68
/* 0AC618 800ACA68 3FD45F306DC9C883 */  .double  0.3183098861837907

glabel D_800ACA70
/* 0AC620 800ACA70 400921FB50000000 */  .double  3.1415926218032837

glabel D_800ACA78
/* 0AC628 800ACA78 3E6110B4611A6263 */  .double  3.178650954705639e-08

glabel D_800ACA80
/* 0AC630 800ACA80 00000000 */  .float  0.0
/* 0AC634 800ACA84 00000000 */  .float  0.0
/* 0AC638 800ACA88 00000000 */  .float  0.0
/* 0AC63C 800ACA8C 00000000 */  .float  0.0

glabel D_800ACA90
/* 0AC640 800ACA90 7F810000 */  .word  0x7F810000
/* 0AC644 800ACA94 00000000 */  .float  0.0
/* 0AC648 800ACA98 00000000 */  .float  0.0
/* 0AC64C 800ACA9C 00000000 */  .float  0.0

glabel jtbl_800ACAA0
/* 0AC650 800ACAA0 800532F8 */  .word  L800532F8
/* 0AC654 800ACAA4 80053304 */  .word  L80053304
/* 0AC658 800ACAA8 8005331C */  .word  L8005331C
/* 0AC65C 800ACAAC 80053328 */  .word  L80053328
/* 0AC660 800ACAB0 80053310 */  .word  L80053310
/* 0AC664 800ACAB4 80053334 */  .word  L80053334

glabel D_800ACAB8
/* 0AC668 800ACAB8 4105221B3D3FB61B */  .double  173123.404906676

glabel jtbl_800ACAC0
/* 0AC670 800ACAC0 80053D60 */  .word  L80053D60
/* 0AC674 800ACAC4 80053D94 */  .word  L80053D94
/* 0AC678 800ACAC8 80053DF4 */  .word  L80053DF4
/* 0AC67C 800ACACC 80053DC8 */  .word  L80053DC8
/* 0AC680 800ACAD0 80053E20 */  .word  L80053E20
/* 0AC684 800ACAD4 80053E4C */  .word  L80053E4C
/* 0AC688 800ACAD8 80053EB4 */  .word  L80053EB4
/* 0AC68C 800ACADC 80053F2C */  .word  L80053F2C

glabel D_800ACAE0
/* 0AC690 800ACAE0 4105221B3D3FB61B */  .double  173123.404906676
/* 0AC698 800ACAE8 0000000000000000 */  .double  0.0
