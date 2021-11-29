.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

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
/* 0A9244 800A9694  */  .asciz  "pre_modelsNew"
                        .balign 4
/* 0A9254 800A96A4  */  .asciz  "sizeof(jointT):%d\nsizeof(haraT):%d\nsizeof(objT):%d\n"
                        .balign 4
/* 0A9288 800A96D8  */  .asciz  "modelsNew(%d, %.3f,%.3f,%.3f, %.3f,%.3f, %.3f)\n"
                        .balign 4

glabel D_800A9708
/* 0A92B8 800A9708  */  .asciz  "aft_modelsRequestLoad"
                        .balign 4

glabel D_800A9720
/* 0A92D0 800A9720  */  .asciz  "aft_omHrcAlloc"
                        .balign 4

glabel D_800A9730
/* 0A92E0 800A9730  */  .asciz  "aft_omHrcAllocMtx"
                        .balign 4

glabel D_800A9744
/* 0A92F4 800A9744  */  .asciz  "aft_joSetJointTbl"
                        .balign 4
/* 0A9308 800A9758  */  .asciz  "setppu - obj:%p objType:%d  ppu:%p\n"
                        .balign 4

glabel D_800A977C
/* 0A932C 800A977C  */  .asciz  "pre_freeBuffer"
                        .balign 4

glabel D_800A978C
/* 0A933C 800A978C  */  .asciz  "aft_freeBuffer"
                        .balign 4

glabel D_800A979C
/* 0A934C 800A979C  */  .asciz  "aft_modelsNew"
                        .balign 4

glabel D_800A97AC
/* 0A935C 800A97AC 40966666 */  .float  4.699999809265137

glabel D_800A97B0
/* 0A9360 800A97B0 3F8CCCCD */  .float  1.100000023841858

glabel D_800A97B4
/* 0A9364 800A97B4 3FE66666 */  .float  1.7999999523162842
/* 0A9368 800A97B8 00000000 */  .float  0.0
/* 0A936C 800A97BC 00000000 */  .float  0.0
