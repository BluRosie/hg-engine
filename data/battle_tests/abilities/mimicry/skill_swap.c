// Test: Mimicry activates immediately after Skill Swap
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER | BATTLE_TYPE_DOUBLES,
    .playerParty = {
        {
            .species = SPECIES_STUNFISK,
            .level = 40,
            .form = 1,
            .ability = ABILITY_MIMICRY,
            .moves = { MOVE_SLEEP_TALK, MOVE_SPLASH },
            .hp = FULL_HP
        },
        {
            .species = SPECIES_SHIFTRY,
            .level = 50,
            .ability = ABILITY_CHLOROPHYLL,
            .moves = { MOVE_GRASSY_TERRAIN, MOVE_SKILL_SWAP },
            .hp = FULL_HP
        },
    },
    .enemyParty = {
        {
            .species = SPECIES_WOBBUFFET,
            .level = 1,
            .ability = ABILITY_TELEPATHY,
            .moves = { MOVE_SLEEP_TALK },
            .hp = FULL_HP
        },
        {
            .species = SPECIES_WOBBUFFET,
            .level = 1,
            .ability = ABILITY_TELEPATHY,
            .moves = { MOVE_SLEEP_TALK },
            .hp = FULL_HP
        },
    },
    .playerScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
            { ACTION_NONE, 0 },
        },
        {
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
            { ACTION_NONE, 0 },
        },
    },
    .enemyScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_NONE, 0 },
        },
        {
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_NONE, 0 },
        },
    },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_BATTLER_TYPES, .battlerIDOrPartySlot = BATTLER_PLAYER_FIRST, .expectationValue.types = { TYPE_GRASS, TYPE_GRASS } },
        { .expectationType = EXPECTATION_TYPE_BATTLER_TYPES, .battlerIDOrPartySlot = BATTLER_PLAYER_SECOND, .expectationValue.types = { TYPE_GRASS, TYPE_GRASS } },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Shiftry's Mimicry" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Shiftry's type changed to Grass!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Stunfisk used Splash!" },
    }
}
END_TEST
