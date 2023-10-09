#include "../include/types.h"
#include "../include/config.h"
#include "../include/debug.h"
#include "../include/pokemon.h"
#include "../include/save.h"
#include "../include/script.h"


// these functions are configured to not hook from hooks directly under ALLOW_SAVE_CHANGES
// can't get linking to work properly when i strip these


u32 LONG_CALL Sav2_Misc_sizeof(void)
{
    return sizeof(struct SAVE_MISC_DATA);
}


void LONG_CALL InitStoredMons(struct SAVE_MISC_DATA *saveMiscData)
{
#ifdef ALLOW_SAVE_CHANGES

    memset(&saveMiscData->storedMons[0], 0, 4*sizeof(struct PartyPokemon) + 4); // catch isMonStored in this process

#endif
}


void LONG_CALL Sav2_Misc_init_new_fields(struct SAVE_MISC_DATA *saveMiscData)
{
    InitStoredMons(saveMiscData);
}


// convenience flag/var access functions
u32 LONG_CALL SetScriptVar(u16 var_id, u16 value)
{
    if (var_id < 0x8000)
    {
        return SetScriptVarPassSave(SavArray_Flags_get(SaveBlock2_get()), var_id, value);
    }
    else // handle vars above 0x8000
    {
        u16 *var = GetVarPointer(gFieldSysPtr, var_id);
        *var = value;
        return TRUE;
    }
}

u16 LONG_CALL GetScriptVar(u16 var_id)
{
    if (var_id < 0x8000)
    {
        return GetScriptVarPassSave(SavArray_Flags_get(SaveBlock2_get()), var_id);
    }
    else // handle vars above 0x8000
    {
        u16 *var = GetVarPointer(gFieldSysPtr, var_id);
        return *var;
    }
}

void LONG_CALL SetScriptFlag(u16 flag_id)
{
    SetScriptFlagPassSave(SavArray_Flags_get(SaveBlock2_get()), flag_id);
}

void LONG_CALL ClearScriptFlag(u16 flag_id)
{
    ClearScriptFlagPassSave(SavArray_Flags_get(SaveBlock2_get()), flag_id);
}

BOOL LONG_CALL CheckScriptFlag(u16 flag_id)
{
    return CheckScriptFlagPassSave(SavArray_Flags_get(SaveBlock2_get()), flag_id);
}

// hardware sqrt implementation using the gpio registers + debug options
u32 LONG_CALL sqrt(u32 num)
{
    reg_CP_SQRT_PARAM_L = num;
    reg_CP_SQRTCNT = 0; // start sqrt calculation

    u8 buf[64];
#ifdef DEBUG_SQRT
    sprintf(buf, "[SQRT]   PARAM = %08X\n", reg_CP_SQRT_PARAM_L);
    debugsyscall(buf);
#endif

    while ((reg_CP_SQRTCNT & (1 << 15)) != 0) {
#ifdef DEBUG_SQRT
        sprintf(buf, "[SQRT] SQRTCNT = %08X\n", reg_CP_SQRTCNT);
        debugsyscall(buf);
#endif
    }

    sprintf(buf, "[SQRT]  RESULT = %08X\n", reg_CP_SQRT_RESULT); // need to have something here so that it won't return 0
#ifdef DEBUG_SQRT
    debugsyscall(buf);
#endif

    return reg_CP_SQRT_RESULT;
}
