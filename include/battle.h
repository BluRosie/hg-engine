#ifndef BATTLE_H
#define BATTLE_H

#include "types.h"
#include "item.h"
#include "sprite.h"
#include "pokemon.h"
#include "task.h"
#include "save.h"
#include "constants/moves.h"

#define CLIENT_MAX 4

#define TYPE_NORMAL    0
#define TYPE_FIGHTING  1
#define TYPE_FLYING    2
#define TYPE_POISON    3
#define TYPE_GROUND    4
#define TYPE_ROCK      5
#define TYPE_BUG       6
#define TYPE_GHOST     7
#define TYPE_STEEL     8
#define TYPE_MYSTERY   9
#define TYPE_FAIRY     9 // TODO: 17
#define TYPE_FIRE     10
#define TYPE_WATER    11
#define TYPE_GRASS    12
#define TYPE_ELECTRIC 13
#define TYPE_PSYCHIC  14
#define TYPE_ICE      15
#define TYPE_DRAGON   16
#define TYPE_DARK     17
#define TYPE_TYPELESS 18
#define TYPE_STELLAR  19 // TODO: 99

#define NUMBER_OF_MON_TYPES 20

// Type effectiveness
#define TYPE_MUL_NO_EFFECT       0
#define TYPE_MUL_NOT_EFFECTIVE   5
#define TYPE_MUL_NORMAL          10
#define TYPE_MUL_SUPER_EFFECTIVE 20

// Special type table IDs
#define TYPE_FORESIGHT 0xFE
#define TYPE_ENDTABLE  0xFF

// Contest types
#define COOL   0
#define BEAUTY 1
#define CUTE   2
#define SMART  3
#define TOUGH  4

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

#define MOVE_STATUS_NO_MORE_WORK                 (0x80000000)

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
                                         MOVE_STATUS_NO_MORE_WORK)

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
#define BATTLE_TYPE_PAL_PARK 0x200
#define BATTLE_TYPE_CATCHING_DEMO 0x400
#define BATTLE_TYPE_BUG_CONTEST 0x1000

#define BATTLE_TYPE_NO_EXPERIENCE (BATTLE_TYPE_WIRELESS | BATTLE_TYPE_SAFARI | BATTLE_TYPE_BATTLE_TOWER | BATTLE_TYPE_PAL_PARK)

// change the flow of the ball callback to make sure that critical captures only shake once then succeed.  if it shakes, it succeeds, though
#define CRITICAL_CAPTURE_MASK (0x80)


/**
 *  @brief flags for effect_of_moves
 *  defines for BattleStruct's effect_of_moves field
 *  fields that cover multiple fields are often counters, i.e. MOVE_EFFECT_FLAG_LOCK_ON
 *
 *  the following statement:
 *  sp->battlemon[sp->attack_client].effect_of_moves -= (1 << 3);
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
// Status
#define STATUS_NONE         0
#define STATUS_SLEEP_0      (1 << 0)
#define STATUS_SLEEP_1      (1 << 1)
#define STATUS_SLEEP_2      (1 << 2)
#define STATUS_POISON       (1 << 3)
#define STATUS_BURN         (1 << 4)
#define STATUS_FREEZE       (1 << 5)
#define STATUS_PARALYSIS    (1 << 6)
#define STATUS_BAD_POISON   (1 << 7)
#define STATUS_POISON_COUNT (15 << 8)

#define CONDITION_NONE      0
#define CONDITION_SLEEP     1
#define CONDITION_POISON    2
#define CONDITION_BURN      3
#define CONDITION_FREEZE    4
#define CONDITION_PARALYSIS 5

#define STATUS_SLEEP      (STATUS_SLEEP_0 | STATUS_SLEEP_1 | STATUS_SLEEP_2)
#define STATUS_NOT_SLEEP  ~STATUS_SLEEP
#define STATUS_POISON_ALL (STATUS_POISON | STATUS_BAD_POISON | STATUS_POISON_COUNT)

#define STATUS_ALL             (STATUS_SLEEP | STATUS_POISON | STATUS_BURN | STATUS_FREEZE | STATUS_PARALYSIS | STATUS_BAD_POISON)
#define STATUS_FACADE_BOOST    (STATUS_POISON | STATUS_BAD_POISON | STATUS_BURN | STATUS_PARALYSIS)
#define STATUS_CAN_SYNCHRONIZE (STATUS_POISON | STATUS_BURN | STATUS_PARALYSIS)
#define STATUS_ANY_PERSISTENT  (STATUS_SLEEP | STATUS_POISON_ALL | STATUS_BURN | STATUS_FREEZE | STATUS_PARALYSIS)

#define STATUS_POISON_COUNT_SHIFT 8

// Self Turns Flags
#define SELF_TURN_FLAG_CLEAR          0
#define SELF_TURN_FLAG_PLUCK_BERRY    (1 << 1)
#define SELF_TURN_FLAG_INFATUATED     (1 << 2)
#define SELF_TURN_FLAG_SUBSTITUTE_HIT (1 << 3)

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
#define STATUS2_CONFUSION (0x00000007)
#define STATUS2_FLINCH (0x00000008)
#define STATUS2_UPROAR (0x00000070)
#define STATUS2_RAMPAGE_TURNS (0x00000C00)
#define STATUS2_LOCKED_INTO_MOVE (0x00001000)
#define STATUS2_BINDING_TURNS (0x0000E000) // no longer used, see sp->binding_turns
#define STATUS2_ATTRACT (0x000f0000)
#define STATUS2_FOCUS_ENERGY (0x00100000)
#define STATUS2_TRANSFORMED (0x00200000)
#define STATUS2_RECHARGE (0x00400000)
#define STATUS2_RAGE (0x00800000)
#define STATUS2_SUBSTITUTE (0x01000000)
#define STATUS2_DESTINY_BOND (0x02000000)
#define STATUS2_MEAN_LOOK (0x04000000)
#define STATUS2_NIGHTMARE (0x08000000)
#define STATUS2_CURSE (0x10000000)
#define STATUS2_FORESIGHT (0x20000000)
#define STATUS2_DEFENCE_CURL (0x40000000)
#define STATUS2_TORMENT (0x80000000)

#define STATUS2_UPROAR_SHIFT  4
#define STATUS2_BIDE_SHIFT    8
#define STATUS2_RAMPAGE_SHIFT 10
#define STATUS2_BINDING_SHIFT 13
#define STATUS2_ATTRACT_SHIFT 16

#define STATUS2_BATON_PASSABLE (STATUS2_CONFUSION | STATUS2_FOCUS_ENERGY | STATUS2_SUBSTITUTE | STATUS2_MEAN_LOOK | STATUS2_CURSE)

// Status 2
#define STATUS2_RAMPAGE          (3 << 10)
#define STATUS2_BIDE_0           (1 << 8)
#define STATUS2_BIDE_1           (1 << 9)

#define STATUS2_BIDE    (STATUS2_BIDE_0 | STATUS2_BIDE_1)

#define HAZARD_IDX_NONE 0
#define HAZARD_IDX_SPIKES 1
#define HAZARD_IDX_TOXIC_SPIKES 2
#define HAZARD_IDX_STEALTH_ROCK 3
#define HAZARD_IDX_STICKY_WEB 4
#define HAZARD_IDX_SHARP_STEEL 5
#define NUM_HAZARD_IDX (HAZARD_IDX_SHARP_STEEL)

/**
 *  @brief side status flags that apply to one side
 *  accessible in BattleStruct's side_condition[side]
 *  seems to be duplicated in the side_condition_work structure bitfield
 */
#define SIDE_STATUS_REFLECT (0x1)
#define SIDE_STATUS_LIGHT_SCREEN (0x2)
#define SIDE_STATUS_SPIKES (0x4)
#define SIDE_STATUS_SAFEGUARD (0x8)
#define SIDE_STATUS_FUTURE_SIGHT (0x10)
#define SIDE_STATUS_WISH (0x20)
#define SIDE_STATUS_MIST (0x40)
#define SIDE_STATUS_STEALTH_ROCK (0x80)
#define SIDE_STATUS_TAILWIND (0x300) // no longer used, see sp->tailwindCount
#define SIDE_STATUS_TOXIC_SPIKES (0x400)
#define SIDE_STATUS_STICKY_WEB (0x800)
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
#define WEATHER_RAIN                        (0x00000001)                                                                    // 0000 0000 0000 0000 0001
#define WEATHER_RAIN_PERMANENT              (0x00000002)                                                                    // 0000 0000 0000 0000 0010
#define WEATHER_RAIN_ANY                    (WEATHER_RAIN | WEATHER_RAIN_PERMANENT | WEATHER_HEAVY_RAIN)                    // 0010 0000 0000 0000 0000 0000 0011
#define WEATHER_SANDSTORM                   (0x00000004)                                                                    // 0000 0000 0000 0000 0100
#define WEATHER_SANDSTORM_PERMANENT         (0x00000008)                                                                    // 0000 0000 0000 0000 1000
#define WEATHER_SANDSTORM_ANY               (WEATHER_SANDSTORM | WEATHER_SANDSTORM_PERMANENT)                               // 0000 0000 0000 0000 1100
#define WEATHER_SUNNY                       (0x00000010)                                                                    // 0000 0000 0000 0001 0000
#define WEATHER_SUNNY_PERMANENT             (0x00000020)                                                                    // 0000 0000 0000 0010 0000
#define WEATHER_SUNNY_ANY                   (WEATHER_SUNNY | WEATHER_SUNNY_PERMANENT | WEATHER_EXTREMELY_HARSH_SUNLIGHT)    // 0001 0000 0000 0000 0000 0011 0000
#define WEATHER_HAIL                        (0x00000040)                                                                    // 0000 0000 0000 0100 0000
#define WEATHER_HAIL_PERMANENT              (0x00000080)                                                                    // 0000 0000 0000 1000 0000
#define WEATHER_HAIL_ANY                    (WEATHER_HAIL | WEATHER_HAIL_PERMANENT)                                         // 0000 0000 0000 1100 0000
#define FIELD_STATUS_UPROAR                 (0x00000f00)                                                                    // 0000 0000 1111 0000 0000
#define FIELD_CONDITION_GRAVITY_INIT        (0x00005000)                                                                    // 0000 0101 0000 0000 0000
#define FIELD_STATUS_GRAVITY                (0x00007000)                                                                    // 0000 0111 0000 0000 0000
#define FIELD_STATUS_FOG                    (0x00008000)                                                                    // 0000 1000 0000 0000 0000
#define FIELD_CONDITION_TRICK_ROOM_INIT     (0x00050000)                                                                    // 0101 0000 0000 0000 0000
#define FIELD_STATUS_TRICK_ROOM             (0x00070000)                                                                    // 0111 0000 0000 0000 0000

// New weathers
#define WEATHER_SNOW                        (0x00100000)                                                          //      0001 0000 0000 0000 0000 0000
#define WEATHER_SNOW_PERMANENT              (0x00200000)                                                          //      0010 0000 0000 0000 0000 0000
#define WEATHER_SNOW_ANY                    (WEATHER_SNOW | WEATHER_SNOW_PERMANENT)                               //      0011 0000 0000 0000 0000 0000
// We have 2 extra bits let's have fun:
#define WEATHER_SHADOWY_AURA                (0x00400000)                                                          //      0100 0000 0000 0000 0000 0000
#define WEATHER_SHADOWY_AURA_PERMANENT      (0x00800000)                                                          //      1000 0000 0000 0000 0000 0000
#define WEATHER_SHADOWY_AURA_ANY            (WEATHER_SHADOWY_AURA | WEATHER_SHADOWY_AURA_PERMANENT)               //      1100 0000 0000 0000 0000 0000

#define WEATHER_EXTREMELY_HARSH_SUNLIGHT    (0x01000000)                                                          // 0001 0000 0000 0000 0000 0000 0000
#define WEATHER_HEAVY_RAIN                  (0x02000000)                                                          // 0010 0000 0000 0000 0000 0000 0000
#define WEATHER_STRONG_WINDS                (0x04000000)                                                          // 0100 0000 0000 0000 0000 0000 0000

#define FIELD_CONDITION_WEATHER_NO_SUN      (WEATHER_RAIN_ANY | WEATHER_SANDSTORM_ANY | WEATHER_HAIL_ANY | FIELD_STATUS_FOG | WEATHER_SNOW_ANY \
                                            | WEATHER_SHADOWY_AURA_ANY | WEATHER_EXTREMELY_HARSH_SUNLIGHT | WEATHER_HEAVY_RAIN | WEATHER_STRONG_WINDS)
#define FIELD_CONDITION_WEATHER_CASTFORM    (WEATHER_RAIN_ANY| WEATHER_HEAVY_RAIN | WEATHER_SUNNY_ANY | WEATHER_EXTREMELY_HARSH_SUNLIGHT \
                                            | WEATHER_HAIL_ANY)
#define FIELD_CONDITION_WEATHER             (WEATHER_RAIN_ANY | WEATHER_SANDSTORM_ANY | WEATHER_SUNNY_ANY | WEATHER_HAIL_ANY | FIELD_STATUS_FOG \
                                            | WEATHER_SNOW_ANY | WEATHER_SHADOWY_AURA_ANY | WEATHER_EXTREMELY_HARSH_SUNLIGHT | WEATHER_HEAVY_RAIN \
                                            | WEATHER_STRONG_WINDS)


// weather that has indicators on the bottom screen
#define WEATHER_ANY_ICONS (WEATHER_RAIN_ANY | WEATHER_SANDSTORM_ANY | WEATHER_SUNNY_ANY | WEATHER_HAIL_ANY | FIELD_STATUS_FOG)

#define FIELD_CONDITION_UPROAR_SHIFT         8
#define FIELD_CONDITION_GRAVITY_SHIFT       12
#define FIELD_CONDITION_TRICK_ROOM_SHIFT    16

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

#define BATTLER_OPPONENT_SIDE_LEFT(client) (BATTLER_IS_PLAYERS(client) ? (1) : (0))
#define BATTLER_OPPONENT_SIDE_RIGHT(client) (BATTLER_IS_PLAYERS(client) ? (3) : (2))

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
#define TAG_NONE                                            0
#define TAG_NONE_SIDE                                       1
#define TAG_NICKNAME                                        2
#define TAG_MOVE                                            3
#define TAG_STAT                                            4
#define TAG_ITEM                                            5
#define TAG_NUMBER                                          6
#define TAG_NUMBERS                                         7
#define TAG_TRNAME                                          8
#define TAG_NICKNAME_NICKNAME                               9
#define TAG_NICKNAME_MOVE                                   10
#define TAG_NICKNAME_ABILITY                                11
#define TAG_NICKNAME_STAT                                   12
#define TAG_NICKNAME_TYPE                                   13
#define TAG_NICKNAME_POKE                                   14
#define TAG_NICKNAME_ITEM                                   15
#define TAG_NICKNAME_POFFIN                                 16
#define TAG_NICKNAME_NUM                                    17
#define TAG_NICKNAME_TRNAME                                 18
#define TAG_NICKNAME_BOX                                    19
#define TAG_MOVE_SIDE                                       20
#define TAG_MOVE_NICKNAME                                   21
#define TAG_MOVE_MOVE                                       22
#define TAG_ABILITY_NICKNAME                                23
#define TAG_ITEM_MOVE                                       24
#define TAG_NUMBER_NUMBER                                   25
#define TAG_TRNAME_TRNAME                                   26
#define TAG_TRNAME_NICKNAME                                 27
#define TAG_TRNAME_ITEM                                     28
#define TAG_TRNAME_NUM                                      29
#define TAG_TRCLASS_TRNAME                                  30
#define TAG_NICKNAME_NICKNAME_MOVE                          31
#define TAG_NICKNAME_NICKNAME_ABILITY                       32
#define TAG_NICKNAME_NICKNAME_ITEM                          33
#define TAG_NICKNAME_MOVE_MOVE                              34
#define TAG_NICKNAME_MOVE_NUMBER                            35
#define TAG_NICKNAME_ABILITY_NICKNAME                       36
#define TAG_NICKNAME_ABILITY_MOVE                           37
#define TAG_NICKNAME_ABILITY_ITEM                           38
#define TAG_NICKNAME_ABILITY_STAT                           39
#define TAG_NICKNAME_ABILITY_TYPE                           40
#define TAG_NICKNAME_ABILITY_STATUS                         41
#define TAG_NICKNAME_ABILITY_NUMBER                         42
#define TAG_NICKNAME_ITEM_NICKNAME                          43
#define TAG_NICKNAME_ITEM_MOVE                              44
#define TAG_NICKNAME_ITEM_STAT                              45
#define TAG_NICKNAME_ITEM_STATUS                            46
#define TAG_NICKNAME_BOX_BOX                                47
#define TAG_ITEM_NICKNAME_FLAVOR                            48
#define TAG_TRNAME_NICKNAME_NICKNAME                        49
#define TAG_TRCLASS_TRNAME_NICKNAME                         50
#define TAG_TRCLASS_TRNAME_ITEM                             51
#define TAG_NICKNAME_ABILITY_NICKNAME_MOVE                  52
#define TAG_NICKNAME_ABILITY_NICKNAME_ABILITY               53
#define TAG_NICKNAME_ABILITY_NICKNAME_STAT                  54
#define TAG_NICKNAME_ITEM_NICKNAME_ITEM                     55
#define TAG_TRNAME_NICKNAME_TRNAME_NICKNAME                 56
#define TAG_TRCLASS_TRNAME_NICKNAME_NICKNAME                57
#define TAG_TRCLASS_TRNAME_NICKNAME_TRNAME                  58
#define TAG_TRCLASS_TRNAME_TRCLASS_TRNAME                   59
#define TAG_TRCLASS_TRNAME_NICKNAME_TRCLASS_TRNAME_NICKNAME 60

// https://github.com/pret/pokeplatinum/blob/main/include/constants/battle/message_tags.h#L7
#define TAG_NO_DIR                      (0x80)
#define TAG_DIR                         (0x40)
#define TAG_NO_DIR_OFF                  (0xFF ^ TAG_NO_DIR ^ TAG_DIR)


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

//Battle Status
#define BATTLE_STATUS_NO_ATTACK_MESSAGE             (1 << 0)
#define BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE          (1 << 1)
#define BATTLE_STATUS_HIT_FLY                       (1 << 2)
#define BATTLE_STATUS_HIT_DIG                       (1 << 3)
#define BATTLE_STATUS_HIT_DIVE                      (1 << 4)
#define BATTLE_STATUS_CHARGE_TURN                   (1 << 5)
#define BATTLE_STATUS_NO_BLINK                      (1 << 6)
#define BATTLE_STATUS_SYNCRONIZE                    (1 << 7)
#define BATTLE_STATUS_BATON_PASS                    (1 << 8)
#define BATTLE_STATUS_CHARGE_MOVE_HIT               (1 << 9)
#define BATTLE_STATUS_FLAT_HIT_RATE                 (1 << 10)
#define BATTLE_STATUS_IGNORE_TYPE_EFFECTIVENESS     (1 << 11)
#define BATTLE_STATUS_CRASH_DAMAGE                  (1 << 12)
#define BATTLE_STATUS_MOVE_SUCCESSFUL               (1 << 13)
#define BATTLE_STATUS_MOVE_ANIMATIONS_OFF           (1 << 14)
#define BATTLE_STATUS_IGNORE_TYPE_IMMUNITY          (1 << 15)
#define BATTLE_STATUS_MULTI_HIT_IGNORE_MESSAGE      (1 << 16)
#define BATTLE_STATUS_FAIL_STAT_STAGE_CHANGE        (1 << 17)
#define BATTLE_STATUS_MISS_MESSAGE                  (1 << 18)
#define BATTLE_STATUS_SHADOW_FORCE                  (1 << 19)
#define BATTLE_STATUS_NO_MOVE_SET                   (1 << 20)
#define BATTLE_STATUS_MESSAGES_OFF                  (1 << 21)
#define BATTLE_STATUS_SECONDARY_EFFECT              (1 << 22)
#define BATTLE_STATUS_MOLD_BREAKER                  (1 << 23)
#define BATTLE_STATUS_FAINTED                       (15 << 24)
#define BATTLE_STATUS_SELFDESTRUCTED                (15 << 28)

#define BATTLE_STATUS_FAINTED_SHIFT                 24
#define BATTLE_STATUS_SELFDESTRUCTED_SHIFT          28

//Battle Status 2
#define BATTLE_STATUS2_NO_EXP_GAINED                (1 << 0)
#define BATTLE_STATUS2_UPDATE_STAT_STAGES           (1 << 1)
#define BATTLE_STATUS2_DISPLAY_ATTACK_MESSAGE       (1 << 2)
#define BATTLE_STATUS2_MAGIC_COAT                   (1 << 3)
#define BATTLE_STATUS2_UTURN                        (1 << 4)
#define BATTLE_STATUS2_FIRST_DAMAGE_MESSAGE         (1 << 5)
#define BATTLE_STATUS2_MOVE_SUCCEEDED               (1 << 6)
#define BATTLE_STATUS2_STAT_STAGE_CHANGE_SHOWN      (1 << 7)
#define BATTLE_STATUS2_RECOVER_HP_VISUAL            (1 << 8)
#define BATTLE_STATUS2_20                           (1 << 20)
#define BATTLE_STATUS2_FORM_CHANGE                  (1 << 26)
#define BATTLE_STATUS2_RECALC_MON_STATS             (1 << 27)
#define BATTLE_STATUS2_EXP_GAIN                     (15 << 28)

#define BATTLE_STATUS2_EXP_GAIN_SHIFT               28

//Struggle Checks
#define STRUGGLE_CHECK_NO_MOVES             (1 << 0)
#define STRUGGLE_CHECK_NO_PP                (1 << 1)
#define STRUGGLE_CHECK_DISABLED             (1 << 2)
#define STRUGGLE_CHECK_TORMENT              (1 << 3)
#define STRUGGLE_CHECK_TAUNT                (1 << 4)
#define STRUGGLE_CHECK_IMPRISON             (1 << 5)
#define STRUGGLE_CHECK_GRAVITY              (1 << 6)
#define STRUGGLE_CHECK_HEAL_BLOCK           (1 << 7)
#define STRUGGLE_CHECK_ENCORE               (1 << 8) //unused because they straight up forgot
#define STRUGGLE_CHECK_CHOICED              (1 << 9)
#define STRUGGLE_CHECK_GORILLA_TACTICS      (1 << 10)
#define STRUGGLE_CHECK_GIGATON_HAMMER       (1 << 11)
#define STRUGGLE_CHECK_ASSAULT_VEST         (1 << 12)

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
               u32 snatchFlag : 1;
               u32 haneyasume_flag : 1;
               u32 escape_flag : 2;
               u32 prevent_one_hit_ko_ability : 1; /**< pokémon has damp active */
               // begin custom flags
               enum ForceExecutionOrder{EXECUTION_ORDER_NORMAL, EXECUTION_ORDER_AFTER_YOU, EXECUTION_ORDER_QUASH} forceExecutionOrderFlag : 2;
               u32 parental_bond_flag : 2;
               u32 parental_bond_is_active : 1;
               u32 rampageProcessedFlag : 1;
               u32 chargeProcessedFlag : 1;
               u32 numberOfKOs : 3;
               u32 pendingFocusPunchFlag : 1;
               u32 : 11;

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
               u32 lightningRodFlag : 1;       /**< lightning rod activated on this pokémon */
               u32 stormDrainFlag : 1;         /**< storm drain activated on this pokémon */
               u32 moldBreakerFlag : 1;        /**< mold breaker activated on this pokémon */
               u32 trickRoomFlag : 1;           /**< trick room is active on this pokémon */
               u32 prevent_one_hit_ko_item : 1;  /**< a held item prevented OHKO on this pokémon */
               u32 rolloutCount : 3;           /**< counter for rollout */
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
               u32 boostedAccuracy : 1;      /**< accuracy boosted flag, see Micle Berry */
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
    /* 0x2a */ u16 moveNoChoice;             /**< move number forced by choice item */
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
    /* 0x28 */ u32 paddingForNow1 : 6;
               u32 slow_start_flag : 1;      /**< slow start has printed its message */
               u32 slow_start_end_flag : 1;  /**< slow start should end */
               u32 paddingForNow2 : 3;
               u32 canMega : 1;              /**< the BattlePokemon can mega */
               u32 sheer_force_flag : 1;     /**< keep track of sheer force activation */
               u32 imposter_flag : 1;        /**< imposter has activated */
               u32 critical_hits : 2;        /**< tracks the amount of critical hits the pokémon has landed while in battle so far */
               u32 air_balloon_flag : 1;      /**< the held air balloon has printed its message */
               u32 potentially_affected_by_psychic_terrain_move_used_flag : 1;
               u32 ability_activated_flag : 1;
               u32 tera_type : 5;
               u32 is_currently_terastallized : 1;
               u32 is_currently_dynamaxed : 1;
               u32 has_dynamaxed_before : 1; /**< for Cherrim and Flower Gift */
               u32 type3 : 5; // need to add to ClearBattleMonFlags when added to here as well
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
    /* 0x70 */ u32 condition;                /**< non-volatile status conditions (STATUS_* constants) */ // status
    /* 0x74 */ u32 condition2;               /**< most other status conditions (STATUS2_* constants) */  // status2
    /* 0x78 */ u32 id_no;                    /**< OT ID */
    /* 0x7c */ u16 item;                     /**< held item */
    /* 0x7e */ u16 dummy;
    /* 0x80 */ u8 hit_count;
    /* 0x81 */ u8 message_flag;
    /* 0x82 */ u8 sex : 4;                   /**< sex for rivalry purposes etc. */
               u8 oyasex : 4;                /**< original trainer sex */
    /* 0x83 */ u8 get_ball;                  /**< caught ball */
    /* 0x84 */ u32 effect_of_moves;          /**< move effect trackers (see MOVE_EFFECT_* constants) */ // moveEffectFlags
    /* 0x88 */ u32 effect_of_moves_temp;     /**< storage for effect_of_moves */
    /* 0x8c */ struct __attribute__((packed)) battle_moveflag moveeffect;   // unk88
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

    u32     followMeFlag            : 1;
    u32     battlerIdFollowMe       : 2;
    u32     knockoff_item           : 6;
    u32     oikaze_count            : 3;

    u32     spikesLayers            : 2;
    u32     toxicSpikesLayers       : 2;
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


enum TerrainOverlayType {
    TERRAIN_NONE,
    GRASSY_TERRAIN,
    MISTY_TERRAIN,
    ELECTRIC_TERRAIN,
    PSYCHIC_TERRAIN
};

/**
 *  @brief structure that tracks the terrain type currently present
 */
typedef struct {
    u8 type; /**< TerrainOverlayType enum */
    u8 numberOfTurnsLeft;
} TerrainOverlay;


typedef enum BattleSelectState {
    SSI_STATE_SELECT_COMMAND_INIT,
    SSI_STATE_1,
    SSI_STATE_2,
    SSI_STATE_3,
    SSI_STATE_4,
    SSI_STATE_5,
    SSI_STATE_6,
    SSI_STATE_7,
    SSI_STATE_8,
    SSI_STATE_9,
    SSI_STATE_10,
    SSI_STATE_11,
    SSI_STATE_12,
    SSI_STATE_13,
    SSI_STATE_14,
    SSI_STATE_15,
    SSI_STATE_NO_MOVES,
    SSI_STATE_END
} BattleSelectState;


/**
 *  @brief enum for command field from BattleStruct
 */
typedef enum ControllerCommand {
    CONTROLLER_COMMAND_GET_BATTLE_MON,
    CONTROLLER_COMMAND_START_ENCOUNTER,
    CONTROLLER_COMMAND_TRAINER_MESSAGE,
    CONTROLLER_COMMAND_SEND_OUT,
    CONTROLLER_COMMAND_SELECTION_SCREEN_INIT,
    CONTROLLER_COMMAND_SELECTION_SCREEN_INPUT,
    CONTROLLER_COMMAND_CALC_EXECUTION_ORDER,
    CONTROLLER_COMMAND_BEFORE_TURN,
    CONTROLLER_COMMAND_8,
    CONTROLLER_COMMAND_UPDATE_FIELD_CONDITION,
    CONTROLLER_COMMAND_UPDATE_MON_CONDITION, //10
    CONTROLLER_COMMAND_UPDATE_FIELD_CONDITION_EXTRA,
    CONTROLLER_COMMAND_TURN_END,
    CONTROLLER_COMMAND_FIGHT_INPUT,
    CONTROLLER_COMMAND_ITEM_INPUT,
    CONTROLLER_COMMAND_POKEMON_INPUT, //15
    CONTROLLER_COMMAND_RUN_INPUT,
    CONTROLLER_COMMAND_SAFARI_THROW_BALL,
    CONTROLLER_COMMAND_SAFARI_THROW_BAIT,
    CONTROLLER_COMMAND_SAFARI_THROW_MUD,
    CONTROLLER_COMMAND_SAFARI_WATCHING, //20
    CONTROLLER_COMMAND_CATCHING_CONSTEST_THROW_BALL,
    CONTROLLER_COMMAND_RUN_SCRIPT,
    CONTROLLER_COMMAND_23,
    CONTROLLER_COMMAND_24,
    CONTROLLER_COMMAND_25,
    CONTROLLER_COMMAND_26,
    CONTROLLER_COMMAND_27,
    CONTROLLER_COMMAND_HP_CALC,
    CONTROLLER_COMMAND_29,
    CONTROLLER_COMMAND_30,
    CONTROLLER_COMMAND_31,
    CONTROLLER_COMMAND_32,
    CONTROLLER_COMMAND_33,
    CONTROLLER_COMMAND_34,
    CONTROLLER_COMMAND_35,
    CONTROLLER_COMMAND_36,
    CONTROLLER_COMMAND_37,
    CONTROLLER_COMMAND_38,
    CONTROLLER_COMMAND_39,
    CONTROLLER_COMMAND_40,
    CONTROLLER_COMMAND_41,
    CONTROLLER_COMMAND_42,
    CONTROLLER_COMMAND_43,
    CONTROLLER_COMMAND_44,
    CONTROLLER_COMMAND_45,
    CONTROLLER_COMMAND_MAX
} ControllerCommand;

enum BattleControlSequence {
    BATTLE_CONTROL_GET_BATTLE_MON = 0,
    BATTLE_CONTROL_START_ENCOUNTER,
    BATTLE_CONTROL_TRAINER_MESSAGE,
    BATTLE_CONTROL_SHOW_BATTLE_MON,
    BATTLE_CONTROL_INIT_COMMAND_SELECTION,
    BATTLE_CONTROL_COMMAND_SELECTION_INPUT,
    BATTLE_CONTROL_CALC_TURN_ORDER,
    BATTLE_CONTROL_CHECK_PRE_MOVE_ACTIONS,
    BATTLE_CONTROL_BRANCH_ACTIONS,
    BATTLE_CONTROL_CHECK_FIELD_CONDITIONS,
    BATTLE_CONTROL_CHECK_MON_CONDITIONS,
    BATTLE_CONTROL_CHECK_SIDE_CONDITIONS,
    BATTLE_CONTROL_TURN_END,

    BATTLE_CONTROL_FIGHT,
    BATTLE_CONTROL_ITEM,
    BATTLE_CONTROL_PARTY,
    BATTLE_CONTROL_RUN,

    BATTLE_CONTROL_SAFARI_BALL,
    BATTLE_CONTROL_SAFARI_BAIT,
    BATTLE_CONTROL_SAFARI_ROCK,
    BATTLE_CONTROL_SAFARI_WAIT,

    BATTLE_CONTROL_EXEC_SCRIPT,
    BATTLE_CONTROL_BEFORE_MOVE,
    BATTLE_CONTROL_TRY_MOVE,
    BATTLE_CONTROL_PRIMARY_EFFECT,
    BATTLE_CONTROL_MOVE_FAILED,
    BATTLE_CONTROL_USE_MOVE,
    BATTLE_CONTROL_UPDATE_HP,
    BATTLE_CONTROL_AFTER_MOVE_MESSAGE,
    // 29 is an unused state
    BATTLE_CONTROL_AFTER_MOVE_EFFECT = 30,
    BATTLE_CONTROL_LOOP_MULTI_HIT,
    // 32 is an unused state
    BATTLE_CONTROL_LOOP_FAINTED = 33,
    BATTLE_CONTROL_LOOP_SPREAD_MOVES,
    BATTLE_CONTROL_FAINT_AFTER_SELFDESTRUCT,
    BATTLE_CONTROL_TRIGGER_AFTER_HIT_EFFECTS,
    // 37 is an unused state
    BATTLE_CONTROL_UPDATE_MOVE_BUFFERS = 38,
    BATTLE_CONTROL_MOVE_END,
    BATTLE_CONTROL_CHECK_ANY_FAINTED,
    BATTLE_CONTROL_RESULT,
    BATTLE_CONTROL_SCREEN_WIPE,
    BATTLE_CONTROL_FIGHT_END,
    BATTLE_CONTROL_END_WAIT,
};

typedef enum FutureConditionType {
    FUTURE_CONDITION_NONE = 0,
    FUTURE_CONDITION_WISH,
    FUTURE_CONDITION_FUTURE_SIGHT_OR_DOOM_DESIRE,
    FUTURE_CONDITION_MAX = FUTURE_CONDITION_FUTURE_SIGHT_OR_DOOM_DESIRE,
} FutureConditionType;

// Cannonade, Vine Lash, Volcalith, Wildfire) and Pledge Sea of Fire
typedef enum SideConditionType {
    SIDE_CONDITION_NONE = 0,
    SIDE_CONDITION_G_MAX_VINE_LASH,
    SIDE_CONDITION_G_MAX_CANNONADE,
    SIDE_CONDITION_G_MAX_WILDFIRE,
    SIDE_CONDITION_G_MAX_VOLCALITH,
    SIDE_CONDITION_SEA_OF_FIRE,
    SIDE_CONDITION_MAX = SIDE_CONDITION_SEA_OF_FIRE,
} SideConditionType;

typedef union ConditionType
{
    FutureConditionType futureConditionType;
    SideConditionType sideConditionType;
} ConditionType;

typedef struct FutureCondition {
    ConditionType conditionType;
    u8 affectedClient;
} FutureCondition;

typedef struct OnceOnlyAbilityFlags {
    BOOL battleBondFlag;
    BOOL intrepidSwordFlag;
    BOOL dauntlessShieldFlag;
    BOOL superSweetSyrupFlag;
} OnceOnlyAbilityFlags;

#define BATTLE_SCRIPT_PUSH_DEPTH 4

/**
 *  @brief the entire battle structure that we are interested in (for the most part)
 *
 *  tracks everything about battle state.  consider it a "battle global" structure
 */
struct PACKED BattleStruct {
    /*0x0*/ u8 com_seq_no[CLIENT_MAX];
    /*0x4*/ u8 ret_seq_no[CLIENT_MAX];
    /*0x8*/ int server_seq_no;
    /*0xC*/ int next_server_seq_no;
    /*0x10*/ int fcc_seq_no;
    /*0x14*/ int fcc_work;
    /*0x18*/ int stateUpdateMonCondition;
    /*0x1C*/ int updateMonConditionData;
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
    /*0x74*/ int fainting_client;       // battlerIdFainted
    /*0x78*/ int reshuffle_client;      // battlerIdSwitch
    /*0x7C*/ int reshuffle_client_temp;
    /*0x80*/ int ability_client;
    /*0x84*/ int magic_cort_client;     // battlerIdMagicCoat

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
    /*0xBC*/ int push_skill_arc_kind[BATTLE_SCRIPT_PUSH_DEPTH];
    /*0xCC*/ int push_skill_arc_index[BATTLE_SCRIPT_PUSH_DEPTH];
    /*0xDC*/ int push_skill_seq_no[BATTLE_SCRIPT_PUSH_DEPTH];
    /*0xEC*/ int executionIndex;
    /*0xF0*/ int wait_cnt;
    /*0xF4*/ MESSAGE_PARAM mp;          // buffMsg
    /*0x118*/ int battlerIdTemp;          // battlerIdTemp
    /*0x11C*/ int attack_client_work;   // battlerIdLeechSeedRecv
    /*0x120*/ int defence_client_work;  // battlerIdLeechSeeded
    /*0x124*/ int waza_work;            // moveTemp
    /*0x128*/ int item_work;            // itemTemp
    /*0x12C*/ int tokusei_work;         // abilityTemp
    /*0x130*/ int msg_work;             // msgTemp
    /*0x134*/ int calc_work;            // calcTemp
    /*0x138*/ int temp_work;            // tempData
    /*0x13C*/ u32 client_status[CLIENT_MAX];
    /*0x14C*/ u32 koban_counter;
    /*0x150*/ int total_turn;
    /*0x154*/ int total_hinshi[CLIENT_MAX];
    /*0x164*/ int total_damage[CLIENT_MAX];
    /*0x174*/ int me_first_total_turns;
    /*0x178*/ struct tcb_skill_intp_work *tciw;
    /*0x17C*/ void *work;
    /*0x180*/ u32 field_condition;                                  // fieldCondition
    /*0x184*/ struct field_condition_count fcc;                     // fieldConditionData
    /*0x1BC*/ u32 side_condition[2];                                // fieldSideConditionFlags
    /*0x1C4*/ struct side_condition_work scw[2];                    // fieldSideConditionData
    /*0x1D4*/ struct OneTurnEffect oneTurnFlag[CLIENT_MAX];         // turnData
    /*0x2D4*/ struct OneSelfTurnEffect oneSelfFlag[CLIENT_MAX];     // selfTurnData
    /*0x344*/ struct MoveOutCheck moveOutCheck[CLIENT_MAX];         // MoveFail

    /*0x354*/ struct BattleAIWorkTable aiWorkTable;
    /*0x2134*/ u32 *ai_seq_work;
    /*0x2138*/ u32 ai_seq_address;

    /*0x213C*/ u32 server_status_flag;                              // battleStatus
    /*0x2140*/ u32 server_status_flag2;                             // battleStatus2
    /*0x2144*/ int damage;
    /*0x2148*/ int hit_damage;
    /*0x214C*/ int critical_count;                                  // criticalCnt
    /*0x2150*/ int critical;                                        // criticalMultiplier
    /*0x2154*/ int damage_power;
    /*0x2158*/ int damage_value;
    /*0x215C*/ int hp_calc_work;                                    // hpCalc
    /*0x2160*/ int move_type;                                       // moveType
    /*0x2164*/ int waza_eff_cnt;
    /*0x2168*/ int money_multiplier;
    /*0x216C*/ u32 waza_status_flag;                                // moveStatusFlag

    /*0x2170*/ u32 add_status_flag_direct;
    /*0x2174*/ u32 add_status_flag_indirect;
    /*0x2178*/ u32 add_status_flag_tokusei;
    /*0x217C*/ u8 multiHitCount;
    /*0x217D*/ u8 multiHitCountTemp;
    /*0x217E*/ u8 client_loop;
    /*0x217F*/ u8 beat_up_count;

    /*0x2180*/ u32 loop_flag;
    /*0x2184*/ u32 waza_out_check_on_off; // multiHitCheckFlags
    /*0x2188*/ u32 loop_hit_check;  // checkMultiHit

    /*0x218C*/ u32 condition2_off_req[CLIENT_MAX];
    /*0x219C*/ u8 sel_mons_no[CLIENT_MAX];  // selectedMonIndex
    /*0x21A0*/ u8 reshuffle_sel_mons_no[CLIENT_MAX];
    /*0x21A4*/ u8 ai_reshuffle_sel_mons_no[CLIENT_MAX];
    /*0x21A8*/ u32 playerActions[4][4]; // client_act_work
    /*0x21E8*/ u8 executionOrder[4]; // client_agi_work -- accounts for running, items, etc used in battler slots
    /*0x21EC*/ u8 turnOrder[4]; // turn_order -- by pokemon speed, accounting for trick room
    /*0x21F0*/ u32 effectiveSpeed[4]; // psp_agi_point
    /*0x2200*/ u8 ServerQue[4][4][16];
    /*0x2300*/ u8 server_buffer[4][256];
    /*0x2700*/ int SkillSeqWorkOld[400];
    /*0x2D40*/ struct BattlePokemon battlemon[CLIENT_MAX]; //0xc0
    /*0x3040*/ u32 moveNoTemp;
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
    /*0x30C4*/ u16 waza_no_texture2[CLIENT_MAX];
    /*0x30CC*/ u16 waza_no_texture2_client[CLIENT_MAX];
    /*0x30D4*/ u16 waza_no_texture2_type[CLIENT_MAX];
    /*0x30DC*/ u16 waza_no_metronome[CLIENT_MAX];
    /*0x30E4*/ int store_damage[CLIENT_MAX];
    /*0x30F4*/ int client_no_hit[CLIENT_MAX];
    /*0x3104*/ int client_no_agi;
    /*0x3108*/ u8 no_reshuffle_client;      // switchInFlag
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
    /*0x315E*/ u8 frisk_tracker; // see which clients have been frisked by the frisk client (1 << client)
    /*0x315F*/ u8 magicBounceTracker; // if any client has already activated magic bounce, another can not activate
    /*0x3160*/ u8 binding_turns[4]; // turns left for bind
    /*0x3164*/ u8 entryHazardQueue[2][NUM_HAZARD_IDX];
    /*0x316E*/ u8 hazardQueueTracker:7;
               u8 itemActivatedTracker:1; // if an item that isn't lost on activation has been activated for this hit (think rocky helmet)
    /*0x316F*/ u8 padding_316F[0x317E - 0x316F]; // padding to get moveTbl to 317E (for convenience of 3180 in asm)
    /*0x317E*/ struct BattleMove moveTbl[NUM_OF_MOVES + 1];
    /*0x    */ u32 gainedExperience[6]; // possible experience gained per party member in order to get level scaling done right
    /*0x    */ u32 gainedExperienceShare[6]; // possible experience gained per party member in order to get level scaling done right
    /*0x    */ int SkillSeqWork[600];
    /*...*/

               FutureCondition futureConditionQueue[CLIENT_MAX * FUTURE_CONDITION_MAX];
               BOOL checkOnlySpecifiedTarget; // for BattleFormChangeCheck
               u8 endTurnEventBlockSequenceNumber;
               u8 checkOnlySpecifiedTargetClient;

               TerrainOverlay terrainOverlay; // realign this to u32 boundary lol
               u8 printed_field_message;
               u8 original_terrain:7;
               u8 hasLoadedTerrainOver:1;
               u8 original_bgId:7;
               u8 hasLoadedBgIdOver:1;
               u32 moveStatusFlagForSpreadMoves[CLIENT_MAX];
               u32 damageForSpreadMoves[CLIENT_MAX]; // u32 or int?
               u8 clientLoopForSpreadMoves;
               BOOL boostedAccuracy;
               BOOL moveStolen;
               BOOL moveBounced;
               u8 rawSpeedNonRNGClientOrder[CLIENT_MAX];
               int numberOfTurnsClientHasCurrentAbility[CLIENT_MAX]; // idk it's probably not u8?
               u8 clientPriority[CLIENT_MAX];
               OnceOnlyAbilityFlags onceOnlyAbilityFlags[4][6];
};

enum {
    SPREAD_MOVE_LOOP_ALLY = 0,
    SPREAD_MOVE_LOOP_OPPONENT_LEFT,
    SPREAD_MOVE_LOOP_OPPONENT_RIGHT,
    SPREAD_MOVE_LOOP_MAX = SPREAD_MOVE_LOOP_OPPONENT_RIGHT
};

typedef struct GROUND_WORK {
    void *unk0;
    struct BattleSystem *bw;
    u8 team;
    u8 terrain;
    s16 x;
    s16 y;
    u16 unused;
} GROUND_WORK; //size: 0x10

typedef struct {
    u16 sentence_type;
    u16 sentence_id;
    u16 word[2];
} PACKED PMS_DATA; // size: 8 bytes

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
} PACKED TRAINER_DATA; // size: 52 bytes


struct BattleSystem {
    /* 0x00 */ u32 *unk0;
    /* 0x04 */ void * /*BgConfig **/ bgConfig;
    /* 0x08 */ void * /*Window **/ window;
    /* 0x0C */ u32 *unkC;
    /* 0x10 */ u32 *unk10;
    /* 0x14 */ u32 *msgFormat;
    /* 0x18 */ void * /*String **/ msgBuffer;
    /* 0x1C */ u32 unk1C;
    /* 0x20 */ u32 unk20;
    /* 0x24 */ u32 unk24;
    /* 0x28 */ void * /*PaletteData **/ palette;
    /* 0x2C */ u32 battleType;
    /* 0x30 */ struct BattleStruct *sp;
    /* 0x34 */ void * /*OpponentData **/ opponentData[4];
    /* 0x38 */ int maxBattlers;
    struct PlayerProfile *playerProfile[4];
    void *bag;
    void *bagCursor;
    void *pokedex;
    void *storage;
    struct Party *trainerParty[4];
    void *chatotVoice[4];
    u32 *unk88;
    u32 *unk8C;
    void *unk90;
    void *unk94;
    u32 *unk98;
    u32 *unk9C;
    u16 trainerId[4];
    u8 trainerGender[4];
    TRAINER_DATA trainers[4];
    GROUND_WORK ground[2];
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
    u8 padding_19C[0x220 - 0x19C]; // 220 based on assembly at 0223B884
    u8 *bg_area;
    u16 *pal_area;
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
    u8 padding[0x2400 - 0x228];
    u32 terrain;
    u32 bgId;
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

struct PACKED newBattleStruct
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

#ifdef RESTORE_ITEMS_AT_BATTLE_END
    u16 itemsToRestore[6]; // items that each mon was holding at the beginning of the battle
#endif // RESTORE_ITEMS_AT_BATTLE_END
};

struct PACKED BATTLE_PARAM
{
    /*0x0000*/  u32 fight_type;
    /*0x0004*/  struct Party *poke_party[4];
    /*0x0008*/  int win_lose_flag;
    /*0x000C*/  int trainer_id[4];
    /*0x001C*/  TRAINER_DATA trainer_data[4]; //0xD0 bytes
    /*0x00EC*/  u8 fill[0xD4];
    /*0x01C0*/  void* savedata;
};


struct PACKED FULL_TRAINER_MON_DATA_STRUCTURE // structure isn't actually used as the structure is iterated through conditionally
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


enum
{
    SWOAK_SEQ_VANISH_ON_OFF=0,
    SWOAK_SEQ_SYNCHRONIZE_CHECK,
    SWOAK_SEQ_POKE_APPEAR_CHECK,
    SWOAK_SEQ_CHECK_HELD_ITEM_EFFECT_ATTACKER,
    SWOAK_SEQ_CHECK_HELD_ITEM_EFFECT_DEFENDER,
    SWOAK_SEQ_CHECK_DEFENDER_ITEM_ON_HIT,
    SWOAK_SEQ_THAW_ICE,
    SWOAK_SEQ_CHECK_HEALING_ITEMS,
    SWOAK_SEQ_CLEAR_MAGIC_COAT,
};


typedef enum BeforeTurnState {
    SBA_RESET_DEFIANT = 0,
    SBA_RESET_FURY_CUTTER,
    SBA_RANDOM_SPEED_ROLL,
    SBA_QUICK_CLAW_CUSTAP_BERRY_O_POWER_ACTIVATION,
    SBA_SET_GIMMICK_REQUEST_STATUS,
    // This part is inconsistent between Bulbapedia, Victory Road VGC, and Showdown, defaulting to Showdown for now
    SBA_ESCAPING,
    SBA_SWITCHING,
    SBA_ROTATING,
    SBA_USING_ITEM,
    SBA_MEGA_EVOLUTION_ULTRA_BURST,
    SBA_DYNAMAXING,
    SBA_TERASTALLIZING,
    SBA_FOCUS_PUNCH_BEAK_BLAST_SHELL_TRAP,
    // End inconsistent order
    SBA_RAGE,
    SBA_END
} BeforeTurnState;


enum {
    BEFORE_MOVE_START_FLAG_UNLOAD = 0,
    BEFORE_MOVE_START,

    BEFORE_MOVE_STATE_RECHARGE,
    BEFORE_MOVE_STATE_SLEEP_OR_FROZEN,
    BEFORE_MOVE_STATE_CHECK_OBEDIENCE,
    BEFORE_MOVE_STATE_CHECK_PP,
    BEFORE_MOVE_STATE_DISPLAY_Z_DANCE_AND_EFFECT,
    BEFORE_MOVE_STATE_TRUANT,
    BEFORE_MOVE_STATE_FOCUS_PUNCH_LOSE_FOCUS,
    BEFORE_MOVE_STATE_FLINCH,
    BEFORE_MOVE_STATE_DISABLED,
    BEFORE_MOVE_STATE_HEAL_BLOCK,
    BEFORE_MOVE_STATE_GRAVITY_THROAT_CHOP,
    BEFORE_MOVE_STATE_CHECK_CHOICE_LOCK,
    BEFORE_MOVE_STATE_TAUNT,
    BEFORE_MOVE_STATE_IMPRISION,
    BEFORE_MOVE_STATE_CONFUSION_SELF_HIT_OR_WEAR_OFF,
    BEFORE_MOVE_STATE_PARALYSIS,
    BEFORE_MOVE_STATE_INFATUATION,
    // BEFORE_MOVE_STATE_SLEEP_TALK_SNORE_ANNOUNCEMENT,
    BEFORE_MOVE_STATE_ANNOUNCE_SUB_MOVE,
    BEFORE_MOVE_STATE_THAW_OUT_BY_MOVE,
    BEFORE_MOVE_STATE_STANCE_CHANGE,
    // BEFORE_MOVE_STATE_CHECK_FAIL_MESSAGES,

    // BEFORE_MOVE_STATE_ANNOUNCE_MOVE,    // just handle in each fail
    BEFORE_MOVE_STATE_MOVE_TYPE_CHANGES,
    // BEFORE_MOVE_STATE_ASSIGN_TARGET,    // TODO: just handle in original function, add Curse modernisation
    // BEFORE_MOVE_STATE_ABILITY_REDIRECT_TARGET,
    BEFORE_MOVE_STATE_REDIRECT_TARGET,
    BEFORE_MOVE_STATE_DECREMENT_PP,
    BEFORE_MOVE_STATE_CHOICE_LOCK,
    BEFORE_MOVE_STATE_BURN_UP_OR_DOUBLE_SHOCK,
    BEFORE_MOVE_STATE_PRIMAL_WEATHER,
    BEFORE_MOVE_STATE_CONSUME_MICLE_BERRY_FLAG,
    BEFORE_MOVE_STATE_MOVE_FAILURES_1,
    BEFORE_MOVE_STATE_BIDE,
    BEFORE_MOVE_STATE_ABILITY_FAILURES_1,
    BEFORE_MOVE_STATE_INTERRUPTIBLE_MOVES,
    BEFORE_MOVE_STATE_PROTEAN_OR_LIBERO,
    BEFORE_MOVE_STATE_CHARGING_MOVE_MESSAGE,
    BEFORE_MOVE_STATE_CHECK_POWER_HERB,
    BEFORE_MOVE_STATE_CHECK_STOLEN_BY_SNATCH,
    BEFORE_MOVE_STATE_SET_EXPLOSION_SELF_DESTRUCT_FLAG,
    BEFORE_MOVE_STATE_CHECK_NO_TARGET_OR_SELF,
    BEFORE_MOVE_STATE_SET_CRASH_FLAG,
    BEFORE_MOVE_STATE_SET_STEEL_BEAM_FLAG,
    BEFORE_MOVE_STATE_CHECK_SKY_DROP_TARGET,
    BEFORE_MOVE_STATE_SEMI_INVULNERABILITY,
    BEFORE_MOVE_STATE_PSYCHIC_TERRAIN,
    BEFORE_MOVE_STATE_TEAMMATE_PROTECTION,
    BEFORE_MOVE_STATE_PROTECT_AND_FRIENDS,
    BEFORE_MOVE_STATE_MAT_BLOCK,
    BEFORE_MOVE_STATE_MAX_GUARD,
    BEFORE_MOVE_STATE_MAGIC_COAT,
    BEFORE_MOVE_STATE_TELEKINESIS_FAILURES,
    BEFORE_MOVE_STATE_MAGIC_BOUNCE,
    BEFORE_MOVE_STATE_ABILITY_FAILURES_2,
    BEFORE_MOVE_STATE_TYPE_CHART_IMMUNITY,
    BEFORE_MOVE_STATE_LEVITATE,
    BEFORE_MOVE_STATE_AIR_BALLOON_TELEKINESIS_MAGNET_RISE,
    BEFORE_MOVE_STATE_SAFETY_GOGGLES,
    BEFORE_MOVE_STATE_ABILITY_FAILURES_3,
    BEFORE_MOVE_STATE_TYPE_BASED_MOVE_CONDITION_IMMUNITIES_1,
    BEFORE_MOVE_STATE_MOVE_FAILURES_2,
    BEFORE_MOVE_STATE_MOVE_FAILURES_2_VENOM_DRENCH,
    BEFORE_MOVE_STATE_MOVE_FAILURES_3,
    BEFORE_MOVE_STATE_MOVE_FAILURES_3_PERISH_SONG,
    BEFORE_MOVE_STATE_MOVE_FAILURES_3_LOWER_STATS,
    BEFORE_MOVE_STATE_TYPE_BASED_MOVE_CONDITION_IMMUNITIES_2,
    BEFORE_MOVE_STATE_UPROAR_STOPPING_MOVES,
    BEFORE_MOVE_STATE_SAFEGUARD,
    BEFORE_MOVE_STATE_TERRAIN_BLOCK,
    BEFORE_MOVE_STATE_SUBSTITUTE_BLOCKING_STAT_DROPS_DECORATE,
    BEFORE_MOVE_STATE_MIST,
    BEFORE_MOVE_STATE_ABILITY_FAILURES_4_STAT_BASED_FAILURES,
    BEFORE_MOVE_STATE_ABILITY_FAILURES_4_STATUS_BASED_FAILURES,
    BEFORE_MOVE_STATE_ABILITY_FAILURES_4_OTHER_AROMA_VEIL_STRUDY,
    BEFORE_MOVE_STATE_MOVE_ACCURACY,
    BEFORE_MOVE_STATE_SUBSTITUTE_BLOCKING_OTHER_EFFECTS,
    BEFORE_MOVE_STATE_MIRROR_ARMOR,
    BEFORE_MOVE_STATE_ROAR_WHIRLWIND_INTO_DYNAMAXED_TARGET,
    BEFORE_MOVE_STATE_MOVE_FAILURES_4_SINGLE_TARGET,
    BEFORE_MOVE_STATE_MOVE_FAILURES_4_MULTIPLE_TARGETS,
    BEFORE_MOVE_STATE_MOVE_FAILURES_5,
    BEFORE_MOVE_STATE_AROMA_VEIL,
    BEFORE_MOVE_STATE_TRIGGER_STRONG_WINDS,
    BEFORE_MOVE_STATE_TERA_SHELL,
    BEFORE_MOVE_STATE_CONSUME_DAMAGE_REDUCING_BERRY,

    BEFORE_MOVE_END,
};

// enum {
//     TRY_MOVE_START = 0,

//     // BEFORE_MOVE_STATE_ANNOUNCE_MOVE,    // just handle in each fail
//     BEFORE_MOVE_STATE_MOVE_TYPE_CHANGES,
//     // BEFORE_MOVE_STATE_ASSIGN_TARGET,    // TODO: just handle in original function, add Curse modernisation
//     // BEFORE_MOVE_STATE_ABILITY_REDIRECT_TARGET,
//     BEFORE_MOVE_STATE_REDIRECT_TARGET,
//     BEFORE_MOVE_STATE_DECREMENT_PP,
//     BEFORE_MOVE_STATE_CHOICE_LOCK,
//     BEFORE_MOVE_STATE_BURN_UP_OR_DOUBLE_SHOCK,
//     BEFORE_MOVE_STATE_PRIMAL_WEATHER,
//     BEFORE_MOVE_STATE_CONSUME_MICLE_BERRY_FLAG,
//     BEFORE_MOVE_STATE_MOVE_FAILURES_1,
//     BEFORE_MOVE_STATE_ABILITY_FAILURES_1,
//     BEFORE_MOVE_STATE_INTERRUPTIBLE_MOVES,
//     BEFORE_MOVE_STATE_PROTEAN_OR_LIBERO,
//     BEFORE_MOVE_STATE_CHARGING_MOVE_MESSAGE,
//     BEFORE_MOVE_STATE_CHECK_STOLEN,
//     BEFORE_MOVE_STATE_SET_EXPLOSION_SELF_DESTRUCT_FLAG,
//     BEFORE_MOVE_STATE_CHECK_NO_TARGET_OR_SELF,
//     BEFORE_MOVE_STATE_SET_STEEL_BEAM_FLAG,
//     BEFORE_MOVE_STATE_CHECK_SKY_DROP_TARGET,
//     BEFORE_MOVE_STATE_SEMI_INVULNERABILITY,
//     BEFORE_MOVE_STATE_PSYCHIC_TERRAIN,
//     BEFORE_MOVE_STATE_TEAMMATE_PROTECTION,
//     BEFORE_MOVE_STATE_PROTECT_AND_FRIENDS,
//     BEFORE_MOVE_STATE_MAT_BLOCK,
//     BEFORE_MOVE_STATE_MAX_GUARD,
//     BEFORE_MOVE_STATE_MAGIC_COAT,
//     BEFORE_MOVE_STATE_TELEKINESIS_FAILURES,
//     BEFORE_MOVE_STATE_MAGIC_BOUNCE,
//     BEFORE_MOVE_STATE_ABILITY_FAILURES_2,
//     BEFORE_MOVE_STATE_TYPE_CHART_IMMUNITY,
//     BEFORE_MOVE_STATE_LEVITATE,
//     BEFORE_MOVE_STATE_AIR_BALLOON_TELEKINESIS_MAGNET_RISE,
//     BEFORE_MOVE_STATE_SAFETY_GOGGLES,
//     BEFORE_MOVE_STATE_ABILITY_FAILURES_3,
//     BEFORE_MOVE_STATE_TYPE_BASED_MOVE_CONDITION_IMMUNITIES_1,
//     BEFORE_MOVE_STATE_MOVE_FAILURES_2,
//     BEFORE_MOVE_STATE_MOVE_FAILURES_3,
//     BEFORE_MOVE_STATE_TYPE_BASED_MOVE_CONDITION_IMMUNITIES_2,
//     BEFORE_MOVE_STATE_UPROAR_STOPPING_MOVES,
//     BEFORE_MOVE_STATE_SAFEGUARD,
//     BEFORE_MOVE_STATE_TERRAIN_BLOCK,
//     BEFORE_MOVE_STATE_SUBSTITUTE_BLOCKING_STAT_DROPS_DECORATE,
//     BEFORE_MOVE_STATE_MIST,
//     BEFORE_MOVE_STATE_ABILITY_FAILURES_4_STAT_BASED_FAILURES,
//     BEFORE_MOVE_STATE_MOVE_ACCURACY,
//     BEFORE_MOVE_STATE_SUBSTITUTE_BLOCKING_OTHER_EFFECTS,
//     BEFORE_MOVE_STATE_MIRROR_ARMOR,
//     BEFORE_MOVE_STATE_ROAR_WHIRLWIND_INTO_DYNAMAXED_TARGET,
//     BEFORE_MOVE_STATE_MOVE_FAILURES_4_SINGLE_TARGET,
//     BEFORE_MOVE_STATE_MOVE_FAILURES_5,
//     BEFORE_MOVE_STATE_AROMA_VEIL,
//     BEFORE_MOVE_STATE_TRIGGER_STRONG_WINDS,
//     BEFORE_MOVE_STATE_CONSUME_DAMAGE_REDUCING_BERRY,

//     TRY_MOVE_END,
// };

extern u8 TypeEffectivenessTable[][3];
















extern struct newBattleStruct newBS;
extern struct ILLUSION_STRUCT gIllusionStruct;
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
u16 LONG_CALL GetBattlerSelectedMove(void*,int);
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
void LONG_CALL DistributeEffortValues(struct Party *party, u32 slot, u32 species, u32 form);




/* new battle engine declarations*/
/**
 *  @brief grab battler ability.  don't consider mold breaker in this
 *
 *  @param ctx global battle structure
 *  @param battlerId battler to check
 *  @return ability index that battler has
 */
u32 LONG_CALL GetBattlerAbility(struct BattleStruct *ctx, int battlerId);

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
BOOL LONG_CALL TryUseHeldItem(void *bw, struct BattleStruct *sp, int client_no);

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
 *  @param struggleCheckFlags
 *  @return updated nonSelectableMoves field
 */
u32 LONG_CALL StruggleCheck(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId, u32 nonSelectableMoves, u32 struggleCheckFlags);

void LONG_CALL Ground_ActorResourceSet(GROUND_WORK *ground, void *bw, u32 side, u32 terrain);
void LONG_CALL BattleWorkGroundBGChg(void *bw);
u32 LONG_CALL GrabTimeOfDayFileAdjustment(void *bw);
BOOL LONG_CALL CheckItemGradualHPRestore(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId);
BOOL LONG_CALL ov12_02252218(struct BattleStruct *ctx, int battlerId);
BOOL LONG_CALL TryHeldItemNegativeEffect(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId);



typedef struct ANIM_CMD_STRUCT
{
    u8 padding_0[0x18];
    u32 *animScriptPtr;
    // more stuff idk all i needed was where the stuff currently is
} ANIM_CMD_STRUCT;


#define NUM_VANILLA_ANIM_SCRIPT_COMMANDS (88)

typedef void (*anim_scr_cmd_func)(ANIM_CMD_STRUCT *animCmdStruct);

extern const anim_scr_cmd_func gAnimScrTable[NUM_VANILLA_ANIM_SCRIPT_COMMANDS];
extern struct BattleSystem *gBattleSystem;



enum
{
    SWITCH_IN_CHECK_WEATHER = 0,
    SWITCH_IN_CHECK_FIELD, // SwSh DLC Psychic Terrain, Toxic Spikes
    SWITCH_IN_CHECK_ENTRY_EFFECT_NEUTRALIZING_GAS_TERA_SHIFT,
    SWITCH_IN_CHECK_ENTRY_EFFECT_UNNERVE,
    SWITCH_IN_CHECK_ENTRY_EFFECT_HEALING_WISH,
    SWITCH_IN_CHECK_ENTRY_EFFECT_HAZARDS,
    SWITCH_IN_CHECK_ENTRY_EFFECT_ABILITIES_AIR_BALLOON,
    SWITCH_IN_CHECK_ENTRY_EFFECT_PRIMAL_REVERSION_SEEDS_SCHOOLING_SHIELDS_DOWN,
    SWITCH_IN_CHECK_ENTRY_EFFECT_WHITE_HERB_FLOWER_GIFT_FORECAST_ICE_FACE_COSTAR_COMMANDER_PROTOSYNTHESIS_QUARK_DRIVE_HOSPITALITY_EJECT_PACK,
    SWITCH_IN_CHECK_ENTRY_EFFECT_OPPORTUNIST,
    SWITCH_IN_CHECK_AMULET_COIN,
    SWITCH_IN_CHECK_ABILITY_HEAL_STATUS,
    SWITCH_IN_CHECK_END,
};

enum
{
    SWITCH_IN_CHECK_LOOP = 0,
    SWITCH_IN_CHECK_MOVE_SCRIPT,
    SWITCH_IN_CHECK_CHECK_END,
};

extern const u8 StatBoostModifiers[][2];















// defined in battle_calc_damage.c
/**
 *  @brief grab a battler's item.  returns 0 if the battler is in embargo or can't hold an item for any other reason
 *
 *  @param sp global battle structure
 *  @param client_no battler to grab the item of
 *  @return
 */
u16 LONG_CALL GetBattleMonItem(struct BattleStruct *sp, int client_no);



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
BOOL LONG_CALL BattleFormChangeCheck(void *bw, struct BattleStruct *sp, int *seq_no);

/**
 *  @brief get the adjusted move type accounting for normalize and friends
 *
 *  @see GetAdjustedMoveTypeBasics
 *  @param sp global battle structure
 *  @param client battler to read data from
 *  @param move index of the move to grab type for
 */
u32 LONG_CALL GetAdjustedMoveType(struct BattleStruct *sp, u32 client, u32 move); // account for normalize and such

/**
 *  @brief check if a move is a sound-based move
 *
 *  @param move move index to check for sound property
 *  @return TRUE if is a sound move; FALSE otherwise
 */
BOOL LONG_CALL IsMoveSoundBased(u32 move);

/**
 *  @brief get the adjusted move type accounting for normalize without relying on a client
 *
 *  @param sp global battle structure
 *  @param move index of the move to grab type for
 *  @param ability index of the ability to account for
 *  @param type if relevant, the type that is already set to overwrite the base move type
 */
u32 LONG_CALL GetAdjustedMoveTypeBasics(struct BattleStruct *sp, u32 move, u32 ability, u32 type); // AI-specific, client-agnostic

/**
 *  @brief changes the form of the battler passed in.  updates all of the stats and possibly updates the ability if necessary
 *
 *  @param client battler to change form
 *  @param form_no target form id
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param SwitchAbility whether the ability should be updated from the base stats in personal
 */
void LONG_CALL BattleFormChange(int client, int form_no, void* bw, struct BattleStruct *sp, bool8 SwitchAbility);

/**
 *  @brief clear the newly introduced battle mon flags in various scenarios, i.e. switching
 *
 *  @param sp global battle structure
 *  @param client battler whose flags to clear
 */
void LONG_CALL ClearBattleMonFlags(struct BattleStruct *sp, int client);

/**
 *  @brief dumbs client parameter down into its team in proper scenarios
 *
 *  @param bw battle work structure
 *  @param client client to sanitize
 *  @return team of client
 */
u32 LONG_CALL SanitizeClientForTeamAccess(void *bw, u32 client);

/**
 *  @brief checks if the client's side has 2 battlers
 *
 *  @param bw battle work structure
 *  @param client client whose side to check for 2 battlers
 *  @return TRUE if the client's side has 2 battlers
 */
BOOL LONG_CALL DoesSideHave2Battlers(void *bw, u32 client);


// defined in battle_item.c
/**
 *  @brief queue up or perform item effects on u-turn hit
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param seq_no battle subscript to run
 *  @return TRUE to load the battle subscript in *seq_no and run it; FALSE otherwise
 */
u32 LONG_CALL MoveHitUTurnHeldItemEffectCheck(void *bw, struct BattleStruct *sp, int *seq_no);

/**
 *  @brief handle shell bell hp restore, rage is building message, and life orb after getting a hit
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 */
u32 LONG_CALL ServerWazaHitAfterCheckAct(void *bw, struct BattleStruct *sp);

/**
 *  @brief handle defender item effects on hit
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param seq_no battle subscript to run
 *  @return TRUE to load the battle subscript in *seq_no and run it; FALSE otherwise
 */
BOOL LONG_CALL CheckDefenderItemEffectOnHit(void *bw, struct BattleStruct *sp, int *seq_no);


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
s32 LONG_CALL GrabClientFromBattleScriptParam(void *bw, struct BattleStruct *sp, int side);

/**
 *  @brief load battle script to BattleStruct's SkillSeqWork
 *
 *  @param sp global battle structure
 *  @param kind ARC_* constant to load from, doesn't have to be 0 for move scripts or 1 for subscripts
 *  @param index number to load
 */
void LONG_CALL LoadBattleSubSeqScript(struct BattleStruct *sp, int kind, int index);

/**
 *  @brief load battle script and queue up the current one to go after this one
 *
 *  @param sp global battle structure
 *  @param kind ARC_* constant to load from, doesn't have to be 0 for move scripts or 1 for subscripts
 *  @param index number to load
 */
void LONG_CALL PushAndLoadBattleScript(struct BattleStruct *sp, int kind, int index);

/**
 *  @brief function to check whether a mon is grounded or not
 *  @param sp global battle structure
 *  @param client_no resolved battler
 *  @return `TRUE` if grounded, `FALSE` otherwise
 */
BOOL LONG_CALL IsClientGrounded(struct BattleStruct *sp, u32 client_no);

/**
 *  @brief function to check whether a mon is grounded or not
 *  @param sp global battle structure
 *  @param attacker resolved battler attacker
 *  @param defender resolved battler defender
 *  @return `TRUE` if grounded, `FALSE` otherwise
 */
BOOL LONG_CALL MoldBreakerIsClientGrounded(struct BattleStruct *sp, u32 attacker, u32 defender);

/**
 *  @brief check if waitmessage battle script command should end
 *
 *  @param sp global battle structure
 *  @return TRUE if link queue is empty; FALSE otherwise
 */
BOOL LONG_CALL Link_QueueIsEmpty(struct BattleStruct *sp);

/**
 *  @brief grab a battler's weight
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param client battler whose weight to grab
 *  @return battler's weight
 */
s32 LONG_CALL GetPokemonWeight(void *bw UNUSED, struct BattleStruct *sp, u32 client);

/**
 *  @brief check if a held item can be removed from the species it is attached to
 *
 *  @param species the species of the mon
 *  @param item the held item of the attacker
 *  @return TRUE if item can be removed, FALSE otherwise
 */
BOOL LONG_CALL CanItemBeRemovedFromSpecies(u16 species, u16 item);

BOOL LONG_CALL CanItemBeRemovedFromClient(struct BattleStruct *ctx, u32 client);

/**
 *  @brief check if a held item can be tricked or not depending on the items and species
 *
 *  @param attacker_item the held item of the attacker
 *  @param attacker_species the attacker species
 *  @param defender_item the held item of the defender
 *  @param defender_species the defender species
 */
BOOL LONG_CALL CanTrickHeldItemManual(u16 attacker_item, u16 attacker_species, u16 defender_item, u16 defender_species);

BOOL LONG_CALL CanTrickHeldItem(struct BattleStruct *ctx, u32 attacker, u32 defender);

// defined in ability.c
int LONG_CALL SwitchInAbilityCheck(void *bw, struct BattleStruct *sp);

/**
 *  @brief check if any specific stat stage is not at the passed value
 *
 *  @param sp global battle structure
 *  @param client battler whose stat stages to check
 *  @param value to check for.  made flexible for every circumstance, i.e. Moody needs to check if any stat can be raised/lowered
 *  @return TRUE if there is a stat stage not at the passed value; FALSE otherwise (yes accuracy and evasion count too)
 */
BOOL LONG_CALL AreAnyStatsNotAtValue(struct BattleStruct *sp, int client, int value, BOOL excludeAccuracyEvasion);

/**
 *  @brief check if an ability is present and account for mold breaker
 *
 *  @param sp global battle structure
 *  @param attacker battler that potentially has mold breaker
 *  @param defender battler whose ability to check
 *  @param ability ability to check for
 *  @return TRUE if the defender has the ability and it isn't canceled by mold breaker; FALSE otherwise
 */
u32 LONG_CALL MoldBreakerAbilityCheck(struct BattleStruct *sp, int attacker, int defender, u32 ability);

/**
 *  @brief check if synchronize should activate
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @param server_seq_no current server step, to be queued as sp->next_server_seq_no if a synchronize check passes
 *  @return TRUE if a battle subscript was loaded to sp->SkillSeqWork
 */
BOOL LONG_CALL SynchroniseAbilityCheck(void *bw, struct BattleStruct *sp, int server_seq_no);

/**
 *  @brief check if a move should activate the defender's ability and run a subscript
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param seq_no battle subscript to run
 *  @return TRUE to load the battle subscript in *seq_no and run it; FALSE otherwise
 */
BOOL LONG_CALL MoveHitDefenderAbilityCheck(void *bw, struct BattleStruct *sp, int *seq_no);

/**
 *  @brief handle magic coat and snatch.  load the battle subscript to handle the scenario if necessary and return TRUE to signal to run the script
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @return TRUE to signal that the battle subscript was loaded and to run it; FALSE otherwise
 */
u32 LONG_CALL ServerWazaKoyuuCheck(void *bw, struct BattleStruct *sp);

/**
 *  @brief check if client_no's ability should activate, specifically at the end of the turn.  loads subseq and returns TRUE if it should
 *
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param client_no is the battler whose ability to check for
 *  @return TRUE if subseq was loaded; FALSE otherwise
 */
u32 TurnEndAbilityCheck(void *bw, struct BattleStruct *sp, int client_no);

/**
 *  @brief grab which of the client's raw stats (excluding HP) are the highest for the ability beast boost
 *
 *  @param sp global battle structure
 *  @param client battler whose stats to compare among themselves for beast boost
 *  @return the highest raw stat the the client has (excluding HP)
 */
u8 BeastBoostGreatestStatHelper(struct BattleStruct *sp, u32 client);


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
u8 LONG_CALL CalcSpeed(void *bw, struct BattleStruct *sp, int client1, int client2, int flag);

#define CALCSPEED_FLAG_NOTHING 0
#define CALCSPEED_FLAG_NO_PRIORITY 0x80

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
int LONG_CALL ServerDoTypeCalcMod(void *bw, struct BattleStruct *sp, int move_no, int move_type, int attack_client, int defence_client, int damage, u32 *flag);

/**
 *  @brief see if a move has positive priority after adjustment
 *
 *  @param sp battle structure
 *  @param attacker client to check
 *  @return TRUE if the move has positive priority after adjustments
 */
BOOL LONG_CALL AdjustedMoveHasPositivePriority(struct BattleStruct *sp, int attacker);

/**
 *  @brief see if the move should NOT be exempted from priority blocking effects
 *
 *  @param sp battle structure
 *  @param attacker attacker client
 *  @param defender defender client
 *  @return TRUE if the move should NOT be exempted from priority blocking effects
 */
BOOL LONG_CALL CurrentMoveShouldNotBeExemptedFromPriorityBlocking(struct BattleStruct *sp, int attacker, int defender);

/**
 *  @brief Check if seed should activate
 *
 *  @param sp battle structure
 *  @param heldItem held item
 *  @return TRUE if seed should activate
 */
BOOL LONG_CALL TerrainSeedShouldActivate(struct BattleStruct *sp, u16 heldItem);

/**
 * @brief Check if the current move is a multi hit move
 * @param moveIndex move index
 * @return TRUE if it is a multi hit move
*/
BOOL LONG_CALL IsMultiHitMove(u32 moveIndex);

/**
 * @brief Check if the current move is a move that shouldn't be affected by Parental Bond
 * @param moveIndex move index
 * @return TRUE if it is a banned move
*/
BOOL LONG_CALL IsBannedParentalBondMove(u32 moveIndex);

/**
 * @brief Check if the current move is a spread move that shouldn't be affected by Parental Bond
 * @param bw battle work structure; void * because we haven't defined the battle work structure
 * @param sp battle structure
 * @param moveIndex move index
 * @return TRUE if it is a banned move
 */
BOOL LONG_CALL IsBannedSpreadMoveForParentalBond(void *bw, struct BattleStruct *sp, u32 moveIndex);

/**
 * @brief Check if the current move is a move that should be affected by Parental Bond
 * @param bw battle work structure; void * because we haven't defined the battle work structure
 * @param sp battle structure
 * @param checkTempMove if move will be changed via Metronome, Assist, etc
 * @return TRUE if it is a valid move
 */
BOOL LONG_CALL IsValidParentalBondMove(void *bw, struct BattleStruct *sp, BOOL checkTempMove);

/**
 * @brief Check if the current move is a Powder move
 * @param moveIndex move index
 * @return TRUE if it is a Powder move
*/
BOOL LONG_CALL IsPowderMove(u32 moveIndex);

/**
 * @brief Check if the current move is a Weight move
 * @param moveIndex move index
 * @return TRUE if it is a Weight move
*/
BOOL LONG_CALL IsWeightMove(u32 moveIndex);

/**
 * @brief Check if the current move is a ball or bomb move
 * @param moveIndex move index
 * @return TRUE if it is a Weight move
*/
BOOL LONG_CALL IsBallOrBombMove(u32 moveIndex);

/// @brief Get the priority of the client
/// @param bsys
/// @param ctx
/// @param battlerId
/// @return Priority
int LONG_CALL GetClientActionPriority(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId);

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
void LONG_CALL getEquivalentAttackAndDefense(struct BattleStruct *sp, u16 attackerAttack, u16 defenderDefense, u16 attackerSpecialAttack, u16 defenderSpecialDefense, s8 attackerAttackstate, s8 defenderDefenseState, s8 attackerSpecialAttackState, s8 defenderSpecialDefenseState, u8 *movesplit, u8 attacker, u8 defender, u8 critical, int moveno, u16 *equivalentAttack, u16 *equivalentDefense);

/**
 * @brief Check if the current move is a Z-Move
 * @param moveIndex move index
 * @return `TRUE` if it is a Z-Move
*/
BOOL LONG_CALL MoveIsZMove(u32 moveIndex);

/**
 * @brief Check if the current move is a Max Move
 * @param moveIndex move index
 * @return `TRUE` if it is a Max Move
*/
BOOL LONG_CALL MoveIsMaxMove(u32 moveIndex);

/**
 * @brief Check if move is affected by Normalize variants
 * @param moveno move number
 * @return `TRUE`if move is affected by Normalize variants, `FALSE` otherwise
*/
BOOL LONG_CALL MoveIsAffectedByNormalizeVariants(int moveno);

/**
 * @brief Get a move's split accounting for edge cases
 * @param sp battle structure
 * @param moveno move number
 * @return `SPLIT_PHYSICAL` or `SPLIT_SPECIAL`
*/
u8 LONG_CALL GetMoveSplit(struct BattleStruct *sp, int moveno);

/**
 * @brief Check if client can undergo Primal Reversion
 * @param sp move number
 * @param client_no battler to check for primal reversion possibility
 * @return `TRUE` if mon can undergo primal reversion, `FALSE` otherwise
 */
BOOL LONG_CALL CanUndergoPrimalReversion(struct BattleStruct *sp, u8 client_no);

// defined in mega.c
BOOL LONG_CALL CheckMegaData(u32 mon, u32 item);

/**
 *  @brief grab mega form of a specific species with specific item
 *
 *  @param mon base species
 *  @param item held item to check for mega stone
 *  @return target form
 */
u32 LONG_CALL GrabMegaTargetForm(u32 mon, u32 item);


// defined in battle_input.c
typedef struct BattleBGStorage {
    u16 baseEntry:14;
    u16 hasDayNightPals:1;
    u16 hasPlatforms:1;
} BattleBGStorage;


typedef enum BattleBg {
    BATTLE_BG_GENERAL,
    BATTLE_BG_OCEAN,
    BATTLE_BG_CITY,
    BATTLE_BG_FOREST,
    BATTLE_BG_MOUNTAIN,
    BATTLE_BG_SNOW,
    BATTLE_BG_BUILDING_1,
    BATTLE_BG_BUILDING_2,
    BATTLE_BG_BUILDING_3,
    BATTLE_BG_CAVE_1,
    BATTLE_BG_CAVE_2,
    BATTLE_BG_CAVE_3,
    BATTLE_BG_WILL,
    BATTLE_BG_KOGA,
    BATTLE_BG_BRUNO,
    BATTLE_BG_KAREN,
    BATTLE_BG_LANCE,
    BATTLE_BG_DISTORTION_WORLD,
    BATTLE_BG_BATTLE_TOWER,
    BATTLE_BG_BATTLE_FACTORY,
    BATTLE_BG_BATTLE_ARCADE,
    BATTLE_BG_BATTLE_CASTLE,
    BATTLE_BG_BATTLE_HALL,
    NUM_VANILLA_BATTLE_BACKGROUNDS,
    BATTLE_BG_ELECTRIC_TERRAIN = 23,
    BATTLE_BG_MISTY_TERRAIN,
    BATTLE_BG_GRASSY_TERRAIN,
    BATTLE_BG_PSYCHIC_TERRAIN,
} BattleBg;


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
    TERRAIN_ELECTRIC_TERRAIN,
    TERRAIN_MISTY_TERRAIN,
    TERRAIN_GRASSY_TERRAIN,
    TERRAIN_PSYCHIC_TERRAIN,
    TERRAIN_MAX,
} Terrain;

// This is a catch-all terrain that includes Pokemon League, Distortion World
// and Battle Frontier.
#define TERRAIN_OTHERS (TERRAIN_WILL)


// Battler IDs
#define BATTLER_NONE    0xFF
#define BATTLER_PLAYER  0
#define BATTLER_ENEMY   1
#define BATTLER_PLAYER2 2
#define BATTLER_ENEMY2  3
#define BATTLER_MAX     4

/**
 *  @brief load in different battle bg and terrain
 *
 *  @param bw battle work structure
 *  @param bg background id to load
 *  @param terrain platform id to load
 */
void LONG_CALL LoadDifferentBattleBackground(struct BattleSystem *bw, u32 bg, u32 terrain);

/**
 *  @brief Sorts clients' execution order factoring in who has already performed their action
 *  @param bw battle work structure; void * because we haven't defined the battle work structure. Apparently we have but we don't use it here so
 *  @param sp global battle structure
 *  @param sortTurnOrder whether to sort `turn_order` or not
 */
void LONG_CALL DynamicSortClientExecutionOrder(void *bw, struct BattleStruct *sp, BOOL sortTurnOrder);

void LONG_CALL CalcPriorityAndQuickClawCustapBerry(void *bsys, struct BattleStruct *ctx);

void LONG_CALL BattleControllerPlayer_CalcExecutionOrder(struct BattleSystem *bw, struct BattleStruct *sp);

BOOL LONG_CALL CurseUserIsGhost(struct BattleStruct *ctx, u16 moveNo, int battlerId);

void LONG_CALL UnlockBattlerOutOfCurrentMove(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId);

/**
 *  @brief checks if the given moveNo is a two-turn move at all
 *
 *  @param sp global battle structure
 *  @param moveNo move index to check against a list of move effects that are charge moves
 *  @return TRUE/FALSE
 */
BOOL LONG_CALL CheckMoveIsChargeMove(struct BattleStruct *sp, int moveNo);

// Possibly BattleController_AnyExpPayout
BOOL LONG_CALL ov12_0224DD18(struct BattleStruct *ctx, ControllerCommand a1, ControllerCommand a2);

// Possibly BattleController_CheckBattleOver
BOOL LONG_CALL ov12_0224D7EC(struct BattleSystem *bsys, struct BattleStruct *ctx);

// Possibly BattleController_ToggleSemiInvulnMons
BOOL LONG_CALL ov12_0224E130(struct BattleSystem *bsys, struct BattleStruct *ctx);

// Possibly BattleController_ClearFlags
void LONG_CALL ov12_0224DC0C(struct BattleSystem *bsys, struct BattleStruct *ctx);

void LONG_CALL SortExecutionOrderBySpeed(struct BattleSystem *bsys, struct BattleStruct *ctx);

void LONG_CALL SortMonsBySpeed(struct BattleSystem *bsys, struct BattleStruct *ctx);

BOOL LONG_CALL ov12_0224B398(struct BattleSystem *bsys, struct BattleStruct *ctx);

BOOL LONG_CALL ov12_02250BBC(struct BattleSystem *bsys, struct BattleStruct *ctx);

BOOL LONG_CALL BattleSystem_CheckMoveHit(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerIdAttacker, int battlerIdTarget, int move);

BOOL LONG_CALL ov12_0224B498(struct BattleSystem *bsys, struct BattleStruct *ctx);

BOOL LONG_CALL ov12_0224BC2C(struct BattleSystem *bsys, struct BattleStruct *ctx);

/**
 * @brief checks if contact is being made, checking abilities and items
 * @param bw battle work structure
 * @param sp global battle structure
 * @return TRUE/FALSE
*/
BOOL LONG_CALL IsContactBeingMade(struct BattleSystem *bw, struct BattleStruct *sp);

/**
 * @brief checks if the move index is a punching move
 * @param move move index to check
 * @return TRUE/FALSE
*/
BOOL LONG_CALL IsMovePunchingMove(u16 move);

/**
 * @brief Checks if the move index is a wind move.
 * @param move The move index to check.
 * @return TRUE if the move is in the WindMovesTable, FALSE otherwise.
 */
BOOL LONG_CALL IsMoveWindMove(u16 move);

int LONG_CALL GetDynamicMoveType(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId, int moveNo);

int LONG_CALL GetNaturalGiftType(struct BattleStruct *ctx, int battlerId);

BOOL LONG_CALL BattleContext_CheckMoveImprisoned(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId, int moveNo);

BOOL LONG_CALL BattleContext_CheckMoveUnuseableInGravity(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId, int moveNo);

BOOL LONG_CALL BattleContext_CheckMoveHealBlocked(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId, int moveNo);

//Buffer messages related to being unable to select moves?
BOOL LONG_CALL ov12_02251A28(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId, int movePos, MESSAGE_PARAM *msg);

int CalcBaseDamage(void *bw, struct BattleStruct *sp, int moveno, u32 side_cond,
                   u32 field_cond, u16 pow, u8 type, u8 attacker, u8 defender, u8 critical);

int AdjustDamageForRoll(void *bw, struct BattleStruct *sp, int damage);

// BattleSystem_Defender
int LONG_CALL ov12_022506D4(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId, u16 move, int a4, int a5);

void LONG_CALL ov12_02250A18(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId, u16 a3);

void LONG_CALL BattleControllerPlayer_ItemInput(struct BattleSystem *bsys, struct BattleStruct *ctx);

void LONG_CALL BattleControllerPlayer_PokemonInput(struct BattleSystem *bsys, struct BattleStruct *ctx);

void LONG_CALL BattleControllerPlayer_RunInput(struct BattleSystem *bsys, struct BattleStruct *ctx);

/**
 *  @brief grab move position in a BattlePokemon's moves array based on the move index
 *
 *  @param battlemon BattlePokemon whose moves to check
 *  @param move move to look for
 *  @return move position (if the BattlePokemon has it), 4 if the move is not present
 */
 int LONG_CALL BattleMon_GetMoveIndex(struct BattlePokemon *mon, u16 move);

BOOL LONG_CALL CheckTruant(struct BattleStruct *ctx, int battlerId);

void LONG_CALL CopyBattleMonToPartyMon(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId);

int LONG_CALL LowestFlagNo(u32 mask);

int LONG_CALL Battler_GetRandomOpposingBattlerId(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId);

int LONG_CALL GetBattlerLearnedMoveCount(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId);

BOOL LONG_CALL CanSwitchMon(struct BattleSystem *bsys, struct BattleStruct *ctx, int battlerId);

BOOL LONG_CALL BattleSystem_CheckMoveEffect(void *bw, struct BattleStruct *sp, int battlerIdAttacker, int battlerIdTarget, int move);

/// @brief Checks if a client has the type
/// @param ctx
/// @param battlerId
/// @param type
/// @return whether the client has the type
BOOL LONG_CALL HasType(struct BattleStruct *ctx, int battlerId, int type);

void LONG_CALL ov12_0224DD74(struct BattleSystem *bsys, struct BattleStruct *ctx);

u8 LONG_CALL ov12_02261258(struct CLIENT_PARAM *opponentData);

void LONG_CALL ov12_02252D14(struct BattleSystem *bsys, struct BattleStruct *ctx);

#define IS_TARGET_FOES_AND_ALLY_MOVE(ctx) (ctx->moveTbl[ctx->current_move_index].target == RANGE_ALL_ADJACENT)
#define IS_TARGET_BOTH_MOVE(ctx) (ctx->moveTbl[ctx->current_move_index].target == RANGE_ADJACENT_OPPONENTS)
#define IS_VALID_MOVE_TARGET(ctx, battlerId) (!(ctx->no_reshuffle_client & No2Bit(battlerId)) && ctx->battlemon[battlerId].hp != 0 && !(ctx->moveStatusFlagForSpreadMoves[battlerId] & WAZA_STATUS_FLAG_NO_OUT))

#define LoopCheckFunctionForSpreadMove(bsys, ctx, functionToBeCalled) \
{\
    if ((IS_TARGET_BOTH_MOVE(ctx) || IS_TARGET_FOES_AND_ALLY_MOVE(ctx))) {\
        while (ctx->clientLoopForSpreadMoves <= SPREAD_MOVE_LOOP_MAX) {\
            switch (ctx->clientLoopForSpreadMoves) {\
                case SPREAD_MOVE_LOOP_ALLY:\
                    ctx->clientLoopForSpreadMoves++;\
                    if ((IS_TARGET_FOES_AND_ALLY_MOVE(ctx) || BATTLER_ALLY(ctx->attack_client) == ctx->defence_client)\
                    && IS_VALID_MOVE_TARGET(ctx, BATTLER_ALLY(ctx->attack_client))) {\
                        if (functionToBeCalled(bsys, ctx, BATTLER_ALLY(ctx->attack_client))) {\
                            return;\
                        }\
                    }\
                    FALLTHROUGH;\
                case SPREAD_MOVE_LOOP_OPPONENT_LEFT:\
                    ctx->clientLoopForSpreadMoves++;\
                    if ((IS_TARGET_BOTH_MOVE(ctx) || IS_TARGET_FOES_AND_ALLY_MOVE(ctx))\
                    && IS_VALID_MOVE_TARGET(ctx, BATTLER_OPPONENT_SIDE_LEFT(ctx->attack_client))) {\
                        if (functionToBeCalled(bsys, ctx, BATTLER_OPPONENT_SIDE_LEFT(ctx->attack_client))) {\
                            return;\
                        }\
                    }\
                    FALLTHROUGH;\
                case SPREAD_MOVE_LOOP_OPPONENT_RIGHT:\
                    ctx->clientLoopForSpreadMoves++;\
                    if ((IS_TARGET_BOTH_MOVE(ctx) || IS_TARGET_FOES_AND_ALLY_MOVE(ctx))\
                    && IS_VALID_MOVE_TARGET(ctx, BATTLER_OPPONENT_SIDE_RIGHT(ctx->attack_client))) {\
                        if (functionToBeCalled(bsys, ctx, BATTLER_OPPONENT_SIDE_RIGHT(ctx->attack_client))) {\
                            return;\
                        }\
                    }\
            }\
        }\
    } else {\
        if (ctx->clientLoopForSpreadMoves <= SPREAD_MOVE_LOOP_MAX) {\
            ctx->clientLoopForSpreadMoves = SPREAD_MOVE_LOOP_MAX + 1;\
            if (IS_VALID_MOVE_TARGET(ctx, ctx->defence_client)) {\
                if (functionToBeCalled(bsys, ctx, ctx->defence_client)) {\
                    return;\
                }\
            }\
        }\
    }\
    ctx->clientLoopForSpreadMoves = 0;\
}

// if all clients fail, then print fail message, otherwise no message is shown
#define LoopCheckFunctionForSpreadMove_StatFailureSuccessCheck(bsys, ctx, functionToBeCalled) \
{\
    if ((IS_TARGET_BOTH_MOVE(ctx) || IS_TARGET_FOES_AND_ALLY_MOVE(ctx))) {\
        BOOL numClientsChecked = 0;\
        BOOL numClientsFailed = 0;\
        int failureSubscriptToRun = 0;\
        while (ctx->clientLoopForSpreadMoves <= SPREAD_MOVE_LOOP_MAX) {\
            switch (ctx->clientLoopForSpreadMoves) {\
                case SPREAD_MOVE_LOOP_ALLY:\
                    ctx->clientLoopForSpreadMoves++;\
                    if ((IS_TARGET_FOES_AND_ALLY_MOVE(ctx) || BATTLER_ALLY(ctx->attack_client) == ctx->defence_client)\
                    && IS_VALID_MOVE_TARGET(ctx, BATTLER_ALLY(ctx->attack_client))) {\
                        numClientsChecked++;\
                        failureSubscriptToRun = functionToBeCalled(bsys, ctx, BATTLER_ALLY(ctx->attack_client));\
                        if (failureSubscriptToRun) {\
                            ctx->msg_work = BATTLER_ALLY(ctx->attack_client);\
                            ctx->battlerIdTemp = BATTLER_ALLY(ctx->attack_client);\
                            ctx->moveStatusFlagForSpreadMoves[BATTLER_ALLY(ctx->attack_client)] = MOVE_STATUS_FLAG_FAILED;\
                            numClientsFailed++;\
                        }\
                    }\
                    FALLTHROUGH;\
                case SPREAD_MOVE_LOOP_OPPONENT_LEFT:\
                    ctx->clientLoopForSpreadMoves++;\
                    if ((IS_TARGET_BOTH_MOVE(ctx) || IS_TARGET_FOES_AND_ALLY_MOVE(ctx))\
                    && IS_VALID_MOVE_TARGET(ctx, BATTLER_OPPONENT_SIDE_LEFT(ctx->attack_client))) {\
                        numClientsChecked++;\
                        failureSubscriptToRun = functionToBeCalled(bsys, ctx, BATTLER_OPPONENT_SIDE_LEFT(ctx->attack_client));\
                        if (failureSubscriptToRun) {\
                            ctx->msg_work = BATTLER_OPPONENT_SIDE_LEFT(ctx->attack_client);\
                            ctx->battlerIdTemp = BATTLER_ALLY(ctx->attack_client);\
                            ctx->moveStatusFlagForSpreadMoves[BATTLER_OPPONENT_SIDE_LEFT(ctx->attack_client)] = MOVE_STATUS_FLAG_FAILED;\
                            numClientsFailed++;\
                        }\
                    }\
                    FALLTHROUGH;\
                case SPREAD_MOVE_LOOP_OPPONENT_RIGHT:\
                    ctx->clientLoopForSpreadMoves++;\
                    if ((IS_TARGET_BOTH_MOVE(ctx) || IS_TARGET_FOES_AND_ALLY_MOVE(ctx))\
                    && IS_VALID_MOVE_TARGET(ctx, BATTLER_OPPONENT_SIDE_RIGHT(ctx->attack_client))) {\
                        numClientsChecked++;\
                        failureSubscriptToRun = functionToBeCalled(bsys, ctx, BATTLER_OPPONENT_SIDE_RIGHT(ctx->attack_client));\
                        if (failureSubscriptToRun) {\
                            ctx->msg_work = BATTLER_OPPONENT_SIDE_RIGHT(ctx->attack_client);\
                            ctx->battlerIdTemp = BATTLER_ALLY(ctx->attack_client);\
                            ctx->moveStatusFlagForSpreadMoves[BATTLER_OPPONENT_SIDE_RIGHT(ctx->attack_client)] = MOVE_STATUS_FLAG_FAILED;\
                            numClientsFailed++;\
                        }\
                    }\
            }\
        }\
        if (numClientsChecked == 1 && numClientsFailed == numClientsChecked) {\
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, failureSubscriptToRun);\
            ctx->next_server_seq_no = ctx->server_seq_no;\
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;\
            return;\
        }\
        if (numClientsFailed > 0 && numClientsFailed == numClientsChecked) {\
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BUT_IT_FAILED_SPREAD);\
            ctx->next_server_seq_no = ctx->server_seq_no;\
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;\
            return;\
        }\
    } else {\
        if (ctx->clientLoopForSpreadMoves <= SPREAD_MOVE_LOOP_MAX) {\
            ctx->clientLoopForSpreadMoves = SPREAD_MOVE_LOOP_MAX + 1;\
            if (IS_VALID_MOVE_TARGET(ctx, ctx->defence_client)) {\
                int failureSubscriptToRun = functionToBeCalled(bsys, ctx, ctx->defence_client);\
                if (failureSubscriptToRun) {\
                    ctx->msg_work = ctx->defence_client;\
                    ctx->battlerIdTemp = BATTLER_ALLY(ctx->attack_client);\
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, failureSubscriptToRun);\
                    ctx->next_server_seq_no = ctx->server_seq_no;\
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;\
                    ctx->moveStatusFlagForSpreadMoves[ctx->defence_client] = MOVE_STATUS_FLAG_FAILED;\
                    return;\
                }\
            }\
        }\
    }\
    ctx->clientLoopForSpreadMoves = 0;\
}

// if it's a spread move, same as above, otherwise go straight to effect and have statbuffchange do the fail message stuff instead
#define LoopCheckFunctionForSpreadMove_StatFailureSuccessCheck_StatChanges(bsys, ctx, functionToBeCalled) \
{\
    if ((IS_TARGET_BOTH_MOVE(ctx) || IS_TARGET_FOES_AND_ALLY_MOVE(ctx))) {\
        BOOL numClientsChecked = 0;\
        BOOL numClientsFailed = 0;\
        int failureSubscriptToRun = 0;\
        while (ctx->clientLoopForSpreadMoves <= SPREAD_MOVE_LOOP_MAX) {\
            switch (ctx->clientLoopForSpreadMoves) {\
                case SPREAD_MOVE_LOOP_ALLY:\
                    ctx->clientLoopForSpreadMoves++;\
                    if ((IS_TARGET_FOES_AND_ALLY_MOVE(ctx) || BATTLER_ALLY(ctx->attack_client) == ctx->defence_client)\
                    && IS_VALID_MOVE_TARGET(ctx, BATTLER_ALLY(ctx->attack_client))) {\
                        numClientsChecked++;\
                        failureSubscriptToRun = functionToBeCalled(bsys, ctx, BATTLER_ALLY(ctx->attack_client));\
                        if (failureSubscriptToRun != 0) {\
                            ctx->moveStatusFlagForSpreadMoves[BATTLER_ALLY(ctx->attack_client)] = MOVE_STATUS_FLAG_FAILED;\
                            numClientsFailed++;\
                        }\
                    }\
                    FALLTHROUGH;\
                case SPREAD_MOVE_LOOP_OPPONENT_LEFT:\
                    ctx->clientLoopForSpreadMoves++;\
                    if ((IS_TARGET_BOTH_MOVE(ctx) || IS_TARGET_FOES_AND_ALLY_MOVE(ctx))\
                    && IS_VALID_MOVE_TARGET(ctx, BATTLER_OPPONENT_SIDE_LEFT(ctx->attack_client))) {\
                        numClientsChecked++;\
                        failureSubscriptToRun = functionToBeCalled(bsys, ctx, BATTLER_OPPONENT_SIDE_LEFT(ctx->attack_client));\
                        if (failureSubscriptToRun != 0) {\
                            ctx->moveStatusFlagForSpreadMoves[BATTLER_OPPONENT_SIDE_LEFT(ctx->attack_client)] = MOVE_STATUS_FLAG_FAILED;\
                            numClientsFailed++;\
                        }\
                    }\
                    FALLTHROUGH;\
                case SPREAD_MOVE_LOOP_OPPONENT_RIGHT:\
                    ctx->clientLoopForSpreadMoves++;\
                    if ((IS_TARGET_BOTH_MOVE(ctx) || IS_TARGET_FOES_AND_ALLY_MOVE(ctx))\
                    && IS_VALID_MOVE_TARGET(ctx, BATTLER_OPPONENT_SIDE_RIGHT(ctx->attack_client))) {\
                        numClientsChecked++;\
                        failureSubscriptToRun = functionToBeCalled(bsys, ctx, BATTLER_OPPONENT_SIDE_RIGHT(ctx->attack_client));\
                        if (failureSubscriptToRun != 0) {\
                            ctx->moveStatusFlagForSpreadMoves[BATTLER_OPPONENT_SIDE_RIGHT(ctx->attack_client)] = MOVE_STATUS_FLAG_FAILED;\
                            numClientsFailed++;\
                        }\
                    }\
            }\
        }\
        if (numClientsChecked == 1 && numClientsFailed == numClientsChecked) {\
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_MOVE_SEQ, ctx->current_move_index);\
            ctx->server_seq_no = CONTROLLER_COMMAND_24;\
            ST_ServerTotteokiCountCalc(bsys, ctx);\
            return;\
        }\
        if (numClientsFailed > 0 && numClientsFailed == numClientsChecked) {\
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BUT_IT_FAILED_SPREAD);\
            ctx->next_server_seq_no = ctx->server_seq_no;\
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;\
            return;\
        }\
    } else {\
        if (ctx->clientLoopForSpreadMoves <= SPREAD_MOVE_LOOP_MAX) {\
            ctx->clientLoopForSpreadMoves = SPREAD_MOVE_LOOP_MAX + 1;\
            if (IS_VALID_MOVE_TARGET(ctx, ctx->defence_client)) {\
                int failureSubscriptToRun = functionToBeCalled(bsys, ctx, ctx->defence_client);\
                if (failureSubscriptToRun == 1) {\
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_MOVE_SEQ, ctx->current_move_index);\
                    ctx->server_seq_no = CONTROLLER_COMMAND_24;\
                    ST_ServerTotteokiCountCalc(bsys, ctx);\
                    return;\
                }\
                if (failureSubscriptToRun > 1) {\
                    ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;\
                    ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;\
                    ctx->msg_work = ctx->defence_client;\
                    LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, failureSubscriptToRun);\
                    ctx->next_server_seq_no = ctx->server_seq_no;\
                    ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;\
                    ctx->moveStatusFlagForSpreadMoves[ctx->defence_client] = MOVE_STATUS_NO_MORE_WORK;\
                    return;\
                }\
            }\
        }\
    }\
    ctx->clientLoopForSpreadMoves = 0;\
}

#define LoopCheckFunctionForSpreadMove_RawSpeedWithNonRNGTie(bsys, ctx, functionToBeCalled) \
{\
    SortRawSpeedNonRNGArray(bsys, ctx);\
    if ((IS_TARGET_BOTH_MOVE(ctx) || IS_TARGET_FOES_AND_ALLY_MOVE(ctx))) {\
        while (ctx->clientLoopForSpreadMoves <= SPREAD_MOVE_LOOP_MAX) {\
            int defender = ctx->rawSpeedNonRNGClientOrder[ctx->clientLoopForSpreadMoves];\
            ctx->clientLoopForSpreadMoves++;\
            if (!(IS_TARGET_FOES_AND_ALLY_MOVE(ctx) && defender == BATTLER_ALLY(ctx->attack_client))) {\
                continue;\
            }\
            if (IS_VALID_MOVE_TARGET(ctx, defender)) {\
                if (functionToBeCalled(bsys, ctx, defender)) {\
                    return;\
                }\
            }\
        }\
    } else {\
        if (ctx->clientLoopForSpreadMoves <= SPREAD_MOVE_LOOP_MAX) {\
            ctx->clientLoopForSpreadMoves = SPREAD_MOVE_LOOP_MAX + 1;\
            if (IS_VALID_MOVE_TARGET(ctx, ctx->defence_client)) {\
                if (functionToBeCalled(bsys, ctx, ctx->defence_client)) {\
                    return;\
                }\
            }\
        }\
    }\
    ctx->clientLoopForSpreadMoves = 0;\
}

#define CLIENT_DOES_NOT_HAVE_MOLD_BREAKER_VARIATIONS(ctx, client_no) (GetBattlerAbility(ctx, client_no) != ABILITY_MOLD_BREAKER && GetBattlerAbility(ctx, client_no) != ABILITY_TERAVOLT && GetBattlerAbility(ctx, client_no) != ABILITY_TURBOBLAZE)

#define CLIENT_HAS_MOLD_BREAKER_VARIATION(ctx, client_no) (!(CLIENT_DOES_NOT_HAVE_MOLD_BREAKER_VARIATIONS(ctx, client_no)))

void LONG_CALL SortRawSpeedNonRNGArray(struct BattleSystem *bsys, struct BattleStruct *ctx);

BOOL LONG_CALL CanActivateDamageReductionBerry(struct BattleSystem *bsys, struct BattleStruct *ctx, int defender);

BOOL IsPureType(struct BattleStruct *ctx, int battlerId, int type);

/// @brief Check if ability can't be suppressed by Gastro Acid or affected by Mummy. See notes for DisabledByNeutralizingGas.
/// @param ability
/// @ref AbilityDisabledByNeutralizingGas
/// @return `TRUE` or `FALSE`
BOOL LONG_CALL AbilityCantSupress(int ability);

void LONG_CALL BattleMessage_BufferNickname(struct BattleSystem *bsys, int bufferIndex, int param);
void LONG_CALL BattleMessage_BufferMove(struct BattleSystem *bsys, int bufferIndex, int param);
void LONG_CALL BattleMessage_BufferItem(struct BattleSystem *bsys, int bufferIndex, int param);
void LONG_CALL BattleMessage_BufferNumber(struct BattleSystem *bsys, int bufferIndex, int param);
void LONG_CALL BattleMessage_BufferNumbers(struct BattleSystem *bsys, int bufferIndex, int param, int numDigits);
void LONG_CALL BattleMessage_BufferType(struct BattleSystem *bsys, int bufferIndex, int param);
void LONG_CALL BattleMessage_BufferAbility(struct BattleSystem *bsys, int bufferIndex, int param);
void LONG_CALL BattleMessage_BufferStat(struct BattleSystem *bsys, int bufferIndex, int param);
void LONG_CALL BattleMessage_BufferStatus(struct BattleSystem *bsys, int bufferIndex, int param);
void LONG_CALL BattleMessage_BufferPokemon(struct BattleSystem *bsys, int bufferIndex, int param);
void LONG_CALL BattleMessage_BufferPoffin(struct BattleSystem *bsys, int bufferIndex, int param);
void LONG_CALL BattleMessage_BufferFlavorPreference(struct BattleSystem *bsys, int bufferIndex, int param);
void LONG_CALL BattleMessage_BufferTrainerClass(struct BattleSystem *bsys, int bufferIndex, int param);
void LONG_CALL BattleMessage_BufferTrainerName(struct BattleSystem *bsys, int bufferIndex, int param);
void LONG_CALL BattleMessage_BufferBoxName(struct BattleSystem *bsys, int bufferIndex, int param);

void LONG_CALL BufferItemNameWithIndefArticle(u32 *msgFmt, u32 fieldno, u32 itemId);

int LONG_CALL MoveCheckDamageNegatingAbilities(struct BattleStruct *sp, int attacker, int defender);

#endif // BATTLE_H
