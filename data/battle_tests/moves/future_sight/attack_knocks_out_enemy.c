// Test: Future Sight - Attack knocks out enemy
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
                .species = SPECIES_DELPHOX,
                .level = 50,
                .form = 0,
                .ability = ABILITY_BLAZE,
                .item = ITEM_LIFE_ORB,
                .moves = { MOVE_FUTURE_SIGHT, MOVE_NASTY_PLOT, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            {
                .species = SPECIES_GARDEVOIR,
                .level = 50,
                .form = 0,
                .ability = ABILITY_TELEPATHY,
                .item = ITEM_PSYCHIC_GEM,
                .moves = { MOVE_FUTURE_SIGHT, MOVE_NONE, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE },
            { .species = SPECIES_NONE } },
        .enemyParty = {
            {
                .species = SPECIES_ARCHALUDON,
                .level = 70,
                .form = 0,
                .ability = ABILITY_STAMINA,
                .item = ITEM_SITRUS_BERRY,
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
        .playerScript = {
            {
                  { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
                  { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
                  { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
                  { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
                  { ACTION_NONE, 0 },
                  { ACTION_NONE, 0 },
                  { ACTION_NONE, 0 },
                  { ACTION_NONE, 0 },
              },
            {
                { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_SECOND },
                { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_SECOND },
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
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
            }
        },
        .expectations = {
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Gardevoir foresaw an attack!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Archaludon took the Future Sight attack!" },
            { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 131, 133, 134, 135, 136, 139, 140, 142, 143, 144, 147, 148, 149, 151, 152, 155 } },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Delphox lost some of its HP!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Archaludon restored its health using its Sitrus Berry!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The Psychic Gem strengthened Future Sight's power!" },
            { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_SECOND, .expectationValue.hpTaken = { 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125 } }, 
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Toxapex fainted!" },
        },
    },
#ifndef GET_TEST_CASE_ONLY
};
// each test file is a separate .c file in battle_tests/ for better organization
#endif
