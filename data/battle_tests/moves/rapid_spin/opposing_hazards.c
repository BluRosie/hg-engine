// Test: Rapid Spin - does not remove the hazards on the opposing side
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .weather = FIELD_CONDITION_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,
    .playerParty = {
        {
            .species = SPECIES_FORRETRESS,
            .level = 50,
            .form = 0,
            .ability = ABILITY_STURDY,
            .item = ITEM_NONE,
            .moves = { MOVE_STEALTH_ROCK, MOVE_RAPID_SPIN, MOVE_SLEEP_TALK, MOVE_NONE },
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
            .species = SPECIES_SKARMORY,
            .level = 30,
            .form = 0,
            .ability = ABILITY_STURDY,
            .item = ITEM_NONE,
            .moves = { MOVE_STEALTH_ROCK, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
            .hp = FULL_HP,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_WOBBUFFET,
            .level = 50,
            .form = 0,
            .ability = ABILITY_SHADOW_TAG,
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
    .playerScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
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
            { ACTION_SWITCH_SLOT_1, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
        }
    },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Forretress used Stealth Rock!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Skarmory used Stealth Rock!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Forretress used Rapid Spin!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Forretress blew away Stealth Rock!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Skarmory used Stealth Rock!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE_CONTAINS, .expectationValue.message = "sent out Wobbuffet!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Pointed stones dug into the opposing Wobbuffet!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Forretress used Rapid Spin!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Forretress blew away Stealth Rock!" },
    }
}
END_TEST
