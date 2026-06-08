# Battle Test Scenarios

This directory contains individual battle test scenario files. Each test is a separate `.c` file that gets included into the main `BattleTests[]` array during compilation.

## Adding a New Test

1. **Create a new test file** in this directory using this template:

```c
// Test: Brief description of what this test validates
#include "../../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_SINGLE, // or BATTLE_TYPE_DOUBLE
    .weather = WEATHER_NONE, // See constants/battle.h for weather types
    .fieldCondition = 0, // Field conditions like FIELD_CONDITION_TRICK_ROOM
    .terrain = TERRAIN_NONE, // ELECTRIC_TERRAIN, GRASSY_TERRAIN, etc.
    .playerParty = {
        {
            .species = SPECIES_NINETALES,
            .level = 50,
            .form = 1,
            .ability = ABILITY_SNOW_WARNING,
            .item = ITEM_NONE,
            .moves = { MOVE_AURORA_VEIL, MOVE_NONE, MOVE_NONE, MOVE_NONE },
            .hp = FULL_HP, // or integer for exact HP
            .status = 0, // STATUS_PSN, STATUS_BRN, etc.
            .condition2 = 0, // STATUS2_CONFUSE, etc.
            .moveEffectFlags = 0, // MOVE_EFFECT_INGRAIN, etc.
        },
        { .species = SPECIES_NONE }, // Empty slots
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE }
    },
    .enemyParty = { {
                        .species = SPECIES_MEGANIUM,
                        .level = 50,
                        .form = 0,
                        .ability = ABILITY_OVERGROW,
                        .item = ITEM_MEGANIUMITE,
                        .moves = { MOVE_AURORA_VEIL, MOVE_WEATHER_BALL, MOVE_NONE, MOVE_NONE },
                        .hp = 76,
                        .status = 0,
                        .condition2 = 0,
                        .moveEffectFlags = 0,
                    },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE } },
    // Player script - what actions the player's Pokémon will take
    .playerScript = { {
                          // Script for player's first Pokémon (battler 0)
                          { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST }, // Use move 1, target enemy
                          { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST }, // Use move 1, target enemy
                          { ACTION_NONE, 0 }, // End of script (always terminate with ACTION_NONE)
                          { ACTION_NONE, 0 },
                          { ACTION_NONE, 0 },
                          { ACTION_NONE, 0 },
                          { ACTION_NONE, 0 },
                          { ACTION_NONE, 0 },
                      },
        {
            // Script for player's second Pokémon (battler 2, doubles only)
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
        } },
    // Enemy script - what actions the enemy's Pokémon will take
    .enemyScript = { {
                         // Script for enemy's first Pokémon (battler 1)
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
            // Script for enemy's second Pokémon (battler 3, doubles only)
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
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Ninetales used Aurora Veil!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Aurora Veil made your side stronger against physical and special moves!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Meganium used Aurora Veil!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Aurora Veil made the opposing side stronger against physical and special moves!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Meganium used Weather Ball!" },
        { .expectationType = EXPECTATION_TYPE_HP_BAR, .expectationValue.hpTaken = { 77, 78, 79, 80, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91 } },
    }
}
END_TEST
```

## Running Tests
### Build test ROM
- `make AUTO_TEST=Y -j$(nproc)`
### Filter tests
- `make AUTO_TEST=Y TEST_FILTER="species moves/move_folder" -j${nproc}`
- Or create `test_filter.txt`. Each line is a separate filter.


### Run tests (headless)
`SDL_VIDEODRIVER=dummy scripts/run_tests.sh -j $(nproc)`

Optionally provide `-j` with a number to partition the tests into N parallelized chunks

### Run tests (with video)
`scripts/run_tests.sh -v`
