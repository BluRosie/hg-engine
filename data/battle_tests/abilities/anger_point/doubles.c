// Test: Anger Point - double critical hits
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

    { 
        .battleType = BATTLE_TYPE_DOUBLE,
        .weather = WEATHER_NONE,
        .fieldCondition = 0,
        .terrain = TERRAIN_NONE,
        .playerParty = {
            {
                .species = SPECIES_CLEFAIRY,
                .level = 15,
                .form = 0,
                .ability = ABILITY_UNAWARE,
                .item = ITEM_NONE,
                .moves = { MOVE_LASER_FOCUS, MOVE_DAZZLING_GLEAM, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            {
                .species = SPECIES_SNOM,
                .level = 50,
                .form = 0,
                .ability = ABILITY_ICE_SCALES,
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
            { .species = SPECIES_NONE }
        },
        .enemyParty = {
            {
                .species = SPECIES_TAUROS,
                .level = 50,
                .form = 0,
                .ability = ABILITY_ANGER_POINT,
                .item = ITEM_NONE,
                 .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            {
                .species = SPECIES_PRIMEAPE,
                .level = 50,
                .form = 0,
                .ability = ABILITY_ANGER_POINT,
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
            { .species = SPECIES_NONE }
        },
        .playerScript = {
            {
              { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
              { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
              { ACTION_NONE, 0 },
              { ACTION_NONE, 0 },
              { ACTION_NONE, 0 },
              { ACTION_NONE, 0 },
              { ACTION_NONE, 0 },
              { ACTION_NONE, 0 },
            },
            {
                { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
                { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
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
                 { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
             },
            {
                { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
            }
        },
        .expectations = {
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Clefairy used Dazzling Gleam!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "A critical hit on the opposing Tauros!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "A critical hit on the opposing Primeape!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Tauros's Anger Point raised its Attack drastically!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Primeape's Anger Point raised its Attack drastically!" },
        }
    },
#ifndef GET_TEST_CASE_ONLY
};
#endif
