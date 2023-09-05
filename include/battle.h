#ifndef BATTLE_H
#define BATTLE_H

#include "types.h"
#include "item.h"
#include "sprite.h"
#include "task.h"
#include "constants/moves.h"

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
#define TYPE_FAIRY    0x09
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

#define ADD_EFFECT_DIRECT 1
#define ADD_EFFECT_INDIRECT 2
#define ADD_EFFECT_ABILITY 3
#define ADD_EFFECT_MOVE_EFFECT 4
#define ADD_EFFECT_HELD_ITEM 5
#define ADD_EFFECT_TOXIC_SPIKES 6
#define ADD_EFFECT_VARIOUS 7
// new
#define ADD_EFFECT_PRINT_WORK_ABILITY 8


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

#define MOVE_STATUS_FLAG_MISS                    (0x00000001)
#define MOVE_STATUS_FLAG_SUPER_EFFECTIVE         (0x00000002)
#define MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE      (0x00000004)
#define MOVE_STATUS_FLAG_NOT_EFFECTIVE           (0x00000008)
#define WAZA_STATUS_FLAG_CRITICAL                (0x00000010)
#define MOVE_STATUS_FLAG_OHKO_HIT                (0x00000020)
#define MOVE_STATUS_FLAG_FAILED                  (0x00000040)
#define MOVE_STATUS_FLAG_HELD_ON_ABILITY         (0x00000080)
#define MOVE_STATUS_FLAG_HELD_ON_ITEM            (0x00000100)
#define WAZA_STATUS_FLAG_PP_NONE                 (0x00000200)
#define MOVE_STATUS_FLAG_LOCK_ON                 (0x00000400)
#define MOVE_STATUS_FLAG_LEVITATE_MISS           (0x00000800)
#define MOVE_STATUS_FLAG_OHKO_HIT_NOHIT          (0x00001000)
#define WAZA_STATUS_FLAG_NANIMOOKORAN            (0x00002000)
#define MOVE_STATUS_FLAG_FURY_CUTTER_MISS        (0x00004000)
#define WAZA_STATUS_FLAG_MAMORU_NOHIT            (0x00008000)
#define WAZA_STATUS_FLAG_KIE_NOHIT               (0x00010000)
#define WAZA_STATUS_FLAG_WAZA_KOYUU_NOHIT        (0x00020000)
#define MOVE_STATUS_FLAG_MISS_WONDER_GUARD       (0x00040000)
#define MOVE_STATUS_FLAG_NO_OHKO                 (0x00080000)
#define MOVE_STATUS_FLAG_MAGNET_RISE_MISS        (0x00100000)

#define WAZA_STATUS_FLAG_SIPPAI                 (0x80000000)

#define WAZA_STATUS_FLAG_NOHIT_OFF      (MOVE_STATUS_FLAG_MISS^0xffffffff)
#define WAZA_STATUS_FLAG_BATSUGUN_OFF   (WAZA_STATUS_FLAG_BATSUGUN^0xffffffff)
#define WAZA_STATUS_FLAG_IMAHITOTSU_OFF (WAZA_STATUS_FLAG_IMAHITOTSU^0xffffffff)

#define WAZA_STATUS_FLAG_HAZURE         (MOVE_STATUS_FLAG_MISS|MOVE_STATUS_FLAG_NOT_EFFECTIVE|\
                                         MOVE_STATUS_FLAG_FAILED|\
                                         MOVE_STATUS_FLAG_LEVITATE_MISS|\
                                         MOVE_STATUS_FLAG_OHKO_HIT_NOHIT|\
                                         MOVE_STATUS_FLAG_FURY_CUTTER_MISS|\
                                         WAZA_STATUS_FLAG_MAMORU_NOHIT|\
                                         WAZA_STATUS_FLAG_KIE_NOHIT|\
                                         WAZA_STATUS_FLAG_WAZA_KOYUU_NOHIT|\
                                         MOVE_STATUS_FLAG_MISS_WONDER_GUARD|\
                                         MOVE_STATUS_FLAG_NO_OHKO|\
                                         MOVE_STATUS_FLAG_MAGNET_RISE_MISS)

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

#define BATTLE_TYPE_NO_EXPERIENCE (BATTLE_TYPE_WIRELESS | BATTLE_TYPE_SAFARI | BATTLE_TYPE_BATTLE_TOWER | BATTLE_TYPE_POKE_PARK)

// move effect flags/waza_kouka
#define MOVE_EFFECT_LEECH_SEED_BATTLER      (0x00000003) // leech seed battler
#define MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE  (0x00000004) // if leech seed is active
#define MOVE_EFFECT_FLAG_LOCK_ON            (0x00000018) // potentially client locked on to
#define MOVE_EFFECT_FLAG_PERISH_SONG_ACTIVE (0x00000020)
#define MOVE_EFFECT_FLAG_FLYING_IN_AIR      (0x00000040) // is currently flying
#define MOVE_EFFECT_FLAG_DIGGING            (0x00000080) // is currently digging
#define MOVE_EFFECT_FLAG_MINIMIZED          (0x00000100) // minimized for stomp effectiveness
#define MOVE_EFFECT_FLAG_CHARGE             (0x00000200)
#define MOVE_EFFECT_FLAG_INGRAIN            (0x00000400)
#define MOVE_EFFECT_YAWN_COUNTER            (0x00001800)
#define MOVE_EFFECT_FLAG_IMPRISONED         (0x00002000)
#define MOVE_EFFECT_FLAG_GRUDGE             (0x00004000)
#define MOVE_EFFECT_NO_CRITICAL_HITS        (0x00008000)
#define MOVE_EFFECT_FLAG_MUD_SPORT          (0x00010000)
#define MOVE_EFFECT_FLAG_WATER_SPORT        (0x00020000)
#define MOVE_EFFECT_FLAG_IS_DIVING          (0x00040000)
#define MOVE_EFFECT_FLAG_INTIMIDATED        (0x00080000)
#define MOVE_EFFECT_FLAG_TRACED             (0x00100000)
#define MOVE_EFFECT_GASTRO_ACID             (0x00200000)
#define MOVE_EFFECT_FLAG_MIRACLE_EYE        (0x00400000)
#define MOVE_EFFECT_FLAG_POWER_TRICK        (0x00800000)
#define MOVE_EFFECT_FLAG_AQUA_RING          (0x01000000)
#define MOVE_EFFECT_FLAG_HEAL_BLOCK         (0x02000000)
#define MOVE_EFFECT_FLAG_EMBARGO            (0x04000000)
#define MOVE_EFFECT_FLAG_MAGNET_RISE        (0x08000000)
#define MOVE_EFFECT_FLAG_CAMOUFLAGE         (0x10000000) // for trainer ai
#define MOVE_EFFECT_FLAG_SHADOW_FORCE       (0x20000000)
#define MOVE_EFFECT_FLAG_TRIED_IMPRISON     (0x40000000) // for trainer ai

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
#define SERVER_STATUS_FLAG_SYNCHRONIZE (0x00000080)
#define SERVER_STATUS_FLAG_OTHER_ACCURACY_CALC (0x00000400)
#define SERVER_STATUS_FLAG_TYPE_FLAT (0x00000800)
#define SERVER_STATUS_FLAG_TYPE_NONE (0x00008000)
#define SERVER_STATUS_FLAG_BEAT_UP_USED (0x00010000)
#define SERVER_STATUS_FLAG_MOVE_HIT (0x00002000)
#define SERVER_STATUS_FLAG_NO_ANIMATIONS (0x00004000)
#define SERVER_STATUS_FLAG_STAT_CHANGE_NEGATIVE (0x00020000)
#define SERVER_STATUS_FLAG_MOLD_BREAKER (0x00800000)

// server status2 flags
#define SERVER_STATUS2_FLAG_x10 (0x00000010)
#define SERVER_STATUS2_FLAG_FORM_CHANGE (0x04000000)

// status2/condition2 flags
#define STATUS2_FLAG_CONFUSED (0x00000007)
#define STATUS2_FLAG_INFATUATION (0x000f0000) // ? doesn't seem like it?
#define STATUS2_FLAG_FOCUS_ENERGY (0x00100000)
#define STATUS2_FLAG_TRANSFORMED (0x00200000)
#define STATUS2_FLAG_RAGE (0x00800000)
#define STATUS2_FLAG_SUBSTITUTE (0x01000000)
#define STATUS2_FLAG_FORESIGHT (0x20000000)

// side status flags
#define SIDE_STATUS_REFLECT (0x1)
#define SIDE_STATUS_LIGHT_SCREEN (0x2)
#define SIDE_STATUS_SAFEGUARD (0x8)
#define SIDE_STATUS_MIST (0x40)
#define SIDE_STATUS_TAILWIND (0x300)
#define SIDE_STATUS_LUCKY_CHANT (0x7000)

// One Self Turn Flags
#define SELF_STATUS_FLAG_HELD_ITEM_POWER_DOWN (0x00000001)
#define SELF_STATUS_FLAG_PICKUP (0x00000002)
#define SELF_STATUS_FLAG_ATTRACT (0x00000004) // this is checked for
#define SELF_STATUS_FLAG_SUBSTITUTE_HIT (0x00000008)

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

#define WEATHER_ANY_ICONS (WEATHER_RAIN_ANY | WEATHER_SANDSTORM_ANY | WEATHER_SUNNY_ANY | WEATHER_HAIL_ANY | FIELD_STATUS_FOG)

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

#define BATTLERS_ON_SAME_SIDE(battler1, battler2) ((battler1 & 1) == (battler2 & 1))
#define BATTLERS_ON_DIFFERENT_SIDE(battler1, battler2) !BATTLERS_ON_SAME_SIDE(battler1, battler2)

#define TAG_NONE                        (0)     //nothing

#define TAG_NONE_DIR                    (1)     //nothing (but judgment type?)
#define TAG_NICK                        (2)     //nickname
#define TAG_MOVE                        (3)     //move
#define TAG_STAT                        (4)     //stat
#define TAG_ITEM                        (5)     //helditem
#define TAG_NUM                         (6)     //number
#define TAG_NUMS                        (7)     //number(right aligned)
#define TAG_TRNAME                      (8)     //trainername

#define TAG_NICK_NICK                   (9)     //nickname      nickname
#define TAG_NICK_MOVE                   (10)    //nickname      move
#define TAG_NICK_ABILITY                (11)    //nickname      ability
#define TAG_NICK_STAT                   (12)    //nickname      stat
#define TAG_NICK_TYPE                   (13)    //nickname      type
#define TAG_NICK_POKE                   (14)    //nickname      pokemon
#define TAG_NICK_ITEM                   (15)    //nickname      helditem
#define TAG_NICK_UNK                    (16)    //nickname      ?
#define TAG_NICK_NUM                    (17)    //nickname      number
#define TAG_NICK_TRNAME                 (18)    //nickname      trainername
#define TAG_NICK_BOX                    (19)    //nickname      boxname
#define TAG_MOVE_DIR                    (20)    //move          (but judgment type?)
#define TAG_MOVE_NICK                   (21)    //move          nickname
#define TAG_MOVE_MOVE                   (22)    //move          move
#define TAG_ABILITY_NICK                (23)    //ability       nickname
#define TAG_ITEM_MOVE                   (24)    //helditem      move
#define TAG_NUM_NUM                     (25)    //number        number
#define TAG_TRNAME_TRNAME               (26)    //trainername   trainername
#define TAG_TRNAME_NICK                 (27)    //trainername   nickname
#define TAG_TRNAME_ITEM                 (28)    //trainername   helditem
#define TAG_TRNAME_NUM                  (29)    //trainername   number
#define TAG_TRTITLE_TRNAME              (30)    //trainertitle  trainername

#define TAG_NICK_NICK_MOVE              (31)    //nickname      nickname        move
#define TAG_NICK_NICK_ABILITY           (32)    //nickname      nickname        ability
#define TAG_NICK_NICK_ITEM              (33)    //nickname      nickname        helditem
#define TAG_NICK_MOVE_MOVE              (34)    //nickname      move            move
#define TAG_NICK_MOVE_NUM               (35)    //nickname      move            number
#define TAG_NICK_ABILITY_NICK           (36)    //nickname      ability         nickname
#define TAG_NICK_ABILITY_MOVE           (37)    //nickname      ability         move
#define TAG_NICK_ABILITY_ITEM           (38)    //nickname      ability         helditem
#define TAG_NICK_ABILITY_STAT           (39)    //nickname      ability         stat
#define TAG_NICK_ABILITY_TYPE           (40)    //nickname      ability         type
#define TAG_NICK_ABILITY_COND           (41)    //nickname      ability         condition
#define TAG_NICK_ABILITY_NUM            (42)    //nickname      ability         number
#define TAG_NICK_ITEM_NICK              (43)    //nickname      helditem        nickname
#define TAG_NICK_ITEM_MOVE              (44)    //nickname      helditem        move
#define TAG_NICK_ITEM_STAT              (45)    //nickname      helditem        stat
#define TAG_NICK_ITEM_COND              (46)    //nickname      helditem        condition
#define TAG_NICK_BOX_BOX                (47)    //nickname      box             box
#define TAG_ITEM_NICK_TASTE             (48)    //helditem      nickname        taste
#define TAG_TRNAME_NICK_NICK            (49)    //trainername   nickname        nickname
#define TAG_TRTYPE_TRNAME_NICK          (50)    //trainertitle  trainername     nickname
#define TAG_TRTYPE_TRNAME_ITEM          (51)    //trainertitle  trainername     helditem

#define TAG_NICK_ABILITY_NICK_MOVE      (52)    //nickname      ability         nickname        move
#define TAG_NICK_ABILITY_NICK_ABILITY   (53)    //nickname      ability         nickname        ability
#define TAG_NICK_ABILITY_NICK_STAT      (54)    //nickname      ability         nickname        stat
#define TAG_NICK_ITEM_NICK_ITEM         (55)    //nickname      helditem        nickname        helditem
#define TAG_TRNAME_NICK_TRNAME_NICK     (56)    //trainername   nickname        trainername     nickname
#define TAG_TRTYPE_TRNAME_NICK_NICK     (57)    //trainertitle  trainername     nickname        nickname
#define TAG_TRTYPE_TRNAME_NICK_TRNAME   (58)    //trainertitle  trainername     nickname        trainername
#define TAG_TRTYPE_TRNAME_TRTYPE_TRNAME (59)    //trainertitle  trainername     trainertitle    trainername

#define TAG_TRTYPE_TRNAME_NICK_TRTYPE_TRNAME_NICK \
                                        (60)    //trainertitle  trainername     nickname        trainertitle  trainername     nickname


#define TAG_NO_DIR                      (0x80)
#define TAG_DIR                         (0x40)
#define TAG_NO_DIR_OFF                  (0x3f)


// fuck statbuffchange
#define STATUS_EFF_UP (12)
#define STATUS_EFF_DOWN (13)


//held item attack effect
#define ATK_CHECK_NORMAL    (0)
#define ATK_CHECK_NONE      (1)
#define ATK_CHECK_SHUTOUT   (2)

//inc record
#define CLIENT_BOOT_TYPE_MINE       (0)
#define CLIENT_BOOT_TYPE_NOMINE     (1)

//save data
#define RECID_TEMOTI_MAKIZOE (71+26)

//ai condition flags 2
#define CONDITION2_TRANSFORM        (0x00200000)
#define CONDITION2_TRANSFORM_OFF    (0x00200000 ^ 0xffffffff)
#define CONDITION2_SUBSTITUTE       (0x01000000)
#define CONDITION2_SUBSTITUTE_OFF   (0x01000000^0xffffffff)

#define SWOAM_NORMAL    (0)
#define SWOAM_LOOP      (1)


// (possibly) implement challenge/ easy modes
#define NORMAL_MODE (0)
#define CHALLENGE_MODE (1)
#define EASY_MODE (2)

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


struct __attribute__((packed)) BattleMove
{
    u16 effect; //0x0
    u8 split; //0x2
    u8 power; //0x3

    u8 type; //0x4
    u8 accuracy; //0x5
    u8 pp; //0x6
    u8 secondaryEffectChance; //0x7

    u16 target; //0x8
    s8 priority; //0xA
    u8 flag; //0xB
    u8 unk[4]; //0xC, length = 4

    //this takes up 0x10
};

struct __attribute__((packed)) OneTurnEffect
{
    u32 struggle_flag : 1;
    u32 pp_dec_flag : 1;
    u32 mamoru_flag : 1;
    u32 helping_hand_flag : 1;
    u32 magic_cort_flag : 1;
    u32 yokodori_flag : 1;
    u32 haneyasume_flag : 1;
    u32 escape_flag : 2;
    u32 prevent_one_hit_ko_ability : 1;
    u32 : 22;

    int physical_damage[4];
    int physical_damager;
    int physical_damager_bit;
    int special_damage[4];
    int special_damager;
    int special_damager_bit;
    int last_damage;
    int last_damager;
    int dameoshi_damage;
};

struct __attribute__((packed)) OneSelfTurnEffect
{
    //0x0
    u32 no_pressure_flag : 1;
    u32 hiraisin_flag : 1;
    u32 yobimizu_flag : 1;
    u32 mold_breaker_flag : 1;
    u32 trickroom_flag : 1;
    u32 prevent_one_hit_ko_item : 1;
    u32 korogaru_count : 3;
    u32 defiant_flag : 1; // set (hypothetically) when defiant needs to activate
    u32 : 22;

    int physical_damage;
    int physical_damager;
    int special_damage;
    int special_damager;
    int status_flag;
    int shell_bell_damage;

    //length 0x1C
};

struct __attribute__((packed)) MoveOutCheck
{
    u32 mahi_flag :1;
    u32 koukanai_flag :1;
    u32 huuin_flag :1;
    u32 meromero_flag :1;
    u32 kanashibari_flag :1;
    u32 chouhatsu_flag :1;
    u32 hirumu_flag  :1;
    u32 konran_flag  :1;
    u32 juuryoku_flag :1;
    u32 healblock_flag :1;
    u32 dummy :22;
};

// so much of this structure sems to be matched in effect_of_moves
struct __attribute__((packed)) battle_moveflag
{
    /* 0x00 */ u32 disabledTurns : 3;
               u32 encoredTurns : 3;
               u32 isCharged : 2;
               u32 tauntTurns : 3;
               u32 protectSuccessTurns : 2;
               u32 perishSongTurns : 2;
               u32 rolloutCount : 3;
               u32 furyCutterCount : 3;
               u32 stockpileCount : 3;
               u32 stockpileDefCount : 3;
               u32 stockpileSpDefCount : 3;
               u32 truantFlag : 1;
               u32 flashFire : 1;

    /* 0x04 */ u32 battlerIdLockOn : 2;
               u32 mimickedMoveIndex : 4;
               u32 battlerIdBinding : 2;
               u32 battlerIdMeanLook : 2;
               u32 lastResortCount : 3;
               u32 magnetRiseTurns : 3;
               u32 healBlockTurns : 3;
               u32 embargoFlag : 3;
               u32 knockOffFlag : 1; // used for unburden
               u32 metronomeTurns : 4;
               u32 boostedAccuracy : 1;
               u32 custapBerryFlag : 1;
               u32 quickClawFlag : 1;
               u32 meFirstFlag : 1;
               u32 : 1;

    /* 0x08 */ int rechargeCount;
    /* 0x0c */ int fakeOutCount;
    /* 0x10 */ int slowStartTurns;
    /* 0x14 */ int meFirstCount;
    /* 0x18 */ int substituteHp;
    /* 0x1c */ u32 transformPid;
    /* 0x20 */ u16 disabledMove;
    /* 0x22 */ u16 bindingMove;
    /* 0x24 */ u16 encoredMove;
    /* 0x26 */ u16 encoredMoveIndex;
    /* 0x28 */ u16 lastResortMoves[4];
    /* 0x2a */ u16 moveNoChoice;
    /* 0x2c */ u16 transformGender;
// padding at 2e
    /* 0x30 */ int itemHpRecover;
}; // size = 0x34

struct __attribute__((packed)) BattlePokemon
{
    /* 0x00 */ u16 species;
    /* 0x02 */ u16 attack;
    /* 0x04 */ u16 defense;
    /* 0x06 */ u16 speed;
    /* 0x08 */ u16 spatk;
    /* 0x0a */ u16 spdef;
    /* 0x0c */ u16 move[4];
    /* 0x14 */ u32 hp_iv : 5;
               u32 atk_iv : 5;
               u32 def_iv : 5;
               u32 spe_iv : 5;
               u32 spatk_iv : 5;
               u32 spdef_iv : 5;
               u32 is_egg : 1;
               u32 have_nickname : 1;
    /* 0x18 */ s8 states[8];
    /* 0x20 */ int weight;
    /* 0x24 */ u8 type1; //25
    /* 0x25 */ u8 type2;
    /* 0x26 */ u8 form_no : 5;
               u8 rare : 1;
               u8 ability; // todo: make abilities have more bits to support values > 256
    /* 0x28 */ u32 appear_check_flag : 1;
               u32 intimidate_flag : 1;
               u32 trace_flag : 1;
               u32 download_flag : 1;
               u32 anticipation_flag : 1;
               u32 forewarn_flag : 1;
               u32 slow_start_flag : 1;
               u32 slow_start_end_flag : 1;
               u32 frisk_flag : 1;
               u32 mold_breaker_flag : 1;
               u32 pressure_flag : 1;
               u32 canMega : 1;
               u32 unnerve_flag : 1;
               u32 dark_aura_flag : 1;
               u32 fairy_aura_flag : 1;
               u32 aura_break_flag : 1;
               u32 sheer_force_flag : 1;
               u32 imposter_flag : 1;
               u32 critical_hits : 2; // tracks the amount of critical hits the pokemon has landed while in battle so far
               u32 air_ballon_flag : 1;
               u32 : 11; // need to add to ClearBattleMonFlags when added to here as well
    /* 0x2c */ u8 pp[4];
    /* 0x30 */ u8 pp_count[4];
    /* 0x34 */ u8 level;
    /* 0x35 */ u8 friend;
    /* 0x36 */ u16 nickname[11];
    /* 0x4c */ s32 hp;
    /* 0x50 */ u32 maxhp;
    /* 0x54 */ u16 oyaname[8];
    // is this where the padding is?
    /* 0x68 */ u32 exp; //68
    /* 0x6c */ u32 personal_rnd;
    /* 0x70 */ u32 condition;
    /* 0x74 */ u32 condition2;
    /* 0x78 */ u32 id_no;
    /* 0x7c */ u16 item;
    /* 0x7e */ u16 dummy;
    /* 0x80 */ u8 hit_count;
    /* 0x81 */ u8 message_flag;
    /* 0x82 */ u8 sex : 4;
               u8 oyasex : 4;
    /* 0x83 */ u8 get_ball;
    /* 0x84 */ u32 effect_of_moves; // think like charge, lock on
    /* 0x88 */ u32 effect_of_moves_temp;
    /* 0x8c */ struct __attribute__((packed)) battle_moveflag moveeffect;
}; // size = 0xc0

typedef struct {
    u32 alloc_size;
    u32 alloc_ofs;
    u16 type;
    u16 conttype;
} __attribute__((packed)) CHAR_MANAGER_ALLOCDATA;

struct __attribute__((packed)) field_condition_count
{

/*0x00*/    u32     weather_count;
/*0x04*/    u8      future_prediction_count[CLIENT_MAX];
/*0x08*/    u8      wish_count[CLIENT_MAX];
/*0x0C*/    u16     future_prediction_wazano[CLIENT_MAX];
/*0x14*/    int     future_prediction_client_no[CLIENT_MAX];
/*0x24*/    s32     future_prediction_damage[CLIENT_MAX];
/*0x34*/    u8      wish_sel_mons[CLIENT_MAX];

};

struct __attribute__((packed)) tcb_skill_intp_work
{
    void *bw;
    struct BattleStruct *sp;
    void *bms;
    void *cap[2];
    void *fop;
    CHAR_MANAGER_ALLOCDATA cma;
    int flag;
    int seq_no;
    int ballID;
    int work[8];
    void *work_p[2];
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
    u32     reflectBattler          : 2;
    u32     reflectCount            : 3;
    u32     lightScreenBattler      : 2;
    u32     lightScreenCount        : 3;
    u32     mistBattler             : 2;
    u32     mistCount               : 3;
    u32     safeguardBattler        : 2;
    u32     safeguardCount          : 3;

    u32     konoyubitomare_flag     : 1;
    u32     konoyubitomare_client   : 2;
    u32     knockoff_item           : 6;
    u32     oikaze_count            : 3;

    u32     makibisi_count          : 2;
    u32     dokubisi_count          : 2;
    u32                             :28;
};

struct __attribute__((packed)) BattleAIWorkTable
{
    u8 ai_seq_no; //0x0
    u8 ai_move_pos; //0x1
    u16 ai_move_no; //0x2

    s8 ai_move_point[4]; //0x4

    int ai_calc_work; //0x8
    u32 ai_think_bit; //0xC

    u8 ai_status_flag; //0x10
    u8 ai_think_no; //0x11
    u8 ai_all_move_check_loop_count; //0x12
    u8 ai_all_move_check_push_pos; //0x13

    u8* ai_all_move_check_loop_address; //0x14
    u8 ai_damage_amount[4]; //0x18

    u16 ai_defence_use_move[4][4]; //0x1C, length = 32 = 0x20 bytes

    u8 ai_tokusyu_no[4]; //0x3C
    u16 ai_soubi_item[4]; //0x40

    u16 ai_have_item[2][4]; //0x48, length = 16 = 0x10 bytes

    u32 push_address_buffer[8]; //0x58, length = 32 = 0x20 bytes
    u8 push_address_count; //0x78
    u8 ai_item_count[2]; //0x79
    u8 ai_attack_client; //0x7B
    u8 ai_defence_client; //0x7C

    u8 ai_item_type[2]; //0x7D
    u8 ai_item_condition[2]; //0x7F

    u8 padding_81; //implicit padding here, one byte

    u16 ai_item_no[2]; //0x82

    u8 ai_dir_select_client[CLIENT_MAX]; //0x86
    struct BattleMove old_moveTbl[467 + 1]; //0x8A, length = 0x10*468 = 0x1D40, this technically is also 0x3DE in the BattleStruct

    u16 padding_1DCA; //implicit padding here, two bytes

    ITEMDATA *item; //0x1DCC, this is technically also 0x2120 in the BattleStruct

    u16 ai_calc_count[CLIENT_MAX]; //0x1DD0
    u16 ai_calc_continue[CLIENT_MAX]; //0x1DD8

    //length is 0x1DE0
    //the end of this struct is at 0x2134 in the BattleStruct
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
    /*0x9C*/ int obtained_exp;
    /*0xA0*/ int exp_share_obtained_exp;
    /*0xA4*/ u32 obtained_exp_right_flag[2];
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
    /*0x174*/ int me_first_total_turns;
    /*0x178*/ struct tcb_skill_intp_work *tciw;
    /*0x17C*/ void *work;
    /*0x180*/ u32 field_condition;
    /*0x184*/ struct field_condition_count fcc;
    /*0x1BC*/ u32 side_condition[2];
    /*0x1C4*/ struct side_condition_work scw[2];
    /*0x1D4*/ struct OneTurnEffect oneTurnFlag[4];
    /*0x2D4*/ struct OneSelfTurnEffect oneSelfFlag[4];
    /*0x344*/ struct MoveOutCheck moveOutCheck[4];

    /*0x354*/ struct BattleAIWorkTable aiWorkTable;
    /*0x2134*/ u32 *ai_seq_work;
    /*0x2138*/ u32 ai_seq_address;

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
    /*0x2174*/ u32 add_status_flag_indirect;
    /*0x2178*/ u32 add_status_flag_tokusei;
    /*0x217C*/ u8 multi_hit_count;
    /*0x217D*/ u8 multi_hit_count_temp;
    /*0x217E*/ u8 client_loop;
    /*0x217F*/ u8 beat_up_count;

    /*0x2180*/ u32 loop_flag;
    /*0x2184*/ u32 waza_out_check_on_off;
    /*0x2188*/ u32 loop_hit_check;

    /*0x218C*/ u32 condition2_off_req[CLIENT_MAX];
    /*0x219C*/ u8 sel_mons_no[CLIENT_MAX];
    /*0x21A0*/ u8 reshuffle_sel_mons_no[CLIENT_MAX];
    /*0x21A4*/ u8 ai_reshuffle_sel_mons_no[CLIENT_MAX];
    /*0x21A8*/ u32 client_act_work[4][4];
    /*0x21E8*/ u8 client_agi_work[4];
    /*0x21EC*/ u8 turn_order[4];
    /*0x21F0*/ u32 psp_agi_point[4];
    /*0x2200*/ u8 ServerQue[4][4][16];
    /*0x2300*/ u8 server_buffer[4][256];
    /*0x2700*/ int SkillSeqWorkOld[400];
    /*0x2D40*/ struct BattlePokemon battlemon[CLIENT_MAX]; //0xc0
    /*0x3040*/ u32 waza_no_temp;
    /*0x3044*/ u32 current_move_index;
    // u8 unk_bytes4[0x74];

    /*0x3048*/ u32 waza_no_last;
    /*0x304C*/ u32 waza_no_keep[CLIENT_MAX];

    /*0x305C*/ u16 waza_no_mamoru[CLIENT_MAX];
    /*0x3064*/ u16 waza_no_hit[CLIENT_MAX];
    /*0x306C*/ u16 waza_no_hit_client[CLIENT_MAX];
    /*0x3074*/ u16 waza_no_hit_type[CLIENT_MAX];
    /*0x307C*/ u16 waza_no_old[CLIENT_MAX];
    /*0x3084*/ u16 waza_no_oumu[CLIENT_MAX];
    /*0x308C*/ u16 waza_no_oumu_hit[CLIENT_MAX][CLIENT_MAX];
    /*0x30AC*/ u16 waza_no_sketch[CLIENT_MAX];
    /*0x30B4*/ u16 waza_no_select[CLIENT_MAX];

    /*0x30BC*/ u16 waza_no_pos[CLIENT_MAX];
    /*0x30C4*/ //u8 unk_bytes_4[0x44];
    /*0x    */ u16 waza_no_texture2[CLIENT_MAX];
    /*0x    */ u16 waza_no_texture2_client[CLIENT_MAX];
    /*0x    */ u16 waza_no_texture2_type[CLIENT_MAX];
    /*0x    */ u16 waza_no_metronome[CLIENT_MAX];

    /*0x    */ int store_damage[CLIENT_MAX];

    /*0x    */ int client_no_hit[CLIENT_MAX];

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
    /*0x312C*/ u8 list_row[4][6];
    /*0x3144*/ int jingle_flag;
    /*0x3148*/ int server_queue_time_out;
    /*0x314C*/ u8 rec_select_flag[4];
    /*0x3150*/ int client_working_count;
    /*0x3154*/ u32 battle_progress_flag : 1;
               u32 : 31;
    /*0x3158*/ u8 log_hail_for_ice_face; // bitfield with 1 << client for if there was hail last turn
    /*0x3159*/ u8 tailwindCount[2]; // new tailwind counter
    /*0x315B*/ u8 mons_getting_exp;
    /*0x315C*/ u8 mons_getting_exp_from_item;
    /*0x315D*/ u8 padding_315D[0x21]; // padding to get moveTbl to 317E (for convenience of 3180 in asm)
    /*0x317E*/ struct BattleMove moveTbl[NUM_OF_MOVES + 1];
    /*0x    */ u32 gainedExperience[6]; // possible experience gained per party member in order to get level scaling done right
    /*0x    */ u32 gainedExperienceShare[6]; // possible experience gained per party member in order to get level scaling done right
    /*0x    */ int SkillSeqWork[600];
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
    BATTLE_MON_DATA_MOVE_STATE = 59,  //0x40 - fly, 0x80 - dig
    BATTLE_MON_DATA_MOVE_STATE_2 = 60,//0x40 - fly, 0x80 - dig
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
    CATS_ACT_PTR WeatherOAM;
    SysTask *weatherUpdateTask;
    u32 weather;
    u8 MegaIconLight;
    u8 ChangeBgFlag:4;
    u8 CanMega:4;
};

#include "pokemon.h"

struct __attribute__((packed)) POKEPARTY {
    int PokeCountMax;
    int PokeCount;
    struct PartyPokemon member[6];
};

typedef struct {
    u16 sentence_type;
    u16 sentence_id;
    u16 word[2];
} __attribute__((packed)) PMS_DATA; // size: 8 bytes

typedef struct {
    u8 data_type;
    u8 tr_type;
    u8 tr_gra;
    u8 poke_count;

    u16 use_item[4];

    u32 aibit;
    u32 fight_type;

    u16 name[8];
    PMS_DATA win_word;
    PMS_DATA lose_word;
} __attribute__((packed)) TRAINER_DATA; // size: 52 bytes

struct __attribute__((packed)) BATTLE_PARAM
{
    /*0x0000*/  u32 fight_type;
    /*0x0004*/  struct POKEPARTY *poke_party[4];
    /*0x0008*/  int win_lose_flag;
    /*0x000C*/  int trainer_id[4];
    /*0x001C*/  TRAINER_DATA trainer_data[4]; //0xD0 bytes
    /*0x00EC*/  u8 fill[0xD4];
    /*0x01C0*/  void* savedata;
};


struct __attribute__((packed)) FULL_TRAINER_MON_DATA_STRUCTURE // structure isn't actually used as the structure is iterated through conditionally
{
    /* 0x0 */ u8 ivs;
    /* 0x1 */ u8 abilityslot;
    /* 0x2 */ u16 level;
    /* 0x4 */ u16 monsno;
    /* 0x6 */ u16 itemno;
    /* 0x8 */ u16 moves[4];
    /* 0x10 */ u16 ability;
    /* 0x12 */ u16 ball;
    /* 0x14 */ u8 ivnums[6];
    /* 0x1A */ u8 evnums[6];
    /* 0x20 */ u8 nature;
    /* 0x21 */ u8 shinylock;
    /* 0x22 */ u8 padding[2]; // ?
    /* 0x24 */ u32 additionalflags;
    /* 0x28 */ u32 status;
    /* 0x2C */ u16 hp;
    /* 0x2E */ u16 atk;
    /* 0x30 */ u16 def;
    /* 0x32 */ u16 speed;
    /* 0x34 */ u16 spatk;
    /* 0x36 */ u16 spdef;
    /* 0x38 */ u8 types[2];
    /* 0x3A */ u8 ppcounts[4];
    /* 0x3E */ u16 nickname[11];
    /* 0x54 */ u16 custom;
}; // size - 0x56

struct __attribute__((packed)) CLIENT_PARAM
{
    /*0x0000*/ u8 filler1[0x94];
    /*0x0094*/ u8 client_buffer[256];
    /*0x0194*/ u8 client_no;
    /*0x0195*/ u8 client_type;
};

struct __attribute__((packed)) POKEMON_ENCOUNT_PARAM
{
    u8 command_code;
    u8 sex:2;
    u8 rare:1;
    u8 form_no:5;
    u16 monsno;
    u32 personal_rnd;
    int voice;
    u16 wazano[4];
    u16 pp[4];
    u16 ppmax[4];
    u16 nickname[11];
};

struct __attribute__((packed)) POKEMON_APPEAR_PARAM
{
    u8 command_code;
    u8 sex:2;
    u8 rare:1;
    u8 form_no:5;
    u16 monsno;
    u32 personal_rnd;
    int voice;
    int sel_mons_no;
    int ballID;
    int flag;
    u16 wazano[4];
    u16 pp[4];
    u16 ppmax[4];
    u16 nickname[11];
    int pair_sel_mons_no;
    int migawari_flag;
    u16 wep_mons_no[CLIENT_MAX];
    u8 wep_sex[CLIENT_MAX];
    u8 wep_rare[CLIENT_MAX];
    u8 wep_form_no[CLIENT_MAX];
    u32 wep_personal_rnd[CLIENT_MAX];
};

struct __attribute__((packed)) ILLUSION_STRUCT
{
    u16 illusionNameBuf[2][12]; // at least get this hword aligned
    u8 isSideInIllusion[2];
    u8 illusionPos[2];
};

struct __attribute__((packed)) SWITCH_MESSAGE_PARAM
{
    u8 command_code;
    u8 sel_mons_no;
    u16 rate;
};

struct __attribute__((packed)) ENCOUNT_SEND_OUT_MESSAGE_PARAM
{
    u8 command_code;
    u8 dummy[3];
    u8 sel_mons_no[CLIENT_MAX];
};

extern u8 TypeEffectivenessTable[][3];















void BattleFormChange(int client, int form_no, void* bw,struct BattleStruct *sp, bool8 SwitchAbility);

extern struct newBattleStruct newBS;
extern const u16 TetsunoKobushiTable[0xF];

int __attribute__((long_call)) BattlePokemonParamGet(void*,int ,int,void*);
s32 __attribute__((long_call)) BattleItemDataGet(void*,u16,u16);
u32 __attribute__((long_call)) BattleTypeGet(void*);
int __attribute__((long_call)) BattleWorkMonDataGet(void*,void*,int ,int);
int __attribute__((long_call)) CheckSideAbility(void *bw,void *sp,int flag,int client_no,int speabi);
u8 __attribute__((long_call)) CheckNumMonsHit(void*,void*,int ,int);
BOOL __attribute__((long_call)) CheckFieldMoveEffect(void *bw, void* ,int );
struct PartyPokemon * __attribute__((long_call)) BattleWorkPokemonParamGet(void *bw, int client_no, int sel_mons_no);
void *__attribute__((long_call)) BattleWorkFightMsgGet(void *bw);
void __attribute__((long_call)) BattleWorkPinchSEFlagSet(void *bw, u32 mode);
void __attribute__((long_call)) Snd_BgmPlay(u32 id);
u32 __attribute__((long_call)) ST_ServerPokeOneSelfCheckActPP(void *bw, struct PartyPokemon *pp);
void __attribute__((long_call)) PokeExpCalc(struct Party *ppt, int pos, int mons_no, int form_no);
u8 __attribute__((long_call)) BattleWorkConfigMsgSpeedGet(void *bw);
u8 __attribute__((long_call)) BattleMSG_Print(void *bw, void *msg_m, MESSAGE_PARAM *mp, int wait);
u8 __attribute__((long_call)) GF_MSG_PrintEndCheck(u8 msg_index);
void __attribute__((long_call)) SCIO_EXPGaugeCalcSet(void *bw, struct BattleStruct *sp, int send_client, int now_exp);
u32 __attribute__((long_call)) ST_ServerQueCheck(struct BattleStruct *sp);
void __attribute__((long_call)) SCIO_StatusEffectSet(void *bw, struct BattleStruct *sp, int send_client, int status);
void __attribute__((long_call)) SCIO_LevelUpEffectSet(void *bw, int send_client);
u32 __attribute__((long_call)) BattleWorkPlaceIDGet(void *bw);
void __attribute__((long_call)) Task_DistributeExp(void *arg0, void *work);
int __attribute__((long_call)) BattleWorkPokeCountGet(void*,int);

BOOL __attribute__((long_call)) ServerCriticalMessage(void*,void*);
BOOL __attribute__((long_call)) ServerWazaStatusMessage(void*,void*);
BOOL __attribute__((long_call)) ST_ServerAddStatusCheck(void*,void*,int *seq_no);
BOOL __attribute__((long_call)) ServerIkariCheck(void*,void*);
BOOL __attribute__((long_call)) ST_ServerWazaHitTokuseiCheck_Old(void*,void*,int *seq_no);
int __attribute__((long_call)) ST_ServerWaruagakiCheck(void *bw, void *sp, int client_no, int waza_bit, int check_bit);
struct Save_DexData* __attribute__((long_call)) BattleWorkZukanWorkGet(void *bw);
int __attribute__((long_call)) BattleWorkClientSetMaxGet(void*);
u8 __attribute__((long_call)) ST_ServerAgiCalc(void*,void*,int ,int,int);
u16 __attribute__((long_call)) ST_ServerSelectWazaGet(void*,int);
BOOL __attribute__((long_call))  ST_ServerNamakeCheck(void*,int);
void __attribute__((long_call)) SCIO_BlankMessage(void*);
BOOL __attribute__((long_call)) ServerSenseiCheck(void *bw, void *sp);
BOOL __attribute__((long_call)) ServerPPCheck(void *bw, void *sp);
BOOL __attribute__((long_call)) ServerDefenceCheck(void *bw, void *sp);
BOOL __attribute__((long_call)) ServerStatusCheck(void *bw, void *sp);
int __attribute__((long_call)) ServerBadgeCheck(void *bw, void *sp, int *seq_no);
void __attribute__((long_call)) ST_ServerDefenceClientTokuseiCheck(void *bw, void *sp, int attack, u16 waza_no);
void __attribute__((long_call)) ST_ServerTotteokiCountCalc(void *bw,void *sp);
void __attribute__((long_call)) ST_ServerMetronomeBeforeCheck(void *bw,void *sp);
int __attribute__((long_call)) ST_ServerPokeAppearCheck(void *bw, void *sp);
int __attribute__((long_call)) TagNickParaMake(struct BattleStruct *sp, int client_no);
int __attribute__((long_call)) BattleWorkClientNoGet(void *bw, int client_type);

u32 No2Bit(int no);




/* new battle engine declarations*/
int __attribute__((long_call)) GetBattlerAbility(void *sp, int client);
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
u32 __attribute__((long_call)) AbilityStatusRecoverCheck(void *bw, void *sp, int client_no, int act_flag);
u32 __attribute__((long_call)) HeldItemHealCheck(void *bw, void *sp, int client_no, int *seq_no);
int __attribute__((long_call)) HeldItemHoldEffectGet(void *sp, int client_no);
int __attribute__((long_call)) HeldItemAtkGet(void *sp, int client_no, int flag);
u32 __attribute__((long_call)) IsMovingAfterClient(void *sp, int client_no);
u32 __attribute__((long_call)) CheckSubstitute(struct BattleStruct *sp, int client_no);
u32 __attribute__((long_call)) gf_get_seed(void);
//u16 __attribute__((long_call)) gf_p_rand(const u16 denominator);
u32 __attribute__((long_call)) BattleWorkBattleStatusFlagGet(void *bw);
void __attribute__((long_call)) PokeCopyPPtoPP(struct PartyPokemon *pp_src, struct PartyPokemon *pp_dest);
void __attribute__((long_call)) SCIO_PSPtoPPCopy(void *bw, struct BattleStruct *sp, int send_client);
int __attribute__((long_call)) PokeParaGiratinaFormChange(struct PartyPokemon *pp);
void __attribute__((long_call)) CT_PokemonEncountSet(void *bw, struct CLIENT_PARAM *cp, struct POKEMON_ENCOUNT_PARAM *pep);
void __attribute__((long_call)) CT_PokemonEncountAppearSet(void *bw, struct CLIENT_PARAM *cp, struct POKEMON_APPEAR_PARAM *pap);
void __attribute__((long_call)) CT_PokemonAppearSet(void *bw, struct CLIENT_PARAM *cp, struct POKEMON_APPEAR_PARAM *pap);
void __attribute__((long_call)) ClientCommandReset(struct CLIENT_PARAM *cp);
struct CLIENT_PARAM *__attribute__((long_call)) BattleWorkClientParamGet(void *bw, u32 client);
struct POKEPARTY *__attribute__((long_call)) BattleWorkPokePartyGet(void *bw, int client_no);
int __attribute__((long_call)) PokeParty_GetPokeCountMax(const struct POKEPARTY *party); // this function is cursed to be arm for no fucking reason whatsoever
int __attribute__((long_call)) BattleWorkPartnerClientNoGet(void *bw, int client_no);
u16 __attribute__((long_call)) BattleWorkCommIDGet(void *bw);
int __attribute__((long_call)) BattleWorkCommStandNoGet(void *bw, u16 id);
void __attribute__((long_call)) SCIO_IncRecord(void *bw, int attack_client, int param1, int param2);
BOOL __attribute__((long_call)) ST_ServerTokuseiStatusRecoverReshuffleCheck(struct BattleStruct *sp, int ability, int condition);
void __attribute__((long_call)) ST_ServerPressurePPDecCheck(struct BattleStruct *sp, int attack, int defence);
int __attribute__((long_call)) ST_ServerWazaPosGet(struct BattlePokemon *battlemon, u16 move);
BOOL __attribute__((long_call)) BattleWorkConfigWazaEffectOnOffCheck(void *bw);
void __attribute__((long_call)) SCIO_WazaEffectSet(void *bw, struct BattleStruct *sp, u16 move);
void __attribute__((long_call)) SCIO_WazaEffect2Set(void *bw, struct BattleStruct *sp, u16 waza_no, int attack, int defence);
void __attribute__((long_call)) SkillSequenceGosub(struct BattleStruct *sp, int file, int subfile);
int __attribute__((long_call)) ServerKizetsuCheck(struct BattleStruct *sp, int next_seq, int no_set_seq, int flag);
void *__attribute__((long_call)) BattleWorkGF_BGL_INIGet(void *bw);
u32 __attribute__((long_call)) GetBattleItemData(struct BattleStruct, u16 item, u32 field);
u32 __attribute__((long_call)) BattleWorkGroundIDGet(void *bw);
BOOL __attribute__((long_call)) Battle_CheckIfHasCaughtMon(void *bw, u32 species);
u32 __attribute__((long_call)) Battle_GetTimeOfDay(void *bw);
BOOL __attribute__((long_call)) Battle_IsFishingEncounter(void *bw);
BOOL __attribute__((long_call)) HeldItemEffectCheck(void *bw, struct BattleStruct *sp, int client_no);
BOOL __attribute__((long_call)) HeldItemHealStatusCheck(void *bw, struct BattleStruct *sp, int client_no, int *seq_no);
int __attribute__((long_call)) TypeCheckCalc(struct BattleStruct *sp, u32 attack_client, u32 typeModifier, int damage, int base_power, int *flag);
BOOL __attribute__((long_call)) ShouldDelayTurnEffectivenessChecking(struct BattleStruct *sp, u32 move_no);
BOOL __attribute__((long_call)) ShouldUseNormalTypeEffCalc(struct BattleStruct *sp, int attack_client, int defence_client, int pos);
int __attribute__((long_call)) Battle_GetClientPartySize(void *bw, int client_no);
void *__attribute__((long_call)) Battle_GetClientPartyMon(void *bw, int client_no, int mon_index);
BOOL __attribute__((long_call)) ServerGetExpCheck(struct BattleStruct *sp, u32 seq, u32 seq2);
BOOL __attribute__((long_call)) ServerZenmetsuCheck(void *bw, struct BattleStruct *sp);
u32 __attribute__((long_call)) ST_ServerDir2ClientNoGet(void *bw, struct BattleStruct *sp, u32 side);
u32 __attribute__((long_call)) ST_CheckIfInTruant(struct BattleStruct *sp, u32 client);
void __attribute__((long_call)) BattleStructureInit(struct BattleStruct *sp);
void __attribute__((long_call)) BattleStructureCounterInit(void *bw, struct BattleStruct *sp);
void __attribute__((long_call)) ServerMoveAIInit(void *bw, struct BattleStruct *sp);
void __attribute__((long_call)) DumpMoveTableData(void *dest);

// AI specific functions
int __attribute__((long_call)) AI_TypeCheckCalc(struct BattleStruct *sp, int *flag);
BOOL __attribute__((long_call)) AI_ShouldUseNormalTypeEffCalc(struct BattleStruct *sp, u32 held_effect, int pos);



/*Battle Script Function Declarations*/
void __attribute__((long_call)) IncrementBattleScriptPtr(struct BattleStruct *sp, int count);
int __attribute__((long_call)) read_battle_script_param(struct BattleStruct *sp);
void __attribute__((long_call)) JumpToMoveEffectScript(void *sp, int archive, int effect);
int __attribute__((long_call)) GrabClientFromBattleScriptParam(void *bw, struct BattleStruct *sp, int side);
void __attribute__((long_call)) LoadBattleSubSeqScript(struct BattleStruct *sp, int kind, int index);
void __attribute__((long_call)) PushAndLoadBattleScript(struct BattleStruct *sp, int kind, int index);




// defined in battle_calc_damage.c
u16 GetBattleMonItem(struct BattleStruct *sp, int client_no);



// defined in battle_pokemon.c;
BOOL BattleFormChangeCheck(void *bw, struct BattleStruct *sp, int *seq_no);
u32 GetAdjustedMoveType(struct BattleStruct *sp, u32 client, u32 move); // account for normalize and such
u32 GetAdjustedMoveTypeBasics(struct BattleStruct *sp, u32 move, u32 ability, u32 type); // AI-specific, client-agnostic



// defined in battle_item.c
u32 MoveHitUTurnHeldItemEffectCheck(void *bw, struct BattleStruct *sp, int *seq_no);
u32 ServerWazaHitAfterCheckAct(void *bw, struct BattleStruct *sp);
BOOL CheckDefenderItemEffectOnHit(void *bw, struct BattleStruct *sp, int *seq_no);



// defined in ability.c
u32 MoldBreakerAbilityCheck(struct BattleStruct *sp, int attacker, int defender, int ability);
BOOL MoveHitDefenderAbilityCheck(void *bw, struct BattleStruct *sp, int *seq_no);
u32 ServerWazaKoyuuCheck(void *bw, struct BattleStruct *sp);



// defined in other_battle_calculators.c
u8 CalcSpeed(void *bw, struct BattleStruct *sp, int client1, int client2, int flag);









#endif
