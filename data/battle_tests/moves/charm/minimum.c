// Test: Charm - only lowers Attack down to -6
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .weather = FIELD_CONDITION_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,
    .playerParty = {
        {
            .species = SPECIES_CLEFABLE,
            .level = 50,
            .form = 0,
            .ability = ABILITY_MAGIC_GUARD,
            .item = ITEM_NONE,
            .moves = { MOVE_GROWL, MOVE_CHARM, MOVE_NONE, MOVE_NONE },
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
            .species = SPECIES_MACHAMP,
            .level = 50,
            .form = 0,
            .ability = ABILITY_GUTS,
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
            { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
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
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
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
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Machamp's Attack fell!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Machamp's Attack harshly fell!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Machamp's Attack harshly fell!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Machamp's Attack fell!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Machamp's stats won't go any lower!" },
    }
}
END_TEST
