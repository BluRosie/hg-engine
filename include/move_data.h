#ifndef MOVE_DATA_H
#define MOVE_DATA_H

#include <stdint.h>

#include "constants/move_effects.h"
#include "constants/moves.h"
#include "constants/pokemon.h"

#include "config.h"

#define SPLIT_PHYSICAL 0
#define SPLIT_SPECIAL  1
#define SPLIT_STATUS   2

#define FLAG_CONTACT     0x01
#define FLAG_PROTECT     0x02
#define FLAG_MAGIC_COAT  0x04
#define FLAG_SNATCH      0x08
#define FLAG_MIRROR_MOVE 0x10
#define FLAG_KEEP_HP_BAR 0x40
#define FLAG_HIDE_SHADOW 0x80

#define CONTEST_COOL   0
#define CONTEST_BEAUTY 1
#define CONTEST_CUTE   2
#define CONTEST_SMART  3
#define CONTEST_TOUGH  4

#define APPEAL_FIRST_NEXT_TURN          0x01
#define APPEAL_LAST_NEXT_TURN           0x02
#define APPEAL_UNUSED_3                 0x03
#define APPEAL_VOLTAGE_HEARTS           0x04
#define APPEAL_BASIC                    0x05
#define APPEAL_UNIQUE_JUDGE             0x06
#define APPEAL_SUCCESSIVE               0x07
#define APPEAL_VOLTAGE_ONLY             0x08
#define APPEAL_ALL_SAME_JUDGE           0x09
#define APPEAL_LOWER_VOLTAGES           0x0A
#define APPEAL_DOUBLE_NEXT_SCORE        0x0B
#define APPEAL_STEAL_VOLTAGE            0x0C
#define APPEAL_KEEP_VOLTAGE_DOWN        0x0D
#define APPEAL_RANDOMIZE_NEXT_TURN      0x0E
#define APPEAL_DOUBLE_ON_FINALE         0x0F
#define APPEAL_LOW_VOLTAGE_BOOST        0x10
#define APPEAL_FIRST_HEARTS             0x11
#define APPEAL_LAST_HEARTS              0x12
#define APPEAL_KEEP_VOLTAGE_UP          0x13
#define APPEAL_VOLTAGE_CHAIN_HEARTS     0x14
#define APPEAL_LATE_BOOST               0x15
#define APPEAL_AFTER_MAX_VOLTAGE_HEARTS 0x16
#define APPEAL_PITY_HEARTS              0x17

#if DISALLOW_DEXIT_GEN == 8
#define FLAG_UNUSABLE_IN_GEN_8 0x20
#else
#define FLAG_UNUSABLE_IN_GEN_8 0
#endif

#if DISALLOW_DEXIT_GEN == 9
#define FLAG_UNUSABLE_IN_GEN_9 0x20
#else
#define FLAG_UNUSABLE_IN_GEN_9 0
#endif

#if DISALLOW_DEXIT_GEN == 0
#define FLAG_UNUSABLE_UNIMPLEMENTED 0x20
#else
#define FLAG_UNUSABLE_UNIMPLEMENTED 0
#endif

#ifndef MOVE_EFFECT_ATK_SP_ATK_SPEED_UP_2_LOSE_HALF_MAX_HP
#define MOVE_EFFECT_ATK_SP_ATK_SPEED_UP_2_LOSE_HALF_MAX_HP 303
#endif

#ifndef DEBUG_NEEDS_TESTING
#define DEBUG_NEEDS_TESTING 0
#endif

#ifndef TYPES_H
typedef uint8_t u8;
typedef int8_t s8;
typedef uint16_t u16;
typedef uint32_t u32;
#endif

typedef struct MoveNames {
    const char *name;
    const char *capsName;
    const char *fullName;
} MoveNames;

typedef struct MoveDataFields {
    u16 effect;
    u8 split;
    u8 power;
    u8 type;
    u8 accuracy;
    u8 pp;
    u8 effectChance;
} MoveDataFields;

typedef struct MoveBattleFields {
    u16 target;
    s8 priority;
    u8 flags;
} MoveBattleFields;

typedef struct MoveContestFields {
    u8 appeal;
    u8 contestType;
    u8 padding02[2];
} MoveContestFields;

typedef struct MoveSourceEntry {
    MoveNames names;
    MoveDataFields data;
    MoveBattleFields battle;
    MoveContestFields contest;
    const char *description;
} MoveSourceEntry;

extern const MoveSourceEntry sMoveSource[NUM_OF_MOVES + 1];

#endif
