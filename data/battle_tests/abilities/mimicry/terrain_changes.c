// Test: Mimicry follows terrain changes and restores the original types when terrain is removed
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER | BATTLE_TYPE_DOUBLES,
    .playerParty = {
        {
            .species = SPECIES_STUNFISK,
            .level = 10,
            .form = 1,
            .ability = ABILITY_MIMICRY,
            .moves = { MOVE_PSYCHIC_TERRAIN, MOVE_STEEL_ROLLER, MOVE_SLEEP_TALK },
            .hp = FULL_HP
        },
        {
            .species = SPECIES_WOBBUFFET,
            .level = 30,
            .ability = ABILITY_TELEPATHY,
            .moves = { MOVE_MISTY_TERRAIN, MOVE_SLEEP_TALK },
            .hp = FULL_HP
        },
    },
    .enemyParty = {
        {
            .species = SPECIES_WOBBUFFET,
            .level = 70,
            .ability = ABILITY_TELEPATHY,
            .moves = { MOVE_GRASSY_TERRAIN, MOVE_SLEEP_TALK },
            .hp = FULL_HP
        },
        {
            .species = SPECIES_WOBBUFFET,
            .level = 100,
            .ability = ABILITY_TELEPATHY,
            .moves = { MOVE_ELECTRIC_TERRAIN, MOVE_SLEEP_TALK },
            .hp = FULL_HP
        },
    },
    .playerScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_3, BATTLER_ENEMY_FIRST },
            { ACTION_NONE, 0 },
        },
        {
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
            { ACTION_NONE, 0 },
        },
    },
    .enemyScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
            { ACTION_NONE, 0 },
        },
        {
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
            { ACTION_NONE, 0 },
        },
    },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Stunfisk's Mimicry" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Stunfisk's type changed to Electric!" },
        { .expectationType = EXPECTATION_TYPE_BATTLER_TYPES, .battlerIDOrPartySlot = BATTLER_PLAYER_FIRST, .expectationValue.types = { TYPE_ELECTRIC, TYPE_ELECTRIC } },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Stunfisk's Mimicry" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Stunfisk's type changed to Grass!" },
        { .expectationType = EXPECTATION_TYPE_BATTLER_TYPES, .battlerIDOrPartySlot = BATTLER_PLAYER_FIRST, .expectationValue.types = { TYPE_GRASS, TYPE_GRASS } },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Stunfisk's Mimicry" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Stunfisk's type changed to Fairy!" },
        { .expectationType = EXPECTATION_TYPE_BATTLER_TYPES, .battlerIDOrPartySlot = BATTLER_PLAYER_FIRST, .expectationValue.types = { TYPE_FAIRY, TYPE_FAIRY } },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Stunfisk's Mimicry" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Stunfisk's type changed to Psychic!" },
        { .expectationType = EXPECTATION_TYPE_BATTLER_TYPES, .battlerIDOrPartySlot = BATTLER_PLAYER_FIRST, .expectationValue.types = { TYPE_PSYCHIC, TYPE_PSYCHIC } },
        { .expectationType = EXPECTATION_TYPE_BATTLER_TYPES, .battlerIDOrPartySlot = BATTLER_PLAYER_FIRST, .expectationValue.types = { TYPE_GROUND, TYPE_STEEL } },
    }
}
END_TEST
