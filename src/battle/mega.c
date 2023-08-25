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
    u16 itemindex;
};

struct MegaStructMove
{
    u16 monindex;
    u16 moveindex;
};

#ifdef MEGA_EVOLUTIONS
const struct MegaStruct sMegaTable[] =
{
    {
        .monindex = SPECIES_VENUSAUR, 
        .itemindex = ITEM_VENUSAURITE,
    },
    {
        .monindex = SPECIES_CHARIZARD, 
        .itemindex = ITEM_CHARIZARDITE_X,
    }, // x
    {
        .monindex = SPECIES_CHARIZARD, 
        .itemindex = ITEM_CHARIZARDITE_Y,
    }, // y
    {
        .monindex = SPECIES_BLASTOISE, 
        .itemindex = ITEM_BLASTOISINITE,
    },
    {
        .monindex = SPECIES_BEEDRILL, 
        .itemindex = ITEM_BEEDRILLITE,
    },
    {
        .monindex = SPECIES_PIDGEOT, 
        .itemindex = ITEM_PIDGEOTITE,
    },
    {
        .monindex = SPECIES_ALAKAZAM, 
        .itemindex = ITEM_ALAKAZITE,
    },
    {
        .monindex = SPECIES_SLOWBRO, 
        .itemindex = ITEM_SLOWBRONITE,
    },
    {
        .monindex = SPECIES_GENGAR, 
        .itemindex = ITEM_GENGARITE,
    },
    {
        .monindex = SPECIES_KANGASKHAN, 
        .itemindex = ITEM_KANGASKHANITE,
    },
    {
        .monindex = SPECIES_PINSIR, 
        .itemindex = ITEM_PINSIRITE,
    },
    {
        .monindex = SPECIES_GYARADOS, 
        .itemindex = ITEM_GYARADOSITE,
    },
    {
        .monindex = SPECIES_AERODACTYL, 
        .itemindex = ITEM_AERODACTYLITE,
    },
    {
        .monindex = SPECIES_MEWTWO, 
        .itemindex = ITEM_MEWTWONITE_X,
    }, // x
    {
        .monindex = SPECIES_MEWTWO, 
        .itemindex = ITEM_MEWTWONITE_Y,
    }, // y
    {
        .monindex = SPECIES_AMPHAROS, 
        .itemindex = ITEM_AMPHAROSITE,
    },
    {
        .monindex = SPECIES_STEELIX, 
        .itemindex = ITEM_STEELIXITE,
    },
    {
        .monindex = SPECIES_SCIZOR, 
        .itemindex = ITEM_SCIZORITE,
    },
    {
        .monindex = SPECIES_HERACROSS, 
        .itemindex = ITEM_HERACRONITE,
    },
    {
        .monindex = SPECIES_HOUNDOOM, 
        .itemindex = ITEM_HOUNDOOMINITE,
    },
    {
        .monindex = SPECIES_TYRANITAR, 
        .itemindex = ITEM_TYRANITARITE,
    },
    {
        .monindex = SPECIES_SCEPTILE, 
        .itemindex = ITEM_SCEPTILITE,
    },
    {
        .monindex = SPECIES_BLAZIKEN, 
        .itemindex = ITEM_BLAZIKENITE,
    },
    {
        .monindex = SPECIES_SWAMPERT, 
        .itemindex = ITEM_SWAMPERTITE,
    },
    {
        .monindex = SPECIES_GARDEVOIR, 
        .itemindex = ITEM_GARDEVOIRITE,
    },
    {
        .monindex = SPECIES_SABLEYE, 
        .itemindex = ITEM_SABLENITE,
    },
    {
        .monindex = SPECIES_MAWILE, 
        .itemindex = ITEM_MAWILITE,
    },
    {
        .monindex = SPECIES_AGGRON, 
        .itemindex = ITEM_AGGRONITE,
    },
    {
        .monindex = SPECIES_MEDICHAM, 
        .itemindex = ITEM_MEDICHAMITE,
    },
    {
        .monindex = SPECIES_MANECTRIC, 
        .itemindex = ITEM_MANECTITE,
    },
    {
        .monindex = SPECIES_SHARPEDO, 
        .itemindex = ITEM_SHARPEDONITE,
    },
    {
        .monindex = SPECIES_CAMERUPT, 
        .itemindex = ITEM_CAMERUPTITE,
    },
    {
        .monindex = SPECIES_ALTARIA, 
        .itemindex = ITEM_ALTARIANITE,
    },
    {
        .monindex = SPECIES_BANETTE, 
        .itemindex = ITEM_BANETTITE,
    },
    {
        .monindex = SPECIES_ABSOL, 
        .itemindex = ITEM_ABSOLITE,
    },
    {
        .monindex = SPECIES_GLALIE, 
        .itemindex = ITEM_GLALITITE,
    },
    {
        .monindex = SPECIES_SALAMENCE, 
        .itemindex = ITEM_SALAMENCITE,
    },
    {
        .monindex = SPECIES_METAGROSS, 
        .itemindex = ITEM_METAGROSSITE,
    },
    {
        .monindex = SPECIES_LATIAS, 
        .itemindex = ITEM_LATIASITE,
    },
    {
        .monindex = SPECIES_LATIOS, 
        .itemindex = ITEM_LATIOSITE,
    },
    {
        .monindex = SPECIES_LOPUNNY, 
        .itemindex = ITEM_LOPUNNITE,
    },
    {
        .monindex = SPECIES_GARCHOMP, 
        .itemindex = ITEM_GARCHOMPITE,
    },
    {
        .monindex = SPECIES_LUCARIO, 
        .itemindex = ITEM_LUCARIONITE,
    },
    {
        .monindex = SPECIES_ABOMASNOW, 
        .itemindex = ITEM_ABOMASITE,
    },
    {
        .monindex = SPECIES_GALLADE, 
        .itemindex = ITEM_GALLADITE,
    },
    {
        .monindex = SPECIES_AUDINO, 
        .itemindex = ITEM_AUDINITE,
    },
    {
        .monindex = SPECIES_DIANCIE, 
        .itemindex = ITEM_DIANCITE,
    },
};

const struct MegaStructMove sMegaMoveTable[] =
{
    {
        .monindex = SPECIES_RAYQUAZA, 
        .moveindex = MOVE_DRAGON_ASCENT,
    },
};
#endif // MEGA_EVOLUTIONS

static BOOL CheckMegaData(u16 mon, u16 item);

BOOL CheckCanMega(struct BattleStruct *battle, int client)
{
    u16 mon = battle->battlemon[client].species;
    u16 item = battle->battlemon[client].item;

    if(battle->battlemon[client].canMega)
        return FALSE;

    if(newBS.SideMega[client&1])
        return FALSE;

    if(battle->battlemon[client].form_no)
        return FALSE;

    if(battle->client_act_work[client][3] != SELECT_FIGHT_COMMAND)
        return FALSE;

    return CheckMegaData(mon,item);
}

BOOL IsMegaSpecies(u16 mon)
{
#ifdef MEGA_EVOLUTIONS
    u8 i;
    for (i = 0; i < NELEMS(sMegaTable); i++)
    {
        if (sMegaTable[i].monindex == mon)
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

    pp = BattleWorkPokemonParamGet(bip->bw, bip->client_no, bip->sel_mons_no);
    mon = GetMonData(pp, MON_DATA_SPECIES, 0);
    form_no = GetMonData(pp, MON_DATA_FORM, 0);
    if (!form_no)
        return FALSE;

    return IsMegaSpecies(mon) || IsMegaSpeciesByMove(mon);
}

BOOL CheckIsPrimalGroudon(struct BI_PARAM *bip)
{
#ifdef PRIMAL_REVERSION
    void *pp;
    u16 form_no;
    u16 mon;

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

static BOOL CheckMegaData(u16 mon, u16 item)
{
#ifdef MEGA_EVOLUTIONS
    u8 i;
    for (i = 0; i < NELEMS(sMegaTable);i++)
    {
        if (sMegaTable[i].monindex == mon && sMegaTable[i].itemindex == item)
        {
            return TRUE;
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

    pp = BattleWorkPokemonParamGet(bip->bw, bip->client_no, bip->sel_mons_no);
    item = GetMonData(pp, MON_DATA_HELD_ITEM, 0);
    mon = GetMonData(pp, MON_DATA_SPECIES, 0);

    return CheckMegaData(mon, item);
}

BOOL CheckCanMoveMegaEvolve(struct BattleStruct *sp, u32 client)
{
#ifdef MEGA_EVOLUTIONS
    int i = 0, form = 0;
    u16 species, move;

    species = sp->battlemon[client].species;
    form = sp->battlemon[client].form_no;
    move = ST_ServerSelectWazaGet(sp, client);

    if (form != 0 || newBS.PlayerMegaed) return FALSE;

    for (i = 0; i < NELEMS(sMegaMoveTable); i++)
    {
        if (species == sMegaMoveTable[i].monindex && move == sMegaMoveTable[i].moveindex)
        {
            return TRUE;
        }
    }
#endif // MEGA_EVOLUTIONS
    
    return FALSE;
}

BOOL CheckCanSpeciesMegaEvolveByMove(struct BattleStruct *sp, u32 client)
{
#ifdef MEGA_EVOLUTIONS
    int i, species, move;
    
    species = sp->battlemon[client].species;
    move = ST_ServerSelectWazaGet(sp, client);
    
    for (i = 0; i < NELEMS(sMegaMoveTable); i++)
    {
        if (species == sMegaMoveTable[i].monindex && move == sMegaMoveTable[i].moveindex)
        {
            return TRUE;
        }
    }
#endif // MEGA_EVOLUTIONS
    
    return FALSE;
}

BOOL IsMegaSpeciesByMove(u16 species)
{
#ifdef MEGA_EVOLUTIONS
    int i;
    
    for (i = 0; i < NELEMS(sMegaMoveTable); i++)
    {
        if (species == sMegaMoveTable[i].monindex)
        {
            return TRUE;
        }
    }
#endif // MEGA_EVOLUTIONS
    
    return FALSE;
}
