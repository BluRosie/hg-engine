#ifndef BATTLE_H
#define BATTLE_H

#include "types.h"
#include "item.h"
#include "sprite.h"
#include "pokemon.h"
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

/**
 *  @brief indices used for move_effect_to_subscripts in src/moves.c
 *  used specifically by battle effect scripts to queue up subscripts
 *  sadly these are in armips at the moment and do not use these constants verbatim
 */
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

/**
 *  @brief move status flag defines for the BattleStruct's waza_status_flag field.
 *  name is left as source define if not sure what it defines
 */
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

#define MOVE_STATUS_FLAG_FAILURE_ANY    (MOVE_STATUS_FLAG_MISS|MOVE_STATUS_FLAG_NOT_EFFECTIVE|\
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

#define WAZA_STATUS_FLAG_NO_OUT         (MOVE_STATUS_FLAG_FAILURE_ANY|\
                                         WAZA_STATUS_FLAG_PP_NONE|\
                                         WAZA_STATUS_FLAG_SIPPAI)

#define WAZA_STATUS_FLAG_SOUSAI         (WAZA_STATUS_FLAG_BATSUGUN|\
                                         WAZA_STATUS_FLAG_IMAHITOTSU)


/**
 *  @brief stat definitions as they appear in battles.
 *  index BattleStruct's battlemon[battler].states for the stat stages
 *  of the battlemon referenced by battler
 */
#define STAT_HP             (0x00)
#define STAT_ATTACK         (0x01)
#define STAT_DEFENSE        (0x02)
#define STAT_SPEED          (0x03)
#define STAT_SPATK          (0x04)
#define STAT_SPDEF          (0x05)
#define STAT_ACCURACY       (0x06)
#define STAT_EVASION        (0x07)
#define STAT_MAX            (0x08)

/**
 *  @brief battle type flags
 *  access with BattleTypeGet(bw) & BATTLE_TYPE_* to test properly
 */
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

/**
 *  @brief flags for effect_of_moves
 *  defines for BattleStruct's effect_of_moves field
 *  fields that cover multiple fields are often counters, i.e. MOVE_EFFECT_FLAG_LOCK_ON
 *
 *  the following statement:
 *  sp->effect_of_moves -= (1 << 3);
 *  decrements the 2-bit counter for lock on
 *
 *  seems to be duplicated in battle_moveflag structure (moveeffect field of BattleStruct)
 */
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

/**
 *  @brief non-volatile status condition flags
 *  not just valid for battles, also valid outside of battles
 *  in BattleStruct's battlemon[battler].condition field
 *     or GetMonData(mon, MON_DATA_STATUS, NULL);
 */
#define STATUS_FLAG_ASLEEP (0x07)
#define STATUS_FLAG_POISONED (0x08)
#define STATUS_FLAG_BURNED (0x10)
#define STATUS_FLAG_FROZEN (0x20)
#define STATUS_FLAG_PARALYZED (0x40)
#define STATUS_FLAG_BADLY_POISONED (0x80)
#define STATUS_FLAG_TOXIC_COUNT (0xf00)

#define STATUS_POISON_ANY (STATUS_FLAG_POISONED | STATUS_FLAG_BADLY_POISONED | STATUS_FLAG_TOXIC_COUNT)
#define STATUS_ANY_PERSISTENT (STATUS_FLAG_ASLEEP | STATUS_POISON_ANY | STATUS_FLAG_BURNED | STATUS_FLAG_FROZEN | STATUS_FLAG_PARALYZED)

/**
 *  @brief server status flags (for BattleStruct's server_status_flag)
 *  flags that signal to the battle server to divert its attention for a moment
 *    or that something else is happening and to not run certain code at any given moment
 */
#define SERVER_STATUS_FLAG_x20 (0x00000020)
#define SERVER_STATUS_FLAG_SYNCHRONIZE (0x00000080)
#define SERVER_STATUS_FLAG_OTHER_ACCURACY_CALC (0x00000400)
#define SERVER_STATUS_FLAG_TYPE_FLAT (0x00000800)
#define SERVER_STATUS_FLAG_TYPE_NONE (0x00008000)
#define SERVER_STATUS_FLAG_MOVE_HIT (0x00002000)
#define SERVER_STATUS_FLAG_ANIMATION_IS_PLAYING (0x00004000)
#define SERVER_STATUS_FLAG_BEAT_UP_USED (0x00010000)
#define SERVER_STATUS_FLAG_STAT_CHANGE_NEGATIVE (0x00020000)
#define SERVER_STATUS_FLAG_MOLD_BREAKER (0x00800000)

/**
 *  @brief server status 2 flags (for BattleStruct's server_status_flag2)
 *  a continuation of BattleStruct's server_status_flag that do the same type of things
 */
#define SERVER_STATUS_FLAG2_U_TURN (0x00000010)
#define SERVER_STATUS_FLAG2_FORM_CHANGE (0x04000000)

/**
 *  @brief volatile status condition flags
 *  accessible in BattleStruct's battlemon[battler].condition2
 */
#define STATUS2_CONFUSED (0x00000007)
#define STATUS2_FLINCH (0x00000008)
#define STATUS2_UPROAR (0x00000070)
#define STATUS2_RAMPAGE_TURNS (0x00000C00)
#define STATUS2_LOCKED_INTO_MOVE (0x00001000)
#define STATUS2_BINDING_TURNS (0x0000E000)
#define STATUS2_INFATUATION (0x000f0000)
#define STATUS2_FOCUS_ENERGY (0x00100000)
#define STATUS2_TRANSFORMED (0x00200000)
#define STATUS2_RECHARGE (0x00400000)
#define STATUS2_RAGE (0x00800000)
#define STATUS2_SUBSTITUTE (0x01000000)
#define STATUS2_MEAN_LOOK (0x04000000)
#define STATUS2_NIGHTMARE (0x08000000)
#define STATUS2_CURSE (0x1000000)
#define STATUS2_FORESIGHT (0x20000000)
#define STATUS2_DEFENCE_CURL (0x40000000)
#define STATUS2_TORMENT (0x80000000)

/**
 *  @brief side status flags that apply to one side
 *  accessible in BattleStruct's side_condition[side]
 *  seems to be duplicated in the side_condition_work structure bitfield
 */
#define SIDE_STATUS_REFLECT (0x1)
#define SIDE_STATUS_LIGHT_SCREEN (0x2)
#define SIDE_STATUS_SAFEGUARD (0x8)
#define SIDE_STATUS_MIST (0x40)
#define SIDE_STATUS_TAILWIND (0x300)
#define SIDE_STATUS_LUCKY_CHANT (0x7000)

/**
 *  @brief self status flags that apply to BattleStruct's oneSelfFlag[battler].status_flag
 *  aka OneSelfTurnEffect's status_flag
 *
 *  largely handles effects that are supposed to happen for the turn and nothing more
 */
#define SELF_STATUS_FLAG_HELD_ITEM_POWER_DOWN (0x00000001)
#define SELF_STATUS_FLAG_PICKUP (0x00000002)
#define SELF_STATUS_FLAG_ATTRACT (0x00000004) // this is checked for
#define SELF_STATUS_FLAG_SUBSTITUTE_HIT (0x00000008)

/**
 *  @brief move category constants
 */
#define SPLIT_PHYSICAL 0
#define SPLIT_SPECIAL 1
#define SPLIT_STATUS 2

/**
 *  @brief field status constants that apply to BattleStruct's field_condition field
 *
 *  largely for weathers, but also covers uproar, gravity, fog, etc.
 */
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

// weather that has indicators on the bottom screen
#define WEATHER_ANY_ICONS (WEATHER_RAIN_ANY | WEATHER_SANDSTORM_ANY | WEATHER_SUNNY_ANY | WEATHER_HAIL_ANY | FIELD_STATUS_FOG)

/**
 *  @brief absolute battler position constants
 *
 *  these are specifically used for BattleWorkEnemyClientGet to grab the enemy client on the position of the field opposite
 *  due to the way that battlers are loaded into position, these constants are not necessary, and one can use BATTLER_OPPONENT and BATTLER_ACROSS macros for the same purpose
 */
#define BATTLER_POSITION_SIDE_RIGHT (0)
#define BATTLER_POSITION_SIDE_LEFT  (2)

/**
 *  @brief move flags for BattleStruct's moveTbl[move_number].flag field
 *  aka BattleMove's flag field
 *
 *  used to stipulate various move properties without needing to make lists for each property desired to check
 */
#define FLAG_CONTACT     (0x01)
#define FLAG_PROTECT     (0x02)
#define FLAG_MAGIC_COAT  (0x04)
#define FLAG_SNATCH      (0x08)
#define FLAG_MIRROR_MOVE (0x10)
#define FLAG_KINGS_ROCK  (0x20)
#define FLAG_KEEP_HP_BAR (0x40)
#define FLAG_HIDE_SHADOW (0x80)

/**
 *  @brief macros to grab certain battlers relative to the one passed in
 *
 *  due to the way that battlers are always loaded in, BATTLER_* macros are convenient to use to grab different battlers
 */
#define BATTLER_ALLY(client) (client ^ 2)
#define BATTLER_OPPONENT(client) (client ^ 1)
#define BATTLER_ACROSS(client) (client ^ 3)

#define BATTLER_IS_ENEMY(client) (client & 1)
#define BATTLER_IS_PLAYERS(client) !(BATTLER_IS_ENEMY(client))

// these macros test properties of the battlers passed in
#define BATTLERS_ON_SAME_SIDE(battler1, battler2) ((battler1 & 1) == (battler2 & 1))
#define BATTLERS_ON_DIFFERENT_SIDE(battler1, battler2) !BATTLERS_ON_SAME_SIDE(battler1, battler2)

/**
 *  @brief message tags to tell the string buffer expander how to expand each string buffer
 *  buffered as the msg_tag of a MESSAGE_PARAM
 *
 *  i.e. TAG_NICK_ABILITY will tell the string buffer preparing function to turn
 *  "{STRVAR_1 1, 0, 0} can’t get it\ngoing because of its {STRVAR_1 5, 1, 0}!"
 *  into
 *  "Regigigas can’t get it\ngoing because of its Slow Start!"
 *
 *  specifically used for printmessage battle script command
 */
#define TAG_NONE                        (0)     //nothing

#define TAG_NONE_DIR                    (1)     //nothing (but switch depending on team)
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
#define TAG_NICK_POKE                   (14)    //nickname      pokémon
#define TAG_NICK_ITEM                   (15)    //nickname      helditem
#define TAG_NICK_UNK                    (16)    //nickname      ?
#define TAG_NICK_NUM                    (17)    //nickname      number
#define TAG_NICK_TRNAME                 (18)    //nickname      trainername
#define TAG_NICK_BOX                    (19)    //nickname      boxname
#define TAG_MOVE_DIR                    (20)    //move (but switch depending on team)
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


/**
 *  @brief animation constants for statbuffchange
 */
#define STATUS_EFF_UP (12)
#define STATUS_EFF_DOWN (13)


/**
 *  @brief constants used to change the mode for HeldItemAtkGet
 */
#define ATK_CHECK_NORMAL    (0)
#define ATK_CHECK_NONE      (1)
#define ATK_CHECK_SHUTOUT   (2)

//inc record
#define CLIENT_BOOT_TYPE_MINE       (0)
#define CLIENT_BOOT_TYPE_NOMINE     (1)

//save data
#define RECID_TEMOTI_MAKIZOE (71+26)

#define SWOAM_NORMAL    (0)
#define SWOAM_LOOP      (1)

/**
 *  @brief eventually implement difficulty modes
 */
#define NORMAL_MODE (0)
#define CHALLENGE_MODE (1)
#define EASY_MODE (2)

/**
 *  @brief msg work specifically for statuses
 */
enum
{
    MSG_HEAL_SLEEP = 0,
    MSG_HEAL_POISON,
    MSG_HEAL_BURN,
    MSG_HEAL_PARALYSIS,
    MSG_HEAL_FROZEN,
};


/**
 *  @brief structure for move data dumped to BattleStruct's moveTbl
 */
struct __attribute__((packed)) BattleMove
{
    /* 0x0 */ u16 effect;      /**< battle effect script to run */
    /* 0x2 */ u8 split;        /**< move category for physical/special split */
    /* 0x3 */ u8 power;        /**< move base power */

    /* 0x4 */ u8 type;         /**< move type */
    /* 0x5 */ u8 accuracy;     /**< move accuracy, 0 is always-hit or has separate accuracy calc */
    /* 0x6 */ u8 pp;           /**< base move power points */
    /* 0x7 */ u8 secondaryEffectChance; /**< % chance that the move's secondary effect happens */

    /* 0x8 */ u16 target;      /**< target bitfield for the move */
    /* 0xA */ s8 priority;     /**< move priority */
    /* 0xB */ u8 flag;         /**< various flags for the move, see FLAG_* constants */
    /* 0xC */ u8 unk[4];       /**< battle effect script to run */
}; // size = 0x10

/**
 *  @brief effects to track across one turn
 */
struct __attribute__((packed)) OneTurnEffect
{
    /* 0x00 */ u32 struggle_flag : 1;     /**< pokémon struggled this turn */
               u32 pp_dec_flag : 1;       /**< pp decreased this turn? */
               u32 mamoru_flag : 1;
               u32 helping_hand_flag : 1; /**< pokémon is being aided by helping hand */
               u32 magic_cort_flag : 1;   /**< pokémon has magic coat active */
               u32 yokodori_flag : 1;
               u32 haneyasume_flag : 1;
               u32 escape_flag : 2;
               u32 prevent_one_hit_ko_ability : 1; /**< pokémon has damp active */
               u32 : 22;

    /* 0x04 */ int physical_damage[4];    /**< [don't use] physical damage as indexed by battler.  Counter doesn't use this, use OneSelfTurnEffect's physical_damage (sp->oneSelfFlag[battler].physical_damage) */
    /* 0x14 */ int physical_damager;      /**< [don't use] last battler that physically damaged this pokémon.  Counter doesn't use this, use OneSelfTurnEffect's physical_damager (sp->oneSelfFlag[battler].physical_damager) */
    /* 0x18 */ int physical_damager_bit;  /**< [don't use] No2Bit of physical_damager */
    /* 0x1C */ int special_damage[4];     /**< [don't use] special damage as indexed by battler.  Mirror Coat doesn't use this, use OneSelfTurnEffect's special_damage (sp->oneSelfFlag[battler].special_damage) */
    /* 0x2C */ int special_damager;       /**< [don't use] last battler that specially damaged this pokémon.  Mirror Coat doesn't use this, use OneSelfTurnEffect's special_damager (sp->oneSelfFlag[battler].special_damager) */
    /* 0x30 */ int special_damager_bit;   /**< [don't use] No2Bit of special_damager */
    /* 0x34 */ int last_damage;           /**< [don't use] last damage that was taken.  still use OneSelfTurnEffect field */
    /* 0x38 */ int last_damager;          /**< [don't use] last battler that damaged this pokémon.  still use OneSelfTurnEffect field */
    /* 0x3C */ int dameoshi_damage;
}; // size = 0x40

/**
 *  @brief effects to track across one turn that seems to actually be better used
 */
struct __attribute__((packed)) OneSelfTurnEffect
{
    /* 0x00 */ u32 no_pressure_flag : 1;         /**< affected by pressure */
               u32 lightning_rod_flag : 1;       /**< lightning rod activated on this pokémon */
               u32 storm_drain_flag : 1;         /**< storm drain activated on this pokémon */
               u32 mold_breaker_flag : 1;        /**< mold breaker activated on this pokémon */
               u32 trickroom_flag : 1;           /**< trick room is active on this pokémon */
               u32 prevent_one_hit_ko_item : 1;  /**< a held item prevented OHKO on this pokémon */
               u32 korogaru_count : 3;           /**< counter for rollout */
               u32 defiant_flag : 1;             /**< flag that signals to activate defiant after a stat is raised */
               u32 : 22;

    /* 0x04 */ int physical_damage;              /**< physical damage last taken */
    /* 0x08 */ int physical_damager;             /**< last battler that physically damaged this pokémon */
    /* 0x0C */ int special_damage;               /**< special damage last taken */
    /* 0x10 */ int special_damager;              /**< last battler that specially damaged this pokémon */
    /* 0x14 */ int status_flag;
    /* 0x18 */ int shell_bell_damage;            /**< damage basis to be used for shell bell */
}; // size = 0x1C

/**
 *  @brief a structure that tracks various reasons that a pokémon did not move after the main bits tracking them have been cleared
 */
struct __attribute__((packed)) MoveOutCheck
{
    /* 0x0 */ u32 stoppedFromParalysis :1;    /**< pokémon could not move due to paralysis */
              u32 stoppedFromIneffective :1;  /**< pokémon could not move due to its move being entirely ineffective */
              u32 stoppedFromImprison :1;     /**< pokémon could not move due to imprison */
              u32 stoppedFromAttract :1;      /**< pokémon could not move due to attract */
              u32 stoppedFromDisable :1;      /**< pokémon could not move due to disable */
              u32 stoppedFromTaunt :1;        /**< pokémon could not move due to taunt */
              u32 stoppedFromFlinch :1;       /**< pokémon could not move because it flinched */
              u32 stoppedFromConfusion :1;    /**< pokémon could not move due to hitting itself in confusion */
              u32 stoppedFromGravity :1;      /**< pokémon could not move due to gravity bringing it to the ground */
              u32 stoppedFromHealBlock :1;    /**< pokémon could not move due to heal block preventing the move */
              u32 dummy :22;
}; // size = 0x4

/**
 *  @brief a structure that tracks various things regarding moves for each pokémon.  largely a bitfield copy of effect_of_moves, but what is actually checked for to *enforce* each effect
 *
 *  stored as moveeffect in each BattlePokemon structure
 */
struct __attribute__((packed)) battle_moveflag
{
    /* 0x00 */ u32 disabledTurns : 3;        /**< duration of disable */
               u32 encoredTurns : 3;         /**< duration of encore */
               u32 isCharged : 2;            /**< whether or not the pokémon is charged */
               u32 tauntTurns : 3;           /**< duration of taunt */
               u32 protectSuccessTurns : 2;  /**< how many times protect has succeeded */
               u32 perishSongTurns : 2;      /**< perish song count */
               u32 rolloutCount : 3;         /**< rollout count */
               u32 furyCutterCount : 3;      /**< fury cutter successes */
               u32 stockpileCount : 3;       /**< stockpile count */
               u32 stockpileDefCount : 3;    /**< amount of defense stages due to stockpile */
               u32 stockpileSpDefCount : 3;  /**< amount of special defense stages due to stockpile */
               u32 truantFlag : 1;           /**< truant active flag */
               u32 flashFire : 1;            /**< flash fire active flag */

    /* 0x04 */ u32 battlerIdLockOn : 2;      /**< which battler the pokémon is locked on to */
               u32 mimickedMoveIndex : 4;    /**< which move was mimicked as index to its move array */
               u32 battlerIdBinding : 2;     /**< which battler the pokémon is binding */
               u32 battlerIdMeanLook : 2;    /**< which battler the pokémon is trapping */
               u32 lastResortCount : 3;      /**< how many moves have been used so far for last resort */
               u32 magnetRiseTurns : 3;      /**< magnet rise duration */
               u32 healBlockTurns : 3;       /**< heal block duration */
               u32 embargoFlag : 3;          /**< embargo duration */
               u32 knockOffFlag : 1;         /**< if the pokémon has lost its item.  used for unburden */
               u32 metronomeTurns : 4;       /**< how many turns the metronome item has run for */
               u32 boostedAccuracy : 1;      /**< accuracy boosted flag */
               u32 custapBerryFlag : 1;      /**< whether the custap berry has activated */
               u32 quickClawFlag : 1;        /**< whether the quick claw activated */
               u32 meFirstFlag : 1;          /**< whether the move me first was used */
               u32 : 1;

    /* 0x08 */ int rechargeCount;            /**< recharge duration */
    /* 0x0c */ int fakeOutCount;             /**< can it use fake out? */
    /* 0x10 */ int slowStartTurns;           /**< slow start duration */
    /* 0x14 */ int meFirstCount;             /**< me first count */
    /* 0x18 */ int substituteHp;             /**< amount of hp the active substitute has */
    /* 0x1c */ u32 transformPid;             /**< pid stored for transform */
    /* 0x20 */ u16 disabledMove;             /**< move that was disabled */
    /* 0x22 */ u16 bindingMove;              /**< move that is binding the opponent */
    /* 0x24 */ u16 encoredMove;              /**< move that is forced by encore */
    /* 0x26 */ u16 encoredMoveIndex;         /**< move position that is forced by encore in the pokémon's move array */
    /* 0x28 */ u16 lastResortMoves[4];       /**< which moves have been used for last resort purposes */
    /* 0x2a */ u16 moveNoChoice;             /**< move position selected */
    /* 0x2c */ u16 transformGender;          /**< pokémon sex stored for transform purposes */
// padding at 2e
    /* 0x30 */ int itemHpRecover;            /**< how much hp was just restored by an item */
}; // size = 0x34


/**
 *  @brief in-battle representation of a PartyPokemon
 *
 *  not encrypted or anything, has a number of fields pertaining to each mon on the field
 */
struct __attribute__((packed)) BattlePokemon
{
    /* 0x00 */ u16 species;                  /**< species */
    /* 0x02 */ u16 attack;                   /**< raw attack stat */
    /* 0x04 */ u16 defense;                  /**< raw defense stat */
    /* 0x06 */ u16 speed;                    /**< raw speed stat */
    /* 0x08 */ u16 spatk;                    /**< raw special attack stat */
    /* 0x0a */ u16 spdef;                    /**< raw special defense stat */
    /* 0x0c */ u16 move[4];                  /**< move indices the BattlePokemon knows */
    /* 0x14 */ u32 hp_iv : 5;                /**< hp iv */
               u32 atk_iv : 5;               /**< attack iv */
               u32 def_iv : 5;               /**< defense iv */
               u32 spe_iv : 5;               /**< speed iv */
               u32 spatk_iv : 5;             /**< special attack iv */
               u32 spdef_iv : 5;             /**< special defense iv */
               u32 is_egg : 1;               /**< the BattlePokemon is an egg */
               u32 have_nickname : 1;        /**< has a nickname */
    /* 0x18 */ s8 states[8];                 /**< stat stages */
    /* 0x20 */ int weight;                   /**< current weight (before multiplicative adjustments but after autotomize adjustments) */
    /* 0x24 */ u8 type1; //25                /**< first type */
    /* 0x25 */ u8 type2;                     /**< second type */
    /* 0x26 */ u8 form_no : 5;               /**< form id */
               u8 rare : 1;                  /**< shininess */
               u8 ability;                   /**< ability index */

               /** switch in flags to mark it as having been done */
    /* 0x28 */ u32 appear_check_flag : 1;    /**< has appeared */
               u32 intimidate_flag : 1;      /**< intimidate has activated */
               u32 trace_flag : 1;           /**< trace has activated */
               u32 download_flag : 1;        /**< download has activated */
               u32 anticipation_flag : 1;    /**< anticipation has printed its message */
               u32 forewarn_flag : 1;        /**< forewarn has printed its message */
               u32 slow_start_flag : 1;      /**< slow start has printed its message */
               u32 slow_start_end_flag : 1;  /**< slow start should end */
               u32 frisk_flag : 1;           /**< frisk has printed its message */
               u32 mold_breaker_flag : 1;    /**< mold breaker has printed its message */
               u32 pressure_flag : 1;        /**< pressure has printed its message */
               u32 canMega : 1;              /**< the BattlePokemon can mega */
               u32 unnerve_flag : 1;         /**< unnerve has printed its message */
               u32 dark_aura_flag : 1;       /**< dark aura has printed its message */
               u32 fairy_aura_flag : 1;      /**< fairy aura has printed its message */
               u32 aura_break_flag : 1;      /**< aura break has printed its message */
               u32 sheer_force_flag : 1;     /**< sheer force has printed its message */
               u32 imposter_flag : 1;        /**< imposter has activated */
               u32 critical_hits : 2;        /**< tracks the amount of critical hits the pokémon has landed while in battle so far */
               u32 air_ballon_flag : 1;      /**< the held air balloon has printed its message */
               u32 potentially_affected_by_psychic_terrain_move_used_flag : 1;
               u32 parental_bond_flag : 2;
               u32 parental_bond_is_active : 1;
               u32 ability_activated_flag : 1;
               u32 : 6; // need to add to ClearBattleMonFlags when added to here as well
    /* 0x2c */ u8 pp[4];                     /**< move pp left */
    /* 0x30 */ u8 pp_count[4];               /**< move max pp */
    /* 0x34 */ u8 level;                     /**< current level */
    /* 0x35 */ u8 friendship;                /**< friendship */
    /* 0x36 */ u16 nickname[11];             /**< nickname characters.  see charmap.txt for more information */
    /* 0x4c */ s32 hp;                       /**< current hp */
    /* 0x50 */ u32 maxhp;                    /**< max hp */
    /* 0x54 */ u16 oyaname[8];               /**< OT name */
    /* 0x68 */ u32 exp; //68                 /**< total experience */
    /* 0x6c */ u32 personal_rnd;             /**< personality id */
    /* 0x70 */ u32 condition;                /**< non-volatile status conditions (STATUS_* constants) */
    /* 0x74 */ u32 condition2;               /**< most other status conditions (STATUS2_* constants) */
    /* 0x78 */ u32 id_no;                    /**< OT ID */
    /* 0x7c */ u16 item;                     /**< held item */
    /* 0x7e */ u16 dummy;
    /* 0x80 */ u8 hit_count;
    /* 0x81 */ u8 message_flag;
    /* 0x82 */ u8 sex : 4;                   /**< sex for rivalry purposes etc. */
               u8 oyasex : 4;                /**< original trainer sex */
    /* 0x83 */ u8 get_ball;                  /**< caught ball */
    /* 0x84 */ u32 effect_of_moves;          /**< move effect trackers (see MOVE_EFFECT_* constants) */
    /* 0x88 */ u32 effect_of_moves_temp;     /**< storage for effect_of_moves */
    /* 0x8c */ struct __attribute__((packed)) battle_moveflag moveeffect;
}; // size = 0xc0

typedef struct {
    u32 alloc_size;
    u32 alloc_ofs;
    u16 type;
    u16 conttype;
} __attribute__((packed)) CHAR_MANAGER_ALLOCDATA;


/**
 *  @brief weather/other field condition tracker
 */
struct __attribute__((packed)) field_condition_count
{
    /*0x00*/ u32     weather_count;                            /**< weather duration left */
    /*0x04*/ u8      future_prediction_count[CLIENT_MAX];      /**< future turns left */
    /*0x08*/ u8      wish_count[CLIENT_MAX];                   /**< wish turns left */
    /*0x0C*/ u16     future_prediction_wazano[CLIENT_MAX];     /**< move to use for future sight damage (future sight or doom desire?) */
    /*0x14*/ int     future_prediction_client_no[CLIENT_MAX];  /**< target to use for future sight damage */
    /*0x24*/ s32     future_prediction_damage[CLIENT_MAX];     /**< damage to use for future sight */
    /*0x34*/ u8      wish_sel_mons[CLIENT_MAX];                /**< party position to use to restore wish */
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


/**
 *  @brief structure that tracks the terrain type currently present
 */
typedef struct {
    enum TerrainOverlayType{TERRAIN_NONE, GRASSY_TERRAIN, MISTY_TERRAIN, ELECTRIC_TERRAIN, PSYCHIC_TERRAIN} type;
    u8 numberOfTurnsLeft;
} __attribute__((packed)) TerrainOverlay;


/**
 *  @brief the entire battle structure that we are interested in (for the most part)
 *
 *  tracks everything about battle state.  consider it a "battle global" structure
 */
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
    /*0xBC*/ int push_skill_arc_kind[CLIENT_MAX];
    /*0xCC*/ int push_skill_arc_index[CLIENT_MAX];
    /*0xDC*/ int push_skill_seq_no[CLIENT_MAX];
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
    /*0x1D4*/ struct OneTurnEffect oneTurnFlag[CLIENT_MAX];
    /*0x2D4*/ struct OneSelfTurnEffect oneSelfFlag[CLIENT_MAX];
    /*0x344*/ struct MoveOutCheck moveOutCheck[CLIENT_MAX];

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
    /*0x315D*/ u8 relic_song_tracker; // bitfield with 1 << client for if it used relic song
    /*0x315E*/ u8 padding_315E[0x20]; // padding to get moveTbl to 317E (for convenience of 3180 in asm)
    /*0x317E*/ struct BattleMove moveTbl[NUM_OF_MOVES + 1];
    /*0x    */ u32 gainedExperience[6]; // possible experience gained per party member in order to get level scaling done right
    /*0x    */ u32 gainedExperienceShare[6]; // possible experience gained per party member in order to get level scaling done right
    /*0x    */ int SkillSeqWork[600];
    /*...*/

               TerrainOverlay terrainOverlay;
               u8 printed_field_message;
};


struct BattleSystem {
    // u32 *unk0;
    // BgConfig *bgConfig;
    // Window *window;
    // u32 *unkC;
    // u32 *unk10;
    // u32 *unk14;
    // String *msgBuffer;
    // u32 unk1C;
    // u32 unk20;
    // u32 unk24;
    // PaletteData *palette;
    // u32 battleType;
    // BattleContext *ctx;
    /* 0x00 */ u8 padding_0[0x34];
    /* 0x34 */ void *opponentData[4];
    // int maxBattlers;
    // PlayerProfile *playerProfile[4];
    // Bag *bag;
    // BagCursor *bagCursor;
    // Pokedex *pokedex;
    // PCStorage *storage;
    // Party *trainerParty[4];
    // SOUND_CHATOT *chatotVoice[4];
    // u32 *unk88;
    // u32 *unk8C;
    // SpriteRenderer *unk90;
    // SpriteGfxHandler *unk94;
    // u32 *unk98;
    // u32 *unk9C;
    // u16 trainerId[4];
    // u8 trainerGender[4];
    // Trainer trainers[4];
    // UnkBattleSystemSub17C unk17C[2]; //Battle Background..?
    // u32 *unk19C;
    // u32 *unk1A0[2];
    // FontID *hpFont;
    // FontID *levelFont;
    // void *msgIcon;
    // Options *options;
    // u32 *unk1B8;
    // void *unk1BC;
    // u32 *unk1C0;
    // u32 *unk1C4;
    // void *unk1C8; //related to animations
    // u32 *unk1CC;
    // UnkBattleSystemSub1D0 unk1D0[4];
    // UnkBattleSystemSub220 unk220;
    // GAME_STATS *gameStats;
    // u8 *unk230;
    // u16 *unk234;
    // u8 sendBuffer[0x1000];
    // u8 recvBuffer[0x1000];
    // u16 unk2238[0x70];
    // u16 unk2318[0x70];
    // u16 unk23E8; //labeling may be wrong before here
    // u16 unk23EA;
    // u16 unk23EC;
    // u16 unk23EE;
    // u16 unk23F0;
    // u16 unk23F2;
    // u8 *unk23F4;
    // u8 *unk23F8;
    // u8 unk23FC;
    // u8 unk23FD;
    // u8 unk23FE;
    // u8 unk240F_0:1;
    // u8 unk240F_1:1;
    // u8 unk240E_F:1;
    // u8 criticalHpMusic:2;
    // u8 criticalHpMusicDelay:3;
    // Terrain terrain;
    // int unk2404;
    // int location;
    // u32 battleSpecial;
    // int timezone; //might be timeOfDay? unclear
    // int safariBallCnt;
    // u8 unk2418[4];
    // u32 unk241C;
    // u8 battleOutcomeFlag;
    // u8 unk2421;
    // u16 unk2422;
    // int unk2424;
    // int unk2428;
    // int weather;
    // int unk2430;
    // u32 unk2434;
    // int unk2438;
    // int unk243C;
    // int unk2440;
    // u8 unk2442;
    // u8 unk2445;
    // u16 unk2446;
    // u32 rand;
    // u32 randTemp;
    // u16 unk244C[4];
    // u16 unk2454[4];
    // u16 unk245C[4];
    // int unk2464[4];
    // u32 unk2474_0:1,
    //     unk2474_1:1,
    //     unk2474_2:1,
    //     unk2474_3:1,
    //     unk2474_4:28;
    // u32 unk2478;
    // SysTask *unk247C;
    // u8 chatotVoiceParam[4];
    // u32 unk2488;
    // u8 unk248C[4];
};


//Ability Checks - values for flag for CheckSideAbility
#define CHECK_ABILITY_SAME_SIDE             0
#define CHECK_ABILITY_SAME_SIDE_HP          1
#define CHECK_ABILITY_OPPOSING_SIDE         2
#define CHECK_ABILITY_OPPOSING_SIDE_HP      3
#define CHECK_ABILITY_OPPOSING_SIDE_HP_RET  4
#define CHECK_ABILITY_ALL                   5
#define CHECK_ABILITY_ALL_NOT_USER          6
#define CHECK_ABILITY_ALL_NOT_USER_RET      7
#define CHECK_ABILITY_ALL_HP                8
#define CHECK_ABILITY_ALL_HP_NOT_USER       9

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

#define BATTLE_MON_HAS_TYPE(sp, client, type) (sp->battlemon[client].type1 == type || sp->battlemon[client].type2 == type)

#define MEGA_NEED 1
#define MEGA_CHECK_APPER 2
#define MEGA_NO_NEED 0

struct __attribute__((packed)) newBattleStruct
{
    u8 SideMega[4];//检查双方是否mega过,0我方,1敌方
    u8 needMega[4];//需要mega
    u8 playerWantMega;
    u8 PlayerMegaed;
    u8 MegaIconLight;
    u8 ChangeBgFlag:4;
    u8 CanMega:4;

    CATS_ACT_PTR MegaOAM;
    CATS_ACT_PTR MegaButton;
    CATS_ACT_PTR WeatherOAM;
    SysTask *weatherUpdateTask;
    u32 weather;
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
    /*0x0004*/  struct Party *poke_party[4];
    /*0x0008*/  int win_lose_flag;
    /*0x000C*/  int trainer_id[4];
    /*0x001C*/  TRAINER_DATA trainer_data[4]; //0xD0 bytes
    /*0x00EC*/  u8 fill[0xD4];
    /*0x01C0*/  void* savedata;
};


struct __attribute__((packed)) FULL_TRAINER_MON_DATA_STRUCTURE // structure isn't actually used as the structure is iterated through conditionally
{
    /* 0x00 */ u8 ivs;
    /* 0x01 */ u8 abilityslot;
    /* 0x02 */ u16 level;
    /* 0x04 */ u16 monsno;
    /* 0x06 */ u16 itemno;
    /* 0x08 */ u16 moves[4];
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
}; // size = 0x56

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
    u16 illusionNameBuf[4][12]; // at least get this hword aligned
    u8 illusionPos[4];
    u8 illusionClient[4];
    u8 isSideInIllusion;
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
















extern struct newBattleStruct newBS;
extern const u16 TetsunoKobushiTable[0xF];

int LONG_CALL BattlePokemonParamGet(void*,int ,int,void*);
s32 LONG_CALL BattleItemDataGet(void*,u16,u16);
u32 LONG_CALL BattleTypeGet(void*);
int LONG_CALL BattleWorkMonDataGet(void*,void*,int ,int);
int LONG_CALL CheckSideAbility(void *bw,struct BattleStruct *sp,int flag,int client_no,int speabi);
u8 LONG_CALL CheckNumMonsHit(void*,void*,int ,int);
BOOL LONG_CALL CheckFieldMoveEffect(void *bw, void* ,int );
struct PartyPokemon * LONG_CALL BattleWorkPokemonParamGet(void *bw, int client_no, int sel_mons_no);
void *LONG_CALL BattleWorkFightMsgGet(void *bw);
void LONG_CALL BattleWorkPinchSEFlagSet(void *bw, u32 mode);
void LONG_CALL Snd_BgmPlay(u32 id);
u32 LONG_CALL ST_ServerPokeOneSelfCheckActPP(void *bw, struct PartyPokemon *pp);
void LONG_CALL PokeExpCalc(struct Party *ppt, int pos, int mons_no, int form_no);
u8 LONG_CALL BattleWorkConfigMsgSpeedGet(void *bw);
u8 LONG_CALL BattleMSG_Print(void *bw, void *msg_m, MESSAGE_PARAM *mp, int wait);
u8 LONG_CALL GF_MSG_PrintEndCheck(u8 msg_index);
void LONG_CALL SCIO_EXPGaugeCalcSet(void *bw, struct BattleStruct *sp, int send_client, int now_exp);
u32 LONG_CALL ST_ServerQueCheck(struct BattleStruct *sp);
void LONG_CALL SCIO_StatusEffectSet(void *bw, struct BattleStruct *sp, int send_client, int status);
void LONG_CALL SCIO_LevelUpEffectSet(void *bw, int send_client);
u32 LONG_CALL BattleWorkPlaceIDGet(void *bw);
void LONG_CALL Task_DistributeExp(void *arg0, void *work);
int LONG_CALL BattleWorkPokeCountGet(void*,int);

BOOL LONG_CALL ServerCriticalMessage(void*,void*);
BOOL LONG_CALL ServerWazaStatusMessage(void*,void*);
BOOL LONG_CALL ST_ServerAddStatusCheck(void*,void*,int *seq_no);
BOOL LONG_CALL ServerIkariCheck(void*,void*);
BOOL LONG_CALL ST_ServerWazaHitTokuseiCheck_Old(void*,void*,int *seq_no);
int LONG_CALL ST_ServerWaruagakiCheck(void *bw, struct BattleStruct *sp, int client_no, int waza_bit, int check_bit);
struct Save_DexData* LONG_CALL BattleWorkZukanWorkGet(void *bw);
int LONG_CALL BattleWorkClientSetMaxGet(void*);
u8 LONG_CALL ST_ServerAgiCalc(void*,void*,int ,int,int);
u16 LONG_CALL ST_ServerSelectWazaGet(void*,int);
BOOL LONG_CALL  ST_ServerNamakeCheck(void*,int);
void LONG_CALL SCIO_BlankMessage(void*);
BOOL LONG_CALL ServerSenseiCheck(void *bw, struct BattleStruct *sp);
BOOL LONG_CALL ServerPPCheck(void *bw, struct BattleStruct *sp);
BOOL LONG_CALL ServerDefenceCheck(void *bw, struct BattleStruct *sp);
BOOL LONG_CALL ServerStatusCheck(void *bw, struct BattleStruct *sp);
int LONG_CALL ServerBadgeCheck(void *bw, struct BattleStruct *sp, int *seq_no);
void LONG_CALL ST_ServerDefenceClientTokuseiCheck(void *bw, struct BattleStruct *sp, int attack, u16 waza_no);
void LONG_CALL ST_ServerTotteokiCountCalc(void *bw,struct BattleStruct *sp);
void LONG_CALL ST_ServerMetronomeBeforeCheck(void *bw,struct BattleStruct *sp);
int LONG_CALL ST_ServerPokeAppearCheck(void *bw, struct BattleStruct *sp);
int LONG_CALL CreateNicknameTag(struct BattleStruct *sp, int client_no);
int LONG_CALL BattleWorkClientNoGet(void *bw, int client_type);




/* new battle engine declarations*/
/**
 *  @brief grab battler ability.  don't consider mold breaker in this
 *
 *  @param sp global battle structure
 *  @param client battler to check
 *  @return ability index that battler has
 */
int LONG_CALL GetBattlerAbility(struct BattleStruct *sp, int client);

/**
 *  @brief perform damage division, setting the variables that need to be set for damage in general
 *
 *  @param data numerator, typically damage multiplied by something else
 *  @param divisor divisor to perform on data
 *  @return new damage value
 */
int LONG_CALL BattleDamageDivide(int data, int divisor);

/**
 *  @brief grab the weather from the overworld
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @return overworld weather id
 */
int LONG_CALL BattleWorkWeatherGet(void *bw);

/**
 *  @brief grab enemy client requested by side param
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param client is the enemy to check
 *  @param side is one of the BATTLER_POSITION_SIDE_* constants to grab left or right
 *  @return requested client on the enemy side
 */
int LONG_CALL BattleWorkEnemyClientGet(void *bw, int client, int side);

/**
 *  @brief choose which enemy should be traced
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param def1 one of the enemy clients
 *  @param def2 the other enemy client
 *  @return trace client to act on.  set BattleStruct's defence_client to this to properly act after
 */
int LONG_CALL TraceClientGet(void *bw, struct BattleStruct *sp, int def1, int def2);

/**
 *  @brief check if client is on enemy side or not.  equivalent to BATTLER_IS_ENEMY(client)
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param client
 *  @return TRUE if on enemy side, FALSE if on player side
 */
u8 LONG_CALL IsClientEnemy(void *bw, int client);

/**
 *  @brief modify type effectiveness move flags to print the right message, adjust damage, etc.  also used for AI and anticipation
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param movenum move number being used
 *  @param movetype potential move type override (depending on normalize and adjacent abilities)
 *  @param attacker attacking battler
 *  @param defender defending battler
 *  @param damage current move damage
 *  @param flag pointer to store adjusted move status flags to
 *  @return adjusted damage value.  also store move flags in flag
 */
int LONG_CALL TypeCalc(void *bw, struct BattleStruct *sp, int movenum, int movetype, int attacker, int defender, int damage, u32 *flag);

/**
 *  @brief sees if anticipation will automatially log a certain move (i.e. OHKO moves)
 *
 *  @param sp global battle structure
 *  @param movenum move to check
 *  @return
 */
u32 LONG_CALL AnticipateMoveEffectListCheck(struct BattleStruct *sp, int movenum);

/**
 *  @brief return PRNG value from the one reserved for battles
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @return PRNG number specifically for battles to somewhat prevent save scumming
 */
u16 LONG_CALL BattleRand(void *bw);

/**
 *  @brief choose a random enemy battler to target
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param client to base the attack on
 *  @return a random enemy client
 */
int LONG_CALL ChooseRandomTarget(void *bw, struct BattleStruct *sp, int client);

/**
 *  @brief count how many moves a battler has and return it.  used for last resort
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param client_no battler whose moves to count
 *  @return total number of moves
 */
int LONG_CALL CountBattlerMoves(void *bw, struct BattleStruct *sp, int client_no);

/**
 *  @brief check if battler's ability will heal its status
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param client_no battler to check
 *  @param act_flag 0 to ignore random chance?  1 to account for random chance, i.e. 1/3 shed skin chance
 *  @return TRUE if it does heal; FALSE otherwise
 */
u32 LONG_CALL AbilityStatusRecoverCheck(void *bw, struct BattleStruct *sp, int client_no, int act_flag);

/**
 *  @brief check if the held item will heal the battler of its status
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param client_no battler to check
 *  @param seq_no pointer to store subscript to if the held item heals
 *  @return TRUE if held item heals and a subscript was stored in seq_no; FALSE otherwise
 */
u32 LONG_CALL HeldItemHealCheck(void *bw, struct BattleStruct *sp, int client_no, int *seq_no);

/**
 *  @brief grab the held item effect of the client
 *
 *  @param sp global battle structure
 *  @param client_no battler to grab from
 *  @return held item effect
 */
int LONG_CALL HeldItemHoldEffectGet(struct BattleStruct *sp, int client_no);

/**
 *  @brief grab the held item effect parameter of the client
 *
 *  @param sp global battle structure
 *  @param client_no battler to grab from
 *  @param flag 0 to care about embargo?
 *  @return held item parameter
 */
int LONG_CALL HeldItemAtkGet(struct BattleStruct *sp, int client_no, int flag);

/**
 *  @brief check to see if client_no has already moved this turn
 *
 *  @param sp global battle structure
 *  @param client_no battler to check
 *  @return TRUE if moving after client_no; FALSE otherwise
 */
u32 LONG_CALL IsMovingAfterClient(struct BattleStruct *sp, int client_no);

/**
 *  @brief check if client_no has a substitute up
 *
 *  @param sp global battle structure
 *  @param client_no battler to check
 *  @return TRUE if client_no has a substitute active; FALSE otherwise
 */
u32 LONG_CALL CheckSubstitute(struct BattleStruct *sp, int client_no);

/**
 *  @brief grab seed value for general PRNG
 *
 *  @return general PRNG seed
 */
u32 LONG_CALL gf_get_seed(void);

/**
 *  @brief get battle status flag from battle work structure.  used to check if in distortion world only at the moment
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @return battle status flag
 */
u32 LONG_CALL BattleWorkBattleStatusFlagGet(void *bw);

/**
 *  @brief copy PartyPokemon to other PartyPokemon
 *
 *  @param pp_src source PartyPokemon
 *  @param pp_dest target PartyPokemon
 */
void LONG_CALL PokeCopyPPtoPP(struct PartyPokemon *pp_src, struct PartyPokemon *pp_dest);

/**
 *  @brief copy relevant BattlePokemon fields to PartyPokemon
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param send_client client to copy BattlePokemon to PartyPokemon for
 *  @return
 */
void LONG_CALL SCIO_PSPtoPPCopy(void *bw, struct BattleStruct *sp, int send_client);

/**
 *  @brief change giratina's form if necessary
 *
 *  @param pp PartyPokemon to check form change
 *  @return TRUE if form was changed; FALSE otherwise
 */
int LONG_CALL PokeParaGiratinaFormChange(struct PartyPokemon *pp);

/**
 *  @brief load sprites and such for one case, not sure
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param cp
 *  @param pep
 */
void LONG_CALL CT_PokemonEncountSet(void *bw, struct CLIENT_PARAM *cp, struct POKEMON_ENCOUNT_PARAM *pep);

/**
 *  @brief load sprites and such for one case, not sure
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param cp
 *  @param pap
 */
void LONG_CALL CT_PokemonEncountAppearSet(void *bw, struct CLIENT_PARAM *cp, struct POKEMON_APPEAR_PARAM *pap);

/**
 *  @brief load sprites and such for one case, not sure
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param cp
 *  @param pap
 */
void LONG_CALL CT_PokemonAppearSet(void *bw, struct CLIENT_PARAM *cp, struct POKEMON_APPEAR_PARAM *pap);

/**
 *  @brief reset client param for battle continuation
 *
 *  @param cp cp to reset
 */
void LONG_CALL ClientCommandReset(struct CLIENT_PARAM *cp);

/**
 *  @brief grab client param from battle work structure for client
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param client to grab client param for
 *  @return client's client param
 */
struct CLIENT_PARAM *LONG_CALL BattleWorkClientParamGet(void *bw, u32 client);

/**
 *  @brief grab client_no's actual Party structure
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param client_no battler whose party to grab
 *  @return party of client_no
 */
struct Party *LONG_CALL BattleWorkPokePartyGet(void *bw, int client_no);

/**
 *  @brief grab maximum possible members in party (it's not always 6 depending on context)
 *
 *  @param party party to count total possible of
 *  @return maximum members allowed
 */
int LONG_CALL PokeParty_GetPokeCountMax(const struct Party *party); // this function is cursed to be arm for no fucking reason whatsoever

/**
 *  @brief grab the partner for a battler.  equivalent to BATTLER_ALLY(client_no)
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param client_no battler whose ally to grab
 *  @return ally of client_no
 */
int LONG_CALL BattleWorkPartnerClientNoGet(void *bw, int client_no);

/**
 *  @brief grab communication id for interconsole communications
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @return communication id for interconsole communications
 */
u16 LONG_CALL BattleWorkCommIDGet(void *bw);

/**
 *  @brief grab player's position in wireless multi battles
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param id the communication id--can be grabbed using BattleWorkCommIDGet
 *  @return player's position in wireless multi battles
 */
int LONG_CALL BattleWorkCommStandNoGet(void *bw, u16 id);

/**
 *  @brief increment a record in the save
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param attack_client the battler whose record to increment
 *  @param param1 not sure--seems to be CLIENT_BOOT_TYPE_MINE always, may elicit CLIENT_BOOT_TYPE_NOMINE during multi battles for other players?
 *  @param param2 the record id to increment, currently not documented very well
 */
void LONG_CALL SCIO_IncRecord(void *bw, int attack_client, int param1, int param2);

/**
 *  @brief check if a status condition should be recovered on switch by an ability.  think natural cure
 *
 *  @param sp global battle structure
 *  @param ability
 *  @param condition
 *  @return TRUE if recovery should happen; FALSE otherwise
 */
BOOL LONG_CALL CheckStatusRecoverFromAbilityOnSwitch(struct BattleStruct *sp, int ability, int condition);

/**
 *  @brief check if pressure should further decrement power points
 *
 *  @param sp global battle structure
 *  @param attack battler that is attacking
 *  @param defence battler that is defending to check for pressure
 */
void LONG_CALL CheckPressureForPPDecrease(struct BattleStruct *sp, int attack, int defence);

/**
 *  @brief grab move position in a BattlePokemon's moves array based on the move index
 *
 *  @param battlemon BattlePokemon whose moves to check
 *  @param move move to look for
 *  @return move position (if the BattlePokemon has it), 4 if the move is not present
 */
int LONG_CALL GetBattlePokemonMovePosFromMove(struct BattlePokemon *battlemon, u16 move);

/**
 *  @brief check if the battle scene option permits move animations to play
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @return TRUE if animations can play; FALSE otherwise
 */
BOOL LONG_CALL CheckBattleAnimationsOption(void *bw);

/**
 *  @brief queue move animation as part of the playanimation script command
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param move move animation to play
 */
void LONG_CALL SCIO_QueueMoveAnimation(void *bw, struct BattleStruct *sp, u16 move);

/**
 *  @brief queue move animation as part of the playanimation2 script command.  playanimation2 passes attacker and defender, so this function takes attacker and defender
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param move move animation to play
 *  @param attack battler to consider the attacker
 *  @param defence battler to consider the defender
 */
void LONG_CALL SCIO_QueueMoveAnimationConsiderAttackerDefender(void *bw, struct BattleStruct *sp, u16 move, int attack, int defence);

/**
 *  @brief load subscript to the SkillSeqWork field of the BattleStruct and reset the pc for the battle script VM, effectively jumping to the subseq
 *  only works from the context of a battle script command
 *
 *  @param sp global battle structure
 *  @param file narc file id to load from
 *  @param subfile narc subfile to load from
 */
void LONG_CALL SkillSequenceGosub(struct BattleStruct *sp, int file, int subfile);

/**
 *  @brief checks if anyone should faint, queuing up the steps to do so if so
 *
 *  @param sp global battle structure
 *  @param next_seq server step to queue up
 *  @param no_set_seq server step to default to?  always the same as next_seq
 *  @param flag tends to be 1
 *  @return TRUE if a battler should faint; FALSE otherwise
 */
int LONG_CALL CheckIfAnyoneShouldFaint(struct BattleStruct *sp, int next_seq, int no_set_seq, int flag);

/**
 *  @brief grabs some structure from the battle work structure (source name)
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @return bgl
 */
void *LONG_CALL BattleWorkGF_BGL_INIGet(void *bw);

/**
 *  @brief get a specific item's item data from the item field in the BattleStruct
 *
 *  @param sp global battle structure
 *  @param item the item index
 *  @param field the ITEM_PARAM_* constant from include/item.h
 *  @return the requested item field
 */
u32 LONG_CALL GetBattleItemData(struct BattleStruct *sp, u16 item, u32 field);

/**
 *  @brief get the field id that the battle is occurring on
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @return battle background type.  used for burmy and such
 */
u32 LONG_CALL BattleWorkGroundIDGet(void *bw);

/**
 *  @brief check if the species has been registered as caught in the pokédex
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param species species to check if caught
 *  @return TRUE if species was registered in the pokédex; FALSE otherwise
 */
BOOL LONG_CALL Battle_CheckIfHasCaughtMon(void *bw, u32 species);

/**
 *  @brief grab time of day from battle work structure
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @return time of day; 0 is morning, 1 is day, 2 is evening, 3 is night, 4 is morning before 4 am
 */
u32 LONG_CALL Battle_GetTimeOfDay(void *bw);

/**
 *  @brief check if the current encounter is a fishing encounter
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @return TRUE if a fishing encounter is under way
 */
BOOL LONG_CALL Battle_IsFishingEncounter(void *bw);

/**
 *  @brief check if held item effect needs to activate, specifically directly after moves. for things like healing items
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param client_no is the battler to check
 *  @return TRUE if a held item effect is going to happen; FALSE otherwise
 */
BOOL LONG_CALL HeldItemEffectCheck(void *bw, struct BattleStruct *sp, int client_no);

/**
 *  @brief check if held item effect needs to activate, specifically directly after moves.  for things like status items
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param client_no is the battler to check
 *  @param seq_no is the script to run if TRUE is returned; LoadBattleSubSeqScript is used for this one
 *  @return TRUE if a held item effect is going to happen and *seq_no is assigned that number; FALSE otherwise
 */
BOOL LONG_CALL HeldItemHealStatusCheck(void *bw, struct BattleStruct *sp, int client_no, int *seq_no);

/**
 *  @brief
 *
 *  @param sp global battle structure
 *  @param attack_client battler that is the attacker
 *  @param typeModifier normally the current TypeEffectivenessTable[][2] entry
 *  @param damage the base damage before type modification
 *  @param base_power the base power of the move being used
 *  @param flag existing MOVE_STATUS_FLAG of moves precalculated
 *  @return modified damage with adjustments for typeModifier and modified flag parameter to include the effectiveness flag
 */
int LONG_CALL TypeCheckCalc(struct BattleStruct *sp, u32 attack_client, u32 typeModifier, int damage, int base_power, u32 *flag);

/**
 *  @brief checks if a 2-turn move is being used so that it can't be canceled by type effectiveness modifiers
 *  this function is the source of the fire fang bug!
 *
 *  @param sp global battle structure
 *  @param move_no move index to check against
 *  @return TRUE if type effectiveness should not be checked; FALSE otherwise
 */
BOOL LONG_CALL ShouldDelayTurnEffectivenessChecking(struct BattleStruct *sp, u32 move_no);

/**
 *  @brief checks if the normal type effectiveness calculator should be used for damage modulation.
 *  there are, however, no alternate type effectiveness methods; it just won't apply one
 *
 *  @param sp global battle structure
 *  @param attack_client is the attacking batter
 *  @param defence_client is the defending battler
 *  @param pos position in the TypeEffectivenessTable loop checker (index)
 *  @return TRUE if the normal type effectiveness calculator should be used; FALSE otherwise
 */
BOOL LONG_CALL ShouldUseNormalTypeEffCalc(struct BattleStruct *sp, int attack_client, int defence_client, int pos);

/**
 *  @brief get party size of certain client
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param client_no battler to grab the party size from
 *  @return party size of client number
 */
int LONG_CALL Battle_GetClientPartySize(void *bw, int client_no);

/**
 *  @brief get a specific PartyPokemon from a battler's team
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param client_no battler whose party to retrieve from
 *  @param mon_index party index of the PartyPokemon desired
 *  @return pointer to the mon_index position PartyPokemon of the specified battler
 */
struct PartyPokemon *LONG_CALL Battle_GetClientPartyMon(void *bw, int client_no, int mon_index);

/**
 *  @brief check if experience is being distributed
 *
 *  @param sp global battle structure
 *  @param seq sp->server_seq_no ?
 *  @param seq2 sp->server_seq_no ?
 *  @return TRUE if experience should be distributed; FALSE otherwise
 */
BOOL LONG_CALL ServerGetExpCheck(struct BattleStruct *sp, u32 seq, u32 seq2);

/**
 *  @brief not sure what this does
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @return TRUE/FALSE
 */
BOOL LONG_CALL ServerZenmetsuCheck(void *bw, struct BattleStruct *sp);

/**
 *  @brief grab battler given side.  most of the time this is the same number
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param side side to grab from
 *  @return battler on the side specified
 */
u32 LONG_CALL ST_ServerDir2ClientNoGet(void *bw, struct BattleStruct *sp, u32 side);

/**
 *  @brief check if the battler is in truant
 *
 *  @param sp global battle structure
 *  @param client battler to check if in truant's lazy turn
 *  @return TRUE if battler is in truant lazy turn; FALSE otherwise
 */
u32 LONG_CALL ST_CheckIfInTruant(struct BattleStruct *sp, u32 client);

/**
 *  @brief initialize the global battle structure (?)
 *
 *  @param sp global battle structure
 */
void LONG_CALL BattleStructureInit(struct BattleStruct *sp);

/**
 *  @brief initialize counters in the global battle structure (?)
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 */
void LONG_CALL BattleStructureCounterInit(void *bw, struct BattleStruct *sp);

/**
 *  @brief initialize the AI from the specified trainer flags (?)
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 */
void LONG_CALL ServerMoveAIInit(void *bw, struct BattleStruct *sp);

/**
 *  @brief dump the move table data to the destination pointer.  used for convenience and speed over using the normal accessor functions that open the narc each time they are called
 *
 *  @param dest pointer to dump move data to
 */
void LONG_CALL DumpMoveTableData(void *dest);

// AI specific functions
/**
 *  @brief like TypeCheckCalc, but for the opposing AI to help make decisions
 *
 *  @see TypeCheckCalc
 *  @param effectivness current TypeEffectivenessTable entry
 *  @param flag move effect flags already set
 *  @return adjusted predicted damage
 */
int LONG_CALL AI_TypeCheckCalc(int effectiveness, u32 *flag);

/**
 *  @brief like ShouldUseNormalTypeEffCalc, but for the opposing AI to help make decisions
 *
 *  @see ShouldUseNormalTypeEffCalc
 *  @param sp global battle structure
 *  @param held_effect held item effect
 *  @param pos position in TypeEffectivenessTable loop
 *  @return TRUE if should use normal type effectiveness calculator; FALSE otherwise
 */
BOOL LONG_CALL AI_ShouldUseNormalTypeEffCalc(struct BattleStruct *sp, u32 held_effect, int pos);

/**
 *  @brief grab trainer id of a client
 *  @param bw battle work structure
 *  @param client client whose trainer id to grab
 *  @return trainer id of client
 */
u32 LONG_CALL BattleWork_GetTrainerIndex(void *bw, u32 client);


/*Battle Script Function Declarations*/
/**
 *  @brief increment battle script VM "program counter" by a certain amount
 *
 *  @param sp global battle structure
 *  @param count amount to increment by in words/positions
 */
void LONG_CALL IncrementBattleScriptPtr(struct BattleStruct *sp, int count);

/**
 *  @brief read battle script parameters + increment "program counter" by 1 when doing so
 *
 *  @param sp global battle structure
 *  @return battle script parameter read from VM's "program counter"
 */
int LONG_CALL read_battle_script_param(struct BattleStruct *sp);

/**
 *  @brief load specified move effect script and jump to it with potential return?
 *
 *  @param sp global battle structure
 *  @param archive ARC_* constant to load from, doesn't have to be 0 for move scripts or 1 for subscripts
 *  @param effect script number to load
 */
void LONG_CALL JumpToMoveEffectScript(struct BattleStruct *sp, int archive, int effect);

/**
 *  @brief check if the connection has taken too long and should disconnect
 *
 *  @param sp global battle structure
 */
void LONG_CALL Link_CheckTimeout(struct BattleStruct *sp);

/**
 *  @brief check if a move index normally calls other moves as part of its operation
 *
 *  @param move move index to check
 *  @return TRUE if the move results in another move; FALSE otherwise
 */
BOOL LONG_CALL CheckMoveCallsOtherMove(u16 move);

/**
 *  @brief updates the nonselectable moves that the battlerId currently has
 *
 *  @param bsys battle work structure
 *  @param ctx global battle structure
 *  @param battlerId battler to check for struggle moves
 *  @param nonSelectableMoves pass in moves that are already not selectable
 *  @param a4
 *  @return updated nonSelectableMoves field
 */
u32 LONG_CALL StruggleCheck(void *bsys, struct BattleStruct *ctx, u32 battlerId, u32 nonSelectableMoves, u32 a4);

// defined in battle_calc_damage.c
/**
 *  @brief grab a battler's item.  returns 0 if the battler is in embargo or can't hold an item for any other reason
 *
 *  @param sp global battle structure
 *  @param client_no battler to grab the item of
 *  @return
 */
u16 GetBattleMonItem(struct BattleStruct *sp, int client_no);



// defined in battle_pokemon.c
/**
 *  @brief check if a form change needs to happen.  if so, return TRUE and populate *seq_no with the subscript to run
 *
 *  @see BattleFormChange
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param seq_no battle subscript to run
 *  @return TRUE to load the battle subscript in *seq_no and run it; FALSE otherwise
 */
BOOL BattleFormChangeCheck(void *bw, struct BattleStruct *sp, int *seq_no);

/**
 *  @brief get the adjusted move type accounting for normalize and friends
 *
 *  @see GetAdjustedMoveTypeBasics
 *  @param sp global battle structure
 *  @param client battler to read data from
 *  @param move index of the move to grab type for
 */
u32 GetAdjustedMoveType(struct BattleStruct *sp, u32 client, u32 move); // account for normalize and such

/**
 *  @brief check if a move is a sound-based move
 *
 *  @param move move index to check for sound property
 *  @return TRUE if is a sound move; FALSE otherwise
 */
BOOL IsMoveSoundBased(u32 move);

/**
 *  @brief get the adjusted move type accounting for normalize without relying on a client
 *
 *  @param sp global battle structure
 *  @param move index of the move to grab type for
 *  @param ability index of the ability to account for
 *  @param type if relevant, the type that is already set to overwrite the base move type
 */
u32 GetAdjustedMoveTypeBasics(struct BattleStruct *sp, u32 move, u32 ability, u32 type); // AI-specific, client-agnostic

/**
 *  @brief changes the form of the battler passed in.  updates all of the stats and possibly updates the ability if necessary
 *
 *  @param client battler to change form
 *  @param form_no target form id
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param SwitchAbility whether the ability should be updated from the base stats in personal
 */
void BattleFormChange(int client, int form_no, void* bw, struct BattleStruct *sp, bool8 SwitchAbility);

/**
 *  @brief clear the newly introduced battle mon flags in various scenarios, i.e. switching
 *
 *  @param sp global battle structure
 *  @param client battler whose flags to clear
 */
void ClearBattleMonFlags(struct BattleStruct *sp, int client);


// defined in battle_item.c
/**
 *  @brief queue up or perform item effects on u-turn hit
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param seq_no battle subscript to run
 *  @return TRUE to load the battle subscript in *seq_no and run it; FALSE otherwise
 */
u32 MoveHitUTurnHeldItemEffectCheck(void *bw, struct BattleStruct *sp, int *seq_no);

/**
 *  @brief handle shell bell hp restore, rage is building message, and life orb after getting a hit
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 */
u32 ServerWazaHitAfterCheckAct(void *bw, struct BattleStruct *sp);

/**
 *  @brief handle defender item effects on hit
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param seq_no battle subscript to run
 *  @return TRUE to load the battle subscript in *seq_no and run it; FALSE otherwise
 */
BOOL CheckDefenderItemEffectOnHit(void *bw, struct BattleStruct *sp, int *seq_no);

/**
 *  @brief dumbs client parameter down into its team in proper scenarios
 *
 *  @param bw battle work structure
 *  @param client client to sanitize
 *  @return team of client
 */
u32 SanitizeClientForTeamAccess(void *bw, u32 client);

/**
 *  @brief checks if the client's side has 2 battlers
 *
 *  @param bw battle work structure
 *  @param client client whose side to check for 2 battlers
 *  @return TRUE if the client's side has 2 battlers
 */
BOOL DoesSideHave2Battlers(void *bw, u32 client);


// defined in battle_script_commands.c
enum
{
    BTL_PARAM_BATTLER_ALL              = 0x00,
    BTL_PARAM_BATTLER_ATTACKER         = 0x01,
    BTL_PARAM_BATTLER_DEFENDER         = 0x02,
    BTL_PARAM_BATTLER_PLAYER           = 0x03,
    BTL_PARAM_BATTLER_OPPONENT         = 0x04,
    BTL_PARAM_BATTLER_FAINTED          = 0x05,
    BTL_PARAM_BATTLER_REPLACE          = 0x06,
    BTL_PARAM_BATTLER_ADDL_EFFECT      = 0x07,
    BTL_PARAM_BATTLER_CHAR_CHECKED     = 0x08,
    BTL_PARAM_BATTLER_PLAYER_LEFT      = 0x09,
    BTL_PARAM_BATTLER_ENEMY_LEFT       = 0x0a,
    BTL_PARAM_BATTLER_PLAYER_RIGHT     = 0x0b,
    BTL_PARAM_BATTLER_ENEMY_RIGHT      = 0x0c,
    BTL_PARAM_BATTLER_x0D              = 0x0d,
    BTL_PARAM_BATTLER_ATTACKER2        = 0x0e,
    BTL_PARAM_BATTLER_DEFENDER2        = 0x0f,
    BTL_PARAM_BATTLER_ATTACKER_PARTNER = 0x10,
    BTL_PARAM_BATTLER_DEFENDER_PARTNER = 0x11,
    BTL_PARAM_BATTLER_WHIRLWINDED      = 0x12,
    BTL_PARAM_BATTLER_x13              = 0x13,
    BTL_PARAM_BATTLER_x14              = 0x14,
    BTL_PARAM_BATTLER_x15              = 0x15,
    BTL_PARAM_BATTLER_ALL_REPLACED     = 0x16,
    BTL_PARAM_BATTLER_xFF              = 0xFF,
    BTL_PARAM_BATTLER_WORK             = 0xFF,

    BTL_PARAM_BATTLER_ALLY             = 0x8000,
    BTL_PARAM_BATTLER_ENEMY            = 0x4000,
    BTL_PARAM_BATTLER_ACROSS           = 0x2000,
};

/**
 *  @brief resolve read battle script parameter into a specific battler type.  determined by BTL_PARAM_* consts right above func definition
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param side BTL_PARAM_* const to resolve to BattleStruct field
 *  @return resolved battler
 */
int GrabClientFromBattleScriptParam(void *bw, struct BattleStruct *sp, int side);

/**
 *  @brief load battle script to BattleStruct's SkillSeqWork
 *
 *  @param sp global battle structure
 *  @param kind ARC_* constant to load from, doesn't have to be 0 for move scripts or 1 for subscripts
 *  @param index number to load
 */
void LoadBattleSubSeqScript(struct BattleStruct *sp, int kind, int index);

/**
 *  @brief load battle script and queue up the current one to go after this one
 *
 *  @param sp global battle structure
 *  @param kind ARC_* constant to load from, doesn't have to be 0 for move scripts or 1 for subscripts
 *  @param index number to load
 */
void PushAndLoadBattleScript(struct BattleStruct *sp, int kind, int index);

/**
 *  @brief function to check whether a mon is grounded or not
 *  @param sp global battle structure
 *  @param client_no resolved battler
 *  @return `TRUE` if grounded, `FALSE` otherwise
 */
BOOL IsClientGrounded(struct BattleStruct *sp, u32 client_no);

/**
 *  @brief check if waitmessage battle script command should end
 *
 *  @param sp global battle structure
 *  @return TRUE if link queue is empty; FALSE otherwise
 */
BOOL Link_QueueIsEmpty(struct BattleStruct *sp);



// defined in ability.c
/**
 *  @brief check if an ability is present and account for mold breaker
 *
 *  @param sp global battle structure
 *  @param attacker battler that potentially has mold breaker
 *  @param defender battler whose ability to check
 *  @param ability ability to check for
 *  @return TRUE if the defender has the ability and it isn't canceled by mold breaker; FALSE otherwise
 */
u32 MoldBreakerAbilityCheck(struct BattleStruct *sp, int attacker, int defender, int ability);

/**
 *  @brief check if a move should activate the defender's ability and run a subscript
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param seq_no battle subscript to run
 *  @return TRUE to load the battle subscript in *seq_no and run it; FALSE otherwise
 */
BOOL MoveHitDefenderAbilityCheck(void *bw, struct BattleStruct *sp, int *seq_no);

/**
 *  @brief handle magic coat and snatch.  load the battle subscript to handle the scenario if necessary and return TRUE to signal to run the script
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @return TRUE to signal that the battle subscript was loaded and to run it; FALSE otherwise
 */
u32 ServerWazaKoyuuCheck(void *bw, struct BattleStruct *sp);


// defined in other_battle_calculators.c
/**
 *  @brief compare battlers to determine who goes first
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param client1 first battler to compare
 *  @param client2 second battler to compare
 *  @param flag if nonzero, ignore quick claw and custap berry modifiers
 *  @return 0 if client1 moves first, 1 if client2 moves first, 2 if random roll between the two
 */
u8 CalcSpeed(void *bw, struct BattleStruct *sp, int client1, int client2, int flag);

/**
 *  @brief set move status effects for super effective and calculate modified damage
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param move_no move index
 *  @param move_type move type
 *  @param attack_client attacker
 *  @param defence_client defender
 *  @param damage current damage
 *  @param flag move status flags to mess around with
 *  @return modified damage
 */
int ServerDoTypeCalcMod(void *bw, struct BattleStruct *sp, int move_no, int move_type, int attack_client, int defence_client, int damage, u32 *flag);

/**
 *  @brief see if a move has positive priority after adjustment
 *
 *  @param sp battle structure
 *  @param attacker client to check
 *  @return TRUE if the move has positive priority after adjustments
 */
BOOL adjustedMoveHasPositivePriority(struct BattleStruct *sp, int attacker);

/**
 *  @brief see if the move should NOT be exempted from priority blocking effects
 *
 *  @param sp battle structure
 *  @param attacker attacker client
 *  @param defender defender client
 *  @return TRUE if the move should NOT be exempted from priority blocking effects
 */
BOOL CurrentMoveShouldNotBeExemptedFromPriorityBlocking(struct BattleStruct *sp, int attacker, int defender);

/**
 *  @brief Check if seed should activate
 *
 *  @param sp battle structure
 *  @param heldItem held item
 *  @return TRUE if seed should activate
 */
BOOL TerrainSeedShouldActivate(struct BattleStruct *sp, u16 heldItem);

/**
 * @brief Check if the current move is a multi hit move
 * @param moveIndex move index
 * @return TRUE if it is a multi hit move
*/
BOOL IsMultiHitMove(u32 moveIndex);

/**
 * @brief Check if the current move is a move that shouldn't be affected by Parental Bond
 * @param moveIndex move index
 * @return TRUE if it is a banned move
*/
BOOL IsBannedParentalBondMove(u32 moveIndex);

/**
 * @brief Check if the current move is a spread move that shouldn't be affected by Parental Bond
 * @param bw battle work structure; void * because we haven't defined the battle work structure
 * @param sp battle structure
 * @param moveIndex move index
 * @return TRUE if it is a banned move
 */
BOOL IsBannedSpreadMoveForParentalBond(void *bw, struct BattleStruct *sp, u32 moveIndex);

/**
 * @brief Check if the current move is a move that should be affected by Parental Bond
 * @param bw battle work structure; void * because we haven't defined the battle work structure
 * @param sp battle structure
 * @param checkTempMove if move will be changed via Metronome, Assist, etc
 * @return TRUE if it is a valid move
 */
BOOL IsValidParentalBondMove(void *bw, struct BattleStruct *sp, BOOL checkTempMove);

/**
 * @brief gets the actual attack and defense for damage calculation
 * @param sp battle structure
 * @param attackerAttack attacker's Physical Attack
 * @param defenderDefense defender's Physical Defense
 * @param attackerSpecialAttack attacker's Special Attack
 * @param defenderSpecialDefense defender's Special Defense
 * @param attackerAttackstate attacker's Physical Attack state
 * @param defenderDefenseState defender's Physical Defense state
 * @param attackerSpecialAttackState attacker's Special Attack state
 * @param defenderSpecialDefenseState defender's Special Defense state
 * @param movesplit physical or special attack
 * @param attacker attacker number
 * @param defender defender number
 * @param critical critial hit or not
 * @param moveno move number
 * @param equivalentAttack attack number used for calculation
 * @param equivalentDefense defense number used for calculation
 */
void getEquivalentAttackAndDefense(struct BattleStruct *sp, u16 attackerAttack, u16 defenderDefense, u16 attackerSpecialAttack, u16 defenderSpecialDefense, s8 attackerAttackstate, s8 defenderDefenseState, s8 attackerSpecialAttackState, s8 defenderSpecialDefenseState, u8 *movesplit, u8 attacker, u8 defender, u8 critical, int moveno, u16 *equivalentAttack, u16 *equivalentDefense);

// defined in mega.c
BOOL CheckMegaData(u32 mon, u32 item);

/**
 *  @brief grab mega form of a specific species with specific item
 *
 *  @param mon base species
 *  @param item held item to check for mega stone
 *  @return target form
 */
u32 GrabMegaTargetForm(u32 mon, u32 item);


typedef enum Terrain {
    TERRAIN_PLAIN,
    TERRAIN_SAND,
    TERRAIN_GRASS,
    TERRAIN_PUDDLE,
    TERRAIN_MOUNTAIN,
    TERRAIN_CAVE,
    TERRAIN_SNOW,
    TERRAIN_WATER,
    TERRAIN_ICE,
    TERRAIN_BUILDING,
    TERRAIN_GREAT_MARSH,  // unused
    TERRAIN_UNKNOWN,      // unused
    TERRAIN_WILL,
    TERRAIN_KOGA,
    TERRAIN_BRUNO,
    TERRAIN_KAREN,
    TERRAIN_LANCE,
    TERRAIN_DISTORTION_WORLD,  // unused
    TERRAIN_BATTLE_TOWER,
    TERRAIN_BATTLE_FACTORY,
    TERRAIN_BATTLE_ARCADE,
    TERRAIN_BATTLE_CASTLE,
    TERRAIN_BATTLE_HALL,
    TERRAIN_GIRATINA,  // unused
    TERRAIN_MAX
} Terrain;

// This is a catch-all terrain that includes Pokemon League, Distortion World
// and Battle Frontier.
#define TERRAIN_OTHERS (TERRAIN_WILL)

#endif // BATTLE_H
