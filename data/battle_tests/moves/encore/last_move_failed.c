// Test: Encore - works if the last move failed
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .weather = FIELD_CONDITION_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,
    .playerParty = {
            {
                .species = SPECIES_SHUCKLE,
                .level = 50,
                .form = 0,
                .ability = ABILITY_CONTRARY,
                .item = ITEM_NONE,
                .moves = { MOVE_SUCKER_PUNCH, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
    },
    .enemyParty = {
            {
                .species = SPECIES_JOLTEON,
                .level = 50,
                .form = 0,
                .ability = ABILITY_NO_GUARD,
                .item = ITEM_NONE,
                .moves = { MOVE_ENCORE, MOVE_TACKLE, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
    },
    .playerScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
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
        },
    },
    .enemyScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
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
        },
    },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Shuckle used Sucker Punch!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Jolteon used Encore!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Shuckle must do an encore!" },
#ifdef ENCORE_CHAMPIONS_PRIORITY //TODO
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Shuckle used Sucker Punch!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Jolteon used Tackle!" },
#else
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Jolteon used Tackle!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "It’s not very effective..." },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Shuckle used Sucker Punch!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
#endif
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Shuckle used Sucker Punch!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Jolteon used Tackle!" },
    }
}
END_TEST
