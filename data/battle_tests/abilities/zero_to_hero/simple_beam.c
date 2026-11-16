// Test: Zero to Hero - Simple Beam fails
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .playerParty = {
        { .species = SPECIES_PALAFIN, .level = 50, .ability = ABILITY_ZERO_TO_HERO, .moves = { MOVE_SLEEP_TALK }, .hp = FULL_HP },
    },
    .enemyParty = {
        { .species = SPECIES_WOBBUFFET, .level = 50, .ability = ABILITY_TELEPATHY, .moves = { MOVE_SIMPLE_BEAM }, .hp = FULL_HP },
    },
    .playerScript = { { { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST }, { ACTION_NONE, 0 } } },
    .enemyScript = { { { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST }, { ACTION_NONE, 0 } } },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wobbuffet used Simple Beam!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "But it failed!" },
    }
}
END_TEST
