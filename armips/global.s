.include "armips/include/config.s"
.include "armips/include/constants.s"
.include "armips/include/generated/levelup.s"

// standard assembler includes
.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/moves.inc"
.include "asm/include/species.inc"

.include "armips/asm/abilities.s" // ability expansion
.include "armips/asm/backgrounds.s" // fixes new move animations
.include "armips/asm/moves.s" // repoints all the move table defines within the structure
.include "armips/asm/trainer_ai.s" // repoints all the move table defines for trainer ai within the structure
.include "armips/asm/syntheticoverlay.s" // code for loading in the synthetic overlay
.include "armips/asm/trainers.s" // code for fixing the trainer ai accessing move data
.include "armips/asm/cries.s" // code for remapping species to the file in the sdat
.include "armips/asm/user_config.s" // user configurable code
.include "armips/asm/levelup.s" // change the level up moves to be (u16 level, u16 move) + expand learnset to MAX_LEVELUP_MOVES (from armips/include/config.s)
.include "armips/asm/pokedex.s" // code for pokedex expansion, including expanding the save
.include "armips/asm/overworlds.s" // code for overworlds, specifically repointing gOWTagToFileNum and making dimorphism a byte instead of a halfword.
.include "armips/asm/swarms.s" // modify swarms

.include "armips/data/starters.s" // data definitions for which species to use for the starter Pokemon
.include "armips/asm/tm_palettes.s" // allows editing of pallete table for TMs
.include "armips/asm/hidden_items.s" // allows editing of hidden items for Dowsing Machine

.include "armips/asm/no_partner_double_battles.s" // allows no partner double battles

.if FAIRY_TYPE_IMPLEMENTED == 1

.include "armips/asm/fairy.s" // repoints all the move table defines within the structure

.endif

.ifdef APPLY_ANTIPIRACY

.include "armips/asm/antipiracy.s" // install antipiracy into the rom

.endif

// code addon list
//.include "armips/data/hiddenabilities.s" // the hidden ability list, 7
//.include "armips/data/baseexp.s" // the base experience list, 8
//.include "armips/data/monoverworlds.s" // built unconditionally in makefile, 9 includes the max amount of forms per mon not including gender differences
// 10 - sSpeciesToOWGfx
// 11 - PokeFormDataTbl

/*
CURRENT SYNTHETIC NARC ARMIPS USAGE - starting at START_ADDRESS (armips/include/config.s), sequentially
armips/data/iconpalettetable.s - (NUM_OF_TOTAL_MONS_PLUS_FORMS)
armips/asm/trainer_ai.s - ~0x60 bytes of extra code

plus all the c injection stuff.  we are not worried about that here, that is dynamically managed
*/
