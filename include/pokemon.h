#pragma once

#include "types.h"

struct pokemon_paso_param
{
    u32 personal_rnd;          //04h	個性乱数
    u16 pp_fast_mode : 1;      //06h	暗号／復号／チェックサム生成を後回しにして、処理を高速化モード
    u16 ppp_fast_mode : 1;     //06h	暗号／復号／チェックサム生成を後回しにして、処理を高速化モード
    u16 fusei_tamago_flag : 1; //06h	ダメタマゴフラグ
    u16 : 13;                  //06h
    u16 checksum;              //08h	チェックサム
};

struct POKEMON_PARAM
{
    struct pokemon_paso_param boxMonData; //88h
};

enum
{
    ID_PARA_personal_rnd = 0,  //個性乱数
    ID_PARA_pp_fast_mode,      //
    ID_PARA_ppp_fast_mode,     //
    ID_PARA_fusei_tamago_flag, //ダメタマゴフラグ
    ID_PARA_checksum,          //チェックサム

    ID_PARA_monsno,                            //モンスターナンバー
    ID_PARA_item,                              //所持アイテムナンバー
    ID_PARA_id_no,                             //IDNo
    ID_PARA_exp,                               //経験値
    ID_PARA_friend,                            //なつき度
    ID_PARA_speabino,                          //特殊能力
    ID_PARA_mark,                              //ポケモンにつけるマーク（ボックス）
    ID_PARA_country_code,                      //国コード
    ID_PARA_hp_exp,                            //HP努力値
    ID_PARA_pow_exp,                           //攻撃力努力値
    ID_PARA_def_exp,                           //防御力努力値
    ID_PARA_agi_exp,                           //素早さ努力値
    ID_PARA_spepow_exp,                        //特攻努力値
    ID_PARA_spedef_exp,                        //特防努力値
    ID_PARA_style,                             //かっこよさ
    ID_PARA_beautiful,                         //うつくしさ
    ID_PARA_cute,                              //かわいさ
    ID_PARA_clever,                            //かしこさ
    ID_PARA_strong,                            //たくましさ
    ID_PARA_fur,                               //毛艶
    ID_PARA_sinou_champ_ribbon,                //シンオウチャンプリボン
    ID_PARA_sinou_battle_tower_ttwin_first,    //シンオウバトルタワータワータイクーン勝利1回目
    ID_PARA_sinou_battle_tower_ttwin_second,   //シンオウバトルタワータワータイクーン勝利2回目
    ID_PARA_sinou_battle_tower_2vs2_win50,     //シンオウバトルタワータワーダブル50連勝
    ID_PARA_sinou_battle_tower_aimulti_win50,  //シンオウバトルタワータワーAIマルチ50連勝
    ID_PARA_sinou_battle_tower_siomulti_win50, //シンオウバトルタワータワー通信マルチ50連勝
    ID_PARA_sinou_battle_tower_wifi_rank5,     //シンオウバトルタワーWifiランク５入り
    ID_PARA_sinou_syakki_ribbon,               //シンオウしゃっきリボン
    ID_PARA_sinou_dokki_ribbon,                //シンオウどっきリボン
    ID_PARA_sinou_syonbo_ribbon,               //シンオウしょんぼリボン
    ID_PARA_sinou_ukka_ribbon,                 //シンオウうっかリボン
    ID_PARA_sinou_sukki_ribbon,                //シンオウすっきリボン
    ID_PARA_sinou_gussu_ribbon,                //シンオウぐっすリボン
    ID_PARA_sinou_nikko_ribbon,                //シンオウにっこリボン
    ID_PARA_sinou_gorgeous_ribbon,             //シンオウゴージャスリボン
    ID_PARA_sinou_royal_ribbon,                //シンオウロイヤルリボン
    ID_PARA_sinou_gorgeousroyal_ribbon,        //シンオウゴージャスロイヤルリボン
    ID_PARA_sinou_ashiato_ribbon,              //シンオウあしあとリボン
    ID_PARA_sinou_record_ribbon,               //シンオウレコードリボン
    ID_PARA_sinou_history_ribbon,              //シンオウヒストリーリボン
    ID_PARA_sinou_legend_ribbon,               //シンオウレジェンドリボン
    ID_PARA_sinou_red_ribbon,                  //シンオウレッドリボン
    ID_PARA_sinou_green_ribbon,                //シンオウグリーンリボン
    ID_PARA_sinou_blue_ribbon,                 //シンオウブルーリボン
    ID_PARA_sinou_festival_ribbon,             //シンオウフェスティバルリボン
    ID_PARA_sinou_carnival_ribbon,             //シンオウカーニバルリボン
    ID_PARA_sinou_classic_ribbon,              //シンオウクラシックリボン
    ID_PARA_sinou_premiere_ribbon,             //シンオウプレミアリボン
    ID_PARA_sinou_amari_ribbon,                //あまり

    ID_PARA_waza1,                 //所持技1
    ID_PARA_waza2,                 //所持技2
    ID_PARA_waza3,                 //所持技3
    ID_PARA_waza4,                 //所持技4
    ID_PARA_pp1,                   //所持技PP1
    ID_PARA_pp2,                   //所持技PP2
    ID_PARA_pp3,                   //所持技PP3
    ID_PARA_pp4,                   //所持技PP4
    ID_PARA_pp_count1,             //所持技PP_COUNT1
    ID_PARA_pp_count2,             //所持技PP_COUNT2
    ID_PARA_pp_count3,             //所持技PP_COUNT3
    ID_PARA_pp_count4,             //所持技PP_COUNT4
    ID_PARA_pp_max1,               //所持技PPMAX1
    ID_PARA_pp_max2,               //所持技PPMAX2
    ID_PARA_pp_max3,               //所持技PPMAX3
    ID_PARA_pp_max4,               //所持技PPMAX4
    ID_PARA_hp_rnd,                //HP乱数
    ID_PARA_pow_rnd,               //攻撃力乱数
    ID_PARA_def_rnd,               //防御力乱数
    ID_PARA_agi_rnd,               //素早さ乱数
    ID_PARA_spepow_rnd,            //特攻乱数
    ID_PARA_spedef_rnd,            //特防乱数
    ID_PARA_tamago_flag,           //タマゴフラグ
    ID_PARA_nickname_flag,         //ニックネームをつけたかどうかフラグ
    ID_PARA_stylemedal_normal,     //かっこよさ勲章(ノーマル)AGBコンテスト
    ID_PARA_stylemedal_super,      //かっこよさ勲章(スーパー)AGBコンテスト
    ID_PARA_stylemedal_hyper,      //かっこよさ勲章(ハイパー)AGBコンテスト
    ID_PARA_stylemedal_master,     //かっこよさ勲章(マスター)AGBコンテスト
    ID_PARA_beautifulmedal_normal, //うつくしさ勲章(ノーマル)AGBコンテスト
    ID_PARA_beautifulmedal_super,  //うつくしさ勲章(スーパー)AGBコンテスト
    ID_PARA_beautifulmedal_hyper,  //うつくしさ勲章(ハイパー)AGBコンテスト
    ID_PARA_beautifulmedal_master, //うつくしさ勲章(マスター)AGBコンテスト
    ID_PARA_cutemedal_normal,      //かわいさ勲章(ノーマル)AGBコンテスト
    ID_PARA_cutemedal_super,       //かわいさ勲章(スーパー)AGBコンテスト
    ID_PARA_cutemedal_hyper,       //かわいさ勲章(ハイパー)AGBコンテスト
    ID_PARA_cutemedal_master,      //かわいさ勲章(マスター)AGBコンテスト
    ID_PARA_clevermedal_normal,    //かしこさ勲章(ノーマル)AGBコンテスト
    ID_PARA_clevermedal_super,     //かしこさ勲章(スーパー)AGBコンテスト
    ID_PARA_clevermedal_hyper,     //かしこさ勲章(ハイパー)AGBコンテスト
    ID_PARA_clevermedal_master,    //かしこさ勲章(マスター)AGBコンテスト
    ID_PARA_strongmedal_normal,    //たくましさ勲章(ノーマル)AGBコンテスト
    ID_PARA_strongmedal_super,     //たくましさ勲章(スーパー)AGBコンテスト
    ID_PARA_strongmedal_hyper,     //たくましさ勲章(ハイパー)AGBコンテスト
    ID_PARA_strongmedal_master,    //たくましさ勲章(マスター)AGBコンテスト
    ID_PARA_champ_ribbon,          //チャンプリボン
    ID_PARA_winning_ribbon,        //ウィニングリボン
    ID_PARA_victory_ribbon,        //ビクトリーリボン
    ID_PARA_bromide_ribbon,        //ブロマイドリボン
    ID_PARA_ganba_ribbon,          //がんばリボン
    ID_PARA_marine_ribbon,         //マリンリボン
    ID_PARA_land_ribbon,           //ランドリボン
    ID_PARA_sky_ribbon,            //スカイリボン
    ID_PARA_country_ribbon,        //カントリーリボン
    ID_PARA_national_ribbon,       //ナショナルリボン
    ID_PARA_earth_ribbon,          //アースリボン
    ID_PARA_world_ribbon,          //ワールドリボン
    ID_PARA_event_get_flag,        //イベントで配布されたことを示すフラグ
    ID_PARA_sex,                   //性別
    ID_PARA_form_no,               //形状ナンバー（アンノーン、デオキシス、ミノメスなど用）
    ID_PARA_dummy_p2_1,            //あまり
    ID_PARA_dummy_p2_2,            //あまり
    ID_PARA_new_get_place,         //1eh	捕まえた場所（なぞの場所対応用）
    ID_PARA_new_birth_place,       //20h	生まれた場所（なぞの場所対応用）

    ID_PARA_nickname,                    //ニックネーム
    ID_PARA_nickname_code_flag,          //ニックネーム（STRCODE使用,nickname_flagもオンにする）
    ID_PARA_nickname_buf,                //ニックネーム（STRBUF使用）
    ID_PARA_nickname_buf_flag,           //ニックネーム（STRBUF使用,nickname_flagもオンにする）
    ID_PARA_pref_code,                   //都道府県コード
    ID_PARA_get_cassette,                //捕まえたカセット（カラーバージョン）
    ID_PARA_trial_stylemedal_normal,     //かっこよさ勲章(ノーマル)トライアル
    ID_PARA_trial_stylemedal_super,      //かっこよさ勲章(スーパー)トライアル
    ID_PARA_trial_stylemedal_hyper,      //かっこよさ勲章(ハイパー)トライアル
    ID_PARA_trial_stylemedal_master,     //かっこよさ勲章(マスター)トライアル
    ID_PARA_trial_beautifulmedal_normal, //うつくしさ勲章(ノーマル)トライアル
    ID_PARA_trial_beautifulmedal_super,  //うつくしさ勲章(スーパー)トライアル
    ID_PARA_trial_beautifulmedal_hyper,  //うつくしさ勲章(ハイパー)トライアル
    ID_PARA_trial_beautifulmedal_master, //うつくしさ勲章(マスター)トライアル
    ID_PARA_trial_cutemedal_normal,      //かわいさ勲章(ノーマル)トライアル
    ID_PARA_trial_cutemedal_super,       //かわいさ勲章(スーパー)トライアル
    ID_PARA_trial_cutemedal_hyper,       //かわいさ勲章(ハイパー)トライアル
    ID_PARA_trial_cutemedal_master,      //かわいさ勲章(マスター)トライアル
    ID_PARA_trial_clevermedal_normal,    //かしこさ勲章(ノーマル)トライアル
    ID_PARA_trial_clevermedal_super,     //かしこさ勲章(スーパー)トライアル
    ID_PARA_trial_clevermedal_hyper,     //かしこさ勲章(ハイパー)トライアル
    ID_PARA_trial_clevermedal_master,    //かしこさ勲章(マスター)トライアル
    ID_PARA_trial_strongmedal_normal,    //たくましさ勲章(ノーマル)トライアル
    ID_PARA_trial_strongmedal_super,     //たくましさ勲章(スーパー)トライアル
    ID_PARA_trial_strongmedal_hyper,     //たくましさ勲章(ハイパー)トライアル
    ID_PARA_trial_strongmedal_master,    //たくましさ勲章(マスター)トライアル
    ID_PARA_amari_ribbon,                //余りリボン

    ID_PARA_oyaname,       //親の名前
    ID_PARA_oyaname_buf,   //親の名前（STRBUF使用）
    ID_PARA_get_year,      //捕まえた年
    ID_PARA_get_month,     //捕まえた月
    ID_PARA_get_day,       //捕まえた日
    ID_PARA_birth_year,    //生まれた年
    ID_PARA_birth_month,   //生まれた月
    ID_PARA_birth_day,     //生まれた日
    ID_PARA_get_place,     //捕まえた場所
    ID_PARA_birth_place,   //生まれた場所
    ID_PARA_pokerus,       //ポケルス
    ID_PARA_get_ball,      //捕まえたボール
    ID_PARA_get_level,     //捕まえたレベル
    ID_PARA_oyasex,        //親の性別
    ID_PARA_get_ground_id, //捕まえた場所の地形アトリビュート（ミノッチ用）
    ID_PARA_dummy_p4_1,    //あまり

    ID_PARA_condition, //コンディション
    ID_PARA_level,     //レベル
    ID_PARA_cb_id,     //カスタムボールID
    ID_PARA_hp,        //HP
    ID_PARA_hpmax,     //HPMAX
    ID_PARA_pow,       //攻撃力
    ID_PARA_def,       //防御力
    ID_PARA_agi,       //素早さ
    ID_PARA_spepow,    //特攻
    ID_PARA_spedef,    //特防
    ID_PARA_mail_data, //メールデータ
    ID_PARA_cb_core,   //カスタムボールデータ

    ID_PARA_poke_exist,   //ポケモン存在フラグ
    ID_PARA_tamago_exist, //タマゴ存在フラグ

    ID_PARA_monsno_egg, //タマゴかどうかも同時にチェック

    ID_PARA_power_rnd,        //パワー乱数をu32で扱う
    ID_PARA_nidoran_nickname, //モンスターナンバーがニドランの時にnickname_flagが立っているかチェック

    ID_PARA_type1, //ポケモンのタイプ１を取得（アウス、マルチタイプチェックもあり）
    ID_PARA_type2, //ポケモンのタイプ２を取得（アウス、マルチタイプチェックもあり）

    ID_PARA_default_name, //ポケモンのデフォルト名

    ID_PARA_end //パラメータを追加するときは、ここから上に追加
};

void ChangePokemonPersonal(struct POKEMON_PARAM *poke,u8 abilityNum,u8 nature,bool8 Setshiny);
bool8 IsMonShiny(u32 id, u32 rnd);
void PokePasoParaSpeabiSet(void *ppp);
u8 GetMonHideAbility(u16 mon, u8 Form_no);
bool8 ReverFormChange(void *pp, u16 species, u8 form_no);

void* __attribute__((long_call)) PokemonParam_AllocWork(u32 heapid);
void __attribute__((long_call)) PokeParaInit(void* pokemon);
void __attribute__((long_call))PokeParaSet(void *pp,int mons_no,int level,int pow,int rndflag,u32 rnd,int idflag,u32 id);
void __attribute__((long_call)) SetPokemonSee(void *zw, void *pp);
void __attribute__((long_call)) SetPokemonGet(void *zw, void *pp);
void *__attribute__((long_call))PokeStatusPokeParamGet(void*);
void __attribute__((long_call))PokeCopyPPtoPP(void*,void*);
void __attribute__((long_call)) PokeParaCalc( struct POKEMON_PARAM *ppd );
void __attribute__((long_call)) PokeParaSpeabiSet( void *ppd );

u32 __attribute__((long_call)) GetMonData(void*,int,void*);
void __attribute__((long_call)) SetMonData(void*,int,void*);
u8 __attribute__((long_call)) PokeFuseiFormNoCheck(u16 mons_no, u8 form_no);
u32 __attribute__((long_call)) PokePasoParaGet(void *ppp, int id, void *buf);
void *__attribute__((long_call))PokeParty_GetMemberPointer(const void * party, int pos);
u32	__attribute__((long_call))PokeFormNoPersonalParaGet(int mons_no,int form_no,int para);
u8 __attribute__((long_call)) PokePasoSexGet(void *ppp);
u8 __attribute__((long_call)) PokeSexGetMonsNo(u16 monsno,u32 rnd);
void __attribute__((long_call)) PokePasoParaFastModeOff(void*,BOOL);
BOOL __attribute__((long_call)) PokePasoParaFastModeOn(void*);
void  __attribute__((long_call)) PokePasoParaPut(void *ppp,int id,const void *buf);
void *__attribute__((long_call)) SodateyaWork_GetPokePasoPointer(void *ppd, int ID);
void *__attribute__((long_call)) PokeParaPersonalRndChange(void *pp, u32 personal_rnd);
u8 __attribute__((long_call)) PokeNatureGet(u32);
void __attribute__((long_call)) PokeSetMove(void *ppp);
