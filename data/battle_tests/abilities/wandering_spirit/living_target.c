// Test: Wandering Spirit swaps abilities after contact
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .playerParty = {
        {
            .species = SPECIES_EKANS,
            .level = 50,
            .ability = ABILITY_INTIMIDATE,
            .moves = { MOVE_POISON_FANG },
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
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Ekans used Poison Fang!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Yamask's Wandering Spirit" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Yamask's Intimidate" },
    }
}
END_TEST
