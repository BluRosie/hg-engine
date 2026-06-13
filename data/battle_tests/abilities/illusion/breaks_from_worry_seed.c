// Test: Illusion - breaks if hit by worry seed
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_SINGLE,
    .weather = WEATHER_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,
    .playerParty = {
        {
            .species = SPECIES_ZOROARK,
            .level = 50,
            .form = 1,
            .ability = ABILITY_ILLUSION,
            .item = ITEM_NONE,
            .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
            .hp = FULL_HP,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_SLOWBRO,
            .level = 50,
            .form = 2,
            .ability = ABILITY_REGENERATOR,
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
            .species = SPECIES_SPRIGATITO,
            .level = 1,
            .form = 0,
            .ability = ABILITY_OVERGROW,
            .item = ITEM_NONE,
            .moves = { MOVE_WORRY_SEED, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
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
    .enemyScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
        }
    },
    .expectations = { // TODO confirm this would be how it goes
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Slowbro used Sleep Talk!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Sprigatito used Worry Seed!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Slowbro acquired Insomnia!" },
        // i do not think popup happens because the ability is changed.  message still plays but that can be changed too
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Zoroark's illusion wore off!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Zoroark used Sleep Talk!" },
    },
}
END_TEST
