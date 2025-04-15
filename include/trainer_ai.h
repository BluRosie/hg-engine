#ifndef TRAINER_AI_H
#define TRAINER_AI_H

#include "battle.h"
void LONG_CALL AITypeCalc(struct BattleStruct *sp, u32 move, u32 type, int atkAbility, int defAbility, int held_effect, int type1, int type2, u32 *flag);
BOOL LONG_CALL CantEscape(struct BattleSystem *bsys, struct BattleStruct *ctx, int attacker, int *msg);

enum AIActionChoice {
    AI_ENEMY_ATTACK_1,
    AI_ENEMY_ATTACK_2,
    AI_ENEMY_ATTACK_3,
    AI_ENEMY_ATTACK_4,
    AI_ENEMY_ESCAPE,
    AI_ENEMY_SAFARI,
    AI_ENEMY_SWITCH,
};

enum AIFlag {
    AI_FLAG_NONE,
    AI_FLAG_BASIC =  1 << 0,
    AI_FLAG_EVAL_ATTACK = 1 << 1,
    AI_FLAG_EXPERT = 1 << 2,
    AI_FLAG_SETUP_FIRST_TURN = 1 << 3,
    AI_FLAG_RISKY = 1 << 4,
    AI_FLAG_DAMAGE_PRIORITY = 1 << 5,
    AI_FLAG_BATON_PASS = 1 << 6,
    AI_FLAG_TAG_STRATEGY = 1 << 7,
    AI_FLAG_CHECK_HP = 1 << 8,
    AI_FLAG_WEATHER = 1 << 9,
    AI_FLAG_HARRASSMENT = 1 << 10,
    AI_FLAG_UNUSED_11 = 1 << 11,
    AI_FLAG_UNUSED_12 = 1 << 12,
    AI_FLAG_UNUSED_13 = 1 << 13,
    AI_FLAG_UNUSED_14 = 1 << 14,
    AI_FLAG_UNUSED_15 = 1 << 15,
    AI_FLAG_UNUSED_16 = 1 << 16,
    AI_FLAG_UNUSED_17 = 1 << 17,
    AI_FLAG_UNUSED_18 = 1 << 18,
    AI_FLAG_UNUSED_19 = 1 << 19,
    AI_FLAG_UNUSED_20 = 1 << 20,
    AI_FLAG_UNUSED_21 = 1 << 21,
    AI_FLAG_UNUSED_22 = 1 << 22,
    AI_FLAG_UNUSED_23 = 1 << 23,
    AI_FLAG_UNUSED_24 = 1 << 24,
    AI_FLAG_UNUSED_25 = 1 << 25,
    AI_FLAG_UNUSED_26 = 1 << 26,
    AI_FLAG_UNUSED_27 = 1 << 27,
    AI_FLAG_UNUSED_28 = 1 << 28,
    AI_FLAG_ROAMING_POKEMON = 1 << 29,
    AI_FLAG_SAFARI = 1 << 30,
    AI_FLAG_CATCH_TUTORIAL = 1 << 31,
    AI_FLAG_ALL = ~0,
};

enum {
    PLAYER_INPUT_FIGHT = 1,
    PLAYER_INPUT_ITEM,
    PLAYER_INPUT_PARTY,
    PLAYER_INPUT_RUN,

    PLAYER_INPUT_SAFARI_BALL = PLAYER_INPUT_FIGHT,
    PLAYER_INPUT_SAFARI_BAIT = PLAYER_INPUT_ITEM,
    PLAYER_INPUT_SAFARI_ROCK = PLAYER_INPUT_PARTY,
    PLAYER_INPUT_SAFARI_RUN = PLAYER_INPUT_RUN,
    PLAYER_INPUT_SAFARI_WAIT,

    PLAYER_INPUT_PAL_PARK_BALL = PLAYER_INPUT_FIGHT,
    PLAYER_INPUT_PAL_PARK_RUN = PLAYER_INPUT_RUN,

    PLAYER_INPUT_MOVE_1 = 1,
    PLAYER_INPUT_MOVE_2,
    PLAYER_INPUT_MOVE_3,
    PLAYER_INPUT_MOVE_4,

    PLAYER_INPUT_PARTY_SLOT_1 = 1,
    PLAYER_INPUT_PARTY_SLOT_2,
    PLAYER_INPUT_PARTY_SLOT_3,
    PLAYER_INPUT_PARTY_SLOT_4,
    PLAYER_INPUT_PARTY_SLOT_5,
    PLAYER_INPUT_PARTY_SLOT_6,

    PLAYER_INPUT_TARGET_BATTLER_1 = 1,
    PLAYER_INPUT_TARGET_BATTLER_2,
    PLAYER_INPUT_TARGET_BATTLER_3,
    PLAYER_INPUT_TARGET_BATTLER_4,

    PLAYER_INPUT_CANCEL = 0xFF,
};

#endif // TRAINER_AI_H
