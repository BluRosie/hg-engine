#include "../include/types.h"
#include "../include/config.h"
#include "../include/pokemon.h"
#include "../include/constants/species.h"

// only *need* to specify a form here if it does not revert to form 0 on battle end, all middle entries are filled with 0's
const u16 UNUSED FormReversionMapping[] =
{
    [SPECIES_MIMIKYU_BUSTED_LARGE - SPECIES_MEGA_START]                 = 2,
    [SPECIES_DARMANITAN_ZEN_MODE - SPECIES_MEGA_START]                  = 0,
    [SPECIES_DARMANITAN_ZEN_MODE_GALARIAN - SPECIES_MEGA_START]         = 1,
    [SPECIES_NECROZMA_ULTRA_DUSK_MANE - SPECIES_MEGA_START]             = 1,
    [SPECIES_NECROZMA_ULTRA_DAWN_WINGS - SPECIES_MEGA_START]            = 2,
    [SPECIES_GRENINJA_ASH - SPECIES_MEGA_START]                         = 1,
    [SPECIES_MINIOR_CORE_RED - SPECIES_MEGA_START]                      = 0,
    [SPECIES_MINIOR_CORE_ORANGE - SPECIES_MEGA_START]                   = 1,
    [SPECIES_MINIOR_CORE_YELLOW - SPECIES_MEGA_START]                   = 2,
    [SPECIES_MINIOR_CORE_GREEN - SPECIES_MEGA_START]                    = 3,
    [SPECIES_MINIOR_CORE_BLUE - SPECIES_MEGA_START]                     = 4,
    [SPECIES_MINIOR_CORE_INDIGO - SPECIES_MEGA_START]                   = 5,
    [SPECIES_MINIOR_CORE_VIOLET - SPECIES_MEGA_START]                   = 6,
    [SPECIES_ZYGARDE_10_COMPLETE - SPECIES_MEGA_START]                  = 2,
    [SPECIES_ZYGARDE_50_COMPLETE - SPECIES_MEGA_START]                  = 3,
#ifdef IMPLEMENT_DEXIT_FORMS_MECHANICS      
    [SPECIES_KLEAVOR_LORD - SPECIES_MEGA_START]                         = 0,
#endif
    [SPECIES_OGERPON_TEAL_MASK_TERASTAL - SPECIES_MEGA_START]           = 0,
    [SPECIES_OGERPON_WELLSPRING_MASK_TERASTAL - SPECIES_MEGA_START]     = 1,
    [SPECIES_OGERPON_HEARTHFLAME_MASK_TERASTAL - SPECIES_MEGA_START]    = 2,
    [SPECIES_OGERPON_CORNERSTONE_MASK_TERASTAL - SPECIES_MEGA_START]    = 3,
};
