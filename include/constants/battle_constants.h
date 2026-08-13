#ifndef GUARD_BATTLE_CONSTANTS
#define GUARD_BATTLE_CONSTANTS

#include "constants/ability.h"
#include "constants/battle_script_constants.h"
#include "constants/hold_item_effects.h"
#include "constants/item.h"
#include "constants/move_effects.h"
#include "constants/moves.h"
#include "constants/species.h"

#define STAT_HP              0x00
#define STAT_ATTACK          0x01
#define STAT_DEFENSE         0x02
#define STAT_SPEED           0x03
#define STAT_SPECIAL_ATTACK  0x04
#define STAT_SPECIAL_DEFENSE 0x05
#define STAT_ACCURACY        0x06
#define STAT_EVASION         0x07
#define STAT_MAX             0x08

#define AFTER_MOVE_MESSAGE_ONE_HIT   0x0
#define AFTER_MOVE_MESSAGE_MULTI_HIT 0x1

#ifndef __ASSEMBLER__
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
#else
#define BATTLE_BG_GENERAL              0x0
#define BATTLE_BG_OCEAN                0x1
#define BATTLE_BG_CITY                 0x2
#define BATTLE_BG_FOREST               0x3
#define BATTLE_BG_MOUNTAIN             0x4
#define BATTLE_BG_SNOW                 0x5
#define BATTLE_BG_BUILDING_1           0x6
#define BATTLE_BG_BUILDING_2           0x7
#define BATTLE_BG_BUILDING_3           0x8
#define BATTLE_BG_CAVE_1               0x9
#define BATTLE_BG_CAVE_2               0xA
#define BATTLE_BG_CAVE_3               0xB
#define BATTLE_BG_WILL                 0xC
#define BATTLE_BG_KOGA                 0xD
#define BATTLE_BG_BRUNO                0xE
#define BATTLE_BG_KAREN                0xF
#define BATTLE_BG_LANCE                0x10
#define BATTLE_BG_DISTORTION_WORLD     0x11
#define BATTLE_BG_BATTLE_TOWER         0x12
#define BATTLE_BG_BATTLE_FACTORY       0x13
#define BATTLE_BG_BATTLE_ARCADE        0x14
#define BATTLE_BG_BATTLE_CASTLE        0x15
#define BATTLE_BG_BATTLE_HALL          0x16
#define NUM_VANILLA_BATTLE_BACKGROUNDS 0x17
#define BATTLE_BG_ELECTRIC_TERRAIN     0x17
#define BATTLE_BG_MISTY_TERRAIN        0x18
#define BATTLE_BG_GRASSY_TERRAIN       0x19
#define BATTLE_BG_PSYCHIC_TERRAIN      0x1A
#define BATTLE_BG_CURRENT              0xFFFFFFFF
#endif

// Battle Status
#define BATTLE_STATUS_NO_ATTACK_MESSAGE         0x1
#define BATTLE_STATUS_CHECK_LOOP_ONLY_ONCE      0x2
#define BATTLE_STATUS_HIT_FLY                   0x4
#define BATTLE_STATUS_HIT_DIG                   0x8
#define BATTLE_STATUS_HIT_DIVE                  0x10
#define BATTLE_STATUS_CHARGE_TURN               0x20
#define BATTLE_STATUS_NO_BLINK                  0x40
#define BATTLE_STATUS_SYNCRONIZE                0x80
#define BATTLE_STATUS_BATON_PASS                0x100
#define BATTLE_STATUS_CHARGE_MOVE_HIT           0x200
#define BATTLE_STATUS_FLAT_HIT_RATE             0x400
#define BATTLE_STATUS_IGNORE_TYPE_EFFECTIVENESS 0x800
#define BATTLE_STATUS_CRASH_DAMAGE              0x1000
#define BATTLE_STATUS_MOVE_SUCCESSFUL           0x2000
#define BATTLE_STATUS_MOVE_ANIMATIONS_OFF       0x4000
#define BATTLE_STATUS_IGNORE_TYPE_IMMUNITY      0x8000
#define BATTLE_STATUS_MULTI_HIT_IGNORE_MESSAGE  0x10000
#define BATTLE_STATUS_FAIL_STAT_STAGE_CHANGE    0x20000
#define BATTLE_STATUS_MISS_MESSAGE              0x40000
#define BATTLE_STATUS_SHADOW_FORCE              0x80000
#define BATTLE_STATUS_NO_MOVE_SET               0x100000
#define BATTLE_STATUS_MESSAGES_OFF              0x200000
#define BATTLE_STATUS_SECONDARY_EFFECT          0x400000
#define BATTLE_STATUS_MOLD_BREAKER              0x800000
#define BATTLE_STATUS_BATTLER_0_FAINTED         0x1000000
#define BATTLE_STATUS_BATTLER_1_FAINTED         0x2000000
#define BATTLE_STATUS_BATTLER_2_FAINTED         0x4000000
#define BATTLE_STATUS_BATTLER_3_FAINTED         0x8000000
#define BATTLE_STATUS_BATTLER_0_BOOMED          0x10000000
#define BATTLE_STATUS_BATTLER_1_BOOMED          0x20000000
#define BATTLE_STATUS_BATTLER_2_BOOMED          0x40000000
#define BATTLE_STATUS_BATTLER_3_BOOMED          0x80000000
#define BATTLE_STATUS_FAINTED                   0xF000000
#define BATTLE_STATUS_SELFDESTRUCTED            0xF0000000

#define BATTLE_STATUS_FAINTED_SHIFT        24
#define BATTLE_STATUS_SELFDESTRUCTED_SHIFT 28

// Battle Status 2
#define BATTLE_STATUS2_NO_EXP_GAINED           0x1
#define BATTLE_STATUS2_UPDATE_STAT_STAGES      0x2
#define BATTLE_STATUS2_DISPLAY_ATTACK_MESSAGE  0x4
#define BATTLE_STATUS2_MAGIC_COAT              0x8
#define BATTLE_STATUS2_UTURN                   0x10
#define BATTLE_STATUS2_FIRST_DAMAGE_MESSAGE    0x20
#define BATTLE_STATUS2_MOVE_SUCCEEDED          0x40
#define BATTLE_STATUS2_STAT_STAGE_CHANGE_SHOWN 0x80
#define BATTLE_STATUS2_RECOVER_HP_VISUAL       0x100
#define BATTLE_STATUS2_FORM_CHANGE             0x4000000
#define BATTLE_STATUS2_RECALC_MON_STATS        0x8000000
#define BATTLE_STATUS2_EXP_GAIN_MON_0          0x10000000
#define BATTLE_STATUS2_EXP_GAIN_MON_1          0x20000000
#define BATTLE_STATUS2_EXP_GAIN_MON_2          0x40000000
#define BATTLE_STATUS2_EXP_GAIN_MON_3          0x80000000
#define BATTLE_STATUS2_EXP_GAIN                0xF0000000

#define BATTLE_STATUS2_EXP_GAIN_SHIFT (28)

#define BATTLE_IN_PROGRESS          0x0
#define BATTLE_RESULT_WIN           0x1
#define BATTLE_RESULT_LOSE          0x2
#define BATTLE_RESULT_CAPTURED_MON  0x4
#define BATTLE_RESULT_TRY_FLEE_WAIT 0x40
#define BATTLE_RESULT_TRY_FLEE      0x80
#define BATTLE_RESULT_DRAW          0x3
#define BATTLE_RESULT_PLAYER_FLED   0x5
#define BATTLE_RESULT_ENEMY_FLED    0x6

#define BATTLER_PLAYER     0x0
#define BATTLER_ENEMY      0x1
#define BATTLER_PLAYER2    0x2
#define BATTLER_ENEMY2     0x3
#define BATTLER_FORCED_OUT 0x4
#define BATTLER_MAX        0x4
#define BATTLER_NONE       0xFF

#define BATTLE_SPECIAL_FIRST_RIVAL      0x1
#define BATTLE_SPECIAL_HONEY_TREE       0x2
#define BATTLE_SPECIAL_NO_RUNNING       0x4
#define BATTLE_SPECIAL_LEGENDARY        0x8
#define BATTLE_SPECIAL_RECORDING        0x10
#define BATTLE_SPECIAL_RECORDED         0x20
#define BATTLE_SPECIAL_GIRATINA         0x40
#define BATTLE_SPECIAL_DISTORTION_WORLD 0x80

/**
 *  @brief battle type flags
 *  access with BattleTypeGet(bw) & BATTLE_TYPE_* to test properly
 */
#define BATTLE_TYPE_WILD_MON    0x0
#define BATTLE_TYPE_TRAINER     0x1
#define BATTLE_TYPE_DOUBLES     0x2
#define BATTLE_TYPE_LINK        0x4
#define BATTLE_TYPE_MULTI       0x8
#define BATTLE_TYPE_TAG         0x10
#define BATTLE_TYPE_SAFARI      0x20
#define BATTLE_TYPE_AI          0x40
#define BATTLE_TYPE_FRONTIER    0x80
#define BATTLE_TYPE_ROAMER      0x100
#define BATTLE_TYPE_PAL_PARK    0x200
#define BATTLE_TYPE_TUTORIAL    0x400
#define BATTLE_TYPE_CAN_LOSE    0x800
#define BATTLE_TYPE_BUG_CONTEST 0x1000
#define BATTLE_TYPE_13          0x2000
#define BATTLE_TYPE_TOTEM       0x4000
#define BATTLE_TYPE_DEBUG       (1 << 31)

#define BATTLE_TYPE_NO_EXPERIENCE (BATTLE_TYPE_LINK | BATTLE_TYPE_SAFARI | BATTLE_TYPE_FRONTIER | BATTLE_TYPE_PAL_PARK)

#define CAPTURE_NORMAL 0x0
#define CAPTURE_SAFARI 0x1

#define CHECK_OPCODE_HAVE     0x0
#define CHECK_OPCODE_NOT_HAVE 0x1

#define CHECK_SIDE_COND_VAL_ZERO     0x0
#define CHECK_SIDE_COND_VAL_NOT_ZERO 0x1
#define CHECK_SIDE_COND_CLEAR        0x2

/**
 *  @brief switch status for current move
 */
#define CURRENT_MOVE_NO_SWITCH      0x0
#define CURRENT_MOVE_SWITCH_PENDING 0x1
#define CURRENT_MOVE_SWITCH_DONE    0x2

/**
 *  @brief field status constants that apply to BattleStruct's field_condition field
 *
 *  largely for weathers, but also covers uproar, gravity, fog, etc.
 */
#define FIELD_CONDITION_NONE                     0x0
#define FIELD_CONDITION_RAIN                     0x1
#define FIELD_CONDITION_RAIN_PERMANENT           0x2
#define FIELD_CONDITION_SANDSTORM                0x4
#define FIELD_CONDITION_SANDSTORM_PERMANENT      0x8
#define FIELD_CONDITION_SUN                      0x10
#define FIELD_CONDITION_SUN_PERMANENT            0x20
#define FIELD_CONDITION_HAIL                     0x40
#define FIELD_CONDITION_HAIL_PERMANENT           0x80
#define FIELD_CONDITION_MON_0_UPROAR             0x100
#define FIELD_CONDITION_MON_1_UPROAR             0x200
#define FIELD_CONDITION_MON_2_UPROAR             0x400
#define FIELD_CONDITION_MON_3_UPROAR             0x800
#define FIELD_CONDITION_GRAVITY_0                0x1000
#define FIELD_CONDITION_GRAVITY_1                0x2000
#define FIELD_CONDITION_GRAVITY_2                0x4000
#define FIELD_CONDITION_FOG                      0x8000
#define FIELD_CONDITION_TRICK_ROOM_0             0x10000
#define FIELD_CONDITION_TRICK_ROOM_1             0x20000
#define FIELD_CONDITION_TRICK_ROOM_2             0x40000
#define FIELD_CONDITION_UNUSED_x80000            0x80000
#define FIELD_CONDITION_SNOW_TEMP                0x100000
#define FIELD_CONDITION_SNOW_PERMANENT           0x200000
#define FIELD_CONDITION_SHADOWY_AURA_TEMP        0x400000
#define FIELD_CONDITION_SHADOWY_AURA_PERMANENT   0x800000
#define FIELD_CONDITION_EXTREMELY_HARSH_SUNLIGHT 0x1000000
#define FIELD_CONDITION_HEAVY_RAIN               0x2000000
#define FIELD_CONDITION_STRONG_WINDS             0x4000000
// Ion Deluge is a strange case, as it is the only field effect that lasts for only a single turn.
#define FIELD_CONDITION_ION_DELUGE              0x8000000
#define FIELD_CONDITION_RAIN_ALL                (FIELD_CONDITION_RAIN | FIELD_CONDITION_RAIN_PERMANENT | FIELD_CONDITION_HEAVY_RAIN)
#define FIELD_CONDITION_SANDSTORM_ALL           (FIELD_CONDITION_SANDSTORM | FIELD_CONDITION_SANDSTORM_PERMANENT)
#define FIELD_CONDITION_SUN_NOT_EXTREMELY_HARSH (FIELD_CONDITION_SUN | FIELD_CONDITION_SUN_PERMANENT)
#define FIELD_CONDITION_SUN_ALL                 (FIELD_CONDITION_SUN_NOT_EXTREMELY_HARSH | FIELD_CONDITION_EXTREMELY_HARSH_SUNLIGHT)
#define FIELD_CONDITION_HAIL_ALL                (FIELD_CONDITION_HAIL | FIELD_CONDITION_HAIL_PERMANENT)
#define FIELD_CONDITION_WEATHER                 (FIELD_CONDITION_STRONG_WINDS | FIELD_CONDITION_RAIN_ALL | FIELD_CONDITION_SUN_ALL | FIELD_CONDITION_SHADOWY_AURA_ALL | FIELD_CONDITION_SNOW_ALL | FIELD_CONDITION_FOG | FIELD_CONDITION_SANDSTORM_ALL | FIELD_CONDITION_HAIL_ALL)
#define FIELD_CONDITION_UPROAR                  0xF00
#define FIELD_CONDITION_GRAVITY                 0x7000
#define FIELD_CONDITION_GRAVITY_INIT            0x5000
#define FIELD_CONDITION_TRICK_ROOM              0x70000
#define FIELD_CONDITION_TRICK_ROOM_INIT         0x50000
// New weathers
#define FIELD_CONDITION_SNOW_ALL              (FIELD_CONDITION_SNOW_TEMP | FIELD_CONDITION_SNOW_PERMANENT)
#define FIELD_CONDITION_SHADOWY_AURA_ALL      (FIELD_CONDITION_SHADOWY_AURA_TEMP | FIELD_CONDITION_SHADOWY_AURA_PERMANENT)
#define FIELD_CONDITION_OVERWORLD_WEATHER_ANY (FIELD_CONDITION_RAIN_PERMANENT | FIELD_CONDITION_SANDSTORM_PERMANENT | FIELD_CONDITION_SUN_PERMANENT | FIELD_CONDITION_SNOW_PERMANENT)

#define FIELD_CONDITION_WEATHER_NO_SUN (FIELD_CONDITION_RAIN_ALL | FIELD_CONDITION_SANDSTORM_ALL | FIELD_CONDITION_HAIL_ALL | FIELD_CONDITION_FOG | FIELD_CONDITION_SNOW_ALL \
    | FIELD_CONDITION_SHADOWY_AURA_ALL | FIELD_CONDITION_EXTREMELY_HARSH_SUNLIGHT | FIELD_CONDITION_HEAVY_RAIN | FIELD_CONDITION_STRONG_WINDS)
#define FIELD_CONDITION_WEATHER_CASTFORM (FIELD_CONDITION_RAIN_ALL | FIELD_CONDITION_HEAVY_RAIN | FIELD_CONDITION_SUN_ALL | FIELD_CONDITION_EXTREMELY_HARSH_SUNLIGHT \
    | FIELD_CONDITION_HAIL_ALL)

// weather that has indicators on the bottom screen
#define WEATHER_ANY_ICONS (FIELD_CONDITION_RAIN_ALL | FIELD_CONDITION_SANDSTORM_ALL | FIELD_CONDITION_SUN_ALL | FIELD_CONDITION_HAIL_ALL | FIELD_CONDITION_FOG)

#define FIELD_CONDITION_UPROAR_SHIFT     8
#define FIELD_CONDITION_GRAVITY_SHIFT    12
#define FIELD_CONDITION_TRICK_ROOM_SHIFT 16

#define TERRAIN_TURNS_INFINITE 255

#define MON_MALE       0x0
#define MON_FEMALE     0x1
#define MON_GENDERLESS 0x2

/**
 *  @brief message tags to tell the string buffer expander how to expand each string buffer
 *  buffered as the tag of a BattleMessage
 *
 *  i.e. TAG_NICK_ABILITY will tell the string buffer preparing function to turn
 *  "{STRVAR_1 1, 0, 0} can’t get it\ngoing because of its {STRVAR_1 5, 1, 0}!"
 *  into
 *  "Regigigas can’t get it\ngoing because of its Slow Start!"
 *
 *  specifically used for printmessage battle script command
 */
#define TAG_NONE                                            0x0
#define TAG_NONE_SIDE                                       0x1
#define TAG_NICKNAME                                        0x2
#define TAG_MOVE                                            0x3
#define TAG_STAT                                            0x4
#define TAG_ITEM                                            0x5
#define TAG_NUMBER                                          0x6
#define TAG_NUMBERS                                         0x7
#define TAG_TRNAME                                          0x8
#define TAG_NICKNAME_NICKNAME                               0x9
#define TAG_NICKNAME_MOVE                                   0xA
#define TAG_NICKNAME_ABILITY                                0xB
#define TAG_NICKNAME_STAT                                   0xC
#define TAG_NICKNAME_TYPE                                   0xD
#define TAG_NICKNAME_POKE                                   0xE
#define TAG_NICKNAME_ITEM                                   0xF
#define TAG_NICKNAME_POFFIN                                 0x10
#define TAG_NICKNAME_NUM                                    0x11
#define TAG_NICKNAME_TRNAME                                 0x12
#define TAG_NICKNAME_BOX                                    0x13
#define TAG_MOVE_SIDE                                       0x14
#define TAG_MOVE_NICKNAME                                   0x15
#define TAG_MOVE_MOVE                                       0x16
#define TAG_ABILITY_NICKNAME                                0x17
#define TAG_ITEM_MOVE                                       0x18
#define TAG_NUMBER_NUMBER                                   0x19
#define TAG_TRNAME_TRNAME                                   0x1A
#define TAG_TRNAME_NICKNAME                                 0x1B
#define TAG_TRNAME_ITEM                                     0x1C
#define TAG_TRNAME_NUM                                      0x1D
#define TAG_TRCLASS_TRNAME                                  0x1E
#define TAG_NICKNAME_NICKNAME_MOVE                          0x1F
#define TAG_NICKNAME_NICKNAME_ABILITY                       0x20
#define TAG_NICKNAME_NICKNAME_ITEM                          0x21
#define TAG_NICKNAME_MOVE_MOVE                              0x22
#define TAG_NICKNAME_MOVE_NUMBER                            0x23
#define TAG_NICKNAME_ABILITY_NICKNAME                       0x24
#define TAG_NICKNAME_ABILITY_MOVE                           0x25
#define TAG_NICKNAME_ABILITY_ITEM                           0x26
#define TAG_NICKNAME_ABILITY_STAT                           0x27
#define TAG_NICKNAME_ABILITY_TYPE                           0x28
#define TAG_NICKNAME_ABILITY_STATUS                         0x29
#define TAG_NICKNAME_ABILITY_NUMBER                         0x2A
#define TAG_NICKNAME_ITEM_NICKNAME                          0x2B
#define TAG_NICKNAME_ITEM_MOVE                              0x2C
#define TAG_NICKNAME_ITEM_STAT                              0x2D
#define TAG_NICKNAME_ITEM_STATUS                            0x2E
#define TAG_NICKNAME_BOX_BOX                                0x2F
#define TAG_ITEM_NICKNAME_FLAVOR                            0x30
#define TAG_TRNAME_NICKNAME_NICKNAME                        0x31
#define TAG_TRCLASS_TRNAME_NICKNAME                         0x32
#define TAG_TRCLASS_TRNAME_ITEM                             0x33
#define TAG_NICKNAME_ABILITY_NICKNAME_MOVE                  0x34
#define TAG_NICKNAME_ABILITY_NICKNAME_ABILITY               0x35
#define TAG_NICKNAME_ABILITY_NICKNAME_STAT                  0x36
#define TAG_NICKNAME_ITEM_NICKNAME_ITEM                     0x37
#define TAG_TRNAME_NICKNAME_TRNAME_NICKNAME                 0x38
#define TAG_TRCLASS_TRNAME_NICKNAME_NICKNAME                0x39
#define TAG_TRCLASS_TRNAME_NICKNAME_TRNAME                  0x3A
#define TAG_TRCLASS_TRNAME_TRCLASS_TRNAME                   0x3B
#define TAG_TRCLASS_TRNAME_NICKNAME_TRCLASS_TRNAME_NICKNAME 0x3C

// https://github.com/pret/pokeplatinum/blob/main/include/constants/battle/message_tags.h#L7
#define TAG_NO_DIR     (0x80)
#define TAG_DIR        (0x40)
#define TAG_NO_DIR_OFF (0xFF ^ TAG_NO_DIR ^ TAG_DIR)

#define BMON_DATA_SPECIES                  0x0
#define BMON_DATA_ATK                      0x1
#define BMON_DATA_DEF                      0x2
#define BMON_DATA_SPEED                    0x3
#define BMON_DATA_SPATK                    0x4
#define BMON_DATA_SPDEF                    0x5
#define BMON_DATA_MOVE1                    0x6
#define BMON_DATA_MOVE2                    0x7
#define BMON_DATA_MOVE3                    0x8
#define BMON_DATA_MOVE4                    0x9
#define BMON_DATA_HP_IV                    0xA
#define BMON_DATA_ATK_IV                   0xB
#define BMON_DATA_DEF_IV                   0xC
#define BMON_DATA_SPEED_IV                 0xD
#define BMON_DATA_SPATK_IV                 0xE
#define BMON_DATA_SPDEF_IV                 0xF
#define BMON_DATA_IS_EGG                   0x10
#define BMON_DATA_HAS_NICKNAME             0x11
#define BMON_DATA_STAT_CHANGE_HP           0x12
#define BMON_DATA_STAT_CHANGE_ATK          0x13
#define BMON_DATA_STAT_CHANGE_DEF          0x14
#define BMON_DATA_STAT_CHANGE_SPEED        0x15
#define BMON_DATA_STAT_CHANGE_SPATK        0x16
#define BMON_DATA_STAT_CHANGE_SPDEF        0x17
#define BMON_DATA_STAT_CHANGE_ACC          0x18
#define BMON_DATA_STAT_CHANGE_EVASION      0x19
#define BMON_DATA_ABILITY                  0x1A
#define BMON_DATA_TYPE_1                   0x1B
#define BMON_DATA_TYPE_2                   0x1C
#define BMON_DATA_GENDER                   0x1D
#define BMON_DATA_IS_SHINY                 0x1E
#define BMON_DATA_CUR_PP_1                 0x1F
#define BMON_DATA_CUR_PP_2                 0x20
#define BMON_DATA_CUR_PP_3                 0x21
#define BMON_DATA_CUR_PP_4                 0x22
#define BMON_DATA_PP_UPS_1                 0x23
#define BMON_DATA_PP_UPS_2                 0x24
#define BMON_DATA_PP_UPS_3                 0x25
#define BMON_DATA_PP_UPS_4                 0x26
#define BMON_DATA_MAX_PP_1                 0x27
#define BMON_DATA_MAX_PP_2                 0x28
#define BMON_DATA_MAX_PP_3                 0x29
#define BMON_DATA_MAX_PP_4                 0x2A
#define BMON_DATA_LEVEL                    0x2B
#define BMON_DATA_FRIENDSHIP               0x2C
#define BMON_DATA_NICKNAME                 0x2D
#define BMON_DATA_NICKNAME_STRBUF          0x2E
#define BMON_DATA_HP                       0x2F
#define BMON_DATA_MAXHP                    0x30
#define BMON_DATA_OT_NAME                  0x31
#define BMON_DATA_EXP                      0x32
#define BMON_DATA_PERSONALITY              0x33
#define BMON_DATA_STATUS                   0x34
#define BMON_DATA_STATUS2                  0x35
#define BMON_DATA_OT_ID                    0x36
#define BMON_DATA_HELD_ITEM                0x37
#define BMON_DATA_TIMES_DAMAGED            0x38
#define BMON_DATA_MSG_FLAG                 0x39
#define BMON_DATA_OT_GENDER                0x3A
#define BMON_DATA_MOVE_EFFECT              0x3B
#define BMON_DATA_MOVE_EFFECT_TEMP         0x3C
#define BMON_DATA_DISABLED_TURNS           0x3D
#define BMON_DATA_ENCORED_TURNS            0x3E
#define BMON_DATA_CHARGED_TURNS            0x3F
#define BMON_DATA_TAUNTED_TURNS            0x40
#define BMON_DATA_SUCCESSFUL_PROTECT_TURNS 0x41
#define BMON_DATA_PERISH_SONG_TURNS        0x42
#define BMON_DATA_ROLLOUT_COUNT            0x43
#define BMON_DATA_FURY_CUTTER_COUNT        0x44
#define BMON_DATA_STOCKPILE_COUNT          0x45
#define BMON_DATA_STOCKPILE_DEF_BOOSTS     0x46
#define BMON_DATA_STOCKPILE_SPDEF_BOOSTS   0x47
#define BMON_DATA_TRUANT                   0x48
#define BMON_DATA_FLASH_FIRE               0x49
#define BMON_DATA_LOCK_ON_TARGET           0x4A
#define BMON_DATA_MIMICED_MOVE             0x4B
#define BMON_DATA_BIND_TARGET              0x4C
#define BMON_DATA_MEAN_LOOK_TARGET         0x4D
#define BMON_DATA_LAST_RESORT_COUNT        0x4E
#define BMON_DATA_MAGNET_RISE_TURNS        0x4F
#define BMON_DATA_HEAL_BLOCK_TURNS         0x50
#define BMON_DATA_EMBARGO_TURNS            0x51
#define BMON_DATA_CAN_UNBURDEN             0x52
#define BMON_DATA_METRONOME_TURNS          0x53
#define BMON_DATA_MICLE_BERRY_FLAG         0x54
#define BMON_DATA_CUSTAP_FLAG              0x55
#define BMON_DATA_QUICK_CLAW_FLAG          0x56
#define BMON_DATA_RECHARGE                 0x57
#define BMON_DATA_FAKE_OUT                 0x58
#define BMON_DATA_SLOW_START_TURN_NUMBER   0x59
#define BMON_DATA_SUBSTITUTE_HP            0x5A
#define BMON_DATA_TRANSFORMED_PERSONALITY  0x5B
#define BMON_DATA_DISABLED_MOVE_NO         0x5C
#define BMON_DATA_ENCORED_MOVE_NO          0x5D
#define BMON_DATA_BINDING_MOVE_NO          0x5E
#define BMON_DATA_HELD_ITEM_RESTORE_HP     0x5F
#define BMON_DATA_SLOW_START_FLAG          0x60
#define BMON_DATA_SLOW_START_END           0x61
#define BMON_DATA_FORM                     0x62
#define BMON_DATA_UNUSED_99                0x63
#define BMON_DATA_TEMP                     0x64

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
#define MOVE_EFFECT_FLAG_NONE                   0x0
#define MOVE_EFFECT_FLAG_LEECH_SEED_RECIPIENT_0 0x1
#define MOVE_EFFECT_FLAG_LEECH_SEED_RECIPIENT_1 0x2
#define MOVE_EFFECT_FLAG_LEECH_SEED             0x4
#define MOVE_EFFECT_FLAG_LOCK_ON_0              0x8
#define MOVE_EFFECT_FLAG_LOCK_ON_1              0x10
#define MOVE_EFFECT_FLAG_PERISH_SONG            0x20
#define MOVE_EFFECT_FLAG_FLY                    0x40
#define MOVE_EFFECT_FLAG_DIG                    0x80
#define MOVE_EFFECT_FLAG_MINIMIZE               0x100
#define MOVE_EFFECT_FLAG_CHARGE                 0x200
#define MOVE_EFFECT_FLAG_INGRAIN                0x400
#define MOVE_EFFECT_FLAG_YAWN_0                 0x800
#define MOVE_EFFECT_FLAG_YAWN_1                 0x1000
#define MOVE_EFFECT_FLAG_IMPRISON               0x2000
#define MOVE_EFFECT_FLAG_GRUDGE                 0x4000
#define MOVE_EFFECT_FLAG_NO_CRITICAL            0x8000
#define MOVE_EFFECT_FLAG_MUD_SPORT              0x10000
#define MOVE_EFFECT_FLAG_WATER_SPORT            0x20000
#define MOVE_EFFECT_FLAG_DIVE                   0x40000
#define MOVE_EFFECT_FLAG_UNUSED_19              0x80000
#define MOVE_EFFECT_FLAG_UNUSED_20              0x100000
#define MOVE_EFFECT_FLAG_ABILITY_SUPPRESSED     0x200000
#define MOVE_EFFECT_FLAG_MIRACLE_EYE            0x400000
#define MOVE_EFFECT_FLAG_POWER_TRICK            0x800000
#define MOVE_EFFECT_FLAG_AQUA_RING              0x1000000
#define MOVE_EFFECT_FLAG_HEAL_BLOCK             0x2000000
#define MOVE_EFFECT_FLAG_EMBARGO                0x4000000
#define MOVE_EFFECT_FLAG_MAGNET_RISE            0x8000000
#define MOVE_EFFECT_FLAG_CAMOUFLAGE             0x10000000
#define MOVE_EFFECT_FLAG_PHANTOM_FORCE          0x20000000
#define MOVE_EFFECT_FLAG_IMPRISONED             0x40000000
#define MOVE_EFFECT_FLAG_UNUSED_31              0x80000000
#define MOVE_EFFECT_FLAG_LEECH_SEED_RECIPIENT   0x3
#define MOVE_EFFECT_FLAG_LOCK_ON                0x18
#define MOVE_EFFECT_FLAG_YAWN                   0x1800
#define MOVE_EFFECT_FLAG_SEMI_INVULNERABLE      0x200400C0
#define MOVE_EFFECT_FLAG_BATON_PASSED           0xFA3843F
#define MOVE_EFFECT_FLAG_NO_WEATHER_DAMAGE      0x40080

#define MOVEATTRIBUTE_EFFECT         0x0
#define MOVEATTRIBUTE_CLASS          0x1
#define MOVEATTRIBUTE_POWER          0x2
#define MOVEATTRIBUTE_TYPE           0x3
#define MOVEATTRIBUTE_ACCURACY       0x4
#define MOVEATTRIBUTE_PP             0x5
#define MOVEATTRIBUTE_EFFECT_CHANCE  0x6
#define MOVEATTRIBUTE_RANGE          0x7
#define MOVEATTRIBUTE_PRIORTY        0x8
#define MOVEATTRIBUTE_FLAGS          0x9
#define MOVEATTRIBUTE_CONTEST_EFFECT 0xA
#define MOVEATTRIBUTE_CONTEST_TYPE   0xB

#define MOVE_SIDE_EFFECT_BREAK_SCREENS           0x800000
#define MOVE_SIDE_EFFECT_CHECK_SUBSTITUTE        0x1000000
#define MOVE_SIDE_EFFECT_CHECK_HP_AND_SUBSTITUTE 0x2000000
#define MOVE_SIDE_EFFECT_PROBABILISTIC           0x4000000
#define MOVE_SIDE_EFFECT_CANNOT_PREVENT          0x8000000
#define MOVE_SIDE_EFFECT_CHECK_HP                0x10000000
#define MOVE_SIDE_EFFECT_ON_HIT                  0x20000000
#define MOVE_SIDE_EFFECT_TO_ATTACKER             0x40000000
#define MOVE_SIDE_EFFECT_TO_DEFENDER             0x80000000
#define MOVE_SIDE_EFFECT_FLAGS                   0xFF800000
#define MOVE_SIDE_EFFECT_SUBSCRIPT               0xFF800001

/**
 *  @brief move status flag defines for the BattleStruct's waza_status_flag field.
 *  name is left as source define if not sure what it defines
 */
#define MOVE_STATUS_MISSED                         0x1
#define MOVE_STATUS_SUPER_EFFECTIVE                0x2
#define MOVE_STATUS_NOT_VERY_EFFECTIVE             0x4
#define MOVE_STATUS_NO_EFFECT                      0x8
#define MOVE_STATUS_CRITICAL_HIT                   0x10
#define MOVE_STATUS_ONE_HIT_KO                     0x20
#define MOVE_STATUS_FAILED                         0x40
#define MOVE_STATUS_ENDURED                        0x80
#define MOVE_STATUS_ENDURED_ITEM                   0x100
#define MOVE_STATUS_NO_PP                          0x200
#define MOVE_STATUS_BYPASSED_ACCURACY              0x400
#define MOVE_STATUS_LEVITATE_IMMUNE                0x800
#define MOVE_STATUS_ONE_HIT_KO_FAILED              0x1000
#define MOVE_STATUS_SPLASH                         0x2000
#define MOVE_STATUS_MULTI_HIT_DISRUPTED            0x4000
#define MOVE_STATUS_PROTECTED                      0x8000
#define MOVE_STATUS_SEMI_INVULNERABLE              0x10000
#define MOVE_STATUS_LOST_FOCUS                     0x20000
#define MOVE_STATUS_WONDER_GUARD_IMMUNE            0x40000
#define MOVE_STATUS_STURDY                         0x80000
#define MOVE_STATUS_MAGNET_RISE_IMMUNE             0x100000
#define MOVE_STATUS_FLAG_SUPPRESS_FOLLOWUP_MESSAGE 0x40000000
#define MOVE_STATUS_NO_MORE_WORK                   0x80000000

#define MOVE_STATUS_FLAG_FAILURE_ANY (MOVE_STATUS_MISSED | MOVE_STATUS_NO_EFFECT | MOVE_STATUS_FAILED | MOVE_STATUS_LEVITATE_IMMUNE | MOVE_STATUS_ONE_HIT_KO_FAILED | MOVE_STATUS_MULTI_HIT_DISRUPTED | MOVE_STATUS_PROTECTED | MOVE_STATUS_SEMI_INVULNERABLE | MOVE_STATUS_LOST_FOCUS | MOVE_STATUS_WONDER_GUARD_IMMUNE | MOVE_STATUS_STURDY | MOVE_STATUS_MAGNET_RISE_IMMUNE)
#define MOVE_STATUS_DID_NOT_HIT      MOVE_STATUS_FLAG_FAILURE_ANY

#define WAZA_STATUS_FLAG_NO_OUT (MOVE_STATUS_FLAG_FAILURE_ANY | MOVE_STATUS_NO_PP | MOVE_STATUS_NO_MORE_WORK)

#define MULTIHIT_SKIP_OBEDIENCE_CHECK    0x1
#define MULTIHIT_SKIP_TYPE_CHART_CHECK   0x2
#define MULTIHIT_SKIP_STATUS_CHECK       0x4
#define MULTIHIT_SKIP_PP_DECREMENT       0x8
#define MULTIHIT_SKIP_IMMUNITY_TRIGGERS  0x10
#define MULTIHIT_SKIP_ACCURACY_CHECK     0x20
#define MULTIHIT_SKIP_ACCURACY_OVERRIDES 0x40
#define MULTIHIT_SKIP_STOLEN_CHECK       0x80
#define MULTIHIT_HIT_MULTIPLE_TARGETS    0xD
#define MULTIHIT_TRIPLE_KICK             0xDD
#define MULTIHIT_MULTI_HIT_MOVE          0xFD

#define BASE_HP               0x0
#define BASE_ATK              0x1
#define BASE_DEF              0x2
#define BASE_SPEED            0x3
#define BASE_SPATK            0x4
#define BASE_SPDEF            0x5
#define BASE_TYPE1            0x6
#define BASE_TYPE2            0x7
#define BASE_CATCH_RATE       0x8
#define BASE_EXP              0x9
#define BASE_HP_YIELD         0xA
#define BASE_ATK_YIELD        0xB
#define BASE_DEF_YIELD        0xC
#define BASE_SPEED_YIELD      0xD
#define BASE_SPATK_YIELD      0xE
#define BASE_SPDEF_YIELD      0xF
#define BASE_ITEM_1           0x10
#define BASE_ITEM_2           0x11
#define BASE_GENDER_RATIO     0x12
#define BASE_EGG_CYCLES       0x13
#define BASE_FRIENDSHIP       0x14
#define BASE_EXP_RATE         0x15
#define BASE_EGG_GROUP_1      0x16
#define BASE_EGG_GROUP_2      0x17
#define BASE_ABILITY_1        0x18
#define BASE_ABILITY_2        0x19
#define BASE_GREAT_MARSH_RATE 0x1A
#define BASE_COLOR            0x1B
#define BASE_FLIP_SPRITE      0x1C
#define BASE_TMHM_1           0x1D
#define BASE_TMHM_2           0x1E
#define BASE_TMHM_3           0x1F
#define BASE_TMHM_4           0x20

/**
 *  @brief non-volatile status condition flags
 *  not just valid for battles, also valid outside of battles
 *  in BattleStruct's battlemon[battler].condition field
 *     or GetMonData(mon, MON_DATA_STATUS, NULL);
 */
#define STATUS_NONE                 0x0
#define STATUS_SLEEP_0              0x1
#define STATUS_SLEEP_1              0x2
#define STATUS_SLEEP_2              0x4
#define STATUS_POISON               0x8
#define STATUS_BURN                 0x10
#define STATUS_FREEZE               0x20
#define STATUS_PARALYSIS            0x40
#define STATUS_BAD_POISON           0x80
#define STATUS_BAD_POISON_COUNTER_0 0x100
#define STATUS_BAD_POISON_COUNTER_1 0x200
#define STATUS_BAD_POISON_COUNTER_2 0x400
#define STATUS_BAD_POISON_COUNTER_3 0x800
#define STATUS_UNUSED_12            0x1000
#define STATUS_UNUSED_13            0x2000
#define STATUS_UNUSED_14            0x4000
#define STATUS_UNUSED_15            0x8000
#define STATUS_UNUSED_16            0x10000
#define STATUS_UNUSED_17            0x20000
#define STATUS_UNUSED_18            0x40000
#define STATUS_UNUSED_19            0x80000
#define STATUS_UNUSED_20            0x100000
#define STATUS_UNUSED_21            0x200000
#define STATUS_UNUSED_22            0x400000
#define STATUS_UNUSED_23            0x800000
#define STATUS_UNUSED_24            0x1000000
#define STATUS_UNUSED_25            0x2000000
#define STATUS_UNUSED_26            0x4000000
#define STATUS_UNUSED_27            0x8000000
#define STATUS_UNUSED_28            0x10000000
#define STATUS_UNUSED_29            0x20000000
#define STATUS_UNUSED_30            0x40000000
#define STATUS_UNUSED_31            0x80000000
#define STATUS_SLEEP                0x7
#define STATUS_POISON_COUNT         0xF00
#define STATUS_POISON_ALL           0xF88
#define STATUS_ALL                  0xFF
#define STATUS_UNUSED_SLOTS         0xFFFFF000
#define STATUS_NOT_SLEEP            0xFFFFFFF8
#define STATUS_CAN_SYNCHRONIZE      0x58
#define STATUS_FACADE_BOOST         0xD8

#define CONDITION_NONE      0
#define CONDITION_SLEEP     1
#define CONDITION_POISON    2
#define CONDITION_BURN      3
#define CONDITION_FREEZE    4
#define CONDITION_PARALYSIS 5

#define STATUS_ANY_PERSISTENT (STATUS_SLEEP | STATUS_POISON_ALL | STATUS_BURN | STATUS_FREEZE | STATUS_PARALYSIS)

#define STATUS_POISON_COUNT_SHIFT 8

#define TYPE_NORMAL   0
#define TYPE_FIGHTING 1
#define TYPE_FLYING   2
#define TYPE_POISON   3
#define TYPE_GROUND   4
#define TYPE_ROCK     5
#define TYPE_BUG      6
#define TYPE_GHOST    7
#define TYPE_STEEL    8
#define TYPE_MYSTERY  9
#define TYPE_FAIRY    9 // TODO: 17
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

#define TYPE_NORMAL_INTERNAL   0
#define TYPE_FIGHTING_INTERNAL 1
#define TYPE_FLYING_INTERNAL   2
#define TYPE_POISON_INTERNAL   3
#define TYPE_GROUND_INTERNAL   4
#define TYPE_ROCK_INTERNAL     5
#define TYPE_BUG_INTERNAL      6
#define TYPE_GHOST_INTERNAL    7
#define TYPE_STEEL_INTERNAL    8
#define TYPE_FIRE_INTERNAL     9
#define TYPE_WATER_INTERNAL    10
#define TYPE_GRASS_INTERNAL    11
#define TYPE_ELECTRIC_INTERNAL 12
#define TYPE_PSYCHIC_INTERNAL  13
#define TYPE_ICE_INTERNAL      14
#define TYPE_DRAGON_INTERNAL   15
#define TYPE_DARK_INTERNAL     16
#define TYPE_FAIRY_INTERNAL    17
#define TYPE_TYPELESS_INTERNAL 18
#define TYPE_STELLAR_INTERNAL  99

// Type effectiveness
#define TYPE_MUL_NO_EFFECT 0
// #define TYPE_MUL_QUADRUPLE_NOT_EFFECTIVE   2
#define TYPE_MUL_TRIPLE_NOT_EFFECTIVE   3
#define TYPE_MUL_DOUBLE_NOT_EFFECTIVE   4
#define TYPE_MUL_NOT_EFFECTIVE          5
#define TYPE_MUL_NORMAL                 10
#define TYPE_MUL_SUPER_EFFECTIVE        20
#define TYPE_MUL_DOUBLE_SUPER_EFFECTIVE 30
#define TYPE_MUL_TRIPLE_SUPER_EFFECTIVE 40
// #define TYPE_MUL_QUADRUPLE_SUPER_EFFECTIVE 50

// #define EFFECTIVENESS_MULT_QUADRUPLE_NOT_EFFECTIVE   62500
#define EFFECTIVENESS_MULT_TRIPLE_NOT_EFFECTIVE   125000
#define EFFECTIVENESS_MULT_DOUBLE_NOT_EFFECTIVE   250000
#define EFFECTIVENESS_MULT_NOT_EFFECTIVE          500000
#define EFFECTIVENESS_MULT_NORMAL                 1000000
#define EFFECTIVENESS_MULT_SUPER_EFFECTIVE        2000000
#define EFFECTIVENESS_MULT_DOUBLE_SUPER_EFFECTIVE 4000000
#define EFFECTIVENESS_MULT_TRIPLE_SUPER_EFFECTIVE 8000000
// #define EFFECTIVENESS_MULT_QUADRUPLE_SUPER_EFFECTIVE 160000000

// Special type table IDs
#define TYPE_RING_TARGET 0xFD
#define TYPE_FORESIGHT   0xFE
#define TYPE_ENDTABLE    0xFF

/**
 *  @brief volatile status condition flags
 *  accessible in BattleStruct's battlemon[battler].condition2
 */
#define STATUS2_NONE             0x0
#define STATUS2_CONFUSION_0      0x1
#define STATUS2_CONFUSION_1      0x2
#define STATUS2_CONFUSION_2      0x4
#define STATUS2_FLINCH           0x8
#define STATUS2_UPROAR_0         0x10
#define STATUS2_UPROAR_1         0x20
#define STATUS2_UPROAR_2         0x40
#define STATUS2_UNUSED_7         0x80
#define STATUS2_BIDE_0           0x100
#define STATUS2_BIDE_1           0x200
#define STATUS2_THRASH_0         0x400
#define STATUS2_THRASH_1         0x800
#define STATUS2_LOCKED_INTO_MOVE 0x1000
#define STATUS2_BIND_0           0x2000
#define STATUS2_BIND_1           0x4000
#define STATUS2_BIND_2           0x8000
#define STATUS2_MON_0_ATTRACT    0x10000
#define STATUS2_MON_1_ATTRACT    0x20000
#define STATUS2_MON_2_ATTRACT    0x40000
#define STATUS2_MON_3_ATTRACT    0x80000
#define STATUS2_FOCUS_ENERGY     0x100000
#define STATUS2_TRANSFORM        0x200000
#define STATUS2_RECHARGE         0x400000
#define STATUS2_RAGE             0x800000
#define STATUS2_SUBSTITUTE       0x1000000
#define STATUS2_DESTINY_BOND     0x2000000
#define STATUS2_MEAN_LOOK        0x4000000
#define STATUS2_NIGHTMARE        0x8000000
#define STATUS2_CURSE            0x10000000
#define STATUS2_FORESIGHT        0x20000000
#define STATUS2_DEFENSE_CURL     0x40000000
#define STATUS2_TORMENT          0x80000000
#define STATUS2_CONFUSION        0x7
#define STATUS2_UPROAR           0x70
#define STATUS2_BIDE             0x300
#define STATUS2_RAMPAGE          0xC00
#define STATUS2_BIND             0xE000
#define STATUS2_ATTRACT          0xF0000

#define STATUS2_BATON_PASSABLE (STATUS2_CONFUSION | STATUS2_FOCUS_ENERGY | STATUS2_SUBSTITUTE | STATUS2_MEAN_LOOK | STATUS2_CURSE)

#define STATUS2_UPROAR_SHIFT  4
#define STATUS2_BIDE_SHIFT    8
#define STATUS2_RAMPAGE_SHIFT 10
#define STATUS2_BINDING_SHIFT 13
#define STATUS2_ATTRACT_SHIFT 16

#define BATTLER_TYPE_SOLO_PLAYER        0x0
#define BATTLER_TYPE_SOLO_ENEMY         0x1
#define BATTLER_TYPE_PLAYER_SIDE_SLOT_1 0x2
#define BATTLER_TYPE_ENEMY_SIDE_SLOT_1  0x3
#define BATTLER_TYPE_PLAYER_SIDE_SLOT_2 0x4
#define BATTLER_TYPE_ENEMY_SIDE_SLOT_2  0x5

// Self Turns Flags
#define SELF_TURN_FLAG_CLEAR          0x0
#define SELF_TURN_FLAG_UNUSED_0       0x1
#define SELF_TURN_FLAG_PLUCK_BERRY    0x2
#define SELF_TURN_FLAG_INFATUATED     0x4
#define SELF_TURN_FLAG_SUBSTITUTE_HIT 0x8

#define SIDE_COND_REFLECT_TURNS       0x0
#define SIDE_COND_LIGHT_SCREEN_TURNS  0x1
#define SIDE_COND_MIST_TURNS          0x2
#define SIDE_COND_SAFEGUARD_TURNS     0x3
#define SIDE_COND_SPIKES_LAYERS       0x4
#define SIDE_COND_TOXIC_SPIKES_LAYERS 0x5
#define SIDE_COND_AURORA_VEIL_TURNS   0x6

#define SIDE_CONDITION_REFLECT       0x1
#define SIDE_CONDITION_LIGHT_SCREEN  0x2
#define SIDE_CONDITION_SPIKES        0x4
#define SIDE_CONDITION_SAFEGUARD     0x8
#define SIDE_CONDITION_FUTURE_SIGHT  0x10
#define SIDE_CONDITION_WISH          0x20
#define SIDE_CONDITION_MIST          0x40
#define SIDE_CONDITION_STEALTH_ROCKS 0x80
#define SIDE_CONDITION_TAILWIND_0    0x100
#define SIDE_CONDITION_TAILWIND_1    0x200
#define SIDE_CONDITION_TOXIC_SPIKES  0x400
#define SIDE_CONDITION_STICKY_WEB    0x800
#define SIDE_CONDITION_LUCKY_CHANT_0 0x1000
#define SIDE_CONDITION_LUCKY_CHANT_1 0x2000
#define SIDE_CONDITION_LUCKY_CHANT_2 0x4000
#define SIDE_CONDITION_TAILWIND      0x300
#define SIDE_CONDITION_LUCKY_CHANT   0x7000
#define SIDE_CONDITION_AURORA_VEIL   0x8000

#define SELECT_FIGHT_COMMAND   1
#define SELECT_ITEM_COMMAND    2
#define SELECT_POKEMON_COMMAND 3
#define SELECT_ESCAPE_COMMAND  4

// side effect defines
#define SIDE_EFFECT_NO_ABILITY (0x08000000)

#define SIDE_EFFECT_TYPE_NONE         0x0
#define SIDE_EFFECT_TYPE_DIRECT       0x1
#define SIDE_EFFECT_TYPE_INDIRECT     0x2
#define SIDE_EFFECT_TYPE_ABILITY      0x3
#define SIDE_EFFECT_TYPE_MOVE_EFFECT  0x4
#define SIDE_EFFECT_TYPE_HELD_ITEM    0x5
#define SIDE_EFFECT_TYPE_TOXIC_SPIKES 0x6
#define SIDE_EFFECT_TYPE_DISOBEDIENCE 0x7
// new
#define SIDE_EFFECT_TYPE_PRINT_WORK_ABILITY 0x8
#define SIDE_EFFECT_TYPE_STICKY_WEB         0x9

#ifndef __ASSEMBLER__
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
    TERRAIN_GREAT_MARSH, // unused
    TERRAIN_UNKNOWN, // unused
    TERRAIN_WILL,
    TERRAIN_KOGA,
    TERRAIN_BRUNO,
    TERRAIN_KAREN,
    TERRAIN_LANCE,
    TERRAIN_DISTORTION_WORLD, // unused
    TERRAIN_BATTLE_TOWER,
    TERRAIN_BATTLE_FACTORY,
    TERRAIN_BATTLE_ARCADE,
    TERRAIN_BATTLE_CASTLE,
    TERRAIN_BATTLE_HALL,
    TERRAIN_GIRATINA, // unused
    TERRAIN_ELECTRIC_TERRAIN,
    TERRAIN_MISTY_TERRAIN,
    TERRAIN_GRASSY_TERRAIN,
    TERRAIN_PSYCHIC_TERRAIN,
    TERRAIN_MAX,
} Terrain;
#else
#define TERRAIN_PLAIN            0x0
#define TERRAIN_SAND             0x1
#define TERRAIN_GRASS            0x2
#define TERRAIN_PUDDLE           0x3
#define TERRAIN_MOUNTAIN         0x4
#define TERRAIN_CAVE             0x5
#define TERRAIN_SNOW             0x6
#define TERRAIN_WATER            0x7
#define TERRAIN_ICE              0x8
#define TERRAIN_BUILDING         0x9
#define TERRAIN_GREAT_MARSH      0xA // unused
#define TERRAIN_UNKNOWN          0xB // unused
#define TERRAIN_WILL             0xC
#define TERRAIN_KOGA             0xD
#define TERRAIN_BRUNO            0xE
#define TERRAIN_KAREN            0xF
#define TERRAIN_LANCE            0x10
#define TERRAIN_DISTORTION_WORLD 0x11
#define TERRAIN_BATTLE_TOWER     0x12
#define TERRAIN_BATTLE_FACTORY   0x13
#define TERRAIN_BATTLE_ARCADE    0x14
#define TERRAIN_BATTLE_CASTLE    0x15
#define TERRAIN_BATTLE_HALL      0x16
#define TERRAIN_GIRATINA         0x17
#define TERRAIN_ELECTRIC_TERRAIN 0x18
#define TERRAIN_MISTY_TERRAIN    0x19
#define TERRAIN_GRASSY_TERRAIN   0x1A
#define TERRAIN_PSYCHIC_TERRAIN  0x1B
#define TERRAIN_MAX              0x1C
#define TERRAIN_CURRENT          0xFFFFFFFF
#endif

// This is a catch-all terrain that includes Pokemon League, Distortion World
// and Battle Frontier.
#define TERRAIN_OTHERS (TERRAIN_WILL)

// TerrainOverlayType
#ifndef __ASSEMBLER__
enum TerrainOverlayType {
    TERRAIN_NONE,
    GRASSY_TERRAIN,
    MISTY_TERRAIN,
    ELECTRIC_TERRAIN,
    PSYCHIC_TERRAIN
};
#else
#define TERRAIN_NONE     0x0
#define GRASSY_TERRAIN   0x1
#define MISTY_TERRAIN    0x2
#define ELECTRIC_TERRAIN 0x3
#define PSYCHIC_TERRAIN  0x4
#endif

#define BTLSCR_THROW_POKE_BALL   0x0
#define BTLSCR_THROW_SAFARI_BALL 0x1
#define BTLSCR_THROW_SAFARI_ROCK 0x2
#define BTLSCR_THROW_SAFARI_BAIT 0x3
#define BTLSCR_THROW_PARK_BALL   0x4

#define TRAINER_MESSAGE_LOSE   0x1
#define TRAINER_MESSAGE_LOSE_1 0x4
#define TRAINER_MESSAGE_LOSE_2 0x8
#define TRAINER_MESSAGE_20     0x14
#define TRAINER_MESSAGE_WIN    0x64

#define TURN_FLAG_STRUGGLING     0x0
#define TURN_FLAG_PP_DECREMENTED 0x1
#define TURN_FLAG_PROTECTING     0x2
#define TURN_FLAG_HELPING_HAND   0x3
#define TURN_FLAG_MAGIC_COAT     0x4
#define TURN_FLAG_SNATCHING      0x5
#define TURN_FLAG_ROOSTING       0x6

#define BSCRIPT_VAR_BATTLE_TYPE                            0x0
#define BSCRIPT_VAR_CRITICAL_BOOSTS                        0x1
#define BSCRIPT_VAR_SIDE_EFFECT_FLAGS_DIRECT               0x2
#define BSCRIPT_VAR_SIDE_EFFECT_FLAGS_INDIRECT             0x3
#define BSCRIPT_VAR_SIDE_EFFECT_FLAGS_ABILITY              0x4
#define BSCRIPT_VAR_SIDE_EFFECT_TYPE                       0x5
#define BSCRIPT_VAR_BATTLE_STATUS                          0x6
#define BSCRIPT_VAR_FIELD_CONDITION                        0x7
#define BSCRIPT_VAR_POWER_MULTI                            0x8
#define BSCRIPT_VAR_CALC_TEMP                              0x9
#define BSCRIPT_VAR_MOVE_STATUS_FLAGS                      0xA
#define BSCRIPT_VAR_SIDE_CONDITION_ATTACKER                0xB
#define BSCRIPT_VAR_SIDE_CONDITION_TARGET                  0xC
#define BSCRIPT_VAR_SIDE_CONDITION_STAT_CHANGE             0xD
#define BSCRIPT_VAR_DAMAGE                                 0xE
#define BSCRIPT_VAR_BATTLER_ATTACKER                       0xF
#define BSCRIPT_VAR_BATTLER_TARGET                         0x10
#define BSCRIPT_VAR_BATTLER_STAT_CHANGE                    0x11
#define BSCRIPT_VAR_BATTLER_FAINTED                        0x12
#define BSCRIPT_VAR_BATTLER_SWITCH                         0x13
#define BSCRIPT_VAR_MSG_BATTLER_TEMP                       0x14
#define BSCRIPT_VAR_ATTACKER_STORED_DAMAGE                 0x15
#define BSCRIPT_VAR_MESSAGE                                0x16
#define BSCRIPT_VAR_PAY_DAY_COUNT                          0x17
#define BSCRIPT_VAR_MOVE_NO_CUR                            0x18
#define BSCRIPT_VAR_TOTAL_TURNS                            0x19
#define BSCRIPT_VAR_MSG_ATTACKER                           0x1A
#define BSCRIPT_VAR_MSG_DEFENDER                           0x1B
#define BSCRIPT_VAR_MOVE_NO_TEMP                           0x1C
#define BSCRIPT_VAR_LAST_BATTLER_ID                        0x1D
#define BSCRIPT_VAR_MOVE_POWER                             0x1E
#define BSCRIPT_VAR_AFTER_MOVE_MESSAGE_TYPE                0x1F
#define BSCRIPT_VAR_HP_CALC                                0x20
#define BSCRIPT_VAR_BATTLE_OUTCOME                         0x21
#define BSCRIPT_VAR_SIDE_EFFECT_PARAM                      0x22
#define BSCRIPT_VAR_MSG_MOVE_TEMP                          0x23
#define BSCRIPT_VAR_MSG_ITEM_TEMP                          0x24
#define BSCRIPT_VAR_MSG_ABILITY_TEMP                       0x25
#define BSCRIPT_VAR_WEATHER_TURNS                          0x26
#define BSCRIPT_VAR_BATTLER_SPEED_TEMP                     0x27
#define BSCRIPT_VAR_MULTI_HIT_LOOP                         0x28
#define BSCRIPT_VAR_PHYSICAL_DAMAGE                        0x29
#define BSCRIPT_VAR_SPECIAL_DAMAGE                         0x2A
#define BSCRIPT_VAR_TEMP_DATA                              0x2B
#define BSCRIPT_VAR_CRIT_MULTIPLIER                        0x2C
#define BSCRIPT_VAR_ATTACKER_LAST_DAMAGE_TAKEN             0x2D
#define BSCRIPT_VAR_DEFENDER_LAST_DAMAGE_TAKEN             0x2E
#define BSCRIPT_VAR_ATTACKER_SELF_TURN_STATUS_FLAGS        0x2F
#define BSCRIPT_VAR_DEFENDER_SELF_TURN_STATUS_FLAGS        0x30
#define BSCRIPT_VAR_SIDE_EFFECT_MON_SELF_TURN_STATUS_FLAGS 0x31
#define BSCRIPT_VAR_FLING_DATA                             0x32
#define BSCRIPT_VAR_FLING_SCRIPT                           0x33
#define BSCRIPT_VAR_BATTLE_SYS_STATUS                      0x34
#define BSCRIPT_VAR_ATTACKER_LOCKED_MOVE                   0x35
#define BSCRIPT_VAR_HIT_DAMAGE                             0x36
#define BSCRIPT_VAR_SAFARI_BALL_CNT                        0x37
#define BSCRIPT_VAR_SWITCHED_MON_TEMP                      0x38
#define BSCRIPT_VAR_MOVE_TYPE                              0x39
#define BSCRIPT_VAR_MOVE_EFFECT_CHANCE                     0x3A
#define BSCRIPT_VAR_REGULATION_FLAG                        0x3B
#define BSCRIPT_VAR_BATTLE_STATUS_2                        0x3C
#define BSCRIPT_VAR_TURN_ORDER_COUNTER                     0x3D
#define BSCRIPT_VAR_MAX_BATTLERS                           0x3E
#define BSCRIPT_VAR_BATTLER_ATTACKER_TEMP                  0x3F
#define BSCRIPT_VAR_BATTLER_TARGET_TEMP                    0x40
#define BSCRIPT_VAR_PHYSICAL_DAMAGE_TAKEN                  0x41
#define BSCRIPT_VAR_MSG_BATTLER_TEMP_ASSURANCE_DAMAGE_MASK 0x42
#define BSCRIPT_VAR_DEFENDER_ASSURANCE_DAMAGE_MASK         0x43
#define BSCRIPT_VAR_ATTACKER_SHELL_BELL_DAMAGE_DEALT       0x44
#define BSCRIPT_VAR_WAITING_BATTLERS                       0x45

#define VOLATILE_CONDITION_NONE         0x0
#define VOLATILE_CONDITION_CONFUSION_0  0x1
#define VOLATILE_CONDITION_CONFUSION_1  0x2
#define VOLATILE_CONDITION_CONFUSION_2  0x4
#define VOLATILE_CONDITION_FLINCH       0x8
#define VOLATILE_CONDITION_UPROAR_0     0x10
#define VOLATILE_CONDITION_UPROAR_1     0x20
#define VOLATILE_CONDITION_UPROAR_2     0x40
#define VOLATILE_CONDITION_UNUSED_7     0x80
#define VOLATILE_CONDITION_BIDE_0       0x100
#define VOLATILE_CONDITION_BIDE_1       0x200
#define VOLATILE_CONDITION_THRASH_0     0x400
#define VOLATILE_CONDITION_THRASH_1     0x800
#define VOLATILE_CONDITION_MOVE_LOCKED  0x1000
#define VOLATILE_CONDITION_BIND_0       0x2000
#define VOLATILE_CONDITION_BIND_1       0x4000
#define VOLATILE_CONDITION_BIND_2       0x8000
#define VOLATILE_CONDITION_ATTRACT_0    0x10000
#define VOLATILE_CONDITION_ATTRACT_1    0x20000
#define VOLATILE_CONDITION_ATTRACT_2    0x40000
#define VOLATILE_CONDITION_ATTRACT_3    0x80000
#define VOLATILE_CONDITION_FOCUS_ENERGY 0x100000
#define VOLATILE_CONDITION_TRANSFORM    0x200000
#define VOLATILE_CONDITION_RECHARGING   0x400000
#define VOLATILE_CONDITION_RAGE         0x800000
#define VOLATILE_CONDITION_SUBSTITUTE   0x1000000
#define VOLATILE_CONDITION_DESTINY_BOND 0x2000000
#define VOLATILE_CONDITION_MEAN_LOOK    0x4000000
#define VOLATILE_CONDITION_NIGHTMARE    0x8000000
#define VOLATILE_CONDITION_CURSE        0x10000000
#define VOLATILE_CONDITION_FORESIGHT    0x20000000
#define VOLATILE_CONDITION_DEFENSE_CURL 0x40000000
#define VOLATILE_CONDITION_TORMENT      0x80000000
#define VOLATILE_CONDITION_CONFUSION    0x7
#define VOLATILE_CONDITION_UPROAR       0x70
#define VOLATILE_CONDITION_BIDE         0x300
#define VOLATILE_CONDITION_THRASH       0xC00
#define VOLATILE_CONDITION_BIND         0xE000
#define VOLATILE_CONDITION_ATTRACT      0xF0000

#define YES_NO_BASIC           0x0
#define YES_NO_FORGET_MOVE     0x1
#define YES_NO_GIVE_UP_ON_MOVE 0x2
#define YES_NO_NEXT_MON        0x3
#define YES_NO_CHANGE_MON      0x4
#define YES_NO_GIVE_NICKNAME   0x5

#ifndef __ASSEMBLER__
enum ForceExecutionOrder {
    EXECUTION_ORDER_NORMAL,
    EXECUTION_ORDER_AFTER_YOU,
    EXECUTION_ORDER_QUASH
};
#else
#define EXECUTION_ORDER_NORMAL    (0)
#define EXECUTION_ORDER_AFTER_YOU (1)
#define EXECUTION_ORDER_QUASH     (2)
#endif

#define DISABLE_END_OF_TURN_WEATHER_MESSAGE (1)

#define CATEGORY_PHYSICAL 0
#define CATEGORY_SPECIAL  1
#define CATEGORY_STATUS   2

#define RANGE_SINGLE_TARGET           0
#define RANGE_SINGLE_TARGET_SPECIAL   (1 << 0)
#define RANGE_RANDOM_OPPONENT         (1 << 1)
#define RANGE_ADJACENT_OPPONENTS      (1 << 2)
#define RANGE_ALL_ADJACENT            (1 << 3)
#define RANGE_USER                    (1 << 4)
#define RANGE_USER_SIDE               (1 << 5)
#define RANGE_FIELD                   (1 << 6)
#define RANGE_OPPONENT_SIDE           (1 << 7)
#define RANGE_ALLY                    (1 << 8)
#define RANGE_SINGLE_TARGET_USER_SIDE (1 << 9)
#define RANGE_FRONT                   (1 << 10)

#define HAZARD_IDX_NONE         0
#define HAZARD_IDX_SPIKES       1
#define HAZARD_IDX_TOXIC_SPIKES 2
#define HAZARD_IDX_STEALTH_ROCK 3
#define HAZARD_IDX_STICKY_WEB   4
#define HAZARD_IDX_SHARP_STEEL  5

#endif // GUARD_BATTLE_CONSTANTS
