// Test: Flare Blitz - Faint from recoil
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
                .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
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
                            .species = SPECIES_ARCANINE,
                            .level = 50,
                            .form = 0,
                            .ability = ABILITY_FLASH_FIRE,
                            .item = ITEM_NONE,
                            .moves = { MOVE_FLARE_BLITZ, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                            .hp = 1,
                            .status = 0,
                            .condition2 = 0,
                            .moveEffectFlags = 0,
                        },
            {
                .species = SPECIES_CUBONE,
                .level = 50,
                .form = 0,
                .ability = ABILITY_ROCK_HEAD,
                .item = ITEM_SITRUS_BERRY,
                .moves = { MOVE_DOUBLE_EDGE, MOVE_NONE, MOVE_NONE, MOVE_NONE },
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
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Arcanine was damaged by the recoil!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Arcanine fainted!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE_CONTAINS, .expectationValue.message = "returned its stats to normal using its White Herb" },
        },
    },
#ifndef GET_TEST_CASE_ONLY
};
#endif
