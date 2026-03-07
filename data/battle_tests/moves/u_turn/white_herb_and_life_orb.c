// Test: U-Turn - Weak Armor, Life Orb, Switch, Ability, White Herb
#ifndef GET_TEST_CASE_ONLY

#include "../../../../include/battle.h"
#include "../../../../include/constants/ability.h"
#include "../../../../include/constants/battle_message_constants.h"
#include "../../../../include/constants/item.h"
#include "../../../../include/constants/moves.h"
#include "../../../../include/constants/species.h"
#include "../../../../include/test_battle.h"

// each test file is a separate .c file in battle_tests/ for better organization
const struct TestBattleScenario BattleTests[] = {

#endif

    {   .battleType = BATTLE_TYPE_SINGLE,
        .weather = WEATHER_NONE,
        .fieldCondition = 0,
        .terrain = TERRAIN_NONE,
        .playerParty = {
            {
                .species = SPECIES_ONIX,
                .level = 50,
                .form = 0,
                .ability = ABILITY_WEAK_ARMOR,
                .item = ITEM_WHITE_HERB,
                .moves = { MOVE_SPLASH, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE }
        },
        .enemyParty = {
            {
                            .species = SPECIES_BEEDRILL,
                            .level = 50,
                            .form = 0,
                            .ability = ABILITY_SWARM,
                            .item = ITEM_LIFE_ORB,
                            .moves = { MOVE_U_TURN, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                            .hp = FULL_HP,
                            .status = 0,
                            .condition2 = 0,
                            .moveEffectFlags = 0,
                        }, 
            {
                .species = SPECIES_LITTEN,
                .level = 50,
                .form = 0,
                .ability = ABILITY_INTIMIDATE,
                .item = ITEM_NONE,
                .moves = { MOVE_SPLASH, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE }
        },
        .playerScript = {
            {
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
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
            }
        },
        .enemyScript = {
            {
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
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
            }
        },
        .expectations = {
            { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_PLAYER_FIRST, .expectationValue.hpTaken = { 32, 32, 32, 32, 32, 35, 35, 35, 35, 35, 36, 36, 36, 36, 36, 39 } },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Onix's Weak Armor cut its Defense!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Onix's Weak Armor raised its Speed sharply!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Beedrill lost some of its HP!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE_CONTAINS, .expectationValue.message = "The opposing Beedrill went back to" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Onix returned its stats to normal using its White Herb!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Litten's Intimidate cuts Onix's Attack!" },
        },
    },
#ifndef GET_TEST_CASE_ONLY
};
#endif
