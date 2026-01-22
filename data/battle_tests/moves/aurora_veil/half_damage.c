// Test: Aurora Veil - basic functionality
#ifndef GET_TEST_CASE_ONLY

#include "../../../../include/battle.h"
#include "../../../../include/constants/ability.h"
#include "../../../../include/constants/item.h"
#include "../../../../include/constants/moves.h"
#include "../../../../include/constants/species.h"
#include "../../../../include/test_battle.h"
#include "../../../../include/constants/battle_message_constants.h"

// each test file is a separate .c file in battle_tests/ for better organization
const struct TestBattleScenario BattleTests[] = {

#endif

    {
        .battleType = BATTLE_TYPE_SINGLE,
        .weather = WEATHER_NONE,
        .fieldCondition = 0,
        .terrain = MISTY_TERRAIN,
        .playerParty = {
            {
                .species = SPECIES_NINETALES,
                .level = 100,
                .form = 1,
                .ability = ABILITY_SNOW_WARNING,
                .item = ITEM_NONE,
                .moves = { MOVE_AURORA_VEIL, MOVE_SPLASH, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE } },
        .enemyParty = { {
                            .species = SPECIES_TYPHLOSION,
                            .level = 100,
                            .form = 0,
                            .ability = ABILITY_BLAZE,
                            .item = ITEM_NONE,
                            .moves = { MOVE_FLAMETHROWER, MOVE_SPLASH, MOVE_NONE, MOVE_NONE },
                            .hp = FULL_HP,
                            .status = 0,
                            .condition2 = 0,
                            .moveEffectFlags = 0,
                        },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE } },
        .playerScript = { {
                              { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                              { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                              { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
                              { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
                              { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
                              { ACTION_NONE, 0 },
                              { ACTION_NONE, 0 },
                              { ACTION_NONE, 0 },
                          },
            {
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
            } },
        .enemyScript = { {
                             { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                             { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                             { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
                             { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
                             { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
                             { ACTION_NONE, 0 },
                             { ACTION_NONE, 0 },
                             { ACTION_NONE, 0 },
                         },
            {
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
            } },
        .expectations = {
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.messageID = BATTLE_MSG_STARTED_TO_SNOW },
            { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_PLAYER_FIRST, .expectationValue.hpTaken = { 105, 106, 108, 109, 109, 111, 112, 114, 115, 117, 117, 118, 120, 121, 123, 124 } },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.messageID = BATTLE_MSG_SUPER_EFFECTIVE },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.messageID = BATTLE_MSG_BUT_IT_FAILED },
            { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_PLAYER_FIRST, .expectationValue.hpTaken = { 105, 106, 108, 109, 109, 111, 112, 114, 115, 117, 117, 118, 120, 121, 123, 124 } },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.messageID = BATTLE_MSG_SUPER_EFFECTIVE },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.messageID = BATTLE_MSG_SNOW_STOPPED },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.messageID = BATTLE_MSG_SIDE_EFFECT_WORE_OFF },
        } },
#ifndef GET_TEST_CASE_ONLY
};
#endif
