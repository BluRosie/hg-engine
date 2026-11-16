// Test: Screen Cleaner removes Reflect, Light Screen, and Aurora Veil from both sides
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER | BATTLE_TYPE_DOUBLES,
    .weather = FIELD_CONDITION_HAIL,
    .playerParty = {
        {
            .species = SPECIES_WOBBUFFET,
            .level = 80,
            .ability = ABILITY_TELEPATHY,
            .moves = { MOVE_REFLECT, MOVE_SLEEP_TALK },
            .hp = FULL_HP
        },
        {
            .species = SPECIES_WOBBUFFET,
            .level = 60,
            .ability = ABILITY_TELEPATHY,
            .moves = { MOVE_AURORA_VEIL, MOVE_SLEEP_TALK },
            .hp = FULL_HP
        },
        {
            .species = SPECIES_MR_RIME,
            .level = 50,
            .ability = ABILITY_SCREEN_CLEANER,
            .moves = { MOVE_SLEEP_TALK },
            .hp = FULL_HP
        },
    },
    .enemyParty = {
        {
            .species = SPECIES_WOBBUFFET,
            .level = 40,
            .ability = ABILITY_TELEPATHY,
            .moves = { MOVE_LIGHT_SCREEN, MOVE_SLEEP_TALK },
            .hp = FULL_HP
        },
        {
            .species = SPECIES_WOBBUFFET,
            .level = 20,
            .ability = ABILITY_TELEPATHY,
            .moves = { MOVE_SLEEP_TALK },
            .hp = FULL_HP
        },
    },
    .playerScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_SWITCH_SLOT_2, 0 },
            { ACTION_NONE, 0 },
        },
        {
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
            { ACTION_NONE, 0 },
        },
    },
    .enemyScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
            { ACTION_NONE, 0 },
        },
        {
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_NONE, 0 },
        },
    },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_SIDE_CONDITION_ABSENT, .battlerIDOrPartySlot = 0, .expectationValue.sideConditionMask = SIDE_STATUS_REFLECT | SIDE_STATUS_LIGHT_SCREEN | SIDE_STATUS_AURORA_VEIL },
        { .expectationType = EXPECTATION_TYPE_SIDE_CONDITION_ABSENT, .battlerIDOrPartySlot = 1, .expectationValue.sideConditionMask = SIDE_STATUS_REFLECT | SIDE_STATUS_LIGHT_SCREEN | SIDE_STATUS_AURORA_VEIL },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Mr. Rime's Screen Cleaner" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "All screens on the field were cleansed!" },
    }
}
END_TEST
