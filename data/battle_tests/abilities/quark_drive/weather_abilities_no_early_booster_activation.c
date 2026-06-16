// Test: Quark Drive activates after all Weather setting abilities, not immediately after.
// https://bsky.app/profile/nerdofnow.bsky.social/post/3lg2ox2ccm22v
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_DOUBLE,
    .weather = WEATHER_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,

    .playerParty = {
        {
            .species = SPECIES_IRON_BUNDLE,
            .level = 50,
            .form = 0,
            .ability = ABILITY_QUARK_DRIVE,
            .item = ITEM_BOOSTER_ENERGY,
            .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
            .hp = FULL_HP,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_TORKOAL,
            .level = 50,
            .form = 0,
            .ability = ABILITY_DROUGHT,
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

    .enemyParty = { {
                        .species = SPECIES_SALAMENCE,
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
        {
            .species = SPECIES_VULPIX,
            .level = 50,
            .form = 1,
            .ability = ABILITY_SNOW_WARNING,
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
        { .species = SPECIES_NONE } },

    .playerScript = { {
                          { ACTION_NONE, 0 },
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
                         { ACTION_NONE, 0 },
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
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "IronBundle's Attack fell!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Torkoal's Attack fell!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "It started to snow!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The sunlight turned harsh!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "IronBundle used the Booster Energy to activate Quark Drive!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "IronBundle's Speed was heightened!" },
    }
}
END_TEST
