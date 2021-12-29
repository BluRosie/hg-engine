#include "../include/types.h"
#include "../include/battle.h"
#include "../include/pokemon.h"
#include "../include/constants/ability.h"
#include "../include/constants/item.h"
#include "../include/constants/species.h"
#include "../include/constants/file.h"

typedef struct
{
    u16 arc_no;
    u16 index_chr;
    u16 index_pal;
    u16 strike_mons;
    u8 form_no;
    u8 dummy[3];
    u32 personal_rnd;
} MON_PIC;

struct FormData
{
    u16 species:11;
    u16 form_no:4;
    u16 need_rev:1;

    u16 file;
};

const struct FormData PokeFormDataTbl[]=
{
    {
        .species = SPECIES_VENUSAUR,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_VENUSAUR,
    },
    {
        .species = SPECIES_CHARIZARD,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_CHARIZARD_X,
    },
    {
        .species = SPECIES_CHARIZARD,
        .form_no = 2,
        .need_rev = 1,
        .file = SPECIES_MEGA_CHARIZARD_Y,
    },
    {
        .species = SPECIES_BLASTOISE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_BLASTOISE,
    },
    {
        .species = SPECIES_BEEDRILL,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_BEEDRILL,
    },
    {
        .species = SPECIES_PIDGEOT,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_PIDGEOT,
    },
    {
        .species = SPECIES_ALAKAZAM,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_ALAKAZAM,
    },
    {
        .species = SPECIES_SLOWBRO,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_SLOWBRO,
    },
    {
        .species = SPECIES_GENGAR,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_GENGAR,
    },
    {
        .species = SPECIES_KANGASKHAN,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_KANGASKHAN,
    },
    {
        .species = SPECIES_PINSIR,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_PINSIR,
    },
    {
        .species = SPECIES_GYARADOS,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_GYARADOS,
    },
    {
        .species = SPECIES_AERODACTYL,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_AERODACTYL,
    },
    {
        .species = SPECIES_MEWTWO,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_MEWTWO_X,
    },
    {
        .species = SPECIES_MEWTWO,
        .form_no = 2,
        .need_rev = 1,
        .file = SPECIES_MEGA_MEWTWO_Y,
    },
    {
        .species = SPECIES_AMPHAROS,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_AMPHAROS,
    },
    {
        .species = SPECIES_STEELIX,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_STEELIX,
    },
    {
        .species = SPECIES_SCIZOR,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_SCIZOR,
    },
    {
        .species = SPECIES_HERACROSS,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_HERACROSS,
    },
    {
        .species = SPECIES_HOUNDOOM,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_HOUNDOOM,
    },
    {
        .species = SPECIES_TYRANITAR,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_TYRANITAR,
    },
    {
        .species = SPECIES_SCEPTILE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_SCEPTILE,
    },
    {
        .species = SPECIES_BLAZIKEN,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_BLAZIKEN,
    },
    {
        .species = SPECIES_SWAMPERT,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_SWAMPERT,
    },
    {
        .species = SPECIES_GARDEVOIR,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_GARDEVOIR,
    },
    {
        .species = SPECIES_SABLEYE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_SABLEYE,
    },
    {
        .species = SPECIES_MAWILE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_MAWILE,
    },
    {
        .species = SPECIES_AGGRON,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_AGGRON,
    },
    {
        .species = SPECIES_MEDICHAM,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_MEDICHAM,
    },
    {
        .species = SPECIES_MANECTRIC,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_MANECTRIC,
    },
    {
        .species = SPECIES_SHARPEDO,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_SHARPEDO,
    },
    {
        .species = SPECIES_CAMERUPT,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_CAMERUPT,
    },
    {
        .species = SPECIES_ALTARIA,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_ALTARIA,
    },
    {
        .species = SPECIES_BANETTE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_BANETTE,
    },
    {
        .species = SPECIES_ABSOL,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_ABSOL,
    },
    {
        .species = SPECIES_GLALIE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_GLALIE,
    },
    {
        .species = SPECIES_SALAMENCE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_SALAMENCE,
    },
    {
        .species = SPECIES_METAGROSS,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_METAGROSS,
    },
    {
        .species = SPECIES_LATIAS,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_LATIAS,
    },
    {
        .species = SPECIES_LATIOS,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_LATIOS,
    },
    /*{
        .species = SPECIES_RAYQUAZA,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_RAYQUAZA,
    },*/
    {
        .species = SPECIES_LOPUNNY,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_LOPUNNY,
    },
    {
        .species = SPECIES_GARCHOMP,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_GARCHOMP,
    },
    {
        .species = SPECIES_LUCARIO,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_LUCARIO,
    },
    {
        .species = SPECIES_ABOMASNOW,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_ABOMASNOW,
    },
    {
        .species = SPECIES_GALLADE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_GALLADE,
    },
    {
        .species = SPECIES_AUDINO,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_AUDINO,
    },
    /*{
        .species = SPECIES_DIANCIE,
        .form_no = 1,
        .need_rev = 1,
        .file = SPECIES_MEGA_DIANCIE,
    }*/
};

extern u32 word_to_store_form_at;

u8 GetOtherFormPic(MON_PIC *picdata, u16 mons_no, u8 dir, u8 col,u8 form_no)
{
    word_to_store_form_at = form_no;

    if (!form_no)
        return FALSE;

    for (u8 i = 0; i < NELEMS(PokeFormDataTbl); i++)
    {
        if (mons_no == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no)
        {
            picdata->arc_no = ARC_MON_PIC;
            picdata->index_chr = (PokeFormDataTbl[i].file) * 6 + dir;
            picdata->index_pal = (PokeFormDataTbl[i].file) * 6 + 4 + col;
            return TRUE;
        }
    }

    return FALSE;
}

int PokeOtherFormMonsNoGet(int mons_no, int form_no)
{
    u8 i;
    switch (mons_no)
    {
    case 386:
        if ((form_no) && (form_no <= 3))
        {
            mons_no = 495 + form_no;
        }
        break;
    case 413:
        if ((form_no) && (form_no <= 2))
        {
            mons_no = 498 + form_no;
        }
        break;

    case 487:
        if ((form_no) && (form_no <= 1))
        {
            mons_no = 500 + form_no;
        }
        break;
    case 492:
        if ((form_no) && (form_no <= 1))
        {
            mons_no = 501 + form_no;
        }
        break;
    case 479:
        if ((form_no) && (form_no <= 5))
        {
            mons_no = 502 + form_no;
        }
        break;

    default:
        break;
    }

    for (i = 0; i < NELEMS(PokeFormDataTbl); i++)
    {
        if (mons_no == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no)
            mons_no = PokeFormDataTbl[i].file;
    }
    return mons_no;
}

u16 GetSpeciesBasedOnForm(int mons_no, int form_no)
{
    for (u8 i = 0; i < NELEMS(PokeFormDataTbl); i++)
    {
        if (mons_no == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no)
            mons_no = PokeFormDataTbl[i].file;
    }
    return mons_no;
}

u32 PokeIconIndexGetByMonsNumber(u32 mons, u32 egg, u32 form_no)
{
    u8 i;
    u32 pat = form_no;

    if (egg == 1)
    {
        if (mons == 490)
        {
            return 502;
        }
        else
        {
            return 501;
        }
    }

    pat = PokeFuseiFormNoCheck(mons, pat);//70438

    if (pat != 0)
    {
        if (mons == 386)
        {
            return (503 + pat - 1);
        }
        if (mons == 201)
        {
            return (507 + pat - 1);
        }
        if (mons == 412)
        {
            return (534 + pat - 1);
        }
        if (mons == 413)
        {
            return (536 + pat - 1);
        }
        if (mons == 422)
        {
            return (538 + pat - 1);
        }
        if (mons == 423)
        {
            return (539 + pat - 1);
        }
        if (mons == 487)
        {
            return (540 + pat - 1);
        }
        if (mons == 492)
        {
            return (541 + pat - 1);
        }
        if (mons == 479)
        {
            return (542 + pat - 1);
        }
    }

    if (mons > 950)
    {
        mons = 0;
    }

    for (i = 0; i < NELEMS(PokeFormDataTbl); i++)
    {
        if (mons == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no)
            return PokeFormDataTbl[i].file + 7;
    }
    return (7 + mons);
}

u16 PokeIconCgxPatternGet(const void *ppp)
{
    u32 monsno;
    u8 i;

    monsno = PokePasoParaGet((void *)ppp, 0xae, NULL);

    switch (monsno)
    {
    case 201:
    case 386:
    case 412:
    case 413:
    case 422:
    case 423:
    case 487:
    case 492:
    case 479:
        return PokePasoParaGet((void *)ppp, 0x70, NULL);

    default:
        for (i = 0; i < NELEMS(PokeFormDataTbl); i++)
        {
            if (monsno == PokeFormDataTbl[i].species)
                return PokePasoParaGet((void *)ppp, 0x70, NULL);
        }
        return 0;
    }
    return 0;
}

u32 PokeIconPalNumGet(u32 mons, u32 form)
{
    u8 i;

    if (form != 0)
    {
        if (mons == 386)
        {
            mons = 496 + form - 1;
        }
        else if (mons == 201)
        {
            mons = 499 + form - 1;
        }
        else if (mons == 412)
        {
            mons = 527 + form - 1;
        }
        else if (mons == 413)
        {
            mons = 529 + form - 1;
        }
        else if (mons == 422)
        {
            mons = 531 + form - 1;
        }
        else if (mons == 423)
        {
            mons = 532 + form - 1;
        }
        else if (mons == 487)
        {
            mons = 533 + form - 1;
        }
        else if (mons == 492)
        {
            mons = 534 + form - 1;
        }
        else if (mons == 479)
        {
            mons = 535 + form - 1;
        }
        for (i = 0; i < NELEMS(PokeFormDataTbl); i++)
        {
            if (mons == PokeFormDataTbl[i].species && form == PokeFormDataTbl[i].form_no)
                return PokeFormDataTbl[i].file;
        }
    }
    return mons;
}

void BattleFormChange(int client, int form_no, void* bw,struct BattleStruct *sp,bool8 SwitchAbility)
{
    //void *pp;
    void *pp2;

    pp2 = BattleWorkPokemonParamGet(bw, client, sp->sel_mons_no[client]);
    SetMonData(pp2,112,&form_no);

    PokeParaCalc(pp2);
    if(SwitchAbility)
    {
        PokeParaSpeabiSet(pp2);
        sp->battlemon[client].ability = GetMonData(pp2, 10, 0);
    }
    

    sp->battlemon[client].atk = GetMonData(pp2, 165, 0);
    sp->battlemon[client].def = GetMonData(pp2, 166, 0);
    sp->battlemon[client].spe = GetMonData(pp2, 167, 0);
    sp->battlemon[client].spatk = GetMonData(pp2, 168, 0);
    sp->battlemon[client].spdef = GetMonData(pp2, 169, 0);
    
    sp->battlemon[client].type1 = GetMonData(pp2, 177, 0);
    sp->battlemon[client].type2 = GetMonData(pp2, 178, 0);
}

bool8 ReverFormChange(void *pp, u16 species, u8 form_no)
{
    u8 i;
    int work = 0;

    for (i = 0; i < NELEMS(PokeFormDataTbl); i++)
    {
        if (species == PokeFormDataTbl[i].species && form_no == PokeFormDataTbl[i].form_no && PokeFormDataTbl[i].need_rev)
        {
            SetMonData(pp,112,&work);
            return TRUE;
        }
    }
    return FALSE;
}

void TryRevertFormChange(struct BattleStruct *sp, void* bw, int client_no)
{
    u16 species = sp->battlemon[client_no].species;
    u8 form_no = sp->battlemon[client_no].form_no;

    void *pp = BattleWorkPokemonParamGet(bw, client_no, sp->sel_mons_no[client_no]);

    if(ReverFormChange(pp,species,form_no))
    {
        PokeParaCalc(pp);
        PokeParaSpeabiSet(pp);
    }
}

void BattleEndRevertFormChange(void *bw)
{
    int i;
    void *pp;
    u16 monsno;
    u16 form;

    newBS.SideMega[0] = 0;
    newBS.SideMega[1] = 0;
    newBS.playerWantMega = 0;
    newBS.PlayerMegaed = 0;

    newBS.CanMega = 0;
    newBS.ChangeBgFlag = 0;
    newBS.MegaIconLight = 0;

    for (i = 0; i < BattleWorkPokeCountGet(bw, 0); i++)
    {
        pp = BattleWorkPokemonParamGet(bw, 0, i);
        monsno = GetMonData(pp, 174, 0);
        form = GetMonData(pp, 112, 0);

        if(ReverFormChange(pp,monsno,form))
        {
            PokeParaCalc(pp);
            PokeParaSpeabiSet(pp);
        }
    }
}

bool8 IsMonShiny(u32 id, u32 rnd)
{
    return ((((id & 0xffff0000) >> 16) ^ (id & 0xffff) ^ ((rnd & 0xffff0000) >> 16) ^ (rnd & 0xffff)) < 16);
}

void GetMonEvoData(struct POKEMON_PARAM *poke, void* pst)
{
    int mons_no = GetMonData(poke, ID_PARA_monsno, NULL);
    u8 form = GetMonData(poke, ID_PARA_form_no, NULL);

    mons_no = PokeOtherFormMonsNoGet(mons_no,form);

    ArchiveDataLoad(pst,0x22,mons_no);
};
