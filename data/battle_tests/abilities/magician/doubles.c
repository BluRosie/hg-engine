// Test: Magician - Steal Life Orb in Doubles, Life Orb Chip
#ifndef GET_TEST_CASE_ONLY

#include "../../../../include/battle.h"
#include "../../../../include/constants/ability.h"
#include "../../../../include/constants/item.h"
#include "../../../../include/constants/moves.h"
#include "../../../../include/constants/species.h"
#include "../../../../include/test_battle.h"

const struct TestBattleScenario BattleTests[] = {

#endif

    {
        .battleType = BATTLE_TYPE_DOUBLE,
        .weather = WEATHER_NONE,
        .fieldCondition = 0,
        .terrain = TERRAIN_NONE,
        .playerParty = {
            {
                .species = SPECIES_DELPHOX,
                .level = 50,
                .form = 0,
                .ability = ABILITY_MAGICIAN,
                .item = ITEM_NONE,
                .moves = { MOVE_INCINERATE, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            {
                .species = SPECIES_SNOM,
                .level = 50,
                .form = 0,
                .ability = ABILITY_ICE_SCALES,
                .item = ITEM_NONE,
                .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE } },
        .enemyParty = { {
                            .species = SPECIES_SWAMPERT,
                            .level = 50,
                            .form = 0,
                            .ability = ABILITY_TORRENT,
                            .item = ITEM_SITRUS_BERRY,
                            .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                            .hp = FULL_HP,
                            .status = 0,
                            .condition2 = 0,
                            .moveEffectFlags = 0,
                        },
            {
                .species = SPECIES_BLASTOISE,
                .level = 50,
                .form = 0,
                .ability = ABILITY_TORRENT,
                .item = ITEM_LIFE_ORB,
                .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE } },
        .playerScript = { {
                              { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
                              { ACTION_NONE, 0 },
                              { ACTION_NONE, 0 },
                              { ACTION_NONE, 0 },
                              { ACTION_NONE, 0 },
                              { ACTION_NONE, 0 },
                              { ACTION_NONE, 0 },
                              { ACTION_NONE, 0 },
                          },
            {
                { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
            } },
        .enemyScript = { {
                             { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                             { ACTION_NONE, 0 },
                             { ACTION_NONE, 0 },
                             { ACTION_NONE, 0 },
                             { ACTION_NONE, 0 },
                             { ACTION_NONE, 0 },
                             { ACTION_NONE, 0 },
                             { ACTION_NONE, 0 },
                         },
            {
                { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
            } },
        .expectations = {
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Delphox used Incinerate!" },
            { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 15, 15, 15, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 18 } }, // unboosted
            { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_SECOND, .expectationValue.hpTaken = { 13, 13, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 16 } }, 
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Swampert's Sitrus Berry was burned up!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Delphox stole the opposing Blastoise's Life Orb!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Delphox lost some of its HP!" },
        },
    },
#ifndef GET_TEST_CASE_ONLY
};
// each test file is a separate .c file in battle_tests/ for better organization
#endif
