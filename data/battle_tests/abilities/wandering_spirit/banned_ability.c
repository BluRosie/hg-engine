// Test: Wandering Spirit does not swap a banned ability
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .playerParty = {
        {
            .species = SPECIES_WOBBUFFET,
            .level = 50,
            .ability = ABILITY_COMATOSE,
            .moves = { MOVE_LICK },
            .hp = FULL_HP
        },
    },
    .enemyParty = {
        {
            .species = SPECIES_YAMASK,
            .level = 50,
            .form = 1,
            .ability = ABILITY_WANDERING_SPIRIT,
            .moves = { MOVE_SLEEP_TALK },
            .hp = FULL_HP
        },
    },
    .playerScript = { {
        { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
        { ACTION_NONE, 0 },
    } },
    .enemyScript = { {
        { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
        { ACTION_NONE, 0 },
    } },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Wobbuffet used Lick!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "It's super effective!" },
        { .expectationType = EXPECTATION_TYPE_NOT_MESSAGE, .expectationValue.message = "Yamask's Wandering Spirit" },
    }
}
END_TEST
