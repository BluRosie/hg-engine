// Test: Defog - clears order
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .weather = FIELD_CONDITION_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,
    .playerParty = {
        {
            .species = SPECIES_SKARMORY,
            .level = 50,
            .form = 0,
            .ability = ABILITY_STURDY,
            .item = ITEM_NONE,
            .moves = { MOVE_STEALTH_ROCK, MOVE_DEFOG, MOVE_SPIKES, MOVE_SLEEP_TALK },
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
        {
            .species = SPECIES_WYNAUT,
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
            { ACTION_MOVE_SLOT_3, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_3, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_4, BATTLER_ENEMY_FIRST },
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
            { ACTION_SWITCH_SLOT_1, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
        }
    },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Skarmory used Stealth Rock!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Skarmory used Spikes!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Skarmory used Defog!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Skarmory used Spikes!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Skarmory used Stealth Rock!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE_CONTAINS, .expectationValue.message = "sent out Wynaut!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wynaut was hurt by the spikes!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Pointed stones dug into the opposing Wynaut!" },
    }
}
END_TEST
