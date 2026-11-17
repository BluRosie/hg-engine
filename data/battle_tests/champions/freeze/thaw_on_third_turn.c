// Test: Champions - Always thaw out on the third turn of being frozen if they have not done so already
#include "constants/battle_constants.h"

#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .weather = FIELD_CONDITION_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,
    .playerParty = {
        {
            .species = SPECIES_WHIMSICOTT,
            .level = 50,
            .form = 0,
            .ability = ABILITY_PRANKSTER,
            .item = ITEM_NONE,
            .moves = { MOVE_COTTON_SPORE, MOVE_NONE, MOVE_NONE, MOVE_NONE },
            .hp = FULL_HP,
            .status = STATUS_FREEZE,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {
            .species = SPECIES_MEGANIUM,
            .level = 50,
            .form = 0,
            .ability = ABILITY_OVERGROW,
            .item = ITEM_NONE,
            .moves = { MOVE_COTTON_SPORE, MOVE_NONE, MOVE_NONE, MOVE_NONE },
            .hp = FULL_HP,
            .status = STATUS_FREEZE,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
    },
    .enemyParty = {
        {
            .species = SPECIES_MEGANIUM,
            .level = 50,
            .form = 0,
            .ability = ABILITY_OVERGROW,
            .item = ITEM_NONE,
            .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
            .hp = FULL_HP,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
    },
    .playerScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            // counter persists on switch
            { ACTION_SWITCH_SLOT_1, BATTLER_ENEMY_FIRST },
            // counter is not shared
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_SWITCH_SLOT_0, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
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
        },
    },
    .enemyScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
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
        },
    },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Whimsicott is frozen solid!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Whimsicott is frozen solid!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Meganium is frozen solid!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Whimsicott used Cotton Spore!" },
    }
}
END_TEST
