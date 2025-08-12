#include "../../include/types.h"
#include "../../include/battle.h"
#include "../../include/pokemon.h"
#include "../../include/mega.h"
#include "../../include/sprite.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/item.h"
#include "../../include/constants/file.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"

struct MegaStruct
{
    u16 monindex;
    u16 itemindex:11;
    u16 form:5;
};

struct MegaStructMove
{
    u16 monindex;
    u16 moveindex:11;
    u16 form:5;
};

#ifdef MEGA_EVOLUTIONS
const struct MegaStruct sMegaTable[] =
{
    {
        .monindex = SPECIES_VENUSAUR,
        .itemindex = ITEM_VENUSAURITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_CHARIZARD,
        .itemindex = ITEM_CHARIZARDITE_X,
        .form = 1,
    }, // x
    {
        .monindex = SPECIES_CHARIZARD,
        .itemindex = ITEM_CHARIZARDITE_Y,
        .form = 2,
    }, // y
    {
        .monindex = SPECIES_BLASTOISE,
        .itemindex = ITEM_BLASTOISINITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_BEEDRILL,
        .itemindex = ITEM_BEEDRILLITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_PIDGEOT,
        .itemindex = ITEM_PIDGEOTITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_ALAKAZAM,
        .itemindex = ITEM_ALAKAZITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SLOWBRO,
        .itemindex = ITEM_SLOWBRONITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GENGAR,
        .itemindex = ITEM_GENGARITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_KANGASKHAN,
        .itemindex = ITEM_KANGASKHANITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_PINSIR,
        .itemindex = ITEM_PINSIRITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GYARADOS,
        .itemindex = ITEM_GYARADOSITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_AERODACTYL,
        .itemindex = ITEM_AERODACTYLITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_MEWTWO,
        .itemindex = ITEM_MEWTWONITE_X,
        .form = 1,
    }, // x
    {
        .monindex = SPECIES_MEWTWO,
        .itemindex = ITEM_MEWTWONITE_Y,
        .form = 2,
    }, // y
    {
        .monindex = SPECIES_AMPHAROS,
        .itemindex = ITEM_AMPHAROSITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_STEELIX,
        .itemindex = ITEM_STEELIXITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SCIZOR,
        .itemindex = ITEM_SCIZORITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_HERACROSS,
        .itemindex = ITEM_HERACRONITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_HOUNDOOM,
        .itemindex = ITEM_HOUNDOOMINITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_TYRANITAR,
        .itemindex = ITEM_TYRANITARITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SCEPTILE,
        .itemindex = ITEM_SCEPTILITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_BLAZIKEN,
        .itemindex = ITEM_BLAZIKENITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SWAMPERT,
        .itemindex = ITEM_SWAMPERTITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GARDEVOIR,
        .itemindex = ITEM_GARDEVOIRITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SABLEYE,
        .itemindex = ITEM_SABLENITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_MAWILE,
        .itemindex = ITEM_MAWILITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_AGGRON,
        .itemindex = ITEM_AGGRONITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_MEDICHAM,
        .itemindex = ITEM_MEDICHAMITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_MANECTRIC,
        .itemindex = ITEM_MANECTITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SHARPEDO,
        .itemindex = ITEM_SHARPEDONITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_CAMERUPT,
        .itemindex = ITEM_CAMERUPTITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_ALTARIA,
        .itemindex = ITEM_ALTARIANITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_BANETTE,
        .itemindex = ITEM_BANETTITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_ABSOL,
        .itemindex = ITEM_ABSOLITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GLALIE,
        .itemindex = ITEM_GLALITITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SALAMENCE,
        .itemindex = ITEM_SALAMENCITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_METAGROSS,
        .itemindex = ITEM_METAGROSSITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_LATIAS,
        .itemindex = ITEM_LATIASITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_LATIOS,
        .itemindex = ITEM_LATIOSITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_LOPUNNY,
        .itemindex = ITEM_LOPUNNITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GARCHOMP,
        .itemindex = ITEM_GARCHOMPITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_LUCARIO,
        .itemindex = ITEM_LUCARIONITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_ABOMASNOW,
        .itemindex = ITEM_ABOMASITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GALLADE,
        .itemindex = ITEM_GALLADITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_AUDINO,
        .itemindex = ITEM_AUDINITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_DIANCIE,
        .itemindex = ITEM_DIANCITE,
        .form = 1,
    },
};

const struct MegaStructMove sMegaMoveTable[] =
{
    {
        .monindex = SPECIES_RAYQUAZA,
        .moveindex = MOVE_DRAGON_ASCENT,
        .form = 1,
    },
};
#endif // MEGA_EVOLUTIONS

static BOOL CheckMegaMoveData(u32 mon, u16 *moves);

BOOL CheckCanMega(struct BattleStruct *battle, int client)
{
    u16 mon = battle->battlemon[client].species;
    u16 item = battle->battlemon[client].item;
    u32 form = battle->battlemon[client].form_no;

    if (battle->battlemon[client].canMega)
        return FALSE;

    if (newBS.SideMega[client])
        return FALSE;

    if (form)
        return FALSE;

    if (battle->playerActions[client][3] != SELECT_FIGHT_COMMAND)
        return FALSE;

    return (CheckMegaData(mon, item) || CheckMegaMoveData(mon, battle->battlemon[client].move));
}

BOOL IsMegaSpecies(u32 mon, u32 form)
{
#ifdef MEGA_EVOLUTIONS
    u32 i;
    for (i = 0; i < NELEMS(sMegaTable); i++)
    {
        if (sMegaTable[i].monindex == mon && sMegaTable[i].form == form)
        {
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
    if (!form_no)
        return FALSE;

    return (mon == SPECIES_GROUDON);
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
    if (!form_no)
        return FALSE;

    return (mon == SPECIES_KYOGRE);
#else
    return FALSE;
#endif // PRIMAL_REVERSION
}

BOOL LONG_CALL CheckMegaData(u32 mon, u32 item)
{
#ifdef MEGA_EVOLUTIONS
    u32 i;
    for (i = 0; i < NELEMS(sMegaTable); i++)
    {
        if (sMegaTable[i].monindex == mon && sMegaTable[i].itemindex == item)
        {
            return TRUE;
        }
    }
#endif // MEGA_EVOLUTIONS
    return FALSE;
}

u32 LONG_CALL GrabMegaTargetForm(u32 mon, u32 item)
{
#ifdef MEGA_EVOLUTIONS
    u32 i;
    for (i = 0; i < NELEMS(sMegaTable);i++)
    {
        if (sMegaTable[i].monindex == mon && sMegaTable[i].itemindex == item)
        {
            return sMegaTable[i].form;
        }
    }
    for (i = 0; i < (s32)NELEMS(sMegaMoveTable); i++)
    {
        if (sMegaMoveTable[i].monindex == mon)
        {
            return sMegaMoveTable[i].form;
        }
    }
#endif // MEGA_EVOLUTIONS
    return 0;
}

static BOOL CheckMegaMoveData(u32 mon, u16 *moves)
{
#ifdef MEGA_EVOLUTIONS
    int i, j;
    for (i = 0; i < (s32)NELEMS(sMegaMoveTable); i++)
    {
        if (sMegaMoveTable[i].monindex == mon)
        {
            for (j = 0; j < 4; j++)
            {
                if (sMegaMoveTable[i].moveindex == moves[j])
                    return TRUE;
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
    for (int i = 0; i < 4; i++)
        moves[i] = GetMonData(pp, MON_DATA_MOVE1+i, NULL);

    form_no = GetMonData(pp, MON_DATA_FORM, 0);
    if (form_no || (bip->bw->sp->battlemon[bip->client_no].condition2 & STATUS2_TRANSFORMED)) // can not draw mega button if form is nonzero.  only base form can mega evolve
        return FALSE;

    return (CheckMegaData(mon, item) || CheckMegaMoveData(mon, moves));
}

BOOL CheckCanSpeciesMegaEvolveByMove(struct BattleStruct *sp, u32 client)
{
#ifdef MEGA_EVOLUTIONS
    int i, j, species;

    species = sp->battlemon[client].species;
    //move = GetBattlerSelectedMove(sp, client);

    for (i = 0; i < (s32)NELEMS(sMegaMoveTable); i++)
    {
        if (species == sMegaMoveTable[i].monindex)
        {
            for (j = 0; j < 4; j++)
            {
                if (sp->battlemon[client].move[j] == sMegaMoveTable[i].moveindex)
                    return TRUE;
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

    for (i = 0; i < (s32)NELEMS(sMegaMoveTable); i++)
    {
        if (species == sMegaMoveTable[i].monindex && form == sMegaMoveTable[i].form)
        {
            return TRUE;
        }
    }
#endif // MEGA_EVOLUTIONS

    return FALSE;
}
