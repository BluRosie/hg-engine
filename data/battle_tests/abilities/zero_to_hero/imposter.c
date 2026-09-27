// Test: Zero to Hero - Imposter does not activate it after copying Palafin
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .playerParty = {
        { .species = SPECIES_PALAFIN, .level = 50, .form = 0, .ability = ABILITY_ZERO_TO_HERO, .moves = { MOVE_SCRATCH }, .hp = FULL_HP },
        { .species = SPECIES_WOBBUFFET, .level = 100, .ability = ABILITY_SHADOW_TAG, .moves = { MOVE_SLEEP_TALK }, .hp = FULL_HP },
    },
    .enemyParty = {
        { .species = SPECIES_DITTO, .level = 50, .ability = ABILITY_IMPOSTER, .moves = { MOVE_TRANSFORM }, .hp = FULL_HP },
        { .species = SPECIES_WOBBUFFET, .level = 1, .ability = ABILITY_TELEPATHY, .moves = { MOVE_SLEEP_TALK }, .hp = FULL_HP },
    },
    .playerScript = { {
        { ACTION_SWITCH_SLOT_1, 0 },
        { ACTION_SWITCH_SLOT_0, 0 },
        { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
        { ACTION_NONE, 0 },
    } },
    .enemyScript = { {
        { ACTION_SWITCH_SLOT_1, 0 },
        { ACTION_SWITCH_SLOT_0, 0 },
        { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
        { ACTION_NONE, 0 },
    } },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Palafin's Zero to Hero" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Palafin underwent a heroic transformation!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Ditto's Imposter" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Ditto transformed into Palafin!" },
        { .expectationType = EXPECTATION_TYPE_NOT_MESSAGE, .expectationValue.message = "The opposing Ditto's Zero to Hero" },
    }
}
END_TEST
