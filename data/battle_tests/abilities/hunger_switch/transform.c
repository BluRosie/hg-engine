// Test: Hunger Switch does not change a Pokemon transformed into Morpeko
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .playerParty = {
        {
            .species = SPECIES_MORPEKO,
            .level = 50,
            .form = 0,
            .ability = ABILITY_HUNGER_SWITCH,
            .moves = { MOVE_CELEBRATE },
            .hp = FULL_HP
        },
    },
    .enemyParty = {
        {
            .species = SPECIES_WOBBUFFET,
            .level = 50,
            .ability = ABILITY_TELEPATHY,
            .moves = { MOVE_TRANSFORM, MOVE_CELEBRATE },
            .hp = FULL_HP
        },
    },
    .playerScript = { {
        { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
        { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
        { ACTION_NONE, 0 },
    } },
    .enemyScript = { {
        { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
        { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
        { ACTION_NONE, 0 },
    } },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wobbuffet used Transform!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Wobbuffet transformed into Morpeko!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Morpeko transformed!" },
        { .expectationType = EXPECTATION_TYPE_NOT_MESSAGE, .expectationValue.message = "The opposing Wobbuffet transformed!" },
    }
}
END_TEST
