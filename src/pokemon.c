#include "../include/types.h"
#include "../include/bag.h"
#include "../include/battle.h"
#include "../include/config.h"
#include "../include/debug.h"
#include "../include/pokemon.h"
#include "../include/rtc.h"
#include "../include/save.h"
#include "../include/script.h"
#include "../include/constants/ability.h"
#include "../include/constants/file.h"
#include "../include/constants/game.h"
#include "../include/constants/hold_item_effects.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"
#include "../include/constants/weather_numbers.h"


#define NELEMS_POKEFORMDATATBL 285

extern u32 word_to_store_form_at;

/**
 *  @brief set up the indices for the new form system pictures.  if necessary, loop through the form table, searching for the new form index to load sprites from
 *         this function does not account for existing forms already covered by otherpoke.narc
 *
 *  @param picdata MON_PIC structure to store values in
 *  @param mons_no species of pokémon
 *  @param dir direction of the pokémon
 *  @param col shininess of the pokémon
 *  @param form_no form number of the pokémon
 *  @return FALSE if there is no need to look through the form table or a matching entry is not found; TRUE otherwise
 */
BOOL LONG_CALL GetOtherFormPic(MON_PIC *picdata, u16 mons_no, u8 dir, u8 col, u8 form_no)
{
    u32 ret = FALSE;
    word_to_store_form_at = form_no;

    if (form_no != 0)
    {
        struct FormData *PokeFormDataTbl = sys_AllocMemory(0, NELEMS_POKEFORMDATATBL * sizeof(struct FormData));
        ArchiveDataLoad(PokeFormDataTbl, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA);

        for (u32 i = 0; i < NELEMS_POKEFORMDATATBL; i++)
        {
            if (mons_no == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no)
            {
                picdata->arc_no = ARC_MON_PIC;
                picdata->index_chr = (PokeFormDataTbl[i].file) * 6 + dir;
                picdata->index_pal = (PokeFormDataTbl[i].file) * 6 + 4 + col;
                ret = TRUE;
            }
        }

        sys_FreeMemoryEz(PokeFormDataTbl);
    }
    return ret;
}

/**
 *  @brief pass species and form to get new species for personal narc, parsing through form table if necessary
 *
 *  @param mons_no base species
 *  @param form_no form number
 *  @return adjusted species for personal narc
 */
int LONG_CALL PokeOtherFormMonsNoGet(int mons_no, int form_no)
{
    u32 i;
    switch (mons_no)
    {
    case SPECIES_DEOXYS:
        if ((form_no) && (form_no <= 3))
        {
            mons_no = 495 + form_no;
        }
        break;
    case SPECIES_WORMADAM:
        if ((form_no) && (form_no <= 2))
        {
            mons_no = 498 + form_no;
        }
        break;

    case SPECIES_GIRATINA:
        if ((form_no) && (form_no <= 1))
        {
            mons_no = 500 + form_no;
        }
        break;
    case SPECIES_SHAYMIN:
        if ((form_no) && (form_no <= 1))
        {
            mons_no = 501 + form_no;
        }
        break;
    case SPECIES_ROTOM:
        if ((form_no) && (form_no <= 5))
        {
            mons_no = 502 + form_no;
        }
        break;

    default:;
        if (form_no != 0)
        {
            struct FormData *PokeFormDataTbl = sys_AllocMemory(0, NELEMS_POKEFORMDATATBL * sizeof(struct FormData));
            ArchiveDataLoad(PokeFormDataTbl, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA);

            for (i = 0; i < NELEMS_POKEFORMDATATBL; i++)
            {
                if (mons_no == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no)
                {
                    mons_no = PokeFormDataTbl[i].file;
                    break;
                }
            }
            sys_FreeMemoryEz(PokeFormDataTbl);
        }
        break;
    }
    return mons_no;
}

/**
 *  @brief pass species and form to get new species
 *
 *  @param mons_no species
 *  @param form_no form number
 *  @return adjusted species given base species and form number
 */
u16 LONG_CALL GetSpeciesBasedOnForm(int mons_no, int form_no)
{
    if (form_no != 0)
    {
        struct FormData *PokeFormDataTbl = sys_AllocMemory(0, NELEMS_POKEFORMDATATBL * sizeof(struct FormData));
        ArchiveDataLoad(PokeFormDataTbl, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA);
        for (u32 i = 0; i < NELEMS_POKEFORMDATATBL; i++)
        {
            if (mons_no == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no)
            {
                mons_no = PokeFormDataTbl[i].file;
                break;
            }
        }
        sys_FreeMemoryEz(PokeFormDataTbl);
    }
    return mons_no;
}

/**
 *  @brief pass adjusted species and return base species
 *
 *  @param mons_no species that has already been adjusted by form number by GetSpeciesBasedOnForm
 *  @return base species
 */
u16 LONG_CALL GetOriginalSpeciesBasedOnAdjustedForm(u32 mons_no)
{
    if (mons_no > MAX_MON_NUM)
    {
        struct FormData *PokeFormDataTbl = sys_AllocMemory(0, NELEMS_POKEFORMDATATBL * sizeof(struct FormData));
        ArchiveDataLoad(PokeFormDataTbl, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA);

        for (u32 i = 0; i < NELEMS_POKEFORMDATATBL; i++)
        {
            if (mons_no == PokeFormDataTbl[i].file)
            {
                mons_no = PokeFormDataTbl[i].species;
                break;
            }
        }
        sys_FreeMemoryEz(PokeFormDataTbl);
    }
    return mons_no;
}

/**
 *  @brief grab index in ARC_POKEICON from original species, egg status, and form number
 *
 *  @param mons base species index
 *  @param egg TRUE if pokémon is an egg; FALSE otherwise
 *  @param form_no form number
 *  @return icon index in ARC_POKEICON
 */
u32 LONG_CALL PokeIconIndexGetByMonsNumber(u32 mons, u32 egg, u32 form_no)
{
    u32 i;
    u32 pat = 7+mons;

    if (egg == 1)
    {
        if (mons == SPECIES_MANAPHY)
        {
            return 502; // manaphy egg icon
        }
        else
        {
            return 501; // normal egg icon
        }
    }

    if (form_no != 0)
    {
        pat = SanitizeFormNumber(mons, form_no);//70438

        if (pat != 0)
        {
            if (mons == SPECIES_DEOXYS)
            {
                return (503 + pat - 1);
            }
            if (mons == SPECIES_UNOWN)
            {
                return (507 + pat - 1);
            }
            if (mons == SPECIES_BURMY)
            {
                return (534 + pat - 1);
            }
            if (mons == SPECIES_WORMADAM)
            {
                return (536 + pat - 1);
            }
            if (mons == SPECIES_SHELLOS)
            {
                return (538 + pat - 1);
            }
            if (mons == SPECIES_GASTRODON)
            {
                return (539 + pat - 1);
            }
            if (mons == SPECIES_GIRATINA)
            {
                return (540 + pat - 1);
            }
            if (mons == SPECIES_SHAYMIN)
            {
                return (541 + pat - 1);
            }
            if (mons == SPECIES_ROTOM)
            {
                return (542 + pat - 1);
            }
            else if (mons == SPECIES_CASTFORM)
            {
                return (547 + pat - 1);
            }
            else if (mons == SPECIES_CHERRIM)
            {
                return (550 + pat - 1);
            }
        }

        // pat is now treated as the return value.  is initially set as the mons+7, but is adjusted as necessary below

        struct FormData *PokeFormDataTbl = sys_AllocMemory(0, NELEMS_POKEFORMDATATBL * sizeof(struct FormData));
        ArchiveDataLoad(PokeFormDataTbl, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA);

        pat = (7 + mons);
        for (i = 0; i < NELEMS_POKEFORMDATATBL; i++)
        {
            if (mons == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no)
            {
                pat = PokeFormDataTbl[i].file + 7;
                break;
            }
        }
        sys_FreeMemoryEz(PokeFormDataTbl);
    }
    return pat;
}

/**
 *  @brief grab form if necessary for icons from BoxPokemon structure
 *
 *  @param ppp BoxPokemon structure to grab form for icon
 *  @return form if applicable; 0 otherwise
 */
u16 LONG_CALL PokeIconCgxPatternGet(struct BoxPokemon *ppp)
{
    u32 monsno;
    u32 i, ret = 0;

    monsno = GetBoxMonData(ppp, MON_DATA_SPECIES_OR_EGG, NULL);
    ret = monsno;

    switch (monsno)
    {
    case SPECIES_UNOWN:
    case SPECIES_DEOXYS:
    case SPECIES_BURMY:
    case SPECIES_WORMADAM:
    case SPECIES_SHELLOS:
    case SPECIES_GASTRODON:
    case SPECIES_GIRATINA:
    case SPECIES_SHAYMIN:
    case SPECIES_ROTOM:
        return GetBoxMonData(ppp, MON_DATA_FORM, NULL);

    default:;
        struct FormData *PokeFormDataTbl = sys_AllocMemory(0, NELEMS_POKEFORMDATATBL * sizeof(struct FormData));
        ArchiveDataLoad(PokeFormDataTbl, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA);

        for (i = 0; i < NELEMS_POKEFORMDATATBL; i++)
        {
            if (monsno == PokeFormDataTbl[i].species)
            {
                ret = GetBoxMonData(ppp, MON_DATA_FORM, NULL);
            }
        }
        sys_FreeMemoryEz(PokeFormDataTbl);
    }
    return ret;
}

/**
 *  @brief grab index for pal number for the icon that is loaded
 *
 *  @param mons species index
 *  @param form form number
 *  @param isegg TRUE if is egg
 *  @return index for palette number for the icon to load
 */
u32 LONG_CALL PokeIconPalNumGet(u32 mons, u32 form, u32 isegg)
{
    u32 i;

    if (isegg)
    {
        if (mons == SPECIES_MANAPHY)
            mons = 495;
        else
            mons = 494;
        return mons;
    }

    if (form != 0)
    {
        if (mons == SPECIES_DEOXYS)
        {
            mons = 496 + form - 1;
        }
        else if (mons == SPECIES_UNOWN)
        {
            mons = 499 + form - 1;
        }
        else if (mons == SPECIES_BURMY)
        {
            mons = 527 + form - 1;
        }
        else if (mons == SPECIES_WORMADAM)
        {
            mons = 529 + form - 1;
        }
        else if (mons == SPECIES_SHELLOS)
        {
            mons = 531 + form - 1;
        }
        else if (mons == SPECIES_GASTRODON)
        {
            mons = 532 + form - 1;
        }
        else if (mons == SPECIES_GIRATINA)
        {
            mons = 533 + form - 1;
        }
        else if (mons == SPECIES_SHAYMIN)
        {
            mons = 534 + form - 1;
        }
        else if (mons == SPECIES_ROTOM)
        {
            mons = 535 + form - 1;
        }
        else if (mons == SPECIES_CASTFORM)
        {
            mons = 540 + form - 1;
        }
        else if (mons == SPECIES_CHERRIM)
        {
            mons = 543 + form - 1;
        } else {
            if (form != 0)
            {
                struct FormData *PokeFormDataTbl = sys_AllocMemory(0, NELEMS_POKEFORMDATATBL * sizeof(struct FormData));
                ArchiveDataLoad(PokeFormDataTbl, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA);

                for (i = 0; i < NELEMS_POKEFORMDATATBL; i++)
                {
                    if (mons == PokeFormDataTbl[i].species && form == PokeFormDataTbl[i].form_no)
                    {
                        mons = PokeFormDataTbl[i].file;
                        break;
                    }
                }
                sys_FreeMemoryEz(PokeFormDataTbl);
            }
        }
    }
    return mons;
}

/**
 *  @brief grab mon icon palette number, 0-2
 *
 *  @param mons species index
 *  @param form form number
 *  @param isegg TRUE if pokémon is in an egg
 *  @return palette number 0-2
 */
u32 LONG_CALL GetMonIconPalette(u32 mons, u32 form, u32 isegg)
{
    u32 r0 = PokeIconPalNumGet(mons, form, isegg);
    return gIconPalTable[r0];
}

/**
 *  @brief grab pokémon overworld number
 *
 *  @param species base species
 *  @return pokémon overworld number
 */
u16 LONG_CALL GetPokemonOwNum(u16 species)
{
    u16 *sSpeciesToOWGfx = sys_AllocMemory(0, sizeof(u16) * (MAX_MON_NUM+1));
    u16 ret;

    ArchiveDataLoad(sSpeciesToOWGfx, ARC_CODE_ADDONS, CODE_ADDON_BASE_OW_PER_MON);
    ret = sSpeciesToOWGfx[species];
    sys_FreeMemoryEz(sSpeciesToOWGfx);

    return ret;
}

/**
 *  @brief grab the hidden ability for a species and form
 *
 *  @param species pokémon species
 *  @param form form number
 *  @return hidden ability of specific pokémon
 */
u16 LONG_CALL GetMonHiddenAbility(u16 species, u32 form)
{
#ifdef HIDDEN_ABILITIES
    u16 ability = 0;
    u16* hiddenAbilityTable = sys_AllocMemory(0, sizeof(u16) * MAX_SPECIES_INCLUDING_FORMS);

    species = PokeOtherFormMonsNoGet(species, form);
    ArchiveDataLoad(hiddenAbilityTable, ARC_CODE_ADDONS, CODE_ADDON_HIDDEN_ABILITY_LIST);
    ability = hiddenAbilityTable[species];
    sys_FreeMemoryEz(hiddenAbilityTable);

    return ability;
#else
    return 0;
#endif // HIDDEN_ABILITIES
}

/**
 *  @brief set a box mon's ability--modified to account for hidden ability+ability capsule flags--should only be used in scripted wild encounters/givepokemon contexts
 *
 *  @param boxmon struct BoxPokemon whose ability to set when being generated
 */
void LONG_CALL SetBoxMonAbility(struct BoxPokemon *boxmon) // actually takes boxmon struct as parameter, but that doesn't need to be properly defined yet
{
    BOOL fastMode;
    int mons_no, form;
    u32 ability1, ability2, hiddenability;
    u32 pid;
    u32 has_hidden_ability, ability_swapped;

    fastMode = BoxMonSetFastModeOn(boxmon);

#ifdef DEBUG_HIDDEN_ABILITIES
    SET_BOX_MON_HIDDEN_ABILITY_BIT(boxmon)
#endif // DEBUG_HIDDEN_ABILITIES

    mons_no = GetBoxMonData(boxmon, MON_DATA_SPECIES, NULL);
    pid = GetBoxMonData(boxmon, MON_DATA_PERSONALITY, NULL);
    form = GetBoxMonData(boxmon, MON_DATA_FORM, NULL);

    if (CheckScriptFlag(HIDDEN_ABILITIES_FLAG) == 1)
    {
        SET_BOX_MON_HIDDEN_ABILITY_BIT(boxmon)
        has_hidden_ability = 1;
        // need to clear this script flag because this function is used for in-battle form change ability resets as well, which shouldn't happen normally
        ClearScriptFlag(HIDDEN_ABILITIES_FLAG);
    }
    else
    {
        has_hidden_ability = GET_BOX_MON_HIDDEN_ABILITY_BIT(boxmon); // dummy_p2_1 & hidden ability mask
    }
    ability_swapped = GET_BOX_MON_SWAP_ABILITY_SLOT_BIT(boxmon);

    hiddenability = GetMonHiddenAbility(mons_no, form);
    mons_no = PokeOtherFormMonsNoGet(mons_no, form);

    ability1 = PokeFormNoPersonalParaGet(mons_no, form, PERSONAL_ABILITY_1);
    ability2 = PokeFormNoPersonalParaGet(mons_no, form, PERSONAL_ABILITY_2);

    if (has_hidden_ability && hiddenability != 0)
    {
        SetBoxMonData(boxmon, MON_DATA_ABILITY, (u8 *)&hiddenability);
    }
    else if (ability2 != 0)
    {
        u32 ability_to_set;
        if (pid & 1)
        {
            if (ability_swapped)
                ability_to_set = ability1;
            else
                ability_to_set = ability2;
        }
        else
        {
            if (ability_swapped)
                ability_to_set = ability2;
            else
                ability_to_set = ability1;
        }
        SetBoxMonData(boxmon, MON_DATA_ABILITY, (u8 *)&ability_to_set);
    }
    else
    {
        SetBoxMonData(boxmon, MON_DATA_ABILITY, (u8 *)&ability1);
    }

    BoxMonSetFastModeOff(boxmon, fastMode);
}

/**
 *  @brief get species base experience, modified for form.  base experience is no longer in personal
 *
 *  @param species species index
 *  @param form form number
 *  @return base experience
 */
u32 LONG_CALL GetSpeciesBaseExp(u32 species, u32 form)
{
    u16 *baseExpTable = sys_AllocMemory(0, sizeof(u16) * MAX_SPECIES_INCLUDING_FORMS);
    u16 baseExp;

    species = PokeOtherFormMonsNoGet(species, form); // for whatever reason alternate formes can have different base experiences

    ArchiveDataLoad(baseExpTable, ARC_CODE_ADDONS, CODE_ADDON_BASE_EXPERIENCE_LIST);
    baseExp = baseExpTable[species];
    sys_FreeMemoryEz(baseExpTable);

    return baseExp;
}

/**
 *  @brief get genesect type from held item
 *
 *  @param item held item
 *  @return type from held item
 */
u32 LONG_CALL GetGenesectType(u16 item) // this may just go unused
{
    switch (item)
    {
        case ITEM_DOUSE_DRIVE: return TYPE_WATER;
        case ITEM_SHOCK_DRIVE: return TYPE_ELECTRIC;
        case ITEM_BURN_DRIVE:  return TYPE_FIRE;
        case ITEM_CHILL_DRIVE: return TYPE_ICE;
    }
    return TYPE_NORMAL;
}

/**
 *  @brief get genesect form from held item
 *
 *  @param item held item
 *  @return form from held item
 */
u32 LONG_CALL GetGenesectForme(u16 item)
{
    switch (item)
    {
        case ITEM_DOUSE_DRIVE: return 1;
        case ITEM_SHOCK_DRIVE: return 2;
        case ITEM_BURN_DRIVE:  return 3;
        case ITEM_CHILL_DRIVE: return 4;
    }
    return 0;
}

/**
 *  @brief handle form change for arceus and genesect in the box when changing held item
 *
 *  @param bp struct BoxPokemon whose form to update
 */
void LONG_CALL ArceusBoxPokemonFormeChange(struct BoxPokemon *bp)
{
    u32 species = GetBoxMonData(bp, MON_DATA_SPECIES, NULL);
    u32 ability = GetBoxMonData(bp, MON_DATA_ABILITY, NULL);
    u32 item = GetBoxMonData(bp, MON_DATA_HELD_ITEM, NULL);
    u32 form = 0;

    if (species == SPECIES_ARCEUS
     && ability == ABILITY_MULTITYPE)
    {
        u32 held_effect = GetItemData(item, ITEM_PARAM_HOLD_EFFECT, 0); // heap id 0 gang
        form = GetArceusType(held_effect);
        SetBoxMonData(bp, MON_DATA_FORM, &form);
    }

    if (species == SPECIES_GENESECT)
    {
        form = GetGenesectForme(item);
        SetBoxMonData(bp, MON_DATA_FORM, &form);
    }
}

/**
 *  @brief extension of ArceusBoxPokemonFormeChange to account for giratina as well
 *
 *  @see ArceusBoxPokemonFormeChange
 *  @param bp struct BoxPokemon whose form to update
 *  @return TRUE if form needs updating; FALSE otherwise
 */
BOOL LONG_CALL HandleBoxPokemonFormeChanges(struct BoxPokemon* bp)
{
    u32 species = GetBoxMonData(bp, MON_DATA_SPECIES, NULL);

    if (species == SPECIES_ARCEUS || species == SPECIES_GENESECT)
    {
        u32 form_no = GetBoxMonData(bp, MON_DATA_FORM, NULL);

        ArceusBoxPokemonFormeChange(bp);

        if (GetBoxMonData(bp, MON_DATA_FORM, NULL) != form_no)
            return TRUE;
    }
    else if (species == SPECIES_GIRATINA)
    {
        u32 form_no = GetBoxMonData(bp, MON_DATA_FORM, NULL);

        GiratinaBoxPokemonFormChange(bp);

        if (GetBoxMonData(bp, MON_DATA_FORM, NULL) != form_no)
            return TRUE;
    }

    return FALSE;
}

/**
 *  @brief check if a reveal glass can be used on a PartyPokemon
 *
 *  @param pp PartyPokemon to check reveal glass against
 *  @return TRUE if reveal glass can be used; FALSE otherwise
 */
BOOL LONG_CALL CanUseRevealGlass(struct PartyPokemon *pp)
{
    u32 species = GetMonData(pp, MON_DATA_SPECIES, NULL);

    if (species == SPECIES_TORNADUS || species == SPECIES_THUNDURUS || species == SPECIES_LANDORUS)
    {
        return TRUE;
    }
    return FALSE;
}

#define RESHIRAM_MASK (0x80)
#define JUST_SPLICER_POS_MASK (0x7F)

/**
 *  @brief check if DNA splicers can be used, return position in party if so
 *
 *  @param pp PartyPokemon to check for
 *  @param party Party to search through for matching DNA splicers pokémon
 *  @return party position of pokémon that can be stored by the DNA splicers or'd with RESHIRAM_MASK if reshiram is the first pokémon found
 */
u32 LONG_CALL CanUseDNASplicersGrabSplicerPos(struct PartyPokemon *pp, struct Party *party)
{
    u32 species = GetMonData(pp, MON_DATA_SPECIES, NULL);
    u32 form_no = GetMonData(pp, MON_DATA_FORM, NULL);

    if (species != SPECIES_KYUREM) // return invalid party slot if species isn't kyurem
    {
        return 6;
    }

    for (s32 i = 0; i < ((form_no != 0) ? 6 : party->count); i++) // check all 6 party slots if looking to revert
    {
        struct PartyPokemon *currentmon = PokeParty_GetMemberPointer(party, i);
        u32 species2 = GetMonData(currentmon, MON_DATA_SPECIES, NULL);

        if (species2 == 0 && form_no != 0) // looking for empty slot to dump reshiram to from save
        {
            return i;
        }
        else if ((species2 == SPECIES_RESHIRAM || species2 == SPECIES_ZEKROM) && form_no == 0) // looking for a reshiram to store to the save
        {
            return ((species2 == SPECIES_RESHIRAM ? RESHIRAM_MASK : 0) | i);
        }
    }
    return 6;
}


u32 CanUseAbilityCapsule(struct PartyPokemon *pp)
{
    u32 species = GetMonData(pp, MON_DATA_SPECIES, NULL);
    u32 form = GetMonData(pp, MON_DATA_FORM, NULL);
    u32 hidden_ability = GET_MON_HIDDEN_ABILITY_BIT(pp);
    u32 ability1 = PokeFormNoPersonalParaGet(species, form, PERSONAL_ABILITY_1);
    u32 ability2 = PokeFormNoPersonalParaGet(species, form, PERSONAL_ABILITY_2);

    if (hidden_ability)
        return FALSE;

    // ability capsule can only be used if ability2 is nonzero and is not equal to ability1
    return (ability2 != 0 && ability1 != ability2);
}


u32 CanUseAbilityPatch(struct PartyPokemon *pp)
{
    u32 species = GetMonData(pp, MON_DATA_SPECIES, NULL);
    u32 form = GetMonData(pp, MON_DATA_FORM, NULL);
    u32 hidden_ability = GetMonHiddenAbility(species, form);

    return (hidden_ability != 0);
}


u32 ALIGN4 partyMenuSignal = 0;

u16 NatureToMintItem[] =
{
    [NATURE_LONELY] = ITEM_LONELY_MINT,
    [NATURE_ADAMANT] = ITEM_ADAMANT_MINT,
    [NATURE_NAUGHTY] = ITEM_NAUGHTY_MINT,
    [NATURE_BRAVE] = ITEM_BRAVE_MINT,
    [NATURE_BOLD] = ITEM_BOLD_MINT,
    [NATURE_IMPISH] = ITEM_IMPISH_MINT,
    [NATURE_LAX] = ITEM_LAX_MINT,
    [NATURE_RELAXED] = ITEM_RELAXED_MINT,
    [NATURE_MODEST] = ITEM_MODEST_MINT,
    [NATURE_MILD] = ITEM_MILD_MINT,
    [NATURE_RASH] = ITEM_RASH_MINT,
    [NATURE_QUIET] = ITEM_QUIET_MINT,
    [NATURE_CALM] = ITEM_CALM_MINT,
    [NATURE_GENTLE] = ITEM_GENTLE_MINT,
    [NATURE_CAREFUL] = ITEM_CAREFUL_MINT,
    [NATURE_SASSY] = ITEM_SASSY_MINT,
    [NATURE_TIMID] = ITEM_TIMID_MINT,
    [NATURE_HASTY] = ITEM_HASTY_MINT,
    [NATURE_JOLLY] = ITEM_JOLLY_MINT,
    [NATURE_NAIVE] = ITEM_NAIVE_MINT,
    [NATURE_SERIOUS] = ITEM_SERIOUS_MINT,
};

/**
 *  @brief see if an item changes attributes of the pokémon or not
 *
 *  @param wk work structure
 *  @param dat data structure
 */
u32 LONG_CALL UseItemMonAttrChangeCheck(struct PLIST_WORK *wk, void *dat)
{
    struct PartyPokemon *pp = PokeParty_GetMemberPointer(wk->dat->pp, wk->pos);
    partyMenuSignal = 0; // ensure it is 0 before potentially queuing up a different message

    // handle shaymin

    if (wk->dat->item == ITEM_GRACIDEA
     && GrashideaFeasibleCheck(pp) == TRUE)
    {
        wk->dat->after_mons = 1; // change to sky forme
        sys_FreeMemoryEz(dat);
        PokeList_FormDemoOverlayLoad(wk);
        return TRUE;
    }

    // handle tornadus/thundurus/landorus/enamorus

    if (wk->dat->item == ITEM_REVEAL_GLASS
     && CanUseRevealGlass(pp) == TRUE)
    {
        if (GetMonData(pp, MON_DATA_FORM, NULL) == 1)
            wk->dat->after_mons = 0; // change to incarnate forme
        else
            wk->dat->after_mons = 1; // change to therian forme
        sys_FreeMemoryEz(dat);
        PokeList_FormDemoOverlayLoad(wk);
        ChangePartyPokemonToForm(pp, wk->dat->after_mons); // this works alright
        return TRUE;
    }

#ifdef ALLOW_SAVE_CHANGES
    // handle reshiram/zekrom and kyurem

    u32 splicer_pos = CanUseDNASplicersGrabSplicerPos(pp, wk->dat->pp);
    u32 reshiramBool = splicer_pos & RESHIRAM_MASK;
    splicer_pos &= JUST_SPLICER_POS_MASK;

    if (wk->dat->item == ITEM_DNA_SPLICERS
     && (splicer_pos < 6))
    {
        void *saveData = SaveBlock2_get();
        struct SAVE_MISC_DATA *saveMiscData = Sav2_Misc_get(saveData);

        if (GetMonData(pp, MON_DATA_FORM, NULL) != 0 && saveMiscData->isMonStored[STORED_MONS_DNA_SPLICERS]) // revert forme and put reshiram back in party
        {
            u32 currForm = GetMonData(pp, MON_DATA_FORM, NULL);

            // grab reshiram from save
            // add reshiram to party--can't just use PokeParty_Add because icons freak out when you tell them to animate something that isn't there
            //PokeParty_Add(wk->dat->pp, &saveMiscData->storedMons[STORED_MONS_DNA_SPLICERS]);
            struct PartyPokemon *reshiram = PokeParty_GetMemberPointer(wk->dat->pp, splicer_pos);
            *reshiram = saveMiscData->storedMons[STORED_MONS_DNA_SPLICERS];
            partyMenuSignal = 1;

            // delete reshiram from save--may just be able to leave the old data without having to deal with memset as long as we flag it as no mon there
            memset((u8 *)&saveMiscData->storedMons[STORED_MONS_DNA_SPLICERS], 0, sizeof(struct PartyPokemon));
            saveMiscData->isMonStored[STORED_MONS_DNA_SPLICERS] = 0;

            wk->dat->after_mons = 0;

            ChangePartyPokemonToForm(pp, 0);
            SwapPartyPokemonMove(pp, currForm == 1 ? MOVE_ICE_BURN : MOVE_FREEZE_SHOCK, MOVE_GLACIATE);
            SwapPartyPokemonMove(pp, currForm == 1 ? MOVE_FUSION_FLARE : MOVE_FUSION_BOLT, MOVE_SCARY_FACE);
        }
        else if (saveMiscData->isMonStored[STORED_MONS_DNA_SPLICERS] == 0) // return nothing otherwise
        {
            // grab reshiram from party
            // store reshiram in save
            saveMiscData->storedMons[STORED_MONS_DNA_SPLICERS] = *PokeParty_GetMemberPointer(wk->dat->pp, splicer_pos); // may have to directly memcpy this but this is good for the moment
            // delete reshiram from party--splicer_pos has the position to delete
            PokeParty_Delete(wk->dat->pp, splicer_pos);
            saveMiscData->isMonStored[STORED_MONS_DNA_SPLICERS] = 1;

            if (splicer_pos < wk->pos) // adjust this position back so that the right pokemon's forme gets changed
            {
                wk->pos--;
                pp = PokeParty_GetMemberPointer(wk->dat->pp, wk->pos);
            }

            if (reshiramBool) // turn to white kyurem
                wk->dat->after_mons = 1;
            else              // turn to black kyurem
                wk->dat->after_mons = 2;

            ChangePartyPokemonToForm(pp, wk->dat->after_mons);
            SwapPartyPokemonMove(pp, MOVE_GLACIATE, wk->dat->after_mons == 1 ? MOVE_ICE_BURN : MOVE_FREEZE_SHOCK);
            SwapPartyPokemonMove(pp, MOVE_SCARY_FACE, wk->dat->after_mons == 1 ? MOVE_FUSION_FLARE : MOVE_FUSION_BOLT);
        }
        else { return FALSE; } // get out because no changes should be made
        sys_FreeMemoryEz(dat);
        PokeList_FormDemoOverlayLoad(wk);
        return TRUE;
    }
#endif

    // handle ability capsule

    if (wk->dat->item == ITEM_ABILITY_CAPSULE && CanUseAbilityCapsule(pp) == TRUE)
    {
        void *bag = Sav2_Bag_get(SaveBlock2_get());
        partyMenuSignal = 193; // signal to change the message to this index
        wk->dat->after_mons = GetMonData(pp, MON_DATA_FORM, NULL); // no form change
        sys_FreeMemoryEz(dat);
        PokeList_FormDemoOverlayLoad(wk);
        TOGGLE_MON_SWAP_ABILITY_SLOT_BIT(pp)
        ResetPartyPokemonAbility(pp);
        Bag_TakeItem(bag, ITEM_ABILITY_CAPSULE, 1, 11);
        return TRUE;
    }

    // handle ability patch

    if (wk->dat->item == ITEM_ABILITY_PATCH && CanUseAbilityPatch(pp) == TRUE)
    {
        void *bag = Sav2_Bag_get(SaveBlock2_get());
        partyMenuSignal = 193; // signal to change the message to this index
        wk->dat->after_mons = GetMonData(pp, MON_DATA_FORM, NULL); // no form change
        sys_FreeMemoryEz(dat);
        PokeList_FormDemoOverlayLoad(wk);
        TOGGLE_MON_HIDDEN_ABILITY_BIT(pp)
        ResetPartyPokemonAbility(pp);
        Bag_TakeItem(bag, wk->dat->item, 1, 11);
        return TRUE;
    }

    // handle nature mints

    if (IS_ITEM_NATURE_MINT(wk->dat->item))
    {
        u32 nature;
        void *bag = Sav2_Bag_get(SaveBlock2_get());
        for (nature = 0; nature < 25; nature++)
        {
            if (NatureToMintItem[nature] == wk->dat->item)
                break;
        }
        partyMenuSignal = 194 + nature; // signal to change the message to this index
        SET_MON_NATURE_OVERRIDE(pp, nature)
        RecalcPartyPokemonStats(pp);
        Bag_TakeItem(bag, wk->dat->item, 1, 11);
        sys_FreeMemoryEz(dat);
        PokeList_FormDemoOverlayLoad(wk);
        return TRUE;
    }

    return FALSE;
}

/**
 *  @brief modify PokeListProc_End to increase party size so that when Reshiram/Zekrom are added back from DNA Splicers there are no crashes
 *
 *  @param proc work structure
 *  @param seq step in PokeListProc_End sequence
 */
u32 LONG_CALL PokeListProc_End_Extend(void *proc, int *seq) // finally add to pokecount so that icons are fine
{
    struct PLIST_WORK *wk = PROC_GetWork(proc);

    if (partyMenuSignal == 1)
    {
        partyMenuSignal = 0;
        wk->dat->pp->count++;
    }

    return PokeListProc_End(proc, seq);
}

/**
 *  @brief change a PartyPokemon to form, recalculating stats and ability
 *
 *  @param pp PartyPokemon whose form to change
 *  @param form form number
 */
void LONG_CALL ChangePartyPokemonToForm(struct PartyPokemon *pp, u32 form)
{
    if (form != GetMonData(pp, MON_DATA_FORM, NULL))
    {
        SetMonData(pp, MON_DATA_FORM, &form);
        RecalcPartyPokemonStats(pp);
        ResetPartyPokemonAbility(pp);
    }
}

/**
 *  @brief swap out oldMove with newMove in a PartyPokemon's learnset (if it exists)
 *
 *  @param pp PartyPokemon whose move to swap
 *  @param oldMove move to be replaced
 *  @param newMove move that will be written
 */
void LONG_CALL SwapPartyPokemonMove(struct PartyPokemon *pp, u32 oldMove, u32 newMove)
{
    for (u32 i = 0; i < 4; i++)
    {
        if (GetMonData(pp, MON_DATA_MOVE1+i, NULL) == oldMove)
        {
            SetMonData(pp, MON_DATA_MOVE1+i, &newMove);
            u32 maxPP = GetMonData(pp, MON_DATA_MOVE1MAXPP+i, NULL);
            if (GetMonData(pp, MON_DATA_MOVE1PP+i, NULL) > maxPP)
            {
                SetMonData(pp, MON_DATA_MOVE1PP+i, &maxPP);
            }
            break;
        }
    }
}

/**
 *  @brief combine ChangePartyPokemonToForm and SwapPartyPokemonMove
 *
 *  @see ChangePartyPokemonToForm
 *  @see SwapPartyPokemonMove
 */
void LONG_CALL ChangePartyPokemonToFormSwapMove(struct PartyPokemon *pp, u32 form, u32 oldMove, u32 newMove)
{
    if (form != GetMonData(pp, MON_DATA_FORM, NULL))
    {
        ChangePartyPokemonToForm(pp, form);
        SwapPartyPokemonMove(pp, oldMove, newMove);
    }
}

/**
 *  @brief grab current season from the RTC settings
 *
 *  @return current season
 */
u32 LONG_CALL GrabCurrentSeason(void)
{
    struct RTCDate date;
    GF_RTC_CopyDate(&date);

    return ((u8)(date.month-1)) % 4;
}

/**
 *  @brief update passive forms (gender and deerling seasons)
 *
 *  @param pp PartyPokemon whose form to update (if applicable)
 */
void LONG_CALL UpdatePassiveForms(struct PartyPokemon *pp)
{
    u32 species = GetMonData(pp, MON_DATA_SPECIES, NULL);
    u32 form = 0;
    BOOL shouldUpdate = TRUE;

    switch (species)
    {
        case SPECIES_DEERLING:
        case SPECIES_SAWSBUCK:
            form = GrabCurrentSeason(); // update to the current season
            break;
        case SPECIES_FRILLISH:
        case SPECIES_JELLICENT:
        case SPECIES_MEOWSTIC:
        case SPECIES_INDEEDEE:
            form = gf_rand() & 1; // 1/2 male
            break;
        case SPECIES_BASCULEGION:
            form = (gf_rand() & 1) ? 3 : 0; // 1/2 male
            break;
        case SPECIES_PYROAR:
            form = (gf_rand() % 8 != 0); // 1/8 male
            break;
        default:
            shouldUpdate = FALSE;
    }

    if (shouldUpdate) {
        SetMonData(pp, MON_DATA_FORM, &form);
        RecalcPartyPokemonStats(pp);
        ResetPartyPokemonAbility(pp);
    }
}

/**
 *  @brief run through a party and update all of the deerling forms if present
 *
 *  @param party Party to run through to check for deerling
 */
BOOL LONG_CALL Party_UpdateDeerlingSeasonForm(struct Party *party)
{
    u32 ret = FALSE;

    for (int i = 0; i < party->count; i++)
    {
        struct PartyPokemon *pp = PokeParty_GetMemberPointer(party, i);
        u32 species = GetMonData(pp, MON_DATA_SPECIES, NULL);
        u32 newForm = GrabCurrentSeason();
        if (newForm != GetMonData(pp, MON_DATA_FORM, NULL) && (species == SPECIES_DEERLING || species == SPECIES_SAWSBUCK))
        {
            SetMonData(pp, MON_DATA_FORM, &newForm);
            ret = TRUE;
        }
    }

    return ret;
}

/**
 *  @brief function that attempts to reset shaymin from sky form when the RTC passes min_max
 *         expanded to allow for deerling forms to update when season changes
 *
 *  @param party party to run through and reset shaymin in/update deerling form
 *  @param min_max
 *  @param time
 *  @return TRUE if form change for shaymin is happening; FALSE otherwise
 */
BOOL LONG_CALL Party_TryResetShaymin(struct Party *party, int min_max, const struct RTCTime *time)
{
    u32 ret = FALSE;
    // new:  deerling handling
    ret = Party_UpdateDeerlingSeasonForm(party);

    // shaymin handling from pokeheartgold
    int hour, minute;
    if (time->hour >= 20 || time->hour < 4) {
        hour = time->hour;
        if (hour < 4) {
            hour += 24;
        }
        minute = time->minute + 60 * (hour - 20);
        if (minute < min_max + 1) {
            Party_ResetAllShayminToLandForme(party);
            ret = TRUE;
        }/* else {
            return FALSE;
        }*/
    } else {
        hour = time->hour;
        minute = time->minute + 60 * (hour - 4);
        if (minute < min_max) {
            Party_ResetAllShayminToLandForme(party);
            ret = TRUE;
        }/* else {
            return FALSE;
        }*/
    }

    return ret;
}

/**
 *  @brief load egg moves to dest and return amount of egg moves
 *
 *  @param pokemon PartyPokemon to grab egg moves for
 *  @param dest destination for the array of egg moves
 *  @return number of egg moves in dest
 */
u8 LONG_CALL LoadEggMoves(struct PartyPokemon *pokemon, u16 *dest)
{
    u16 n;
    u16 *kowaza_list;
    u16 offset;
    u16 species;
    u16 i;

    kowaza_list = sys_AllocMemory(0, NUM_EGG_MOVES_TOTAL*2);
    ArchiveDataLoad(kowaza_list, ARC_EGG_MOVES, 0);

    n = 0;
    offset = 0;

    species = PokeOtherFormMonsNoGet(GetMonData(pokemon, MON_DATA_SPECIES, NULL), GetMonData(pokemon, MON_DATA_FORM, NULL));
    for (i = 0; i < NUM_EGG_MOVES_TOTAL; i++) {
        if (species + 20000 == kowaza_list[i]) {
            offset = i + 1;
            break;
        }
    }
    for (i = 0; i < EGG_MOVES_PER_MON; i++) {
        if (kowaza_list[offset + i] > 20000) {
            break;
        }
        dest[i] = kowaza_list[offset + i];
        n++;
    }
    sys_FreeMemoryEz(kowaza_list);
    return n;
}

/**
 *  @brief check if 2 PartyPokemon are essentially the same PartyPokemon beyond duplication/RNG manipulation
 *         checks species, pid, ot id, raw stats, and iv's
 *
 *  @param pokemon1 first PartyPokemon to compare
 *  @param pokemon2 second PartyPokemon to compare
 *  @return TRUE if the PartyPokemon are identical
 */
u32 LONG_CALL CheckIfMonsAreEqual(struct PartyPokemon *pokemon1, struct PartyPokemon *pokemon2)
{
    if ((int *)pokemon1 == (int *)pokemon2)
        return TRUE;

    if (GetMonData(pokemon1, MON_DATA_SPECIES, NULL) == GetMonData(pokemon2, MON_DATA_SPECIES, NULL)
     && GetMonData(pokemon1, MON_DATA_PERSONALITY, NULL) == GetMonData(pokemon2, MON_DATA_PERSONALITY, NULL)
     && GetMonData(pokemon1, MON_DATA_OTID, NULL) == GetMonData(pokemon2, MON_DATA_OTID, NULL))
    {
        for (int i = MON_DATA_STATUS; i <= MON_DATA_SPECIAL_DEFENSE; i++) // all the raw stats
        {
            if (GetMonData(pokemon1, i, NULL) != GetMonData(pokemon2, i, NULL))
                return FALSE;
        }
        for (int i = MON_DATA_MOVE1; i <= MON_DATA_SPDEF_IV; i++) // moves, pp, iv's
        {
            if (GetMonData(pokemon1, i, NULL) != GetMonData(pokemon2, i, NULL))
                return FALSE;
        }

        return TRUE;
    }

    return FALSE;
}


// top 5 bits are now form bit
// if the form is nonzero, have to set it to that form.  most mons should keep their forms on evolution, but specifically significant gendered mons will need to not
#define GET_TARGET_AND_SET_FORM { \
    if (party != NULL) \
    { \
        for (j = 0; j < party->count; j++) \
        { \
            ppFromParty = PokeParty_GetMemberPointer(party, j); \
            if (CheckIfMonsAreEqual(pokemon, ppFromParty)) \
                break; \
        } \
        target = evoTable[i].target & 0x7FF; \
        form = evoTable[i].target >> 11; \
        if (form != 0) { \
            SetMonData(ppFromParty, MON_DATA_FORM, &form); \
        } \
    } \
    else { \
        target = evoTable[i].target & 0x7FF; \
        form = evoTable[i].target >> 11; \
        SetMonData(pokemon, MON_DATA_FORM, &form); \
    } \
}

/**
 *  @brief get the evolution species for a pokemon.  generalized depending on context
 *         also set form depending on the evolution structure read from armips/data/evodata.s
 *
 *  @param party Party to check through for remoraid and such
 *  @param pokemon PartyPokemon to potentially evolve
 *  @param context EVOCTX_* constant deciding which evolution methods to check
 *  @param usedItem item used on the PartyPokemon, if applicable
 *  @param method_ret pointer to an integer to store the evolution method that was used to evolve
 *  @return the target species to evolev into
 */
u16 LONG_CALL GetMonEvolution(struct Party *party, struct PartyPokemon *pokemon, u8 context, u16 usedItem, int *method_ret) {
    u16 species;
    u16 heldItem;
    u8 level;
    int i, j;
    u16 target = SPECIES_NONE;
    u16 friendship;
    u32 pid;
    u8 holdEffect;
    u8 beauty; // for Feebas, but queried unconditionally.
    u16 pid_hi = 0;
    struct Evolution *evoTable;
    int method_local;
    u32 form = GetMonData(pokemon, MON_DATA_FORM, NULL);
    u32 lowkey = 0;

    struct PartyPokemon *ppFromParty = NULL;

    species = GetMonData(pokemon, MON_DATA_SPECIES, NULL);
    heldItem = GetMonData(pokemon, MON_DATA_HELD_ITEM, NULL);
    pid = GetMonData(pokemon, MON_DATA_PERSONALITY, NULL);
    beauty = GetMonData(pokemon, MON_DATA_BEAUTY, NULL);
    pid_hi = (u16)((pid & 0xFFFF0000) >> 16);
    holdEffect = GetItemData(heldItem, ITEM_PARAM_HOLD_EFFECT, 0);

    if (species != SPECIES_KADABRA && holdEffect == HOLD_EFFECT_NO_EVOLVE && context != EVOCTX_ITEM_USE) {
        return SPECIES_NONE;
    }

    // Spiky-ear Pichu cannot evolve
    if (species == SPECIES_PICHU && form == 1) {
        return SPECIES_NONE;
    }

    if (method_ret == NULL) {
        method_ret = &method_local;
    }

    species = PokeOtherFormMonsNoGet(species, form); // factor in form into species to cover shit like galarian corsola + cap pikachu that can't evolve

    evoTable = sys_AllocMemory(0, MAX_EVOS_PER_POKE * sizeof(struct Evolution));
    ArchiveDataLoad(evoTable, ARC_EVOLUTIONS, species);

    switch (context) {
    case EVOCTX_LEVELUP:
        level = (u8)GetMonData(pokemon, MON_DATA_LEVEL, NULL);
        friendship = (u16)GetMonData(pokemon, MON_DATA_FRIENDSHIP, NULL);
        for (i = 0; i < MAX_EVOS_PER_POKE; i++) {
            switch (evoTable[i].method) {
            case EVO_NONE:
                break;
            case EVO_FRIENDSHIP:
                if (friendship >= 220) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_FRIENDSHIP;
                }
                break;
            case EVO_FRIENDSHIP_DAY:
                if (IsNighttime() == 0 && friendship >= 220) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_FRIENDSHIP_DAY;
                }
                break;
            case EVO_FRIENDSHIP_NIGHT:
                if (IsNighttime() == 1 && friendship >= 220) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_FRIENDSHIP_NIGHT;
                }
                break;
            case EVO_LEVEL:
                if (evoTable[i].param <= level) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL;
                }
                break;
            case EVO_TRADE:
                break;
            case EVO_TRADE_ITEM:
                break;
            case EVO_STONE:
                break;
            case EVO_LEVEL_ATK_GT_DEF:
                if (evoTable[i].param <= level && GetMonData(pokemon, MON_DATA_ATTACK, NULL) > GetMonData(pokemon, MON_DATA_DEFENSE, NULL)) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_ATK_GT_DEF;
                }
                break;
            case EVO_LEVEL_ATK_EQ_DEF:
                if (evoTable[i].param <= level && GetMonData(pokemon, MON_DATA_ATTACK, NULL) == GetMonData(pokemon, MON_DATA_DEFENSE, NULL)) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_ATK_EQ_DEF;
                }
                break;
            case EVO_LEVEL_ATK_LT_DEF:
                if (evoTable[i].param <= level && GetMonData(pokemon, MON_DATA_ATTACK, NULL) < GetMonData(pokemon, MON_DATA_DEFENSE, NULL)) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_ATK_LT_DEF;
                }
                break;
            case EVO_LEVEL_PID_LO:
                if (evoTable[i].param <= level && pid_hi % 10 < 5) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_PID_LO;
                }
                break;
            case EVO_LEVEL_PID_HI:
                if (evoTable[i].param <= level && pid_hi % 10 >= 5) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_PID_HI;
                }
                break;
            case EVO_LEVEL_NINJASK:
                if (evoTable[i].param <= level) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_NINJASK;
                }
                break;
            case EVO_LEVEL_SHEDINJA:
                *method_ret = EVO_LEVEL_SHEDINJA;
                break;
            case EVO_BEAUTY:
                if (evoTable[i].param <= beauty) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_BEAUTY;
                }
                break;
            case EVO_STONE_MALE:
                break;
            case EVO_STONE_FEMALE:
                break;
            case EVO_ITEM_DAY:
                if (IsNighttime() == 0 && evoTable[i].param == heldItem) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_ITEM_DAY;
                }
                break;
            case EVO_ITEM_NIGHT:
                if (IsNighttime() == 1 && evoTable[i].param == heldItem) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_ITEM_NIGHT;
                }
                break;
            case EVO_HAS_MOVE:
                if (MonHasMove(pokemon, evoTable[i].param) == TRUE) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_HAS_MOVE;
                }
                break;
            case EVO_OTHER_PARTY_MON:
                if (party != NULL && PartyHasMon(party, evoTable[i].param) == 1) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_OTHER_PARTY_MON;
                }
                break;
            case EVO_LEVEL_MALE:
                if (GetMonData(pokemon, MON_DATA_GENDER, NULL) == POKEMON_GENDER_MALE && evoTable[i].param <= level) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_MALE;
                }
                break;
            case EVO_LEVEL_FEMALE:
                if (GetMonData(pokemon, MON_DATA_GENDER, NULL) == POKEMON_GENDER_FEMALE && evoTable[i].param <= level) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_FEMALE;
                }
                break;
            case EVO_CORONET: // magnetic field at route 43+kanto power plant
                {
                    u32 location = gFieldSysPtr->location->mapId;

                    if (location == 45 || location == 18)
                    {
                        GET_TARGET_AND_SET_FORM;
                        *method_ret = EVO_CORONET;
                    }
                }
                break;
            case EVO_ETERNA: // mossy rock at ilex+viridian forests
                {
                    u32 location = gFieldSysPtr->location->mapId;

                    if (location == 117 || location == 147)
                    {
                        GET_TARGET_AND_SET_FORM;
                        *method_ret = EVO_ETERNA;
                    }
                }
                break;
            case EVO_ROUTE217: // icy rock at ice path+seafoam islands
                {
                    u32 location = gFieldSysPtr->location->mapId;

                    if (location == 239 || location == 456)
                    {
                        GET_TARGET_AND_SET_FORM;
                        *method_ret = EVO_ROUTE217;
                    }
                }
                break;

            case EVO_LEVEL_DAY:
                if (IsNighttime() == 0 && evoTable[i].param <= level) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_DAY;
                }
                break;
            case EVO_LEVEL_NIGHT:
                if (IsNighttime() == 1 && evoTable[i].param <= level) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_LEVEL_NIGHT;
                }
                break;
            case EVO_LEVEL_DUSK:
                {
                    struct RTCTime time;
                    GF_RTC_CopyTime(&time);

                    if (time.hour == 17 && evoTable[i].param <= level) {
                        GET_TARGET_AND_SET_FORM;
                        *method_ret = EVO_LEVEL_DUSK;
                    }
                }
                break;
            case EVO_LEVEL_RAIN:
                if (evoTable[i].param <= level)
                {
                    u32 weather = Fsys_GetWeather_HandleDiamondDust(gFieldSysPtr, gFieldSysPtr->location->mapId);

                    switch (weather)
                    {
                    case WEATHER_SYS_RAIN:
                    case WEATHER_SYS_HEAVY_RAIN:
                    case WEATHER_SYS_THUNDER:
                        GET_TARGET_AND_SET_FORM;
                        *method_ret = EVO_LEVEL_RAIN;
                    }
                }
                break;
            case EVO_HAS_MOVE_TYPE:
                {
                    int k;

                    for (k = 0; k < 4; k++)
                    {
                        if (GetMoveData(GetMonData(pokemon, MON_DATA_MOVE1+k, NULL), MOVE_DATA_TYPE) == evoTable[i].param)
                        {
                            GET_TARGET_AND_SET_FORM;
                            *method_ret = EVO_HAS_MOVE_TYPE;
                            break;
                        }
                    }
                }
                break;
            case EVO_LEVEL_DARK_TYPE_MON_IN_PARTY:
                if (evoTable[i].param <= level && party != NULL)
                {
                    for (int k = 0; k < 6; k++)
                    {
                        if (!CheckIfMonsAreEqual(pokemon, PokeParty_GetMemberPointer(party, k)) // make sure that pancham doesn't satisfy its own requirement
                         && (GetMonData(PokeParty_GetMemberPointer(party, k), MON_DATA_TYPE_1, NULL) == TYPE_DARK || GetMonData(PokeParty_GetMemberPointer(party, k), MON_DATA_TYPE_2, NULL) == TYPE_DARK)) // if either type is dark then set evolution
                        {
                            GET_TARGET_AND_SET_FORM;
                            *method_ret = EVO_LEVEL_DARK_TYPE_MON_IN_PARTY;
                            break;
                        }
                    }
                }
                break;
            case EVO_LEVEL_NATURE_LOW_KEY:
                lowkey = 1;
                FALLTHROUGH;
            case EVO_LEVEL_NATURE_AMPED:
                if (evoTable[i].param <= level)
                {
                    // toxel evolution disrespects nature mints
                    u32 nature = GetNatureFromPersonality(GetMonData(pokemon, MON_DATA_PERSONALITY, NULL));
                    switch (nature)
                    {
                    case NATURE_ADAMANT:
                    case NATURE_BRAVE:
                    case NATURE_DOCILE:
                    case NATURE_HARDY:
                    case NATURE_HASTY:
                    case NATURE_IMPISH:
                    case NATURE_JOLLY:
                    case NATURE_LAX:
                    case NATURE_NAIVE:
                    case NATURE_NAUGHTY:
                    case NATURE_QUIRKY:
                    case NATURE_RASH:
                    case NATURE_SASSY:
                        if (lowkey == 0) // for the amped evo method
                        {
                            GET_TARGET_AND_SET_FORM;
                            *method_ret = EVO_LEVEL_NATURE_AMPED;
                        }
                        break;
                    default:
                        if (lowkey == 1) // for the lowkey evo method
                        {
                            GET_TARGET_AND_SET_FORM;
                            *method_ret = EVO_LEVEL_NATURE_LOW_KEY;
                        }
                        break;
                    }
                }
                break;
            case EVO_AMOUNT_OF_CRITICAL_HITS: // needs to hit an amount of critical hits in a battle in one go.  need to log critical hits somewhere else
                if (GET_MON_CRITICAL_HIT_EVOLUTION_BIT(pokemon))
                {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_AMOUNT_OF_CRITICAL_HITS;
                }
                break;
            case EVO_HURT_IN_BATTLE_AMOUNT:
                {
                    u32 hp = GetMonData(pokemon, MON_DATA_HP, NULL), maxhp = GetMonData(pokemon, MON_DATA_MAXHP, NULL);

                    if (hp && (maxhp - hp) >= evoTable[i].param) // if the mon has evoTable[i].param hp less than its max
                    {
                        GET_TARGET_AND_SET_FORM;
                        *method_ret = EVO_HURT_IN_BATTLE_AMOUNT;
                    }
                }
                break;
            }
            if (target != SPECIES_NONE) {
                break;
            }
        }
        break;
    case EVOCTX_TRADE:
        for (i = 0; i < MAX_EVOS_PER_POKE; i++) {
            switch (evoTable[i].method) {
            case EVO_TRADE:
                GET_TARGET_AND_SET_FORM;
                *method_ret = EVO_TRADE;
                break;
            case EVO_TRADE_ITEM:
                if (heldItem == evoTable[i].param) {
                    GET_TARGET_AND_SET_FORM;
                    *method_ret = EVO_TRADE_ITEM;
                }
                break;
            //case EVO_TRADE_SPECIFIC_MON: // need to figure out how to deduce tradedSpecies
            //    if (tradedSpecies == evoTable[i].param) {
            //        GET_TARGET_AND_SET_FORM;
            //        *method_ret = EVO_TRADE_SPECIFIC_MON;
            //    }
            //    break;
            }
            if (target != SPECIES_NONE) {
                break;
            }
        }
        break;
    case EVOCTX_ITEM_CHECK:
    case EVOCTX_ITEM_USE:
        for (i = 0; i < MAX_EVOS_PER_POKE; i++) {
            if (evoTable[i].method == EVO_STONE && usedItem == evoTable[i].param) {
                GET_TARGET_AND_SET_FORM;
                *method_ret = 0;
                break;
            }
            if (evoTable[i].method == EVO_STONE_MALE && GetMonData(pokemon, MON_DATA_GENDER, NULL) == POKEMON_GENDER_MALE && usedItem == evoTable[i].param) {
                GET_TARGET_AND_SET_FORM;
                *method_ret = 0;
                break;
            }
            if (evoTable[i].method == EVO_STONE_FEMALE && GetMonData(pokemon, MON_DATA_GENDER, NULL) == POKEMON_GENDER_FEMALE && usedItem == evoTable[i].param) {
                GET_TARGET_AND_SET_FORM;
                *method_ret = 0;
                break;
            }
        }
        break;
    }
    sys_FreeMemoryEz(evoTable);
    return target;
}

/**
 *  @brief grab the sex given species, pid, and form
 *
 *  @param species species id
 *  @param pid personality id
 *  @param form form number
 *  @return POKEMON_GENDER_* constant describing which gender the pokémon is
 */
u32 LONG_CALL GrabSexFromSpeciesAndForm(u32 species, u32 pid, u32 form)
{
    u32 realSpecies = PokeOtherFormMonsNoGet(species, form);
    u32 genderRatio = PokeFormNoPersonalParaGet(realSpecies, form, PERSONAL_GENDER_RATIO);
    switch (genderRatio)
    {
        case 0:   // fully male
            return POKEMON_GENDER_MALE;
        case 254: // fully female
            return POKEMON_GENDER_FEMALE;
        case 255: // unknown
            return POKEMON_GENDER_UNKNOWN;
    }

    if (genderRatio > (pid & 0xFF))
        return POKEMON_GENDER_FEMALE;

    return POKEMON_GENDER_MALE;
}

/**
 *  @brief get the sex of a BoxPokemon
 *
 *  @param bp BoxPokemon whose sex to get
 *  @return sex of passed BoxPokemon as POKEMON_GENDER_* constant
 */
u32 LONG_CALL GetBoxMonSex(struct BoxPokemon *bp)
{
    u32 species, pid, flag, form;

    flag = BoxMonSetFastModeOn(bp);
    species = GetBoxMonData(bp, MON_DATA_SPECIES, NULL);
    pid = GetBoxMonData(bp, MON_DATA_PERSONALITY, NULL);
    form = GetBoxMonData(bp, MON_DATA_FORM, NULL);
    BoxMonSetFastModeOff(bp, flag);

    return GrabSexFromSpeciesAndForm(species, pid, form);
}

/**
 *  @brief get the pokémon overworld tag from species, form, and gender
 *
 *  @param species species index
 *  @param form form number
 *  @param isFemale TRUE if female; FALSE otherwise
 *  @return .tag entry in gOWTagToFileNum
 */
u16 LONG_CALL get_mon_ow_tag(u16 species, u32 form, u32 isFemale)
{
    u32 adjustment = 0, ret = 0;
    if (species > SPECIES_SNOVER) // split between 0x1AC and 0x1E4
    {
        adjustment = 0x1E4;
    }
    else
    {
        adjustment = 0x1AC;
    }

    ret = get_ow_data_file_num(species) + adjustment;

    u8 *form_table = sys_AllocMemory(0, MAX_MON_NUM);
    ArchiveDataLoad(form_table, ARC_CODE_ADDONS, CODE_ADDON_NUM_OF_OW_FORMS_PER_MON);

    if (species == SPECIES_PIKACHU) // pikachu forms take gender adjustment into account and are looser with restrictions
    {
        if (isFemale || form) // both female pikachu and those with forms will need this adjustment
            ret++;
        if (form < form_table[SPECIES_PIKACHU]) // invalid pikachu forms will show as female, but that's okay
            ret += form;
    }
    else if (species == SPECIES_SLOWBRO && form)
    {
        u32 newform = form - 1;
        if (newform <= form_table[SPECIES_SLOWBRO])
            ret += newform;
    }
    else if (form <= form_table[species])
        ret += form;
    else if (isFemale && gDimorphismTable[species-1])
        ret += isFemale;

    sys_FreeMemoryEz(form_table);

    return ret;
}

/**
 *  @brief give a PartyPokemon to the player given species, level, form, ability, etc.
 *
 *  @param heapId heap to use for memory here
 *  @param saveData saveData as gotten from SaveBlock2_get()
 *  @param species species index
 *  @param level level of the given PartyPokemon
 *  @param forme form number
 *  @param ability ability index
 *  @param heldItem held item index
 *  @param ball ball id
 *  @param encounterType encounter type
 *  @return TRUE if successful; FALSE otherwise
 */
BOOL LONG_CALL GiveMon(int heapId, void *saveData, int species, int level, int forme, u8 ability, u16 heldItem, int ball, int encounterType) {
    struct Party *party;
    struct PartyPokemon *pokemon;
    void *profile;
    u32 sp1C;
    BOOL result;

    profile = Sav2_PlayerData_GetProfileAddr(saveData);
    party = SaveData_GetPlayerPartyPtr(saveData);

    pokemon = AllocMonZeroed(heapId);
    ZeroMonData(pokemon);
    PokeParaSet(pokemon, species, level, 32, FALSE, 0, 0, 0); // CreateMon
    sub_020720FC(pokemon, profile, ITEM_POKE_BALL, ball, encounterType, heapId);
    sp1C = heldItem;
    SetMonData(pokemon, MON_DATA_HELD_ITEM, &sp1C);
    SetMonData(pokemon, MON_DATA_FORM, &forme);

    if (forme != 0) // reinitialize moves for different learnsets
    {
        InitBoxMonMoveset(&pokemon->box);
    }

    RecalcPartyPokemonStats(pokemon); // recalculate stats

    if (CheckScriptFlag(HIDDEN_ABILITIES_FLAG) == 1)
    {
        SET_MON_HIDDEN_ABILITY_BIT(pokemon)
        // need to clear this script flag because this function is used for in-battle form change ability resets as well, which shouldn't happen normally
        ClearScriptFlag(HIDDEN_ABILITIES_FLAG);
    }

    if (ability != 0) {
        SetMonData(pokemon, MON_DATA_ABILITY, &ability);
    } else {
        ResetPartyPokemonAbility(pokemon); // with the flag set, the hidden ability should be set
    }
    result = PokeParty_Add(party, pokemon);
    if (result) {
        UpdatePokedexWithReceivedSpecies(saveData, pokemon);
    }
    sys_FreeMemoryEz(pokemon);

    return result;
}

extern u32 space_for_setmondata;

/**
 *  @brief add a PartyPokemon to the "wild battler"'s party
 *
 *  @param inTarget battler whose party to add to
 *  @param encounterInfo various encounter information structure
 *  @param encounterPartyPokemon PartyPokemon to modify and add
 *  @param encounterBattleParam battle param
 *  @return TRUE if PokeParty_Add was successful
 */
BOOL LONG_CALL AddWildPartyPokemon(int inTarget, EncounterInfo *encounterInfo, struct PartyPokemon *encounterPartyPokemon, struct BATTLE_PARAM *encounterBattleParam)
{
    int range = 0;
    u8 change_form = 0;
    u8 form_no;
    u16 species;

    if (encounterInfo->isEgg == 0 && encounterInfo->ability == ABILITY_COMPOUND_EYES)
    {
        range = 1;
    }

    species = GetMonData(encounterPartyPokemon, MON_DATA_SPECIES, NULL);

    if (space_for_setmondata != 0)
    {
        change_form = 1;
        form_no = space_for_setmondata;//(species & 0xF800) >> 11;
        space_for_setmondata = 0;
    }

    WildMonSetRandomHeldItem(encounterPartyPokemon, encounterBattleParam->fight_type, range);

    if (species == SPECIES_UNOWN)
    {
        change_form = 1;
        form_no = GrabAndRegisterUnownForm(encounterInfo);
    }
    else if (species == SPECIES_DEERLING || species == SPECIES_SAWSBUCK)
    {
        UpdatePassiveForms(encounterPartyPokemon);
    }

    if (CheckScriptFlag(HIDDEN_ABILITIES_FLAG) == 1)
    {
        SET_MON_HIDDEN_ABILITY_BIT(encounterPartyPokemon)
        ClearScriptFlag(HIDDEN_ABILITIES_FLAG);
        ResetPartyPokemonAbility(encounterPartyPokemon);
    }

    if (change_form)
    {
        SetMonData(encounterPartyPokemon, MON_DATA_FORM, (u8 *)&form_no);
        RecalcPartyPokemonStats(encounterPartyPokemon);
        ResetPartyPokemonAbility(encounterPartyPokemon);
        InitBoxMonMoveset(&encounterPartyPokemon->box);
    }
    return PokeParty_Add(encounterBattleParam->poke_party[inTarget], encounterPartyPokemon);
}

/**
 *  @brief create BoxPokemon given the parameters
 *
 *  @param boxmon BoxPokemon to fill out
 *  @param species species index
 *  @param level level the BoxPokemon should be set at
 *  @param pow iv to set flat across the board; else set randomly
 *  @param rndflag if TRUE, use rnd for the personality id
 *  @param rnd if rndflag is TRUE, personality id
 *  @param idflag if TRUE, use id for original trainer id
 *  @param id if idflag is TRUE, original trainer id
 */
void LONG_CALL CreateBoxMonData(struct BoxPokemon *boxmon, int species, int level, int pow, int rndflag, u32 rnd, int idflag, u32 id)
{
    //u16 sum;
    u32 i, j;
    BOOL flag;

    u32 title, language;
    title = VERSION_GOLD;
    language = LANG_ENGLISH;

    BoxMonInit(boxmon);

    flag = BoxMonSetFastModeOn(boxmon);

    if(!rndflag){
        rnd = (gf_rand() | (gf_rand() << 16));
    }
    SetBoxMonData(boxmon,MON_DATA_PERSONALITY,(u8 *)&rnd);

    if(idflag==ID_NO_SHINY){
        do{
            id = (gf_rand() | (gf_rand() << 16));
        } while((((id & 0xffff0000) >> 16) ^ (id & 0xffff) ^ ((rnd & 0xffff0000) >> 16) ^ (rnd & 0xffff)) < 8);
    }
    else if(idflag!=ID_SET){
        id=0;
    }

    // this function or AddWildPartyPokemon could both get here first
    // and since both functions will initialize the moveset,
    // we need the form to be set correctly in either case
    if (space_for_setmondata != 0)
    {
        SetBoxMonData(boxmon, MON_DATA_FORM, (u8 *)&space_for_setmondata);
    }

    SetBoxMonData(boxmon,MON_DATA_OTID,(u8 *)&id);
    SetBoxMonData(boxmon,MON_DATA_GAME_LANGUAGE,(u8 *)&language);
    SetBoxMonData(boxmon,MON_DATA_SPECIES,(u8 *)&species);
    SetBoxMonData(boxmon,MON_DATA_SPECIES_NAME,NULL);

    i=PokeLevelExpGet(species,level);
    SetBoxMonData(boxmon,MON_DATA_EXPERIENCE,(u8 *)&i);

    i=PokePersonalParaGet(species,PERSONAL_BASE_FRIENDSHIP);
    SetBoxMonData(boxmon,MON_DATA_FRIENDSHIP,(u8 *)&i);

    SetBoxMonData(boxmon,MON_DATA_MET_LEVEL,(u8 *)&level);
    SetBoxMonData(boxmon,MON_DATA_GAME_VERSION,(u8 *)&title);
    i=ITEM_POKE_BALL;
    SetBoxMonData(boxmon,MON_DATA_POKEBALL,(u8 *)&i);

    if(pow <= MAX_IVS){
        SetBoxMonData(boxmon,MON_DATA_HP_IV,(u8 *)&pow);
        SetBoxMonData(boxmon,MON_DATA_ATK_IV,(u8 *)&pow);
        SetBoxMonData(boxmon,MON_DATA_DEF_IV,(u8 *)&pow);
        SetBoxMonData(boxmon,MON_DATA_SPEED_IV,(u8 *)&pow);
        SetBoxMonData(boxmon,MON_DATA_SPATK_IV,(u8 *)&pow);
        SetBoxMonData(boxmon,MON_DATA_SPDEF_IV,(u8 *)&pow);
    }
    else{ // why the fuck is it done like this
        i=gf_rand();
        j=(i&(0x001f<< 0))>> 0;
        SetBoxMonData(boxmon,MON_DATA_HP_IV,(u8 *)&j);
        j=(i&(0x001f<< 5))>> 5;
        SetBoxMonData(boxmon,MON_DATA_ATK_IV,(u8 *)&j);
        j=(i&(0x001f<<10))>>10;
        SetBoxMonData(boxmon,MON_DATA_DEF_IV,(u8 *)&j);
        i=gf_rand();
        j=(i&(0x001f<< 0))>> 0;
        SetBoxMonData(boxmon,MON_DATA_SPEED_IV,(u8 *)&j);
        j=(i&(0x001f<< 5))>> 5;
        SetBoxMonData(boxmon,MON_DATA_SPATK_IV,(u8 *)&j);
        j=(i&(0x001f<<10))>>10;
        SetBoxMonData(boxmon,MON_DATA_SPDEF_IV,(u8 *)&j);
    }

    i = PokePersonalParaGet(species,PERSONAL_ABILITY_1);
    j = PokePersonalParaGet(species,PERSONAL_ABILITY_2);
    if(j!=0){
        if(rnd&1){
            SetBoxMonData(boxmon,MON_DATA_ABILITY,(u8 *)&j);
        }
        else{
            SetBoxMonData(boxmon,MON_DATA_ABILITY,(u8 *)&i);
        }
    }
    else{
        SetBoxMonData(boxmon,MON_DATA_ABILITY,(u8 *)&i);
    }

    i=GetBoxMonGender(boxmon);
    SetBoxMonData(boxmon,MON_DATA_GENDER,(u8 *)&i);
    FillInBoxMonLearnset(boxmon);
    BoxMonSetFastModeOff(boxmon,flag);
}

/**
 *  @brief revert a form change at the end of a battle
 *
 *  @param pp PartyPokemon whose form to potentially revert
 *  @param species species index
 *  @param form_no form number
 *  @return TRUE if form was reverted; FALSE otherwise
 */
bool8 LONG_CALL RevertFormChange(struct PartyPokemon *pp, u16 species, u8 form_no)
{
    u32 i, ret = FALSE;
    int work = 0;

    // use this chance to make bad poisoning normal poison at the end of battle
    work = GetMonData(pp, MON_DATA_STATUS, NULL);
    if (work & STATUS_FLAG_BADLY_POISONED)
    {
        work &= ~(STATUS_FLAG_BADLY_POISONED);
        work |= STATUS_FLAG_POISONED;
        SetMonData(pp, MON_DATA_STATUS, &work);
    }

    if (form_no != 0)
    {
        struct FormData *PokeFormDataTbl = sys_AllocMemory(0, NELEMS_POKEFORMDATATBL * sizeof(struct FormData));
        ArchiveDataLoad(PokeFormDataTbl, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA);

        for (i = 0; i < NELEMS_POKEFORMDATATBL; i++)
        {
            if (species == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no && PokeFormDataTbl[i].need_rev)
            {
                if (species == SPECIES_DARMANITAN && form_no == 3)
                    work = 1;
                else if (species == SPECIES_NECROZMA)
                    work = form_no-2;
                else if (species == SPECIES_GRENINJA)
                    work = 1;
                else if (species == SPECIES_MINIOR)
                    work = form_no-7;
                else if (species == SPECIES_ZYGARDE)
                    work = form_no-2;

                SetMonData(pp, MON_DATA_FORM, &work);
                ret = TRUE;
            }
        }
        sys_FreeMemoryEz(PokeFormDataTbl);
    }
    return ret;
}

/**
 *  @brief swap two integer values with each other given pointers
 *
 *  @param a first to swap
 *  @param b second to swap
 */
void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

/**
 *  @brief randomize the order of an array size n
 *
 *  @param arr array to randomize
 *  @param n size of array
 */
void randomize(int arr[], int n) {
    int i;
    for (i = n-1; i > 0; i--) {
        int j = gf_rand() % (i+1);
        swap(&arr[i], &arr[j]);
    }
}

u32 gLastPokemonLevelForMoneyCalc;

/**
 *  @brief create the trainer Party from the trainer data file and trainer party file
 *
 *  @param bp battle param
 *  @param num trainer index to read from both ARC_TRAINER_DATA and ARC_TRAINER_PARTY_DATA
 *  @param heapID heap to use for memory usage
 */
void MakeTrainerPokemonParty(struct BATTLE_PARAM *bp, int num, int heapID)
{
    u8 *buf;
    int i, j;
    u32 rnd_tmp, rnd, seed_tmp;
    u8 pow;

    seed_tmp = gf_get_seed();

    PokeParty_Init(bp->poke_party[num], 6);

    buf = (u8 *)sys_AllocMemory(heapID, sizeof(struct FULL_TRAINER_MON_DATA_STRUCTURE) * 6);

    TT_TrainerPokeDataGet(bp->trainer_id[num], buf);

    if (TT_TrainerTypeSexGet(bp->trainer_data[num].tr_type) == 1) // if trainer is female
    {
        rnd_tmp = 120;
    }
    else
    {
        rnd_tmp = 136;
    }

    u8 pokecount = bp->trainer_data[num].poke_count;
    u8 randomorder_flag = pokecount & 0x80;
    pokecount &= 0x7f;

    // goal:  get rid of massive switch statement with each individual byte.  make the trainer type a bitfield
    u32 id;
    u16 species = 0, item = 0, ability = 0, level = 0, ball = 0, hp = 0, atk = 0, def = 0, speed = 0, spatk = 0, spdef = 0;
    u16 offset = 0;
    u16 moves[4];
    u8 ivnums[6];
    u8 evnums[6];
    u8 types[2];
    u8 ppcounts[4];
    u16 *nickname = sys_AllocMemory(heapID, 11*sizeof(u16));
    u8 form_no = 0, abilityslot = 0, nature = 0, ballseal = 0, shinylock = 0, status = 0, ab1 = 0, ab2 = 0;
    u32 additionalflags = 0;

    int partyOrder[pokecount];
    if (randomorder_flag)
    {
        if(gf_rand() % 2 == 0)
        {
            for(i = 0; i < pokecount; i++)
            {
                partyOrder[i] = pokecount - 1 - i;
            }
        }
        else
        {
            for(i = 0; i < pokecount; i++)
            {
                partyOrder[i] = i;
            }
        }
    }
    else
    {
        for(i = 0; i < pokecount; i++)
        {
            partyOrder[i] = i;
        }
    }

    if (randomorder_flag && pokecount > 1)
    {
        int numtimes = gf_rand() % 6 + 1;
        for(i = 0; i < numtimes; i++)
        {
            randomize(partyOrder, pokecount);
        }
    }

    struct PartyPokemon * mons[pokecount];

    for (i = 0; i < pokecount; i++)
    {
        mons[i] = AllocMonZeroed(heapID);
        // ivs field
        pow = buf[offset];
        offset++;

        // abilityslot field
        abilityslot = buf[offset];
        offset++;

        // level field
        level = buf[offset] | (buf[offset+1] << 8);
        gLastPokemonLevelForMoneyCalc = level; // ends up being the last level at the end of the loop that we use for the money calc loop default case
        offset += 2;

        // species field
        species = buf[offset] | (buf[offset+1] << 8);
        offset += 2;
        form_no = (species & 0xF800) >> 11;
        species &= 0x07FF;

        // item field - conditional
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ITEMS)
        {
            item = buf[offset] | (buf[offset+1] << 8);
            offset += 2;
        }

        // moves field - conditional
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_MOVES)
        {
            for (j = 0; j < 4; j++)
            {
                moves[j] = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }
        }

        // ability field
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ABILITY)
        {
            ability = buf[offset] | (buf[offset+1] << 8);
            offset += 2;
        }

        // custom ball field
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_BALL)
        {
            ball = buf[offset] | (buf[offset+1] << 8);
            offset += 2;
        }

        // ivs and evs fields
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_IV_EV_SET)
        {
            for(j = 0; j < 6; j++)
            {
                ivnums[j] = buf[offset];
                if(ivnums[j] > 31)
                    ivnums[j] = 31;
                offset++;
            }

            for(j = 0; j < 6; j++)
            {
                evnums[j] = buf[offset];
                offset++;
            }
        }

        // nature field
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_NATURE_SET)
        {
            nature = buf[offset];
            offset++;
        }

        // shiny lock field
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_SHINY_LOCK)
        {
            shinylock = buf[offset];
            offset++;
        }

        // reads extra flags from the trainer pokemon file
        if(bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ADDITIONAL_FLAGS)
        {
            additionalflags = buf[offset] | (buf[offset+1] << 8) | (buf[offset+2] << 16) | (buf[offset+3] << 24);
            offset += 4;

            // status pre-set field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_STATUS)
            {
                status = buf[offset] | (buf[offset+1] << 8) | (buf[offset+2] << 16) | (buf[offset+3] << 24);
                offset += 4;
            }

            // custom hp stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_HP)
            {
                hp = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom atk stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_ATK)
            {
                atk = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom def stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_DEF)
            {
                def = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom speed stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_SPEED)
            {
                speed = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom spatk stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_SP_ATK)
            {
                spatk = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom spdef stat field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_SP_DEF)
            {
                spdef = buf[offset] | (buf[offset+1] << 8);
                offset += 2;
            }

            // custom types field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_TYPES)
            {
                for(j = 0; j < 2; j++)
                {
                    types[j] = buf[offset];
                    offset++;
                }
            }

            // move PP counts field
            if(additionalflags & TRAINER_DATA_EXTRA_TYPE_PP_COUNTS)
            {
                for(j = 0; j < 4; j++)
                {
                    ppcounts[j] = buf[offset];
                    offset++;
                }
            }

            // nickname field
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_NICKNAME)
            {
                for(j = 0; j < 11; j++)
                {
                    nickname[j] = buf[offset] | (buf[offset+1] << 8);
                    offset += 2;
                }
            }
        }

        // ball seal field
        ballseal = buf[offset] | (buf[offset+1] << 8);
        offset += 2;

        // now set mon data
        try_force_gender_maybe(species, form_no, abilityslot, &rnd_tmp);
        rnd = pow + level + species + bp->trainer_id[num];
        gf_srand(rnd);
        for (j = 0; j < bp->trainer_data[num].tr_type; j++)
        {
            rnd = gf_rand();
        }
        rnd = (rnd << 8) + rnd_tmp;
        pow = pow * 31 / 255;
        PokeParaSet(mons[i], species, level, pow, 1, rnd, 2, 0);
        SetMonData(mons[i], MON_DATA_FORM, &form_no);

        //set default abilities
        species = PokeOtherFormMonsNoGet(species, form_no);
        ab1 = PokePersonalParaGet(species, PERSONAL_ABILITY_1);
        ab2 = PokePersonalParaGet(species, PERSONAL_ABILITY_2);
        if (ab2 != 0)
        {
            if (abilityslot & 1)
            {
                SetMonData(mons[i], MON_DATA_ABILITY, (u8 *)&ab1);
            }
            else{
                SetMonData(mons[i], MON_DATA_ABILITY, (u8 *)&ab2);
            }
        }
        else
        {
            SetMonData(mons[i], MON_DATA_ABILITY, (u8 *)&ab1);
        }

        // if abilityslot is 2 force hidden ability with the bit set.  this specifically to cover darmanitan with zen mode switching between forms and such.
        if (abilityslot == 2)
        {
            u16 hiddenability = GetMonHiddenAbility(species, form_no);
            SET_MON_HIDDEN_ABILITY_BIT(mons[i])
            SetMonData(mons[i], MON_DATA_ABILITY, (u8 *)&hiddenability);
        }

        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ITEMS)
        {
            SetMonData(mons[i], MON_DATA_HELD_ITEM, &item);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_MOVES)
        {
            for (j = 0; j < 4; j++)
            {
                SetPartyPokemonMoveAtPos(mons[i], moves[j], j);
            }
        }
        TrainerCBSet(ballseal, mons[i], heapID);
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ABILITY)
        {
            SetMonData(mons[i], MON_DATA_ABILITY, &ability);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_BALL)
        {
            SetMonData(mons[i], MON_DATA_POKEBALL, &ball);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_IV_EV_SET)
        {
            for(j = 0; j < 6; j++)
            {
                SetMonData(mons[i],MON_DATA_HP_IV + j, &ivnums[j]);
            }

            for(j = 0; j < 6; j++)
            {
                SetMonData(mons[i],MON_DATA_HP_EV + j, &evnums[j]);
            }
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_NATURE_SET)
        {
            u32 pid = GetMonData(mons[i], MON_DATA_PERSONALITY, NULL);
            u8 currentNature = pid % 25;
            pid = pid + nature - currentNature;
            SetMonData(mons[i], MON_DATA_PERSONALITY, &pid);
        }
        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_SHINY_LOCK)
        {
            u32 pid = GetMonData(mons[i], MON_DATA_PERSONALITY, NULL);
            if (shinylock != 0)
            {
                do{
                    id = (gf_rand() | (gf_rand() << 16));
                } while((((id & 0xffff0000) >> 16) ^ (id & 0xffff) ^ ((pid & 0xffff0000) >> 16) ^ (pid & 0xffff)) >= 8);
                SetMonData(mons[i], MON_DATA_OTID, &id);
            }
        }

        RecalcPartyPokemonStats(mons[i]); // recalculate stats here

        if (bp->trainer_data[num].data_type & TRAINER_DATA_TYPE_ADDITIONAL_FLAGS)
        {
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_STATUS)
            {
                SetMonData(mons[i],MON_DATA_STATUS, &status);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_HP)
            {
                SetMonData(mons[i],MON_DATA_MAXHP, &hp);
                SetMonData(mons[i],MON_DATA_HP, &hp);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_ATK)
            {
                SetMonData(mons[i],MON_DATA_ATTACK, &atk);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_DEF)
            {
                SetMonData(mons[i],MON_DATA_DEFENSE, &def);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_SPEED)
            {
                SetMonData(mons[i],MON_DATA_SPEED, &speed);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_SP_ATK)
            {
                SetMonData(mons[i],MON_DATA_SPECIAL_ATTACK, &spatk);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_SP_DEF)
            {
                SetMonData(mons[i],MON_DATA_SPECIAL_DEFENSE, &spdef);
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_TYPES)
            {
                for(j = 0; j < 2; j++)
                {
                    SetMonData(mons[i],MON_DATA_TYPE_1+j, &types[j]);
                }
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_PP_COUNTS)
            {
                for(j = 0; j < 4; j++)
                {
                    SetMonData(mons[i],MON_DATA_MOVE1PPUP+j, &ppcounts[j]);
                }
            }
            if (additionalflags & TRAINER_DATA_EXTRA_TYPE_NICKNAME)
            {
                u32 one = 1;

                SetMonData(mons[i],MON_DATA_HAS_NICKNAME, &one);
                SetMonData(mons[i],MON_DATA_NICKNAME, nickname);
            }
        }
        TrainerMonHandleFrustration(mons[i]);
    }

    for (i = 0; i < pokecount; i++)
    {
        PokeParty_Add(bp->poke_party[num], mons[partyOrder[i]]);
        sys_FreeMemoryEz(mons[i]);
    }

    sys_FreeMemoryEz(buf);
    sys_FreeMemoryEz(nickname);

    gf_srand(seed_tmp);
}

/**
 *  @brief set the hidden ability specifically for the starter
 *
 *  @param party unused
 *  @param pp PartyPokemon whose hidden ability to set
 */
void set_starter_hidden_ability(struct Party *party UNUSED, struct PartyPokemon *pp)
{
    if (CheckScriptFlag(HIDDEN_ABILITIES_STARTERS_FLAG) == 1)
    {
        SET_MON_HIDDEN_ABILITY_BIT(pp)
        SetBoxMonAbility((void *)&pp->box);
    }
}

/**
 *  @brief clear a PartyPokemon's moves by setting them to zero
 *
 *  @param pokemon PartyPokemon whose moves to clear
 */
void LONG_CALL ClearMonMoves(struct PartyPokemon *pokemon)
{
    int null = 0;
    for (int i = 0; i < 4; i++)
    {
        SetMonData(pokemon, MON_DATA_MOVE1+i, &null);
    }
}

/**
 *  @brief script command to give an egg adapted to set the hidden ability
 *
 *  @param ctx script context structure
 *  @return FALSE
 */
BOOL ScrCmd_GiveEgg(SCRIPTCONTEXT *ctx)
{
    FieldSystem *fsys = ctx->fsys;
    void *profile = Sav2_PlayerData_GetProfileAddr(fsys->savedata);

    u16 species = ScriptGetVar(ctx);

    u32 form = (species & 0xF800) >> 11; // extract form from egg
    species = species & 0x7FF;

    u16 offset = ScriptGetVar(ctx);

    struct Party *party = SaveData_GetPlayerPartyPtr(fsys->savedata);
    u8 partyCount = party->count;
    if (partyCount < 6)
    {
        struct PartyPokemon *pokemon = AllocMonZeroed(11);
        ZeroMonData(pokemon);
        int val = sub_02017FE4(1, offset);

        SetEggStats(pokemon, species, 1, profile, 3, val);

        SetMonData(pokemon, MON_DATA_FORM, &form); // add form capability

        ClearMonMoves(pokemon);
        InitBoxMonMoveset(&pokemon->box);

        if (CheckScriptFlag(HIDDEN_ABILITIES_FLAG) == 1) // add HA capability
        {
            SET_MON_HIDDEN_ABILITY_BIT(pokemon)
            ResetPartyPokemonAbility(pokemon);
            ClearScriptFlag(HIDDEN_ABILITIES_FLAG);
        }

        PokeParty_Add(party, pokemon);
        sys_FreeMemoryEz(pokemon);
    }

    return FALSE;
}

/**
 *  @brief script command to give the togepi egg
 *
 *  @param ctx script context structure
 *  @return FALSE
 */
BOOL ScrCmd_GiveTogepiEgg(SCRIPTCONTEXT *ctx) {
    s32 i;
    u8 pp;
    u16 moveData;
    struct PartyPokemon *togepi;
    void *profile;
    struct Party *party;
    FieldSystem *fsys = ctx->fsys;

    profile = Sav2_PlayerData_GetProfileAddr(fsys->savedata);
    party = SaveData_GetPlayerPartyPtr(fsys->savedata);

    if (party->count >= 6) {
        return FALSE;
    }

    togepi = AllocMonZeroed(11);
    ZeroMonData(togepi);

    SetEggStats(togepi, SPECIES_TOGEPI, 1, profile, 3, sub_02017FE4(1, 13));

    //SetMonData(togepi, MON_DATA_FORM, &form); // add form capability

    //ClearMonMoves(pokemon);
    //InitBoxMonMoveset(&pokemon->box);

    for (i = 0; i < 4; i++) {
        if (!GetMonData(togepi, MON_DATA_MOVE1 + i, 0)) {
            break;
        }
    }

    if (i == 4) {
        i = 3;
    }

    moveData = MOVE_EXTRASENSORY; // add extrasensory to the togepi
    SetMonData(togepi, MON_DATA_MOVE1 + i, &moveData);

    pp = GetMonData(togepi, MON_DATA_MOVE1MAXPP + i, 0);
    SetMonData(togepi, MON_DATA_MOVE1PP + i, &pp);

    if (CheckScriptFlag(HIDDEN_ABILITIES_FLAG) == 1) // add HA capability
    {
        SET_MON_HIDDEN_ABILITY_BIT(togepi)
        ResetPartyPokemonAbility(togepi);
        ClearScriptFlag(HIDDEN_ABILITIES_FLAG);
    }


    PokeParty_Add(party, togepi);

    sys_FreeMemoryEz(togepi);

    SaveMisc_SetTogepiPersonalityGender(Sav2_Misc_get(fsys->savedata), GetMonData(togepi, MON_DATA_PERSONALITY, 0), GetMonData(togepi, MON_DATA_GENDER, 0));

    return FALSE;
}

/**
 *  @brief hatch a PartyPokemon--creates a new PartyPokemon and initializes a few characteristics
 *
 *  @param pokemon PartyPokemon that is hatching
 *  @param heapId heap whose memory to use
 */
void sub_0206D328(struct PartyPokemon *pokemon, u32 heapId)
{
    u16 nickname[11 + 1];
    u8 isEgg = 70;
    u8 hasNickname = FALSE;
    u8 pokeball = 4; // poke ball
    u8 metLevel = 0;

    u16 dummy_p2_1 = GetMonData(pokemon, MON_DATA_RESERVED_113, NULL); // hidden ability field

    sub_0206D038(pokemon, heapId); // carries over egg values to a clean mon
    SetMonData(pokemon, MON_DATA_IS_EGG, &isEgg);
    GetSpeciesNameIntoArray(GetMonData(pokemon, MON_DATA_SPECIES, NULL), 0, nickname);
    SetMonData(pokemon, MON_DATA_NICKNAME, nickname);
    SetMonData(pokemon, MON_DATA_HAS_NICKNAME, &hasNickname);
    SetMonData(pokemon, MON_DATA_POKEBALL, &pokeball);
    SetMonData(pokemon, MON_DATA_MET_LEVEL, &metLevel);
    SetMonData(pokemon, MON_DATA_RESERVED_113, &dummy_p2_1);
    RecalcPartyPokemonStats(pokemon);

    ResetPartyPokemonAbility(pokemon);
}


#define CRY_SPECIES_FORMS_BASE (MAX_MON_NUM+1)


#define CRY_SPECIES_SHAYMIN 0x1EE
#define CRY_SPECIES_BASE_TORNADUS CRY_SPECIES_FORMS_BASE
#define CRY_SPECIES_BASE_THUNDURUS CRY_SPECIES_FORMS_BASE+1
#define CRY_SPECIES_BASE_LANDORUS CRY_SPECIES_FORMS_BASE+2
#define CRY_SPECIES_BASE_KYUREM CRY_SPECIES_FORMS_BASE+3
#define CRY_SPECIES_BASE_PUMPKABOO CRY_SPECIES_FORMS_BASE+5
#define CRY_SPECIES_BASE_GOURGEIST CRY_SPECIES_FORMS_BASE+6
#define CRY_SPECIES_BASE_HOOPA CRY_SPECIES_FORMS_BASE+7
#define CRY_SPECIES_BASE_ORICORIO CRY_SPECIES_FORMS_BASE+8
#define CRY_SPECIES_BASE_LYCANROC CRY_SPECIES_FORMS_BASE+11
#define CRY_SPECIES_BASE_WISHIWASHI CRY_SPECIES_FORMS_BASE+13
#define CRY_SPECIES_BASE_NECROZMA CRY_SPECIES_FORMS_BASE+14
#define CRY_SPECIES_BASE_ZACIAN CRY_SPECIES_FORMS_BASE+18
#define CRY_SPECIES_BASE_ZAMAZENTA CRY_SPECIES_FORMS_BASE+19
#define CRY_SPECIES_BASE_URSHIFU CRY_SPECIES_FORMS_BASE+20
#define CRY_SPECIES_BASE_CALYREX CRY_SPECIES_FORMS_BASE+21
#define CRY_SPECIES_BASE_ENAMORUS CRY_SPECIES_FORMS_BASE+23
#define CRY_SPECIES_BASE_MAUSHOLD CRY_SPECIES_FORMS_BASE+24

u32 storeShayminForm = 0;

/**
 *  @brief grab the cry index given species and form
 *
 *  @param species species index
 *  @param form form number
 *  @return cry index in sdat
 */
u32 GrabCryNumSpeciesForm(u32 species, u32 form)
{
    if (species > SPECIES_ARCEUS && species < SPECIES_VICTINI)
    {
        species = SPECIES_BULBASAUR;
    }

    if (species > MAX_MON_NUM) // battles are fucking stupid and pass in species already adjusted for form.  need to revert to base species
    {
        species = GetOriginalSpeciesBasedOnAdjustedForm(species);
    }
    else if (species == SPECIES_SHAYMIN) // shaymin has to have some hacks to get this to work proper because of the same battle stuff above
    {
        register u32 retAddr asm("lr");
        if (retAddr == 0x020069BF)
            storeShayminForm = form;
        if (retAddr == 0x020063E5 || retAddr == 0x02006241)
            if (!storeShayminForm)
                return species;
    }
    else if (form == 0)
    {
        return species;
    }

    switch (species)
    {
    case SPECIES_SHAYMIN:
        return CRY_SPECIES_SHAYMIN; // form is already nonzero
    case SPECIES_TORNADUS:
        return CRY_SPECIES_BASE_TORNADUS;
    case SPECIES_THUNDURUS:
        return CRY_SPECIES_BASE_THUNDURUS;
    case SPECIES_LANDORUS:
        return CRY_SPECIES_BASE_LANDORUS;
    case SPECIES_ENAMORUS:
        return CRY_SPECIES_BASE_ENAMORUS;
    case SPECIES_KYUREM:
        return CRY_SPECIES_BASE_KYUREM + form-1;
    case SPECIES_PUMPKABOO:
        if (form == 3) return CRY_SPECIES_BASE_PUMPKABOO;
        break;
    case SPECIES_GOURGEIST:
        if (form == 3) return CRY_SPECIES_BASE_GOURGEIST;
        break;
    case SPECIES_HOOPA:
        return CRY_SPECIES_BASE_HOOPA;
    case SPECIES_ORICORIO:
        return CRY_SPECIES_BASE_ORICORIO + form-1;
    case SPECIES_LYCANROC:
        return CRY_SPECIES_BASE_LYCANROC + form-1;
    case SPECIES_WISHIWASHI:
        return CRY_SPECIES_BASE_WISHIWASHI;
    case SPECIES_NECROZMA:
        return CRY_SPECIES_BASE_NECROZMA + form-1;
    case SPECIES_ZACIAN:
        return CRY_SPECIES_BASE_ZACIAN;
    case SPECIES_ZAMAZENTA:
        return CRY_SPECIES_BASE_ZAMAZENTA;
    case SPECIES_URSHIFU:
        return CRY_SPECIES_BASE_URSHIFU;
    case SPECIES_CALYREX:
        return CRY_SPECIES_BASE_CALYREX + form-1;
    //case SPECIES_MAUSHOLD:
    //    return CRY_SPECIES_BASE_MAUSHOLD;
    }
    return species;
}


// double battles triggerable

extern u32 gTriggerDouble;

/**
 *  @brief add the PartyPokemon to the wild "Party"
 *
 *  @param fsys field system structure
 *  @param pp PartyPokemon array to manipulate (is fully overwritten)
 *  @param bw battle work structure
 *  @param encData
 *  @param encArea
 *  @param encInfo
 *  @return TRUE if both were successful; FALSE otherwise
 */
u32 WildEncSingle(FieldSystem *fsys UNUSED, struct PartyPokemon *pp, void *bw, void *encData UNUSED, void *encArea, void *encInfo)
{
    u32 ret;
    ret = SetEncountData(pp, 255, encInfo, encArea, 0, 1, bw);

#ifdef IMPLEMENT_WILD_DOUBLE_BATTLES

    if (gTriggerDouble)
    {
        ret = SetEncountData(pp, 255, encInfo, encArea, 0, 1, bw); // add another mon to the enemy party
    }

#endif

    return ret;
}

/**
 *  @brief add PartyPokemon to the wild "Party" in surfing contexts
 *
 *  @param fsys field system structure
 *  @param pp PartyPokemon array to manipulate (is fully overwritten)
 *  @param bw battle work structure
 *  @param encArea
 *  @param encInfo
 *  @param smth
 *  @return TRUE if both were successful; FALSE otherwise
 */
u32 WildWaterEncSingle(FieldSystem *fsys, struct PartyPokemon *pp, void *bw, void *encArea, void *encInfo, BOOL smth)
{
    u32 ret;
    if (smth)
    {
        ret = SetEncountDataSwarm_maybe(fsys, pp, 255, encInfo, 1, 1, bw);

#ifdef IMPLEMENT_WILD_DOUBLE_BATTLES

        if (gTriggerDouble)
        {
            ret = SetEncountDataSwarm_maybe(fsys, pp, 255, encInfo, 1, 1, bw); // add another mon to the enemy party
        }

#endif
    }
    else
    {
        ret = SetEncountData(pp, 255, encInfo, encArea, 1, 1, bw);

#ifdef IMPLEMENT_WILD_DOUBLE_BATTLES

        if (gTriggerDouble)
        {
            ret = SetEncountData(pp, 255, encInfo, encArea, 1, 1, bw); // add another mon to the enemy party
        }

#endif
    }

    return ret;
}

/**
 *  @brief check if a poké ball can be used from the bag in wild double battles
 *         checks if both wild mons are still alive
 *
 *  @param sp global battle structure
 *  @return TRUE if can use the poké ball; FALSE otherwise
 */
u32 CheckCanUseBallOnDoublesFromBag(struct BattleStruct *sp)
{
    if (sp->battlemon[1].hp && sp->battlemon[3].hp)
    {
        return FALSE;
    }
    return TRUE;
}

/**
 *  @brief grab tutor move index from species and form
 *
 *  @param species species index
 *  @param form form number
 *  @return index in fielddata/wazaoshie/waza_oshie.bin
 */
u32 SpeciesAndFormeToWazaOshieIndex(u32 species, u32 form)
{
    u32 ret = species;
    switch (species)
    {
    case SPECIES_DEOXYS:
        if (form)
            ret = 494 + form - 1;
        break;
    case SPECIES_WORMADAM:
        if (form)
            ret = 497 + form - 1;
        break;
    case SPECIES_GIRATINA:
        if (form)
            ret = 499 + form - 1;
        break;
    case SPECIES_SHAYMIN:
        if (form)
            ret = 500 + form - 1;
        break;
    case SPECIES_ROTOM:
        if (form)
            ret = 501 + form - 1;
        break;
    default:
        if (form)
            ret = PokeOtherFormMonsNoGet(species, form);
        break;
    }

    ret--;
    return ret;
}

/**
 *  @brief get level cap from the script variable defined by LEVEL_CAP_VARIABLE
 *
 *  @return level cap from LEVEL_CAP_VARIABLE script variable
 */
u32 GetLevelCap(void)
{
    return GetScriptVar(LEVEL_CAP_VARIABLE);
}

/**
 *  @brief check if the level is at or above the level cap defined in LEVEL_CAP_VARIABLE
 *
 *  @param level level to check
 *  @return TRUE if level >= level cap; FALSE otherwise
 */
u32 IsLevelAtLevelCap(u32 level)
{
    return (level >= GetLevelCap());
}


#ifdef IMPLEMENT_LEVEL_CAP

/**
 *  @brief try leveling up a PartyPokemon
 *
 *  @param mon PartyPokemon to level up
 *  @return TRUE if PartyPokemon should level up and level has been augmented
 */
BOOL Pokemon_TryLevelUp(struct PartyPokemon *mon) {
    u16 species = (u16)GetMonData(mon, MON_DATA_SPECIES, NULL);
    u8 level = (u8)(GetMonData(mon, MON_DATA_LEVEL, NULL) + 1);
    u32 exp = GetMonData(mon, MON_DATA_EXPERIENCE, NULL);
    u32 growthrate = (u32)PokePersonalParaGet(species, PERSONAL_EXP_GROUP);
    u32 maxexp = GetExpByGrowthRateAndLevel((int)growthrate, GetLevelCap());
    if (exp > maxexp) {
        exp = maxexp;
        SetMonData(mon, MON_DATA_EXPERIENCE, &exp);
    }
    if (level > GetLevelCap())
        return FALSE;
    if (exp >= GetExpByGrowthRateAndLevel((int)growthrate, level)) {
        SetMonData(mon, MON_DATA_LEVEL, &level);
        return TRUE;
    }
    return FALSE;
}

#endif


/**
 *  @brief grab the nature of a BoxPokemon factoring in the nature mint override field
 *
 *  @param boxMon BoxPokemon whose nature to grab
 *  @return nature of the BoxPokemon factoring in nature override
 */
u8 LONG_CALL GetBoxMonNatureCountMints(struct BoxPokemon *boxMon)
{
    BOOL decry = BoxMonSetFastModeOn(boxMon);
    u32 personality = GetBoxMonData(boxMon, MON_DATA_PERSONALITY, NULL);
    u32 nature_override = GET_BOX_MON_NATURE_OVERRIDE(boxMon);
    BoxMonSetFastModeOff(boxMon, decry);

    if (nature_override != 0) {
        return nature_override - 1;
    }
    // lord forgive me, i know not what i do
    // modulo operator in this world is only signed!  0x80000000 % 25 = 23
    // could just use GetNatureFromPersonality from the rom, but this was a good exercise anyway
    if (personality & 0x80000000)
        personality = ((((u32)personality & 0x7FFFFFFF) % 25) + 23) % 25;
    else
        personality %= 25;

    return personality;
}
