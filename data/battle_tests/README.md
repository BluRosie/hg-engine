# Battle Test Scenarios

This directory contains individual battle test scenario files. Each test is a separate `.c` file that gets included into the main `BattleTests[]` array during compilation.

## Adding a New Test

1. **Create a new test file** in this directory using this template:

```c
// Test: Brief description of what this test validates
{
    .battleType = BATTLE_TYPE_SINGLE,  // or BATTLE_TYPE_DOUBLE
    .weather = WEATHER_NONE,           // See constants/battle.h for weather types
    .fieldCondition = 0,               // Field conditions like FIELD_CONDITION_TRICK_ROOM
    .terrain = TERRAIN_NONE,           // ELECTRIC_TERRAIN, GRASSY_TERRAIN, etc.

    .playerParty = {
        {
            .species = SPECIES_PIKACHU,
            .level = 50,
            .form = 0,
            .ability = ABILITY_STATIC,
            .item = ITEM_LEFTOVERS,
            .moves = {MOVE_THUNDERBOLT, MOVE_QUICK_ATTACK, MOVE_NONE, MOVE_NONE},
            .hp = 0,              // 0 = max HP
            .status = 0,          // STATUS_PSN, STATUS_BRN, etc.
            .condition2 = 0,      // STATUS2_CONFUSE, etc.
            .moveEffectFlags = 0, // MOVE_EFFECT_INGRAIN, etc.
        },
        {.species = SPECIES_NONE},  // Empty slots
        {.species = SPECIES_NONE},
        {.species = SPECIES_NONE},
        {.species = SPECIES_NONE},
        {.species = SPECIES_NONE}
    },

    .enemyParty = {
        {
            .species = SPECIES_CHARMANDER,
            .level = 50,
            .form = 0,
            .ability = ABILITY_BLAZE,
            .item = ITEM_NONE,
            .moves = {MOVE_FLAMETHROWER, MOVE_SLASH, MOVE_NONE, MOVE_NONE},
            .hp = 0,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
        {.species = SPECIES_NONE},
        {.species = SPECIES_NONE},
        {.species = SPECIES_NONE},
        {.species = SPECIES_NONE},
        {.species = SPECIES_NONE}
    },

    // Player script - what actions the player's Pokemon will take
    .playerScript = {
        {  // Script for player's first Pokemon (battler 0)
            {ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST},  // Use move 1, target enemy
            {ACTION_MOVE_SLOT_2, BATTLER_ENEMY_FIRST},  // Use move 2, target enemy
            {ACTION_SWITCH_SLOT_1, 0},                  // Switch to party slot 1
            {ACTION_NONE, 0},  // End of script (always terminate with ACTION_NONE)
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
        },
        {  // Script for player's second Pokemon (battler 2, doubles only)
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
        }
    },

    // Enemy script - what actions the enemy's Pokemon will take
    .enemyScript = {
        {  // Script for enemy's first Pokemon (battler 1)
            {ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
        },
        {  // Script for enemy's second Pokemon (battler 3, doubles only)
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
            {ACTION_NONE, 0},
        }
    }
},
```

**IMPORTANT:** End the file with a comma (`,`) - it's part of the array

2. **Include your test** in `data/BattleTests.c`:

```c
// Test N: Your test description
#include "battle_tests/my_test.c"
```

## Running Tests
### Build test ROM
`make AUTO_TEST=Y -j$(nproc)`

### Run tests (headless)
`SDL_VIDEODRIVER=dummy scripts/run_tests.sh`


### Run tests (with video)
`scripts/run_tests.sh -v`

Tests build `test.nds` and run sequentially.