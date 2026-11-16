// Test: Zero to Hero - Trace cannot copy it
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .playerParty = {
        { .species = SPECIES_PALAFIN, .level = 50, .form = 0, .ability = ABILITY_ZERO_TO_HERO, .moves = { MOVE_SLEEP_TALK }, .hp = FULL_HP },
    },
    .enemyParty = {
        { .species = SPECIES_RALTS, .level = 50, .ability = ABILITY_TRACE, .moves = { MOVE_SLEEP_TALK }, .hp = FULL_HP },
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
        { .expectationType = EXPECTATION_TYPE_MESSAGE_CONTAINS, .expectationValue.message = "Go! Palafin!" },
        { .expectationType = EXPECTATION_TYPE_NOT_MESSAGE, .expectationValue.message = "Ralts's Trace" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
    }
}
END_TEST
