// Test: Infestation and 3 other trapping moves
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
                .species = SPECIES_CHARMANDER,
                .level = 50,
                .form = 0,
                .ability = ABILITY_NO_GUARD,
                .item = ITEM_LIFE_ORB,
                .moves = { MOVE_FIRE_SPIN, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            {
                .species = SPECIES_EKANS,
                .level = 50,
                .form = 0,
                .ability = ABILITY_NO_GUARD,
                .item = ITEM_NONE,
                .moves = { MOVE_WRAP, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
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
                .species = SPECIES_DEWPIDER,
                .level = 50,
                .form = 0,
                .ability = ABILITY_WATER_BUBBLE,
                .item = ITEM_NONE,
                .moves = { MOVE_INFESTATION, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            {
                .species = SPECIES_SQUIRTLE,
                .level = 50,
                .form = 0,
                .ability = ABILITY_TORRENT,
                .item = ITEM_WATER_GEM,
                .moves = { MOVE_WHIRLPOOL, MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE },
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
                 { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
                 { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_FIRST },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
                 { ACTION_NONE, 0 },
             },
            {
                { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_SECOND },
                { ACTION_MOVE_SLOT_2, BATTLER_PLAYER_SECOND },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
                { ACTION_NONE, 0 },
            }
        },
        .expectations = {
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Dewpider became trapped in the fiery vortex!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Squirtle was wrapped by Ekans!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Ekans became trapped in the vortex!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Charmander has been afflicted with an infestation by the opposing Dewpider!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Charmander is hurt by Infestation!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Ekans is hurt by Whirlpool!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Squirtle is hurt by Wrap!" },
            { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Dewpider is hurt by Fire Spin!" },
        },
    },
#ifndef GET_TEST_CASE_ONLY
};
// each test file is a separate .c file in battle_tests/ for better organization
#endif
