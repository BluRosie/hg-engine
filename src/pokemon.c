#include "../include/types.h"
#include "../include/bag.h"
#include "../include/battle.h"
#include "../include/config.h"
#include "../include/debug.h"
#include "../include/overlay.h"
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


extern u32 word_to_store_form_at;
// [preevo] = {species, form}, [postevo] = {species, form},
u16 ALIGN4 gEvolutionSceneOverride[2][2];

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
        u16 newSpecies;
        ArchiveDataLoadOfs(&newSpecies, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA, sizeof(u16)*(32*mons_no + form_no-1), sizeof(u16));
        newSpecies &= ~(NEEDS_REVERSION);
        if (newSpecies != 0)
        {
            picdata->arc_no = ARC_MON_PIC;
            picdata->index_chr = (newSpecies) * 6 + dir;
            picdata->index_pal = (newSpecies) * 6 + 4 + col;
            ret = TRUE;
        }
    }
    return ret;
}

void SetPartyPokemonParamsForEvoCutscene(struct PartyPokemon *mon, u16 *targetSpecies, BOOL clearEvoStructure)
{
    u32 form = 0;
    if (gEvolutionSceneOverride[0][0] == *targetSpecies)
        form = gEvolutionSceneOverride[0][1];
    else if (gEvolutionSceneOverride[1][0] == *targetSpecies)
        form = gEvolutionSceneOverride[1][1];
    SetMonData(mon, MON_DATA_SPECIES, targetSpecies);
    if (form)
        SetMonData(mon, MON_DATA_FORM, &form);
    if (clearEvoStructure)
        memset(gEvolutionSceneOverride, 0, sizeof(gEvolutionSceneOverride));
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
            u16 newSpecies;
            ArchiveDataLoadOfs(&newSpecies, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA, sizeof(u16)*(32*mons_no + form_no-1), sizeof(u16));
            newSpecies &= ~(NEEDS_REVERSION);
            if (newSpecies != 0)
            {
                mons_no = newSpecies;
                break;
            }
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
        u16 newSpecies;
        ArchiveDataLoadOfs(&newSpecies, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA, sizeof(u16)*(32*mons_no + form_no-1), sizeof(u16));
        newSpecies &= ~(NEEDS_REVERSION);
        if (newSpecies != 0)
        {
            mons_no = newSpecies;
        }
    }
    return mons_no;
}

/**
 *  @brief pass adjusted species and return base species
 *
 *  @param mons_no species that has already been adjusted by form number by GetSpeciesBasedOnForm
 *  @return base species
 */
u16 LONG_CALL GetBaseSpeciesFromAdjustedForm(u32 mons_no)
{
    if (mons_no > MAX_MON_NUM)
    {
        ArchiveDataLoadOfs(&mons_no, ARC_CODE_ADDONS, CODE_ADDON_FORM_SPECIES_MAPPING, sizeof(u16) * (mons_no - SPECIES_MEGA_START), sizeof(u16));
    }
    return mons_no;
}

/**
 *  @brief pass adjusted species and return form of the base species it applies to
 *
 *  @param mons_no species that has already been adjusted by form number by GetSpeciesBasedOnForm
 *  @return form of adjusted species
 */
u16 LONG_CALL GetFormFromAdjustedForm(u32 mons_no)
{
    u32 ret = 0;
    if (mons_no > MAX_MON_NUM)
    {
        u16 oldSpecies = GetBaseSpeciesFromAdjustedForm(mons_no);
        u16 formTable[32]; // right on stack so do not have to free this
        ArchiveDataLoadOfs(formTable, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA, sizeof(u16) * (oldSpecies*32), sizeof(u16)*32);
        for (ret = 0; ret < 32; ret++)
        {
            if (formTable[ret] == mons_no || formTable[ret]) break;
        }
        ret++; // offset by 1 because form 0 isn't listed in the file
    }
    return ret;
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
        if (form_no != 0)
        {
            u16 newSpecies;
            ArchiveDataLoadOfs(&newSpecies, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA, sizeof(u16)*(32*mons + form_no-1), sizeof(u16));
            newSpecies &= ~(NEEDS_REVERSION);
            if (newSpecies != 0)
            {
                mons = newSpecies;
            }
        }
        pat = (7 + mons);
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
    u32 ret = 0;

    monsno = GetBoxMonData(ppp, MON_DATA_SPECIES_OR_EGG, NULL);

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
        // here we check if the mon at all has any forms--if so we assume its form id is valid and return it
        u16 newSpecies;
        ArchiveDataLoadOfs(&newSpecies, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA, sizeof(u16)*(32*monsno + 1-1), sizeof(u16));
        newSpecies &= ~(NEEDS_REVERSION);
        if (newSpecies != 0)
        {
            ret = GetBoxMonData(ppp, MON_DATA_FORM, NULL);
        }
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
                u16 newSpecies;
                ArchiveDataLoadOfs(&newSpecies, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA, sizeof(u16)*(32*mons + form-1), sizeof(u16));
                newSpecies &= ~(NEEDS_REVERSION);
                if (newSpecies != 0)
                {
                    mons = newSpecies;
                }
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
    u16 ret;
    ArchiveDataLoadOfs(&ret, ARC_CODE_ADDONS, CODE_ADDON_BASE_OW_PER_MON, sizeof(u16)*species, sizeof(u16));
    return ret;
}

/**
 *  @brief grab the hidden ability for a species that already includes the form
 *
 *  @param species pokémon species
 *  @param form form number
 *  @return hidden ability of specific pokémon
 */
u16 GetMonHiddenAbilityAlreadySanitized(u16 species)
{
#ifdef HIDDEN_ABILITIES
    u16 ability = 0;
    ArchiveDataLoadOfs(&ability, ARC_CODE_ADDONS, CODE_ADDON_HIDDEN_ABILITY_LIST, sizeof(u16)*species, sizeof(u16));
    return ability;
#else
    return 0;
#endif // HIDDEN_ABILITIES
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
    species = PokeOtherFormMonsNoGet(species, form);
    return GetMonHiddenAbilityAlreadySanitized(species);
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
    ability1 = PokeFormNoPersonalParaGet(mons_no, form, PERSONAL_ABILITY_1);
    ability2 = PokeFormNoPersonalParaGet(mons_no, form, PERSONAL_ABILITY_2);

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
    mons_no = PokeOtherFormMonsNoGet(mons_no, form);
    hiddenability = GetMonHiddenAbilityAlreadySanitized(mons_no);

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
    u16 baseExp;
    species = PokeOtherFormMonsNoGet(species, form); // for whatever reason alternate formes can have different base experiences
    ArchiveDataLoadOfs(&baseExp, ARC_CODE_ADDONS, CODE_ADDON_BASE_EXPERIENCE_LIST, sizeof(u16)*species, sizeof(u16));
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
        struct PartyPokemon *currentmon = Party_GetMonByIndex(party, i);
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
    struct PartyPokemon *pp = Party_GetMonByIndex(wk->dat->pp, wk->pos);
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
            struct PartyPokemon *reshiram = Party_GetMonByIndex(wk->dat->pp, splicer_pos);
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
            saveMiscData->storedMons[STORED_MONS_DNA_SPLICERS] = *Party_GetMonByIndex(wk->dat->pp, splicer_pos); // may have to directly memcpy this but this is good for the moment
            // delete reshiram from party--splicer_pos has the position to delete
            PokeParty_Delete(wk->dat->pp, splicer_pos);
            saveMiscData->isMonStored[STORED_MONS_DNA_SPLICERS] = 1;

            if (splicer_pos < wk->pos) // adjust this position back so that the right pokemon's forme gets changed
            {
                wk->pos--;
                pp = Party_GetMonByIndex(wk->dat->pp, wk->pos);
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
    u32 pid = GetMonData(pp, MON_DATA_PERSONALITY, NULL);
    u32 form = 0;
    BOOL shouldUpdate = TRUE;

    switch (species)
    {
#ifdef IMPLEMENT_DYNAMIC_WILD_SPECIES_FORMS
        case SPECIES_DEERLING:
        case SPECIES_SAWSBUCK:
            form = GrabCurrentSeason(); // update to the current season
            break;
#endif
        case SPECIES_UNFEZANT:
        case SPECIES_FRILLISH:
        case SPECIES_JELLICENT:
#ifdef IMPLEMENT_DYNAMIC_WILD_SPECIES_FORMS
        case SPECIES_MEOWSTIC:
        case SPECIES_INDEEDEE:
        case SPECIES_OINKOLOGNE:
#endif
            form = gf_rand() & 1; // 1/2 male
            break;
#ifdef IMPLEMENT_DYNAMIC_WILD_SPECIES_FORMS
        case SPECIES_BASCULEGION:
            form = (gf_rand() & 1) ? 3 : 0; // 1/2 male
            break;
        case SPECIES_PYROAR:
            form = (gf_rand() % 8 != 0); // 1/8 male
            break;
#endif
        case SPECIES_DUNSPARCE: // TODO: move to evolution function
#ifdef IMPLEMENT_DYNAMIC_WILD_SPECIES_FORMS
        case SPECIES_DUDUNSPARCE:    // This is not the case for wild Dudunsparce (including those encountered in Tera Raid Battles), as these will always be in Two-Segment Form regardless of their encryption constant value.
#endif
        case SPECIES_TANDEMAUS: // TODO: move to evolution function
#ifdef IMPLEMENT_DYNAMIC_WILD_SPECIES_FORMS
        case SPECIES_MAUSHOLD:
#endif
            form = (pid % 100 == 0); // 1/100 three seg / family of three
            break;
#ifdef IMPLEMENT_DYNAMIC_WILD_SPECIES_FORMS
        case SPECIES_FLABEBE:
        case SPECIES_FLOETTE:
        case SPECIES_FLORGES:
            form = gf_rand() % 5; // allow any color to show up
            break;
        case SPECIES_PUMPKABOO:
        case SPECIES_GOURGEIST:
            form = gf_rand() % 4; // allow any size to show up
            break;
        case SPECIES_MINIOR:
            form = gf_rand() % 7; // allow any color to show up
            break;
        case SPECIES_SINISTEA:
        case SPECIES_POLTEAGEIST:
        case SPECIES_SINISTCHA:
        case SPECIES_POLTCHAGEIST:
            form = (gf_rand() % 20 == 0); // 5% authentic / masterpiece
            break;
        case SPECIES_TATSUGIRI:
            form = gf_rand() % 3; // equal chance for all forms
            break;
#endif
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

#ifdef IMPLEMENT_SEASONS
    for (int i = 0; i < party->count; i++)
    {
        struct PartyPokemon *pp = Party_GetMonByIndex(party, i);
        u32 species = GetMonData(pp, MON_DATA_SPECIES, NULL);
        u32 newForm = GrabCurrentSeason();
        if (newForm != GetMonData(pp, MON_DATA_FORM, NULL) && (species == SPECIES_DEERLING || species == SPECIES_SAWSBUCK))
        {
            SetMonData(pp, MON_DATA_FORM, &newForm);
            ret = TRUE;
        }
    }
#endif

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

    kowaza_list = sys_AllocMemory(HEAPID_MAIN_HEAP, NUM_EGG_MOVES_TOTAL*2);
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

/**
 *  @brief check if can use item on mon in party.  subfunction checks everything and is only used here, so we hook this to save space and add what we need.
 *
 *  @param party party structure
 *  @param itemID item index that is being used
 *  @param partyIdx position in party
 *  @param moveIdx move position to check if needed
 *  @param heapID heap to use for allocations
 *  @return TRUE if can use item, FALSE otherwise
 */
BOOL CanUseItemOnMonInParty(struct Party *party, u16 itemID, s32 partyIdx, s32 moveIdx, u32 heapID) {
    struct PartyPokemon *mon = Party_GetMonByIndex(party, partyIdx);

    if (GetItemData(itemID, ITEM_PARAM_LEVEL_UP, heapID) && GetMonData(mon, MON_DATA_LEVEL, NULL) == 100 && GetMonEvolution(party, mon, EVOCTX_LEVELUP, itemID, NULL))
    {
        return TRUE;
    }
#if defined(IMPLEMENT_LEVEL_CAP) && defined(UNCAP_CANDIES_FROM_LEVEL_CAP)
    int currentLevel = GetMonData(mon, MON_DATA_LEVEL, NULL);
    if (GetItemData(itemID, ITEM_PARAM_LEVEL_UP, heapID))
    {
        if (currentLevel < 100 && itemID == ITEM_RARE_CANDY)
        {
            return TRUE;
        }
    }
#endif
    return CanUseItemOnPokemon(mon, itemID, moveIdx, heapID);
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
 *  @return the target species to evolve into
 */
u16 LONG_CALL GetMonEvolution(struct Party *party, struct PartyPokemon *pokemon, u8 context, u16 usedItem, int *method_ret) {
    u32 ovyId, target, offset;
    u16 (*internalFunc)(struct Party *, struct PartyPokemon *, u8, u16, int *);

    if (IsOverlayLoaded(OVERLAY_BATTLE_EXTENSION)) // during battles it needs to be loaded to a separate location.  we have 2 overlays for this
    {
        ovyId = OVERLAY_GETMONEVOLUTION_BATTLE;
        offset = 0x021FBE60 | 1;
    } else {
        ovyId = OVERLAY_GETMONEVOLUTION_SPECIFIC;
        offset = 0x023C0400 | 1;
    }
    HandleLoadOverlay(ovyId, 2);
    internalFunc = (u16 (*)(struct Party *, struct PartyPokemon *, u8, u16, int *))(offset);
    target = internalFunc(party, pokemon, context, usedItem, method_ret);
    UnloadOverlayByID(ovyId);

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
    u8 maxForm = 0;
    if (species > SPECIES_FINNEON) // split between 0x1AC and 0x1E4
    {
        adjustment = 0x1E4;
    }
    else
    {
        adjustment = 0x1AC;
    }

    ret = GetPokemonOwNum(species) + adjustment;

    ArchiveDataLoadOfs(&maxForm, ARC_CODE_ADDONS, CODE_ADDON_NUM_OF_OW_FORMS_PER_MON, sizeof(u8)*species, sizeof(u8));

    if (species == SPECIES_PIKACHU) // pikachu forms take gender adjustment into account and are looser with restrictions
    {
        if (isFemale || form) // both female pikachu and those with forms will need this adjustment
            ret++;
        if (form < maxForm) // invalid pikachu forms will show as female, but that's okay
            ret += form;
    }
    else if (species == SPECIES_SLOWBRO && form)
    {
        u32 newform = form - 1;
        if (newform <= maxForm)
            ret += newform;
    }
    else if (form <= maxForm)
        ret += form;
    else if (isFemale && gDimorphismTable[species-1])
        ret += isFemale;

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

    if (!rndflag) {
        rnd = (gf_rand() | (gf_rand() << 16));
    }
    SetBoxMonData(boxmon,MON_DATA_PERSONALITY,(u8 *)&rnd);

    if (idflag==ID_NO_SHINY) {
        do {
            id = (gf_rand() | (gf_rand() << 16));
        } while (SHINY_CHECK(id, rnd));
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
    u32 ret = FALSE;
    int work;

    // use this chance to make bad poisoning normal poison at the end of battle
    work = GetMonData(pp, MON_DATA_STATUS, NULL);
    if (work & STATUS_BAD_POISON)
    {
        work &= ~(STATUS_BAD_POISON);
        work |= STATUS_POISON;
        SetMonData(pp, MON_DATA_STATUS, &work);
    }
    work = 0; // reset work variable so that the form is fine

    if (form_no != 0)
    {
        u16 newSpecies;
        ArchiveDataLoadOfs(&newSpecies, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA, sizeof(u16)*(32*species + form_no-1), sizeof(u16));
        ret = ((newSpecies & NEEDS_REVERSION) != 0); // initial return
        newSpecies &= ~(NEEDS_REVERSION);
        // invalid form entry specified or form does not require reversion--return
        if (newSpecies == 0 || ret == FALSE)
        {
            return FALSE;
        }
        // Form
        ArchiveDataLoadOfs(&work, ARC_CODE_ADDONS, CODE_ADDON_FORM_REVERSION_MAPPING, sizeof(u16) * (newSpecies - SPECIES_MEGA_START), sizeof(u16));

        SetMonData(pp, MON_DATA_FORM, &work);
        correct_zacian_zamazenta_kyurem_moves_for_form(pp, work, 0);
        RecalcPartyPokemonStats(pp);
        ResetPartyPokemonAbility(pp);
        ret = TRUE;
    }
    return ret;
}

u32 gLastPokemonLevelForMoneyCalc;

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

// need to be in order of form so that python script can generate the makefile
#define CRY_SPECIES_SHAYMIN 0x1EE

// megas
#define CRY_SPECIES_BASE_VENUSAUR (CRY_SPECIES_FORMS_BASE)
#define CRY_SPECIES_BASE_CHARIZARD_X (CRY_SPECIES_FORMS_BASE + 1)
#define CRY_SPECIES_BASE_CHARIZARD_Y (CRY_SPECIES_FORMS_BASE + 2)
#define CRY_SPECIES_BASE_BLASTOISE (CRY_SPECIES_FORMS_BASE + 3)
#define CRY_SPECIES_BASE_BEEDRILL (CRY_SPECIES_FORMS_BASE + 4)
#define CRY_SPECIES_BASE_PIDGEOT (CRY_SPECIES_FORMS_BASE + 5)
#define CRY_SPECIES_BASE_ALAKAZAM (CRY_SPECIES_FORMS_BASE + 6)
#define CRY_SPECIES_BASE_SLOWBRO (CRY_SPECIES_FORMS_BASE + 7)
#define CRY_SPECIES_BASE_GENGAR (CRY_SPECIES_FORMS_BASE + 8)
#define CRY_SPECIES_BASE_KANGASKHAN (CRY_SPECIES_FORMS_BASE + 9)
#define CRY_SPECIES_BASE_PINSIR (CRY_SPECIES_FORMS_BASE + 10)
#define CRY_SPECIES_BASE_GYARADOS (CRY_SPECIES_FORMS_BASE + 11)
#define CRY_SPECIES_BASE_AERODACTYL (CRY_SPECIES_FORMS_BASE + 12)
#define CRY_SPECIES_BASE_MEWTWO_X (CRY_SPECIES_FORMS_BASE + 13)
#define CRY_SPECIES_BASE_MEWTWO_Y (CRY_SPECIES_FORMS_BASE + 14)
#define CRY_SPECIES_BASE_AMPHAROS (CRY_SPECIES_FORMS_BASE + 15)
#define CRY_SPECIES_BASE_STEELIX (CRY_SPECIES_FORMS_BASE + 16)
#define CRY_SPECIES_BASE_SCIZOR (CRY_SPECIES_FORMS_BASE + 17)
#define CRY_SPECIES_BASE_HERACROSS (CRY_SPECIES_FORMS_BASE + 18)
#define CRY_SPECIES_BASE_HOUNDOOM (CRY_SPECIES_FORMS_BASE + 19)
#define CRY_SPECIES_BASE_TYRANITAR (CRY_SPECIES_FORMS_BASE + 20)
#define CRY_SPECIES_BASE_SCEPTILE (CRY_SPECIES_FORMS_BASE + 21)
#define CRY_SPECIES_BASE_BLAZIKEN (CRY_SPECIES_FORMS_BASE + 22)
#define CRY_SPECIES_BASE_SWAMPERT (CRY_SPECIES_FORMS_BASE + 23)
#define CRY_SPECIES_BASE_GARDEVOIR (CRY_SPECIES_FORMS_BASE + 24)
#define CRY_SPECIES_BASE_SABLEYE (CRY_SPECIES_FORMS_BASE + 25)
#define CRY_SPECIES_BASE_MAWILE (CRY_SPECIES_FORMS_BASE + 26)
#define CRY_SPECIES_BASE_AGGRON (CRY_SPECIES_FORMS_BASE + 27)
#define CRY_SPECIES_BASE_MEDICHAM (CRY_SPECIES_FORMS_BASE + 28)
#define CRY_SPECIES_BASE_MANECTRIC (CRY_SPECIES_FORMS_BASE + 29)
#define CRY_SPECIES_BASE_SHARPEDO (CRY_SPECIES_FORMS_BASE + 30)
#define CRY_SPECIES_BASE_CAMERUPT (CRY_SPECIES_FORMS_BASE + 31)
#define CRY_SPECIES_BASE_ALTARIA (CRY_SPECIES_FORMS_BASE + 32)
#define CRY_SPECIES_BASE_BANETTE (CRY_SPECIES_FORMS_BASE + 33)
#define CRY_SPECIES_BASE_ABSOL (CRY_SPECIES_FORMS_BASE + 34)
#define CRY_SPECIES_BASE_GLALIE (CRY_SPECIES_FORMS_BASE + 35)
#define CRY_SPECIES_BASE_SALAMENCE (CRY_SPECIES_FORMS_BASE + 36)
#define CRY_SPECIES_BASE_METAGROSS (CRY_SPECIES_FORMS_BASE + 37)
#define CRY_SPECIES_BASE_LATIAS (CRY_SPECIES_FORMS_BASE + 38)
#define CRY_SPECIES_BASE_LATIOS (CRY_SPECIES_FORMS_BASE + 39)
#define CRY_SPECIES_BASE_RAYQUAZA (CRY_SPECIES_FORMS_BASE + 40)
#define CRY_SPECIES_BASE_LOPUNNY (CRY_SPECIES_FORMS_BASE + 41)
#define CRY_SPECIES_BASE_GARCHOMP (CRY_SPECIES_FORMS_BASE + 42)
#define CRY_SPECIES_BASE_LUCARIO (CRY_SPECIES_FORMS_BASE + 43)
#define CRY_SPECIES_BASE_ABOMASNOW (CRY_SPECIES_FORMS_BASE + 44)
#define CRY_SPECIES_BASE_GALLADE (CRY_SPECIES_FORMS_BASE + 45)
#define CRY_SPECIES_BASE_AUDINO (CRY_SPECIES_FORMS_BASE + 46)
#define CRY_SPECIES_BASE_DIANCIE (CRY_SPECIES_FORMS_BASE + 47)

// everything else
#define CRY_SPECIES_BASE_TORNADUS (CRY_SPECIES_FORMS_BASE + 48)
#define CRY_SPECIES_BASE_THUNDURUS (CRY_SPECIES_FORMS_BASE+1 + 48)
#define CRY_SPECIES_BASE_LANDORUS (CRY_SPECIES_FORMS_BASE+2 + 48)
#define CRY_SPECIES_BASE_KYUREM (CRY_SPECIES_FORMS_BASE+3 + 48)
#define CRY_SPECIES_BASE_PUMPKABOO (CRY_SPECIES_FORMS_BASE+5 + 48)
#define CRY_SPECIES_BASE_GOURGEIST (CRY_SPECIES_FORMS_BASE+6 + 48)
#define CRY_SPECIES_BASE_HOOPA (CRY_SPECIES_FORMS_BASE+7 + 48)
#define CRY_SPECIES_BASE_ORICORIO (CRY_SPECIES_FORMS_BASE+8 + 48)
#define CRY_SPECIES_BASE_LYCANROC (CRY_SPECIES_FORMS_BASE+11 + 48)
#define CRY_SPECIES_BASE_WISHIWASHI (CRY_SPECIES_FORMS_BASE+13 + 48)
#define CRY_SPECIES_BASE_NECROZMA (CRY_SPECIES_FORMS_BASE+14 + 48)
#define CRY_SPECIES_BASE_ZACIAN (CRY_SPECIES_FORMS_BASE+18 + 48)
#define CRY_SPECIES_BASE_ZAMAZENTA (CRY_SPECIES_FORMS_BASE+19 + 48)
#define CRY_SPECIES_BASE_URSHIFU (CRY_SPECIES_FORMS_BASE+20 + 48)
#define CRY_SPECIES_BASE_CALYREX (CRY_SPECIES_FORMS_BASE+21 + 48)
#define CRY_SPECIES_BASE_ENAMORUS (CRY_SPECIES_FORMS_BASE+23 + 48)
#define CRY_SPECIES_BASE_MAUSHOLD (CRY_SPECIES_FORMS_BASE+24 + 48)

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
    u32 newSpecies = 0;

    // manually map all of the limbo slots to bulbasaur's cry
    if (species > SPECIES_ARCEUS && species < SPECIES_VICTINI) {
        species = SPECIES_BULBASAUR;
    }

    //debug_printf("[GrabCryNumSpeciesForm] species = %d, form = %d\n", species, form)

    // battles are fucking stupid and pass in species already adjusted for form.  need to revert to base species and extract form
    if (species > MAX_MON_NUM) {
        // if form-adjusted species is passed in, no need to call it to grab it again
        newSpecies = species;
        form = GetFormFromAdjustedForm(species);
        species = GetBaseSpeciesFromAdjustedForm(species);
    }
    // shaymin has to have some hacks to get this to work proper because of the same battle stuff above
    else if (species == SPECIES_SHAYMIN) {
        register u32 retAddr asm("lr");
        if (retAddr == 0x020069BF)
            storeShayminForm = form;
        else if (retAddr == 0x020063E5 || retAddr == 0x02006241)
            if (!storeShayminForm)
                return species;
    }
    else if (form == 0) // can just return species for the cry if it is base form
    {
        return species;
    }
    else
    {
        // need to grab form-adjusted species otherwise
        newSpecies = PokeOtherFormMonsNoGet(species, form);
    }

    // handle megas in a way such that it's not added to the already-bad switch
    if (newSpecies >= SPECIES_MEGA_START && newSpecies <= MAX_MEGA_NUM)
        return (newSpecies - SPECIES_MEGA_START + CRY_SPECIES_BASE_VENUSAUR);

    // handle the rest of the species
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
    case SPECIES_MAUSHOLD:
        return CRY_SPECIES_BASE_MAUSHOLD;
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
    u32 levelCap = GetScriptVar(LEVEL_CAP_VARIABLE);
    if (levelCap > 100) levelCap = 100;
    return levelCap;
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

/**
 *  @brief grab the encounter slot that should be forced when static/magnet pull proc
 *         needed to fix the crash caused by static and magnet pull
 *
 *  @param inData WildEncounterWork array to parse through for matching type
 *  @param inListNum amount of entries in inData
 *  @param type type to check for
 *  @param outNo encounter slot that is forced
 */
BOOL SetFixedWildEncounter(const WildEncounterWork *inData, const u8 inListNum, const u8 type, u8 * outNo)
{
    u8 same_type[12];
    u32 cnt, i, type1, type2;
    for (i = 0; i < 12; i++)
    {
        same_type[i] = 0;
    }
    cnt = 0;
    for (i = 0; i < inListNum; i++)
    {
        u16 newSpecies = PokeOtherFormMonsNoGet(inData[i].species, inData[i].form);
        type1 = PokePersonalParaGet(newSpecies, PERSONAL_TYPE_1);
        type2 = PokePersonalParaGet(newSpecies, PERSONAL_TYPE_2);
        if ((type1 == type) || (type2 == type))
        {
            same_type[cnt++] = i;
        }
    }
    if (cnt == 0 || cnt == inListNum)
    {
        return FALSE;
    }
    *outNo = same_type[gf_rand() % cnt];
    return TRUE;
}

/**
 *  @brief perform shiny check given ot id and pid
 *
 *  @param otid original trainer id
 *  @param pid personality id
 *  @returns TRUE if otid and pid show a shiny pokémon; FALSE otherwise
 */
BOOL LONG_CALL CalcShininessByOtIdAndPersonality(u32 otid, u32 pid)
{
    return SHINY_CHECK(otid, pid);
}

/**
 *  @brief adjust the pid to be shiny such that it keeps substructures in the same order
 *
 *  @param otid original trainer id
 *  @param pid personality id
 *  @returns adjusted pid to be a shiny without corrupting the mon
 */
u32 LONG_CALL GenerateShinyPIDKeepSubstructuresIntact(u32 otId, u32 pid)
{
    /*
        see: https://github.com/pret/pokeheartgold/blob/4d4037e05713e267b337aeb81abcbdd395c1f3ac/src/pokemon.c#L3955
        substructure order is determined in GetSubstruct at the above link.  it uses the 5 bits occupied by 0x0003E000 to select the order.
        when generating this, i just add the random number at the end to prevent every shiny given out this way from being a square shiny
    */
    u32 shinyValue = SHINY_VALUE(otId, pid);
    if (shinyValue >= SHINY_ODDS) // xoring pid with shinyValue will give shiny but may corrupt substruct order
    {
        if (shinyValue & 0xE000)
            pid = pid ^ ((shinyValue << 16) & 0xE0000000);
        pid = pid ^ (shinyValue & 0x1FFF);
        // shinyValue is now 0.  any xor must keep the shinyValue below SHINY_ODDS--should be fine to just generate a random number 0-SHINY_ODDS and xor it
        pid = pid ^ (gf_rand() % (SHINY_ODDS));
    }
    return pid;
}

/**
 *  @brief try learning a move upon level up
*          edited to allow for moves to be learned on evolution at level 0
 *
 *  @param mon PartyPokemon whose level is checked for moves
 *  @param last_i last entry in the level up learnset table that was checked
 *  @param sp0 pointer to a u16 that contains the move constant
 *  @return (u16)-1u if the mon's learnset is full, (u16)-2u if the mon already knows the move, and the move index if the mon had the move successfully added
 */
u32 MonTryLearnMoveOnLevelUp(struct PartyPokemon *mon, int * last_i, u16 * sp0)
{
    BOOL isMonEvolving = FALSE;
    register u32 retAddr asm("lr");
    if (retAddr == 0x020764EB) // right at the end of the massive evolution callback
    {
        isMonEvolving = TRUE;
    }
    u32 ret = 0;
    u32 *levelUpLearnset = sys_AllocMemory(HEAPID_DEFAULT, LEARNSET_TOTAL_MOVES * sizeof(u32));
    u32 species = (u16)GetMonData(mon, MON_DATA_SPECIES, NULL);
    u32 form = GetMonData(mon, MON_DATA_FORM, NULL);
    u32 level = (u8)GetMonData(mon, MON_DATA_LEVEL, NULL);

    LoadLevelUpLearnset_HandleAlternateForm(species, (int)form, levelUpLearnset);

    if (isMonEvolving && LEVEL_UP_LEARNSET_LEVEL(levelUpLearnset[*last_i]) == 0) // when evolving, try to learn moves at level 0
        level = 0;

    if (levelUpLearnset[*last_i] == LEVEL_UP_LEARNSET_END)
    {
        sys_FreeMemoryEz(levelUpLearnset);
        return 0;
    }
    while ((levelUpLearnset[*last_i] & LEVEL_UP_LEARNSET_LEVEL_MASK) != (level << LEVEL_UP_LEARNSET_LEVEL_SHIFT))
    {
        (*last_i)++;
        if (levelUpLearnset[*last_i] == LEVEL_UP_LEARNSET_END) {
            sys_FreeMemoryEz(levelUpLearnset);
            return 0;
        }
        if (isMonEvolving) // if a mon is evolving, it is possible that the current level move also corresponds with a move that it learns on evolution.  need to skip the entry if it has already been attempted to learn a move
        {
            u32 currMove = LEVEL_UP_LEARNSET_MOVE(levelUpLearnset[*last_i]);
            for (s32 i = 0; i < *last_i; i++)
            {
                if (LEVEL_UP_LEARNSET_MOVE(levelUpLearnset[i]) == currMove && LEVEL_UP_LEARNSET_LEVEL(levelUpLearnset[i]) == 0)
                {
                    (*last_i)++;
                    break;
                }
            }
        }
    }
    if ((levelUpLearnset[*last_i] & LEVEL_UP_LEARNSET_LEVEL_MASK) == (level << LEVEL_UP_LEARNSET_LEVEL_SHIFT))
    {
        *sp0 = LEVEL_UP_LEARNSET_MOVE(levelUpLearnset[*last_i]);
        (*last_i)++;
        ret = TryAppendMonMove(mon, *sp0);
    }
    sys_FreeMemoryEz(levelUpLearnset);
    return ret;
}

const u8 sTrainerGenders[] = {
    [TRAINERCLASS_PKMN_TRAINER_ETHAN] = TRAINER_MALE,
    [TRAINERCLASS_PKMN_TRAINER_LYRA] = TRAINER_FEMALE,
    [TRAINERCLASS_YOUNGSTER] = TRAINER_MALE,
    [TRAINERCLASS_LASS] = TRAINER_FEMALE,
    [TRAINERCLASS_CAMPER] = TRAINER_MALE,
    [TRAINERCLASS_PICNICKER] = TRAINER_FEMALE,
    [TRAINERCLASS_BUG_CATCHER] = TRAINER_MALE,
    [TRAINERCLASS_AROMA_LADY] = TRAINER_FEMALE,
    [TRAINERCLASS_TWINS] = TRAINER_FEMALE,
    [TRAINERCLASS_HIKER] = TRAINER_MALE,
    [TRAINERCLASS_BATTLE_GIRL] = TRAINER_FEMALE,
    [TRAINERCLASS_FISHERMAN] = TRAINER_MALE,
    [TRAINERCLASS_CYCLIST_M] = TRAINER_MALE,
    [TRAINERCLASS_CYCLIST_F] = TRAINER_FEMALE,
    [TRAINERCLASS_BLACK_BELT] = TRAINER_MALE,
    [TRAINERCLASS_ARTIST] = TRAINER_MALE,
    [TRAINERCLASS_PKMN_BREEDER_M] = TRAINER_MALE,
    [TRAINERCLASS_PKMN_BREEDER_F] = TRAINER_FEMALE,
    [TRAINERCLASS_COWGIRL] = TRAINER_FEMALE,
    [TRAINERCLASS_JOGGER] = TRAINER_MALE,
    [TRAINERCLASS_POKEFAN_M] = TRAINER_MALE,
    [TRAINERCLASS_POKEFAN] = TRAINER_FEMALE,
    [TRAINERCLASS_POKE_KID] = TRAINER_FEMALE,
    [TRAINERCLASS_RIVAL] = TRAINER_MALE,
    [TRAINERCLASS_ACE_TRAINER_M] = TRAINER_MALE,
    [TRAINERCLASS_ACE_TRAINER_F] = TRAINER_FEMALE,
    [TRAINERCLASS_WAITRESS] = TRAINER_FEMALE,
    [TRAINERCLASS_VETERAN] = TRAINER_MALE,
    [TRAINERCLASS_NINJA_BOY] = TRAINER_MALE,
    [TRAINERCLASS_DRAGON_TAMER] = TRAINER_MALE,
    [TRAINERCLASS_BIRD_KEEPER] = TRAINER_FEMALE,
    [TRAINERCLASS_JUGGLER] = TRAINER_MALE,
    [TRAINERCLASS_RICH_BOY] = TRAINER_MALE,
    [TRAINERCLASS_LADY] = TRAINER_FEMALE,
    [TRAINERCLASS_GENTLEMAN] = TRAINER_MALE,
    [TRAINERCLASS_SOCIALITE] = TRAINER_FEMALE,
    [TRAINERCLASS_BEAUTY] = TRAINER_FEMALE,
    [TRAINERCLASS_COLLECTOR] = TRAINER_MALE,
    [TRAINERCLASS_POLICEMAN] = TRAINER_MALE,
    [TRAINERCLASS_PKMN_RANGER_M] = TRAINER_MALE,
    [TRAINERCLASS_PKMN_RANGER_F] = TRAINER_FEMALE,
    [TRAINERCLASS_SCIENTIST] = TRAINER_MALE,
    [TRAINERCLASS_SWIMMER_M] = TRAINER_MALE,
    [TRAINERCLASS_SWIMMER_F] = TRAINER_FEMALE,
    [TRAINERCLASS_TUBER_M] = TRAINER_MALE,
    [TRAINERCLASS_TUBER_F] = TRAINER_FEMALE,
    [TRAINERCLASS_SAILOR] = TRAINER_MALE,
    [TRAINERCLASS_KIMONO_GIRL] = TRAINER_FEMALE,
    [TRAINERCLASS_RUIN_MANIAC] = TRAINER_MALE,
    [TRAINERCLASS_PSYCHIC_M] = TRAINER_MALE,
    [TRAINERCLASS_PSYCHIC_F] = TRAINER_FEMALE,
    [TRAINERCLASS_PI] = TRAINER_MALE,
    [TRAINERCLASS_GUITARIST] = TRAINER_MALE,
    [TRAINERCLASS_ACE_TRAINER_M_GS] = TRAINER_MALE,
    [TRAINERCLASS_ACE_TRAINER_F_GS] = TRAINER_FEMALE,
    [TRAINERCLASS_TEAM_ROCKET] = TRAINER_MALE,
    [TRAINERCLASS_SKIER] = TRAINER_FEMALE,
    [TRAINERCLASS_ROUGHNECK] = TRAINER_MALE,
    [TRAINERCLASS_CLOWN] = TRAINER_MALE,
    [TRAINERCLASS_WORKER] = TRAINER_MALE,
    [TRAINERCLASS_SCHOOL_KID_M] = TRAINER_MALE,
    [TRAINERCLASS_SCHOOL_KID_F] = TRAINER_FEMALE,
    [TRAINERCLASS_TEAM_ROCKET_F] = TRAINER_FEMALE,
    [TRAINERCLASS_BURGLAR] = TRAINER_MALE,
    [TRAINERCLASS_FIREBREATHER] = TRAINER_MALE,
    [TRAINERCLASS_BIKER] = TRAINER_MALE,
    [TRAINERCLASS_LEADER_FALKNER] = TRAINER_MALE,
    [TRAINERCLASS_LEADER_BUGSY] = TRAINER_FEMALE,
    [TRAINERCLASS_POKE_MANIAC] = TRAINER_MALE,
    [TRAINERCLASS_BIRD_KEEPER_GS] = TRAINER_MALE,
    [TRAINERCLASS_LEADER_WHITNEY] = TRAINER_FEMALE,
    [TRAINERCLASS_RANCHER] = TRAINER_MALE,
    [TRAINERCLASS_LEADER_MORTY] = TRAINER_MALE,
    [TRAINERCLASS_LEADER_PRYCE] = TRAINER_MALE,
    [TRAINERCLASS_LEADER_JASMINE] = TRAINER_FEMALE,
    [TRAINERCLASS_LEADER_CHUCK] = TRAINER_MALE,
    [TRAINERCLASS_LEADER_CLAIR] = TRAINER_FEMALE,
    [TRAINERCLASS_TEACHER] = TRAINER_FEMALE,
    [TRAINERCLASS_SUPER_NERD] = TRAINER_MALE,
    [TRAINERCLASS_SAGE] = TRAINER_MALE,
    [TRAINERCLASS_PARASOL_LADY] = TRAINER_FEMALE,
    [TRAINERCLASS_WAITER] = TRAINER_MALE,
    [TRAINERCLASS_MEDIUM] = TRAINER_FEMALE,
    [TRAINERCLASS_CAMERAMAN] = TRAINER_MALE,
    [TRAINERCLASS_REPORTER] = TRAINER_FEMALE,
    [TRAINERCLASS_IDOL] = TRAINER_FEMALE,
    [TRAINERCLASS_CHAMPION] = TRAINER_MALE,
    [TRAINERCLASS_ELITE_FOUR_WILL] = TRAINER_FEMALE,
    [TRAINERCLASS_ELITE_FOUR_KAREN] = TRAINER_FEMALE,
    [TRAINERCLASS_ELITE_FOUR_KOGA] = TRAINER_FEMALE,
    [TRAINERCLASS_PKMN_TRAINER_CHERYL] = TRAINER_FEMALE,
    [TRAINERCLASS_PKMN_TRAINER_RILEY] = TRAINER_MALE,
    [TRAINERCLASS_PKMN_TRAINER_BUCK] = TRAINER_FEMALE,
    [TRAINERCLASS_PKMN_TRAINER_MIRA] = TRAINER_MALE,
    [TRAINERCLASS_PKMN_TRAINER_MARLEY] = TRAINER_FEMALE,
    [TRAINERCLASS_PKMN_TRAINER_FTR_LUCAS] = TRAINER_MALE,
    [TRAINERCLASS_PKMN_TRAINER_FTR_DAWN] = TRAINER_FEMALE,
    [TRAINERCLASS_TOWER_TYCOON] = TRAINER_MALE,
    [TRAINERCLASS_LEADER_BROCK] = TRAINER_MALE,
    [TRAINERCLASS_HALL_MATRON] = TRAINER_FEMALE,
    [TRAINERCLASS_FACTORY_HEAD] = TRAINER_MALE,
    [TRAINERCLASS_ARCADE_STAR] = TRAINER_FEMALE,
    [TRAINERCLASS_CASTLE_VALET] = TRAINER_MALE,
    [TRAINERCLASS_LEADER_MISTY] = TRAINER_FEMALE,
    [TRAINERCLASS_LEADER_LT_SURGE] = TRAINER_MALE,
    [TRAINERCLASS_LEADER_ERIKA] = TRAINER_FEMALE,
    [TRAINERCLASS_LEADER_JANINE] = TRAINER_FEMALE,
    [TRAINERCLASS_LEADER_SABRINA] = TRAINER_FEMALE,
    [TRAINERCLASS_LEADER_BLAINE] = TRAINER_MALE,
    [TRAINERCLASS_PKMN_TRAINER_RED] = TRAINER_MALE,
    [TRAINERCLASS_LEADER_BLUE] = TRAINER_MALE,
    [TRAINERCLASS_ELDER] = TRAINER_MALE,
    [TRAINERCLASS_ELITE_FOUR_BRUNO] = TRAINER_FEMALE,
    [TRAINERCLASS_SCIENTIST_GS] = TRAINER_MALE,
    [TRAINERCLASS_EXECUTIVE_ARIANA] = TRAINER_FEMALE,
    [TRAINERCLASS_BOARDER] = TRAINER_MALE,
    [TRAINERCLASS_EXECUTIVE_ARCHER] = TRAINER_MALE,
    [TRAINERCLASS_EXECUTIVE_PROTON] = TRAINER_MALE,
    [TRAINERCLASS_EXECUTIVE_PETREL] = TRAINER_MALE,
    [TRAINERCLASS_PASSERBY] = TRAINER_MALE,
    [TRAINERCLASS_MYSTERY_MAN] = TRAINER_MALE,
    [TRAINERCLASS_DOUBLE_TEAM] = TRAINER_MALE,
    [TRAINERCLASS_YOUNG_COUPLE] = TRAINER_MALE,
    [TRAINERCLASS_PKMN_TRAINER_LANCE] = TRAINER_MALE,
    [TRAINERCLASS_ROCKET_BOSS] = TRAINER_MALE,
    [TRAINERCLASS_PKMN_TRAINER_LUCAS_DP] = TRAINER_MALE,
    [TRAINERCLASS_PKMN_TRAINER_DAWN_DP] = TRAINER_FEMALE,
    [TRAINERCLASS_PKMN_TRAINER_LUCAS_PT] = TRAINER_MALE,
};

TrainerGender LONG_CALL TT_TrainerTypeSexGet(int tr_type) {
    return (TrainerGender)sTrainerGenders[tr_type];
}

// https://www.smogon.com/forums/threads/scarlet-violet-battle-mechanics-research.3709545/post-9714380
void LONG_CALL correct_zacian_zamazenta_kyurem_moves_for_form(struct PartyPokemon *param, unsigned int expected_form, int UNUSED *a3) {
    switch (GetMonData(param, MON_DATA_SPECIES, NULL)) {
        case SPECIES_KYUREM:
            switch (expected_form) {
                case 0:
                    SwapPartyPokemonMove(param, MOVE_ICE_BURN, MOVE_GLACIATE);
                    SwapPartyPokemonMove(param, MOVE_FREEZE_SHOCK, MOVE_GLACIATE);
                    SwapPartyPokemonMove(param, MOVE_FUSION_FLARE, MOVE_SCARY_FACE);
                    SwapPartyPokemonMove(param, MOVE_FUSION_BOLT, MOVE_SCARY_FACE);
                    break;
                case 1:
                    SwapPartyPokemonMove(param, MOVE_GLACIATE, MOVE_ICE_BURN);
                    SwapPartyPokemonMove(param, MOVE_SCARY_FACE, MOVE_FUSION_FLARE);
                    break;
                case 2:
                    SwapPartyPokemonMove(param, MOVE_GLACIATE, MOVE_FREEZE_SHOCK);
                    SwapPartyPokemonMove(param, MOVE_SCARY_FACE, MOVE_FUSION_BOLT);
                    break;

                default:
                    break;
            }
            break;
        case SPECIES_ZACIAN:
            switch (expected_form) {
                case 0:
                    SwapPartyPokemonMove(param, MOVE_BEHEMOTH_BLADE, MOVE_IRON_HEAD);
                    break;
                case 1:
                    SwapPartyPokemonMove(param, MOVE_IRON_HEAD, MOVE_BEHEMOTH_BLADE);
                    break;
                default:
                    break;
            }
            break;
        case SPECIES_ZAMAZENTA:
            switch (expected_form) {
                case 0:
                    SwapPartyPokemonMove(param, MOVE_BEHEMOTH_BASH, MOVE_IRON_HEAD);
                    break;
                case 1:
                    SwapPartyPokemonMove(param, MOVE_IRON_HEAD, MOVE_BEHEMOTH_BASH);
                    break;
                default:
                    break;
            }
            break;
        default:
            break;
    }
}

void LONG_CALL ChangeToBattleForm(struct PartyPokemon *pp) {
    int monsNo = GetMonData(pp, MON_DATA_SPECIES, NULL);
    int formNo = GetMonData(pp, MON_DATA_FORM, NULL);

    RevertFormChange(pp, monsNo, formNo);

    switch (monsNo) {
    case SPECIES_XERNEAS:
        formNo = 1;
        ChangePartyPokemonToForm(pp, formNo);
        break;
    case SPECIES_ZACIAN:
        if (GetMonData(pp, MON_DATA_HELD_ITEM, NULL) == ITEM_RUSTED_SWORD) {
            formNo = 1;
            ChangePartyPokemonToForm(pp, formNo);
            correct_zacian_zamazenta_kyurem_moves_for_form(pp, formNo, 0);
        }
        break;
    case SPECIES_ZAMAZENTA:
        if (GetMonData(pp, MON_DATA_HELD_ITEM, NULL) == ITEM_RUSTED_SHIELD) {
            formNo = 1;
            ChangePartyPokemonToForm(pp, formNo);
            correct_zacian_zamazenta_kyurem_moves_for_form(pp, formNo, 0);
        }
        break;

    default:
        break;
    }
}
