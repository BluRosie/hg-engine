#include "types.h"

#include "mega.h"

#include "constants/ability.h"
#include "constants/file.h"
#include "constants/item.h"
#include "constants/moves.h"
#include "constants/species.h"

#include "battle.h"
#include "pokemon.h"
#include "sprite.h"

struct MegaStruct {
    u32 monindex : 12;
    u32 itemindex : 12;
    u32 targetForm : 4;
    u32 baseForm : 4;
};

struct MegaStructMove {
    u32 monindex : 12;
    u32 moveindex : 12;
    u32 targetForm : 4;
    u32 baseForm : 4;
};

#ifdef MEGA_EVOLUTIONS
const struct MegaStruct sMegaTable[] = {
    {
        .monindex = SPECIES_VENUSAUR,
        .itemindex = ITEM_VENUSAURITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_CHARIZARD,
        .itemindex = ITEM_CHARIZARDITE_X,
        .targetForm = 1,
        .baseForm = 0,
    }, // x
    {
        .monindex = SPECIES_CHARIZARD,
        .itemindex = ITEM_CHARIZARDITE_Y,
        .targetForm = 2,
        .baseForm = 0,
    }, // y
    {
        .monindex = SPECIES_BLASTOISE,
        .itemindex = ITEM_BLASTOISINITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_BEEDRILL,
        .itemindex = ITEM_BEEDRILLITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_PIDGEOT,
        .itemindex = ITEM_PIDGEOTITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_RAICHU,
        .itemindex = ITEM_RAICHUNITE_X,
        .targetForm = 2,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_RAICHU,
        .itemindex = ITEM_RAICHUNITE_Y,
        .targetForm = 3,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_CLEFABLE,
        .itemindex = ITEM_CLEFABLITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_ALAKAZAM,
        .itemindex = ITEM_ALAKAZITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_VICTREEBEL,
        .itemindex = ITEM_VICTREEBELITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_SLOWBRO,
        .itemindex = ITEM_SLOWBRONITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_GENGAR,
        .itemindex = ITEM_GENGARITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_KANGASKHAN,
        .itemindex = ITEM_KANGASKHANITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_STARMIE,
        .itemindex = ITEM_STARMINITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_PINSIR,
        .itemindex = ITEM_PINSIRITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_GYARADOS,
        .itemindex = ITEM_GYARADOSITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_AERODACTYL,
        .itemindex = ITEM_AERODACTYLITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_DRAGONITE,
        .itemindex = ITEM_DRAGONINITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_MEWTWO,
        .itemindex = ITEM_MEWTWONITE_X,
        .targetForm = 1,
        .baseForm = 0,
    }, // x
    {
        .monindex = SPECIES_MEWTWO,
        .itemindex = ITEM_MEWTWONITE_Y,
        .targetForm = 2,
        .baseForm = 0,
    }, // y
    {
        .monindex = SPECIES_MEGANIUM,
        .itemindex = ITEM_MEGANIUMITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_FERALIGATR,
        .itemindex = ITEM_FERALIGITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_AMPHAROS,
        .itemindex = ITEM_AMPHAROSITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_STEELIX,
        .itemindex = ITEM_STEELIXITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_SCIZOR,
        .itemindex = ITEM_SCIZORITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_HERACROSS,
        .itemindex = ITEM_HERACRONITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_SKARMORY,
        .itemindex = ITEM_SKARMORITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_HOUNDOOM,
        .itemindex = ITEM_HOUNDOOMINITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_TYRANITAR,
        .itemindex = ITEM_TYRANITARITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_SCEPTILE,
        .itemindex = ITEM_SCEPTILITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_BLAZIKEN,
        .itemindex = ITEM_BLAZIKENITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_SWAMPERT,
        .itemindex = ITEM_SWAMPERTITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_GARDEVOIR,
        .itemindex = ITEM_GARDEVOIRITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_SABLEYE,
        .itemindex = ITEM_SABLENITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_MAWILE,
        .itemindex = ITEM_MAWILITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_AGGRON,
        .itemindex = ITEM_AGGRONITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_MEDICHAM,
        .itemindex = ITEM_MEDICHAMITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_MANECTRIC,
        .itemindex = ITEM_MANECTITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_SHARPEDO,
        .itemindex = ITEM_SHARPEDONITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_CAMERUPT,
        .itemindex = ITEM_CAMERUPTITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_ALTARIA,
        .itemindex = ITEM_ALTARIANITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_BANETTE,
        .itemindex = ITEM_BANETTITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_CHIMECHO,
        .itemindex = ITEM_CHIMECHITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_ABSOL,
        .itemindex = ITEM_ABSOLITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_ABSOL,
        .itemindex = ITEM_ABSOLITE_Z,
        .targetForm = 2,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_GLALIE,
        .itemindex = ITEM_GLALITITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_SALAMENCE,
        .itemindex = ITEM_SALAMENCITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_METAGROSS,
        .itemindex = ITEM_METAGROSSITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_LATIAS,
        .itemindex = ITEM_LATIASITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_LATIOS,
        .itemindex = ITEM_LATIOSITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_LATIOS,
        .itemindex = ITEM_LATIOSITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_STARAPTOR,
        .itemindex = ITEM_STARAPTITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_LOPUNNY,
        .itemindex = ITEM_LOPUNNITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_GARCHOMP,
        .itemindex = ITEM_GARCHOMPITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_GARCHOMP,
        .itemindex = ITEM_GARCHOMPITE_Z,
        .targetForm = 2,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_LUCARIO,
        .itemindex = ITEM_LUCARIONITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_LUCARIO,
        .itemindex = ITEM_LUCARIONITE_Z,
        .targetForm = 2,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_ABOMASNOW,
        .itemindex = ITEM_ABOMASITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_GALLADE,
        .itemindex = ITEM_GALLADITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_FROSLASS,
        .itemindex = ITEM_FROSLASSITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_HEATRAN,
        .itemindex = ITEM_HEATRANITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_DARKRAI,
        .itemindex = ITEM_DARKRANITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_EMBOAR,
        .itemindex = ITEM_EMBOARITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_EXCADRILL,
        .itemindex = ITEM_EXCADRITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_AUDINO,
        .itemindex = ITEM_AUDINITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_SCOLIPEDE,
        .itemindex = ITEM_SCOLIPITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_SCRAFTY,
        .itemindex = ITEM_SCRAFTINITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_EELEKTROSS,
        .itemindex = ITEM_EELEKTROSSITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_CHANDELURE,
        .itemindex = ITEM_CHANDELURITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_GOLURK,
        .itemindex = ITEM_GOLURKITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_CHESNAUGHT,
        .itemindex = ITEM_CHESNAUGHTITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_DELPHOX,
        .itemindex = ITEM_DELPHOXITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_GRENINJA,
        .itemindex = ITEM_GRENINJITE,
        .targetForm = 3,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_GRENINJA,
        .itemindex = ITEM_GRENINJITE,
        .targetForm = 3,
        .baseForm = 1,
    },
    {
        .monindex = SPECIES_PYROAR,
        .itemindex = ITEM_PYROARITE,
        .targetForm = 2,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_PYROAR,
        .itemindex = ITEM_PYROARITE,
        .targetForm = 3,
        .baseForm = 1,
    },
    {
        .monindex = SPECIES_FLOETTE,
        .itemindex = ITEM_FLOETTITE,
        .targetForm = 6,
        .baseForm = 5,
    },
    {
        .monindex = SPECIES_MEOWSTIC,
        .itemindex = ITEM_MEOWSTICITE,
        .targetForm = 2,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_MEOWSTIC,
        .itemindex = ITEM_MEOWSTICITE,
        .targetForm = 3,
        .baseForm = 1,
    },
    {
        .monindex = SPECIES_MALAMAR,
        .itemindex = ITEM_MALAMARITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_BARBARACLE,
        .itemindex = ITEM_BARBARACITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_DRAGALGE,
        .itemindex = ITEM_DRAGALGITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_HAWLUCHA,
        .itemindex = ITEM_HAWLUCHANITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_ZYGARDE,
        .itemindex = ITEM_ZYGARDITE,
        .targetForm = 6,
        .baseForm = 2,
    },
    {
        .monindex = SPECIES_ZYGARDE,
        .itemindex = ITEM_ZYGARDITE,
        .targetForm = 6,
        .baseForm = 4,
    },
    {
        .monindex = SPECIES_DIANCIE,
        .itemindex = ITEM_DIANCITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_CRABOMINABLE,
        .itemindex = ITEM_CRABOMINITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_GOLISOPOD,
        .itemindex = ITEM_GOLISOPITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_DRAMPA,
        .itemindex = ITEM_DRAMPANITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_MAGEARNA,
        .itemindex = ITEM_MAGEARNITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_ZERAORA,
        .itemindex = ITEM_ZERAORITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_FALINKS,
        .itemindex = ITEM_FALINKSITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_SCOVILLAIN,
        .itemindex = ITEM_SCOVILLAINITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_GLIMMORA,
        .itemindex = ITEM_GLIMMORANITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_TATSUGIRI,
        .itemindex = ITEM_TATSUGIRINITE,
        .targetForm = 1,
        .baseForm = 0,
    },
    {
        .monindex = SPECIES_BAXCALIBUR,
        .itemindex = ITEM_BAXCALIBRITE,
        .targetForm = 1,
        .baseForm = 0,
    },
};

const struct MegaStructMove sMegaMoveTable[] = {
    {
        .monindex = SPECIES_RAYQUAZA,
        .moveindex = MOVE_DRAGON_ASCENT,
        .targetForm = 1,
        .baseForm = 0,
    },
};
#endif // MEGA_EVOLUTIONS

static BOOL CheckMegaMoveData(u32 mon, u16 *moves, u32 form);

BOOL CheckCanMega(struct BattleStruct *battle, int client)
{
    u16 mon = battle->battlemon[client].species;
    u16 item = battle->battlemon[client].item;
    u32 form = battle->battlemon[client].form_no;

    if (battle->battlemon[client].canMega) {
        return FALSE;
    }

    if (newBS.SideMega[client]) {
        return FALSE;
    }

    if (battle->playerActions[client][3] != SELECT_FIGHT_COMMAND) {
        return FALSE;
    }

    return CheckMegaData(mon, item, form) || CheckMegaMoveData(mon, battle->battlemon[client].move, form);
}

BOOL IsMegaSpecies(u32 mon, u32 form)
{
#ifdef MEGA_EVOLUTIONS
    u32 i;
    for (i = 0; i < NELEMS(sMegaTable); i++) {
        if (sMegaTable[i].monindex == mon && sMegaTable[i].targetForm == form) {
            return TRUE;
        }
    }
#endif // MEGA_EVOLUTIONS
    return FALSE;
}

BOOL CheckIsMega(struct BI_PARAM *bip)
{
    void *pp;
    u16 form_no;
    u16 mon;

    if (IS_NOT_VALID_EWRAM_POINTER(&bip->bw->opponentData[bip->client_no])) // fix crash on hardware/melonDS
    {
        return FALSE;
    }

    pp = BattleWorkPokemonParamGet(bip->bw, bip->client_no, bip->sel_mons_no);
    mon = GetMonData(pp, MON_DATA_SPECIES, 0);
    form_no = GetMonData(pp, MON_DATA_FORM, 0);

    return IsMegaSpecies(mon, form_no) || IsMegaSpeciesByMove(mon, form_no);
}

BOOL CheckIsPrimalGroudon(struct BI_PARAM *bip)
{
#ifdef PRIMAL_REVERSION
    void *pp;
    u16 form_no;
    u16 mon;

    if (IS_NOT_VALID_EWRAM_POINTER(&bip->bw->opponentData[bip->client_no])) // fix crash on hardware/melonDS
    {
        return FALSE;
    }

    pp = BattleWorkPokemonParamGet(bip->bw, bip->client_no, bip->sel_mons_no);
    mon = GetMonData(pp, MON_DATA_SPECIES, 0);
    form_no = GetMonData(pp, MON_DATA_FORM, 0);
    if (!form_no) {
        return FALSE;
    }

    return mon == SPECIES_GROUDON;
#else
    return FALSE;
#endif // PRIMAL_REVERSION
}

BOOL CheckIsPrimalKyogre(struct BI_PARAM *bip)
{
#ifdef PRIMAL_REVERSION
    void *pp;
    u16 form_no;
    u16 mon;

    if (IS_NOT_VALID_EWRAM_POINTER(&bip->bw->opponentData[bip->client_no])) // fix crash on hardware/melonDS
    {
        return FALSE;
    }

    pp = BattleWorkPokemonParamGet(bip->bw, bip->client_no, bip->sel_mons_no);
    mon = GetMonData(pp, MON_DATA_SPECIES, 0);
    form_no = GetMonData(pp, MON_DATA_FORM, 0);
    if (!form_no) {
        return FALSE;
    }

    return mon == SPECIES_KYOGRE;
#else
    return FALSE;
#endif // PRIMAL_REVERSION
}

BOOL LONG_CALL CheckMegaData(u32 mon, u32 item, u32 form)
{
#ifdef MEGA_EVOLUTIONS
    u32 i;
    for (i = 0; i < NELEMS(sMegaTable); i++) {
        if (sMegaTable[i].monindex == mon && sMegaTable[i].itemindex == item && sMegaTable[i].baseForm == form) {
            return TRUE;
        }
    }
#endif // MEGA_EVOLUTIONS
    return FALSE;
}

u32 LONG_CALL GrabMegaTargetForm(u32 mon, u32 item, u32 form)
{
#ifdef MEGA_EVOLUTIONS
    u32 i;
    for (i = 0; i < NELEMS(sMegaTable); i++) {
        if (sMegaTable[i].monindex == mon && sMegaTable[i].itemindex == item && sMegaTable[i].baseForm == form) {
            return sMegaTable[i].targetForm;
        }
    }
    for (i = 0; i < (s32)NELEMS(sMegaMoveTable); i++) {
        if (sMegaMoveTable[i].monindex == mon) {
            return sMegaMoveTable[i].targetForm;
        }
    }
#endif // MEGA_EVOLUTIONS
    return 0;
}

static BOOL CheckMegaMoveData(u32 mon, u16 *moves, u32 form)
{
#ifdef MEGA_EVOLUTIONS
    int i, j;
    for (i = 0; i < (s32)NELEMS(sMegaMoveTable); i++) {
        if (sMegaMoveTable[i].monindex == mon && sMegaMoveTable[i].baseForm == form) {
            for (j = 0; j < 4; j++) {
                if (sMegaMoveTable[i].moveindex == moves[j]) {
                    return TRUE;
                }
            }
        }
    }
#endif // MEGA_EVOLUTIONS
    return FALSE;
}

BOOL CheckCanDrawMegaButton(struct BI_PARAM *bip)
{
    void *pp;
    u16 item;
    u16 mon;
    u16 form_no;
    u16 moves[4];

#ifndef DEBUG_ENABLE_ALL_GIMMICKS
    if (!CheckScriptFlag(FLAG_MEGA_EVOLUTION_ENABLED)) {
        return FALSE;
    }
#endif

    if (bip->client_no && newBS.playerWantMega) // if client number is not zero but the player has already queued up mega
    {
        return FALSE;
    }

    if (IS_NOT_VALID_EWRAM_POINTER(&bip->bw->opponentData[bip->client_no])) // fix crash on hardware/melonDS
    {
        return FALSE;
    }

    pp = BattleWorkPokemonParamGet(bip->bw, bip->client_no, bip->sel_mons_no);
    item = GetMonData(pp, MON_DATA_HELD_ITEM, NULL);
    mon = GetMonData(pp, MON_DATA_SPECIES, NULL);
    for (int i = 0; i < 4; i++) {
        moves[i] = GetMonData(pp, MON_DATA_MOVE1 + i, NULL);
    }

    form_no = GetMonData(pp, MON_DATA_FORM, 0);
    if (bip->bw->sp->battlemon[bip->client_no].condition2 & STATUS2_TRANSFORM) { // can not draw mega button if form is nonzero.  only base form can mega evolve
        return FALSE;
    }

    return CheckMegaData(mon, item, form_no) || CheckMegaMoveData(mon, moves, form_no);
}

BOOL CheckCanSpeciesMegaEvolveByMove(struct BattleStruct *sp, u32 client)
{
#ifdef MEGA_EVOLUTIONS
    int i, j, species;

    species = sp->battlemon[client].species;
    // move = GetBattlerSelectedMove(sp, client);

    for (i = 0; i < (s32)NELEMS(sMegaMoveTable); i++) {
        if (species == sMegaMoveTable[i].monindex) { // no form check as the form is already overridden by targetForm
            for (j = 0; j < 4; j++) {
                if (sp->battlemon[client].move[j] == sMegaMoveTable[i].moveindex) {
                    return TRUE;
                }
            }
        }
    }
#endif // MEGA_EVOLUTIONS

    return FALSE;
}

BOOL IsMegaSpeciesByMove(u32 species, u32 form)
{
#ifdef MEGA_EVOLUTIONS
    int i;

    for (i = 0; i < (s32)NELEMS(sMegaMoveTable); i++) {
        if (species == sMegaMoveTable[i].monindex && form == sMegaMoveTable[i].targetForm) {
            return TRUE;
        }
    }
#endif // MEGA_EVOLUTIONS

    return FALSE;
}
