// Test: U-Turn - Iron Barbs,Rocky Helmet, Sitrus, Switch
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
                .species = SPECIES_FERROSEED,
                .level = 50,
                .form = 0,
                .ability = ABILITY_IRON_BARBS,
                .item = ITEM_ROCKY_HELMET,
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
            { .species = SPECIES_NONE } },
        .enemyParty = { {
                            .species = SPECIES_BEEDRILL,
                            .level = 35,
                            .form = 0,
                            .ability = ABILITY_SWARM,
                            .item = ITEM_SITRUS_BERRY,
                            .moves = { MOVE_U_TURN, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                            .hp = 51,
                            .status = 0,
                            .condition2 = 0,
                            .moveEffectFlags = 0,
                        },
            {
                .species = SPECIES_BEEDRILL,
                .level = 49,
                .form = 0,
                .ability = ABILITY_SWARM,
                .item = ITEM_LIFE_ORB,
                .moves = { MOVE_U_TURN, MOVE_NONE, MOVE_NONE, MOVE_NONE },
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
                { ACTION_NONE, 0 },
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
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
            } },
        .expectations = {
            { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_PLAYER_FIRST, .expectationValue.hpTaken = { 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 24, 24, 24, 24, 24, 25 } },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Ferroseed's Iron Barbs hurt the opposing Beedrill!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Beedrill is hurt by Ferroseed's Rocky Helmet!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Beedrill restored its health using its Sitrus Berry!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE_CONTAINS, .expectationValue.message = "The opposing Beedrill went back to" },
        },
    },
#ifndef GET_TEST_CASE_ONLY
};
#endif
