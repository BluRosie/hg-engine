#include "../include/types.h"
#include "../include/battle.h"
#include "../include/field_pokemon.h"
#include "../include/pokemon.h"
#include "../include/constants/ability.h"
#include "../include/constants/battle_message_constants.h"
#include "../include/constants/battle_script_constants.h"
#include "../include/constants/file.h"
#include "../include/constants/game.h"
#include "../include/constants/item.h"
#include "../include/constants/species.h"

void EncountParamSet(u16 poke, u8 lv, const int inTarget, ENC_FLD_SPA *inFldSpa, struct PartyPokemon *inPokeParam, struct BATTLE_PARAM *outBattleParam)
{
    u8 valid_flg;
    u8 sex, form_no;
    BOOL rc;
    struct PartyPokemon *pp;
    pp = PokemonParam_AllocWork(11);
    PokeParaInit(pp);

//    form_no = (poke & 0xFC00) >> 10;
//    poke &= 0x03FF;

    poke = SPECIES_SKARMORY;

    valid_flg = 1;

    {
        u32 sex_vec;
        sex_vec = PokePersonalParaGet(poke, PERSONAL_GENDER_RATIO);
        switch(sex_vec)
        {
        case MONS_MALE:
        case MONS_FEMALE:
        case MONS_UNKNOWN:
            valid_flg = 0;
        }
    }

    //if (valid_flg)
    //{
    //    if(inFldSpa->egg == 0)
    //    {
    //        if(inFldSpa->ability == ABILITY_CUTE_CHARM)
    //        {
    //            if(gf_rand() % 3 != 0)
    //            {
    //                sex = GetMonData(inPokeParam, ID_PARA_sex, NULL);
    //                if (sex == POKEMON_GENDER_FEMALE)
    //                {
    //                    sex = POKEMON_GENDER_MALE;
    //                }
    //                else if (sex == POKEMON_GENDER_MALE)
    //                {
    //                    sex = POKEMON_GENDER_FEMALE;
    //                }
    //                PokeParaSetSexChr(pp, poke, lv, POW_RND, sex, GetEncountChar(inPokeParam, inFldSpa), 0);
    //                SetMonData(pp, ID_PARA_id_no, &inFldSpa->trainerID);
    //                rc = AddPokemonParam(inTarget, inFldSpa, pp, outBattleParam);
    //                sys_FreeMemoryEz(pp);
    //                return;
    //            }
    //        }
    //    }
    //}

//    SetMonData(pp, ID_PARA_form_no, &form_no);
//    SetMonData(pp, ID_PARA_monsno, &poke);

    PokeParaSetChr(pp, poke, lv, POW_RND, GetEncountChar(inPokeParam, inFldSpa));
    SetMonData(pp, ID_PARA_id_no, &inFldSpa->trainerID);
    rc = AddPokemonParam(inTarget, inFldSpa, pp, outBattleParam);
    sys_FreeMemoryEz(pp);
}
