#include "../include/types.h"
#include "../include/config.h"
#include "../include/pokemon.h"
#include "../include/save.h"


// these functions are configured to not hook from hooks directly under ALLOW_SAVE_CHANGES
// can't get linking to work properly when i strip these


u32 __attribute__((long_call)) Sav2_Misc_sizeof(void)
{
    return sizeof(struct SAVE_MISC_DATA);
}


void __attribute__((long_call)) InitStoredMons(struct SAVE_MISC_DATA *saveMiscData)
{
#ifdef ALLOW_SAVE_CHANGES

    memset(&saveMiscData->storedMons[0], 0, 4*sizeof(struct PartyPokemon) + 4); // catch isMonStored in this process

#endif
}


void __attribute__((long_call)) Sav2_Misc_init_new_fields(struct SAVE_MISC_DATA *saveMiscData)
{
    InitStoredMons(saveMiscData);
}


// convenience flag/var access functions
u32 __attribute__((long_call)) SetScriptVar(u16 var_id, u16 value)
{
    return SetScriptVarPassSave(SavArray_Flags_get(SaveBlock2_get()), var_id, value);
}

u16 __attribute__((long_call)) GetScriptVar(u16 var_id)
{
    return GetScriptVarPassSave(SavArray_Flags_get(SaveBlock2_get()), var_id, value);
}

void __attribute__((long_call)) SetScriptFlag(u16 flag_id)
{
    SetScriptFlagPassSave(SavArray_Flags_get(SaveBlock2_get()), flag_id);
}

void __attribute__((long_call)) ClearScriptFlag(u16 flag_id)
{
    ClearScriptFlagPassSave(SavArray_Flags_get(SaveBlock2_get()), flag_id);
}

BOOL __attribute__((long_call)) CheckScriptFlag(u16 flag_id)
{
    return CheckScriptFlagPassSave(SavArray_Flags_get(SaveBlock2_get()), flag_id);
}
