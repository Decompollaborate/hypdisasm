.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A7900
/* 0A74B0 800A7900  */  .asciz  "c_kama"
                        .balign 4

glabel D_800A7908
/* 0A74B8 800A7908  */  .asciz  "c_kamamaru"
                        .balign 4

glabel D_800A7914
/* 0A74C4 800A7914  */  .asciz  "c_maru"
                        .balign 4

glabel D_800A791C
/* 0A74CC 800A791C  */  .asciz  "c_marukama"
                        .balign 4

glabel D_800A7928
/* 0A74D8 800A7928  */  .asciz  "c_sleep_ast"
                        .balign 4

glabel D_800A7934
/* 0A74E4 800A7934  */  .asciz  "c_sleep_blp"
                        .balign 4

glabel D_800A7940
/* 0A74F0 800A7940  */  .asciz  "c_sleep_ced"
                        .balign 4

glabel D_800A794C
/* 0A74FC 800A794C  */  .asciz  "c_taberu"
                        .balign 4

glabel D_800A7958
/* 0A7508 800A7958  */  .asciz  "doku_kama"
                        .balign 4

glabel D_800A7964
/* 0A7514 800A7964  */  .asciz  "doku_oyogu"
                        .balign 4

glabel D_800A7970
/* 0A7520 800A7970  */  .asciz  "ff_kama"
                        .balign 4

glabel D_800A7978
/* 0A7528 800A7978  */  .asciz  "ff_taberu"
                        .balign 4

glabel D_800A7984
/* 0A7534 800A7984  */  .asciz  "ff_walk_ast"
                        .balign 4

glabel D_800A7990
/* 0A7540 800A7990  */  .asciz  "ff_walk_blp"
                        .balign 4

glabel D_800A799C
/* 0A754C 800A799C  */  .asciz  "ff_walk_ced"
                        .balign 4

glabel D_800A79A8
/* 0A7558 800A79A8  */  .asciz  "ffus_kama"
                        .balign 4

glabel D_800A79B4
/* 0A7564 800A79B4  */  .asciz  "ffus_kuchiake"
                        .balign 4

glabel D_800A79C4
/* 0A7574 800A79C4  */  .asciz  "ffus_sleep_ast"
                        .balign 4

glabel D_800A79D4
/* 0A7584 800A79D4  */  .asciz  "ffus_sleep_blp"
                        .balign 4

glabel D_800A79E4
/* 0A7594 800A79E4  */  .asciz  "ffus_sleep_ced"
                        .balign 4

glabel D_800A79F4
/* 0A75A4 800A79F4  */  .asciz  "gho_kama"
                        .balign 4

glabel D_800A7A00
/* 0A75B0 800A7A00  */  .asciz  "gho_odokashi"
                        .balign 4

glabel D_800A7A10
/* 0A75C0 800A7A10  */  .asciz  "gho_why"
                        .balign 4

glabel D_800A7A18
/* 0A75C8 800A7A18  */  .asciz  "gho_yarare"
                        .balign 4

glabel D_800A7A24
/* 0A75D4 800A7A24  */  .asciz  "kingler_kama"
                        .balign 4

glabel D_800A7A34
/* 0A75E4 800A7A34  */  .asciz  "kingler_oyogu"
                        .balign 4

glabel D_800A7A44
/* 0A75F4 800A7A44  */  .asciz  "koi_kama"
                        .balign 4

glabel D_800A7A50
/* 0A7600 800A7A50  */  .asciz  "koi_oyogu"
                        .balign 4

glabel D_800A7A5C
/* 0A760C 800A7A5C  */  .asciz  "p_agura_n_m"
                        .balign 4

glabel D_800A7A68
/* 0A7618 800A7A68  */  .asciz  "p_akire_a_m"
                        .balign 4

glabel D_800A7A74
/* 0A7624 800A7A74  */  .asciz  "p_ang_i_l"
                        .balign 4

glabel D_800A7A80
/* 0A7630 800A7A80  */  .asciz  "p_ang_i_m"
                        .balign 4

glabel D_800A7A8C
/* 0A763C 800A7A8C  */  .asciz  "p_army_n_m"
                        .balign 4

glabel D_800A7A98
/* 0A7648 800A7A98  */  .asciz  "p_ashitonton_i_s_ast"
                        .balign 4

glabel D_800A7AB0
/* 0A7660 800A7AB0  */  .asciz  "p_ashitonton_i_s_blp"
                        .balign 4

glabel D_800A7AC8
/* 0A7678 800A7AC8  */  .asciz  "p_ashitonton_i_s_ced"
                        .balign 4

glabel D_800A7AE0
/* 0A7690 800A7AE0  */  .asciz  "p_asibumi_n_m"
                        .balign 4

glabel D_800A7AF0
/* 0A76A0 800A7AF0  */  .asciz  "p_asir_n_m"
                        .balign 4

glabel D_800A7AFC
/* 0A76AC 800A7AFC  */  .asciz  "p_awateru_n_m"
                        .balign 4

glabel D_800A7B0C
/* 0A76BC 800A7B0C  */  .asciz  "p_back_n_m"
                        .balign 4

glabel D_800A7B18
/* 0A76C8 800A7B18  */  .asciz  "p_ballet_n_m"
                        .balign 4

glabel D_800A7B28
/* 0A76D8 800A7B28  */  .asciz  "p_bikkuri_o_m"
                        .balign 4

glabel D_800A7B38
/* 0A76E8 800A7B38  */  .asciz  "p_boo_f_m"
                        .balign 4

glabel D_800A7B44
/* 0A76F4 800A7B44  */  .asciz  "p_bye_k_s"
                        .balign 4

glabel D_800A7B50
/* 0A7700 800A7B50  */  .asciz  "p_cye_f_m"
                        .balign 4

glabel D_800A7B5C
/* 0A770C 800A7B5C  */  .asciz  "p_cyuui_i_s"
                        .balign 4

glabel D_800A7B68
/* 0A7718 800A7B68  */  .asciz  "p_dengeki_n_m"
                        .balign 4

glabel D_800A7B78
/* 0A7728 800A7B78  */  .asciz  "p_dengekidame_n_m"
                        .balign 4

glabel D_800A7B8C
/* 0A773C 800A7B8C  */  .asciz  "p_dengekif_n_m"
                        .balign 4

glabel D_800A7B9C
/* 0A774C 800A7B9C  */  .asciz  "p_dengekifdame_n_m"
                        .balign 4

glabel D_800A7BB0
/* 0A7760 800A7BB0  */  .asciz  "p_denki_n_m"
                        .balign 4

glabel D_800A7BBC
/* 0A776C 800A7BBC  */  .asciz  "p_denkidame_n_m"
                        .balign 4

glabel D_800A7BCC
/* 0A777C 800A7BCC  */  .asciz  "p_eat_n_m"
                        .balign 4

glabel D_800A7BD8
/* 0A7788 800A7BD8  */  .asciz  "p_ekaku_n_m_ast"
                        .balign 4

glabel D_800A7BE8
/* 0A7798 800A7BE8  */  .asciz  "p_ekaku_n_m_blp"
                        .balign 4

glabel D_800A7BF8
/* 0A77A8 800A7BF8  */  .asciz  "p_ekaku_n_m_ced"
                        .balign 4

glabel D_800A7C08
/* 0A77B8 800A7C08  */  .asciz  "p_ekakustop_n_m"
                        .balign 4

glabel D_800A7C18
/* 0A77C8 800A7C18  */  .asciz  "p_emiseru_n_m"
                        .balign 4

glabel D_800A7C28
/* 0A77D8 800A7C28  */  .asciz  "p_furafura_n_m"
                        .balign 4

glabel D_800A7C38
/* 0A77E8 800A7C38  */  .asciz  "p_furimukil_n_m"
                        .balign 4

glabel D_800A7C48
/* 0A77F8 800A7C48  */  .asciz  "p_furimukir_n_m"
                        .balign 4

glabel D_800A7C58
/* 0A7808 800A7C58  */  .asciz  "p_furue_b_m"
                        .balign 4

glabel D_800A7C64
/* 0A7814 800A7C64  */  .asciz  "p_gakkuri_a_m"
                        .balign 4

glabel D_800A7C74
/* 0A7824 800A7C74  */  .asciz  "p_gakkuri_a_s"
                        .balign 4

glabel D_800A7C84
/* 0A7834 800A7C84  */  .asciz  "p_glad_y_m"
                        .balign 4

glabel D_800A7C90
/* 0A7840 800A7C90  */  .asciz  "p_glad_y_s"
                        .balign 4

glabel D_800A7C9C
/* 0A784C 800A7C9C  */  .asciz  "p_goso_n_m"
                        .balign 4

glabel D_800A7CA8
/* 0A7858 800A7CA8  */  .asciz  "p_gosodasi_n_m_ast"
                        .balign 4

glabel D_800A7CBC
/* 0A786C 800A7CBC  */  .asciz  "p_gosodasi_n_m_bed"
                        .balign 4

glabel D_800A7CD0
/* 0A7880 800A7CD0  */  .asciz  "p_harmonica_n_m"
                        .balign 4

glabel D_800A7CE0
/* 0A7890 800A7CE0  */  .asciz  "p_hazure_n_m"
                        .balign 4

glabel D_800A7CF0
/* 0A78A0 800A7CF0  */  .asciz  "p_headfuri_y_s"
                        .balign 4

glabel D_800A7D00
/* 0A78B0 800A7D00  */  .asciz  "p_hello_n_m"
                        .balign 4

glabel D_800A7D0C
/* 0A78BC 800A7D0C  */  .asciz  "p_hipfuri_n_m"
                        .balign 4

glabel D_800A7D1C
/* 0A78CC 800A7D1C  */  .asciz  "p_hirou_n_m"
                        .balign 4

glabel D_800A7D28
/* 0A78D8 800A7D28  */  .asciz  "p_ikaku_i_m_ast"
                        .balign 4

glabel D_800A7D38
/* 0A78E8 800A7D38  */  .asciz  "p_ikaku_i_m_blp"
                        .balign 4

glabel D_800A7D48
/* 0A78F8 800A7D48  */  .asciz  "p_ikaku_i_m_ced"
                        .balign 4

glabel D_800A7D58
/* 0A7908 800A7D58  */  .asciz  "p_ikou_n_m"
                        .balign 4

glabel D_800A7D64
/* 0A7914 800A7D64  */  .asciz  "p_iranai2_n_m"
                        .balign 4

glabel D_800A7D74
/* 0A7924 800A7D74  */  .asciz  "p_iranai_n_m"
                        .balign 4

glabel D_800A7D84
/* 0A7934 800A7D84  */  .asciz  "p_iyaan_h_m"
                        .balign 4

glabel D_800A7D90
/* 0A7940 800A7D90  */  .asciz  "p_jump50_n_m"
                        .balign 4

glabel D_800A7DA0
/* 0A7950 800A7DA0  */  .asciz  "p_jump_n_m"
                        .balign 4

glabel D_800A7DAC
/* 0A795C 800A7DAC  */  .asciz  "p_jump_n_m_ast"
                        .balign 4

glabel D_800A7DBC
/* 0A796C 800A7DBC  */  .asciz  "p_jump_n_m_blp"
                        .balign 4

glabel D_800A7DCC
/* 0A797C 800A7DCC  */  .asciz  "p_jump_n_m_ced"
                        .balign 4

glabel D_800A7DDC
/* 0A798C 800A7DDC  */  .asciz  "p_jumpshock_n_m_ast"
                        .balign 4

glabel D_800A7DF0
/* 0A79A0 800A7DF0  */  .asciz  "p_jumpshock_n_m_b"
                        .balign 4

glabel D_800A7E04
/* 0A79B4 800A7E04  */  .asciz  "p_jumpshock_n_m_c"
                        .balign 4

glabel D_800A7E18
/* 0A79C8 800A7E18  */  .asciz  "p_jumpshock_n_m_d"
                        .balign 4

glabel D_800A7E2C
/* 0A79DC 800A7E2C  */  .asciz  "p_jumpshock_n_m_eed"
                        .balign 4

glabel D_800A7E40
/* 0A79F0 800A7E40  */  .asciz  "p_jyouro_n_m"
                        .balign 4

glabel D_800A7E50
/* 0A7A00 800A7E50  */  .asciz  "p_kakage_n_m_ast"
                        .balign 4

glabel D_800A7E64
/* 0A7A14 800A7E64  */  .asciz  "p_kakage_n_m_blp"
                        .balign 4

glabel D_800A7E78
/* 0A7A28 800A7E78  */  .asciz  "p_kakage_n_m_ced"
                        .balign 4

glabel D_800A7E8C
/* 0A7A3C 800A7E8C  */  .asciz  "p_kakageue_n_m_ast"
                        .balign 4

glabel D_800A7EA0
/* 0A7A50 800A7EA0  */  .asciz  "p_kakageue_n_m_blp"
                        .balign 4

glabel D_800A7EB4
/* 0A7A64 800A7EB4  */  .asciz  "p_kakageue_n_m_ced"
                        .balign 4

glabel D_800A7EC8
/* 0A7A78 800A7EC8  */  .asciz  "p_kama_n_l"
                        .balign 4

glabel D_800A7ED4
/* 0A7A84 800A7ED4  */  .asciz  "p_kama_n_m"
                        .balign 4

glabel D_800A7EE0
/* 0A7A90 800A7EE0  */  .asciz  "p_kamaen_n_m"
                        .balign 4

glabel D_800A7EF0
/* 0A7AA0 800A7EF0  */  .asciz  "p_kamasuwa_n_m_ast"
                        .balign 4

glabel D_800A7F04
/* 0A7AB4 800A7F04  */  .asciz  "p_kamasuwa_n_m_blp"
                        .balign 4

glabel D_800A7F18
/* 0A7AC8 800A7F18  */  .asciz  "p_kamasuwa_n_m_ced"
                        .balign 4

glabel D_800A7F2C
/* 0A7ADC 800A7F2C  */  .asciz  "p_kamatachi_n_m"
                        .balign 4

glabel D_800A7F3C
/* 0A7AEC 800A7F3C  */  .asciz  "p_kasige_n_m"
                        .balign 4

glabel D_800A7F4C
/* 0A7AFC 800A7F4C  */  .asciz  "p_kazoeru_n_m"
                        .balign 4

glabel D_800A7F5C
/* 0A7B0C 800A7F5C  */  .asciz  "p_kiku_n_m"
                        .balign 4

glabel D_800A7F68
/* 0A7B18 800A7F68  */  .asciz  "p_kobaka_a_l"
                        .balign 4

glabel D_800A7F78
/* 0A7B28 800A7F78  */  .asciz  "p_korekore_n_m"
                        .balign 4

glabel D_800A7F88
/* 0A7B38 800A7F88  */  .asciz  "p_kure_n_m"
                        .balign 4

glabel D_800A7F94
/* 0A7B44 800A7F94  */  .asciz  "p_kurekure_n_m"
                        .balign 4

glabel D_800A7FA4
/* 0A7B54 800A7FA4  */  .asciz  "p_kusabue_n_m"
                        .balign 4

glabel D_800A7FB4
/* 0A7B64 800A7FB4  */  .asciz  "p_kusyami_n_m"
                        .balign 4

glabel D_800A7FC4
/* 0A7B74 800A7FC4  */  .asciz  "p_kyoro_n_m"
                        .balign 4

glabel D_800A7FD0
/* 0A7B80 800A7FD0  */  .asciz  "p_left_n_m"
                        .balign 4

glabel D_800A7FDC
/* 0A7B8C 800A7FDC  */  .asciz  "p_maedasi_n_m_ast"
                        .balign 4

glabel D_800A7FF0
/* 0A7BA0 800A7FF0  */  .asciz  "p_maedasi_n_m_blp"
                        .balign 4

glabel D_800A8004
/* 0A7BB4 800A8004  */  .asciz  "p_maedasi_n_m_ced"
                        .balign 4

glabel D_800A8018
/* 0A7BC8 800A8018  */  .asciz  "p_memai_n_m"
                        .balign 4

glabel D_800A8024
/* 0A7BD4 800A8024  */  .asciz  "p_miageru_n_m_ast"
                        .balign 4

glabel D_800A8038
/* 0A7BE8 800A8038  */  .asciz  "p_miageru_n_m_blp"
                        .balign 4

glabel D_800A804C
/* 0A7BFC 800A804C  */  .asciz  "p_miageru_n_m_ced"
                        .balign 4

glabel D_800A8060
/* 0A7C10 800A8060  */  .asciz  "p_mojimoji_h_s"
                        .balign 4

glabel D_800A8070
/* 0A7C20 800A8070  */  .asciz  "p_mukatuki_i_s"
                        .balign 4

glabel D_800A8080
/* 0A7C30 800A8080  */  .asciz  "p_mushin_n_m"
                        .balign 4

glabel D_800A8090
/* 0A7C40 800A8090  */  .asciz  "p_musi_i_s"
                        .balign 4

glabel D_800A809C
/* 0A7C4C 800A809C  */  .asciz  "p_nageru_n_m"
                        .balign 4

glabel D_800A80AC
/* 0A7C5C 800A80AC  */  .asciz  "p_naname_n_m"
                        .balign 4

glabel D_800A80BC
/* 0A7C6C 800A80BC  */  .asciz  "p_nanda2_n_m_blp"
                        .balign 4

glabel D_800A80D0
/* 0A7C80 800A80D0  */  .asciz  "p_nayamu_n_m"
                        .balign 4

glabel D_800A80E0
/* 0A7C90 800A80E0  */  .asciz  "p_nayamukeepte_n_m"
                        .balign 4

glabel D_800A80F4
/* 0A7CA4 800A80F4  */  .asciz  "p_nioi_n_m"
                        .balign 4

glabel D_800A8100
/* 0A7CB0 800A8100  */  .asciz  "p_no_n_m"
                        .balign 4

glabel D_800A810C
/* 0A7CBC 800A810C  */  .asciz  "p_noridasu_n_m"
                        .balign 4

glabel D_800A811C
/* 0A7CCC 800A811C  */  .asciz  "p_noseru_n_m"
                        .balign 4

glabel D_800A812C
/* 0A7CDC 800A812C  */  .asciz  "p_nukenai_n_m"
                        .balign 4

glabel D_800A813C
/* 0A7CEC 800A813C  */  .asciz  "p_nukeru_n_m"
                        .balign 4

glabel D_800A814C
/* 0A7CFC 800A814C  */  .asciz  "p_nuku_n_m_ast"
                        .balign 4

glabel D_800A815C
/* 0A7D0C 800A815C  */  .asciz  "p_nuku_n_m_blp"
                        .balign 4

glabel D_800A816C
/* 0A7D1C 800A816C  */  .asciz  "p_ochiru_o_m_ast"
                        .balign 4

glabel D_800A8180
/* 0A7D30 800A8180  */  .asciz  "p_ochiru_o_m_blp"
                        .balign 4

glabel D_800A8194
/* 0A7D44 800A8194  */  .asciz  "p_okorare_h_s"
                        .balign 4

glabel D_800A81A4
/* 0A7D54 800A81A4  */  .asciz  "p_oku_n_m"
                        .balign 4

glabel D_800A81B0
/* 0A7D60 800A81B0  */  .asciz  "p_osu_n_m_ast"
                        .balign 4

glabel D_800A81C0
/* 0A7D70 800A81C0  */  .asciz  "p_osu_n_m_blp"
                        .balign 4

glabel D_800A81D0
/* 0A7D80 800A81D0  */  .asciz  "p_osu_n_m_ced"
                        .balign 4

glabel D_800A81E0
/* 0A7D90 800A81E0  */  .asciz  "p_peace_n_m"
                        .balign 4

glabel D_800A81EC
/* 0A7D9C 800A81EC  */  .asciz  "p_rappa_n_m"
                        .balign 4

glabel D_800A81F8
/* 0A7DA8 800A81F8  */  .asciz  "p_really_o_s"
                        .balign 4

glabel D_800A8208
/* 0A7DB8 800A8208  */  .asciz  "p_right_n_m"
                        .balign 4

glabel D_800A8214
/* 0A7DC4 800A8214  */  .asciz  "p_run_n_m_ast"
                        .balign 4

glabel D_800A8224
/* 0A7DD4 800A8224  */  .asciz  "p_run_n_m_blp"
                        .balign 4

glabel D_800A8234
/* 0A7DE4 800A8234  */  .asciz  "p_run_n_m_ced"
                        .balign 4

glabel D_800A8244
/* 0A7DF4 800A8244  */  .asciz  "p_runjump_n_m"
                        .balign 4

glabel D_800A8254
/* 0A7E04 800A8254  */  .asciz  "p_runwalk_n_m"
                        .balign 4

glabel D_800A8264
/* 0A7E14 800A8264  */  .asciz  "p_seki_n_m"
                        .balign 4

glabel D_800A8270
/* 0A7E20 800A8270  */  .asciz  "p_sleep_n_m_ast"
                        .balign 4

glabel D_800A8280
/* 0A7E30 800A8280  */  .asciz  "p_sleep_n_m_blp"
                        .balign 4

glabel D_800A8290
/* 0A7E40 800A8290  */  .asciz  "p_sleep_n_m_ced"
                        .balign 4

glabel D_800A82A0
/* 0A7E50 800A82A0  */  .asciz  "p_sleepsuwa_n_m"
                        .balign 4

glabel D_800A82B0
/* 0A7E60 800A82B0  */  .asciz  "p_suikama_n_m"
                        .balign 4

glabel D_800A82C0
/* 0A7E70 800A82C0  */  .asciz  "p_suikashibumi_n_m"
                        .balign 4

glabel D_800A82D4
/* 0A7E84 800A82D4  */  .asciz  "p_suikawalk_n_m"
                        .balign 4

glabel D_800A82E4
/* 0A7E94 800A82E4  */  .asciz  "p_suikawari_n_m_ast"
                        .balign 4

glabel D_800A82F8
/* 0A7EA8 800A82F8  */  .asciz  "p_suikawari_n_m_blp"
                        .balign 4

glabel D_800A830C
/* 0A7EBC 800A830C  */  .asciz  "p_suikawari_n_m_ced"
                        .balign 4

glabel D_800A8320
/* 0A7ED0 800A8320  */  .asciz  "p_suikayameru_n_m"
                        .balign 4

glabel D_800A8334
/* 0A7EE4 800A8334  */  .asciz  "p_suteki_y_m"
                        .balign 4

glabel D_800A8344
/* 0A7EF4 800A8344  */  .asciz  "p_suwamimikaki_n_m"
                        .balign 4

glabel D_800A8358
/* 0A7F08 800A8358  */  .asciz  "p_tachikama_n_m"
                        .balign 4

glabel D_800A8368
/* 0A7F18 800A8368  */  .asciz  "p_tereru_h_m"
                        .balign 4

glabel D_800A8378
/* 0A7F28 800A8378  */  .asciz  "p_tokui_n_m"
                        .balign 4

glabel D_800A8384
/* 0A7F34 800A8384  */  .asciz  "p_torou_n_m"
                        .balign 4

glabel D_800A8390
/* 0A7F40 800A8390  */  .asciz  "p_tumazuku_n_m_ast"
                        .balign 4

glabel D_800A83A4
/* 0A7F54 800A83A4  */  .asciz  "p_tumazuku_n_m_blp"
                        .balign 4

glabel D_800A83B8
/* 0A7F68 800A83B8  */  .asciz  "p_tumazuku_n_m_ced"
                        .balign 4

glabel D_800A83CC
/* 0A7F7C 800A83CC  */  .asciz  "p_tutuku_n_m"
                        .balign 4

glabel D_800A83DC
/* 0A7F8C 800A83DC  */  .asciz  "p_tv_n_m"
                        .balign 4

glabel D_800A83E8
/* 0A7F98 800A83E8  */  .asciz  "p_unadare_k_m_ast"
                        .balign 4

glabel D_800A83FC
/* 0A7FAC 800A83FC  */  .asciz  "p_unadare_k_m_blp"
                        .balign 4

glabel D_800A8410
/* 0A7FC0 800A8410  */  .asciz  "p_unadare_k_m_ced"
                        .balign 4

glabel D_800A8424
/* 0A7FD4 800A8424  */  .asciz  "p_unun_n_m"
                        .balign 4

glabel D_800A8430
/* 0A7FE0 800A8430  */  .asciz  "p_voiceloud_n_m"
                        .balign 4

glabel D_800A8440
/* 0A7FF0 800A8440  */  .asciz  "p_voicelow_n_m"
                        .balign 4

glabel D_800A8450
/* 0A8000 800A8450  */  .asciz  "p_walk_n_m_ast"
                        .balign 4

glabel D_800A8460
/* 0A8010 800A8460  */  .asciz  "p_walk_n_m_blp"
                        .balign 4

glabel D_800A8470
/* 0A8020 800A8470  */  .asciz  "p_walk_n_m_ced"
                        .balign 4

glabel D_800A8480
/* 0A8030 800A8480  */  .asciz  "p_walkrun_n_m"
                        .balign 4

glabel D_800A8490
/* 0A8040 800A8490  */  .asciz  "p_warai_y_m"
                        .balign 4

glabel D_800A849C
/* 0A804C 800A849C  */  .asciz  "p_warai_y_s"
                        .balign 4

glabel D_800A84A8
/* 0A8058 800A84A8  */  .asciz  "p_watasu2_n_l_blp"
                        .balign 4

glabel D_800A84BC
/* 0A806C 800A84BC  */  .asciz  "p_watasu_n_m_ast"
                        .balign 4

glabel D_800A84D0
/* 0A8080 800A84D0  */  .asciz  "p_watasu_n_m_blp"
                        .balign 4

glabel D_800A84E4
/* 0A8094 800A84E4  */  .asciz  "p_watasu_n_m_ced"
                        .balign 4

glabel D_800A84F8
/* 0A80A8 800A84F8  */  .asciz  "p_whatl_n_m"
                        .balign 4

glabel D_800A8504
/* 0A80B4 800A8504  */  .asciz  "p_whatrl_n_m"
                        .balign 4

glabel D_800A8514
/* 0A80C4 800A8514  */  .asciz  "p_yes_n_m"
                        .balign 4

glabel D_800A8520
/* 0A80D0 800A8520  */  .asciz  "p_yosiyosi_n_m"
                        .balign 4

glabel D_800A8530
/* 0A80E0 800A8530  */  .asciz  "p_yotsunbai_n_m_ast"
                        .balign 4

glabel D_800A8544
/* 0A80F4 800A8544  */  .asciz  "p_yotsunbai_n_m_bed"
                        .balign 4

glabel D_800A8558
/* 0A8108 800A8558  */  .asciz  "starmie_oyogu"
                        .balign 4

glabel D_800A8568
/* 0A8118 800A8568  */  .asciz  "tbf_kama"
                        .balign 4

glabel D_800A8574
/* 0A8124 800A8574  */  .asciz  "th_taberu"
                        .balign 4

glabel D_800A8580
/* 0A8130 800A8580  */  .asciz  "tk_run_ast"
                        .balign 4

glabel D_800A858C
/* 0A813C 800A858C  */  .asciz  "tk_run_blp"
                        .balign 4

glabel D_800A8598
/* 0A8148 800A8598  */  .asciz  "tk_run_ced"
                        .balign 4

glabel D_800A85A4
/* 0A8154 800A85A4  */  .asciz  "tkc_kama"
                        .balign 4

glabel D_800A85B0
/* 0A8160 800A85B0  */  .asciz  "tn_freeze"
                        .balign 4

glabel D_800A85BC
/* 0A816C 800A85BC  */  .asciz  "tn_hairu"
                        .balign 4

glabel D_800A85C8
/* 0A8178 800A85C8  */  .asciz  "tn_hakoaku"
                        .balign 4

glabel D_800A85D4
/* 0A8184 800A85D4  */  .asciz  "tn_run_ast"
                        .balign 4

glabel D_800A85E0
/* 0A8190 800A85E0  */  .asciz  "tn_run_blp"
                        .balign 4

glabel D_800A85EC
/* 0A819C 800A85EC  */  .asciz  "tn_run_ced"
                        .balign 4

glabel D_800A85F8
/* 0A81A8 800A85F8  */  .asciz  "tn_tobiagari"
                        .balign 4

glabel D_800A8608
/* 0A81B8 800A8608  */  .asciz  "tny_deru"
                        .balign 4

glabel D_800A8614
/* 0A81C4 800A8614  */  .asciz  "tny_uku"
                        .balign 4

glabel D_800A861C
/* 0A81CC 800A861C  */  .asciz  "tny_unun"
                        .balign 4

glabel D_800A8628
/* 0A81D8 800A8628  */  .asciz  "tny_walk_ast"
                        .balign 4

glabel D_800A8638
/* 0A81E8 800A8638  */  .asciz  "tny_walk_blp"
                        .balign 4

glabel D_800A8648
/* 0A81F8 800A8648  */  .asciz  "tny_walk_ced"
                        .balign 4

glabel D_800A8658
/* 0A8208 800A8658  */  .asciz  "tz_hello"
                        .balign 4

glabel D_800A8664
/* 0A8214 800A8664  */  .asciz  "tz_kama"
                        .balign 4

glabel D_800A866C
/* 0A821C 800A866C  */  .asciz  "tz_mazui"
                        .balign 4

glabel D_800A8678
/* 0A8228 800A8678  */  .asciz  "tz_mimiuchi"
                        .balign 4

glabel D_800A8684
/* 0A8234 800A8684  */  .asciz  "tz_run_ast"
                        .balign 4

glabel D_800A8690
/* 0A8240 800A8690  */  .asciz  "tz_run_blp"
                        .balign 4

glabel D_800A869C
/* 0A824C 800A869C  */  .asciz  "tz_run_ced"
                        .balign 4

glabel D_800A86A8
/* 0A8258 800A86A8  */  .asciz  "tz_taberu"
                        .balign 4

glabel _string_800A86B4
/* 0A8264 800A86B4  */  .asciz  "NO_MOTION"
                        .balign 4
/* 0A8270 800A86C0  */  .asciz  "Unknown smokeType(%d)\n"
                        .balign 4
/* 0A8288 800A86D8  */  .asciz  "wispType:%d\n"
                        .balign 4

glabel D_800A86E8
/* 0A8298 800A86E8 3F847AE140000000 */  .double  0.009999999776482582

glabel D_800A86F0
/* 0A82A0 800A86F0 3F847AE140000000 */  .double  0.009999999776482582

glabel D_800A86F8
/* 0A82A8 800A86F8 3F847AE140000000 */  .double  0.009999999776482582

glabel jtbl_800A8700
/* 0A82B0 800A8700 800161CC */  .word  L800161CC
/* 0A82B4 800A8704 800161F8 */  .word  L800161F8
/* 0A82B8 800A8708 80016238 */  .word  L80016238
/* 0A82BC 800A870C 8001626C */  .word  L8001626C
/* 0A82C0 800A8710 80016348 */  .word  L80016348
/* 0A82C4 800A8714 80016374 */  .word  L80016374
/* 0A82C8 800A8718 800163A0 */  .word  L800163A0
/* 0A82CC 800A871C 800163CC */  .word  L800163CC
/* 0A82D0 800A8720 800163F8 */  .word  L800163F8
/* 0A82D4 800A8724 80016424 */  .word  L80016424

glabel D_800A8728
/* 0A82D8 800A8728 3C23D70A */  .float  0.009999999776482582

glabel D_800A872C
/* 0A82DC 800A872C 3C23D70A */  .float  0.009999999776482582

glabel D_800A8730
/* 0A82E0 800A8730 3C23D70A */  .float  0.009999999776482582

glabel D_800A8734
/* 0A82E4 800A8734 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A8738
/* 0A82E8 800A8738 3FA99999A0000000 */  .double  0.05000000074505806

glabel D_800A8740
/* 0A82F0 800A8740 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800A8748
/* 0A82F8 800A8748 3FA99999A0000000 */  .double  0.05000000074505806

glabel D_800A8750
/* 0A8300 800A8750 3B449BA6 */  .float  0.003000000026077032

glabel D_800A8754
/* 0A8304 800A8754 3CA3D70A */  .float  0.019999999552965164

glabel D_800A8758
/* 0A8308 800A8758 3CF5C28F */  .float  0.029999999329447746

glabel D_800A875C
/* 0A830C 800A875C 3CF5C28F */  .float  0.029999999329447746

glabel D_800A8760
/* 0A8310 800A8760 3E4CCCCD */  .float  0.20000000298023224

glabel D_800A8764
/* 0A8314 800A8764 3E4CCCCD */  .float  0.20000000298023224

glabel D_800A8768
/* 0A8318 800A8768 3F99999A */  .float  1.2000000476837158

glabel D_800A876C
/* 0A831C 800A876C 3C23D70A */  .float  0.009999999776482582

glabel D_800A8770
/* 0A8320 800A8770 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800A8778
/* 0A8328 800A8778 3FE3333340000000 */  .double  0.6000000238418579

glabel D_800A8780
/* 0A8330 800A8780 3FE99999A0000000 */  .double  0.800000011920929

glabel D_800A8788
/* 0A8338 800A8788 3F847AE140000000 */  .double  0.009999999776482582

glabel jtbl_800A8790
/* 0A8340 800A8790 80017898 */  .word  L80017898
/* 0A8344 800A8794 800178C4 */  .word  L800178C4
/* 0A8348 800A8798 800178F0 */  .word  L800178F0
/* 0A834C 800A879C 8001791C */  .word  L8001791C
/* 0A8350 800A87A0 80017948 */  .word  L80017948
/* 0A8354 800A87A4 80017974 */  .word  L80017974
/* 0A8358 800A87A8 800179A0 */  .word  L800179A0

glabel D_800A87AC
/* 0A835C 800A87AC 3CF5C28F */  .float  0.029999999329447746

glabel D_800A87B0
/* 0A8360 800A87B0 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A87B4
/* 0A8364 800A87B4 40511111 */  .float  3.2666666507720947

glabel D_800A87B8
/* 0A8368 800A87B8 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A87BC
/* 0A836C 800A87BC 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A87C0
/* 0A8370 800A87C0 3F4CCCCD */  .float  0.800000011920929

glabel D_800A87C4
/* 0A8374 800A87C4 3F19999A */  .float  0.6000000238418579

glabel D_800A87C8
/* 0A8378 800A87C8 3E19999A */  .float  0.15000000596046448

glabel D_800A87CC
/* 0A837C 800A87CC 3E19999A */  .float  0.15000000596046448

glabel D_800A87D0
/* 0A8380 800A87D0 3FD3333340000000 */  .double  0.30000001192092896

glabel D_800A87D8
/* 0A8388 800A87D8 3FD99999A0000000 */  .double  0.4000000059604645

glabel D_800A87E0
/* 0A8390 800A87E0 3E4CCCCD */  .float  0.20000000298023224

glabel D_800A87E4
/* 0A8394 800A87E4 43098000 */  .float  137.5

glabel D_800A87E8
/* 0A8398 800A87E8 3F8147AE */  .float  1.0099999904632568

glabel D_800A87EC
/* 0A839C 800A87EC 3D75C28F */  .float  0.05999999865889549

glabel D_800A87F0
/* 0A83A0 800A87F0 3E99999A */  .float  0.30000001192092896
/* 0A83A4 800A87F4 00000000 */  .float  0.0
/* 0A83A8 800A87F8 00000000 */  .float  0.0
/* 0A83AC 800A87FC 00000000 */  .float  0.0
