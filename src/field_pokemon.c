#include "../include/types.h"
#include "../include/battle.h"
#include "../include/pokemon.h"
#include "../include/constants/ability.h"
#include "../include/constants/battle_message_constants.h"
#include "../include/constants/battle_script_constants.h"
#include "../include/constants/file.h"
#include "../include/constants/game.h"
#include "../include/constants/item.h"
#include "../include/constants/species.h"

//synchronize field effect
static u8 GetEncountChar(struct PartyPokemon *inPokeParam, const ENC_FLD_SPA *inFldSpa)
{
    u32	type;

    //シンクロの特性によりエンカウントポケモンの性格を同じになりやすくする
    // 先頭のポケモンがタマゴでない
    if(inFldSpa->egg == 0)
    {
        if(inFldSpa->spa == ABILITY_SYNCHRONIZE)
        {	//シンクロ
            if (gf_p_rand(2) == 0)
            {
                //特性適用　確率1/2
                type = (u32)GetMonData(inPokeParam, ID_PARA_personal_rnd, NULL);
                type = type % 25;
                return (u8)type;
            }
        }
    }

    return gf_p_rand(25);	// ランダムで決定

}

//TODO add to hooks; figure out where the function is in rom
void EncountParamSet(u16 poke, u8 lv, const int inTarget, ENC_FLD_SPA *inFldSpa, struct PartyPokemon *inPokeParam, struct BATTLE_PARAM *outBattleParam)
{
    u8 valid_flg;	//特性有効チェックフラグ
    u8 sex, form_no;
    BOOL rc;
    struct PartyPokemon *pp;
    pp = PokemonParam_AllocWork(0);
    PokeParaInit(pp);

//    form_no = (poke & 0xFC00) >> 10;
//    poke &= 0x03FF;

    valid_flg = 1;

    //エンカウントするポケモンの性別ベクトルを調べる
    {
        u32 sex_vec;
        sex_vec = PokePersonalParaGet(poke, PERSONAL_GENDER_RATIO);
        switch(sex_vec)
        {
            case    MONS_MALE:
            case    MONS_FEMALE:
            case    MONS_UNKNOWN:
                valid_flg = 0;
        }
    }

    if (valid_flg)
    {
        //選出したポケモンが性別なし、もしくは、固定の場合は、特性チェックなし
        //先頭ポケモンの特性がメロメロボディのときは異性が出やすくなる
        // 先頭のポケモンがタマゴでない
        if(inFldSpa->egg == 0)
        {
            if(inFldSpa->spa == ABILITY_CUTE_CHARM)
            {
                // 2/3で特性発動
                if(gf_p_rand(3) > 0)
                {
                    sex = GetMonData(inPokeParam, ID_PARA_sex, NULL);//PokeSexGet(inPokeParam);
                    //異性を発生させる
                    if (sex == POKEMON_GENDER_FEMALE)
                    {
                        sex = POKEMON_GENDER_MALE;
                    }
                    else if (sex == POKEMON_GENDER_MALE)
                    {
                        sex = POKEMON_GENDER_FEMALE;
                    }
                    else
                    {
//                        GF_ASSERT(0 && "性別不明");
                    }
                    PokeParaSetSexChr(pp, poke, lv, POW_RND, sex, GetEncountChar(inPokeParam, inFldSpa), 0);
                    SetMonData(pp, ID_PARA_id_no, &inFldSpa->trainerID);
                    rc = AddPokemonParam(inTarget, inFldSpa, pp, outBattleParam);
//                    GF_ASSERT(rc&&"ポケモンの追加に失敗");
                    sys_FreeMemoryEz(pp);
                    return;
                }
            }
        }
    }

//    SetMonData(pp, ID_PARA_form_no, &form_no);

    PokeParaSetChr(pp, poke, 100, POW_RND, GetEncountChar(inPokeParam, inFldSpa));
    SetMonData(pp, ID_PARA_id_no, &inFldSpa->trainerID);
    rc = AddPokemonParam(inTarget, inFldSpa, pp, outBattleParam);
//    GF_ASSERT(rc && "ポケモンの追加に失敗");
    sys_FreeMemoryEz(pp);
}