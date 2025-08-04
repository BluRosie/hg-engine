# Pokémon Learnsets

## Inheritance

The engine uses the `LEARNSET_FILE` config in `include/config.h` to determine which generation's learnsets to load as 
the base. 

This system supports **inheritance**, meaning:

- The specified file acts as the starting point
- Earlier generation files (lower in release order) are also scanned to fill in missing data
- The most recent generation with valid data takes precedence for moves

### Level Up Moves

Level Up learnsets are determined by the latest valid `LevelUpMoves` set from the selected generation or earlier.

### Egg Moves

Egg learnsets are determined by the latest valid `EggMoves` set from the selected generation or earlier.

### TM / HM / TR (aka Machine) Moves

Machine learnsets are cumulative across generation `MachineMoves` but end learnsets are determined by the available 
TMs/HMs/TRs. See `sMachineMoves` in `src/item.c`.

### Tutor Moves

Tutor learnsets are cumulative across generation `TutorMoves` but end learnsets are determined by which moves are 
actually available in the game. See `data/tutor/tutor_moves.json`.

## Customizing Learnsets

TODO zebben finalize flags and add here

Set `LEARNSET_FILE` to `"custom"` and make edits to `custom.json` to make use your own learnsets. Comment out 
`LEARNSET_FILE_INHERITANCE` to disable learnset inheritance and use a single file only.