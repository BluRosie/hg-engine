#include "debug.h"
#include "types.h"

#include "constants/battle_message_constants.h"
#include "constants/file.h"

#include "battle.h"
#include "message.h"
#include "nitro.h"
#include "pokemon.h"
#include "system.h"
#include "window.h"

#ifdef DEBUG_BATTLE_SCENARIOS
#include "test_battle.h"
#endif

enum {
    ABILITY_POPUP_INIT_PALETTE = 0,
    ABILITY_POPUP_INIT,
    ABILITY_POPUP_SLIDE_IN,
    ABILITY_POPUP_WAIT,
    ABILITY_POPUP_SLIDE_OUT,
    ABILITY_POPUP_DESTROY,
    ABILITY_POPUP_FINISH,
};

// originally wrote this to be like some kind of task but it was best done through the script command itself

// in tiles
#define ABILITY_POPUP_TEXTBOX_WIDTH  16
#define ABILITY_POPUP_TEXTBOX_HEIGHT 8

#define ABILITY_POPUP_TEXTBOX_SLIDE_PX     (8 * ABILITY_POPUP_TEXTBOX_WIDTH + 8)
#define ABILITY_POPUP_TEXTBOX_PLAYER_SHIFT (-248 + ABILITY_POPUP_TEXTBOX_SLIDE_PX)
#define ABILITY_POPUP_FRAMES_TO_SHIFT      4
#define ABILITY_POPUP_PIXELS_PER_FRAME     (ABILITY_POPUP_TEXTBOX_SLIDE_PX / ABILITY_POPUP_FRAMES_TO_SHIFT)
#define ABILITY_POPUP_VERTICAL_SHIFT_PX    16
#define ABILITY_POPUP_OVERALL_Y_SHIFT_PX   8
#define ABILITY_POPUP_PLAYER_Y_SHIFT_PX    5

// continuing from WEATHER_ICON_CELL_ANIM_TAG ...
#define ABILITY_POPUP_ICON_CHAR_TAG      22060
#define ABILITY_POPUP_ICON_PLTT_TAG      22061
#define ABILITY_POPUP_ICON_CELL_TAG      22062
#define ABILITY_POPUP_ICON_CELL_ANIM_TAG 22063

static void AbilityPopup_SlideIn(void *data)
{
    struct ABILITY_POPUP_WORK *work = (struct ABILITY_POPUP_WORK *)data;
    struct BattleSystem *bsys = work->bsys;
    struct BattleStruct *sp = bsys->sp;
    struct Window *window = &bsys->window[1];
    void *bgConfig = bsys->bgConfig;
    void *palette = bsys->palette;
    int side = work->side;

    int abilityPopupPaletteSlot = 12;
    int negative = (side == 0 ? -1 : 1);
    int sideShift = (side == 0 ? ABILITY_POPUP_TEXTBOX_PLAYER_SHIFT : 0);
    int edgeOffset = (side == 0 ? 2 : -4);
    // client and side need some separate adjustments to fit under HP bars in doubles
    int verticalShift = (work->battler == 0 || work->battler == 3) ? -ABILITY_POPUP_VERTICAL_SHIFT_PX : ABILITY_POPUP_VERTICAL_SHIFT_PX;
    int bgYOffset = ABILITY_POPUP_VERTICAL_SHIFT_PX - (side == 0 ? ABILITY_POPUP_PLAYER_Y_SHIFT_PX : 0);

    switch (work->step) {
    case ABILITY_POPUP_INIT_PALETTE:
        PaletteData_LoadNarc(palette, 7 /* battle_sprite */, 363, HEAPID_BATTLE_HEAP, 0 /*PLTTBUF_MAIN_BG*/, 0x20, abilityPopupPaletteSlot * 0x10);
        work->step++;
        break;
    case ABILITY_POPUP_INIT: {
        NNSG2dCharacterData *characterData;

        G2_SetBG0Priority(2);
        SetBgPriority(1, 1);
        SetBgPriority(2, 0);

        sub_0200E398(bgConfig, 2, 1, 0, HEAPID_BATTLE_HEAP);

        // we initially print to the right of the screen where it is not visible at all
        AddWindowParameterized(bgConfig, window, 2, 33 /*x*/, ((side & 1) ? 1 : 8) + (verticalShift + ABILITY_POPUP_VERTICAL_SHIFT_PX + ABILITY_POPUP_OVERALL_Y_SHIFT_PX) / 8 /*y*/, ABILITY_POPUP_TEXTBOX_WIDTH /*width*/, ABILITY_POPUP_TEXTBOX_HEIGHT /*height*/, abilityPopupPaletteSlot, 9 + 1);

        void *characterFile = GfGfxLoader_GetCharData(7, 362, TRUE, (void **)&characterData, HEAPID_BATTLE_HEAP);
        u8 *source = characterData->pRawData;
        u8 *destination = window->pixelBuffer;
        memset(destination, 0, characterData->szByte);
        u32 yOffset = 8;
        for (u32 y = 0; y < ABILITY_POPUP_TEXTBOX_HEIGHT * 8 - yOffset; y++) {
            for (u32 x = 0; x < ABILITY_POPUP_TEXTBOX_WIDTH * 8; x++) {
                u32 sourceY = y + yOffset;
                u32 sourceTile = (sourceY / 8) * ABILITY_POPUP_TEXTBOX_WIDTH + (x / 8);
                u32 sourceByte = sourceTile * 32 + (sourceY % 8) * 4 + (x % 8) / 2;
                u32 destinationTile = (y / 8) * ABILITY_POPUP_TEXTBOX_WIDTH + (x / 8);
                u32 destinationByte = destinationTile * 32 + (y % 8) * 4 + (x % 8) / 2;
                u8 color = (x & 1) ? source[sourceByte] >> 4 : source[sourceByte] & 0xF;

                if (x & 1) {
                    destination[destinationByte] = (destination[destinationByte] & 0x0F) | (color << 4);
                } else {
                    destination[destinationByte] = (destination[destinationByte] & 0xF0) | color;
                }
            }
        }
        sys_FreeMemoryEz(characterFile);

        BattleMessage mp;
        mp.id = BATTLE_MSG_ABILITY_POPUP;
        mp.tag = TAG_NICKNAME_ABILITY;
        mp.param[0] = CreateNicknameTag(sp, work->battler);
        mp.param[1] = work->ability;
        mp.battlerId = work->battler;

        BattleSystem_BufferMessage(bsys, &mp);
        BattleMessage_ExpandPlaceholders(bsys, bsys->msgData, &mp);
        AddTextPrinterParameterizedWithColor(window, 0, bsys->msgBuffer, 3, 0, 0, (15 << 16) | (14 << 8), NULL);
        CopyWindowToVram(window);
        ScheduleBgTilemapBufferTransfer(bgConfig, 2);
        G2_SetBG2Offset(0, bgYOffset);
        work->step++;
    } break;
    case ABILITY_POPUP_SLIDE_IN: {
        if (work->frames++ >= ABILITY_POPUP_FRAMES_TO_SHIFT) {
            struct BattlePokemon *battleMon = &bsys->sp->battlemon[work->battler];
            void *csp = BattleWorkCATS_SYS_PTRGet(bsys);
            void *crp = BattleWorkCATS_RES_PTRGet(bsys);
            void *pfd = BattleWorkPfdGet(bsys);

            if (csp != NULL && crp != NULL && pfd != NULL) {
                OAMSpriteTemplate iconTemplate = {
                    (work->side & 1) ? 240 : 108,
                    ((work->side & 1) ? 24 : 80) + verticalShift + ABILITY_POPUP_OVERALL_Y_SHIFT_PX + (side == 0 ? ABILITY_POPUP_PLAYER_Y_SHIFT_PX : 0),
                    0,
                    0,
                    100,
                    GetMonIconPalette(battleMon->species, battleMon->form_no, battleMon->is_egg),
                    NNS_G2D_VRAM_TYPE_2DMAIN,
                    {
                        ABILITY_POPUP_ICON_CHAR_TAG,
                        ABILITY_POPUP_ICON_PLTT_TAG,
                        ABILITY_POPUP_ICON_CELL_TAG,
                        ABILITY_POPUP_ICON_CELL_ANIM_TAG,
                        CLACT_U_HEADER_DATA_NONE,
                        CLACT_U_HEADER_DATA_NONE,
                    },
                    0,
                    0,
                };
                u32 iconIndex = PokeIconIndexGetByMonsNumber(battleMon->species, battleMon->is_egg, battleMon->form_no);

                OAM_LoadResourcePlttWorkArc(pfd, FADE_MAIN_OBJ, csp, crp, ARC_POKEICON, PokeIconPalArcIndexGet(), FALSE, 3, NNS_G2D_VRAM_TYPE_2DMAIN, ABILITY_POPUP_ICON_PLTT_TAG);
                OAM_LoadResourceCellArc(csp, crp, ARC_POKEICON, 6, FALSE, ABILITY_POPUP_ICON_CELL_TAG);
                OAM_LoadResourceCellAnmArc(csp, crp, ARC_POKEICON, 5, FALSE, ABILITY_POPUP_ICON_CELL_ANIM_TAG);
                work->iconResourcesLoaded = TRUE;
                SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(csp, crp, ARC_POKEICON, iconIndex, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, ABILITY_POPUP_ICON_CHAR_TAG);
                work->icon = OAM_ObjectAdd_S(csp, crp, &iconTemplate);
                if (work->icon != NULL) {
                    Sprite_SetDrawFlag(work->icon->act, FALSE);
                    OAM_ObjectUpdate(work->icon->act);
                }
            }
            work->step++;
            work->frames = 0;
        } else {
            G2_SetBG2Offset(sideShift + negative * (work->frames * ABILITY_POPUP_PIXELS_PER_FRAME) + edgeOffset, bgYOffset);
        }
    } break;
    case ABILITY_POPUP_WAIT: {
        if (work->icon != NULL && work->frames == 0) {
            Sprite_SetDrawFlag(work->icon->act, TRUE);
            OAM_ObjectUpdate(work->icon->act);
        }
        if (work->frames++ > 60) {
            void *crp = BattleWorkCATS_RES_PTRGet(work->bsys);

            if (work->icon != NULL) {
                CATS_ActorPointerDelete_S(work->icon);
                work->icon = NULL;
            }
            if (crp != NULL && work->iconResourcesLoaded) {
                OAM_FreeResourceChar(crp, ABILITY_POPUP_ICON_CHAR_TAG);
                OAM_FreeResourceCell(crp, ABILITY_POPUP_ICON_CELL_TAG);
                OAM_FreeResourceCellAnm(crp, ABILITY_POPUP_ICON_CELL_ANIM_TAG);
                OAM_FreeResourcePltt(crp, ABILITY_POPUP_ICON_PLTT_TAG);
                work->iconResourcesLoaded = FALSE;
            }
            work->frames = 0;
            work->step++;
        }
    } break;
    case ABILITY_POPUP_SLIDE_OUT: {
        if (work->frames++ >= ABILITY_POPUP_FRAMES_TO_SHIFT) {
            work->step++;
            work->frames = 0;
        } else {
            G2_SetBG2Offset(sideShift + negative * ((ABILITY_POPUP_FRAMES_TO_SHIFT - work->frames) * ABILITY_POPUP_PIXELS_PER_FRAME) + edgeOffset, bgYOffset);
        }
    } break;
    case ABILITY_POPUP_DESTROY:
        sub_0200E5D4(window, 0);
        RemoveWindow(window);

        G2_SetBG0Priority(1);
        SetBgPriority(1, 0);
        SetBgPriority(2, 1);
        work->step++;
        break;
    case ABILITY_POPUP_FINISH:
        work->step = ABILITY_POPUP_INIT_PALETTE;
        break;
    }
}

BOOL btl_scr_cmd_116_abilitypopup(void *bw, struct BattleStruct *sp)
{
    if (sp->abilityPopupWork == NULL) {
        IncrementBattleScriptPtr(sp, 1);
        {
            struct ABILITY_POPUP_WORK *work = sys_AllocMemory(HEAPID_BATTLE_HEAP, sizeof(struct ABILITY_POPUP_WORK));
            int battler = GrabClientFromBattleScriptParam(bw, sp, read_battle_script_param(sp));
            int side = IsClientEnemy(bw, battler);
            int ability = read_battle_script_param(sp);

            sp->skill_seq_no -= 3; // reset position to current command so script does not continue

            if (ability == -1) {
                ability = sp->battlemon[battler].ability;
            }

            sp->abilityPopupWork = work;
            work->bsys = bw;
            work->ability = ability;
            work->battler = battler;
            work->side = side;
            work->frames = 0;
            work->step = ABILITY_POPUP_INIT_PALETTE;
            work->icon = NULL;
            work->iconResourcesLoaded = FALSE;
            sp->battle_progress_flag = 1;
        }
    } else if (sp->abilityPopupWork != NULL && sp->abilityPopupWork->step >= ABILITY_POPUP_FINISH) {
        sys_FreeMemoryEz(sp->abilityPopupWork);
        sp->abilityPopupWork = NULL;
        IncrementBattleScriptPtr(sp, 3);
        sp->battle_progress_flag = 0;

#ifdef DEBUG_ABILITY_POPUP
        debug_printf("btl_scr_cmd abilitypopup end\n");
#endif
    } else {
        AbilityPopup_SlideIn(sp->abilityPopupWork);
        sp->battle_progress_flag = 1;
    }

    return FALSE;
}
