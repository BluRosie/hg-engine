// Test: Drizzle/Primordial Sea/Rain Dance/Sandstorm cannot override overworld weather
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
        .weather = WEATHER_SUNNY_PERMANENT,
        .fieldCondition = 0,
        .terrain = TERRAIN_NONE,

        .playerParty = {
            {
                .species = SPECIES_POLITOED,
                .level = 50,
                .form = 0,
                .ability = ABILITY_DRIZZLE,
                .item = ITEM_NONE,
                .moves = { MOVE_RAIN_DANCE, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                .hp = 0,
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
                            .species = SPECIES_KYOGRE,
                            .level = 50,
                            .form = 0,
                            .ability = ABILITY_DRIZZLE,
                            .item = ITEM_BLUE_ORB,
                            .moves = { MOVE_SANDSTORM, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                            .hp = 0,
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
                              { ACTION_MOVE_SLOT_1, 0 },
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
            } },

        .enemyScript = { {
                             { ACTION_MOVE_SLOT_1, 0 },
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
            } },

        .expectations = {
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
        } },

#ifndef GET_TEST_CASE_ONLY
};
#endif
