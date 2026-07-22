// Test: Drought/Desolate Land/Sunny Day/Snowscape cannot override overworld weather
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_SINGLE,
    .weather = WEATHER_RAIN_PERMANENT,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,

    .playerParty = {
        {
            .species = SPECIES_NINETALES,
            .level = 50,
            .form = 0,
            .ability = ABILITY_DROUGHT,
            .item = ITEM_NONE,
            .moves = { MOVE_SUNNY_DAY, MOVE_NONE, MOVE_NONE, MOVE_NONE },
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

    .enemyParty = { {
                        .species = SPECIES_GROUDON,
                        .level = 50,
                        .form = 0,
                        .ability = ABILITY_DROUGHT,
                        .item = ITEM_RED_ORB,
                        .moves = { MOVE_SNOWSCAPE, MOVE_NONE, MOVE_NONE, MOVE_NONE },
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
            { ACTION_MOVE_SLOT_1, 0 },
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
    }
}
END_TEST
