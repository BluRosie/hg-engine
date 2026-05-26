// all of the current configurations for this project.  each is explained in a comment.

GEN_CHAMPIONS equ 99

GEN_LATEST equ defined(DEBUG_BATTLE_SCENARIOS) ? GEN_CHAMPIONS : 9

// DISALLOW_DEXIT_GEN controls whether to disallow selection of dexited moves in later generations. Choose any Generation below 8 for none. 0 will instead disable any unimplemented moves.
DISALLOW_DEXIT_GEN equ 0

// FAIRY_TYPE_IMPLEMENTED defines whether or not the Fairy type is to be implemented as type 9 or not.
// If you do not want this change, then set it to 0.
FAIRY_TYPE_IMPLEMENTED equ 1

// SNOW_WARNING_GENERATION controls whether to summon Snow or Hail when the ability is activated.
// 9 or above: Snow
// Otherwise: Hail
SNOW_WARNING_GENERATION equ GEN_LATEST

// SLEEP_TURNS_GENERATION controls the number of turns a Pokémon can be asleep.
// 4 : 2-5 turns (Prevents movement for 1-4 turns.)
// 5 or above : 2-4 turns
// Champions: 2-3 turns
SLEEP_TURNS_GENERATION equ GEN_LATEST

// ALLOW_SAVE_CHANGES tells the assembler that it can build the code that pertains to expanding the save data for extra fields for our usage.
// this is required for dex expansion and will break PKHeX compatibility!  comment this line out to prevent save changes from being made.
.definelabel ALLOW_SAVE_CHANGES, 0

// CRY_PSEUDOBANK_START defines the first pseudobank to be used as cries in the sdat.  cries are loaded differently to save on RAM space
CRY_PSEUDOBANK_START equ 778

// BATTLE_MODE_FORCE_SET defines whether or not players will be able to switch out mons when the opponent sends out their next mon. The player will be able to choose themselves like normal if the following is 0, 1 if the player will be forced to use "set"
BATTLE_MODE_FORCE_SET equ 0

// ALWAYS_HAVE_NATIONAL_DEX defines whether or not the player will always have the national dex unlocked.
ALWAYS_HAVE_NATIONAL_DEX equ 0

// ALWAYS_UNCAPPED_FRAME_RATE defines whether or not the frame rate of the game will always be uncapped, including in the overworld.
ALWAYS_UNCAPPED_FRAME_RATE equ 0

// BATTLES_UNCAPPED_FRAME_RATE defines whether or not the frame rate of the game will be uncapped solely in battles or not.
BATTLES_UNCAPPED_FRAME_RATE equ 0

// FAST_TEXT_PRINTING will make the text print quickly, almost instantly
FAST_TEXT_PRINTING equ 0

// NO_PARTNER_DOUBLE_BATTLES allows for setting trainers to double battles without setting up a partner trainer.  set to 0 to disable
// note that the entry in `armips/data/trainers/trainertext.s` has to use `TEXT_DOUBLE_DEFEATED_IN_BATTLE_1`, but the overworld entries can remain the same.
NO_PARTNER_DOUBLE_BATTLES equ 1
