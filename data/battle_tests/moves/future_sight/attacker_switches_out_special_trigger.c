// Test: Future Sight - switched out attackers, no Moxie, no Red Card, Terrain only if non-Flying type
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
        .terrain = PSYCHIC_TERRAIN,
        .playerParty = {
            {
                .species = SPECIES_XATU,
                .level = 50,
                .form = 0,
                .ability = ABILITY_BLAZE,
                .item = ITEM_CHOICE_SPECS,
                .moves = { MOVE_FUTURE_SIGHT, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            {
                .species = SPECIES_GASTLY,
                .level = 50,
                .form = 0,
                .ability = ABILITY_LEVITATE,
                .item = ITEM_PSYCHIC_GEM,
                .moves = { MOVE_FUTURE_SIGHT, MOVE_NONE, MOVE_NONE, MOVE_NONE },
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
                .item = ITEM_LIFE_ORB,
                .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            {
                .species = SPECIES_GYARADOS,
                .level = 50,
                .form = 0,
                .ability = ABILITY_MOXIE,
                .item = ITEM_LIFE_ORB,
                .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE } },
        .enemyParty = {
            {
                .species = SPECIES_ARCHALUDON,
                .level = 50,
                .form = 0,
                .ability = ABILITY_STAMINA,
                .item = ITEM_RED_CARD,
                .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            {
                .species = SPECIES_TOXAPEX,
                .level = 50,
                .form = 0,
                .ability = ABILITY_TORRENT,
                .item = ITEM_WEAKNESS_POLICY,
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
        .playerScript = {
            {
                  { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
                  { ACTION_SWITCH_SLOT_2, 0 },
                  { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
                  { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
                  { ACTION_NONE, 0 },
                  { ACTION_NONE, 0 },
                  { ACTION_NONE, 0 },
                  { ACTION_NONE, 0 },
              },
            {
                { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_SECOND },
                { ACTION_SWITCH_SLOT_3, 0 },
                { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_SECOND },
                { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_SECOND },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
            } },
        .enemyScript = {
            {
                 { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                 { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                 { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                 { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
             },
            {
                { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
            }
        },
        .expectations = {
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Archaludon took the Future Sight attack!" },
            { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 46, 46, 47, 48, 48, 48, 49, 50, 50, 51, 51, 52, 52, 53, 54, 54 } },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "It's not very effective..." },
            { .expectationType = EXPECTATION_TYPE_MESSAGE_DOES_NOT_CONTAIN, .expectationValue.message = "Red Card" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Toxapex took the Future Sight attack!" },
            { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_SECOND, .expectationValue.hpTaken = { 88, 88, 90, 90, 92, 92, 94, 94, 96, 96, 98, 98, 100, 100, 102, 104 } }, 
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "It's super effective!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE_CONTAINS, .expectationValue.message = "Weakness Policy" },
        },
    },
#ifndef GET_TEST_CASE_ONLY
};
// each test file is a separate .c file in battle_tests/ for better organization
#endif
