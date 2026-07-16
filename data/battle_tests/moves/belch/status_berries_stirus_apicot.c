// Test: Belch - possible after status berries curing, Sitrus and Apicot
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
                .species = SPECIES_GULPIN,
                .level = 50,
                .form = 0,
                .ability = ABILITY_NO_GUARD,
                .item = ITEM_LUM_BERRY,
                .moves = { MOVE_BELCH, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = STATUS_BURN,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            {
                .species = SPECIES_EKANS,
                .level = 50,
                .form = 0,
                .ability = ABILITY_NO_GUARD,
                .item = ITEM_ASPEAR_BERRY,
                .moves = { MOVE_BELCH, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = STATUS_FREEZE,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE } },
        .enemyParty = {
            {
                .species = SPECIES_LECHONK,
                .level = 50,
                .form = 0,
                .ability = ABILITY_GLUTTONY,
                .item = ITEM_SITRUS_BERRY,
                .moves = { MOVE_BELCH, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            {
                .species = SPECIES_SPOINK,
                .level = 38,
                .form = 0,
                .ability = ABILITY_GLUTTONY,
                .item = ITEM_APICOT_BERRY,
                .moves = { MOVE_BELCH, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE } },
        .playerScript = {
            {
                  { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
                  { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
                  { ACTION_NONE, 0 },
                  { ACTION_NONE, 0 },
                  { ACTION_NONE, 0 },
                  { ACTION_NONE, 0 },
                  { ACTION_NONE, 0 },
                  { ACTION_NONE, 0 },
              },
            {
                { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_SECOND },
                { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_SECOND },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
            } },
        .enemyScript = {
            {
                 { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
                 { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
             },
            {
                { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_SECOND },
                { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_SECOND },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
            }
        },
        .expectations = {
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Ekans's Aspear Berry defrosted it!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Gulpin's Lum Berry healed its burn!" },
            { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_SECOND, .expectationValue.hpTaken = { 54, 54, 55, 55, 57, 57, 58, 58, 58, 60, 60, 61, 61, 63, 63, 64 } },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The Apicot Berry boosted the opposing Spoink's Sp. Def!" },
            { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 67, 67, 69, 69, 70, 70, 72, 72, 73, 73, 75, 75, 76, 76, 78, 79 } },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Lechonk restored its health using its Sitrus Berry!" },
            { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_PLAYER_SECOND, .expectationValue.hpTaken = { 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 20 } },
            { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_PLAYER_FIRST, .expectationValue.hpTaken = { 17, 17, 17, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 20, 20, 20 } },
        },
    },
#ifndef GET_TEST_CASE_ONLY
};
// each test file is a separate .c file in battle_tests/ for better organization
#endif
