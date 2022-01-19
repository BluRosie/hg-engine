#ifndef BATTLE_H
#define BATTLE_H

#include "types.h"
#include "sprite.h"

#define MAX_MOVE_NUM 742 //old 467
#define CLIENT_MAX 4

#define TYPE_NORMAL   0x00
#define TYPE_FIGHTING 0x01
#define TYPE_FLYING   0x02
#define TYPE_POISON   0x03
#define TYPE_GROUND   0x04
#define TYPE_ROCK     0x05
#define TYPE_BUG      0x06
#define TYPE_GHOST    0x07
#define TYPE_STEEL    0x08
#define TYPE_MYSTERY  0x09
#define TYPE_FIRE     0x0a
#define TYPE_WATER    0x0b
#define TYPE_GRASS    0x0c
#define TYPE_ELECTRIC 0x0d
#define TYPE_PSYCHIC  0x0e
#define TYPE_ICE      0x0f
#define TYPE_DRAGON   0x10
#define TYPE_DARK     0x11

#define SELECT_FIGHT_COMMAND 1
#define SELECT_ITEM_COMMAND 2
#define SELECT_POKEMON_COMMAND 3
#define SELECT_ESCAPE_COMMAND 4


// add effect defines
#define ADD_STATUS_NO_ABILITY (0x08000000)

#define ADD_EFFECT_INDIRECT 2
#define ADD_EFFECT_ABILITY 3

#define ADD_EFFECT_HELD_ITEM 5

#define ADD_STATE_ATTACK_UP 0xF
#define ADD_STATE_DEFENSE_UP 0x10
#define ADD_STATE_SPEED_UP 0x11
#define ADD_STATE_SP_ATK_UP 0x12
#define ADD_STATE_SP_DEF_UP 0x13
#define ADD_STATE_ACCURACY_UP 0x14
#define ADD_STATE_EVASION_UP 0x15
#define ADD_STATE_ATTACK_DOWN 0x16
#define ADD_STATE_DEFENSE_DOWN 0x17
#define ADD_STATE_SPEED_DOWN 0x18
#define ADD_STATE_SP_ATK_DOWN 0x19
#define ADD_STATE_SP_DEF_DOWN 0x1A
#define ADD_STATE_ACCURACY_DOWN 0x1B
#define ADD_STATE_EVASION_DOWN 0x1C

#define ADD_STATE_ATTACK_UP_2 0x27
#define ADD_STATE_DEFENSE_UP_2 0x28
#define ADD_STATE_SPEED_UP_2 0x29
#define ADD_STATE_SP_ATK_UP_2 0x2A
#define ADD_STATE_SP_DEF_UP_2 0x2B
#define ADD_STATE_ACCURACY_UP_2 0x2C
#define ADD_STATE_EVASION_UP_2 0x2D
#define ADD_STATE_ATTACK_DOWN_2  0x2E
#define ADD_STATE_DEFENSE_DOWN_2 0x2F
#define ADD_STATE_SPEED_DOWN_2 0x30
#define ADD_STATE_SP_ATK_DOWN_2 0x31
#define ADD_STATE_SP_DEF_DOWN_2 0x32
#define ADD_STATE_ACCURACY_DOWN_2 0x33
#define ADD_STATE_EVASION_DOWN_2 0x34


// defines that i believe are straight from source
#define SERVER_STATUS_FLAG2_U_TURN          (0x00000010)        //u-turn flag

#define MOVE_STATUS_FLAG_MISS                   (0x00000001)
#define MOVE_STATUS_FLAG_SUPER_EFFECTIVE        (0x00000002)
#define MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE     (0x00000004)
#define MOVE_STATUS_FLAG_NOT_EFFECTIVE          (0x00000008)
#define WAZA_STATUS_FLAG_CRITICAL               (0x00000010)
#define WAZA_STATUS_FLAG_ICHIGEKI               (0x00000020)
#define WAZA_STATUS_FLAG_UMAKUKIMARAN           (0x00000040)
#define WAZA_STATUS_FLAG_KORAETA                (0x00000080)
#define WAZA_STATUS_FLAG_ITEM_KORAETA           (0x00000100)
#define WAZA_STATUS_FLAG_PP_NONE                (0x00000200)
#define WAZA_STATUS_FLAG_LOCK_ON                (0x00000400)
#define WAZA_STATUS_FLAG_JIMEN_NOHIT            (0x00000800)
#define WAZA_STATUS_FLAG_ICHIGEKI_NOHIT         (0x00001000)
#define WAZA_STATUS_FLAG_NANIMOOKORAN           (0x00002000)
#define WAZA_STATUS_FLAG_RENZOKU_NOHIT          (0x00004000)
#define WAZA_STATUS_FLAG_MAMORU_NOHIT           (0x00008000)
#define WAZA_STATUS_FLAG_KIE_NOHIT              (0x00010000)
#define WAZA_STATUS_FLAG_WAZA_KOYUU_NOHIT       (0x00020000)
#define WAZA_STATUS_FLAG_BATSUGUN_NOHIT         (0x00040000)
#define WAZA_STATUS_FLAG_GANZYOU_NOHIT          (0x00080000)
#define WAZA_STATUS_FLAG_DENZIHUYUU_NOHIT       (0x00100000)

#define WAZA_STATUS_FLAG_SIPPAI                 (0x80000000)

#define WAZA_STATUS_FLAG_NOHIT_OFF      (MOVE_STATUS_FLAG_MISS^0xffffffff)
#define WAZA_STATUS_FLAG_BATSUGUN_OFF   (WAZA_STATUS_FLAG_BATSUGUN^0xffffffff)
#define WAZA_STATUS_FLAG_IMAHITOTSU_OFF (WAZA_STATUS_FLAG_IMAHITOTSU^0xffffffff)

#define WAZA_STATUS_FLAG_HAZURE         (MOVE_STATUS_FLAG_MISS|MOVE_STATUS_FLAG_NOT_EFFECTIVE|\
                                         WAZA_STATUS_FLAG_UMAKUKIMARAN|\
                                         WAZA_STATUS_FLAG_JIMEN_NOHIT|\
                                         WAZA_STATUS_FLAG_ICHIGEKI_NOHIT|\
                                         WAZA_STATUS_FLAG_RENZOKU_NOHIT|\
                                         WAZA_STATUS_FLAG_MAMORU_NOHIT|\
                                         WAZA_STATUS_FLAG_KIE_NOHIT|\
                                         WAZA_STATUS_FLAG_WAZA_KOYUU_NOHIT|\
                                         WAZA_STATUS_FLAG_BATSUGUN_NOHIT|\
                                         WAZA_STATUS_FLAG_GANZYOU_NOHIT|\
                                         WAZA_STATUS_FLAG_DENZIHUYUU_NOHIT)

#define WAZA_STATUS_FLAG_NO_OUT         (WAZA_STATUS_FLAG_HAZURE|\
                                         WAZA_STATUS_FLAG_PP_NONE|\
                                         WAZA_STATUS_FLAG_SIPPAI)

#define WAZA_STATUS_FLAG_SOUSAI         (WAZA_STATUS_FLAG_BATSUGUN|\
                                         WAZA_STATUS_FLAG_IMAHITOTSU)





// stat definitions
#define STAT_HP             (0x00)
#define STAT_ATTACK         (0x01)
#define STAT_DEFENSE        (0x02)
#define STAT_SPEED          (0x03)
#define STAT_SPATK          (0x04)
#define STAT_SPDEF          (0x05)
#define STAT_ACCURACY       (0x06)
#define STAT_EVASION        (0x07)
#define STAT_MAX            (0x08)

// battle type defines
#define BATTLE_TYPE_SINGLE 0x00
#define BATTLE_TYPE_TRAINER 0x01
#define BATTLE_TYPE_DOUBLE 0x02
#define BATTLE_TYPE_WIRELESS 0x04
#define BATTLE_TYPE_MULTI 0x08
#define BATTLE_TYPE_TAG 0x10
#define BATTLE_TYPE_SAFARI 0x20
#define BATTLE_TYPE_NPC_MULTI 0x40
#define BATTLE_TYPE_BATTLE_TOWER 0x80
#define BATTLE_TYPE_ROAMER 0x100
#define BATTLE_TYPE_POKE_PARK 0x200
#define BATTLE_TYPE_CATCHING_DEMO 0x400

// move effect flags/waza_kouka
#define MOVE_EFFECT_FLAG_CHARGE      (0x00000200)
#define MOVE_EFFECT_NO_CRITICAL_HITS (0x00008000)
#define MOVE_EFFECT_FLAG_MUD_SPORT   (0x00010000)
#define MOVE_EFFECT_FLAG_WATER_SPORT (0x00020000)
#define MOVE_EFFECT_FLAG_MIRACLE_EYE (0x00400000)

// status condition flags
#define STATUS_FLAG_ASLEEP (0x07)
#define STATUS_FLAG_POISONED (0x08)
#define STATUS_FLAG_BURNED (0x10)
#define STATUS_FLAG_FROZEN (0x20)
#define STATUS_FLAG_PARALYZED (0x40)
#define STATUS_FLAG_BADLY_POISONED (0x80)
#define STATUS_FLAG_TOXIC_COUNT (0xf00)

#define STATUS_POISON_ANY (STATUS_FLAG_POISONED | STATUS_FLAG_BADLY_POISONED | STATUS_FLAG_TOXIC_COUNT)
#define STATUS_ANY_PERSISTENT (STATUS_FLAG_ASLEEP | STATUS_POISON_ANY | STATUS_FLAG_BURNED | STATUS_FLAG_FROZEN | STATUS_FLAG_PARALYZED)

// server status flags
#define SERVER_STATUS_FLAG_x20 (0x00000020)
#define SERVER_STATUS_FLAG_OTHER_ACCURACY_CALC (0x00000400)
#define SERVER_STATUS_FLAG_STAT_CHANGE (0x00020000)

// server status2 falgs
#define SERVER_STATUS2_FLAG_x10 (0x00000010)

// status2/condition2 flags
#define STATUS2_FLAG_CONFUSED (0x00000007)
#define STATUS2_FLAG_INFATURATION (0x000f0000)
#define STATUS2_FLAG_FOCUS_ENERGY (0x00100000)
#define STATUS2_FLAG_TRANSFORMED (0x00200000)
#define STATUS2_FLAG_SUBSTITUTE (0x01000000)
#define STATUS2_FLAG_FORESIGHT (0x20000000)

// side status flags
#define SIDE_STATUS_REFLECT (0x1)
#define SIDE_STATUS_LIGHT_SCREEN (0x2)
#define SIDE_STATUS_TAILWIND (0x300)
#define SIDE_STATUS_LUCKY_CHANT (0x7000)

// physical/special split values
#define SPLIT_PHYSICAL 0
#define SPLIT_SPECIAL 1
#define SPLIT_STATUS 2

// field status
#define WEATHER_RAIN                    (0x00000001)
#define WEATHER_RAIN_PERMANENT          (0x00000002)
#define WEATHER_RAIN_ANY                (WEATHER_RAIN | WEATHER_RAIN_PERMANENT)
#define WEATHER_SANDSTORM               (0x00000004)
#define WEATHER_SANDSTORM_PERMANENT     (0x00000008)
#define WEATHER_SANDSTORM_ANY           (WEATHER_SANDSTORM | WEATHER_SANDSTORM_PERMANENT)
#define WEATHER_SUNNY                   (0x00000010)
#define WEATHER_SUNNY_PERMANENT         (0x00000020)
#define WEATHER_SUNNY_ANY               (WEATHER_SUNNY | WEATHER_SUNNY_PERMANENT)
#define WEATHER_HAIL                    (0x00000040)
#define WEATHER_HAIL_PERMANENT          (0x00000080)
#define WEATHER_HAIL_ANY                (WEATHER_HAIL | WEATHER_HAIL_PERMANENT)

#define FIELD_STATUS_UPROAR             (0x00000f00)
#define FIELD_STATUS_GRAVITY            (0x00007000)
#define FIELD_STATUS_FOG                (0x00008000)
#define FIELD_STATUS_TRICK_ROOM         (0x00070000)

// opponent positions
#define BATTLER_POSITION_SIDE_RIGHT (0)
#define BATTLER_POSITION_SIDE_LEFT  (2)

// move flags for BattleMove flag field
#define FLAG_CONTACT     (0x01)
#define FLAG_PROTECT     (0x02)
#define FLAG_MAGIC_COAT  (0x04)
#define FLAG_SNATCH      (0x08)
#define FLAG_MIRROR_MOVE (0x10)
#define FLAG_KINGS_ROCK  (0x20)
#define FLAG_KEEP_HP_BAR (0x40)
#define FLAG_HIDE_SHADOW (0x80)

#define BATTLER_ALLY(client) (client ^ 2)
#define BATTLER_OPPONENT(client) (client ^ 1)
#define BATTLER_ACROSS(client) (client ^ 3)

#define	TAG_NONE						(0)		//タグなし

#define	TAG_NONE_DIR					(1)		//タグなし（てき、みかた判定あり）
#define	TAG_NICK						(2)		//nickname
#define	TAG_WAZA						(3)		//技名
#define	TAG_STAT						(4)		//ステータス名
#define	TAG_ITEM						(5)		//道具名
#define	TAG_NUM							(6)		//数値
#define	TAG_NUMS						(7)		//数値（右詰め）
#define	TAG_TRNAME						(8)		//trainer名

#define	TAG_NICK_NICK					(9)		//nickname		nickname
#define	TAG_NICK_WAZA					(10)	//nickname		技名
#define	TAG_NICK_TOKU					(11)	//nickname		特性名
#define	TAG_NICK_STAT					(12)	//nickname		ステータス名
#define	TAG_NICK_TYPE					(13)	//nickname		タイプ名
#define	TAG_NICK_POKE					(14)	//nickname		ポケモン名
#define	TAG_NICK_ITEM					(15)	//nickname		道具名
#define	TAG_NICK_PLOC					(16)	//nickname		ポロック名
#define	TAG_NICK_NUM					(17)	//nickname		数値
#define	TAG_NICK_TRNAME					(18)	//nickname		trainer名
#define	TAG_NICK_BOX					(19)	//nickname		ボックス名
#define	TAG_WAZA_DIR					(20)	//技名（てき、みかた判定あり）
#define	TAG_WAZA_NICK					(21)	//技名			nickname
#define	TAG_WAZA_WAZA					(22)	//技名			技名
#define	TAG_TOKU_NICK					(23)	//特性名		nickname
#define	TAG_ITEM_WAZA					(24)	//道具名		技名
#define	TAG_NUM_NUM						(25)	//数値			数値
#define	TAG_TRNAME_TRNAME				(26)	//trainer名		trainer名
#define	TAG_TRNAME_NICK					(27)	//trainer名		nickname
#define	TAG_TRNAME_ITEM					(28)	//trainer名		道具名
#define	TAG_TRNAME_NUM					(29)	//trainer名		数値
#define	TAG_TRTYPE_TRNAME				(30)	//trainer種別	trainer名

#define	TAG_NICK_NICK_WAZA				(31)	//nickname		nickname		技名
#define	TAG_NICK_NICK_TOKU				(32)	//nickname		nickname		特性名
#define	TAG_NICK_NICK_ITEM				(33)	//nickname		nickname		道具名
#define	TAG_NICK_WAZA_WAZA				(34)	//nickname		技名			技名
#define	TAG_NICK_WAZA_NUM				(35)	//nickname		技名			数値
#define	TAG_NICK_TOKU_NICK				(36)	//nickname		特性名			nickname
#define	TAG_NICK_TOKU_WAZA				(37)	//nickname		特性名			技名
#define	TAG_NICK_TOKU_ITEM				(38)	//nickname		特性名			道具名
#define	TAG_NICK_TOKU_STAT				(39)	//nickname		特性名			ステータス名
#define	TAG_NICK_TOKU_TYPE				(40)	//nickname		特性名			タイプ名
#define	TAG_NICK_TOKU_COND				(41)	//nickname		特性名			状態異常名
#define	TAG_NICK_TOKU_NUM				(42)	//nickname		特性名			数値
#define	TAG_NICK_ITEM_NICK				(43)	//nickname		道具名			nickname
#define	TAG_NICK_ITEM_WAZA				(44)	//nickname		道具名			技名
#define	TAG_NICK_ITEM_STAT				(45)	//nickname		道具名			ステータス名
#define	TAG_NICK_ITEM_COND				(46)	//nickname		道具名			状態異常名
#define	TAG_NICK_BOX_BOX				(47)	//nickname		ボックス名		ボックス名
#define	TAG_ITEM_NICK_TASTE				(48)	//道具名		nickname		木の実の味
#define	TAG_TRNAME_NICK_NICK			(49)	//trainer名		nickname		nickname
#define	TAG_TRTYPE_TRNAME_NICK			(50)	//trainer種別	trainer名		nickname
#define	TAG_TRTYPE_TRNAME_ITEM			(51)	//trainer種別	trainer名		道具名

#define	TAG_NICK_TOKU_NICK_WAZA			(52)	//nickname		特性名			nickname		技名
#define	TAG_NICK_TOKU_NICK_TOKU			(53)	//nickname		特性名			nickname		特性名
#define	TAG_NICK_TOKU_NICK_STAT			(54)	//nickname		特性名			nickname		ステータス名
#define	TAG_NICK_ITEM_NICK_ITEM			(55)	//nickname		道具名			nickname		道具名
#define	TAG_TRNAME_NICK_TRNAME_NICK		(56)	//trainer名		nickname		trainer名		nickname
#define	TAG_TRTYPE_TRNAME_NICK_NICK		(57)	//trainer種別	trainer名		nickname		nickname
#define	TAG_TRTYPE_TRNAME_NICK_TRNAME	(58)	//trainer種別	trainer名		nickname		trainer名
#define	TAG_TRTYPE_TRNAME_TRTYPE_TRNAME	(59)	//trainer種別	trainer名		trainer種別		trainer名

#define	TAG_TRTYPE_TRNAME_NICKx2		(60)	//trainer種別	trainer名		nickname ｘ２

#define	TAG_NO_DIR						(0x80)	//敵、味方、判定をしない
#define	TAG_DIR							(0x40)	//敵、味方、判定あり
#define	TAG_NO_DIR_OFF					(0x3f)	//敵、味方、判定をしない


// fuck statbuffchange
#define STATUS_EFF_UP (12)
#define STATUS_EFF_DOWN (13)

// msg work
enum
{
    MSG_HEAL_SLEEP = 0,
    MSG_HEAL_POISON,
    MSG_HEAL_BURN,
    MSG_HEAL_PARALYSIS,
    MSG_HEAL_FROZEN,
};

// archives to load from
enum
{
    FILE_MOVE_BATTLE_SCRIPTS = 0,
    FILE_BATTLE_SUB_SCRIPTS,
};


struct __attribute__((packed)) sDamageCalc
{
    u16 species;
    s16 hp;
    u16 maxhp;
    u16 dummy;
    int item_held_effect;
    int item_power;

    u32 condition;

    u8 ability;
    u8 sex;
    u8 type1;
    u8 type2;
};

struct __attribute__((packed)) BattleMove
{
    u16 effect;
    u8 split;
    u8 power;

    u8 type;
    u8 accuracy;
    u8 pp;
    u8 secondaryEffectChance;

    u16 target;
    s8 priority;
    u8 flag;
    u8 unk[4];
};

struct __attribute__((packed)) OneTurnEffect
{
    u32 struggle_flag : 1; //わるあがきフラグ
    u32 pp_dec_flag : 1;    //PPを減らしたフラグ
    u32 mamoru_flag : 1;    //まもるフラグ
    u32 helping_hand_flag : 1;  //てだすけフラグ
    u32 magic_cort_flag : 1;
    u32 yokodori_flag : 1;
    u32 haneyasume_flag : 1;
    u32 escape_flag : 2;  //にげたフラグ（特性or装備道具効果）
    u32 koraeru_flag : 1; ///<こらえるフラグ
    u32 : 22;

    int butsuri_otf_damage[4];
    int butsuri_otf_client;
    int butsuri_otf_client_bit;
    int tokusyu_otf_damage[4];
    int tokusyu_otf_client;
    int tokusyu_otf_client_bit;
    int last_otf_damage;
    int last_otf_client;
    int dameoshi_damage;
};

struct __attribute__((packed)) OneSelfTurnEffect
{
    u32 no_pressure_flag : 1;  ///<特性プレッシャーの効果を受けない
    u32 hiraisin_flag : 1;     ///<特性ひらいしんの効果が発動
    u32 yobimizu_flag : 1;     ///<特性よびみずのの効果が発動
    u32 mold_breaker_flag : 1;   ///<特性かたやぶりの効果が発動
    u32 trickroom_flag : 1;    ///<トリックルーム発動
    u32 item_koraeru_flag : 1; ///<こらえるフラグ（装備道具効果）
    u32 korogaru_count : 3;    ///<ころがるカウント（メトロノーム判定で使用）
    u32 : 23;                  ///<ステータス上昇下降エフェクトを発動

    int physical_damage;   ///存在物理伤害量
    int physical_damager;   ///<物理攻撃したクライアント
    int special_damage;   ///存在特殊伤害量
    int special_damager;   ///<特殊攻撃したクライアント
    int status_flag;           ///<ステータスフラグ（battle_server.hにdefine定義）
    int kaigara_damage;        ///<かいがらのすず用ダメージ量
};

struct __attribute__((packed)) battle_moveflag
{
    u32 kanashibari_count : 3;      ///<かなしばりカウンタ
    u32 encore_count : 3;           ///<アンコールカウンタ
    u32 juuden_count : 2;           ///<じゅうでんカウンタ
    u32 chouhatsu_count : 3;        ///<ちょうはつカウンタ
    u32 success_count : 2;          ///<まもる、こらえるが成功したカウンタ
    u32 horobinouta_count : 2;      ///<ほろびのうたカウンタ
    u32 korogaru_count : 3;         ///<ころがるカウンタ
    u32 renzokugiri_count : 3;      ///<れんぞくぎりカウンタ
    u32 takuwaeru_count : 3;        ///<たくわえるカウンタ
    u32 takuwaeru_def_count : 3;    ///<たくわえるカウンタ（防御アップ）
    u32 takuwaeru_spedef_count : 3; ///<たくわえるカウンタ（特防アップ）
    u32 namake_bit : 1;             ///<なまけビット
    u32 moraibi_flag : 1;           ///<もらいびフラグ

    u32 lockon_client_no : 2;    ///<ロックオンされたClientNo
    u32 monomane_bit : 4;        ///<ものまねビット
    u32 shime_client_no : 2;     ///<しめつけたClientNo
    u32 manazashi_client_no : 2; ///<くろいまなざしをしたClientNo
    u32 totteoki_count : 3;      ///<とっておき用技を出したフラグ
    u32 denzihuyuu_count : 3;    ///<でんじふゆうカウンタ
    u32 healblock_count : 3;     ///<ヒールブロックカウンタ
    u32 embargo_count : 3;       ///<シャットアウトカウンタ
    u32 unburden_flag : 1;       ///<かるわざフラグ
    u32 metronome_work : 4;      ///<メトロノームワーク
    u32 boost_accuracy_once : 1;         ///<装備効果で一度だけ命中UPフラグ
    u32 raise_speed_once : 1;         ///<装備効果で一度だけ先制攻撃フラグ
    u32 quick_claw_flag : 1;
    u32 sakidori_flag : 1;
    u32 : 1;

    int handou_count;
    int fake_out_count;
    int slow_start_count;
    int sakidori_count;
    int migawari_hp;
    u32 henshin_rnd;

    u16 kanashibari_wazano;
    u16 shime_wazano;
    u16 encore_wazano;
    u16 encore_wazapos;
    u16 totteoki_wazano[4];
    u16 kodawari_wazano;
    u16 henshin_sex;

    int item_hp_recover;
};
struct __attribute__((packed)) BattlePokemon
{
    u16 species;
    u16 attack;
    u16 defense;
    u16 speed;
    u16 spatk;
    u16 spdef;
    u16 move[4];
    u32 hp_iv : 5;
    u32 atk_iv : 5;
    u32 def_iv : 5;
    u32 spe_iv : 5;
    u32 spatk_iv : 5;
    u32 spdef_iv : 5;
    u32 is_egg : 1;
    u32 have_nickname : 1;
    s8 states[8];
    int weight;
    u8 type1; //25
    u8 type2;
    u8 form_no : 5;
    u8 rare : 1;
    u8 ability;

    u32 appear_check_flag : 1;   //2ch  登場時天候系特性チェックをしたかどうか
    u32 intimidate_flag : 1;          //2ch  登場時いかくチェックしたかどうか
    u32 trace_flag : 1;          //2ch  登場時トレースチェックしたかどうか
    u32 download_flag : 1;       //2ch  登場時ダウンロードチェック
    u32 anticipation_flag : 1;     //2ch  登場時きけんよちチェック
    u32 forewarn_flag : 1;        //2ch  登場時よちむチェック
    u32 slow_start_flag : 1;     //2ch  登場時スロースタートチェック
    u32 slow_start_end_flag : 1; //2ch  スロースタート終了チェック
    u32 frisk_flag : 1;      //2ch  登場時おみとおしチェック
    u32 mold_breaker_flag : 1;     //2ch  登場時かたやぶりチェック
    u32 pressure_flag : 1;       //2ch  登場時プレッシャーチェック
    u32 canMega : 1;
    u32 unnerve_flag : 1;
    u32 dark_aura_flag : 1;
    u32 fairy_aura_flag : 1;
    u32 aura_break_flag : 1;
    u32 : 19;                    //2ch

    u8 pp[4];
    u8 pp_count[4];
    u8 level;
    u8 friend;
    u16 nickname[11];
    s32 hp;
    u32 maxhp;
    u16 oyaname[8];
    u32 exp; //68
    u32 personal_rnd;
    u32 condition;
    u32 condition2;
    u32 id_no;
    u16 item;
    u16 dummy;
    u8 hit_count;
    u8 message_flag;
    u8 sex : 4;
    u8 oyasex : 4;
    u8 get_ball;
    u32 effect_of_moves; // think like charge, lock on
    u32 effect_of_moves_temp;

    struct __attribute__((packed)) battle_moveflag moveeffect;
};

typedef struct {
    u32 alloc_size;
    u32 alloc_ofs;
    u16 type;       // Vram確保した表示面
    u16 conttype;   // 管理方法
} __attribute__((packed)) CHAR_MANAGER_ALLOCDATA;

struct __attribute__((packed)) field_condition_count
{
    u32     weather_count;                      ///<天候変化用カウンタ

    u8      miraiyochi_count[CLIENT_MAX];       ///<みらいよちカウンタ
    u8      negaigoto_count[CLIENT_MAX];        ///<ねがいごとカウンタ

    u16     miraiyochi_wazano[CLIENT_MAX];      ///<みらいよち技ナンバーワーク
    int     miraiyochi_client_no[CLIENT_MAX];   ///<みらいよちしたClientNo
    s32     miraiyochi_damage[CLIENT_MAX];      ///<みらいよちダメージ

    u8      negaigoto_sel_mons[CLIENT_MAX];     ///<ねがいごとをしたポケモンの手持ちの位置
};

struct __attribute__((packed)) tcb_skill_intp_work
{
    void *bw;
    struct BattleStruct *sp;
    void *bms;
    void *cap[2]; ///<控えポケモンレベルアップ用アイコン表示
    void *fop;    ///<控えポケモンレベルアップ用アイコン表示
    CHAR_MANAGER_ALLOCDATA cma;
    int flag;
    int seq_no;
    int ballID; ///<ポケモンゲット時の投げるボールID
    int work[8];
    void *work_p[2]; ///<汎用ワークポインタ
};

typedef struct
{
    u8  command_code;
    u8  msg_tag;
    u16 msg_id;
    int msg_para[6];
    int msg_keta;
    int msg_client;
} __attribute__((packed)) MESSAGE_PARAM;

struct __attribute__((packed)) side_condition_work
{
    u32     butsuri_guard_client    : 2;        ///<物理ガード効果を発生させたClientNoを格納
    u32     butsuri_guard_count     : 3;        ///<物理ガード効果カウンタ
    u32     tokusyu_guard_client    : 2;        ///<特殊ガード効果を発生させたClientNoを格納
    u32     tokusyu_guard_count     : 3;        ///<特殊ガード効果カウンタ
    u32     shiroikiri_client       : 2;        ///<しろいきり効果を発生させたClientNoを格納
    u32     mist_count        : 3;        ///<しろいきり効果カウンタ
    u32     shinpi_client           : 2;        ///<しんぴのまもり効果を発生させたClientNoを格納
    u32     shinpi_count            : 3;        ///<しんぴのまもり効果カウンタ

    u32     konoyubitomare_flag     : 1;        ///<このゆびとまれフラグ
    u32     konoyubitomare_client   : 2;        ///<このゆびとまれを発動したClientNo
    u32     hatakiotosu_item        : 6;        ///<はたきおとすされているSelMonsNoをbitで格納
    u32     oikaze_count            : 3;        ///<おいかぜカウンタ

    u32     makibisi_count          : 2;        ///<まきびしカウンタ
    u32     dokubisi_count          : 2;        ///<どくびしカウンタ
    u32                             :28;
};

struct __attribute__((packed)) BattleStruct
{
    /*0x0*/ u8 com_seq_no[CLIENT_MAX];
    /*0x4*/ u8 ret_seq_no[CLIENT_MAX];
    /*0x8*/ int server_seq_no;
    /*0xC*/ int next_server_seq_no;
    /*0x10*/ int fcc_seq_no;
    /*0x14*/ int fcc_work;
    /*0x18*/ int pcc_seq_no;
    /*0x1C*/ int pcc_work;
    /*0x20*/ int scc_seq_no;
    /*0x24*/ int scc_work;
    /*0x28*/ int sba_seq_no;
    /*0x2C*/ int sba_work;
    /*0x30*/ int swhac_seq_no;
    /*0x34*/ int swhac_work;
    /*0x38*/ int swoam_type;
    /*0x3C*/ int swoam_seq_no;
    /*0x40*/ int swoak_seq_no;
    /*0x44*/ int swoak_work;
    /*0x48*/ int wb_seq_no;
    /*0x4c*/ int woc_seq_no;
    /*0x50*/ int ssc_seq_no;
    /*0x54*/ int stc_seq_no;
    /*0x58*/ int switch_in_check_seq_no;
    /*0x5C*/ int svc_work;

    /*0x60*/ int waza_seq_adrs;
    /*0x64*/ int attack_client;
    /*0x68*/ int attack_client_temp;
    /*0x6C*/ int defence_client;
    /*0x70*/ int defence_client_temp;
    /*0x74*/ int fainting_client;
    /*0x78*/ int reshuffle_client;
    /*0x7C*/ int reshuffle_client_temp;
    /*0x80*/ int ability_client;
    /*0x84*/ int magic_cort_client;

    /*0x88*/ int addeffect_type;
    /*0x8C*/ int addeffect_param;
    /*0x90*/ int addeffect_flag;

    /*0x94*/ int state_client;
    /*0x98*/ int push_client;                            
    /*0x9C*/ int get_exp;                                
    /*0xA0*/ int gakusyuu_get_exp;                       
    /*0xA4*/ u32 get_exp_right_flag[2];                  
    /*0xAC*/ int skill_arc_kind;                         
    /*0xB0*/ int skill_arc_index;                        
    /*0xB4*/ int skill_seq_no;                           
    /*0xB8*/ int push_count;                             
    /*0xBC*/ int push_skill_arc_kind[4];   
    /*0xCC*/ int push_skill_arc_index[4];  
    /*0xDC*/ int push_skill_seq_no[4];     
    /*0xEC*/ int agi_cnt;                                
    /*0xF0*/ int wait_cnt;                               
    /*0xF4*/ MESSAGE_PARAM mp;
    /*0x118*/ int client_work;
    /*0x11C*/ int attack_client_work;
    /*0x120*/ int defence_client_work;
    /*0x124*/ int waza_work;
    /*0x128*/ int item_work;
    /*0x12C*/ int tokusei_work;
    /*0x130*/ int msg_work;
    /*0x134*/ int calc_work;
    /*0x138*/ int temp_work;
    /*0x13C*/ u32 client_status[CLIENT_MAX];
    /*0x14C*/ u32 koban_counter;
    /*0x150*/ int total_turn;
    /*0x154*/ int total_hinshi[CLIENT_MAX];
    /*0x164*/ int total_damage[CLIENT_MAX];
    /*0x174*/ int sakidori_total_turn;
    /*0x178*/ struct tcb_skill_intp_work *tciw;
    /*0x17C*/ void *work;
    /*0x180*/ u32 field_condition;
    /*0x184*/ struct field_condition_count fcc;
    /*0x1BC*/ u32 side_condition[2];
    /*0x1C4*/ struct side_condition_work scw[2];
    /*0x1D4*/ struct OneTurnEffect oneTurnFlag[4];
    /*0x2D4*/ struct OneSelfTurnEffect oneSelfFlag[4];
    /*0x344*/ u8 dummy3[0x9A]; // wocf, AIWT start

    /*0x3DE*/ struct BattleMove old_moveTbl[467 + 1]; //old
    /*0x211E*/ u8 dummy6[0x1E]; // fuck the rest of ai stuff
    /*0x213C*/ u32 server_status_flag;
    /*0x2140*/ u32 server_status_flag2;
    /*0x2144*/ int damage;
    /*0x2148*/ int hit_damage;
    /*0x214C*/ int critical_count;
    /*0x2150*/ int critical;
    /*0x2154*/ int damage_power;
    /*0x2158*/ int damage_value;
    /*0x215C*/ int hp_calc_work;
    /*0x2160*/ int move_type;
    /*0x2164*/ int waza_eff_cnt;
    /*0x2168*/ int money_multiplier;
    /*0x216C*/ u32 waza_status_flag;

    /*0x2170*/ u32 add_status_flag_direct;
    u32 add_status_flag_indirect;
    u32 add_status_flag_tokusei;
    u8 renzoku_count;
    u8 renzoku_count_temp;
    u8 client_loop;
    u8 hukurodataki_count;

    u32 loop_flag;
    u32 waza_out_check_on_off;
    u32 loop_hit_check;

    u32 condition2_off_req[CLIENT_MAX];
    /*0x219C*/ u8 sel_mons_no[CLIENT_MAX];
    /*0x21A0*/ u8 reshuffle_sel_mons_no[CLIENT_MAX];
    /*0x21A4*/ u8 ai_reshuffle_sel_mons_no[CLIENT_MAX];
    /*0x21A8*/ u32 client_act_work[4][4];
    /*0x21E8*/ u8 client_agi_work[4];
    /*0x21EC*/ u8 turn_order[4];
    /*0x21F0*/ u32 psp_agi_point[4];
    /*0x2200*/ u8 ServerQue[4][4][16];
    /*0x2300*/ u8 server_buffer[4][256];
    /*0x2700*/ int SkillSeqWork[400];
    /*0x2D40*/ struct BattlePokemon battlemon[CLIENT_MAX]; //0xc0
    /*0x3040*/ u32 waza_no_temp;
    /*0x3044*/ u32 current_move_index;
    // u8 unk_bytes4[0x74];
    
    /*0x3048*/ u32 waza_no_last;
    /*0x304C*/ u32 waza_no_keep[CLIENT_MAX];
    
    /*0x305C*/ u16 waza_no_mamoru[CLIENT_MAX];
    /*0x    */ u16 waza_no_hit[CLIENT_MAX];
    /*0x    */ u16 waza_no_hit_client[CLIENT_MAX];
    /*0x    */ u16 waza_no_hit_type[CLIENT_MAX];
    /*0x    */ u16 waza_no_old[CLIENT_MAX];
    /*0x    */ u16 waza_no_oumu[CLIENT_MAX];
    /*0x    */ u16 waza_no_oumu_hit[CLIENT_MAX][CLIENT_MAX];
    /*0x    */ u16 waza_no_sketch[CLIENT_MAX];
    /*0x    */ u16 waza_no_select[CLIENT_MAX];
    
    /*0x30BC*/ u16 waza_no_pos[CLIENT_MAX];
    /*0x30C4*/ //u8 unk_bytes_4[0x44];
    /*0x    */ u16 waza_no_texture2[CLIENT_MAX];
    /*0x    */ u16 waza_no_texture2_client[CLIENT_MAX];
    /*0x    */ u16 waza_no_texture2_type[CLIENT_MAX];
    /*0x    */ u16 waza_no_metronome[CLIENT_MAX];
        
    /*0x    */ int store_damage[CLIENT_MAX];                    ///<がまん用のダメージストックワーク
        
    /*0x    */ int client_no_hit[CLIENT_MAX];                   ///<技を最後に当てたClientNoを格納
        
    /*0x    */ int client_no_agi;
    
    /*0x3108*/ u8 no_reshuffle_client;
    /*0x3109*/ u8 level_up_pokemon;
    /*0x310A*/ u16 que_check_wait;
    /*0x310C*/ u16 agi_rand[CLIENT_MAX];
    /*0x3114*/ int nagetsukeru_work;
    /*0x3118*/ int nagetsukeru_seq_no;
    /*0x311C*/ u8 safari_get_count;
    /*0x311D*/ u8 safari_escape_count;
    /*0x311E*/ u8 escape_count;
    /*0x311F*/ u8 fight_end_flag;

    /*0x3120*/ u8 magnitude;
    /*0x3121*/ u8 weather_check_flag;
    /*0x3122*/ s16 hp_temp;

    /*0x3124*/ u16 recycle_item[CLIENT_MAX];
    /*0x312C*/ u8 unk4[0x52];
    /*0x317E*/ struct BattleMove moveTbl[MAX_MOVE_NUM + 1];
    /*...*/
};

enum
{
    CHECK_PLAYER_SIDE_ALL = 0,
    CHECK_PLAYER_SIDE_ALIVE,
    CHECK_ENEMY_SIDE_ALL,
    CHECK_ENEMY_SIDE_ALIVE,
    CHECK_ALL_BATTLER_ALIVE = 8,
};

enum
{
    BATTLE_MON_DATA_SPECIES,
    BATTLE_MON_DATA_ATK,
    BATTLE_MON_DATA_DEF,
    BATTLE_MON_DATA_SPE,
    BATTLE_MON_DATA_SPATK,
    BATTLE_MON_DATA_SPDEF,
    BATTLE_MON_DATA_MOVE_1,
    BATTLE_MON_DATA_MOVE_2,
    BATTLE_MON_DATA_MOVE_3,
    BATTLE_MON_DATA_MOVE_4,
    BATTLE_MON_DATA_HP_RND,
    BATTLE_MON_DATA_ATK_RND,
    BATTLE_MON_DATA_DEF_RND,
    BATTLE_MON_DATA_SPD_RND,
    BATTLE_MON_DATA_SPATK_RND,
    BATTLE_MON_DATA_SPDEF_RND,
    BATTLE_MON_DATA_IS_EGG,
    BATTLE_MON_DATA_IS_NICKNAMED,
    BATTLE_MON_DATA_STATE_HP,
    BATTLE_MON_DATA_STATE_ATK,
    BATTLE_MON_DATA_STATE_DEF,
    BATTLE_MON_DATA_STATE_SPE,
    BATTLE_MON_DATA_STATE_SPATK,
    BATTLE_MON_DATA_STATE_SPDEF,
    BATTLE_MON_DATA_STATE_ACCURACY,
    BATTLE_MON_DATA_STATE_EVASIVENESS,
    BATTLE_MON_DATA_ABILITY,
    BATTLE_MON_DATA_TYPE1,
    BATTLE_MON_DATA_TYPE2,
    BATTLE_MON_DATA_SEX,
    BATTLE_MON_DATA_LEVEL = 43,
    BATTLE_MON_DATA_HP = 47,
    BATTLE_MON_DATA_MAX_HP,
    BATTLE_MON_DATA_MAX_CONDITION = 52,
    BATTLE_MON_DATA_STATUS2 = 53,
    BATTLE_MON_HELD_ITEM = 55,
    BATTLE_MON_FLASH_FIRE_ACTIVATED = 73,
    BATTLE_MON_DATA_SLOW_START_COUNTER = 89,
};

#define MEGA_NEED 1
#define MEGA_CHECK_APPER 2
#define MEGA_NO_NEED 0

struct __attribute__((packed)) newBattleStruct
{
    u8 SideMega[2];//检查双方是否mega过,0我方,1敌方
    u8 playerWantMega;
    u8 PlayerMegaed;
    u8 needMega[4];//需要mega

    CATS_ACT_PTR MegaOAM;
    CATS_ACT_PTR MegaButton;
    u8 MegaIconLight;
    u8 ChangeBgFlag:4;
    u8 CanMega:4;
};

struct __attribute__((packed)) BATTLE_PARAM
{
    u8 fill[0x1C0];
    void* savedata;
};

void BattleFormChange(int client, int form_no, void* bw,struct BattleStruct *sp, bool8 SwitchAbility);

extern struct newBattleStruct newBS;
extern const u16 TetsunoKobushiTable[0xF];

BOOL __attribute__((long_call)) CheckDefenceAbility(void *, int, int, int);
int __attribute__((long_call)) BattlePokemonParamGet(void*,int ,int,void*);
s32 __attribute__((long_call)) BattleItemDataGet(void*,u16,u16);
u32 __attribute__((long_call)) BattleTypeGet(void*);
int __attribute__((long_call)) BattleWorkMonDataGet(void*,void*,int ,int);
int __attribute__((long_call)) CheckSideAbility(void *bw,void *sp,int flag,int client_no,int speabi);
u8 __attribute__((long_call)) CheckNumMonsHit(void*,void*,int ,int);
BOOL __attribute__((long_call)) CheckFieldMoveEffect(void *bw, void* ,int );
struct POKEMON_PARAM* __attribute__((long_call))BattleWorkPokemonParamGet(void*,int,int);

u16 __attribute__((long_call)) BattleWorkRandGet(void*);
int __attribute__((long_call)) BattleWorkPokeCountGet(void*,int);

BOOL __attribute__((long_call)) ServerCriticalMessage(void*,void*);
BOOL __attribute__((long_call)) ServerWazaStatusMessage(void*,void*);
BOOL __attribute__((long_call)) ST_ServerAddStatusCheck(void*,void*,int *seq_no);
BOOL __attribute__((long_call)) ServerIkariCheck(void*,void*);
BOOL __attribute__((long_call)) ST_ServerWazaHitTokuseiCheck_Old(void*,void*,int *seq_no);
BOOL __attribute__((long_call)) ServerHirumaseruCheck(void*,void*);
int __attribute__((long_call)) ST_ServerWaruagakiCheck(void *bw, void *sp, int client_no, int waza_bit, int check_bit);
struct Save_DexData* __attribute__((long_call)) BattleWorkZukanWorkGet(void *bw);
int __attribute__((long_call)) BattleWorkClientSetMaxGet(void*);
u8 __attribute__((long_call)) ST_ServerAgiCalc(void*,void*,int ,int,int);
u16 __attribute__((long_call)) ST_ServerSelectWazaGet(void*,int);
BOOL __attribute__((long_call))  ST_ServerNamakeCheck(void*,int);
void __attribute__((long_call)) SCIO_BlankMessage(void*);
BOOL __attribute__((long_call)) ServerSenseiCheck(void *bw, void *sp);
BOOL __attribute__((long_call)) ServerPPCheck(void *bw, void *sp);
BOOL __attribute__((long_call)) ServerWazaKoyuuCheck(void *bw, void *sp);
BOOL __attribute__((long_call)) ServerDefenceCheck(void *bw, void *sp);
BOOL __attribute__((long_call)) ServerStatusCheck(void *bw, void *sp);
int __attribute__((long_call)) ServerBadgeCheck(void *bw, void *sp, int *seq_no);
void __attribute__((long_call)) ST_ServerDefenceClientTokuseiCheck(void *bw, void *sp, int attack, u16 waza_no);
void __attribute__((long_call)) ST_ServerTotteokiCountCalc(void *bw,void *sp);
void __attribute__((long_call)) ST_ServerMetronomeBeforeCheck(void *bw,void *sp);
int __attribute__((long_call)) ST_ServerPokeAppearCheck(void *bw, void *sp);
void __attribute__((long_call)) SCIO_StatusEffectSet(void *bw,void *sp,int send_client,int status);
int __attribute__((long_call)) TagNickParaMake(struct BattleStruct *sp, int client_no);






/* new battle engine declarations*/
int __attribute__((long_call)) GetBattlerAbility(void *sp, int client);
u32 __attribute__((long_call)) MoldBreakerAbilityCheck(void *sp, int attacker, int defender, int ability);
int __attribute__((long_call)) BattleDamageDivide(int data, int divisor);
int __attribute__((long_call)) BattleWorkWeatherGet(void *bw);
int __attribute__((long_call)) BattleWorkEnemyClientGet(void *bw, int client, int side);
int __attribute__((long_call)) TraceClientGet(void *bw, struct BattleStruct *sp, int def1, int def2);
u8 __attribute__((long_call)) IsClientEnemy(void *bw, int client);
int __attribute__((long_call)) TypeCalc(void *bw, void *sp, int movenum, int movetype, int attacker, int defender, int damage, u32 *flag);
u32 __attribute__((long_call)) AnticipateMoveEffectListCheck(void *sp, int movenum);
u16 __attribute__((long_call)) BattleRand(void *bw);
int __attribute__((long_call)) ChooseRandomTarget(void *bw, void *sp, int client);
int __attribute__((long_call)) CountBattlerMoves(void *bw, void *sp, int client_no);
u32 __attribute__((long_call)) BattleFormChangeCheck(void *bw, void *sp, int *seq_no);
u32 __attribute__((long_call)) AbilityStatusRecoverCheck(void *bw, void *sp, int client_no, int act_flag);
u32 __attribute__((long_call)) HeldItemHealCheck(void *bw, void *sp, int client_no, int *seq_no);
void __attribute__((long_call)) LoadBattleSubSeqScript(void *, int, int);
int __attribute__((long_call)) HeldItemHoldEffectGet(void *sp, int client_no);
int __attribute__((long_call)) HeldItemAtkGet(void *sp, int client_no, int flag);
u32 __attribute__((long_call)) IsMovingAfterClient(void *sp, int client_no);
u32 __attribute__((long_call)) CheckSubstitute(struct BattleStruct *sp, int client_no);


// defined in battle_calc_damage.c
u16 GetBattleMonItem(struct BattleStruct *sp, int client_no);

/*Battle Script Function Declarations*/
void __attribute__((long_call)) IncrementBattleScriptPtr(struct BattleStruct *sp, int count);
int __attribute__((long_call)) read_battle_script_param(struct BattleStruct *sp);







#endif
