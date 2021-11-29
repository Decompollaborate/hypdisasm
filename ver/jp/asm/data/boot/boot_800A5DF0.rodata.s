.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800A5DF0
/* 0A59A0 800A5DF0  */  .asciz  "_requestCurMotion:%d\n"
                        .balign 4
/* 0A59B8 800A5E08  */  .asciz  "motionNum:%d\n"
                        .balign 4
/* 0A59C8 800A5E18  */  .asciz  "  %s\n"
                        .balign 4
/* 0A59D0 800A5E20  */  .asciz  "motionNum:%d\n"
                        .balign 4
/* 0A59E0 800A5E30  */  .asciz  "  %s\n"
                        .balign 4
/* 0A59E8 800A5E38  */  .asciz  "bias:%p\n"
                        .balign 4
/* 0A59F4 800A5E44  */  .asciz  "fcvNode:%p\n"
                        .balign 4
/* 0A5A00 800A5E50  */  .asciz  "interTime:%f\n"
                        .balign 4
/* 0A5A10 800A5E60  */  .asciz  "initFunc:%p\n"
                        .balign 4
/* 0A5A20 800A5E70  */  .asciz  "initResult:%d\n"
                        .balign 4
/* 0A5A30 800A5E80  */  .asciz  "_startAction: actionType:%d\n"
                        .balign 4
/* 0A5A50 800A5EA0  */  .asciz  "lastAfcKey:%p\n    afcKey:%p\n"
                        .balign 4
/* 0A5A70 800A5EC0  */  .asciz  "error: _setAction(%p): unknown action_type(%d)\n"
                        .balign 4

glabel D_800A5EF0
/* 0A5AA0 800A5EF0  */  .asciz  "補間"
                        .balign 4
/* 0A5AA8 800A5EF8  */  .asciz  "_setInterAct:  next-motion:%s  next-action:%s\n"
                        .balign 4
/* 0A5AD8 800A5F28  */  .asciz  "apply action_joint_pose from actJointPose\n"
                        .balign 4
/* 0A5B04 800A5F54  */  .asciz  "firstPose:%d lastPose:%d act:%s\n"
                        .balign 4
/* 0A5B28 800A5F78  */  .asciz  "firstPose:%d lastPose:%d act:%s apply:%d\n"
                        .balign 4
/* 0A5B54 800A5FA4  */  .asciz  "apply action_joint_pose from action\n"
                        .balign 4
/* 0A5B7C 800A5FCC  */  .asciz  "firstPose:%d lastPose:%d act:%s apply:%d\n"
                        .balign 4
/* 0A5BA8 800A5FF8  */  .asciz  "total %d joint_actions applied\n"
                        .balign 4
/* 0A5BC8 800A6018  */  .asciz  "rate:%f  centerHeight:%f  default:%f\n"
                        .balign 4
/* 0A5BF0 800A6040  */  .asciz  "error: actHara(%p): unknown action_type(%d)\n"
                        .balign 4
/* 0A5C20 800A6070  */  .asciz  "IS_LOOP:%d  attr:%04x, stopFlag:%d\n"
                        .balign 4
/* 0A5C44 800A6094  */  .asciz  "error: actJoint(%p): unknown action_type(%d)\n"
                        .balign 4
/* 0A5C74 800A60C4  */  .asciz  "\n\nactRequest: %s\n"
                        .balign 4
/* 0A5C88 800A60D8  */  .asciz  "play ID: %d\n"
                        .balign 4
/* 0A5C98 800A60E8  */  .asciz  "request to slot: ID: %d\n"
                        .balign 4

glabel D_800A6104
/* 0A5CB4 800A6104  */  .asciz  "ACT_NONE"
                        .balign 4

glabel D_800A6110
/* 0A5CC0 800A6110  */  .asciz  "ACT_INTER"
                        .balign 4

glabel D_800A611C
/* 0A5CCC 800A611C  */  .asciz  "ACT_END"
                        .balign 4

glabel D_800A6124
/* 0A5CD4 800A6124  */  .asciz  "変。"
                        .balign 4
/* 0A5CDC 800A612C  */  .asciz  "actSetNext:%s\n"
                        .balign 4
/* 0A5CEC 800A613C  */  .asciz  "next:%s\n"
                        .balign 4
/* 0A5CF8 800A6148  */  .asciz  "Invalid action table.\n actIdx(%d) != %d\n"
                        .balign 4
/* 0A5D24 800A6174  */  .asciz  " action:%s\n"
                        .balign 4

glabel D_800A6180
/* 0A5D30 800A6180 3A83126F */  .float  0.0010000000474974513

glabel D_800A6184
/* 0A5D34 800A6184 BA83126F */  .float  -0.0010000000474974513

glabel D_800A6188
/* 0A5D38 800A6188 3F99999A */  .float  1.2000000476837158

glabel D_800A618C
/* 0A5D3C 800A618C 3E4CCCCD */  .float  0.20000000298023224

glabel D_800A6190
/* 0A5D40 800A6190  */  .asciz  "あぐら"
                        .balign 4

glabel D_800A6198
/* 0A5D48 800A6198  */  .asciz  "あきれ"
                        .balign 4

glabel D_800A61A0
/* 0A5D50 800A61A0  */  .asciz  "大怒り"
                        .balign 4

glabel D_800A61A8
/* 0A5D58 800A61A8  */  .asciz  "中怒り"
                        .balign 4

glabel D_800A61B0
/* 0A5D60 800A61B0  */  .asciz  "けいれい"
                        .balign 4

glabel D_800A61BC
/* 0A5D6C 800A61BC  */  .asciz  "足踏み"
                        .balign 4

glabel D_800A61C4
/* 0A5D74 800A61C4  */  .asciz  "足を振る"
                        .balign 4

glabel D_800A61D0
/* 0A5D80 800A61D0  */  .asciz  "足トントンST"
                        .balign 4

glabel D_800A61E0
/* 0A5D90 800A61E0  */  .asciz  "足トントンLP"
                        .balign 4

glabel D_800A61F0
/* 0A5DA0 800A61F0  */  .asciz  "足トントンED"
                        .balign 4

glabel D_800A6200
/* 0A5DB0 800A6200  */  .asciz  "あわてる"
                        .balign 4

glabel D_800A620C
/* 0A5DBC 800A620C  */  .asciz  "飛び後ろ向き"
                        .balign 4

glabel D_800A621C
/* 0A5DCC 800A621C  */  .asciz  "バレエ"
                        .balign 4

glabel D_800A6224
/* 0A5DD4 800A6224  */  .asciz  "びっくり"
                        .balign 4

glabel D_800A6230
/* 0A5DE0 800A6230  */  .asciz  "ふてくされ"
                        .balign 4

glabel D_800A623C
/* 0A5DEC 800A623C  */  .asciz  "ばいばい"
                        .balign 4

glabel D_800A6248
/* 0A5DF8 800A6248  */  .asciz  "ちぇ"
                        .balign 4

glabel D_800A6250
/* 0A5E00 800A6250  */  .asciz  "注意"
                        .balign 4

glabel D_800A6258
/* 0A5E08 800A6258  */  .asciz  "かみなり"
                        .balign 4

glabel D_800A6264
/* 0A5E14 800A6264  */  .asciz  "かみなり失敗"
                        .balign 4

glabel D_800A6274
/* 0A5E24 800A6274  */  .asciz  "１０万ボルト"
                        .balign 4

glabel D_800A6284
/* 0A5E34 800A6284  */  .asciz  "１０万ボルト失敗"
                        .balign 4

glabel D_800A6298
/* 0A5E48 800A6298  */  .asciz  "電気ショック"
                        .balign 4

glabel D_800A62A8
/* 0A5E58 800A62A8  */  .asciz  "電気ショック失敗"
                        .balign 4

glabel D_800A62BC
/* 0A5E6C 800A62BC  */  .asciz  "食べる"
                        .balign 4

glabel D_800A62C4
/* 0A5E74 800A62C4  */  .asciz  "絵を描くＳＴ"
                        .balign 4

glabel D_800A62D4
/* 0A5E84 800A62D4  */  .asciz  "絵を描くＬＰ"
                        .balign 4

glabel D_800A62E4
/* 0A5E94 800A62E4  */  .asciz  "絵を描くＥＤ"
                        .balign 4

glabel D_800A62F4
/* 0A5EA4 800A62F4  */  .asciz  "絵を描くＥＤ下がる"
                        .balign 4

glabel D_800A6308
/* 0A5EB8 800A6308  */  .asciz  "絵を描き見上げる"
                        .balign 4

glabel D_800A631C
/* 0A5ECC 800A631C  */  .asciz  "絵を見せる"
                        .balign 4

glabel D_800A6328
/* 0A5ED8 800A6328  */  .asciz  "ふらふら"
                        .balign 4

glabel D_800A6334
/* 0A5EE4 800A6334  */  .asciz  "顔振り向き"
                        .balign 4

glabel D_800A6340
/* 0A5EF0 800A6340  */  .asciz  "顔振り向き左"
                        .balign 4

glabel D_800A6350
/* 0A5F00 800A6350  */  .asciz  "顔振り向き右"
                        .balign 4

glabel D_800A6360
/* 0A5F10 800A6360  */  .asciz  "ふるえ"
                        .balign 4

glabel D_800A6368
/* 0A5F18 800A6368  */  .asciz  "がっくりＭ"
                        .balign 4

glabel D_800A6374
/* 0A5F24 800A6374  */  .asciz  "がっくりＳ"
                        .balign 4

glabel D_800A6380
/* 0A5F30 800A6380  */  .asciz  "中喜び"
                        .balign 4

glabel D_800A6388
/* 0A5F38 800A6388  */  .asciz  "小喜び"
                        .balign 4

glabel D_800A6390
/* 0A5F40 800A6390  */  .asciz  "呼ぶ"
                        .balign 4

glabel D_800A6398
/* 0A5F48 800A6398  */  .asciz  "ごそごそ"
                        .balign 4

glabel D_800A63A4
/* 0A5F54 800A63A4  */  .asciz  "ごそ出しＳＴ"
                        .balign 4

glabel D_800A63B4
/* 0A5F64 800A63B4  */  .asciz  "ごそ出しＥＤ"
                        .balign 4

glabel D_800A63C4
/* 0A5F74 800A63C4  */  .asciz  "ハーモニカ"
                        .balign 4

glabel D_800A63D0
/* 0A5F80 800A63D0  */  .asciz  "はずれ"
                        .balign 4

glabel D_800A63D8
/* 0A5F88 800A63D8  */  .asciz  "喜び頭振り"
                        .balign 4

glabel D_800A63E4
/* 0A5F94 800A63E4  */  .asciz  "頭振り"
                        .balign 4

glabel D_800A63EC
/* 0A5F9C 800A63EC  */  .asciz  "こんにちは"
                        .balign 4

glabel D_800A63F8
/* 0A5FA8 800A63F8  */  .asciz  "おしり振り"
                        .balign 4

glabel D_800A6404
/* 0A5FB4 800A6404  */  .asciz  "拾う"
                        .balign 4

glabel D_800A640C
/* 0A5FBC 800A640C  */  .asciz  "拾うふり"
                        .balign 4

glabel D_800A6418
/* 0A5FC8 800A6418  */  .asciz  "行こう！"
                        .balign 4

glabel D_800A6424
/* 0A5FD4 800A6424  */  .asciz  "いらない投げ２"
                        .balign 4

glabel D_800A6434
/* 0A5FE4 800A6434  */  .asciz  "いらない投げ"
                        .balign 4

glabel D_800A6444
/* 0A5FF4 800A6444  */  .asciz  "いやぁん"
                        .balign 4

glabel D_800A6450
/* 0A6000 800A6450  */  .asciz  "５０ｃｍジャンプ"
                        .balign 4

glabel D_800A6464
/* 0A6014 800A6464  */  .asciz  "跳ね"
                        .balign 4

glabel D_800A646C
/* 0A601C 800A646C  */  .asciz  "前ジャンプ始め"
                        .balign 4

glabel D_800A647C
/* 0A602C 800A647C  */  .asciz  "前ジャンプループ"
                        .balign 4

glabel D_800A6490
/* 0A6040 800A6490  */  .asciz  "前ジャンプ着地"
                        .balign 4

glabel D_800A64A0
/* 0A6050 800A64A0  */  .asciz  "前ジャンプ衝突"
                        .balign 4

glabel D_800A64B0
/* 0A6060 800A64B0  */  .asciz  "前ジャンプ墜落中"
                        .balign 4

glabel D_800A64C4
/* 0A6074 800A64C4  */  .asciz  "前ジャンプ墜落着地"
                        .balign 4

glabel D_800A64D8
/* 0A6088 800A64D8  */  .asciz  "前ジャンプ墜落失神"
                        .balign 4

glabel D_800A64EC
/* 0A609C 800A64EC  */  .asciz  "前ジャンプ墜落起きる"
                        .balign 4

glabel D_800A6504
/* 0A60B4 800A6504  */  .asciz  "じょうろ"
                        .balign 4

glabel D_800A6510
/* 0A60C0 800A6510  */  .asciz  "かかげるＳＴ"
                        .balign 4

glabel D_800A6520
/* 0A60D0 800A6520  */  .asciz  "かかげるＬＰ"
                        .balign 4

glabel D_800A6530
/* 0A60E0 800A6530  */  .asciz  "かかげるＥＤ"
                        .balign 4

glabel D_800A6540
/* 0A60F0 800A6540  */  .asciz  "かかげ上ＳＴ"
                        .balign 4

glabel D_800A6550
/* 0A6100 800A6550  */  .asciz  "かかげ上ＬＰ"
                        .balign 4

glabel D_800A6560
/* 0A6110 800A6560  */  .asciz  "かかげ上ＥＤ"
                        .balign 4

glabel D_800A6570
/* 0A6120 800A6570  */  .asciz  "構えＬ"
                        .balign 4

glabel D_800A6578
/* 0A6128 800A6578  */  .asciz  "構え"
                        .balign 4

glabel D_800A6580
/* 0A6130 800A6580  */  .asciz  "構えENDING"
                        .balign 4

glabel D_800A658C
/* 0A613C 800A658C  */  .asciz  "横揺れ構え"
                        .balign 4

glabel D_800A6598
/* 0A6148 800A6598  */  .asciz  "かしげ（疑問）"
                        .balign 4

glabel D_800A65A8
/* 0A6158 800A65A8  */  .asciz  "かしげ２"
                        .balign 4

glabel D_800A65B4
/* 0A6164 800A65B4  */  .asciz  "数える"
                        .balign 4

glabel D_800A65BC
/* 0A616C 800A65BC  */  .asciz  "きく"
                        .balign 4

glabel D_800A65C4
/* 0A6174 800A65C4  */  .asciz  "こばか"
                        .balign 4

glabel D_800A65CC
/* 0A617C 800A65CC  */  .asciz  "これこれ"
                        .balign 4

glabel D_800A65D8
/* 0A6188 800A65D8  */  .asciz  "くれ"
                        .balign 4

glabel D_800A65E0
/* 0A6190 800A65E0  */  .asciz  "くれくれ"
                        .balign 4

glabel D_800A65EC
/* 0A619C 800A65EC  */  .asciz  "くさぶえ"
                        .balign 4

glabel D_800A65F8
/* 0A61A8 800A65F8  */  .asciz  "くしゃみ"
                        .balign 4

glabel D_800A6604
/* 0A61B4 800A6604  */  .asciz  "きょろきょろ"
                        .balign 4

glabel D_800A6614
/* 0A61C4 800A6614  */  .asciz  "前だしＳＴ"
                        .balign 4

glabel D_800A6620
/* 0A61D0 800A6620  */  .asciz  "前だしＬＰ"
                        .balign 4

glabel D_800A662C
/* 0A61DC 800A662C  */  .asciz  "前だしＬＰ開始"
                        .balign 4

glabel D_800A663C
/* 0A61EC 800A663C  */  .asciz  "前だしＥＤ"
                        .balign 4

glabel D_800A6648
/* 0A61F8 800A6648  */  .asciz  "めまい"
                        .balign 4

glabel D_800A6650
/* 0A6200 800A6650  */  .asciz  "見上げ始め"
                        .balign 4

glabel D_800A665C
/* 0A620C 800A665C  */  .asciz  "見上げ途中"
                        .balign 4

glabel D_800A6668
/* 0A6218 800A6668  */  .asciz  "見上げ終了"
                        .balign 4

glabel D_800A6674
/* 0A6224 800A6674  */  .asciz  "見上げ短始め"
                        .balign 4

glabel D_800A6684
/* 0A6234 800A6684  */  .asciz  "もじもじ"
                        .balign 4

glabel D_800A6690
/* 0A6240 800A6690  */  .asciz  "むかつき"
                        .balign 4

glabel D_800A669C
/* 0A624C 800A669C  */  .asciz  "無心"
                        .balign 4

glabel D_800A66A4
/* 0A6254 800A66A4  */  .asciz  "無視"
                        .balign 4

glabel D_800A66AC
/* 0A625C 800A66AC  */  .asciz  "投げる"
                        .balign 4

glabel D_800A66B4
/* 0A6264 800A66B4  */  .asciz  "弱く投げる"
                        .balign 4

glabel D_800A66C0
/* 0A6270 800A66C0  */  .asciz  "プレイヤーに投げる"
                        .balign 4

glabel D_800A66D4
/* 0A6284 800A66D4  */  .asciz  "目標に投げる"
                        .balign 4

glabel D_800A66E4
/* 0A6294 800A66E4  */  .asciz  "なやむ"
                        .balign 4

glabel D_800A66EC
/* 0A629C 800A66EC  */  .asciz  "なやむ（手なし）"
                        .balign 4

glabel D_800A6700
/* 0A62B0 800A6700  */  .asciz  "つまずき始め"
                        .balign 4

glabel D_800A6710
/* 0A62C0 800A6710  */  .asciz  "つまずきループ"
                        .balign 4

glabel D_800A6720
/* 0A62D0 800A6720  */  .asciz  "つまずき終わり"
                        .balign 4

glabel D_800A6730
/* 0A62E0 800A6730  */  .asciz  "歩き→つまずき始め"
                        .balign 4

glabel D_800A6744
/* 0A62F4 800A6744  */  .asciz  "上を向く"
                        .balign 4

glabel D_800A6750
/* 0A6300 800A6750  */  .asciz  "匂い"
                        .balign 4

glabel D_800A6758
/* 0A6308 800A6758  */  .asciz  "ＮＯ"
                        .balign 4

glabel D_800A6760
/* 0A6310 800A6760  */  .asciz  "のりだす"
                        .balign 4

glabel D_800A676C
/* 0A631C 800A676C  */  .asciz  "のせる"
                        .balign 4

glabel D_800A6774
/* 0A6324 800A6774  */  .asciz  "ひっこぬくＳＴ"
                        .balign 4

glabel D_800A6784
/* 0A6334 800A6784  */  .asciz  "ひっこぬくＬＰ"
                        .balign 4

glabel D_800A6794
/* 0A6344 800A6794  */  .asciz  "ひっこぬけた！"
                        .balign 4

glabel D_800A67A4
/* 0A6354 800A67A4  */  .asciz  "ひっこぬけない;;"
                        .balign 4

glabel D_800A67B8
/* 0A6368 800A67B8  */  .asciz  "宝箱ひっこぬくＳＴ"
                        .balign 4

glabel D_800A67CC
/* 0A637C 800A67CC  */  .asciz  "宝箱ひっこぬく"
                        .balign 4

glabel D_800A67DC
/* 0A638C 800A67DC  */  .asciz  "つりＳＴ"
                        .balign 4

glabel D_800A67E8
/* 0A6398 800A67E8  */  .asciz  "つりＬＰ"
                        .balign 4

glabel D_800A67F4
/* 0A63A4 800A67F4  */  .asciz  "つれた！"
                        .balign 4

glabel D_800A6800
/* 0A63B0 800A6800  */  .asciz  "つりキャスト"
                        .balign 4

glabel D_800A6810
/* 0A63C0 800A6810  */  .asciz  "溺れ始め"
                        .balign 4

glabel D_800A681C
/* 0A63CC 800A681C  */  .asciz  "溺れる途中"
                        .balign 4

glabel D_800A6828
/* 0A63D8 800A6828  */  .asciz  "頭ぺしぺし"
                        .balign 4

glabel D_800A6834
/* 0A63E4 800A6834  */  .asciz  "置く"
                        .balign 4

glabel D_800A683C
/* 0A63EC 800A683C  */  .asciz  "押すＳＴ"
                        .balign 4

glabel D_800A6848
/* 0A63F8 800A6848  */  .asciz  "押すＬＰ"
                        .balign 4

glabel D_800A6854
/* 0A6404 800A6854  */  .asciz  "押すＥＤ"
                        .balign 4

glabel D_800A6860
/* 0A6410 800A6860  */  .asciz  "ピースサイン"
                        .balign 4

glabel D_800A6870
/* 0A6420 800A6870  */  .asciz  "らっぱ"
                        .balign 4

glabel D_800A6878
/* 0A6428 800A6878  */  .asciz  "ほんとに？"
                        .balign 4

glabel D_800A6884
/* 0A6434 800A6884  */  .asciz  "４走始め"
                        .balign 4

glabel D_800A6890
/* 0A6440 800A6890  */  .asciz  "４走ループ"
                        .balign 4

glabel D_800A689C
/* 0A644C 800A689C  */  .asciz  "４走終わり"
                        .balign 4

glabel D_800A68A8
/* 0A6458 800A68A8  */  .asciz  "かえるとび"
                        .balign 4

glabel D_800A68B4
/* 0A6464 800A68B4  */  .asciz  "せき"
                        .balign 4

glabel D_800A68BC
/* 0A646C 800A68BC  */  .asciz  "寝始め"
                        .balign 4

glabel D_800A68C4
/* 0A6474 800A68C4  */  .asciz  "寝途中"
                        .balign 4

glabel D_800A68CC
/* 0A647C 800A68CC  */  .asciz  "寝終わり起きる"
                        .balign 4

glabel D_800A68DC
/* 0A648C 800A68DC  */  .asciz  "寝終わり座る"
                        .balign 4

glabel D_800A68EC
/* 0A649C 800A68EC  */  .asciz  "座りはじめ"
                        .balign 4

glabel D_800A68F8
/* 0A64A8 800A68F8  */  .asciz  "座り状態"
                        .balign 4

glabel D_800A6904
/* 0A64B4 800A6904  */  .asciz  "座りみみかき"
                        .balign 4

glabel D_800A6914
/* 0A64C4 800A6914  */  .asciz  "ソッポ向き始め"
                        .balign 4

glabel D_800A6924
/* 0A64D4 800A6924  */  .asciz  "ソッポ向き終わり"
                        .balign 4

glabel D_800A6938
/* 0A64E8 800A6938  */  .asciz  "スイカかまえ"
                        .balign 4

glabel D_800A6948
/* 0A64F8 800A6948  */  .asciz  "スイカあしぶみ"
                        .balign 4

glabel D_800A6958
/* 0A6508 800A6958  */  .asciz  "スイカ歩き"
                        .balign 4

glabel D_800A6964
/* 0A6514 800A6964  */  .asciz  "スイカわりＳＴ"
                        .balign 4

glabel D_800A6974
/* 0A6524 800A6974  */  .asciz  "スイカわりＬＰ"
                        .balign 4

glabel D_800A6984
/* 0A6534 800A6984  */  .asciz  "スイカわりＥＤ"
                        .balign 4

glabel D_800A6994
/* 0A6544 800A6994  */  .asciz  "スイカわりやめる"
                        .balign 4

glabel D_800A69A8
/* 0A6558 800A69A8  */  .asciz  "すてき"
                        .balign 4

glabel D_800A69B0
/* 0A6560 800A69B0  */  .asciz  "頭かきかき"
                        .balign 4

glabel D_800A69BC
/* 0A656C 800A69BC  */  .asciz  "得意"
                        .balign 4

glabel D_800A69C4
/* 0A6574 800A69C4  */  .asciz  "とろうジャンプ"
                        .balign 4

glabel D_800A69D4
/* 0A6584 800A69D4  */  .asciz  "昇龍ジャンプ"
                        .balign 4

glabel D_800A69E4
/* 0A6594 800A69E4  */  .asciz  "つつく"
                        .balign 4

glabel D_800A69EC
/* 0A659C 800A69EC  */  .asciz  "ＴＶつける"
                        .balign 4

glabel D_800A69F8
/* 0A65A8 800A69F8  */  .asciz  "うなだれＳＴ"
                        .balign 4

glabel D_800A6A08
/* 0A65B8 800A6A08  */  .asciz  "うなだれＬＰ"
                        .balign 4

glabel D_800A6A18
/* 0A65C8 800A6A18  */  .asciz  "うなだれＥＤ"
                        .balign 4

glabel D_800A6A28
/* 0A65D8 800A6A28  */  .asciz  "うんうん"
                        .balign 4

glabel D_800A6A34
/* 0A65E4 800A6A34  */  .asciz  "声大きいよ"
                        .balign 4

glabel D_800A6A40
/* 0A65F0 800A6A40  */  .asciz  "声小さいよ"
                        .balign 4

glabel D_800A6A4C
/* 0A65FC 800A6A4C  */  .asciz  "歩き始め"
                        .balign 4

glabel D_800A6A58
/* 0A6608 800A6A58  */  .asciz  "歩き途中"
                        .balign 4

glabel D_800A6A64
/* 0A6614 800A6A64  */  .asciz  "歩き終わり"
                        .balign 4

glabel D_800A6A70
/* 0A6620 800A6A70  */  .asciz  "グッタリして歩く"
                        .balign 4

glabel D_800A6A84
/* 0A6634 800A6A84  */  .asciz  "中笑い"
                        .balign 4

glabel D_800A6A8C
/* 0A663C 800A6A8C  */  .asciz  "小笑い"
                        .balign 4

glabel D_800A6A94
/* 0A6644 800A6A94  */  .asciz  "渡し始め"
                        .balign 4

glabel D_800A6AA0
/* 0A6650 800A6AA0  */  .asciz  "渡し中"
                        .balign 4

glabel D_800A6AA8
/* 0A6658 800A6AA8  */  .asciz  "渡し終り"
                        .balign 4

glabel D_800A6AB4
/* 0A6664 800A6AB4  */  .asciz  "渡し始め２"
                        .balign 4

glabel D_800A6AC0
/* 0A6670 800A6AC0  */  .asciz  "渡し中２"
                        .balign 4

glabel D_800A6ACC
/* 0A667C 800A6ACC  */  .asciz  "傾げ左"
                        .balign 4

glabel D_800A6AD4
/* 0A6684 800A6AD4  */  .asciz  "傾げ右左"
                        .balign 4

glabel D_800A6AE0
/* 0A6690 800A6AE0  */  .asciz  "ＹＥＳ"
                        .balign 4

glabel D_800A6AE8
/* 0A6698 800A6AE8  */  .asciz  "よしよし"
                        .balign 4

glabel D_800A6AF4
/* 0A66A4 800A6AF4  */  .asciz  "四つん這い始め"
                        .balign 4

glabel D_800A6B04
/* 0A66B4 800A6B04  */  .asciz  "威嚇始め"
                        .balign 4

glabel D_800A6B10
/* 0A66C0 800A6B10  */  .asciz  "威嚇ループ"
                        .balign 4

glabel D_800A6B1C
/* 0A66CC 800A6B1C  */  .asciz  "威嚇終わり"
                        .balign 4

glabel D_800A6B28
/* 0A66D8 800A6B28  */  .asciz  "四つん這い終了"
                        .balign 4

glabel D_800A6B38
/* 0A66E8 800A6B38  */  .asciz  "目的方向へ回転"
                        .balign 4

glabel D_800A6B48
/* 0A66F8 800A6B48  */  .asciz  "目的方向へ回転／絵見せる"
                        .balign 4

glabel D_800A6B64
/* 0A6714 800A6B64  */  .asciz  "目的方向へ回転／構え横"
                        .balign 4

glabel D_800A6B7C
/* 0A672C 800A6B7C  */  .asciz  "目的方向へ回転位置調整"
                        .balign 4

glabel D_800A6B94
/* 0A6744 800A6B94  */  .asciz  "目的方向へ飛んで回転"
                        .balign 4

glabel D_800A6BAC
/* 0A675C 800A6BAC  */  .asciz  "目的方向へ飛んで回転位置調整"
                        .balign 4

glabel D_800A6BCC
/* 0A677C 800A6BCC  */  .asciz  "act_p_right_n_m"
                        .balign 4

glabel D_800A6BDC
/* 0A678C 800A6BDC  */  .asciz  "act_p_right_n_m_pa"
                        .balign 4

glabel D_800A6BF0
/* 0A67A0 800A6BF0  */  .asciz  "目的地へ歩く"
                        .balign 4

glabel D_800A6C00
/* 0A67B0 800A6C00  */  .asciz  "walk2aimL"
                        .balign 4

glabel D_800A6C0C
/* 0A67BC 800A6C0C  */  .asciz  "walk2aimE"
                        .balign 4

glabel D_800A6C18
/* 0A67C8 800A6C18  */  .asciz  "目的地へよちよち歩く"
                        .balign 4

glabel D_800A6C30
/* 0A67E0 800A6C30  */  .asciz  "足踏みしてあとずさる"
                        .balign 4

glabel D_800A6C48
/* 0A67F8 800A6C48  */  .asciz  "足踏みしてあとずさるFAST"
                        .balign 4

glabel D_800A6C64
/* 0A6814 800A6C64  */  .asciz  "目的地へ４足走り"
                        .balign 4

glabel D_800A6C78
/* 0A6828 800A6C78  */  .asciz  "run2aimL"
                        .balign 4

glabel D_800A6C84
/* 0A6834 800A6C84  */  .asciz  "run2aimE"
                        .balign 4

glabel D_800A6C90
/* 0A6840 800A6C90  */  .asciz  "目的地へ４足走り"
                        .balign 4

glabel D_800A6CA4
/* 0A6854 800A6CA4  */  .asciz  "run2aimL"
                        .balign 4

glabel D_800A6CB0
/* 0A6860 800A6CB0  */  .asciz  "run2aimE"
                        .balign 4

glabel D_800A6CBC
/* 0A686C 800A6CBC  */  .asciz  "HELLOのAFC"
                        .balign 4

glabel D_800A6CC8
/* 0A6878 800A6CC8  */  .asciz  "フシギダネ構え"
                        .balign 4

glabel D_800A6CD8
/* 0A6888 800A6CD8  */  .asciz  "フシギダネ食べる"
                        .balign 4

glabel D_800A6CEC
/* 0A689C 800A6CEC  */  .asciz  "フシギダネ歩きＳＴ"
                        .balign 4

glabel D_800A6D00
/* 0A68B0 800A6D00  */  .asciz  "フシギダネ歩きＬＰ"
                        .balign 4

glabel D_800A6D14
/* 0A68C4 800A6D14  */  .asciz  "フシギダネ歩きＥＤ"
                        .balign 4

glabel D_800A6D28
/* 0A68D8 800A6D28  */  .asciz  "フシギバナ構え"
                        .balign 4

glabel D_800A6D38
/* 0A68E8 800A6D38  */  .asciz  "フシギバナ口あけ"
                        .balign 4

glabel D_800A6D4C
/* 0A68FC 800A6D4C  */  .asciz  "フシギバナ寝"
                        .balign 4

glabel D_800A6D5C
/* 0A690C 800A6D5C  */  .asciz  "二足歩行（ゼニガメ）構え"
                        .balign 4

glabel D_800A6D78
/* 0A6928 800A6D78  */  .asciz  "二足歩行（ゼニガメ）静止"
                        .balign 4

glabel D_800A6D94
/* 0A6944 800A6D94  */  .asciz  "二足歩行目的地を向く"
                        .balign 4

glabel D_800A6DAC
/* 0A695C 800A6DAC  */  .asciz  "あいさつ（ゼニガメ）"
                        .balign 4

glabel D_800A6DC4
/* 0A6974 800A6DC4  */  .asciz  "どこでもあいさつ（ゼニガメ）"
                        .balign 4

glabel D_800A6DE4
/* 0A6994 800A6DE4  */  .asciz  "耳打ち（ゼニガメ）"
                        .balign 4

glabel D_800A6DF8
/* 0A69A8 800A6DF8  */  .asciz  "食べる（ヒトカゲ）"
                        .balign 4

glabel D_800A6E0C
/* 0A69BC 800A6E0C  */  .asciz  "食べる（ゼニガメ）"
                        .balign 4

glabel D_800A6E20
/* 0A69D0 800A6E20  */  .asciz  "まずい（ゼニガメ）"
                        .balign 4

glabel D_800A6E34
/* 0A69E4 800A6E34  */  .asciz  "二足走るＳＴ"
                        .balign 4

glabel D_800A6E44
/* 0A69F4 800A6E44  */  .asciz  "TZ_RUN2AIM_BLP"
                        .balign 4

glabel D_800A6E54
/* 0A6A04 800A6E54  */  .asciz  "TZ_RUN2AIM_CED"
                        .balign 4

glabel D_800A6E64
/* 0A6A14 800A6E64  */  .asciz  "ナゾノクサ目的地へ走る"
                        .balign 4

glabel D_800A6E7C
/* 0A6A2C 800A6E7C  */  .asciz  "N_RUN2AIM_BLP"
                        .balign 4

glabel D_800A6E8C
/* 0A6A3C 800A6E8C  */  .asciz  "N_RUN2AIM_CED"
                        .balign 4

glabel D_800A6E9C
/* 0A6A4C 800A6E9C  */  .asciz  "クサイハナ目的地へ走る"
                        .balign 4

glabel D_800A6EB4
/* 0A6A64 800A6EB4  */  .asciz  "KUS_RUN2AIM_BLP"
                        .balign 4

glabel D_800A6EC4
/* 0A6A74 800A6EC4  */  .asciz  "KUS_RUN2AIM_CED"
                        .balign 4

glabel D_800A6ED4
/* 0A6A84 800A6ED4  */  .asciz  "ナゾノクサ跳び上がる"
                        .balign 4

glabel D_800A6EEC
/* 0A6A9C 800A6EEC  */  .asciz  "二足歩行（ニョロモ）歩くＳＴ"
                        .balign 4

glabel D_800A6F0C
/* 0A6ABC 800A6F0C  */  .asciz  "二足歩行（ニョロモ）歩くＬＰ"
                        .balign 4

glabel D_800A6F2C
/* 0A6ADC 800A6F2C  */  .asciz  "二足歩行（ニョロモ）歩くＥＤ"
                        .balign 4

glabel D_800A6F4C
/* 0A6AFC 800A6F4C  */  .asciz  "二足歩行（ニョロモ）うなずき"
                        .balign 4

glabel D_800A6F6C
/* 0A6B1C 800A6F6C  */  .asciz  "二足歩行（ニョロモ）浮く"
                        .balign 4

glabel D_800A6F88
/* 0A6B38 800A6F88  */  .asciz  "二足歩行どこでも浮く"
                        .balign 4

glabel D_800A6FA0
/* 0A6B50 800A6FA0  */  .asciz  "二足歩行（ニョロモ）水に入る"
                        .balign 4

glabel D_800A6FC0
/* 0A6B70 800A6FC0  */  .asciz  "二足歩行（ニョロモ）水から出る"
                        .balign 4

glabel D_800A6FE0
/* 0A6B90 800A6FE0  */  .asciz  "ニョロモ跳び上がって目標を向く"
                        .balign 4

glabel D_800A7000
/* 0A6BB0 800A7000  */  .asciz  "ゴースト飛ぶ"
                        .balign 4

glabel D_800A7010
/* 0A6BC0 800A7010  */  .asciz  "ゴースト構え"
                        .balign 4

glabel D_800A7020
/* 0A6BD0 800A7020  */  .asciz  "ゴースト脅かし"
                        .balign 4

glabel D_800A7030
/* 0A6BE0 800A7030  */  .asciz  "ゴーストｗｈｙ？"
                        .balign 4

glabel D_800A7044
/* 0A6BF4 800A7044  */  .asciz  "ゴーストやられ"
                        .balign 4

glabel D_800A7054
/* 0A6C04 800A7054  */  .asciz  "バタフリー構え"
                        .balign 4

glabel D_800A7064
/* 0A6C14 800A7064  */  .asciz  "バタフリー飛ぶ"
                        .balign 4

glabel D_800A7074
/* 0A6C24 800A7074  */  .asciz  "バタフリー遅く飛ぶ"
                        .balign 4

glabel D_800A7088
/* 0A6C38 800A7088  */  .asciz  "バタフリー空中で目的地を向く"
                        .balign 4

glabel D_800A70A8
/* 0A6C58 800A70A8  */  .asciz  "バタフリー目的地へ移動"
                        .balign 4

glabel D_800A70C0
/* 0A6C70 800A70C0  */  .asciz  "キャタピーかまえ"
                        .balign 4

glabel D_800A70D4
/* 0A6C84 800A70D4  */  .asciz  "キャタピーその場飛び"
                        .balign 4

glabel D_800A70EC
/* 0A6C9C 800A70EC  */  .asciz  "キャタピー目的地を向く"
                        .balign 4

glabel D_800A7104
/* 0A6CB4 800A7104  */  .asciz  "キャタピーまるまる"
                        .balign 4

glabel D_800A7118
/* 0A6CC8 800A7118  */  .asciz  "キャタピー歩く"
                        .balign 4

glabel D_800A7128
/* 0A6CD8 800A7128  */  .asciz  "キャタピー目的地へ歩く"
                        .balign 4

glabel D_800A7140
/* 0A6CF0 800A7140  */  .asciz  "キャタピー走る"
                        .balign 4

glabel D_800A7150
/* 0A6D00 800A7150  */  .asciz  "キャタピー目的地へ走る"
                        .balign 4

glabel D_800A7168
/* 0A6D18 800A7168  */  .asciz  "キャタピーダッシュ"
                        .balign 4

glabel D_800A717C
/* 0A6D2C 800A717C  */  .asciz  "キャタピー歩き終わり"
                        .balign 4

glabel D_800A7194
/* 0A6D44 800A7194  */  .asciz  "キャタピーたべる"
                        .balign 4

glabel D_800A71A8
/* 0A6D58 800A71A8  */  .asciz  "キャタピー寝る"
                        .balign 4

glabel D_800A71B8
/* 0A6D68 800A71B8  */  .asciz  "ケーシーかまえ"
                        .balign 4

glabel D_800A71C8
/* 0A6D78 800A71C8  */  .asciz  "かに。およぐ"
                        .balign 4

glabel D_800A71D8
/* 0A6D88 800A71D8  */  .asciz  "くらげ。およぐ"
                        .balign 4

glabel D_800A71E8
/* 0A6D98 800A71E8  */  .asciz  "さかな。およぐ"
                        .balign 4

glabel D_800A71F8
/* 0A6DA8 800A71F8  */  .asciz  "そのた。およぐ"
                        .balign 4

glabel D_800A7208
/* 0A6DB8 800A7208  */  .asciz  "かに。のたうつ"
                        .balign 4

glabel D_800A7218
/* 0A6DC8 800A7218  */  .asciz  "くらげ。のたうつ"
                        .balign 4

glabel D_800A722C
/* 0A6DDC 800A722C  */  .asciz  "さかな。のたうつ"
                        .balign 4

glabel D_800A7240
/* 0A6DF0 800A7240  */  .asciz  "かに。のたうつ"
                        .balign 4

glabel D_800A7250
/* 0A6E00 800A7250  */  .asciz  "くらげ。のたうつ"
                        .balign 4

glabel D_800A7264
/* 0A6E14 800A7264  */  .asciz  "さかな。のたうつ"
                        .balign 4

glabel D_800A7278
/* 0A6E28 800A7278  */  .asciz  "ポケモン目的地へ歩く"
                        .balign 4

glabel D_800A7290
/* 0A6E40 800A7290  */  .asciz  "ポケモンゆっくり歩く"
                        .balign 4

glabel D_800A72A8
/* 0A6E58 800A72A8  */  .asciz  "ポケモンはやく歩く"
                        .balign 4

glabel D_800A72BC
/* 0A6E6C 800A72BC  */  .asciz  "ポケモンころがる"
                        .balign 4

glabel D_800A72D0
/* 0A6E80 800A72D0  */  .asciz  "ポケモンその場飛び"
                        .balign 4

glabel D_800A72E4
/* 0A6E94 800A72E4  */  .asciz  "ポケモンその場飛びEND"
                        .balign 4

glabel D_800A72FC
/* 0A6EAC 800A72FC  */  .asciz  "ポケモンその場回転"
                        .balign 4

glabel D_800A7310
/* 0A6EC0 800A7310  */  .asciz  "ポケモン目的地を向く"
                        .balign 4

glabel D_800A7328
/* 0A6ED8 800A7328  */  .asciz  "ポケモン地面の中で目的地を向く"
                        .balign 4

glabel D_800A7348
/* 0A6EF8 800A7348  */  .asciz  "ポケモン地面の中で素早く目的地を向く"
                        .balign 4

glabel D_800A7370
/* 0A6F20 800A7370  */  .asciz  "ポケモン地面の中で瞬間で目的地を向く"
                        .balign 4

glabel D_800A7398
/* 0A6F48 800A7398  */  .asciz  "ポケモン地面に潜る"
                        .balign 4

glabel D_800A73AC
/* 0A6F5C 800A73AC  */  .asciz  "ポケモン潜ってかまえ"
                        .balign 4

glabel D_800A73C4
/* 0A6F74 800A73C4  */  .asciz  "ポケモン目的地へ移動"
                        .balign 4

glabel D_800A73DC
/* 0A6F8C 800A73DC  */  .asciz  "ポケモンかまえ潜"
                        .balign 4

glabel D_800A73F0
/* 0A6FA0 800A73F0  */  .asciz  "ポケモンびよん"
                        .balign 4

glabel D_800A7400
/* 0A6FB0 800A7400  */  .asciz  "ポケモンどこでもびよん"
                        .balign 4

glabel D_800A7418
/* 0A6FC8 800A7418  */  .asciz  "ポケモンどこでもびよんびよん"
                        .balign 4

glabel D_800A7438
/* 0A6FE8 800A7438  */  .asciz  "宝箱潜ってかまえ"
                        .balign 4

glabel D_800A744C
/* 0A6FFC 800A744C  */  .asciz  "宝箱かまえ潜傾き"
                        .balign 4

glabel D_800A7460
/* 0A7010 800A7460  */  .asciz  "宝箱埋まり飛び"
                        .balign 4

glabel D_800A7470
/* 0A7020 800A7470  */  .asciz  "宝箱埋まり飛びEND"
                        .balign 4

glabel D_800A7484
/* 0A7034 800A7484  */  .asciz  "宝箱跳び上がる"
                        .balign 4

glabel D_800A7494
/* 0A7044 800A7494  */  .asciz  "宝箱開く"
                        .balign 4

glabel D_800A74A0
/* 0A7050 800A74A0  */  .asciz  "宝箱RESET"
                        .balign 4

glabel D_800A74AC
/* 0A705C 800A74AC  */  .asciz  "宝箱その場煙"
                        .balign 4

glabel D_800A74BC
/* 0A706C 800A74BC  */  .asciz  "つりざおしなる"
                        .balign 4

glabel D_800A74CC
/* 0A707C 800A74CC  */  .asciz  "構え→立ち"
                        .balign 4

glabel D_800A74D8
/* 0A7088 800A74D8  */  .asciz  "立ち→構え"
                        .balign 4

glabel D_800A74E4
/* 0A7094 800A74E4  */  .asciz  "構え→座り"
                        .balign 4

glabel D_800A74F0
/* 0A70A0 800A74F0  */  .asciz  "座り→構え"
                        .balign 4

glabel D_800A74FC
/* 0A70AC 800A74FC  */  .asciz  "構え→４走"
                        .balign 4

glabel D_800A7508
/* 0A70B8 800A7508  */  .asciz  "４走→構え"
                        .balign 4

glabel D_800A7514
/* 0A70C4 800A7514  */  .asciz  "４走→歩き"
                        .balign 4

glabel D_800A7520
/* 0A70D0 800A7520  */  .asciz  "歩き→４走"
                        .balign 4

glabel D_800A752C
/* 0A70DC 800A752C  */  .asciz  "構え→歩き"
                        .balign 4

glabel D_800A7538
/* 0A70E8 800A7538  */  .asciz  "歩き→構え"
                        .balign 4

glabel D_800A7544
/* 0A70F4 800A7544  */  .asciz  "４走→ジャンプ"
                        .balign 4

glabel D_800A7554
/* 0A7104 800A7554  */  .asciz  "４走→ジャンプ墜落"
                        .balign 4

glabel D_800A7568
/* 0A7118 800A7568  */  .asciz  "構え→すいか構え"
                        .balign 4

glabel D_800A757C
/* 0A712C 800A757C  */  .asciz  "すいか構え→構え"
                        .balign 4

glabel D_800A7590
/* 0A7140 800A7590  */  .asciz  "ピカ構→ナゾ構"
                        .balign 4

glabel D_800A75A0
/* 0A7150 800A75A0  */  .asciz  "バナ構え→寝"
                        .balign 4

glabel D_800A75B0
/* 0A7160 800A75B0  */  .asciz  "バナ寝→構え"
                        .balign 4

glabel D_800A75C0
/* 0A7170 800A75C0  */  .asciz  "キャタピー構え→まる"
                        .balign 4

glabel D_800A75D8
/* 0A7188 800A75D8  */  .asciz  "キャタピーまる→構え"
                        .balign 4

glabel D_800A75F0
/* 0A71A0 800A75F0  */  .asciz  "キャタピー構え→寝"
                        .balign 4

glabel D_800A7604
/* 0A71B4 800A7604  */  .asciz  "キャタピー寝→構え"
                        .balign 4

glabel D_800A7618
/* 0A71C8 800A7618  */  .asciz  "止まる"
                        .balign 4
/* 0A71D0 800A7620  */  .asciz  "P_PIKACHU(%f,%f,%f)\n"
                        .balign 4
/* 0A71E8 800A7638  */  .asciz  "G_PIKACHU(%f,%f,%f)\n"
                        .balign 4

glabel D_800A7650
/* 0A7200 800A7650 3FD9999A */  .float  1.7000000476837158

glabel D_800A7654
/* 0A7204 800A7654 3F666666 */  .float  0.8999999761581421

glabel D_800A7658
/* 0A7208 800A7658 3FCCCCCD */  .float  1.600000023841858

glabel D_800A765C
/* 0A720C 800A765C 3FA66666 */  .float  1.2999999523162842

glabel D_800A7660
/* 0A7210 800A7660 43E28000 */  .float  453.0

glabel D_800A7664
/* 0A7214 800A7664 40DE88CE */  .float  6.95419979095459

glabel D_800A7668
/* 0A7218 800A7668 453B8000 */  .float  3000.0

glabel D_800A766C
/* 0A721C 800A766C BDCCCCCD */  .float  -0.10000000149011612

glabel D_800A7670
/* 0A7220 800A7670 43E28000 */  .float  453.0

glabel D_800A7674
/* 0A7224 800A7674 3D4CCCCD */  .float  0.05000000074505806

glabel D_800A7678
/* 0A7228 800A7678 3DA3D70A */  .float  0.07999999821186066
/* 0A722C 800A767C 00000000 */  .float  0.0

glabel D_800A7680
/* 0A7230 800A7680 4076700000000000 */  .double  359.0

glabel D_800A7688
/* 0A7238 800A7688 3D23D70A */  .float  0.03999999910593033
/* 0A723C 800A768C 00000000 */  .float  0.0

glabel D_800A7690
/* 0A7240 800A7690 4086780000000000 */  .double  719.0

glabel D_800A7698
/* 0A7248 800A7698 3CA3D70A */  .float  0.019999999552965164

glabel D_800A769C
/* 0A724C 800A769C 3A83126F */  .float  0.0010000000474974513

glabel D_800A76A0
/* 0A7250 800A76A0 3C23D70A */  .float  0.009999999776482582
/* 0A7254 800A76A4 00000000 */  .float  0.0

glabel D_800A76A8
/* 0A7258 800A76A8 3F9EB851EB851EB8 */  .double  0.03

glabel D_800A76B0
/* 0A7260 800A76B0 3FB999999999999A */  .double  0.1
/* 0A7268 800A76B8 0000000000000000 */  .double  0.0
