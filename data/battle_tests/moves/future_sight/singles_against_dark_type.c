// Test: Future Sight - doesnt affect Dark types
#ifndef GET_TEST_CASE_ONLY

#include "../../../../include/battle.h"
#include "../../../../include/constants/ability.h"
#include "../../../../include/constants/item.h"
#include "../../../../include/constants/moves.h"
#include "../../../../include/constants/species.h"
#include "../../../../include/test_battle.h"

const struct TestBattleScenario BattleTests[] = {

#endif

    {
        .battleType = BATTLE_TYPE_SINGLE,
        .weather = WEATHER_NONE,
        .fieldCondition = 0,
        .terrain = TERRAIN_NONE,
        .playerParty = {
            {
                .species = SPECIES_DELPHOX,
                .level = 50,
                .form = 0,
                .ability = ABILITY_BLAZE,
                .item = ITEM_LIFE_ORB,
                .moves = { MOVE_FUTURE_SIGHT, MOVE_NONE, MOVE_NONE, MOVE_NONE },
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
        .enemyParty = {
            {
                .species = SPECIES_SANDILE,
                .level = 45,
                .form = 0,
                .ability = ABILITY_MOXIE,
                .item = ITEM_SITRUS_BERRY,
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
            { .species = SPECIES_NONE } },
        .playerScript = {
            {
                  { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
                  { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
                  { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
                  { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
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
        .enemyScript = {
            {
                 { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                 { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
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
            }
        },
        .expectations = {
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Delphox used Future Sight!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Sandile used Sleep Talk!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Sandile took the Future Sight attack!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "It doesn't affect the opposing Sandile..." },
        },
    },
#ifndef GET_TEST_CASE_ONLY
};
// each test file is a separate .c file in battle_tests/ for better organization
#endif
