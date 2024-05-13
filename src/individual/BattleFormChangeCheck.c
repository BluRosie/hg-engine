#include "../../include/types.h"
#include "../../include/bag.h"
#include "../../include/battle.h"
#include "../../include/pokemon.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/file.h"
#include "../../include/constants/game.h"
#include "../../include/constants/item.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"

/**
 *  @brief check if a form change needs to happen.  if so, return TRUE and populate *seq_no with the subscript to run
 *
 *  @see BattleFormChange
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param seq_no battle subscript to run
 *  @return TRUE to load the battle subscript in *seq_no and run it; FALSE otherwise
 */
BOOL BattleFormChangeCheck(void *bw, struct BattleStruct *sp, int *seq_no)
{
    int i, form_no;
    BOOL ret = FALSE;

    for (i = 0; i < BattleWorkClientSetMaxGet(bw); i++)
    {
        if (sp->checkOnlySpecifiedTarget) {
            sp->client_work = sp->checkOnlySpecifiedTargetClient;
        } else {
            sp->client_work = sp->turnOrder[i];
        }

        //handle castform
        if ((sp->battlemon[sp->client_work].species == SPECIES_CASTFORM)
         && (sp->battlemon[sp->client_work].hp)
         && (GetBattlerAbility(sp,sp->client_work) == ABILITY_FORECAST))
        {
            if ((CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0)
             && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0))
            {
                // Snow does not affect Castform in SV, since it cannot enter Paldea, Kitakami nor Blueberry Academy there is no way to confirm
                if (((sp->field_condition & (WEATHER_RAIN_ANY | WEATHER_SUNNY_ANY | WEATHER_HAIL_ANY)) == 0)
                 && (sp->battlemon[sp->client_work].form_no != 0))
                {
                    sp->battlemon[sp->client_work].form_no = 0;
                    BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
                    *seq_no = SUB_SEQ_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
                else if ((sp->field_condition & WEATHER_SUNNY_ANY)
                      && (sp->battlemon[sp->client_work].form_no != 1))
                {
                    sp->battlemon[sp->client_work].form_no = 1;
                    BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
                    *seq_no = SUB_SEQ_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
                else if ((sp->field_condition & WEATHER_RAIN_ANY)
                      && (sp->battlemon[sp->client_work].form_no != 2))
                {
                    sp->battlemon[sp->client_work].form_no = 2;
                    BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
                    *seq_no = SUB_SEQ_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
                else if ((sp->field_condition & WEATHER_HAIL_ANY)
                      && (sp->battlemon[sp->client_work].form_no != 3))
                {
                    sp->battlemon[sp->client_work].form_no = 3;
                    BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
                    *seq_no = SUB_SEQ_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
            }
            else if ((sp->battlemon[sp->client_work].form_no != 0))
            {
                sp->battlemon[sp->client_work].form_no = 0;
                BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
                *seq_no = SUB_SEQ_FORM_CHANGE;
                ret = TRUE;
                break;
            }
        }
        // ability is NOT forecast, but is still an alive castform
        else if ((sp->battlemon[sp->client_work].species == SPECIES_CASTFORM)
              && (sp->battlemon[sp->client_work].hp)
              && (sp->battlemon[sp->client_work].form_no != 0))
        {
            sp->battlemon[sp->client_work].form_no = 0;
            BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
            *seq_no = SUB_SEQ_FORM_CHANGE;
            ret = TRUE;
            break;
        }

        // handle cherrim
        if ((sp->battlemon[sp->client_work].species == SPECIES_CHERRIM)
         && (sp->battlemon[sp->client_work].hp))
        {
            if ((CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0)
             && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0))
            {
                // Same with Forecast, unknown interaction with Snow
                if (((sp->field_condition & (WEATHER_RAIN_ANY | WEATHER_SUNNY_ANY | WEATHER_HAIL_ANY)) == 0)
                 && (sp->battlemon[sp->client_work].form_no == 1))
                {
                    sp->battlemon[sp->client_work].form_no = 0;
                    *seq_no = SUB_SEQ_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
                else if ((sp->field_condition & WEATHER_SUNNY_ANY)
                      && (sp->battlemon[sp->client_work].form_no == 0))
                {
                    sp->battlemon[sp->client_work].form_no = 1;
                    *seq_no = SUB_SEQ_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
                else if ((sp->field_condition & WEATHER_RAIN_ANY)
                      && (sp->battlemon[sp->client_work].form_no == 1))
                {
                    sp->battlemon[sp->client_work].form_no = 0;
                    *seq_no = SUB_SEQ_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
                else if ((sp->field_condition & WEATHER_HAIL_ANY)
                      && (sp->battlemon[sp->client_work].form_no == 1))
                {
                    sp->battlemon[sp->client_work].form_no = 0;
                    *seq_no = SUB_SEQ_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
            }
            else
            {
                if (sp->battlemon[sp->client_work].form_no == 1)
                {
                    sp->battlemon[sp->client_work].form_no = 0;
                    *seq_no = SUB_SEQ_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
            }
        }

        // handle arceus
        if ((sp->battlemon[sp->client_work].species == SPECIES_ARCEUS)
         && (sp->battlemon[sp->client_work].hp)
         && (GetBattlerAbility(sp, sp->client_work) == ABILITY_MULTITYPE))
        {
            form_no = GetArceusType(BattleItemDataGet(sp, sp->battlemon[sp->client_work].item, 1));
            if(sp->battlemon[sp->client_work].form_no != form_no)
            {
                sp->battlemon[sp->client_work].form_no = form_no;
                *seq_no = SUB_SEQ_FORM_CHANGE;
                ret = TRUE;
                break;
            }
        }

        // handle Silvally TODO check if this actually works, eventually change to use the memories instead of plates
        if ((sp->battlemon[sp->client_work].species == SPECIES_SILVALLY)
            && (sp->battlemon[sp->client_work].hp)
            && (GetBattlerAbility(sp, sp->client_work) == ABILITY_RKS_SYSTEM))
        {
            form_no = GetArceusType(BattleItemDataGet(sp, sp->battlemon[sp->client_work].item, 1));
            if(sp->battlemon[sp->client_work].form_no != form_no)
            {
                sp->battlemon[sp->client_work].form_no = form_no;
                *seq_no = SUB_SEQ_FORM_CHANGE;
                ret = TRUE;
                break;
            }
        }

        // handle giratina
        if ((sp->battlemon[sp->client_work].species == SPECIES_GIRATINA)
         && (sp->battlemon[sp->client_work].hp)
         && (sp->battlemon[sp->client_work].form_no == 1))
        {
            if ((sp->battlemon[sp->client_work].condition2 & STATUS2_TRANSFORMED)
             || (((BattleWorkBattleStatusFlagGet(bw) & 0x80) == 0) // probably distortion world check
              && (sp->battlemon[sp->client_work].item != ITEM_GRISEOUS_ORB)))
            {
                if(sp->battlemon[sp->client_work].condition2 & STATUS2_TRANSFORMED)
                {
                    struct PartyPokemon *pp;
                    int defence;
                    int work;

                    pp = AllocMonZeroed(5);
                    if (BattleTypeGet(bw) & BATTLE_TYPE_DOUBLE)
                    {
                        defence = sp->playerActions[sp->client_work][1];
                    }
                    else
                    {
                        defence = BATTLER_OPPONENT(sp->client_work);
                    }
                    PokeCopyPPtoPP(BattleWorkPokemonParamGet(bw, defence, sp->sel_mons_no[defence]), pp);
                    work = 0;
                    SetMonData(pp, MON_DATA_HELD_ITEM, &work);
                    work = 0;
                    SetMonData(pp, MON_DATA_FORM, &work);
                    PokeParaGiratinaFormChange(pp);
                    sp->battlemon[sp->client_work].attack =  GetMonData(pp, MON_DATA_ATTACK,          0);
                    sp->battlemon[sp->client_work].defense = GetMonData(pp, MON_DATA_DEFENSE,         0);
                    sp->battlemon[sp->client_work].speed =   GetMonData(pp, MON_DATA_SPEED,           0);
                    sp->battlemon[sp->client_work].spatk =   GetMonData(pp, MON_DATA_SPECIAL_ATTACK,  0);
                    sp->battlemon[sp->client_work].spdef =   GetMonData(pp, MON_DATA_SPECIAL_DEFENSE, 0);
                    sp->battlemon[sp->client_work].ability = GetMonData(pp, MON_DATA_ABILITY,         0);
                    sp->battlemon[sp->client_work].form_no = 0;
                    sp->server_status_flag2 |= SERVER_STATUS_FLAG2_FORM_CHANGE;
                    SCIO_PSPtoPPCopy(bw, sp, sp->client_work);
                    sys_FreeMemoryEz(pp);
                    *seq_no = SUB_SEQ_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
                else
                {
                    *seq_no = SUB_SEQ_GIRATINA_FORM_CHECK;
                    ret = TRUE;
                    break;
                }
            }
        }

        // handle darmanitan zen mode
        if ((sp->battlemon[sp->client_work].species == SPECIES_DARMANITAN)
         && (GetBattlerAbility(sp, sp->client_work) == ABILITY_ZEN_MODE)
         && (sp->battlemon[sp->client_work].hp)
         && (sp->battlemon[sp->client_work].hp <= (s32)(sp->battlemon[sp->client_work].maxhp / 2))
         && (sp->battlemon[sp->client_work].form_no < 2)) // forms 0 and 1
        {
            sp->battlemon[sp->client_work].form_no += 2;
            BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
            *seq_no = SUB_SEQ_FORM_CHANGE;
            ret = TRUE;
            break;
        } else if ((sp->battlemon[sp->client_work].species == SPECIES_DARMANITAN)
         && (sp->battlemon[sp->client_work].hp)
         && (sp->battlemon[sp->client_work].hp > (s32)(sp->battlemon[sp->client_work].maxhp / 2) || (GetBattlerAbility(sp, sp->client_work) != ABILITY_ZEN_MODE))
         && (sp->battlemon[sp->client_work].form_no >= 2)) // forms 2 and 3
        {
            sp->battlemon[sp->client_work].form_no -= 2;
            BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
            *seq_no = SUB_SEQ_FORM_CHANGE;
            ret = TRUE;
            break;
        }

        // fuck illusion
        if (GetBattlerAbility(sp, sp->client_work) == ABILITY_ILLUSION
         && gIllusionStruct.isSideInIllusion & No2Bit(SanitizeClientForTeamAccess(bw, sp->client_work))
         && gIllusionStruct.illusionClient[SanitizeClientForTeamAccess(bw, sp->client_work)] == sp->client_work
         && gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, sp->client_work)] == sp->sel_mons_no[sp->client_work]
         && (sp->oneSelfFlag[sp->client_work].physical_damage || sp->oneSelfFlag[sp->client_work].special_damage))
        {
            SetMonData(Party_GetMonByIndex(BattleWorkPokePartyGet(bw, sp->client_work), gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, sp->client_work)]), MON_DATA_NICKNAME, gIllusionStruct.illusionNameBuf[SanitizeClientForTeamAccess(bw, sp->client_work)]);

            gIllusionStruct.isSideInIllusion &= ~No2Bit(SanitizeClientForTeamAccess(bw, sp->client_work));
            gIllusionStruct.illusionClient[SanitizeClientForTeamAccess(bw, sp->client_work)] = CLIENT_MAX;
            gIllusionStruct.illusionPos[SanitizeClientForTeamAccess(bw, sp->client_work)] = 6;
            for (int k = 0; k < 11; k++)
            {
                sp->battlemon[sp->client_work].nickname[k] = gIllusionStruct.illusionNameBuf[SanitizeClientForTeamAccess(bw, sp->client_work)][k];
                gIllusionStruct.illusionNameBuf[SanitizeClientForTeamAccess(bw, sp->client_work)][k] = 0;
            }
            BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 0);
            *seq_no = SUB_SEQ_HANDLE_ILLUSION_FADED;
            ret = TRUE;
            break;
        }

        // handle meloetta - change to/from pirouette form when using relic song
        if ((sp->battlemon[sp->client_work].species == SPECIES_MELOETTA)
         && (sp->battlemon[sp->client_work].hp)
         && !(sp->waza_status_flag & MOVE_STATUS_FLAG_FAILED)
         && (sp->current_move_index == MOVE_RELIC_SONG && sp->waza_no_old[sp->client_work] == MOVE_RELIC_SONG)
         && (sp->battlemon[sp->client_work].form_no < 2)
         && (sp->relic_song_tracker & No2Bit(sp->client_work)) // MoveCheckDamageNegatingAbilities triggers meloetta's form change if it can happen
         && (sp->multi_hit_count <= 1))
        {
            sp->relic_song_tracker &= ~No2Bit(sp->client_work);
            sp->battlemon[sp->client_work].form_no ^= 1;
            BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
            *seq_no = SUB_SEQ_FORM_CHANGE;
            ret = TRUE;
            break;
        }

        // handle genesect
        if ((sp->battlemon[sp->client_work].species == SPECIES_GENESECT)
         && (sp->battlemon[sp->client_work].hp))
        {
            form_no = GetGenesectForme(sp->battlemon[sp->client_work].item);
            if(sp->battlemon[sp->client_work].form_no != form_no)
            {
                sp->battlemon[sp->client_work].form_no = form_no;
                *seq_no = SUB_SEQ_FORM_CHANGE;
                ret = TRUE;
                break;
            }
        }

        // handle xerneas - force into active mode
        if ((sp->battlemon[sp->client_work].species == SPECIES_XERNEAS)
         && (sp->battlemon[sp->client_work].hp))
        {
            form_no = 1;
            if(sp->battlemon[sp->client_work].form_no != form_no)
            {
                struct PartyPokemon *pp2 = BattleWorkPokemonParamGet(bw, sp->client_work, sp->sel_mons_no[sp->client_work]);
                sp->battlemon[sp->client_work].form_no = form_no;
                *seq_no = SUB_SEQ_FORM_CHANGE;
                SetMonData(pp2, MON_DATA_FORM, &form_no);
                ret = TRUE;
                break;
            }
        }


        // handle Zygarde TODO test
        if ((sp->battlemon[sp->client_work].species == SPECIES_ZYGARDE)
         && (sp->battlemon[sp->client_work].hp)
         && (sp->battlemon[sp->client_work].hp <= (s32)(sp->battlemon[sp->client_work].maxhp / 2))
         && (sp->battlemon[sp->client_work].form_no == 2 || sp->battlemon[sp->client_work].form_no == 3))
        {
            //TODO this has not yet been tested
            sp->battlemon[sp->client_work].form_no += 2;
            BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 0);
            sp->hp_calc_work = sp->battlemon[sp->attack_client].maxhp - sp->battlemon[sp->attack_client].hp;
            struct PartyPokemon *pp2 = BattleWorkPokemonParamGet(bw, sp->client_work, sp->sel_mons_no[sp->client_work]);
            sp->battlemon[sp->client_work].maxhp = GetMonData(pp2, MON_DATA_MAXHP, NULL);
            *seq_no = SUB_SEQ_HANDLE_ZYGARDE_FORM_CHANGE;
            ret = TRUE;
            break;
        }

        // handle Wishiwashi TODO test (also at some point add custom transform text)
        if ((sp->battlemon[sp->client_work].species == SPECIES_WISHIWASHI)
            && (sp->battlemon[sp->client_work].hp)
            && (sp->battlemon[sp->client_work].form_no == 0)
            && (sp->battlemon[sp->client_work].hp > (s32)(sp->battlemon[sp->client_work].maxhp / 4)))
        {
            sp->battlemon[sp->client_work].form_no = 1;
            BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 0);
            *seq_no = SUB_SEQ_FORM_CHANGE;
            ret = TRUE;
            break;
        }
        else if ((sp->battlemon[sp->client_work].species == SPECIES_WISHIWASHI)
         && (sp->battlemon[sp->client_work].hp)
         && (sp->battlemon[sp->client_work].form_no == 1)
         && (sp->battlemon[sp->client_work].hp <= (s32)(sp->battlemon[sp->client_work].maxhp / 4)))
        {
            sp->battlemon[sp->client_work].form_no = 0;
            BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 0);
            *seq_no = SUB_SEQ_FORM_CHANGE;
            ret = TRUE;
            break;
        }
    }

    return ret;
}
