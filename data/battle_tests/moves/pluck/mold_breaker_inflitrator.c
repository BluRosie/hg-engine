// Test: Pluck - Mold Breaker ignores Sticky Hold, Infiltrator ignores Substitute
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_DOUBLES,
    .weather = FIELD_CONDITION_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,
    .playerParty = {
        {
            .species = SPECIES_STARLY,
            .level = 50,
            .form = 0,
            .ability = ABILITY_INFILTRATOR,
            .item = ITEM_NONE,
            .moves = { MOVE_PLUCK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
            .hp = 20,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_PIDGEY,
            .level = 50,
            .form = 0,
            .ability = ABILITY_MOLD_BREAKER,
            .item = ITEM_NONE,
            .moves = { MOVE_PLUCK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
            .hp = 20,
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
            .species = SPECIES_SABLEYE,
            .level = 40,
            .form = 0,
            .ability = ABILITY_PRANKSTER,
            .item = ITEM_SITRUS_BERRY,
            .moves = { MOVE_SUBSTITUTE, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
            .hp = FULL_HP,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_MUK,
            .level = 40,
            .form = 0,
            .ability = ABILITY_STICKY_HOLD,
            .item = ITEM_ORAN_BERRY,
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
        },
        {
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_SECOND },
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
        },
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
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Sableye made a substitute!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Starly used Pluck!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Starly stole and ate its target's Sitrus Berry!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Starly restored its health using its Sitrus Berry!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Pidgey used Pluck!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Pidgey stole and ate its target's Oran Berry!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Pidgey restored its health using its Oran Berry!" },
    }
}
END_TEST
