#include "../include/types.h"
#include "../include/config.h"
#include "../include/pokemon.h"
#include "../include/save.h"


// these functions are configured to not hook from hooks directly under ALLOW_SAVE_CHANGES
// can't get linking to work properly when i strip these


u32 Sav2_Misc_sizeof(void)
{
    return sizeof(struct SAVE_MISC_DATA);
}


void InitStoredMons(struct SAVE_MISC_DATA *saveMiscData)
{
#ifdef ALLOW_SAVE_CHANGES

    memset(&saveMiscData->storedMons[0], 0, 4*sizeof(struct PartyPokemon) + 4); // catch isMonStored in this process

#endif
}


void Sav2_Misc_init_new_fields(struct SAVE_MISC_DATA *saveMiscData)
{
    InitStoredMons(saveMiscData);
}
