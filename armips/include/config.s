// all of the current configurations for this project.  each is explained in a comment.

GEN_LATEST equ 9

// START_ADDRESS defines the file address within the synthetic overlay where you would like to place all of the code that this project uses.  this is largely the repointed tables that the code uses.
// if START_ADDRESS is 0x10000, then the tables will be inserted at address 0x10000 of the synthetic overlay
// the current implementation (with all gen 5 mons) uses ~9222/0x2406 bytes.  make sure this points to that much free space (probably allow for a little bit more than that)
// currently 0x10 to have space for a marker for DSPRE to disable editors!
START_ADDRESS equ 0x10

// DISALLOW_DEXIT_GEN controls whether to disallow selection of dexited moves in later generations. Choose any Generation below 8 for none. 0 will instead disable any unimplemented moves.
DISALLOW_DEXIT_GEN equ 0

// FAIRY_TYPE_IMPLEMENTED defines whether or not the Fairy type is to be implemented as type 9 or not.
// If you do not want this change, then set it to 0.
FAIRY_TYPE_IMPLEMENTED equ 1

// TYPE_EFFECTIVENESS_GEN defines the type chart interactions you would like to use.
// Defining this as "5" or lower will revert Steel to resisting Ghost- and Dark-type moves.
// Type chart changes prior to Gen 4 (e.g. Gen 1) are not included.
TYPE_EFFECTIVENESS_GEN equ GEN_LATEST

// SNOW_WARNING_GENERATION controls whether to summon Snow or Hail when the ability is activated.
// 9 or above: Snow
// Otherwise: Hail
SNOW_WARNING_GENERATION equ GEN_LATEST

// ALLOW_SAVE_CHANGES tells the assembler that it can build the code that pertains to expanding the save data for extra fields for our usage.
// this is required for dex expansion and will break PKHeX compatibility!  comment this line out to prevent save changes from being made.
.definelabel ALLOW_SAVE_CHANGES, 0

// CRY_PSEUDOBANK_START defines the first pseudobank to be used as cries in the sdat.  cries are loaded differently to save on RAM space
CRY_PSEUDOBANK_START equ 778

// BATTLE_MODE_FORCE_SET defines whether or not players will be able to switch out mons when the opponent sends out their next mon. The player will be able to choose themselves like normal if the following is 0, 1 if the player will be forced to use "set"
BATTLE_MODE_FORCE_SET equ 1

// ALWAYS_HAVE_NATIONAL_DEX defines whether or not the player will always have the national dex unlocked.
ALWAYS_HAVE_NATIONAL_DEX equ 0

// ALWAYS_UNCAPPED_FRAME_RATE defines whether or not the frame rate of the game will always be uncapped, including in the overworld.
ALWAYS_UNCAPPED_FRAME_RATE equ 0

// BATTLES_UNCAPPED_FRAME_RATE defines whether or not the frame rate of the game will be uncapped solely in battles or not.
BATTLES_UNCAPPED_FRAME_RATE equ 0

// FAST_TEXT_PRINTING will make the text print quickly, almost instantly
FAST_TEXT_PRINTING equ 1

// NO_PARTNER_DOUBLE_BATTLES allows for setting trainers to double battles without setting up a partner trainer.  set to 0 to disable
// note that the entry in `armips/data/trainers/trainertext.s` has to use `TEXT_DOUBLE_DEFEATED_IN_BATTLE_1`, but the overworld entries can remain the same.
NO_PARTNER_DOUBLE_BATTLES equ 1

// APPLY_ANTIPIRACY will apply the typical anti-piracy code changes to your ROM automatically so that the game runs well on hardware (TWLmenu and R4 are both tested)
// comment out the lines if you do not want anti-piracy to be applied to your ROM
.definelabel APPLY_ANTIPIRACY, 0
