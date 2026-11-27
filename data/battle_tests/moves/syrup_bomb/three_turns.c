// Test: Syrup Bomb - Syrup Bomb covers the foe in sticky syrup for 3 turns
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
            .level = 50,
            .form = 0,
            .ability = ABILITY_TELEPATHY,
            .item = ITEM_NONE,
            .moves = { MOVE_SYRUP_BOMB, MOVE_SLEEP_TALK, MOVE_SCARY_FACE, MOVE_NONE, },
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
            .species = SPECIES_WOBBUFFET,
            .level = 75,
            .form = 0,
            .ability = ABILITY_TELEPATHY,
            .item = ITEM_NONE,
            .moves = { MOVE_SLEEP_TALK, MOVE_RAPID_SPIN, MOVE_NONE, MOVE_NONE, },
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
            { ACTION_MOVE_SLOT_3, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_3, BATTLER_ENEMY_FIRST },
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
            { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
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
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wobbuffet's Speed rose!" },//+1
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Wobbuffet used Syrup Bomb!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wobbuffet got covered in sticky candy syrup!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wobbuffet's Speed fell!" }, //0
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Wobbuffet used Scary Face!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wobbuffet's Speed harshly fell!" }, //-2
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wobbuffet's Speed fell!" }, //-3
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wobbuffet's Speed fell!" }, //-4
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Wobbuffet used Scary Face!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wobbuffet's Speed harshly fell!" }, //-6
    }
}
END_TEST
