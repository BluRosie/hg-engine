// Test: Skill Swap - swapped entry ability activates
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .weather = FIELD_CONDITION_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,
    .playerParty = {
        {
            .species = SPECIES_NINETALES,
            .level = 50,
            .form = 0,
            .ability = ABILITY_DROUGHT,
            .item = ITEM_NONE,
            .moves = { MOVE_SKILL_SWAP, MOVE_NONE, MOVE_NONE, MOVE_NONE },
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
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE } },
    .playerScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
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
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Ninetales's Drought" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Gyarados's Intimidate" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Ninetales used Skill Swap!" }, // TODO: once we have popup recolering/udpdate
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Ninetales's Drought" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Gyarados's Intimidate" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Ninetales's Intimidate" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Gyarados's Drought" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Ninetales swapped Abilities with its target!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Ninetales's Intimidate" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Gyarados's Attack fell!" },
    }
}
END_TEST
