// Test: Zero to Hero - activates after Flip Turn
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .playerParty = {
        { .species = SPECIES_PALAFIN, .level = 1, .form = 0, .ability = ABILITY_ZERO_TO_HERO, .moves = { MOVE_FLIP_TURN }, .hp = FULL_HP },
        { .species = SPECIES_WOBBUFFET, .level = 50, .ability = ABILITY_SHADOW_TAG, .moves = { MOVE_SLEEP_TALK }, .hp = FULL_HP },
    },
    .enemyParty = {
        { .species = SPECIES_WOBBUFFET, .level = 100, .ability = ABILITY_TELEPATHY, .moves = { MOVE_CELEBRATE, MOVE_TACKLE }, .hp = FULL_HP },
    },
    .playerScript = { {
        { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
        { ACTION_SWITCH_SLOT_0, 0 },
        { ACTION_NONE, 0 },
    } },
    .enemyScript = { {
        { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
        { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
        { ACTION_NONE, 0 },
    } },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Palafin used Flip Turn!" },
        { .expectationType = EXPECTATION_TYPE_PARTY_FORM, .battlerIDOrPartySlot = 0, .expectationValue.formID = 1 },
        { .expectationType = EXPECTATION_TYPE_MESSAGE_CONTAINS, .expectationValue.message = "Go! Palafin!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Palafin's Zero to Hero" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Palafin underwent a heroic transformation!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wobbuffet used Tackle!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Palafin fainted!" },
        { .expectationType = EXPECTATION_TYPE_PARTY_FORM, .battlerIDOrPartySlot = 0, .expectationValue.formID = 1 },
    }
}
END_TEST
