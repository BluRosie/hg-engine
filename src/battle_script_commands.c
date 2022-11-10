#include "../include/types.h"
#include "../include/battle.h"
#include "../include/config.h"
#include "../include/debug.h"
#include "../include/pokemon.h"
#include "../include/constants/ability.h"
#include "../include/constants/battle_script_constants.h"
#include "../include/constants/battle_message_constants.h"
#include "../include/constants/hold_item_effects.h"
#include "../include/constants/item.h"
#include "../include/constants/move_effects.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"
#include "../include/constants/weather_numbers.h"


BOOL btl_scr_cmd_E1_reduceweight(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_E2_heavyslamdamagecalc(void *bw, struct BattleStruct *sp);
BOOL btl_scr_cmd_E3_isuserlowerlevel(void *bw, struct BattleStruct *sp);

typedef BOOL (*btl_scr_cmd_func)(void *bw, struct BattleStruct *sp);
#define START_OF_NEW_BTL_SCR_CMDS 0xE1
extern const btl_scr_cmd_func BattleScriptCmdTable[];



const btl_scr_cmd_func NewBattleScriptCmdTable[] =
{
    [0xE1 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_E1_reduceweight,
    [0xE2 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_E2_heavyslamdamagecalc,
    [0xE3 - START_OF_NEW_BTL_SCR_CMDS] = btl_scr_cmd_E3_isuserlowerlevel,
};



BOOL BattleScriptCommandHandler(void *bw, struct BattleStruct *sp)
{
    BOOL ret;
    u32 command;

    do {
        command = sp->SkillSeqWork[sp->skill_seq_no];

        if (command < START_OF_NEW_BTL_SCR_CMDS)
        {
            ret = BattleScriptCmdTable[command](bw, sp);
        }
        else
        {
            ret = NewBattleScriptCmdTable[command - START_OF_NEW_BTL_SCR_CMDS](bw, sp);
        }

    } while ((sp->battle_progress_flag == 0) && ((BattleTypeGet(bw) & BATTLE_TYPE_WIRELESS) == 0));

    sp->battle_progress_flag = 0;

    return ret;
}



BOOL btl_scr_cmd_17_playanimation(void *bw, struct BattleStruct *sp)
{
    int side;
    u16 move;

    IncrementBattleScriptPtr(sp, 1);
    side = read_battle_script_param(sp);

    if (side == 0xFF)
    {
        move = sp->waza_work;
    }
    else
    {
        move = sp->current_move_index;
    }

    if ((((sp->server_status_flag & SERVER_STATUS_FLAG_NO_ANIMATIONS) == 0)
      && (BattleWorkConfigWazaEffectOnOffCheck(bw) == TRUE))
     || (move == MOVE_TRANSFORM || move == MOVE_470)) // mega evolution is animation 470--force it to play regardless of whether or not animations are on
    {
        sp->server_status_flag |= SERVER_STATUS_FLAG_NO_ANIMATIONS;
        SCIO_WazaEffectSet(bw, sp, move);
    }
    if (BattleWorkConfigWazaEffectOnOffCheck(bw) == FALSE)
    {
        SkillSequenceGosub(sp, 1, SUB_SEQ_WAIT_FOR_UNPLAYED_ANIMATION);
    }

    return FALSE;
}


BOOL btl_scr_cmd_18_playanimation2(void *bw, struct BattleStruct *sp)
{
    int side, attack, defence, cli_a, cli_d;
    u16 move;

    IncrementBattleScriptPtr(sp, 1);
    side = read_battle_script_param(sp);
    attack = read_battle_script_param(sp);
    defence = read_battle_script_param(sp);

    if (side == 0xFF)
    {
        move = sp->waza_work;
    }
    else{
        move = sp->current_move_index;
    }

    cli_a = SideClientNoGet(bw, sp, attack);
    cli_d = SideClientNoGet(bw, sp, defence);

    if ((((sp->server_status_flag & SERVER_STATUS_FLAG_NO_ANIMATIONS)==0)
      && (BattleWorkConfigWazaEffectOnOffCheck(bw) == TRUE))
     || (move == MOVE_TRANSFORM || move == MOVE_470))
    {
        sp->server_status_flag |= SERVER_STATUS_FLAG_NO_ANIMATIONS;
        SCIO_WazaEffect2Set(bw, sp, move, cli_a, cli_d);
    }
    if (BattleWorkConfigWazaEffectOnOffCheck(bw) == FALSE)
    {
        SkillSequenceGosub(sp, 1, SUB_SEQ_WAIT_FOR_UNPLAYED_ANIMATION);
    }

    return FALSE;
}


BOOL btl_scr_cmd_24_jumptocurmoveeffectscript(void *bw, struct BattleStruct *sp)
{
    int effect;
    
    IncrementBattleScriptPtr(sp, 1);    
    effect = sp->moveTbl[sp->current_move_index].effect;    
    
    if (GetBattlerAbility(sp, sp->attack_client) == ABILITY_SHEER_FORCE)
    {
        // list taken from bulbapedia article on sheer force and the moves affected.
        switch (effect)
        {
            case MOVE_EFFECT_FLINCH_HIT:
            case MOVE_EFFECT_RAISE_ALL_STATS_HIT:
            case MOVE_EFFECT_BLIZZARD:
            case MOVE_EFFECT_PARALYZE_HIT:
            case MOVE_EFFECT_LOWER_SPEED_HIT:
            case MOVE_EFFECT_RAISE_SP_ATK_HIT:
            case MOVE_EFFECT_CONFUSE_HIT:
            case MOVE_EFFECT_LOWER_DEFENSE_HIT:
            case MOVE_EFFECT_LOWER_SP_DEF_HIT:
            case MOVE_EFFECT_BURN_HIT:
            case MOVE_EFFECT_FLINCH_BURN_HIT:
            case MOVE_EFFECT_RAISE_SPEED_HIT:
            case MOVE_EFFECT_POISON_HIT:
            case MOVE_EFFECT_FREEZE_HIT:
            case MOVE_EFFECT_FLINCH_FREEZE_HIT:
            case MOVE_EFFECT_RAISE_ATTACK_HIT:
            case MOVE_EFFECT_LOWER_ACCURACY_HIT:
            case MOVE_EFFECT_FLINCH_POISON_HIT:
            //case MOVE_EFFECT_SECRET_POWER: // need a different way of doing this i think
            case MOVE_EFFECT_LOWER_SP_ATK_HIT:
            case MOVE_EFFECT_THUNDER:
            case MOVE_EFFECT_FLINCH_PARALYZE_HIT:
            case MOVE_EFFECT_FLINCH_DOUBLE_DAMAGE_FLY_OR_BOUNCE: // removes the double damage flying too
            case MOVE_EFFECT_LOWER_SP_DEF_2_HIT:
            case MOVE_EFFECT_LOWER_ATTACK_HIT:
            //case MOVE_EFFECT_THAW_AND_BURN_HIT: // would not thaw otherwise
            case MOVE_EFFECT_CHATTER: // confuse chance based on volume of cry
            case MOVE_EFFECT_FLINCH_MINIMIZE_DOUBLE_HIT:
            case MOVE_EFFECT_RANDOM_PRIMARY_STATUS_HIT:
                effect = MOVE_EFFECT_HIT;
                sp->battlemon[sp->attack_client].sheer_force_flag = 1;
                break;

            case MOVE_EFFECT_POISON_MULTI_HIT: // twineedle
                effect = MOVE_EFFECT_MULTI_HIT;
                sp->battlemon[sp->attack_client].sheer_force_flag = 1;
                break;

            case MOVE_EFFECT_HIGH_CRITICAL_BURN_HIT: // blaze kick
            case MOVE_EFFECT_HIGH_CRITICAL_POISON_HIT: // cross poison
                effect = MOVE_EFFECT_HIGH_CRITICAL;
                sp->battlemon[sp->attack_client].sheer_force_flag = 1;
                break;

            case MOVE_EFFECT_RECOIL_BURN_HIT: // flare blitz
            case MOVE_EFFECT_RECOIL_PARALYZE_HIT:
                effect = MOVE_EFFECT_RECOIL_HIT;
                sp->battlemon[sp->attack_client].sheer_force_flag = 1;
                break;

            default:
                sp->battlemon[sp->attack_client].sheer_force_flag = 0;
                break;
        }
    }
    
    JumpToMoveEffectScript(sp, 30, effect);
    
    return FALSE;
};


BOOL btl_scr_cmd_27_shouldgetexp(void *bw, struct BattleStruct *sp)
{
    int adrs;
    u32 fight_type = BattleTypeGet(bw);
    //CLIENT_PARAM *cp = BattleWorkClientParamGet(bw, sp->fainting_client);

    IncrementBattleScriptPtr(sp,1);

    adrs = read_battle_script_param(sp);

    if((/*cp->client_type*/sp->fainting_client & 1) && ((fight_type & BATTLE_TYPE_NO_EXPERIENCE) == 0))
    {
#if EXPERIENCE_FORMULA_GEN < 5 || EXPERIENCE_FORMULA_GEN == 6 // flat exp rate
        int i;
        int total_exp;
        int mons_getting_exp = 0;
        int mons_getting_exp_from_item = 0;
        u16 item;
        u32 totalexp;
        int eqp;
        struct PartyPokemon *pp;

        for (i = 0; i < BattleWorkPokePartyGet(bw, 0)->PokeCount; i++)
        {
            pp = BattleWorkPokemonParamGet(bw, 0, i);
            if ((GetMonData(pp, ID_PARA_monsno, NULL)) && (GetMonData(pp, ID_PARA_hp, NULL)))
            {
                if (sp->obtained_exp_right_flag[(sp->fainting_client >> 1) & 1] & No2Bit(i))
                {
                    mons_getting_exp++;
                }

                item = GetMonData(pp, ID_PARA_item, NULL);
                eqp = BattleItemDataGet(sp, item, 1);

                if (eqp == HOLD_EFFECT_EXP_SHARE)
                {
                    mons_getting_exp_from_item++;
                }
            }
        }
        // multiply by 255/390 (map audino to 255) to not get massively inflated experience rates
        totalexp = 255 * GetSpeciesBaseExp(sp->battlemon[sp->fainting_client].species, sp->battlemon[sp->fainting_client].form_no) / 390;//PokePersonalParaGet(sp->battlemon[sp->fainting_client].species, PERSONAL_EXP_YIELD);
        totalexp = (totalexp * sp->battlemon[sp->fainting_client].level) / 7;
        if (mons_getting_exp_from_item)
        {
            sp->obtained_exp = (totalexp / 2) / mons_getting_exp;
            if (sp->obtained_exp == 0)
            {
                sp->obtained_exp = 1;
            }
            sp->exp_share_obtained_exp = (totalexp / 2) / mons_getting_exp_from_item;
            if (sp->exp_share_obtained_exp == 0)
            {
                sp->exp_share_obtained_exp = 1;
            }
        }
        else
        {
            sp->obtained_exp = totalexp / mons_getting_exp;
            if (sp->obtained_exp == 0)
            {
                sp->obtained_exp = 1;
            }
            sp->exp_share_obtained_exp = 0;
        }
#endif
    }
    else
    {
        IncrementBattleScriptPtr(sp, adrs);
    }

    return FALSE;
}

// ov12_02245898 handles the experience calculator with all the other boosts.  should just do the entire exp calc there instead
// case 0 appears to handle it.  can i just branch out of that?  i better be able to

struct EXP_CALCULATOR
{
    /* 0x00 */ void *bw;
    /* 0x04 */ struct BattleStruct *sp;
    /* 0x08 */ u8 unk8[0x28-0x8];
    /* 0x28 */ u32 seq_no;
    /* 0x2C */ u32 ballID;
    /* 0x30 */ u32 work[8];
};

// forgot i could do this so fucking nice
void Task_DistributeExp_Extend(void *arg0, void *work)
{
#if EXPERIENCE_FORMULA_GEN == 5 || EXPERIENCE_FORMULA_GEN > 6 // scaled exp rate
    int sel_mons_no;
    struct EXP_CALCULATOR *expcalc = work;
    struct PartyPokemon *pp;
    int client_no;
    int exp_client_no;
    int item;
    int eqp;
    u32 mons_getting_exp_from_item = 0;
    u32 mons_getting_exp = 0;
    u32 totalexp = 0;

    client_no = (expcalc->sp->fainting_client) >> 1 & 1;
    exp_client_no = 0;

    // count how many pokémon are getting experience
    for (int i = 0; i < BattleWorkPokePartyGet(expcalc->bw, 0)->PokeCount; i++)
    {
        pp = BattleWorkPokemonParamGet(expcalc->bw, exp_client_no, i);
        if ((GetMonData(pp, ID_PARA_monsno, NULL)) && (GetMonData(pp, ID_PARA_hp, NULL)))
        {
            if (expcalc->sp->obtained_exp_right_flag[(expcalc->sp->fainting_client >> 1) & 1] & No2Bit(i))
            {
                mons_getting_exp++;
            }

            item = GetMonData(pp, ID_PARA_item, NULL);
            eqp = BattleItemDataGet(expcalc->sp, item, 1);

            if (eqp == HOLD_EFFECT_EXP_SHARE)
            {
                mons_getting_exp_from_item++;
            }
        }
    }

    // grab the pokémon that is actually gaining the experience
    for (sel_mons_no = expcalc->work[6]; sel_mons_no < BattleWorkPokeCountGet(expcalc->bw, exp_client_no); sel_mons_no++)
    {
        pp = BattleWorkPokemonParamGet(expcalc->bw, exp_client_no, sel_mons_no);
        item = GetMonData(pp, ID_PARA_item, NULL);
        eqp = GetItemData(item, ITEM_PARAM_HOLD_EFFECT, 5);
        if ((eqp == HOLD_EFFECT_EXP_SHARE) || (expcalc->sp->obtained_exp_right_flag[client_no] & No2Bit(sel_mons_no)))
        {
            break;
        }
    }

    // actually calculate the experience
    u32 Lp = GetMonData(pp, ID_PARA_level, NULL); // this should contain the level of the person getting experience
#ifdef DEBUG_SCALED_EXPERIENCE
    *((u32 *)(0x23DF000)) = Lp;
#endif
    u32 level = expcalc->sp->battlemon[expcalc->sp->fainting_client].level + 1; // need to calculate exp individually for each mon it seems
#ifdef DEBUG_SCALED_EXPERIENCE
    *((u32 *)(0x23DF004)) = level;
#endif

    totalexp = GetSpeciesBaseExp(expcalc->sp->battlemon[expcalc->sp->fainting_client].species, expcalc->sp->battlemon[expcalc->sp->fainting_client].form_no); // base experience
#ifdef DEBUG_SCALED_EXPERIENCE
    *((u32 *)(0x23DF008)) = totalexp;
#endif
    totalexp = (totalexp * level) / 5;

    u32 top = (2*level + 10) * (2*level + 10); // tack on the square root later
    u32 bottom = (level + Lp + 10) * (level + Lp + 10) * sqrt(level + Lp + 10);

    totalexp *= top;
    totalexp /= bottom;
    totalexp = totalexp * sqrt(2*level + 10); // square root tacked on

#ifdef DEBUG_SCALED_EXPERIENCE
    *((u32 *)(0x23DF00C)) = totalexp;
#endif

    if (mons_getting_exp_from_item)
    {
        expcalc->sp->obtained_exp = (totalexp / 2) / mons_getting_exp;
        if (expcalc->sp->obtained_exp == 0)
        {
            expcalc->sp->obtained_exp = 1;
        }
        expcalc->sp->exp_share_obtained_exp = (totalexp / 2) / mons_getting_exp_from_item;
        if (expcalc->sp->exp_share_obtained_exp == 0)
        {
            expcalc->sp->exp_share_obtained_exp = 1;
        }
    }
    else
    {
        expcalc->sp->obtained_exp = totalexp / mons_getting_exp;
        if (expcalc->sp->obtained_exp == 0)
        {
            expcalc->sp->obtained_exp = 1;
        }
        expcalc->sp->exp_share_obtained_exp = 0;
    }
#endif
    Task_DistributeExp(arg0, work);
}







BOOL btl_scr_cmd_33_statbuffchange(void *bw, struct BattleStruct *sp)
{
    int address1;
    int address2;
    int address3;
    int stattochange;
    int statchange;
    int flag;
    struct BattlePokemon *battlemon = &sp->battlemon[sp->state_client];

    IncrementBattleScriptPtr(sp, 1);

    address1 = read_battle_script_param(sp);
    address2 = read_battle_script_param(sp);
    address3 = read_battle_script_param(sp);

    flag = 0;

    sp->server_status_flag &= ~(SERVER_STATUS_FLAG_STAT_CHANGE_NEGATIVE);

        //2 steps down
    if (sp->addeffect_param >= ADD_STATE_ATTACK_DOWN_2)
    {
        stattochange = sp->addeffect_param - ADD_STATE_ATTACK_DOWN_2;
        statchange = -2;
        sp->temp_work = STATUS_EFF_DOWN;
    }
        //2 steps up
    else if (sp->addeffect_param >= ADD_STATE_ATTACK_UP_2)
    {
        stattochange = sp->addeffect_param - ADD_STATE_ATTACK_UP_2;
        statchange = 2;
        sp->temp_work = STATUS_EFF_UP;
    }
        //1 step down
    else if (sp->addeffect_param >= ADD_STATE_ATTACK_DOWN)
    {
        stattochange = sp->addeffect_param - ADD_STATE_ATTACK_DOWN;
        statchange = -1;
        sp->temp_work = STATUS_EFF_DOWN;
    }
        //1 step up
    else
    {
        stattochange = sp->addeffect_param - ADD_STATE_ATTACK_UP;
        statchange = 1;
        sp->temp_work = STATUS_EFF_UP;
    }

    if (battlemon->ability == ABILITY_CONTRARY)
    {
        //statchange
        statchange = -statchange;

        //sp->temp_work
        if(sp->temp_work == STATUS_EFF_UP)
        {
            sp->temp_work= STATUS_EFF_DOWN;
        }
        else if(sp->temp_work == STATUS_EFF_DOWN)
        {
            sp->temp_work= STATUS_EFF_UP;
        }
    }
    
    // try and handle defiant lol
    if (GetBattlerAbility(sp, sp->state_client) == ABILITY_DEFIANT
     && sp->oneSelfFlag[sp->state_client].defiant_flag == 0
     && statchange < 0
     && sp->state_client != sp->attack_client // can't raise own stats
     && sp->state_client != BattleWorkPartnerClientNoGet(sp, sp->attack_client) // can't raise partner's stats
     && ((sp->waza_status_flag & WAZA_STATUS_FLAG_NO_OUT) == 0)
     && ((sp->server_status_flag & SERVER_STATUS_FLAG_x20) == 0)
     && ((sp->server_status_flag2 & SERVER_STATUS2_FLAG_x10) == 0))
    {
        sp->oneSelfFlag[sp->state_client].defiant_flag = 1;
    }
    else
    {
        sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
    }


    if (statchange > 0)
    {
        if (battlemon->states[STAT_ATTACK + stattochange] == 12)
        {
            sp->server_status_flag |= SERVER_STATUS_FLAG_STAT_CHANGE_NEGATIVE;
            
            if ((sp->addeffect_type == ADD_EFFECT_INDIRECT)
             || (sp->addeffect_type == ADD_EFFECT_ABILITY))
            {
                IncrementBattleScriptPtr(sp, address2);
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                return FALSE;
            }
            else
            {
                sp->mp.msg_id = BATTLE_MSG_STAT_WONT_GO_HIGHER;
                sp->mp.msg_tag = TAG_NICK_STAT;
                sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
                sp->mp.msg_para[1] = STAT_ATTACK + stattochange;
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                IncrementBattleScriptPtr(sp, address1);
                return FALSE;
            }
        }
        else
        {
            if (sp->addeffect_type == ADD_EFFECT_ABILITY)
            {
                switch (statchange)
                {
                case 1:
                    sp->mp.msg_id = BATTLE_MSG_ABILITY_RAISED_STAT;
                    break;
                case 2:
                    sp->mp.msg_id = BATTLE_MSG_ABILITY_RAISED_STAT_SHARPLY;
                    break;
                default:
                    sp->mp.msg_id = BATTLE_MSG_ABILITY_RAISED_STAT_DRASTICALLY;
                    break;
                }
                sp->mp.msg_tag = TAG_NICK_ABILITY_STAT;
                sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
                sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                sp->mp.msg_para[2] = STAT_ATTACK + stattochange;
            }
            else if (sp->addeffect_type == ADD_EFFECT_HELD_ITEM)
            {
                sp->mp.msg_id = BATTLE_MSG_ITEM_RAISED_STAT;
                sp->mp.msg_tag = TAG_NICK_ITEM_STAT;
                sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
                sp->mp.msg_para[1] = sp->item_work;
                sp->mp.msg_para[2] = STAT_ATTACK + stattochange;
            }
            else
            {
                switch (statchange)
                {
                case 1:
                    sp->mp.msg_id = BATTLE_MSG_STAT_RAISED;
                    break;
                case 2:
                    sp->mp.msg_id = BATTLE_MSG_STAT_RAISED_SHARPLY;
                    break;
                default:
                    sp->mp.msg_id = BATTLE_MSG_STAT_RAISED_DRASTICALLY;
                    break;
                }
                sp->mp.msg_tag = TAG_NICK_STAT;
                sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
                sp->mp.msg_para[1] = STAT_ATTACK + stattochange;
            }
            battlemon->states[STAT_ATTACK + stattochange] += statchange;
            if (battlemon->states[STAT_ATTACK + stattochange] > 12)
            {
                battlemon->states[STAT_ATTACK + stattochange] = 12;
            }
        }
    }
    else
    {
        if ((sp->addeffect_flag & ADD_STATUS_NO_ABILITY) == 0)
        {
            if (sp->attack_client != sp->state_client)
            {
                if (sp->scw[IsClientEnemy(bw,sp->state_client)].mist_count)
                {
                    sp->mp.msg_id = BATTLE_MSG_PROTECTED_BY_MIST;
                    sp->mp.msg_tag = TAG_NICK;
                    sp->mp.msg_para[0] = TagNickParaMake(sp,sp->state_client);
                    flag = 1;
                }
                else if ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_CLEAR_BODY) == TRUE)
                      || (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_WHITE_SMOKE) == TRUE)
                      || (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_FULL_METAL_BODY) == TRUE)
                      || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_FLOWER_VEIL) == TRUE) &&
                            (sp->battlemon[sp->attack_client].type1 == TYPE_GRASS || sp->battlemon[sp->attack_client].type2 == TYPE_GRASS)))
                    {
                    if (sp->addeffect_type == ADD_EFFECT_ABILITY)
                    {
                        sp->mp.msg_id = BATTLE_MSG_ABILITY_SUPPRESSES_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICK_ABILITY_NICK_ABILITY;
                        sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
                        sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                        sp->mp.msg_para[2] = TagNickParaMake(sp, sp->attack_client);
                        sp->mp.msg_para[3] = sp->battlemon[sp->attack_client].ability;
                    }
                    else
                    {
                        sp->mp.msg_id = BATTLE_MSG_PREVENTS_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICK_ABILITY;
                        sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
                        sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                    }
                    flag = 1;
                }
                else if (((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_KEEN_EYE) == TRUE)
                       && ((STAT_ATTACK + stattochange) == STAT_ACCURACY))
                      || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_HYPER_CUTTER) == TRUE)
                       && ((STAT_ATTACK + stattochange) == STAT_ATTACK))
                       || ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_BIG_PECKS) == TRUE)
                       && ((STAT_ATTACK + stattochange) == STAT_DEFENSE)))
                    {
                    if (sp->addeffect_type == ADD_EFFECT_ABILITY)
                    {
                        sp->mp.msg_id = BATTLE_MSG_ABILITY_SUPPRESSES_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICK_ABILITY_NICK_ABILITY;
                        sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
                        sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                        sp->mp.msg_para[2] = TagNickParaMake(sp, sp->attack_client);
                        sp->mp.msg_para[3] = sp->battlemon[sp->attack_client].ability;
                    }
                    else
                    {
                        sp->mp.msg_id = BATTLE_MSG_ITEM_PREVENTS_STAT_LOSS;
                        sp->mp.msg_tag = TAG_NICK_ABILITY_STAT;
                        sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
                        sp->mp.msg_para[1] = sp->battlemon[sp->state_client].ability;
                        sp->mp.msg_para[2] = STAT_ATTACK + stattochange;
                    }
                    flag = 1;
                }
                else if (battlemon->states[STAT_ATTACK + stattochange] == 0)
                {
                    sp->server_status_flag |= SERVER_STATUS_FLAG_STAT_CHANGE_NEGATIVE;
                    if ((sp->addeffect_type == ADD_EFFECT_INDIRECT)
                     || (sp->addeffect_type == ADD_EFFECT_ABILITY))
                    {
                        sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                        IncrementBattleScriptPtr(sp, address2);
                        return FALSE;
                    }
                    else
                    {
                        sp->mp.msg_id = BATTLE_MSG_STAT_WONT_GO_LOWER;
                        sp->mp.msg_tag = TAG_NICK_STAT;
                        sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
                        sp->mp.msg_para[1] = STAT_ATTACK + stattochange;
                        sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                        IncrementBattleScriptPtr(sp, address1);
                        return FALSE;
                    }
                }   
                else if ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->state_client, ABILITY_SHIELD_DUST) == TRUE)
                      && (sp->addeffect_type == ADD_EFFECT_INDIRECT))
                {
                    flag = 1;
                }
                else if (sp->battlemon[sp->state_client].condition2 & STATUS2_FLAG_SUBSTITUTE)
                {
                    flag = 2;
                }
            }
            else if (battlemon->states[STAT_ATTACK + stattochange] == 0)
            {
                sp->server_status_flag |= SERVER_STATUS_FLAG_STAT_CHANGE_NEGATIVE;
                if ((sp->addeffect_type == ADD_EFFECT_INDIRECT)
                 || (sp->addeffect_type == ADD_EFFECT_ABILITY))
                {
                    sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                    IncrementBattleScriptPtr(sp, address2);
                    return FALSE;
                }
                else
                {
                    sp->mp.msg_id = BATTLE_MSG_STAT_WONT_GO_LOWER;
                    sp->mp.msg_tag = TAG_NICK_STAT;
                    sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
                    sp->mp.msg_para[1] = STAT_ATTACK + stattochange;
                    sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                    IncrementBattleScriptPtr(sp, address1);
                    return FALSE;
                }
            }
            if ((flag == 2) && (sp->addeffect_type == ADD_STATUS_DIRECT))
            {
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                IncrementBattleScriptPtr(sp, address3);
                return FALSE;
            }
            else if ((flag) && (sp->addeffect_type == ADD_EFFECT_INDIRECT))
            {
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                IncrementBattleScriptPtr(sp, address2);
                return FALSE;
            }
            else if (flag)
            {
                sp->oneSelfFlag[sp->state_client].defiant_flag = 0;
                IncrementBattleScriptPtr(sp, address1);
                return FALSE;
            }
        }
        if (sp->addeffect_type == ADD_EFFECT_ABILITY && sp->client_work == sp->state_client)
        {
            sp->mp.msg_id = BATTLE_MSG_ABILITY_LOWERED_ITS_OWN_STAT;
            sp->mp.msg_tag = TAG_NICK_ABILITY_STAT;
            sp->mp.msg_para[0] = TagNickParaMake(sp, sp->client_work);
            sp->mp.msg_para[1] = sp->battlemon[sp->client_work].ability;
            sp->mp.msg_para[2] = STAT_ATTACK + stattochange;
        }
        else if (sp->addeffect_type == ADD_EFFECT_ABILITY)
        {
            sp->mp.msg_id = BATTLE_MSG_ATK_ABILITY_CUTS_MON_STAT;
            sp->mp.msg_tag = TAG_NICK_ABILITY_NICK_STAT;
            sp->mp.msg_para[0] = TagNickParaMake(sp, sp->attack_client);
            sp->mp.msg_para[1] = sp->battlemon[sp->attack_client].ability;
            sp->mp.msg_para[2] = TagNickParaMake(sp, sp->state_client);
            sp->mp.msg_para[3] = STAT_ATTACK + stattochange;
        }
        // certain abilities fuck it up.  this fixes them
        else if (sp->addeffect_type == ADD_EFFECT_PRINT_WORK_ABILITY)
        {
            sp->mp.msg_id = BATTLE_MSG_ATK_ABILITY_CUTS_MON_STAT;
            sp->mp.msg_tag = TAG_NICK_ABILITY_NICK_STAT;
            sp->mp.msg_para[0] = TagNickParaMake(sp, sp->client_work);
            sp->mp.msg_para[1] = sp->battlemon[sp->client_work].ability;
            sp->mp.msg_para[2] = TagNickParaMake(sp, sp->state_client);
            sp->mp.msg_para[3] = STAT_ATTACK+stattochange;
        }
        else
        {
            sp->mp.msg_id = ((statchange == -1) ? BATTLE_MSG_STAT_FELL : BATTLE_MSG_STAT_HARSHLY_FELL);
            sp->mp.msg_tag = TAG_NICK_STAT;
            sp->mp.msg_para[0] = TagNickParaMake(sp, sp->state_client);
            sp->mp.msg_para[1] = STAT_ATTACK + stattochange;
        }
        
        battlemon->states[STAT_ATTACK + stattochange] += statchange;
        if (battlemon->states[STAT_ATTACK + stattochange] < 0)
        {
            battlemon->states[STAT_ATTACK + stattochange] = 0;
        }
    }

    return 0;
}


BOOL btl_scr_cmd_54_ohko_move_handle(void *bw, struct BattleStruct *sp)
{
    u16 hit;
    IncrementBattleScriptPtr(sp,1);

    sp->server_status_flag |= SERVER_STATUS_FLAG_OTHER_ACCURACY_CALC;

    if (MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_STURDY) == TRUE)
    {
        sp->waza_status_flag |= MOVE_STATUS_FLAG_NO_OHKO;
    }
    else{
        if(((sp->battlemon[sp->defence_client].effect_of_moves & MOVE_EFFECT_LOCK_ON) == 0)
            && (GetBattlerAbility(sp,sp->attack_client) != ABILITY_NO_GUARD)
            && (GetBattlerAbility(sp,sp->defence_client) != ABILITY_NO_GUARD))
        {
            hit = sp->moveTbl[sp->current_move_index].accuracy + (sp->battlemon[sp->attack_client].level - sp->battlemon[sp->defence_client].level);
            if (((BattleRand(bw) % 100) < hit)
             && (sp->battlemon[sp->attack_client].level >= sp->battlemon[sp->defence_client].level))
            {
                hit = 1;
            }
            else
            {
                hit = 0;
            }
        }
        else
        {
            if ((((sp->battlemon[sp->defence_client].moveeffect.lockon_client_no == sp->attack_client) && (sp->battlemon[sp->defence_client].effect_of_moves & MOVE_EFFECT_LOCK_ON))
                    || (GetBattlerAbility(sp,sp->attack_client) == ABILITY_NO_GUARD)
                    || (GetBattlerAbility(sp,sp->defence_client) == ABILITY_NO_GUARD))
                && (sp->battlemon[sp->attack_client].level >= sp->battlemon[sp->defence_client].level))
            {
                hit = 1;
            }
            else
            {
                hit = sp->moveTbl[sp->current_move_index].accuracy + (sp->battlemon[sp->attack_client].level - sp->battlemon[sp->defence_client].level);
                if(((BattleRand(bw) % 100) < hit)
                    && (sp->battlemon[sp->attack_client].level >= sp->battlemon[sp->defence_client].level))
                {
                    hit = 1;
                }
                else
                {
                    hit = 0;
                }
            }
            sp->waza_status_flag |= MOVE_STATUS_FLAG_LOCK_ON;
        }
        if (hit)
        {
            sp->damage = sp->battlemon[sp->defence_client].hp * -1;
            sp->waza_status_flag |= MOVE_STATUS_FLAG_OHKO_HIT;
        }
        else
        {
            if(sp->battlemon[sp->attack_client].level >= sp->battlemon[sp->defence_client].level)
            {
                sp->waza_status_flag |= FLAG_CONTACT;
            }
            else
            {
                sp->waza_status_flag |= MOVE_STATUS_FLAG_OHKO_HIT_NOHIT;
            }
        }
    }

    return FALSE;
}


const u16 sLowKickWeightToPower[][2] = 
{
    {   100,     20}, //   0- 10 kg ->  20 bp
    {   250,     40}, //  10- 25 kg ->  40 bp
    {   500,     60}, //  25- 50 kg ->  60 bp
    {  1000,     80}, //  50-100 kg ->  80 bp
    {  2000,    100}, // 100-200 kg -> 100 bp
    {0xFFFF, 0xFFFF},
};

s32 GetPokemonWeight(void *bw, struct BattleStruct *sp, u32 client)
{
    s32 weight;
    
    weight = sp->battlemon[client].weight;
    
    if (GetBattlerAbility(sp, client) == ABILITY_HEAVY_METAL)
    {
        weight *= 2;
    }
    else if (GetBattlerAbility(sp, client) == ABILITY_LIGHT_METAL)
    {
        weight /= 2;
    }
    
    return weight;
}

// also handles grass knot
BOOL btl_scr_cmd_8c_lowkickdamagecalc(void *bw, struct BattleStruct *sp)
{
    int i;
    int weight;

    IncrementBattleScriptPtr(sp, 1);

    i = 0;

    weight = GetPokemonWeight(bw, sp, sp->defence_client);

    while (sLowKickWeightToPower[i][0] != 0xFFFF)
    {
        if (sLowKickWeightToPower[i][0] >= weight)
        {
            break;
        }
        i++;
    }

    if (sLowKickWeightToPower[i][0] != 0xFFFF)
    {
        sp->damage_power = sLowKickWeightToPower[i][1];
    }
    else
    {
        sp->damage_power = 120;
    }

    return FALSE;
}


BOOL btl_scr_cmd_d0_checkshouldleavewith1hp(void *bw, struct BattleStruct *sp)
{
    int side, client_no, holdeffect;
    int atk;
    int flag = 0;

    IncrementBattleScriptPtr(sp, 1);
    side = read_battle_script_param(sp);

    client_no = SideClientNoGet(bw, sp, side);
    holdeffect = HeldItemHoldEffectGet(sp,client_no);
    atk = HeldItemAtkGet(sp, client_no, ATK_CHECK_NORMAL);

    if ((MoldBreakerAbilityCheck(sp, sp->attack_client, sp->defence_client, ABILITY_STURDY) == TRUE) && (sp->battlemon[client_no].hp == (s32)sp->battlemon[client_no].maxhp))
    {
        flag = 2;
    }
    else if ((holdeffect == HOLD_EFFECT_FOCUS_BAND) && ((BattleRand(bw) % 100) < atk))
    {
        flag = 1;
    }
    else if ((holdeffect == HOLD_EFFECT_HP_MAX_SURVIVE_1_HP) && (sp->battlemon[client_no].hp == sp->battlemon[client_no].maxhp))
    {
        flag = 1;
    }
    if (flag)
    {
        if ((sp->battlemon[client_no].hp + sp->hp_calc_work) <= 0)
        {
            sp->hp_calc_work = (sp->battlemon[client_no].hp - 1) * -1;
            if (flag != 2)
                sp->waza_status_flag |= MOVE_STATUS_FLAG_HELD_ON_ITEM;
            else
                sp->waza_status_flag |= MOVE_STATUS_FLAG_HELD_ON_ABILITY;
        }
    }

    return FALSE;
}

// treating this additionally as a switching hook.  we'll handle meloetta etc. here
BOOL btl_scr_cmd_d1_trynaturalcure(void *bw, struct BattleStruct *sp)
{
    int side, client_no, address, ability, condition;
    struct PartyPokemon *pp;

    IncrementBattleScriptPtr(sp, 1);
    side = read_battle_script_param(sp);
    address = read_battle_script_param(sp);

    client_no = SideClientNoGet(bw, sp, side);
    if ((sp->battlemon[client_no].hp) && (sp->sel_mons_no[client_no] != 6))
    {
        pp = BattleWorkPokemonParamGet(bw, client_no, sp->sel_mons_no[client_no]);
        ability = GetMonData(pp, ID_PARA_speabino, NULL);
        condition = GetMonData(pp, ID_PARA_condition, NULL);

        // handle meloetta pirouette form changing back to normal when switched out
        if ((sp->battlemon[client_no].species == SPECIES_MELOETTA)
         && (sp->battlemon[client_no].form_no != 0))
        {
            u32 form_no = 0;
            sp->battlemon[client_no].form_no = form_no;
            BattleFormChange(sp->client_work, sp->battlemon[sp->client_work].form_no, bw, sp, 1);
            SetMonData(pp, ID_PARA_form_no, (u8 *)&form_no);
        }
        
        // natural cure is checked for here but handled by SwitchAbilityStatusRecoverCheck/the battle scripts this command is used in
        if ((sp->battlemon[client_no].ability != ABILITY_NATURAL_CURE)
         && (ST_ServerTokuseiStatusRecoverReshuffleCheck(sp, ability, condition) == FALSE)) // SwitchAbilityStatusRecoverCheck
        {
            IncrementBattleScriptPtr(sp, address);
        }
        
        // handle regenerator--mon restores 1/3 hp on switch
        if (ability == ABILITY_REGENERATOR) // switching mon ability is regenerator--not affected by gastro acid or etc
        {
            int hp = GetMonData(pp, ID_PARA_hp, NULL), hpmax = GetMonData(pp, ID_PARA_hpmax, NULL);
            
            int hpdelta = hpmax / 3;
            
            if ((hp + hpdelta) > hpmax)
                hp = hpmax;
            else
                hp += hpdelta;
            
            SetMonData(pp, ID_PARA_hp, (u8 *)&hp);
        }
    }
    else
    {
        IncrementBattleScriptPtr(sp, address);
    }
    
    return FALSE;
}


// NEW BATTLE SCRIPT COMMANDS

BOOL btl_scr_cmd_E1_reduceweight(void *bw, struct BattleStruct *sp)
{
    s32 delta;
    
    IncrementBattleScriptPtr(sp, 1);

    delta = read_battle_script_param(sp);
    if (delta >= sp->battlemon[sp->attack_client].weight)
        sp->battlemon[sp->attack_client].weight = 1;
    else
        sp->battlemon[sp->attack_client].weight -= delta;

    return FALSE;
}

BOOL btl_scr_cmd_E2_heavyslamdamagecalc(void *bw, struct BattleStruct *sp)
{
    u32 ratio;

    IncrementBattleScriptPtr(sp, 1);

    // grab the ratio of defense weight/attack weight as a % to 2 decimal places
    ratio = (GetPokemonWeight(bw, sp, sp->defence_client) * 1000) / GetPokemonWeight(bw, sp, sp->attack_client);

    if (ratio <= 2000)      // < 20.00%
        sp->damage_power = 120;
    else if (ratio <= 2500) // 20.01% - 25.00%
        sp->damage_power = 100;
    else if (ratio <= 3334) // 25.01% - 33.34%
        sp->damage_power = 80;
    else if (ratio <= 5000) // 33.35% - 50.00%
        sp->damage_power = 60;
    else                    // > 50.01%
        sp->damage_power = 40;

    return FALSE;
}

BOOL btl_scr_cmd_E3_isuserlowerlevel(void *bw, struct BattleStruct *sp)
{
    IncrementBattleScriptPtr(sp, 1);
    int address = read_battle_script_param(sp);

    if (sp->battlemon[sp->attack_client].level < sp->battlemon[sp->defence_client].level)
        IncrementBattleScriptPtr(sp, address);
    return FALSE;
};
