// Test: Bullet Seed - break Substitute
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .weather = FIELD_CONDITION_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,
    .playerParty = {
        {
            .species = SPECIES_CARNIVINE,
            .level = 20,
            .form = 0,
            .ability = ABILITY_LEVITATE,
            .item = ITEM_LOADED_DICE,
            .moves = { MOVE_BULLET_SEED, MOVE_NONE, MOVE_NONE, MOVE_NONE },
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
    .enemyParty = { {
                        .species = SPECIES_SWAMPERT,
                        .level = 54,
                        .form = 0,
                        .ability = ABILITY_PRESSURE,
                        .item = ITEM_NONE,
                        .moves = { MOVE_SUBSTITUTE, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                        .hp = FULL_HP, //188: sub: 47
                        .status = 0,
                        .condition2 = 0,
                        .moveEffectFlags = 0,
                    },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE } },
    .playerScript = { {
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
                         { ACTION_NONE, 0 },
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
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
    }
}
END_TEST
