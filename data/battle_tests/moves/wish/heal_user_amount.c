// Test: Wish - Heal after one turn
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
            .moves = { MOVE_WISH, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
            .hp = 1,//170
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
    .enemyParty = { {
                        .species = SPECIES_CLEFAIRY,
                        .level = 50,
                        .form = 0,
                        .ability = ABILITY_MAGIC_GUARD,
                        .item = ITEM_NONE,
                        .moves = { MOVE_WISH, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                        .hp = FULL_HP,//145
                        .status = 0,
                        .condition2 = 0,
                        .moveEffectFlags = 0,
                    },
        {
            .species = SPECIES_CHANSEY,
            .level = 100,
            .form = 0,
            .ability = ABILITY_SERENE_GRACE,
            .item = ITEM_NONE,
            .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
            .hp = 1,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE } },
    .playerScript = { {
                          { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
                          { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
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
        } },
    .enemyScript = { {
                         { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                         { ACTION_SWITCH_SLOT_1, 0 },
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
        } },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Clefable used Wish!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Clefairy used Wish!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE_CONTAINS, .expectationValue.message = "sent out Chansey!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Clefable's wish came true!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Clefable's HP was restored!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Clefairy's wish came true!" },
        { .expectationType = EXPECTATION_CURRENT_HP, .battlerIDOrPartySlot = 0, .expectationValue.currentHP = 86 }, // 1+170/2
        { .expectationType = EXPECTATION_CURRENT_HP, .battlerIDOrPartySlot = 1, .expectationValue.currentHP = 73 }, // 1+145/2
    }
}
END_TEST
