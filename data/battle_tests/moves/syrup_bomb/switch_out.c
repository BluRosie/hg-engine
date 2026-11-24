// Test: Syrup Bomb - Sticky Syrup is removed when the user switches out
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .weather = FIELD_CONDITION_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,
    .playerParty = {
        {
            .species = SPECIES_WOBBUFFET,
            .level = 100,
            .form = 0,
            .ability = ABILITY_TELEPATHY,
            .item = ITEM_NONE,
            .moves = { MOVE_SYRUP_BOMB, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, },
            .hp = FULL_HP,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_WYNAUT,
            .level = 50,
            .form = 0,
            .ability = ABILITY_TELEPATHY,
            .item = ITEM_NONE,
            .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE, },
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
            .species = SPECIES_WOBBUFFET,
            .level = 50,
            .form = 0,
            .ability = ABILITY_TELEPATHY,
            .item = ITEM_NONE,
            .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE, },
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
            { ACTION_SWITCH_SLOT_1, 0 },
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
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
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
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
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Wobbuffet used Syrup Bomb!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wobbuffet got covered in sticky candy syrup!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wobbuffet used Sleep Talk!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wobbuffet's Speed fell!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE_CONTAINS, .expectationValue.message = "Wobbuffet" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE_CONTAINS, .expectationValue.message = "Wynaut" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wobbuffet used Sleep Talk!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE_DOES_NOT_CONTAIN, .expectationValue.message = "Speed fell" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wobbuffet used Sleep Talk!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
    }
}
END_TEST
