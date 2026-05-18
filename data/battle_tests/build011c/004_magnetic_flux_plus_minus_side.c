// Test: build011c Magnetic Flux boosts only active user-side Plus/Minus battlers' Defense and Sp. Def.
#ifndef GET_TEST_CASE_ONLY
#include "../../../include/battle.h"
#include "../../../include/constants/ability.h"
#include "../../../include/constants/item.h"
#include "../../../include/constants/moves.h"
#include "../../../include/constants/species.h"
#include "../../../include/test_battle.h"
const struct TestBattleScenario BattleTests[] = {
#endif
{
    .battleType = BATTLE_TYPE_DOUBLE,
    .playerParty = {
        { .species = SPECIES_KLINKLANG, .level = 50, .ability = ABILITY_PLUS, .item = ITEM_NONE, .moves = { MOVE_MAGNETIC_FLUX, MOVE_NONE, MOVE_NONE, MOVE_NONE }, .hp = FULL_HP },
        { .species = SPECIES_PLUSLE, .level = 50, .ability = ABILITY_MINUS, .item = ITEM_NONE, .moves = { MOVE_CELEBRATE, MOVE_NONE, MOVE_NONE, MOVE_NONE }, .hp = FULL_HP },
    },
    .enemyParty = {
        { .species = SPECIES_MAGIKARP, .level = 5, .ability = ABILITY_SWIFT_SWIM, .item = ITEM_NONE, .moves = { MOVE_SPLASH, MOVE_NONE, MOVE_NONE, MOVE_NONE }, .hp = FULL_HP },
        { .species = SPECIES_PIKACHU, .level = 50, .ability = ABILITY_STATIC, .item = ITEM_NONE, .moves = { MOVE_CELEBRATE, MOVE_NONE, MOVE_NONE, MOVE_NONE }, .hp = FULL_HP },
    },
    .playerScript = {
        [0] = { { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST }, { ACTION_NONE, 0 } },
        [1] = { { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST }, { ACTION_NONE, 0 } },
    },
    .enemyScript = {
        [0] = { { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST }, { ACTION_NONE, 0 } },
        [1] = { { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST }, { ACTION_NONE, 0 } },
    },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE_CONTAINS, .expectationValue.message = "Klinklang's Defense rose" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE_CONTAINS, .expectationValue.message = "Klinklang's Sp. Def rose" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE_CONTAINS, .expectationValue.message = "Plusle's Defense rose" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE_CONTAINS, .expectationValue.message = "Plusle's Sp. Def rose" },
    },
},
#ifndef GET_TEST_CASE_ONLY
};
#endif
