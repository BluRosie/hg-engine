#ifndef GET_TEST_CASE_ONLY

#include "../../include/battle.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/item.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/test_battle.h"

// each test file is a separate .c file in battle_tests/ for better organization
const struct TestBattleScenario BattleTests[] = {

#endif

    // Test: Rain + Electric Terrain - Basic switching and move execution
    {
        .battleType = BATTLE_TYPE_SINGLE,
        .weather = WEATHER_RAIN,
        .fieldCondition = 0,
        .terrain = ELECTRIC_TERRAIN,
        .playerParty = {
            {
                .species = SPECIES_RAICHU,
                .level = 50,
                .form = 0,
                .ability = ABILITY_STURDY,
                .item = ITEM_NONE,
                .moves = { MOVE_TACKLE, MOVE_FAKE_TEARS, MOVE_NONE, MOVE_NONE },
                .hp = FULL_HP,
                .status = 0,
                .condition2 = 0,
                .moveEffectFlags = 0,
            },
            {
                .species = SPECIES_SHUCKLE,
                .level = 50,
                .form = 0,
                .ability = ABILITY_ROCK_HEAD,
                .item = ITEM_NONE,
                .moves = { MOVE_ROCK_THROW, MOVE_EARTHQUAKE, MOVE_NONE, MOVE_NONE },
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
                            .species = SPECIES_GYARADOS,
                            .level = 50,
                            .form = 0,
                            .ability = ABILITY_STURDY,
                            .item = ITEM_LEFTOVERS,
                            .moves = { MOVE_NASTY_PLOT, MOVE_QUICK_ATTACK, MOVE_WILL_O_WISP, MOVE_NONE },
                            .hp = FULL_HP,
                            .status = 0,
                            .condition2 = 0,
                            .moveEffectFlags = 0,
                        },
            {
                .species = SPECIES_LUNALA,
                .level = 50,
                .form = 0,
                .ability = ABILITY_GUTS,
                .item = ITEM_NONE,
                .moves = { MOVE_KARATE_CHOP, MOVE_SEISMIC_TOSS, MOVE_NONE, MOVE_NONE },
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
                              { ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST },
                              { ACTION_SWITCH_SLOT_1, 0 },
                              { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
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
                             { ACTION_MOVE_SLOT_3, BATTLER_PLAYER_FIRST },
                             { ACTION_SWITCH_SLOT_1, 0 },
                             { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
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
            } } },
#ifndef GET_TEST_CASE_ONLY
};
#endif
