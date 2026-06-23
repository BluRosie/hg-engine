#include "../../include/types.h"
#include "../../include/pokemon.h"
#include "../../include/bag.h"
#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/file.h"
#include "../../include/constants/game.h"
#include "../../include/constants/generated/learnsets.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/sndseq.h"
#include "../../include/constants/species.h"
#include "../../include/constants/weather_numbers.h"
#include "../../include/debug.h"
#include "../../include/overlay.h"
#include "../../include/party_menu.h"
#include "../../include/rtc.h"
#include "../../include/save.h"
#include "../../include/script.h"
#include "../../include/sound.h"

int __attribute__((section (".init"))) PartyMenu_HandleUseItemOnMon_Internal(struct PartyMenu *partyMenu);
u32 UseItemMonAttrChangeCheck(struct PartyMenu *wk, void *dat);
BOOL CanUseRevealGlass(struct PartyPokemon *pp);
BOOL CanUseNectar(struct PartyPokemon *pp, u16 nectar);
u32 CanUseDNASplicersGrabSplicerPos(struct PartyPokemon *pp, struct Party *party);
u32 CanUseAbilityCapsule(struct PartyPokemon *pp);
u32 CanUseAbilityPatch(struct PartyPokemon *pp);
BOOL CanUseRotomCatalog(struct PartyPokemon *pp);
void PartyMenu_ShowRotomCatalogList(struct PartyMenu *partyMenu);

extern const u16 sButtonFrameTileOffsets[];
extern const u8 sButtonRects[][4];
extern const WindowTemplate sButtonWindowTemplates[];

// mirrors the button layout
extern u32 partyMenuSignal;

u16 NatureToMintItem[] = {
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

int __attribute__((section (".init"))) PartyMenu_HandleUseItemOnMon_Internal(struct PartyMenu *partyMenu)
{
    struct ItemData *itemData = LoadItemDataOrGfx(partyMenu->args->itemId, 0, HEAP_ID_PARTY_MENU);

    if (partyMenu->args->itemId == ITEM_ROTOM_CATALOG && CanUseRotomCatalog(Party_GetMonByIndex(partyMenu->args->party, partyMenu->partyMonIndex))) {
        PartyMenu_ShowRotomCatalogList(partyMenu);
        sys_FreeMemoryEz(itemData);
        return PARTY_MENU_STATE_HANDLE_CONTEXT_MENU_INPUT;
    }

    if (GetItemAttr_PreloadedItemData(itemData, ITEM_PARAM_PP_UP) || GetItemAttr_PreloadedItemData(itemData, ITEM_PARAM_PP_MAX)) {
        sys_FreeMemoryEz(itemData);
        PartyMenu_SelectMoveForPpRestoreOrPpUp(partyMenu, 0);
        return PARTY_MENU_STATE_SELECT_MOVE;
    }
    if (GetItemAttr_PreloadedItemData(itemData, ITEM_PARAM_PP_RECOVERY) && !GetItemAttr_PreloadedItemData(itemData, ITEM_PARAM_ALL_PP_RECOVERY)) {
        sys_FreeMemoryEz(itemData);
        PartyMenu_SelectMoveForPpRestoreOrPpUp(partyMenu, 1);
        return PARTY_MENU_STATE_SELECT_MOVE;
    }

    if (UseItemMonAttrChangeCheck(partyMenu, itemData) == TRUE) {
        return PARTY_MENU_STATE_FORM_CHANGE_ANIM;
    }

    if (CanUseItemOnMonInParty(partyMenu->args->party, partyMenu->args->itemId, partyMenu->partyMonIndex, 0, HEAP_ID_PARTY_MENU) == TRUE) {
        if (GetItemAttr_PreloadedItemData(itemData, ITEM_PARAM_EVOLUTION)) {
            Bag_TakeItem(partyMenu->args->bag, partyMenu->args->itemId, 1, HEAP_ID_PARTY_MENU);
            struct PartyPokemon *mon = Party_GetMonByIndex(partyMenu->args->party, partyMenu->partyMonIndex);
            partyMenu->args->species = GetMonEvolution(NULL, mon, EVOCTX_ITEM_USE, partyMenu->args->itemId, &partyMenu->args->evoMethod);
            partyMenu->args->selectedAction = 8;
            sys_FreeMemoryEz(itemData);
            return PARTY_MENU_STATE_BEGIN_EXIT;
        } else {
            Bag_TakeItem(partyMenu->args->bag, partyMenu->args->itemId, 1, HEAP_ID_PARTY_MENU);
            PartyMenu_SetItemUseFuncFromBagSelection(partyMenu);
        }
    } else {
        PartyMenu_PrintMessageOnWindow34(partyMenu, 102, TRUE);
        partyMenu->partyMonIndex = 8;
        partyMenu->itemUseCallback = PartyMenu_ItemUseFunc_WaitTextPrinterThenExit;
    }
    sys_FreeMemoryEz(itemData);
    return PARTY_MENU_STATE_ITEM_USE_CB;
}

/**
 *  @brief see if an item changes attributes of the pokémon or not
 *
 *  @param wk work structure
 *  @param dat data structure
 */
u32 UseItemMonAttrChangeCheck(struct PartyMenu *wk, void *dat)
{
    struct PartyPokemon *pp = Party_GetMonByIndex(wk->args->party, wk->partyMonIndex);
    partyMenuSignal = 0; // ensure it is 0 before potentially queuing up a different message

    // handle shaymin
    if (wk->args->itemId == ITEM_GRACIDEA
        && Mon_CanUseGracidea(pp) == TRUE) {
        wk->args->species = 1; // change to sky forme
        sys_FreeMemoryEz(dat);
        PokeList_FormDemoOverlayLoad(wk);
        ChangePartyPokemonToForm(pp, 1); // this works alright
        return TRUE;
    }

    // handle tornadus/thundurus/landorus/enamorus

    if (wk->args->itemId == ITEM_REVEAL_GLASS
        && CanUseRevealGlass(pp) == TRUE) {
        u32 currForm = GetMonData(pp, MON_DATA_FORM, NULL);
        wk->args->species = currForm ^ 1; // toggle form between therian/incarnate
        sys_FreeMemoryEz(dat);
        PokeList_FormDemoOverlayLoad(wk);
        ChangePartyPokemonToForm(pp, wk->args->species); // this works alright
        return TRUE;
    }

    // handle oricorio form changes
    // This code relies on the item ids of the nectars being consecutive

    if (wk->args->itemId >= ITEM_RED_NECTAR && wk->args->itemId <= ITEM_PURPLE_NECTAR
        && CanUseNectar(pp, wk->args->itemId) == TRUE) {
        void *bag = Sav2_Bag_get(SaveBlock2_get());
        wk->args->species = wk->args->itemId - ITEM_RED_NECTAR;
        sys_FreeMemoryEz(dat);
        PokeList_FormDemoOverlayLoad(wk);
        ChangePartyPokemonToForm(pp, wk->args->species);
        Bag_TakeItem(bag, wk->args->itemId, 1, 11);
        return TRUE;
    }

#ifdef ALLOW_SAVE_CHANGES
    // handle reshiram/zekrom and kyurem

    u32 splicer_pos = CanUseDNASplicersGrabSplicerPos(pp, wk->args->party);
    u32 reshiramBool = splicer_pos & RESHIRAM_MASK;
    splicer_pos &= JUST_SPLICER_POS_MASK;

    // TODO: handle correct item
    if (wk->args->itemId == ITEM_DNA_SPLICERS_FUSE
        && (splicer_pos < 6)) {
        void *saveData = SaveBlock2_get();
        struct SAVE_MISC_DATA *saveMiscData = Sav2_Misc_get(saveData);

        if (GetMonData(pp, MON_DATA_FORM, NULL) != 0 && saveMiscData->isMonStored[STORED_MONS_DNA_SPLICERS]) // revert forme and put reshiram back in party
        {
            u32 currForm = GetMonData(pp, MON_DATA_FORM, NULL);

            // grab reshiram from save
            // add reshiram to party--can't just use PokeParty_Add because icons freak out when you tell them to animate something that isn't there
            // PokeParty_Add(wk->args->party, &saveMiscData->storedMons[STORED_MONS_DNA_SPLICERS]);
            struct PartyPokemon *reshiram = Party_GetMonByIndex(wk->args->party, splicer_pos);
            *reshiram = saveMiscData->storedMons[STORED_MONS_DNA_SPLICERS];
            partyMenuSignal = 1;

            // delete reshiram from save--may just be able to leave the old data without having to deal with memset as long as we flag it as no mon there
            memset((u8 *)&saveMiscData->storedMons[STORED_MONS_DNA_SPLICERS], 0, sizeof(struct PartyPokemon));
            saveMiscData->isMonStored[STORED_MONS_DNA_SPLICERS] = 0;

            wk->args->species = 0;

            ChangePartyPokemonToForm(pp, 0);
            SwapPartyPokemonMove(pp, currForm == 1 ? MOVE_ICE_BURN : MOVE_FREEZE_SHOCK, MOVE_GLACIATE);
            SwapPartyPokemonMove(pp, currForm == 1 ? MOVE_FUSION_FLARE : MOVE_FUSION_BOLT, MOVE_SCARY_FACE);
        } else if (saveMiscData->isMonStored[STORED_MONS_DNA_SPLICERS] == 0) // return nothing otherwise
        {
            // grab reshiram from party
            // store reshiram in save
            saveMiscData->storedMons[STORED_MONS_DNA_SPLICERS] = *Party_GetMonByIndex(wk->args->party, splicer_pos); // may have to directly memcpy this but this is good for the moment
            // delete reshiram from party--splicer_pos has the position to delete
            PokeParty_Delete(wk->args->party, splicer_pos);
            saveMiscData->isMonStored[STORED_MONS_DNA_SPLICERS] = 1;

            if (splicer_pos < wk->partyMonIndex) // adjust this position back so that the right pokemon's forme gets changed
            {
                wk->partyMonIndex--;
                pp = Party_GetMonByIndex(wk->args->party, wk->partyMonIndex);
            }

            if (reshiramBool) { // turn to white kyurem
                wk->args->species = 1;
            } else { // turn to black kyurem
                wk->args->species = 2;
            }

            ChangePartyPokemonToForm(pp, wk->args->species);
            SwapPartyPokemonMove(pp, MOVE_GLACIATE, wk->args->species == 1 ? MOVE_ICE_BURN : MOVE_FREEZE_SHOCK);
            SwapPartyPokemonMove(pp, MOVE_SCARY_FACE, wk->args->species == 1 ? MOVE_FUSION_FLARE : MOVE_FUSION_BOLT);
        } else {
            return FALSE;
        } // get out because no changes should be made
        sys_FreeMemoryEz(dat);
        PokeList_FormDemoOverlayLoad(wk);
        return TRUE;
    }
#endif

    // handle ability capsule

    if (wk->args->itemId == ITEM_ABILITY_CAPSULE && CanUseAbilityCapsule(pp) == TRUE) {
        void *bag = Sav2_Bag_get(SaveBlock2_get());
        partyMenuSignal = 193; // signal to change the message to this index
        wk->args->species = GetMonData(pp, MON_DATA_FORM, NULL); // no form change
        sys_FreeMemoryEz(dat);
        PokeList_FormDemoOverlayLoad(wk);
        TOGGLE_MON_SWAP_ABILITY_SLOT_BIT(pp)
        ResetPartyPokemonAbility(pp);
        Bag_TakeItem(bag, ITEM_ABILITY_CAPSULE, 1, 11);
        return TRUE;
    }

    // handle ability patch

    if (wk->args->itemId == ITEM_ABILITY_PATCH && CanUseAbilityPatch(pp) == TRUE) {
        void *bag = Sav2_Bag_get(SaveBlock2_get());
        partyMenuSignal = 193; // signal to change the message to this index
        wk->args->species = GetMonData(pp, MON_DATA_FORM, NULL); // no form change
        sys_FreeMemoryEz(dat);
        PokeList_FormDemoOverlayLoad(wk);
        TOGGLE_MON_HIDDEN_ABILITY_BIT(pp)
        ResetPartyPokemonAbility(pp);
        Bag_TakeItem(bag, wk->args->itemId, 1, 11);
        return TRUE;
    }

    // handle nature mints

    if (IS_ITEM_NATURE_MINT(wk->args->itemId)) {
        u32 nature;
        void *bag = Sav2_Bag_get(SaveBlock2_get());
        for (nature = 0; nature < 25; nature++) {
            if (NatureToMintItem[nature] == wk->args->itemId) {
                break;
            }
        }
        partyMenuSignal = 194 + nature; // signal to change the message to this index
        SET_MON_NATURE_OVERRIDE(pp, nature)
        RecalcPartyPokemonStats(pp);
        Bag_TakeItem(bag, wk->args->itemId, 1, 11);
        sys_FreeMemoryEz(dat);
        PokeList_FormDemoOverlayLoad(wk);
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
BOOL CanUseRevealGlass(struct PartyPokemon *pp)
{
    u32 species = GetMonData(pp, MON_DATA_SPECIES, NULL);

    if (species == SPECIES_TORNADUS || species == SPECIES_THUNDURUS || species == SPECIES_LANDORUS) {
        return TRUE;
    }
    return FALSE;
}

/**
 *  @brief check if a certain type of nectar can be used on a PartyPokemon
 *
 *  @param pp PartyPokemon to check the nectar against
 *  @param nectar Nectar item id to check for
 *  @return TRUE if nectar can be used; FALSE otherwise
 */
BOOL CanUseNectar(struct PartyPokemon *pp, u16 nectar)
{
    u32 species = GetMonData(pp, MON_DATA_SPECIES, NULL);
    u16 form = (u16)GetMonData(pp, MON_DATA_FORM, NULL);
    if (species == SPECIES_ORICORIO && form != nectar - ITEM_RED_NECTAR) {
        return TRUE;
    }
    return FALSE;
}

/**
 *  @brief check if DNA splicers can be used, return position in party if so
 *
 *  @param pp PartyPokemon to check for
 *  @param party Party to search through for matching DNA splicers pokémon
 *  @return party position of pokémon that can be stored by the DNA splicers or'd with RESHIRAM_MASK if reshiram is the first pokémon found
 */
u32 CanUseDNASplicersGrabSplicerPos(struct PartyPokemon *pp, struct Party *party)
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
        } else if ((species2 == SPECIES_RESHIRAM || species2 == SPECIES_ZEKROM) && form_no == 0) // looking for a reshiram to store to the save
        {
            return (species2 == SPECIES_RESHIRAM ? RESHIRAM_MASK : 0) | i;
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

    if (hidden_ability) {
        return FALSE;
    }

    // ability capsule can only be used if ability2 is nonzero and is not equal to ability1
    return ability2 != 0 && ability1 != ability2;
}

u32 CanUseAbilityPatch(struct PartyPokemon *pp)
{
    u32 species = GetMonData(pp, MON_DATA_SPECIES, NULL);
    u32 form = GetMonData(pp, MON_DATA_FORM, NULL);
    u32 hidden_ability = GetMonHiddenAbility(species, form);

    return hidden_ability != 0;
}

void PartyMenu_ShowRotomCatalogList(struct PartyMenu *partyMenu)
{

    ClearFrameAndWindow2(&partyMenu->windows[32], TRUE);
    sub_0207E068(partyMenu);
    PartyMenu_PrintMessageOnWindow32(partyMenu, 220, TRUE);

    const int numItems = 6 + 1; // num rotom forms + QUIT
    partyMenu->listMenuItems = ListMenuItems_New(numItems, HEAP_ID_PARTY_MENU);

    String *s;

    s = NewString_ReadMsgData(partyMenu->msgData, 221);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    s = NewString_ReadMsgData(partyMenu->msgData, 222);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    s = NewString_ReadMsgData(partyMenu->msgData, 223);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    // quit button in 4th slot
    ListMenuItems_AddItem(partyMenu->listMenuItems, partyMenu->contextMenuStrings[PARTY_MON_CONTEXT_MENU_QUIT], (u32)PartyMonContextMenuAction_QuitToBag);

    s = NewString_ReadMsgData(partyMenu->msgData, 224);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    s = NewString_ReadMsgData(partyMenu->msgData, 225);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    s = NewString_ReadMsgData(partyMenu->msgData, 226);
    ListMenuItems_AddItem(partyMenu->listMenuItems, s, (u32)PartyMonContextMenuAction_RotomCatalog);

    String_Delete(s);

    struct PartyMenuContextMenu contextMenu;
    contextMenu.items = partyMenu->listMenuItems;
    contextMenu.window = &partyMenu->windows[36];
    contextMenu.unk_08 = 0;
    contextMenu.unk_09 = 1;
    contextMenu.numItems = numItems;
    contextMenu.unk_0B_0 = 0;
    contextMenu.unk_0B_4 = 0;
    contextMenu.scrollEnabled = numItems > 4;

    partyMenu->contextMenuCursor = PartyMenu_CreateContextMenuCursor(partyMenu, &contextMenu, 0, HEAP_ID_PARTY_MENU, /*state=*/0);

    // reframe the window to line up the columns. remove the first 3 windows and recreate one tile down
    for (int i = 0; i < 3; i++) {
        WindowTemplate template = sButtonWindowTemplates[i];
        RemoveWindow(&partyMenu->contextMenuButtonWindows[i]);
        template.top -= 1;
        AddWindow(partyMenu->bgConfig, &partyMenu->contextMenuButtonWindows[i], &template);
        FillWindowPixelBuffer(&partyMenu->contextMenuButtonWindows[i], 4);
    }

    sub_0207E54C(partyMenu, numItems, 0, /*state=*/0);
    sub_0207E358(partyMenu, &contextMenu, numItems, 0, 0);
}
