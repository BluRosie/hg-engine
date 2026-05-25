// Test: Pursuit - trigger both pursuit on hard switch in doubles and mega
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

    {   .battleType = BATTLE_TYPE_DOUBLE,
        .weather = WEATHER_NONE,
        .fieldCondition = 0,
        .terrain = TERRAIN_NONE,
        .playerParty = {
            {
                .species = SPECIES_MANECTRIC,
                .level = 50,
                .form = 0,
                .ability = ABILITY_LIGHTNING_ROD,
                .item = ITEM_MANECTITE,
                .moves = { MOVE_PURSUIT, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            {
                .species = SPECIES_HOUNDOOM,
                .level = 50,
                .form = 0,
                .ability = ABILITY_FLASH_FIRE,
                .item = ITEM_HOUNDOOMINITE,
                .moves = { MOVE_PURSUIT, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE } },
        .enemyParty = { {
                            .species = SPECIES_GARCHOMP,
                            .level = 50,
                            .form = 0,
                            .ability = ABILITY_ROUGH_SKIN,
                            .item = ITEM_NONE,
                            .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                            .hp = FULL_HP,
                            .status = 0,
                            .condition2 = 0,
                            .moveEffectFlags = 0,
                        },
            {
                .species = SPECIES_FORRETRESS,
                .level = 50,
                .form = 0,
                .ability = ABILITY_OVERCOAT,
                .item = ITEM_NONE,
                .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            {
                .species = SPECIES_GYARADOS,
                .level = 50,
                .form = 0,
                .ability = ABILITY_INTIMIDATE,
                .item = ITEM_NONE,
                .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE } },
        .playerScript = { {
                              { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_SECOND },
                              { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_SECOND },
                              { ACTION_NONE, 0 },
                              { ACTION_NONE, 0 },
                              { ACTION_NONE, 0 },
                              { ACTION_NONE, 0 },
                              { ACTION_NONE, 0 },
                              { ACTION_NONE, 0 },
                          },
            {
                { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_SECOND },
                { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_SECOND },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
            } },
        .enemyScript = { {
                             { ACTION_SWITCH_SLOT_2, 0 },
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
            } },
        .expectations = {
            { .expectationType = EXPECTATION_TYPE_MESSAGE_CONTAINS, .expectationValue.message = "withdrew Garchomp!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Manectric’s Manectite is reacting to the Key Stone!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Manectric has Mega Evolved into Mega Manectric!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Manectric’s Intimidate cuts the opposing Garchomp’s Attack!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Manectric used Pursuit!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Houndoom used Pursuit!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Garchomp's Rough Skin hurt Houndoom!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Gyarados's Intimidate cuts Manectric's Attack!" },
        },
        .knownFailing = TRUE,
    },
#ifndef GET_TEST_CASE_ONLY
};
#endif
