// Test: Forest's Curse and Trick-or-Treat are mutually exclusive
#ifndef GET_TEST_CASE_ONLY

#include "../../../../include/battle.h"
#include "../../../../include/constants/ability.h"
#include "../../../../include/constants/item.h"
#include "../../../../include/constants/moves.h"
#include "../../../../include/constants/species.h"
#include "../../../../include/test_battle.h"

// each test file is a separate .c file in battle_tests/ for better organization
const struct TestBattleScenario BattleTests[] = {

#endif

    { .battleType = BATTLE_TYPE_SINGLE,
        .weather = WEATHER_NONE,
        .fieldCondition = 0,
        .terrain = TERRAIN_NONE,
        .playerParty = {
            {
                .species = SPECIES_THROH,
                .level = 50,
                .form = 0,
                .ability = ABILITY_INNER_FOCUS,
                .item = ITEM_NONE,
                .moves = { MOVE_CURSE, MOVE_SPLASH, MOVE_NONE, MOVE_NONE },
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
                            .species = SPECIES_SMEARGLE,
                            .level = 50,
                            .form = 0,
                            .ability = ABILITY_TECHNICIAN,
                            .item = ITEM_NONE,
                            .moves = { MOVE_TRICK_OR_TREAT, MOVE_ASTONISH, MOVE_FORESTS_CURSE, MOVE_EMBER },
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
                              { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
                              { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                              { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
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
            } },
        .enemyScript = { {
                             { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                             { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
                             { ACTION_MOVE_SLOT_3, BATTLER_PLAYER_FIRST },
                             { ACTION_MOVE_SLOT_4, BATTLER_PLAYER_FIRST },
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
            } },
        .expectations = {
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Ghost type was added to Throh!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Throh cut its own HP and put a curse on the opposing Smeargle!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "It's super effective!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Grass type was added to Throh!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Throh's Attack rose!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "It's super effective!" },
        } },
#ifndef GET_TEST_CASE_ONLY
};
#endif
