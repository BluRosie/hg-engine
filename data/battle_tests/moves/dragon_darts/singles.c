// Test: Dragon Darts - Hit twice in singles
#ifndef GET_TEST_CASE_ONLY

#include "../../../../include/battle.h"
#include "../../../../include/constants/ability.h"
#include "../../../../include/constants/battle_message_constants.h"
#include "../../../../include/constants/item.h"
#include "../../../../include/constants/moves.h"
#include "../../../../include/constants/species.h"
#include "../../../../include/test_battle.h"

// each test file is a separate .c file in battle_tests/ for better organization
const struct TestBattleScenario BattleTests[] = {

#endif

    {   .battleType = BATTLE_TYPE_SINGLE,
        .weather = WEATHER_NONE,
        .fieldCondition = 0,
        .terrain = TERRAIN_NONE,
        .playerParty = {
            {
                .species = SPECIES_DRAGAPULT,
                .level = 50,
                .form = 0,
                .ability = ABILITY_CLEAR_BODY,
                .item = ITEM_NONE,
                .moves = { MOVE_DRAGON_DARTS, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE }
        },
        .enemyParty = { 
                        {
                            .species = SPECIES_FERROTHORN,
                            .level = 50,
                            .form = 0,
                            .ability = ABILITY_IRON_BARBS,
                            .item = ITEM_NONE,
                            .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                            .hp = FULL_HP,
                            .status = 0,
                            .condition2 = 0,
                            .moveEffectFlags = 0,
                        },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE }
        },
        .playerScript = {
            {
                              { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
                              { ACTION_NONE, 0 },
                              { ACTION_NONE, 0 },
                              { ACTION_NONE, 0 },
                              { ACTION_NONE, 0 },
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
            }
        },
        .enemyScript = {
            {
                             { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                             { ACTION_NONE, 0 },
                             { ACTION_NONE, 0 },
                             { ACTION_NONE, 0 },
                             { ACTION_NONE, 0 },
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
            }
        },
        .expectations = {
            { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 13, 13, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 16 } },
            { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 13, 13, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 16 } },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The Pokemon was hit 2 time(s)!" },
        },
        .knownFailing = TRUE,
    },
#ifndef GET_TEST_CASE_ONLY
};
#endif
