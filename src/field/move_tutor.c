#include "../../include/types.h"
#include "../../include/bag.h"
#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/msgdata.h"
#include "../../include/party_menu.h"
#include "../../include/pokemon.h"
#include "../../include/rtc.h"
#include "../../include/save.h"
#include "../../include/script.h"
#include "../../include/window.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/file.h"
#include "../../include/constants/game.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/weather_numbers.h"
#include "../../include/constants/generated/learnsets.h"

#define MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     0
#define MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    1
#define MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT 2
#define MOVE_TUTOR_NPC_HEADBUTT              3

#define MAX_TUTOR_MOVES_PER_PAGE 6

typedef struct TutorMove {
    u16 move;
    u8 cost;
    u8 tutorNpc;
} TutorMove;

static const TutorMove sTutorMoves[] = {
    { MOVE_DIVE,          40, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     },
    { MOVE_MUD_SLAP,      32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_FURY_CUTTER,   32, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     },
    { MOVE_ICY_WIND,      48, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     },
    { MOVE_ROLLOUT,       32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_THUNDER_PUNCH, 64, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     },
    { MOVE_FIRE_PUNCH,    64, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     },
    { MOVE_SUPERPOWER,    48, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_ICE_PUNCH,     64, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     },
    { MOVE_IRON_HEAD,     40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_AQUA_TAIL,     40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_OMINOUS_WIND,  48, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     },
    { MOVE_GASTRO_ACID,   32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_SNORE,         32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_SPITE,         40, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_AIR_CUTTER,    48, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     },
    { MOVE_HELPING_HAND,  40, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_ENDEAVOR,      64, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_OUTRAGE,       48, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_ANCIENT_POWER, 40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_SYNTHESIS,     40, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_SIGNAL_BEAM,   40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_ZEN_HEADBUTT,  64, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     },
    { MOVE_VACUUM_WAVE,   48, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     },
    { MOVE_EARTH_POWER,   40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_GUNK_SHOT,     32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_TWISTER,       40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_SEED_BOMB,     40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_IRON_DEFENSE,  40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_MAGNET_RISE,   40, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_LAST_RESORT,   48, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_BOUNCE,        32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_TRICK,         48, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     },
    { MOVE_HEAT_WAVE,     48, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_KNOCK_OFF,     40, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     },
    { MOVE_SUCKER_PUNCH,  40, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     },
    { MOVE_SWIFT,         40, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_UPROAR,        48, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_SUPER_FANG,    40, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_PAIN_SPLIT,    64, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_STRING_SHOT,   32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_TAILWIND,      48, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_GRAVITY,       32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_WORRY_SEED,    32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_MAGIC_COAT,    32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_ROLE_PLAY,     48, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_HEAL_BELL,     48, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_LOW_KICK,      32, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_SKY_ATTACK,    64, MOVE_TUTOR_NPC_FRONTIER_TOP_RIGHT    },
    { MOVE_BLOCK,         32, MOVE_TUTOR_NPC_FRONTIER_BOTTOM_RIGHT },
    { MOVE_BUG_BITE,      32, MOVE_TUTOR_NPC_FRONTIER_TOP_LEFT     },
    { MOVE_HEADBUTT,      0,  MOVE_TUTOR_NPC_HEADBUTT              },
};

static u16 GetLearnableTutorMoves(struct PartyPokemon *mon, u32 moveTutorNpc, u16 dest[]);
static BOOL MoveTutor_WaitAndClose(SCRIPTCONTEXT *ctx);

void LONG_CALL ov01_021EDF00(void *menu);
void LONG_CALL **ov01_021F6B20(FieldSystem *fieldSystem);
BOOL LONG_CALL ov01_0220305C(SCRIPTCONTEXT *ctx);
void LONG_CALL *ov01_021EDF78(FieldSystem *fieldSystem, u8 x, u8 y, u8 initCursorPos, u8 cancellable, u16 *ret_p, u32 *msgFmt, struct Window *window, MsgData *msgData);
void LONG_CALL MoveTutorMenu_SetListItem(void *menu, int a1, int a2, int a3);
void LONG_CALL ov01_021F6ABC(FieldSystem *fieldSystem, int a1, int a2, void *a3);
void LONG_CALL SetupNativeScript(SCRIPTCONTEXT *ctx, ScrCmdFunc ptr);
void LONG_CALL BufferString(u32 *messageFormat, u32 fieldno, const String *string, s32 a3, s32 a4, s32 a5);
void LONG_CALL BufferIntegerAsString(u32 *messageFormat, u32 idx, s32 num, u32 numDigits, u8 strconvmode, BOOL whichCharset);

BOOL ScrCmd_TutorMoveGetPrice(SCRIPTCONTEXT *ctx) {
    u16 move = ScriptGetVar(ctx);
    u16 *result = ScriptGetVarPointer(ctx);
    for (u32 i = 0; i < NELEMS(sTutorMoves); i++) {
        if (sTutorMoves[i].move == move) {
            *result = sTutorMoves[i].cost;
            return FALSE;
        }
    }
    GF_ASSERT(FALSE);
    *result = 0;
    return FALSE;
}

static u16 GetLearnableTutorMoves(struct PartyPokemon *mon, u32 moveTutorNpc, u16 dest[]) {
    int i;
    u16 currentMoves[MAX_MON_MOVES];
    for (i = 0; i < MAX_MON_MOVES; i++) {
        currentMoves[i] = GetMonData(mon, MON_DATA_MOVE1 + i, NULL);
    }

    u32 species = GetMonData(mon, MON_DATA_SPECIES, NULL);
    u32 form = GetMonData(mon, MON_DATA_FORM, NULL);
    u32 tutorLearnset[TUTOR_LEARNSETS_BITFIELD_COUNT];

    ArchiveDataLoadOfs(tutorLearnset, ARC_CODE_ADDONS, CODE_ADDON_TUTOR_LEARNSETS, PokeOtherFormMonsNoGet(species, form) * TUTOR_LEARNSETS_BITFIELD_COUNT  * sizeof(u32), TUTOR_LEARNSETS_BITFIELD_COUNT  * sizeof(u32));

    u16 numLearnableMoves = 0;
    for (int j = 0; j < NELEMS(sTutorMoves); j++) {
        BOOL canLearnMove = (tutorLearnset[j / 32] >> (j % 32)) & 1;
        if (canLearnMove && moveTutorNpc == sTutorMoves[j].tutorNpc) {
            for (i = 0; i < MAX_MON_MOVES; i++) {
                if (currentMoves[i] == sTutorMoves[j].move) {
                    break;
                }
            }
            if (i < MAX_MON_MOVES) {
                continue;
            }
            if (dest != NULL) {
                dest[numLearnableMoves] = j;
            }
            numLearnableMoves++;
        }
    }

    return numLearnableMoves;
}

static BOOL MoveTutor_WaitAndClose(SCRIPTCONTEXT *ctx) {
    FieldSystem *fs = ctx->fsys;
    void **menu = ov01_021F6B20(fs);
    u16 *res = GetVarPointer(fs, ctx->data[0]);
    if (*res == 0xEEEE) return FALSE;
    debug_printf("Tutor result=0x%04X\n", *res);  // <-- watch for FFFD here
    ov01_021EDF00(*menu);
    return TRUE;
}

BOOL ScrCmd_MoveTutorChooseMove(SCRIPTCONTEXT *ctx) {
    s32 i;
    BOOL showNextButton;
    u16 resultVarId;
    MsgData *messageData;
    u16 showAsTwoColumns;

    FieldSystem *fieldSystem = ctx->fsys;
    void **unk = ov01_021F6B20(fieldSystem);
    u32 **messageFormat = FieldSysGetAttrAddr(fieldSystem, 16);
    u16 slot = ScriptGetVar(ctx);
    u16 moveTutorNpc = ScriptGetVar(ctx);
    ScriptGetVar(ctx);
    resultVarId = ScriptReadHalfword(ctx);
    ctx->data[0] = resultVarId;
    u16 *learnableMoves = sys_AllocMemory(32, NUM_TUTOR_MOVES * sizeof(u16));

    struct PartyPokemon *mon = Party_GetMonByIndex(SaveData_GetPlayerPartyPtr(fieldSystem->savedata), slot);
    s32 numLearnableMoves = GetLearnableTutorMoves(mon, moveTutorNpc, learnableMoves);

    // handle pagination because for some reason hooking this function breaks vanilla pagination
    u16 *pageNumPtr = GetVarPointer(fieldSystem, 0x8002);
    if (*GetVarPointer(fieldSystem, 0x8003) == 0xFFFD) {
        s32 pageCount = (numLearnableMoves + 5) / 6;
        *pageNumPtr = (*pageNumPtr + 1) % pageCount;
    } else {
        *pageNumPtr = 0;
    }

    s32 numMovesToSkip;
    if (numLearnableMoves <= 7) {
        numMovesToSkip = 0;
        showNextButton = FALSE;
    } else if (numLearnableMoves > *pageNumPtr * 6) {
        numMovesToSkip = *pageNumPtr * MAX_TUTOR_MOVES_PER_PAGE;
        numLearnableMoves -= numMovesToSkip;
        if (numLearnableMoves > 6) {
            numLearnableMoves = MAX_TUTOR_MOVES_PER_PAGE;
        }
        showNextButton = TRUE;
    } else {
        numLearnableMoves = MAX_TUTOR_MOVES_PER_PAGE;
        numMovesToSkip = 0;
        showNextButton = FALSE;
    }

    u16 *result = GetVarPointer(fieldSystem, resultVarId);
    struct Window *window = FieldSysGetAttrAddr(fieldSystem, SCRIPTENV_WINDOW);
    *unk = ov01_021EDF78(fieldSystem, 1, 1, 0, 1, result, *messageFormat, window, ctx->msg_data);
    messageData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, 27, 750, 32);
    String *string = String_New(0x10, 32);
    showAsTwoColumns = (numLearnableMoves + showNextButton >= 4) ? 1 : 0;
    for (i = 0; i < numLearnableMoves; i++) {
        ReadMsgDataIntoString(messageData, sTutorMoves[learnableMoves[i + numMovesToSkip]].move, string);
        BufferString(*messageFormat, 0, string, 2, 1, 2);
        BufferIntegerAsString(*messageFormat, 1, sTutorMoves[learnableMoves[i + numMovesToSkip]].cost, 2, 1, TRUE);
        MoveTutorMenu_SetListItem(*unk, showAsTwoColumns, 0xFF, sTutorMoves[learnableMoves[i + numMovesToSkip]].move);
    }

    String_Delete(string);
    DestroyMsgData(messageData);
    if (showNextButton) {
        MoveTutorMenu_SetListItem(*unk, 2, 0xFF, 0xFFFD);
    }

    MoveTutorMenu_SetListItem(*unk, 3, 0xFF, 0xFFFE);
    ov01_021F6ABC(fieldSystem, 3, 7, GetVarPointer(fieldSystem, ctx->data[0]));
    SetupNativeScript(ctx, ov01_0220305C);

    u16 *unused = GetVarPointer(fieldSystem, ctx->data[0]); // yes, this is needed here to match
    sys_FreeMemoryEz(learnableMoves);

    return TRUE;
}