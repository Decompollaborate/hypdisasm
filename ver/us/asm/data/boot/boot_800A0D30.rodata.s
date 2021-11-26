.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_RequestCurMotion
/* 0A08E0 800A0D30  */  .asciz  "_requestCurMotion:%d\n"
                        .balign 4
/* 0A08F8 800A0D48  */  .asciz  "motionNum:%d\n"
                        .balign 4
/* 0A0908 800A0D58  */  .asciz  "  %s\n"
                        .balign 4
/* 0A0910 800A0D60  */  .asciz  "motionNum:%d\n"
                        .balign 4
/* 0A0920 800A0D70  */  .asciz  "  %s\n"
                        .balign 4
/* 0A0928 800A0D78  */  .asciz  "bias:%p\n"
                        .balign 4
/* 0A0934 800A0D84  */  .asciz  "fcvNode:%p\n"
                        .balign 4
/* 0A0940 800A0D90  */  .asciz  "interTime:%f\n"
                        .balign 4
/* 0A0950 800A0DA0  */  .asciz  "initFunc:%p\n"
                        .balign 4
/* 0A0960 800A0DB0  */  .asciz  "initResult:%d\n"
                        .balign 4
/* 0A0970 800A0DC0  */  .asciz  "_startAction: actionType:%d\n"
                        .balign 4
/* 0A0990 800A0DE0  */  .asciz  "lastAfcKey:%p\n    afcKey:%p\n"
                        .balign 4
/* 0A09B0 800A0E00  */  .asciz  "error: _setAction(%p): unknown action_type(%d)\n"
                        .balign 4

glabel D_800A0E30
/* 0A09E0 800A0E30  */  .asciz  "補間"
                        .balign 4
/* 0A09E8 800A0E38  */  .asciz  "_setInterAct:  next-motion:%s  next-action:%s\n"
                        .balign 4
/* 0A0A18 800A0E68  */  .asciz  "apply action_joint_pose from actJointPose\n"
                        .balign 4
/* 0A0A44 800A0E94  */  .asciz  "firstPose:%d lastPose:%d act:%s\n"
                        .balign 4
/* 0A0A68 800A0EB8  */  .asciz  "firstPose:%d lastPose:%d act:%s apply:%d\n"
                        .balign 4
/* 0A0A94 800A0EE4  */  .asciz  "apply action_joint_pose from action\n"
                        .balign 4
/* 0A0ABC 800A0F0C  */  .asciz  "firstPose:%d lastPose:%d act:%s apply:%d\n"
                        .balign 4
/* 0A0AE8 800A0F38  */  .asciz  "total %d joint_actions applied\n"
                        .balign 4
/* 0A0B08 800A0F58  */  .asciz  "rate:%f  centerHeight:%f  default:%f\n"
                        .balign 4
/* 0A0B30 800A0F80  */  .asciz  "error: actHara(%p): unknown action_type(%d)\n"
                        .balign 4
/* 0A0B60 800A0FB0  */  .asciz  "IS_LOOP:%d  attr:%04x, stopFlag:%d\n"
                        .balign 4
/* 0A0B84 800A0FD4  */  .asciz  "error: actJoint(%p): unknown action_type(%d)\n"
                        .balign 4
/* 0A0BB4 800A1004  */  .asciz  "\n\nactRequest: %s\n"
                        .balign 4
/* 0A0BC8 800A1018  */  .asciz  "play ID: %d\n"
                        .balign 4
/* 0A0BD8 800A1028  */  .asciz  "request to slot: ID: %d\n"
                        .balign 4

glabel D_800A1044
/* 0A0BF4 800A1044  */  .asciz  "ACT_NONE"
                        .balign 4

glabel D_800A1050
/* 0A0C00 800A1050  */  .asciz  "ACT_INTER"
                        .balign 4

glabel D_800A105C
/* 0A0C0C 800A105C  */  .asciz  "ACT_END"
                        .balign 4

glabel D_800A1064
/* 0A0C14 800A1064  */  .asciz  "変。"
                        .balign 4
/* 0A0C1C 800A106C  */  .asciz  "actSetNext:%s\n"
                        .balign 4
/* 0A0C2C 800A107C  */  .asciz  "next:%s\n"
                        .balign 4
/* 0A0C38 800A1088  */  .asciz  "Invalid action table.\n actIdx(%d) != %d\n"
                        .balign 4
/* 0A0C64 800A10B4  */  .asciz  " action:%s\n"
                        .balign 4

glabel D_800A10C0
/* 0A0C70 800A10C0 3A83126F */  .float  0.0010000000474974513

glabel D_800A10C4
/* 0A0C74 800A10C4 BA83126F */  .float  -0.0010000000474974513

glabel D_800A10C8
/* 0A0C78 800A10C8 3F99999A */  .float  1.2000000476837158

glabel D_800A10CC
/* 0A0C7C 800A10CC 3E4CCCCD */  .float  0.20000000298023224

glabel _string_800A10D0
/* 0A0C80 800A10D0  */  .asciz  "あぐら"
                        .balign 4
/* 0A0C88 800A10D8  */  .asciz  "あきれ"
                        .balign 4
/* 0A0C90 800A10E0  */  .asciz  "大怒り"
                        .balign 4
/* 0A0C98 800A10E8  */  .asciz  "中怒り"
                        .balign 4
/* 0A0CA0 800A10F0  */  .asciz  "けいれい"
                        .balign 4
/* 0A0CAC 800A10FC  */  .asciz  "足踏み"
                        .balign 4
/* 0A0CB4 800A1104  */  .asciz  "足を振る"
                        .balign 4
/* 0A0CC0 800A1110  */  .asciz  "足トントンST"
                        .balign 4
/* 0A0CD0 800A1120  */  .asciz  "足トントンLP"
                        .balign 4
/* 0A0CE0 800A1130  */  .asciz  "足トントンED"
                        .balign 4
/* 0A0CF0 800A1140  */  .asciz  "あわてる"
                        .balign 4
/* 0A0CFC 800A114C  */  .asciz  "飛び後ろ向き"
                        .balign 4
/* 0A0D0C 800A115C  */  .asciz  "バレエ"
                        .balign 4
/* 0A0D14 800A1164  */  .asciz  "びっくり"
                        .balign 4
/* 0A0D20 800A1170  */  .asciz  "ふてくされ"
                        .balign 4
/* 0A0D2C 800A117C  */  .asciz  "ばいばい"
                        .balign 4
/* 0A0D38 800A1188  */  .asciz  "ちぇ"
                        .balign 4
/* 0A0D40 800A1190  */  .asciz  "注意"
                        .balign 4
/* 0A0D48 800A1198  */  .asciz  "かみなり"
                        .balign 4
/* 0A0D54 800A11A4  */  .asciz  "かみなり失敗"
                        .balign 4
/* 0A0D64 800A11B4  */  .asciz  "１０万ボルト"
                        .balign 4
/* 0A0D74 800A11C4  */  .asciz  "１０万ボルト失敗"
                        .balign 4
/* 0A0D88 800A11D8  */  .asciz  "電気ショック"
                        .balign 4
/* 0A0D98 800A11E8  */  .asciz  "電気ショック失敗"
                        .balign 4
/* 0A0DAC 800A11FC  */  .asciz  "食べる"
                        .balign 4
/* 0A0DB4 800A1204  */  .asciz  "絵を描くＳＴ"
                        .balign 4
/* 0A0DC4 800A1214  */  .asciz  "絵を描くＬＰ"
                        .balign 4
/* 0A0DD4 800A1224  */  .asciz  "絵を描くＥＤ"
                        .balign 4
/* 0A0DE4 800A1234  */  .asciz  "絵を描くＥＤ下がる"
                        .balign 4
/* 0A0DF8 800A1248  */  .asciz  "絵を描き見上げる"
                        .balign 4
/* 0A0E0C 800A125C  */  .asciz  "絵を見せる"
                        .balign 4
/* 0A0E18 800A1268  */  .asciz  "ふらふら"
                        .balign 4
/* 0A0E24 800A1274  */  .asciz  "顔振り向き"
                        .balign 4
/* 0A0E30 800A1280  */  .asciz  "顔振り向き左"
                        .balign 4
/* 0A0E40 800A1290  */  .asciz  "顔振り向き右"
                        .balign 4
/* 0A0E50 800A12A0  */  .asciz  "ふるえ"
                        .balign 4
/* 0A0E58 800A12A8  */  .asciz  "がっくりＭ"
                        .balign 4
/* 0A0E64 800A12B4  */  .asciz  "がっくりＳ"
                        .balign 4
/* 0A0E70 800A12C0  */  .asciz  "中喜び"
                        .balign 4
/* 0A0E78 800A12C8  */  .asciz  "小喜び"
                        .balign 4
/* 0A0E80 800A12D0  */  .asciz  "呼ぶ"
                        .balign 4
/* 0A0E88 800A12D8  */  .asciz  "ごそごそ"
                        .balign 4
/* 0A0E94 800A12E4  */  .asciz  "ごそ出しＳＴ"
                        .balign 4
/* 0A0EA4 800A12F4  */  .asciz  "ごそ出しＥＤ"
                        .balign 4
/* 0A0EB4 800A1304  */  .asciz  "ハーモニカ"
                        .balign 4
/* 0A0EC0 800A1310  */  .asciz  "はずれ"
                        .balign 4
/* 0A0EC8 800A1318  */  .asciz  "喜び頭振り"
                        .balign 4
/* 0A0ED4 800A1324  */  .asciz  "頭振り"
                        .balign 4
/* 0A0EDC 800A132C  */  .asciz  "こんにちは"
                        .balign 4
/* 0A0EE8 800A1338  */  .asciz  "おしり振り"
                        .balign 4
/* 0A0EF4 800A1344  */  .asciz  "拾う"
                        .balign 4
/* 0A0EFC 800A134C  */  .asciz  "拾うふり"
                        .balign 4
/* 0A0F08 800A1358  */  .asciz  "行こう！"
                        .balign 4
/* 0A0F14 800A1364  */  .asciz  "いらない投げ２"
                        .balign 4
/* 0A0F24 800A1374  */  .asciz  "いらない投げ"
                        .balign 4
/* 0A0F34 800A1384  */  .asciz  "いやぁん"
                        .balign 4
/* 0A0F40 800A1390  */  .asciz  "５０ｃｍジャンプ"
                        .balign 4
/* 0A0F54 800A13A4  */  .asciz  "跳ね"
                        .balign 4
/* 0A0F5C 800A13AC  */  .asciz  "前ジャンプ始め"
                        .balign 4
/* 0A0F6C 800A13BC  */  .asciz  "前ジャンプループ"
                        .balign 4
/* 0A0F80 800A13D0  */  .asciz  "前ジャンプ着地"
                        .balign 4
/* 0A0F90 800A13E0  */  .asciz  "前ジャンプ衝突"
                        .balign 4
/* 0A0FA0 800A13F0  */  .asciz  "前ジャンプ墜落中"
                        .balign 4
/* 0A0FB4 800A1404  */  .asciz  "前ジャンプ墜落着地"
                        .balign 4
/* 0A0FC8 800A1418  */  .asciz  "前ジャンプ墜落失神"
                        .balign 4
/* 0A0FDC 800A142C  */  .asciz  "前ジャンプ墜落起きる"
                        .balign 4
/* 0A0FF4 800A1444  */  .asciz  "じょうろ"
                        .balign 4
/* 0A1000 800A1450  */  .asciz  "かかげるＳＴ"
                        .balign 4
/* 0A1010 800A1460  */  .asciz  "かかげるＬＰ"
                        .balign 4
/* 0A1020 800A1470  */  .asciz  "かかげるＥＤ"
                        .balign 4
/* 0A1030 800A1480  */  .asciz  "かかげ上ＳＴ"
                        .balign 4
/* 0A1040 800A1490  */  .asciz  "かかげ上ＬＰ"
                        .balign 4
/* 0A1050 800A14A0  */  .asciz  "かかげ上ＥＤ"
                        .balign 4
/* 0A1060 800A14B0  */  .asciz  "構えＬ"
                        .balign 4
/* 0A1068 800A14B8  */  .asciz  "構え"
                        .balign 4
/* 0A1070 800A14C0  */  .asciz  "構えENDING"
                        .balign 4
/* 0A107C 800A14CC  */  .asciz  "横揺れ構え"
                        .balign 4
/* 0A1088 800A14D8  */  .asciz  "かしげ（疑問）"
                        .balign 4
/* 0A1098 800A14E8  */  .asciz  "かしげ２"
                        .balign 4
/* 0A10A4 800A14F4  */  .asciz  "数える"
                        .balign 4
/* 0A10AC 800A14FC  */  .asciz  "きく"
                        .balign 4
/* 0A10B4 800A1504  */  .asciz  "こばか"
                        .balign 4
/* 0A10BC 800A150C  */  .asciz  "これこれ"
                        .balign 4
/* 0A10C8 800A1518  */  .asciz  "くれ"
                        .balign 4
/* 0A10D0 800A1520  */  .asciz  "くれくれ"
                        .balign 4
/* 0A10DC 800A152C  */  .asciz  "くさぶえ"
                        .balign 4
/* 0A10E8 800A1538  */  .asciz  "くしゃみ"
                        .balign 4
/* 0A10F4 800A1544  */  .asciz  "きょろきょろ"
                        .balign 4
/* 0A1104 800A1554  */  .asciz  "前だしＳＴ"
                        .balign 4
/* 0A1110 800A1560  */  .asciz  "前だしＬＰ"
                        .balign 4
/* 0A111C 800A156C  */  .asciz  "前だしＬＰ開始"
                        .balign 4
/* 0A112C 800A157C  */  .asciz  "前だしＥＤ"
                        .balign 4
/* 0A1138 800A1588  */  .asciz  "めまい"
                        .balign 4
/* 0A1140 800A1590  */  .asciz  "見上げ始め"
                        .balign 4
/* 0A114C 800A159C  */  .asciz  "見上げ途中"
                        .balign 4
/* 0A1158 800A15A8  */  .asciz  "見上げ終了"
                        .balign 4
/* 0A1164 800A15B4  */  .asciz  "見上げ短始め"
                        .balign 4
/* 0A1174 800A15C4  */  .asciz  "もじもじ"
                        .balign 4
/* 0A1180 800A15D0  */  .asciz  "むかつき"
                        .balign 4
/* 0A118C 800A15DC  */  .asciz  "無心"
                        .balign 4
/* 0A1194 800A15E4  */  .asciz  "無視"
                        .balign 4
/* 0A119C 800A15EC  */  .asciz  "投げる"
                        .balign 4
/* 0A11A4 800A15F4  */  .asciz  "弱く投げる"
                        .balign 4
/* 0A11B0 800A1600  */  .asciz  "プレイヤーに投げる"
                        .balign 4
/* 0A11C4 800A1614  */  .asciz  "目標に投げる"
                        .balign 4
/* 0A11D4 800A1624  */  .asciz  "なやむ"
                        .balign 4
/* 0A11DC 800A162C  */  .asciz  "なやむ（手なし）"
                        .balign 4
/* 0A11F0 800A1640  */  .asciz  "つまずき始め"
                        .balign 4
/* 0A1200 800A1650  */  .asciz  "つまずきループ"
                        .balign 4
/* 0A1210 800A1660  */  .asciz  "つまずき終わり"
                        .balign 4
/* 0A1220 800A1670  */  .asciz  "歩き→つまずき始め"
                        .balign 4
/* 0A1234 800A1684  */  .asciz  "上を向く"
                        .balign 4
/* 0A1240 800A1690  */  .asciz  "匂い"
                        .balign 4
/* 0A1248 800A1698  */  .asciz  "ＮＯ"
                        .balign 4
/* 0A1250 800A16A0  */  .asciz  "のりだす"
                        .balign 4
/* 0A125C 800A16AC  */  .asciz  "のせる"
                        .balign 4
/* 0A1264 800A16B4  */  .asciz  "ひっこぬくＳＴ"
                        .balign 4
/* 0A1274 800A16C4  */  .asciz  "ひっこぬくＬＰ"
                        .balign 4
/* 0A1284 800A16D4  */  .asciz  "ひっこぬけた！"
                        .balign 4
/* 0A1294 800A16E4  */  .asciz  "ひっこぬけない;;"
                        .balign 4
/* 0A12A8 800A16F8  */  .asciz  "宝箱ひっこぬくＳＴ"
                        .balign 4
/* 0A12BC 800A170C  */  .asciz  "宝箱ひっこぬく"
                        .balign 4
/* 0A12CC 800A171C  */  .asciz  "つりＳＴ"
                        .balign 4
/* 0A12D8 800A1728  */  .asciz  "つりＬＰ"
                        .balign 4
/* 0A12E4 800A1734  */  .asciz  "つれた！"
                        .balign 4
/* 0A12F0 800A1740  */  .asciz  "つりキャスト"
                        .balign 4
/* 0A1300 800A1750  */  .asciz  "溺れ始め"
                        .balign 4
/* 0A130C 800A175C  */  .asciz  "溺れる途中"
                        .balign 4
/* 0A1318 800A1768  */  .asciz  "頭ぺしぺし"
                        .balign 4
/* 0A1324 800A1774  */  .asciz  "置く"
                        .balign 4
/* 0A132C 800A177C  */  .asciz  "押すＳＴ"
                        .balign 4
/* 0A1338 800A1788  */  .asciz  "押すＬＰ"
                        .balign 4
/* 0A1344 800A1794  */  .asciz  "押すＥＤ"
                        .balign 4
/* 0A1350 800A17A0  */  .asciz  "ピースサイン"
                        .balign 4
/* 0A1360 800A17B0  */  .asciz  "らっぱ"
                        .balign 4
/* 0A1368 800A17B8  */  .asciz  "ほんとに？"
                        .balign 4
/* 0A1374 800A17C4  */  .asciz  "４走始め"
                        .balign 4
/* 0A1380 800A17D0  */  .asciz  "４走ループ"
                        .balign 4
/* 0A138C 800A17DC  */  .asciz  "４走終わり"
                        .balign 4
/* 0A1398 800A17E8  */  .asciz  "かえるとび"
                        .balign 4
/* 0A13A4 800A17F4  */  .asciz  "せき"
                        .balign 4
/* 0A13AC 800A17FC  */  .asciz  "寝始め"
                        .balign 4
/* 0A13B4 800A1804  */  .asciz  "寝途中"
                        .balign 4
/* 0A13BC 800A180C  */  .asciz  "寝終わり起きる"
                        .balign 4
/* 0A13CC 800A181C  */  .asciz  "寝終わり座る"
                        .balign 4
/* 0A13DC 800A182C  */  .asciz  "座りはじめ"
                        .balign 4
/* 0A13E8 800A1838  */  .asciz  "座り状態"
                        .balign 4
/* 0A13F4 800A1844  */  .asciz  "座りみみかき"
                        .balign 4
/* 0A1404 800A1854  */  .asciz  "ソッポ向き始め"
                        .balign 4
/* 0A1414 800A1864  */  .asciz  "ソッポ向き終わり"
                        .balign 4
/* 0A1428 800A1878  */  .asciz  "スイカかまえ"
                        .balign 4
/* 0A1438 800A1888  */  .asciz  "スイカあしぶみ"
                        .balign 4
/* 0A1448 800A1898  */  .asciz  "スイカ歩き"
                        .balign 4
/* 0A1454 800A18A4  */  .asciz  "スイカわりＳＴ"
                        .balign 4
/* 0A1464 800A18B4  */  .asciz  "スイカわりＬＰ"
                        .balign 4
/* 0A1474 800A18C4  */  .asciz  "スイカわりＥＤ"
                        .balign 4
/* 0A1484 800A18D4  */  .asciz  "スイカわりやめる"
                        .balign 4
/* 0A1498 800A18E8  */  .asciz  "すてき"
                        .balign 4
/* 0A14A0 800A18F0  */  .asciz  "頭かきかき"
                        .balign 4
/* 0A14AC 800A18FC  */  .asciz  "得意"
                        .balign 4
/* 0A14B4 800A1904  */  .asciz  "とろうジャンプ"
                        .balign 4
/* 0A14C4 800A1914  */  .asciz  "昇龍ジャンプ"
                        .balign 4
/* 0A14D4 800A1924  */  .asciz  "つつく"
                        .balign 4
/* 0A14DC 800A192C  */  .asciz  "ＴＶつける"
                        .balign 4
/* 0A14E8 800A1938  */  .asciz  "うなだれＳＴ"
                        .balign 4
/* 0A14F8 800A1948  */  .asciz  "うなだれＬＰ"
                        .balign 4
/* 0A1508 800A1958  */  .asciz  "うなだれＥＤ"
                        .balign 4
/* 0A1518 800A1968  */  .asciz  "うんうん"
                        .balign 4
/* 0A1524 800A1974  */  .asciz  "声大きいよ"
                        .balign 4
/* 0A1530 800A1980  */  .asciz  "声小さいよ"
                        .balign 4
/* 0A153C 800A198C  */  .asciz  "歩き始め"
                        .balign 4
/* 0A1548 800A1998  */  .asciz  "歩き途中"
                        .balign 4
/* 0A1554 800A19A4  */  .asciz  "歩き終わり"
                        .balign 4
/* 0A1560 800A19B0  */  .asciz  "グッタリして歩く"
                        .balign 4
/* 0A1574 800A19C4  */  .asciz  "中笑い"
                        .balign 4
/* 0A157C 800A19CC  */  .asciz  "小笑い"
                        .balign 4
/* 0A1584 800A19D4  */  .asciz  "渡し始め"
                        .balign 4
/* 0A1590 800A19E0  */  .asciz  "渡し中"
                        .balign 4
/* 0A1598 800A19E8  */  .asciz  "渡し終り"
                        .balign 4
/* 0A15A4 800A19F4  */  .asciz  "渡し始め２"
                        .balign 4
/* 0A15B0 800A1A00  */  .asciz  "渡し中２"
                        .balign 4
/* 0A15BC 800A1A0C  */  .asciz  "傾げ左"
                        .balign 4
/* 0A15C4 800A1A14  */  .asciz  "傾げ右左"
                        .balign 4
/* 0A15D0 800A1A20  */  .asciz  "ＹＥＳ"
                        .balign 4
/* 0A15D8 800A1A28  */  .asciz  "よしよし"
                        .balign 4
/* 0A15E4 800A1A34  */  .asciz  "四つん這い始め"
                        .balign 4
/* 0A15F4 800A1A44  */  .asciz  "威嚇始め"
                        .balign 4
/* 0A1600 800A1A50  */  .asciz  "威嚇ループ"
                        .balign 4
/* 0A160C 800A1A5C  */  .asciz  "威嚇終わり"
                        .balign 4
/* 0A1618 800A1A68  */  .asciz  "四つん這い終了"
                        .balign 4
/* 0A1628 800A1A78  */  .asciz  "目的方向へ回転"
                        .balign 4
/* 0A1638 800A1A88  */  .asciz  "目的方向へ回転／絵見せる"
                        .balign 4
/* 0A1654 800A1AA4  */  .asciz  "目的方向へ回転／構え横"
                        .balign 4
/* 0A166C 800A1ABC  */  .asciz  "目的方向へ回転位置調整"
                        .balign 4
/* 0A1684 800A1AD4  */  .asciz  "目的方向へ飛んで回転"
                        .balign 4
/* 0A169C 800A1AEC  */  .asciz  "目的方向へ飛んで回転位置調整"
                        .balign 4
/* 0A16BC 800A1B0C  */  .asciz  "act_p_right_n_m"
                        .balign 4
/* 0A16CC 800A1B1C  */  .asciz  "act_p_right_n_m_pa"
                        .balign 4
/* 0A16E0 800A1B30  */  .asciz  "目的地へ歩く"
                        .balign 4
/* 0A16F0 800A1B40  */  .asciz  "walk2aimL"
                        .balign 4
/* 0A16FC 800A1B4C  */  .asciz  "walk2aimE"
                        .balign 4
/* 0A1708 800A1B58  */  .asciz  "目的地へよちよち歩く"
                        .balign 4
/* 0A1720 800A1B70  */  .asciz  "足踏みしてあとずさる"
                        .balign 4
/* 0A1738 800A1B88  */  .asciz  "足踏みしてあとずさるFAST"
                        .balign 4
/* 0A1754 800A1BA4  */  .asciz  "目的地へ４足走り"
                        .balign 4
/* 0A1768 800A1BB8  */  .asciz  "run2aimL"
                        .balign 4
/* 0A1774 800A1BC4  */  .asciz  "run2aimE"
                        .balign 4
/* 0A1780 800A1BD0  */  .asciz  "目的地へ４足走り"
                        .balign 4
/* 0A1794 800A1BE4  */  .asciz  "run2aimL"
                        .balign 4
/* 0A17A0 800A1BF0  */  .asciz  "run2aimE"
                        .balign 4
/* 0A17AC 800A1BFC  */  .asciz  "HELLOのAFC"
                        .balign 4
/* 0A17B8 800A1C08  */  .asciz  "フシギダネ構え"
                        .balign 4
/* 0A17C8 800A1C18  */  .asciz  "フシギダネ食べる"
                        .balign 4
/* 0A17DC 800A1C2C  */  .asciz  "フシギダネ歩きＳＴ"
                        .balign 4
/* 0A17F0 800A1C40  */  .asciz  "フシギダネ歩きＬＰ"
                        .balign 4
/* 0A1804 800A1C54  */  .asciz  "フシギダネ歩きＥＤ"
                        .balign 4
/* 0A1818 800A1C68  */  .asciz  "フシギバナ構え"
                        .balign 4
/* 0A1828 800A1C78  */  .asciz  "フシギバナ口あけ"
                        .balign 4
/* 0A183C 800A1C8C  */  .asciz  "フシギバナ寝"
                        .balign 4
/* 0A184C 800A1C9C  */  .asciz  "二足歩行（ゼニガメ）構え"
                        .balign 4
/* 0A1868 800A1CB8  */  .asciz  "二足歩行（ゼニガメ）静止"
                        .balign 4
/* 0A1884 800A1CD4  */  .asciz  "二足歩行目的地を向く"
                        .balign 4
/* 0A189C 800A1CEC  */  .asciz  "あいさつ（ゼニガメ）"
                        .balign 4
/* 0A18B4 800A1D04  */  .asciz  "どこでもあいさつ（ゼニガメ）"
                        .balign 4
/* 0A18D4 800A1D24  */  .asciz  "耳打ち（ゼニガメ）"
                        .balign 4
/* 0A18E8 800A1D38  */  .asciz  "食べる（ヒトカゲ）"
                        .balign 4
/* 0A18FC 800A1D4C  */  .asciz  "食べる（ゼニガメ）"
                        .balign 4
/* 0A1910 800A1D60  */  .asciz  "まずい（ゼニガメ）"
                        .balign 4
/* 0A1924 800A1D74  */  .asciz  "二足走るＳＴ"
                        .balign 4
/* 0A1934 800A1D84  */  .asciz  "TZ_RUN2AIM_BLP"
                        .balign 4
/* 0A1944 800A1D94  */  .asciz  "TZ_RUN2AIM_CED"
                        .balign 4
/* 0A1954 800A1DA4  */  .asciz  "ナゾノクサ目的地へ走る"
                        .balign 4
/* 0A196C 800A1DBC  */  .asciz  "N_RUN2AIM_BLP"
                        .balign 4
/* 0A197C 800A1DCC  */  .asciz  "N_RUN2AIM_CED"
                        .balign 4
/* 0A198C 800A1DDC  */  .asciz  "クサイハナ目的地へ走る"
                        .balign 4
/* 0A19A4 800A1DF4  */  .asciz  "KUS_RUN2AIM_BLP"
                        .balign 4
/* 0A19B4 800A1E04  */  .asciz  "KUS_RUN2AIM_CED"
                        .balign 4
/* 0A19C4 800A1E14  */  .asciz  "ナゾノクサ跳び上がる"
                        .balign 4
/* 0A19DC 800A1E2C  */  .asciz  "二足歩行（ニョロモ）歩くＳＴ"
                        .balign 4
/* 0A19FC 800A1E4C  */  .asciz  "二足歩行（ニョロモ）歩くＬＰ"
                        .balign 4
/* 0A1A1C 800A1E6C  */  .asciz  "二足歩行（ニョロモ）歩くＥＤ"
                        .balign 4
/* 0A1A3C 800A1E8C  */  .asciz  "二足歩行（ニョロモ）うなずき"
                        .balign 4
/* 0A1A5C 800A1EAC  */  .asciz  "二足歩行（ニョロモ）浮く"
                        .balign 4
/* 0A1A78 800A1EC8  */  .asciz  "二足歩行どこでも浮く"
                        .balign 4
/* 0A1A90 800A1EE0  */  .asciz  "二足歩行（ニョロモ）水に入る"
                        .balign 4
/* 0A1AB0 800A1F00  */  .asciz  "二足歩行（ニョロモ）水から出る"
                        .balign 4
/* 0A1AD0 800A1F20  */  .asciz  "ニョロモ跳び上がって目標を向く"
                        .balign 4
/* 0A1AF0 800A1F40  */  .asciz  "ゴースト飛ぶ"
                        .balign 4
/* 0A1B00 800A1F50  */  .asciz  "ゴースト構え"
                        .balign 4
/* 0A1B10 800A1F60  */  .asciz  "ゴースト脅かし"
                        .balign 4
/* 0A1B20 800A1F70  */  .asciz  "ゴーストｗｈｙ？"
                        .balign 4
/* 0A1B34 800A1F84  */  .asciz  "ゴーストやられ"
                        .balign 4
/* 0A1B44 800A1F94  */  .asciz  "バタフリー構え"
                        .balign 4
/* 0A1B54 800A1FA4  */  .asciz  "バタフリー飛ぶ"
                        .balign 4
/* 0A1B64 800A1FB4  */  .asciz  "バタフリー遅く飛ぶ"
                        .balign 4
/* 0A1B78 800A1FC8  */  .asciz  "バタフリー空中で目的地を向く"
                        .balign 4
/* 0A1B98 800A1FE8  */  .asciz  "バタフリー目的地へ移動"
                        .balign 4
/* 0A1BB0 800A2000  */  .asciz  "キャタピーかまえ"
                        .balign 4
/* 0A1BC4 800A2014  */  .asciz  "キャタピーその場飛び"
                        .balign 4
/* 0A1BDC 800A202C  */  .asciz  "キャタピー目的地を向く"
                        .balign 4
/* 0A1BF4 800A2044  */  .asciz  "キャタピーまるまる"
                        .balign 4
/* 0A1C08 800A2058  */  .asciz  "キャタピー歩く"
                        .balign 4
/* 0A1C18 800A2068  */  .asciz  "キャタピー目的地へ歩く"
                        .balign 4
/* 0A1C30 800A2080  */  .asciz  "キャタピー走る"
                        .balign 4
/* 0A1C40 800A2090  */  .asciz  "キャタピー目的地へ走る"
                        .balign 4
/* 0A1C58 800A20A8  */  .asciz  "キャタピーダッシュ"
                        .balign 4
/* 0A1C6C 800A20BC  */  .asciz  "キャタピー歩き終わり"
                        .balign 4
/* 0A1C84 800A20D4  */  .asciz  "キャタピーたべる"
                        .balign 4
/* 0A1C98 800A20E8  */  .asciz  "キャタピー寝る"
                        .balign 4
/* 0A1CA8 800A20F8  */  .asciz  "ケーシーかまえ"
                        .balign 4
/* 0A1CB8 800A2108  */  .asciz  "かに。およぐ"
                        .balign 4
/* 0A1CC8 800A2118  */  .asciz  "くらげ。およぐ"
                        .balign 4
/* 0A1CD8 800A2128  */  .asciz  "さかな。およぐ"
                        .balign 4
/* 0A1CE8 800A2138  */  .asciz  "そのた。およぐ"
                        .balign 4
/* 0A1CF8 800A2148  */  .asciz  "かに。のたうつ"
                        .balign 4
/* 0A1D08 800A2158  */  .asciz  "くらげ。のたうつ"
                        .balign 4
/* 0A1D1C 800A216C  */  .asciz  "さかな。のたうつ"
                        .balign 4
/* 0A1D30 800A2180  */  .asciz  "かに。のたうつ"
                        .balign 4
/* 0A1D40 800A2190  */  .asciz  "くらげ。のたうつ"
                        .balign 4
/* 0A1D54 800A21A4  */  .asciz  "さかな。のたうつ"
                        .balign 4
/* 0A1D68 800A21B8  */  .asciz  "ポケモン目的地へ歩く"
                        .balign 4
/* 0A1D80 800A21D0  */  .asciz  "ポケモンゆっくり歩く"
                        .balign 4
/* 0A1D98 800A21E8  */  .asciz  "ポケモンはやく歩く"
                        .balign 4
/* 0A1DAC 800A21FC  */  .asciz  "ポケモンころがる"
                        .balign 4
/* 0A1DC0 800A2210  */  .asciz  "ポケモンその場飛び"
                        .balign 4
/* 0A1DD4 800A2224  */  .asciz  "ポケモンその場飛びEND"
                        .balign 4
/* 0A1DEC 800A223C  */  .asciz  "ポケモンその場回転"
                        .balign 4
/* 0A1E00 800A2250  */  .asciz  "ポケモン目的地を向く"
                        .balign 4
/* 0A1E18 800A2268  */  .asciz  "ポケモン地面の中で目的地を向く"
                        .balign 4
/* 0A1E38 800A2288  */  .asciz  "ポケモン地面の中で素早く目的地を向く"
                        .balign 4
/* 0A1E60 800A22B0  */  .asciz  "ポケモン地面の中で瞬間で目的地を向く"
                        .balign 4
/* 0A1E88 800A22D8  */  .asciz  "ポケモン地面に潜る"
                        .balign 4
/* 0A1E9C 800A22EC  */  .asciz  "ポケモン潜ってかまえ"
                        .balign 4
/* 0A1EB4 800A2304  */  .asciz  "ポケモン目的地へ移動"
                        .balign 4
/* 0A1ECC 800A231C  */  .asciz  "ポケモンかまえ潜"
                        .balign 4
/* 0A1EE0 800A2330  */  .asciz  "ポケモンびよん"
                        .balign 4
/* 0A1EF0 800A2340  */  .asciz  "ポケモンどこでもびよん"
                        .balign 4
/* 0A1F08 800A2358  */  .asciz  "ポケモンどこでもびよんびよん"
                        .balign 4
/* 0A1F28 800A2378  */  .asciz  "ポケモンアイテムを周りにばらまく"
                        .balign 4
/* 0A1F4C 800A239C  */  .asciz  "宝箱潜ってかまえ"
                        .balign 4
/* 0A1F60 800A23B0  */  .asciz  "宝箱かまえ潜傾き"
                        .balign 4
/* 0A1F74 800A23C4  */  .asciz  "宝箱埋まり飛び"
                        .balign 4
/* 0A1F84 800A23D4  */  .asciz  "宝箱埋まり飛びEND"
                        .balign 4
/* 0A1F98 800A23E8  */  .asciz  "宝箱跳び上がる"
                        .balign 4
/* 0A1FA8 800A23F8  */  .asciz  "宝箱開く"
                        .balign 4
/* 0A1FB4 800A2404  */  .asciz  "宝箱RESET"
                        .balign 4
/* 0A1FC0 800A2410  */  .asciz  "宝箱その場煙"
                        .balign 4
/* 0A1FD0 800A2420  */  .asciz  "つりざおしなる"
                        .balign 4
/* 0A1FE0 800A2430  */  .asciz  "構え→立ち"
                        .balign 4
/* 0A1FEC 800A243C  */  .asciz  "立ち→構え"
                        .balign 4
/* 0A1FF8 800A2448  */  .asciz  "構え→座り"
                        .balign 4
/* 0A2004 800A2454  */  .asciz  "座り→構え"
                        .balign 4
/* 0A2010 800A2460  */  .asciz  "構え→４走"
                        .balign 4
/* 0A201C 800A246C  */  .asciz  "４走→構え"
                        .balign 4
/* 0A2028 800A2478  */  .asciz  "４走→歩き"
                        .balign 4
/* 0A2034 800A2484  */  .asciz  "歩き→４走"
                        .balign 4
/* 0A2040 800A2490  */  .asciz  "構え→歩き"
                        .balign 4
/* 0A204C 800A249C  */  .asciz  "歩き→構え"
                        .balign 4
/* 0A2058 800A24A8  */  .asciz  "４走→ジャンプ"
                        .balign 4
/* 0A2068 800A24B8  */  .asciz  "４走→ジャンプ墜落"
                        .balign 4
/* 0A207C 800A24CC  */  .asciz  "構え→すいか構え"
                        .balign 4
/* 0A2090 800A24E0  */  .asciz  "すいか構え→構え"
                        .balign 4
/* 0A20A4 800A24F4  */  .asciz  "ピカ構→ナゾ構"
                        .balign 4
/* 0A20B4 800A2504  */  .asciz  "バナ構え→寝"
                        .balign 4
/* 0A20C4 800A2514  */  .asciz  "バナ寝→構え"
                        .balign 4
/* 0A20D4 800A2524  */  .asciz  "キャタピー構え→まる"
                        .balign 4
/* 0A20EC 800A253C  */  .asciz  "キャタピーまる→構え"
                        .balign 4
/* 0A2104 800A2554  */  .asciz  "キャタピー構え→寝"
                        .balign 4
/* 0A2118 800A2568  */  .asciz  "キャタピー寝→構え"
                        .balign 4
/* 0A212C 800A257C  */  .asciz  "止まる"
                        .balign 4
/* 0A2134 800A2584  */  .asciz  "P_PIKACHU(%f,%f,%f)\n"
                        .balign 4
/* 0A214C 800A259C  */  .asciz  "G_PIKACHU(%f,%f,%f)\n"
                        .balign 4

glabel D_800A25B4
/* 0A2164 800A25B4 3FD9999A */  .float  1.7000000476837158

glabel D_800A25B8
/* 0A2168 800A25B8 3F666666 */  .float  0.8999999761581421

glabel D_800A25BC
/* 0A216C 800A25BC 3FCCCCCD */  .float  1.600000023841858

glabel D_800A25C0
/* 0A2170 800A25C0 3FA66666 */  .float  1.2999999523162842

glabel D_800A25C4
/* 0A2174 800A25C4 43E28000 */  .float  453.0

glabel D_800A25C8
/* 0A2178 800A25C8 40DE88CE */  .float  6.95419979095459

glabel D_800A25CC
/* 0A217C 800A25CC 453B8000 */  .float  3000.0

glabel D_800A25D0
/* 0A2180 800A25D0 BDCCCCCD */  .float  -0.10000000149011612

glabel D_800A25D4
/* 0A2184 800A25D4 43E28000 */  .float  453.0

glabel D_800A25D8
/* 0A2188 800A25D8 3D4CCCCD */  .float  0.05000000074505806

glabel D_800A25DC
/* 0A218C 800A25DC 3DA3D70A */  .float  0.07999999821186066

glabel D_800A25E0
/* 0A2190 800A25E0 4076700000000000 */  .double  359.0

glabel D_800A25E8
/* 0A2198 800A25E8 3D23D70A */  .float  0.03999999910593033
/* 0A219C 800A25EC 00000000 */  .float  0.0

glabel D_800A25F0
/* 0A21A0 800A25F0 4086780000000000 */  .double  719.0

glabel D_800A25F8
/* 0A21A8 800A25F8 3CA3D70A */  .float  0.019999999552965164

glabel D_800A25FC
/* 0A21AC 800A25FC 3A83126F */  .float  0.0010000000474974513

glabel D_800A2600
/* 0A21B0 800A2600 3C23D70A */  .float  0.009999999776482582
/* 0A21B4 800A2604 00000000 */  .float  0.0

glabel D_800A2608
/* 0A21B8 800A2608 3F9EB851EB851EB8 */  .double  0.03

glabel D_800A2610
/* 0A21C0 800A2610 3FB999999999999A */  .double  0.1
/* 0A21C8 800A2618 0000000000000000 */  .double  0.0
/* 0A21D0 800A2620 6572726F723A2070 */  .double  4.784135486508589e+180
/* 0A21D8 800A2628 6C6179536B69743A */  .double  1.1765150971774546e+214
/* 0A21E0 800A2630 20496C6C6567616C */  .double  3.792346836440232e-153
/* 0A21E8 800A2638 20736B6974547970 */  .double  2.3174052561764844e-152
/* 0A21F0 800A2640 65282564290A0000 */  .double  1.9569228541737144e+179
/* 0A21F8 800A2648 0000000000000000 */  .double  0.0
/* 0A2200 800A2650 446574656374696F */  .double  3.166150758244674e+21
/* 0A2208 800A2658 6E20696D706F7373 */  .double  2.966222474420555e+222
/* 0A2210 800A2660 69626C6500000000 */  .double  4.4069416915161485e+199

glabel D_800A2668
/* 0A2218 800A2668 3CA3D70A */  .float  0.019999999552965164
/* 0A221C 800A266C 00000000 */  .float  0.0

glabel D_800A2670
/* 0A2220 800A2670 00000000 */  .word  0x00000000
/* 0A2224 800A2674 57494E44 */  .word  0x57494E44
/* 0A2228 800A2678 4F575F54 */  .word  0x4F575F54
/* 0A222C 800A267C 59504520 */  .word  0x59504520
/* 0A2230 800A2680 4552524F */  .word  0x4552524F
/* 0A2234 800A2684 52210A00 */  .word  0x52210A00

glabel D_800A2688
/* 0A2238 800A2688 0A000000 */  .word  0x0A000000

glabel D_800A268C
/* 0A223C 800A268C 00000000 */  .word  0x00000000

glabel D_800A2690
/* 0A2240 800A2690 F00F0000 */  .word  0xF00F0000

glabel D_800A2694
/* 0A2244 800A2694 3F59999A */  .float  0.8500000238418579
/* 0A2248 800A2698 00000000 */  .float  0.0
/* 0A224C 800A269C 00000000 */  .float  0.0
