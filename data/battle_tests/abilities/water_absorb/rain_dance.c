// Test: Water Absorb - Rain Dance does not activate Water Absorb
#include "../../battle_tests.h"

BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .weather = FIELD_CONDITION_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,
    .playerParty = {
        {
            .species = SPECIES_WOOPER,
            .level = 1,
            .form = 0,
            .ability = ABILITY_WATER_ABSORB,
            .item = ITEM_NONE,
            .moves = { MOVE_RAIN_DANCE, MOVE_AQUA_RING, MOVE_NONE, MOVE_NONE },
            .hp = 1,
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
            .species = SPECIES_WOOPER,
            .level = 50,
            .form = 0,
            .ability = ABILITY_WATER_ABSORB,
            .item = ITEM_NONE,
            .moves = { MOVE_SLEEP_TALK, MOVE_LIFE_DEW, MOVE_NONE, MOVE_NONE },
            .hp = 1,
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
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
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
            { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
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
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Wooper used Rain Dance!" },
        { .expectationType = EXPECTATION_TYPE_NOT_MESSAGE, .expectationValue.message = "Wooper's Water Absorb" },
        { .expectationType = EXPECTATION_CURRENT_HP, .battlerIDOrPartySlot = BATTLER_PLAYER_FIRST, .expectationValue.currentHP = 1 },
        { .expectationType = EXPECTATION_CURRENT_HP, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.currentHP = 1 },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wooper used Life Dew!" },
        { .expectationType = EXPECTATION_TYPE_NOT_MESSAGE, .expectationValue.message = "Wooper's Water Absorb" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Wooper used Aqua Ring!" },
        { .expectationType = EXPECTATION_TYPE_NOT_MESSAGE, .expectationValue.message = "Wooper's Water Absorb" },
        { .expectationType = EXPECTATION_CURRENT_HP, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.currentHP = 34 },
    }
}
END_TEST
