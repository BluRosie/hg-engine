#ifndef POKEMON_H
#define POKEMON_H

#include "config.h"
//#include "save.h"
#include "types.h"

#define POKEMON_GENDER_MALE 0
#define POKEMON_GENDER_FEMALE 1
#define POKEMON_GENDER_UNKNOWN 2

#define MONS_MALE       (0)
#define MONS_FEMALE     (254)
#define MONS_UNKNOWN    (255)

// ID_PARA_dummy_p2_1 fields
#define DUMMY_P2_1_HIDDEN_ABILITY_MASK (0x01)
#define DUMMY_P2_1_HAS_HIT_NECESSARY_CRITICAL_HITS (0x02)


#define SET_MON_HIDDEN_ABILITY_BIT(mon) { \
    u16 tempvarassumeunused = GetMonData(mon, ID_PARA_dummy_p2_1, 0); \
    tempvarassumeunused |= DUMMY_P2_1_HIDDEN_ABILITY_MASK; \
    SetMonData(mon, ID_PARA_dummy_p2_1, (u8 *)&tempvarassumeunused); \
}
#define SET_BOX_MON_HIDDEN_ABILITY_BIT(boxmon) { \
    u16 tempvarassumeunused = GetBoxMonData(boxmon, ID_PARA_dummy_p2_1, 0); \
    tempvarassumeunused |= DUMMY_P2_1_HIDDEN_ABILITY_MASK; \
    BoxMonDataSet(boxmon, ID_PARA_dummy_p2_1, (u8 *)&tempvarassumeunused); \
}


#define SET_MON_CRITICAL_HIT_EVOLUTION_BIT(mon) { \
    u16 tempvarassumeunused = GetMonData(mon, ID_PARA_dummy_p2_1, 0); \
    tempvarassumeunused |= DUMMY_P2_1_HAS_HIT_NECESSARY_CRITICAL_HITS; \
    SetMonData(mon, ID_PARA_dummy_p2_1, (u8 *)&tempvarassumeunused); \
}
#define SET_BOX_MON_CRITICAL_HIT_EVOLUTION_BIT(boxmon) { \
    u16 tempvarassumeunused = GetBoxMonData(boxmon, ID_PARA_dummy_p2_1, 0); \
    tempvarassumeunused |= DUMMY_P2_1_HAS_HIT_NECESSARY_CRITICAL_HITS; \
    BoxMonDataSet(boxmon, ID_PARA_dummy_p2_1, (u8 *)&tempvarassumeunused); \
}


#define POW_RND (32)


// personal narc fields
enum
{
    PERSONAL_BASE_HP = 0,
    PERSONAL_BASE_ATTACK,
    PERSONAL_BASE_DEFENSE,
    PERSONAL_BASE_SPEED,
    PERSONAL_BASE_SP_ATTACK,
    PERSONAL_BASE_SP_DEFENSE,
    PERSONAL_TYPE_1,
    PERSONAL_TYPE_2,
    PERSONAL_CATCH_RATE,
    PERSONAL_EXP_YIELD,
    PERSONAL_EV_YIELD_HP,
    PERSONAL_EV_YIELD_ATTACK,
    PERSONAL_EV_YIELD_DEFENSE,
    PERSONAL_EV_YIELD_SPEED,
    PERSONAL_EV_YIELD_SP_ATTACK,
    PERSONAL_EV_YIELD_SP_DEFENSE,
    PERSONAL_ITEM_1,
    PERSONAL_ITEM_2,
    PERSONAL_GENDER_RATIO,
    PERSONAL_EGG_CYCLES,
    PERSONAL_BASE_FRIENDSHIP,
    PERSONAL_EXP_GROUP,
    PERSONAL_EGG_GROUP_1,
    PERSONAL_EGG_GROUP_2,
    PERSONAL_ABILITY_1,
    PERSONAL_ABILITY_2,
    PERSONAL_RUN_CHANCE,
    PERSONAL_BODY_COLOR,
    PERSONAL_FLIP,
    PERSONAL_TM_ARRAY_1,
    PERSONAL_TM_ARRAY_2,
    PERSONAL_TM_ARRAY_3,
    PERSONAL_TM_ARRAY_4,
};

#define MAX_IVS (31)

#define RND_NO_SET  (0)
#define RND_SET (1)

#define ID_NO_SET   (0)
#define ID_SET  (1)
#define ID_NO_SHINY (2)
#define NO_MOVES_SET    (0xffff)
#define SAME_MOVES_SET  (0xfffe)

typedef struct SEAL {
    u8 kind;           // ID of the seal
    u8 x;              // X coordinate on the capsule
    u8 y;              // Y coordinate on the capsule
} SEAL;

/*
 * Capsule that you put on your ball
 */
typedef struct CAPSULE {
    SEAL seals[8];  // The seals on the capsule
} CAPSULE;

typedef struct {
    /* 0x00 */ u16 species;
    /* 0x02 */ u16 heldItem;
    /* 0x04 */ u32 otID; // low 16: visible; high 16: secret
    /* 0x08 */ u32 exp;
    /* 0x0C */ u8 friendship;
    /* 0x0D */ u8 ability;
    /* 0x0E */ u8 markings; // circle, triangle, square, heart, star, diamond
    /* 0x0F */ u8 originLanguage;
    /* 0x10 */ u8 hpEV;
    /* 0x11 */ u8 atkEV;
    /* 0x12 */ u8 defEV;
    /* 0x13 */ u8 spdEV;
    /* 0x14 */ u8 spatkEV;
    /* 0x15 */ u8 spdefEV;
    /* 0x16 */ u8 coolStat;
    /* 0x17 */ u8 beautyStat;
    /* 0x18 */ u8 cuteStat;
    /* 0x19 */ u8 smartStat;
    /* 0x1A */ u8 toughStat;
    /* 0x1B */ u8 sheen;
    // TODO: Finish SinnohRibbonSet1
    /* 0x1C */ u32 sinnohRibbons;
//    u8 sinnohChampRibbon:1, abilityRibbon:1;
//    u8 field_0x1d;
//    u8 gorgeousRoyalRibbon:1, footprintRibbon:1;
//    u8 field_0x1f;
} PokemonDataBlockA;

typedef struct {
    /* 0x00 */ u16 moves[4];
    /* 0x08 */ u8 movePP[4];
    /* 0x0C */ u8 movePpUps[4];
    /* 0x10 */ u32 hpIV:5, atkIV:5, defIV:5, spdIV:5, spatkIV:5, spdefIV:5, isEgg:1, isNicknamed:1;
    // TODO: Finish HoennRibbonSet
    /* 0x14 */ u32 ribbonFlags; // cool, ...
    /* 0x18 */ u8 fatefulEncounter:1, gender:2, alternateForm:5;
    /* 0x19 */ u8 HGSS_shinyLeaves:6;
    /* 0x19 */ u8 unk_19_6:2;
    /* 0x1A */ u16 Unused;
    /* 0x1C */ u16 Platinum_EggLocation;
    /* 0x1E */ u16 Platinum_MetLocation;
} PokemonDataBlockB;

typedef struct {
    /* 0x00 */ u16 nickname[11];
    /* 0x16 */ u8 Unused;
    /* 0x17 */ u8 originGame;
    // TODO: Finish SinnohRibbonSet2
    /* 0x18 */ u64 sinnohRibbons2; // cool, ...
} PokemonDataBlockC;

typedef struct {
    /* 0x00 */ u16 otTrainerName[8];
    /* 0x10 */ u8 dateEggReceived[3];
    /* 0x13 */ u8 dateMet[3];
    /* 0x16 */ u16 DP_EggLocation;
    /* 0x18 */ u16 DP_MetLocation;
    /* 0x1A */ u8 pokerus;
    /* 0x1B */ u8 pokeball;
    /* 0x1C */ u8 metLevel:7;
    u8 metGender:1;
    /* 0x1D */ u8 encounterType;
    /* 0x1E */ u8 HGSS_Pokeball;
    /* 0x1F */ s8 mood;
} PokemonDataBlockD;

typedef union {
    PokemonDataBlockA blockA;
    PokemonDataBlockB blockB;
    PokemonDataBlockC blockC;
    PokemonDataBlockD blockD;
} PokemonDataBlock;

struct BoxPokemon {
    /* 0x000 */ u32 pid;
    /* 0x004 */ u16 party_lock:1;
                u16 box_lock:1;
                u16 checksum_fail:1;
                u16 Unused:13;    // Might be used for validity checks
    /* 0x006 */ u16 checksum;  // Stored checksum of pokemon
    /* 0x008 */ PokemonDataBlock substructs[4];
};

union MailPatternData
{
    u16 raw;
    struct {
        u16 icon:12;
        u16 pal:4;
    };
};

#define MAILMSG_BANK_NONE           (0xFFFF)
#define MAILMSG_FIELDS_MAX          (2)

typedef struct MailMessage {
    u16 msg_bank;
    u16 msg_no;
    u16 fields[MAILMSG_FIELDS_MAX];
} MAIL_MESSAGE;

typedef struct Mail
{
    u32 author_otId;
    u8 author_gender;
    u8 author_language;
    u8 author_version;
    u8 mail_type;
    u16 author_name[7 + 1];
    union MailPatternData mon_icons[3];
    u16 forme_flags; // bitfield of three 5-bit values
    MAIL_MESSAGE unk_20[3];
} MAIL;

typedef struct PartyOnlyPokemon {
    /* 0x088 */ u32 status; // slp:3, psn:1, brn:1, frz:1, prz:1, tox:1, ...
    /* 0x08C */ u8 level;
    /* 0x08D */ u8 capsule;
    /* 0x08E */ u16 hp;
    /* 0x090 */ u16 maxHp;
    /* 0x092 */ u16 atk;
    /* 0x094 */ u16 def;
    /* 0x096 */ u16 speed;
    /* 0x098 */ u16 spatk;
    /* 0x09A */ u16 spdef;
    /* 0x09C */ MAIL mail;
    /* 0x0D4 */ CAPSULE sealCoords; // seal coords
} PARTYONLYMON;

struct PartyPokemon {
    /* 0x000 */ struct BoxPokemon box;
    /* 0x088 */ PARTYONLYMON party;
}; // size: 0xEC

struct Party
{
    s32 maxPossibleCount;
    s32 count;
    // all the other mons here
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
    ID_PARA_new_get_place,         //1eh    捕まえた場所（なぞの場所対応用）
    ID_PARA_new_birth_place,       //20h    生まれた場所（なぞの場所対応用）

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

struct OVERWORLD_TAG
{
    u16 tag;
    u16 gfx; // index in a081
    u16 callback_params;
};


// frick new formes
struct PLIST_DATA
{
    /* 0x00 */ struct Party *pp;
    /* 0x04 */ void *myitem;
    /* 0x08 */ void *mailblock;
    /* 0x0C */ void *cfg;
    /* 0x10 */ void *tvwk;
    /* 0x14 */ void *reg;
    /* 0x18 */ void *scwk;
    /* 0x1C */ void *fsys;
               void *padsmth;
    /* 0x20+4 */ u8 mode;
    /* 0x21+4 */ u8 type;
    /* 0x22+4 */ u8 ret_sel;
    /* 0x23+4 */ u8 ret_mode;
    /* 0x24+4 */ u16 item; // this is actually 0x28
    /* 0x26+4 */ u16 move;
    /* 0x28+4 */ u8 movepos;
    /* 0x29+4 */ u8 con_mode;
    /* 0x2A+4 */ u8 con_type;
    /* 0x2B+4 */ u8 con_rank;
    /* 0x2C+4 */ u8 in_num[6];
    /* 0x32+4 */ u8 in_min:4;
                 u8 in_max:4;
    /* 0x33+4 */ u8 in_lv;
    /* 0x34+4 */ s32 lv_cnt;
    /* 0x38+4 */ u16 after_mons;
    /* 0x3C+4 */ s32 shinka_cond;
};

struct PLIST_WORK
{
    u8 padding_x0[0x654];
    struct PLIST_DATA *dat;
    u8 padding_x658[0xC65-0x658];
    u8 pos;
};


struct SAVE_MISC_DATA;


// defines from pokeheartgold + new ones
typedef enum EvoMethod
{
    EVO_NONE = 0,
    EVO_FRIENDSHIP,
    EVO_FRIENDSHIP_DAY,
    EVO_FRIENDSHIP_NIGHT,
    EVO_LEVEL,
    EVO_TRADE,
    EVO_TRADE_ITEM,
    EVO_STONE,
    EVO_LEVEL_ATK_GT_DEF,
    EVO_LEVEL_ATK_EQ_DEF,
    EVO_LEVEL_ATK_LT_DEF,
    EVO_LEVEL_PID_LO,
    EVO_LEVEL_PID_HI,
    EVO_LEVEL_NINJASK,
    EVO_LEVEL_SHEDINJA,
    EVO_BEAUTY,
    EVO_STONE_MALE,
    EVO_STONE_FEMALE,
    EVO_ITEM_DAY,
    EVO_ITEM_NIGHT,
    EVO_HAS_MOVE,
    EVO_OTHER_PARTY_MON,
    EVO_LEVEL_MALE,
    EVO_LEVEL_FEMALE,
    EVO_CORONET,
    EVO_ETERNA,
    EVO_ROUTE217,
    EVO_LEVEL_DAY,
    EVO_LEVEL_NIGHT,
    EVO_LEVEL_DUSK,
    EVO_LEVEL_RAIN,
    EVO_HAS_MOVE_TYPE,
    EVO_LEVEL_DARK_TYPE_MON_IN_PARTY,
    EVO_TRADE_SPECIFIC_MON,
    EVO_LEVEL_NATURE_AMPED,
    EVO_LEVEL_NATURE_LOW_KEY,
    EVO_AMOUNT_OF_CRITICAL_HITS,
    EVO_HURT_IN_BATTLE_AMOUNT, // will have to be repurposed eventually i suppose
    //EVO_DARK_SCROLL,  // implemented through a forme-change-esque cut scene
    //EVO_WATER_SCROLL, // implemented through a forme-change-esque cut scene
} EvoMethod;

typedef enum {
    EVOCTX_LEVELUP,
    EVOCTX_TRADE,
    EVOCTX_ITEM_CHECK,
    EVOCTX_ITEM_USE,
} EvolveContext;

struct Evolution {
    u16 method;
    u16 param;
    u16 target;
};

typedef struct
{
    u16 arc_no;
    u16 index_chr;
    u16 index_pal;
    u16 strike_mons;
    u8 form_no;
    u8 dummy[3];
    u32 personal_rnd;
} MON_PIC;

struct FormData
{
    u16 species;

    u16 form_no:15;
    u16 need_rev:1;

    u16 file;
};

typedef struct EncounterInfo
{
    u32 trainerID;
    BOOL unk4;
    BOOL unk8;
    u8 level;
    u8 isEgg;
    u8 ability;
    u8 unkE[2];
    u8 unk11;
} EncounterInfo; // size = 0x12


// BattleMove fields for GetMoveData below
enum
{
    MOVE_DATA_EFFECT,
    MOVE_DATA_PSS_SPLIT,
    MOVE_DATA_BASE_POWER,
    MOVE_DATA_TYPE,
    MOVE_DATA_ACCURACY,
    MOVE_DATA_BASE_PP,
    MOVE_DATA_SECONDARY_EFFECT_CHANCE,
    MOVE_DATA_TARGET,
    MOVE_DATA_PRIORITY,
    MOVE_DATA_FLAGS,
    MOVE_DATA_UNK,
};


// natures
#define NATURE_HARDY    (0)
#define NATURE_LONELY   (1)
#define NATURE_BRAVE    (2)
#define NATURE_ADAMANT  (3)
#define NATURE_NAUGHTY  (4)
#define NATURE_BOLD     (5)
#define NATURE_DOCILE   (6)
#define NATURE_RELAXED  (7)
#define NATURE_IMPISH   (8)
#define NATURE_LAX      (9)
#define NATURE_TIMID   (10)
#define NATURE_HASTY   (11)
#define NATURE_SERIOUS (12)
#define NATURE_JOLLY   (13)
#define NATURE_NAIVE   (14)
#define NATURE_MODEST  (15)
#define NATURE_MILD    (16)
#define NATURE_QUIET   (17)
#define NATURE_BASHFUL (18)
#define NATURE_RASH    (19)
#define NATURE_CALM    (20)
#define NATURE_GENTLE  (21)
#define NATURE_SASSY   (22)
#define NATURE_CAREFUL (23)
#define NATURE_QUIRKY  (24)


#define MAX_EVOS_PER_POKE (9)


#define gDimorphismTable ((u8 *)(0x020FECAE))
#define EGG_MOVES_PER_MON 16 // need to go through later and make this editable
#define NUM_EGG_MOVES_TOTAL 8000


/**Trainer Data File Bitfield**/
#define TRAINER_DATA_TYPE_NOTHING 0x00
#define TRAINER_DATA_TYPE_MOVES 0x01
#define TRAINER_DATA_TYPE_ITEMS 0x02
#define TRAINER_DATA_TYPE_ABILITY 0x04
#define TRAINER_DATA_TYPE_BALL 0x08
#define TRAINER_DATA_TYPE_IV_EV_SET 0x10
#define TRAINER_DATA_TYPE_NATURE_SET 0x20
#define TRAINER_DATA_TYPE_SHINY_LOCK 0x40
#define TRAINER_DATA_TYPE_ADDITIONAL_FLAGS 0x80 //whether or not to read extra flags in trpoke entry


/**Trainer Pokemon File Extra Bitfield**/
#define TRAINER_DATA_EXTRA_TYPE_NOTHING 0x00
#define TRAINER_DATA_EXTRA_TYPE_STATUS 0x01
#define TRAINER_DATA_EXTRA_TYPE_HP 0x02
#define TRAINER_DATA_EXTRA_TYPE_ATK 0x04
#define TRAINER_DATA_EXTRA_TYPE_DEF 0x08
#define TRAINER_DATA_EXTRA_TYPE_SPEED 0x10
#define TRAINER_DATA_EXTRA_TYPE_SP_ATK 0x20
#define TRAINER_DATA_EXTRA_TYPE_SP_DEF 0x40
#define TRAINER_DATA_EXTRA_TYPE_TYPES 0x80
#define TRAINER_DATA_EXTRA_TYPE_PP_COUNTS 0x100
#define TRAINER_DATA_EXTRA_TYPE_NICKNAME 0x200


void* __attribute__((long_call)) AllocMonZeroed(u32 heapid);
void __attribute__((long_call)) ZeroMonData(void* pokemon);
void __attribute__((long_call))PokeParaSetChr(struct PartyPokemon *pp, u16 pokeno, u8 level, u8 pow, u8 chr);
void __attribute__((long_call))PokeParaSet(void *pp,int mons_no,int level,int pow,int rndflag,u32 rnd,int idflag,u32 id);
void __attribute__((long_call)) SetPokemonSee(void *zw, void *pp);
void __attribute__((long_call)) SetPokemonGet(void *zw, void *pp);
void *__attribute__((long_call))PokeStatusPokeParamGet(void*);
void __attribute__((long_call)) RecalcPartyPokemonStats( struct PartyPokemon *ppd );
void __attribute__((long_call)) ResetPartyPokemonAbility( void *ppd );
void __attribute__((long_call)) PokeParaSetSexChr(struct PartyPokemon *pp, u16 pokeno, u8 level, u8 pow, u8 sex, u8 chr, u8 annon);

u32 __attribute__((long_call)) GetMonData(void*,int,void*);
void __attribute__((long_call)) SetMonData(void*,int,void*);
u8 __attribute__((long_call)) PokeFuseiFormNoCheck(u16 mons_no, u8 form_no);
u32 __attribute__((long_call)) GetBoxMonData(void *ppp, int id, void *buf);
struct PartyPokemon * __attribute__((long_call)) PokeParty_GetMemberPointer(void * party, int pos);
u32 __attribute__((long_call)) PokeFormNoPersonalParaGet(int mons_no,int form_no,int para);
u8 __attribute__((long_call)) GetBoxMonGender(void *ppp);
u8 __attribute__((long_call)) PokeSexGetMonsNo(u16 monsno,u32 rnd);
void __attribute__((long_call)) BoxMonSetFastModeOff(void*,BOOL);
BOOL __attribute__((long_call)) BoxMonSetFastModeOn(void*);
void  __attribute__((long_call)) BoxMonDataSet(void *ppp,int id,const void *buf);
void *__attribute__((long_call)) SodateyaWork_GetPokePasoPointer(void *ppd, int ID);
void *__attribute__((long_call)) PokeParaPersonalRndChange(void *pp, u32 personal_rnd);
u8 __attribute__((long_call)) PokeNatureGet(u32);
void __attribute__((long_call)) PokeSetMove(void *ppp);
void __attribute__((long_call)) FillInBoxMonLearnset(void *);
u32 __attribute__((long_call)) PokePersonalParaGet(int species, int parameter);
u32 __attribute__((long_call)) PokeLevelExpGet(int species, int level);
void __attribute__((long_call)) BoxMonInit(void *);
void __attribute__((long_call)) GiratinaBoxPokemonFormChange(struct BoxPokemon *bp);
u32 __attribute__((long_call)) GrashideaFeasibleCheck(struct PartyPokemon *pp);
void __attribute__((long_call)) PokeList_FormDemoOverlayLoad(struct PLIST_WORK *wk);
//void __attribute__((long_call)) PokeParty_Add(void *party, struct PartyPokemon *pp); // defined in battle.h
void __attribute__((long_call)) PokeParty_Delete(void *party, u32 pos);
u32 __attribute__((long_call)) PokeListProc_End(void *proc, int *seq);
u32 __attribute__((long_call)) PokeParaLevelExpGet(struct PartyPokemon *pp);
u32 __attribute__((long_call)) PokeLevelUpCheck(struct PartyPokemon *pp);
BOOL __attribute__((long_call)) PartyHasMon(struct Party *party, u16 species);
BOOL __attribute__((long_call)) MonHasMove(struct PartyPokemon *mon, u16 move);
BOOL __attribute__((long_call)) does_species_have_dimorphism(u32 species);
BOOL __attribute__((long_call)) get_ow_data_file_num(u32 species);
BOOL __attribute__((long_call)) sub_020720FC(struct PartyPokemon *pp, void *profile, u16 item, u16 ball, u32 encounterType, int heapId);
void __attribute__((long_call)) UpdatePokedexWithReceivedSpecies(void *saveData, struct PartyPokemon *pokemon);
void __attribute__((long_call)) InitBoxMonMoveset(struct BoxPokemon *pokemon);
void __attribute__((long_call)) WildMonSetRandomHeldItem(struct PartyPokemon *pokemon, u32 fight_type, u32 item_type);
BOOL __attribute__((long_call)) GrabAndRegisterUnownForm(struct PartyPokemon *pokemon);
BOOL __attribute__((long_call)) MonIsShiny(struct PartyPokemon *pokemon);
BOOL __attribute__((long_call)) BoxMonIsShiny(struct BoxPokemon *pokemon);
void __attribute__((long_call)) PokeParty_Init(struct POKEPARTY *party, int max);
void __attribute__((long_call)) TT_TrainerPokeDataGet(int tr_id, void *tpd);
u8 __attribute__((long_call)) TT_TrainerTypeSexGet(int trtype);
u32 __attribute__((long_call)) TrainerCBSet(int index, struct PartyPokemon* pp, int heap);
void __attribute__((long_call)) try_force_gender_maybe(int species, int formnum, u8 a2, u32 *genderratio);
void __attribute__((long_call)) TrainerMonHandleFrustration(struct PartyPokemon *pp);
void __attribute__((long_call)) SetPartyPokemonMoveAtPos(struct PartyPokemon *pp, u16 movenum, u8 pos);
void __attribute__((long_call)) gf_srand(u32 seed);
u32 __attribute__((long_call)) PokeParty_Add(struct POKEPARTY *party, struct PartyPokemon *poke);
u8 __attribute__((long_call)) GetArceusType(u16 held_effect);
int __attribute__((long_call)) sub_02017FE4(u32 mapsectype, u32);
void __attribute__((long_call)) SetEggStats(struct PartyPokemon *pokemon, int species, u8 metLocation, void *profile, int a4, int a5);
void __attribute__((long_call)) SaveMisc_SetTogepiPersonalityGender(struct SAVE_MISC_DATA * saveMiscData, int personality, u8 gender);
void __attribute__((long_call)) SaveMisc_GetTogepiPersonalityGender(struct SAVE_MISC_DATA * saveMiscData, int *a1, u8 *a2);
void __attribute__((long_call)) sub_0206D038(struct PartyPokemon *pokemon, u32 heapId);
void __attribute__((long_call)) GetSpeciesNameIntoArray(u16 species, u32 heap_id, u16 *dest);



#define gIconPalTable ((u8 *)(0x023D8000 + START_ADDRESS))

// defined in src/pokemon.c
u8 __attribute__((long_call)) GetOtherFormPic(MON_PIC *picdata, u16 mons_no, u8 dir, u8 col, u8 form_no);
int __attribute__((long_call)) PokeOtherFormMonsNoGet(int mons_no, int form_no);
u16 __attribute__((long_call)) GetSpeciesBasedOnForm(int mons_no, int form_no);
u32 __attribute__((long_call)) PokeIconIndexGetByMonsNumber(u32 mons, u32 egg, u32 form_no);
u16 __attribute__((long_call)) PokeIconCgxPatternGet(const void *ppp);
u32 __attribute__((long_call)) PokeIconPalNumGet(u32 mons, u32 form, u32 isegg);
u32 __attribute__((long_call)) GetMonIconPalette(u32 mons, u32 form, u32 isegg);
u16 __attribute__((long_call)) GetPokemonOwNum(u16 species);
u16 __attribute__((long_call)) GetMonHiddenAbility(u16 species, u32 form);
void __attribute__((long_call)) SetBoxMonAbility(void *boxmon);
u32 __attribute__((long_call)) GetSpeciesBaseExp(u32 species, u32 form);
//struct OVERWORLD_TAG * __attribute__((long_call)) grab_overworld_ptr(u16 tag);
//u16 __attribute__((long_call)) get_a081_index_from_tag(u16 tag);
//u32 __attribute__((long_call)) grab_overworld_a081_index(u16 species, u32 form, u32 isFemale);
u32 __attribute__((long_call)) GetGenesectType(u16 item);
u32 __attribute__((long_call)) GetGenesectForme(u16 item);
void __attribute__((long_call)) ArceusBoxPokemonFormeChange(struct BoxPokemon *bp);
u32 __attribute__((long_call)) HandleBoxPokemonFormeChanges(struct BoxPokemon* bp);
u32 __attribute__((long_call)) CanUseRevealMirror(struct PartyPokemon *pp);
u32 __attribute__((long_call)) CanUseDNASplicersGrabSplicerPos(struct PartyPokemon *pp, struct Party *party);
u32 __attribute__((long_call)) UseItemFormeChangeCheck(struct PLIST_WORK *wk, void *dat);
u32 __attribute__((long_call)) PokeListProc_End_Extend(void *proc, int *seq);
void __attribute__((long_call)) ChangePartyPokemonToForm(struct PartyPokemon *pp, u32 form);
void __attribute__((long_call)) SwapPartyPokemonMove(struct PartyPokemon *pp, u32 oldMove, u32 newMove);
void __attribute__((long_call)) ChangePartyPokemonToFormSwapMove(struct PartyPokemon *pp, u32 form, u32 oldMove, u32 newMove);
u32 __attribute__((long_call)) GrabCurrentSeason(void);
void __attribute__((long_call)) UpdatePassiveForms(struct PartyPokemon *pp);
BOOL __attribute__((long_call)) Party_UpdateDeerlingSeasonForm(struct Party *party);
//BOOL __attribute__((long_call)) Party_TryResetShaymin(struct Party *party, int min_max, const struct RTCTime *time);
u8 __attribute__((long_call)) LoadEggMoves(struct PartyPokemon *pokemon, u16 *dest);
u32 __attribute__((long_call)) CheckIfMonsAreEqual(struct PartyPokemon *pokemon1, struct PartyPokemon *pokemon2);
u16 __attribute__((long_call)) GetMonEvolution(struct Party *party, struct PartyPokemon *pokemon, u8 context, u16 usedItem, int *method_ret);
u32 __attribute__((long_call)) GrabSexFromSpeciesAndForm(u32 species, u32 pid, u32 form);
u32 __attribute__((long_call)) GetBoxMonSex(struct BoxPokemon *bp);
u16 __attribute__((long_call)) get_mon_ow_tag(u16 species, u32 form, u32 isFemale);
BOOL __attribute__((long_call)) GiveMon(int heapId, void *saveData, int species, int level, int forme, u8 ability, u16 heldItem, int ball, int encounterType);
//BOOL __attribute__((long_call)) AddWildPartyPokemon(int inTarget, EncounterInfo *encounterInfo, struct PartyPokemon *encounterPartyPokemon, struct BATTLE_PARAM *encounterBattleParam);
void __attribute__((long_call)) CreateBoxMonData(struct BoxPokemon *boxmon, int species, int level, int pow, int rndflag, u32 rnd, int idflag, u32 id);
bool8 __attribute__((long_call)) RevertFormChange(void *pp, u16 species, u8 form_no);
void __attribute__((long_call)) ClearMonMoves(struct PartyPokemon *pokemon);

// defined in src/moves.c--can't just define in battles, sadly.  does need BattleMove structure from battle.h, though
u32 __attribute__((long_call)) GetMoveData(u16 id, u32 field);


#endif
