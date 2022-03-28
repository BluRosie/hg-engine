.include "armips/include/monnums.s"
.include "armips/include/abilities.s"
.include "armips/include/config.s"
.include "armips/include/constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/movenums.s"

.include "armips/asm/backgrounds.s" // fixes new move animations
.include "armips/asm/moves.s" // repoints all the move table defines within the structure
.include "armips/asm/trainer_ai.s" // repoints all the move table defines for trainer ai within the structure
.include "armips/asm/syntheticoverlay.s"

/*
CURRENT SYNTHETIC NARC ARMIPS USAGE - starting at START_ADDRESS (armips/include/config.s), sequentially
armips/data/monoverworlds.s - ((NUM_OF_MON_OVERWORLDS + 450) * 6)
armips/data/iconpalettetable.s - (NUM_OF_TOTAL_MONS_PLUS_FORMS)
armips/asm/trainer_ai.s - ~0xA0 bytes of extra code

plus all the c injection stuff.  we are not worried about that here, that's dynamically managed
*/
