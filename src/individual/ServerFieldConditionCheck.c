#include "../../include/types.h"
#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/save.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/file.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/weather_numbers.h"

enum{
    FCC_REFLECT = 0,
    FCC_LIGHT_SCREEN,
    FCC_MIST,
    FCC_SAFEGUARD,
    FCC_TAILWIND,
    FCC_LUCKY_CHANT,
    FCC_WISH,
    FCC_RAIN,
    FCC_SANDSTORM,
    FCC_SUNNY,
    FCC_HAIL,
    FCC_SNOW,
    FCC_FOG,
    FCC_STRONG_WINDS,
    FCC_GRAVITY,
    FCC_TERRAIN,
    FCC_FIELD_EFFECT,
    FCC_END
};

void ServerFieldConditionCheck(void *bw, struct BattleStruct *sp)
{
    int ret = 0;
    int side;
    int client_set_max;

    client_set_max = BattleWorkClientSetMaxGet(bw);

    // Sort here because damage taken here needs to account for speed
    // store command so that it is unedited by the function call
    side = sp->server_seq_no;
    BattleControllerPlayer_CalcExecutionOrder(bw, sp);
    sp->server_seq_no = side;

    do
    {
        if (CheckIfAnyoneShouldFaint(sp, sp->server_seq_no, sp->server_seq_no, 1) == TRUE)
        {
            return;
        }

        if (ServerGetExpCheck(sp, sp->server_seq_no, sp->server_seq_no) == TRUE)
        {
            return;
        }

        if (ServerZenmetsuCheck(bw, sp) == TRUE)
        {
            return;
        }


        switch(sp->fcc_seq_no)
        {
        case FCC_REFLECT:
            while (sp->fcc_work < 2)
            {
                side = sp->fcc_work;
                if (sp->side_condition[side] & SIDE_STATUS_REFLECT)
                {
                    if (--sp->scw[side].reflectCount == 0)
                    {
                        sp->side_condition[side] &= ~(SIDE_STATUS_REFLECT);
                        sp->waza_work = MOVE_REFLECT;
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEAR_OFF);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        sp->client_work = ST_ServerDir2ClientNoGet(bw, sp, side);
                        ret = 1;
                    }
                }
                sp->fcc_work++;
                if (ret)
                    break;
            }
            if (ret == 0)
            {
                sp->fcc_seq_no++;
                sp->fcc_work = 0;
            }
            break;
        case FCC_LIGHT_SCREEN:
            while (sp->fcc_work < 2)
            {
                side = sp->fcc_work;
                if (sp->side_condition[side] & SIDE_STATUS_LIGHT_SCREEN)
                {
                    if (--sp->scw[side].lightScreenCount == 0)
                    {
                        sp->side_condition[side] &= ~(SIDE_STATUS_LIGHT_SCREEN);
                        sp->waza_work = MOVE_LIGHT_SCREEN;
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEAR_OFF);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        sp->client_work = ST_ServerDir2ClientNoGet(bw, sp, side);
                        ret = 1;
                    }
                }
                sp->fcc_work++;
                if (ret)
                    break;
            }
            if (ret == 0)
            {
                sp->fcc_seq_no++;
                sp->fcc_work = 0;
            }
            break;
        case FCC_MIST:
            while (sp->fcc_work < 2)
            {
                side = sp->fcc_work;
                if (sp->side_condition[side] & SIDE_STATUS_MIST)
                {
                    if (--sp->scw[side].mistCount == 0)
                    {
                        sp->side_condition[side] &= ~(SIDE_STATUS_MIST);
                        sp->waza_work = MOVE_MIST;
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEAR_OFF);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        sp->client_work = ST_ServerDir2ClientNoGet(bw, sp, side);
                        ret = 1;
                    }
                }
                sp->fcc_work++;
                if (ret)
                    break;
            }
            if(ret==0){
                sp->fcc_seq_no++;
                sp->fcc_work=0;
            }
            break;
        case FCC_SAFEGUARD:
            while (sp->fcc_work < 2)
            {
                side = sp->fcc_work;
                if (sp->side_condition[side] & SIDE_STATUS_SAFEGUARD)
                {
                    if (--sp->scw[side].safeguardCount == 0)
                    {
                        sp->side_condition[side] &= ~(SIDE_STATUS_SAFEGUARD);
                        sp->client_work = sp->scw[side].safeguardBattler;
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_END_SAFEGUARD);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        sp->client_work = ST_ServerDir2ClientNoGet(bw, sp, side);
                        ret = 1;
                    }
                }
                sp->fcc_work++;
                if (ret)
                    break;
            }
            if (ret == 0)
            {
                sp->fcc_seq_no++;
                sp->fcc_work = 0;
            }
            break;
        case FCC_TAILWIND:
            while (sp->fcc_work < 2)
            {
                side = sp->fcc_work;
                if (sp->tailwindCount[side]) // update tailwind to use a separate counter so it can be larger
                {
                    if (--sp->tailwindCount[side] == 0)
                    {
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_TAILWIND_END);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        sp->client_work = ST_ServerDir2ClientNoGet(bw, sp, side);
                        ret = 1;
                    }
                }
                sp->fcc_work++;
                if (ret)
                    break;
            }
            if (ret == 0)
            {
                sp->fcc_seq_no++;
                sp->fcc_work = 0;
            }
            break;
        case FCC_LUCKY_CHANT:
            while (sp->fcc_work < 2)
            {
                side = sp->fcc_work;
                if (sp->side_condition[side] & SIDE_STATUS_LUCKY_CHANT)
                {
                    sp->side_condition[side] -= (1 << 12);
                    if ((sp->side_condition[side] & SIDE_STATUS_LUCKY_CHANT) == 0)
                    {
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_LUCKY_CHANT_END);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        sp->client_work = ST_ServerDir2ClientNoGet(bw,sp,side);
                        ret = 1;
                    }
                }
                sp->fcc_work++;
                if (ret)
                    break;
            }
            if (ret == 0)
            {
                sp->fcc_seq_no++;
                sp->fcc_work = 0;
            }
            break;
        case FCC_WISH:
            while (sp->fcc_work < client_set_max)
            {
                side = sp->turnOrder[sp->fcc_work];
                if (sp->fcc.wish_count[side])
                {
                    if (--sp->fcc.wish_count[side] == 0)
                    {
                        if (sp->battlemon[side].hp)
                        {
                            sp->client_work = side;
                            sp->mp.msg_tag = TAG_NICK;
                            sp->mp.msg_id = BATTLE_MSG_WISH_CAME_TRUE; // "{STRVAR_1 1, 0, 0}’s wish\ncame true!"
                            sp->mp.msg_para[0] = side | (sp->fcc.wish_sel_mons[side] << 8);
                            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[side].maxhp, 2);
                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WISH_HEAL);
                            sp->next_server_seq_no = sp->server_seq_no;
                            sp->server_seq_no = 22;
                            ret = 1;
                        }
                    }
                }
                sp->fcc_work++;
                if (ret)
                    break;
            }
            if (ret == 0)
            {
                sp->fcc_seq_no++;
                sp->fcc_work = 0;
            }
            break;
        case FCC_RAIN:
            if (sp->field_condition & WEATHER_RAIN_ANY)
            {
#ifndef DISABLE_END_OF_TURN_WEATHER_MESSAGE
                if (sp->field_condition & WEATHER_RAIN_PERMANENT)
                {
                    sp->mp.msg_id = BATTLE_MSG_RAIN_CONTINUES_TO_FALL; // Rain continues to fall.
                    sp->mp.msg_tag = TAG_NONE;
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                }
                else
#endif // DISABLE_END_OF_TURN_WEATHER_MESSAGE
                {
                    if (--sp->fcc.weather_count == 0)
                    {
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_RAIN_END);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                    }
#ifndef DISABLE_END_OF_TURN_WEATHER_MESSAGE
                    else
                    {
                        sp->mp.msg_id = BATTLE_MSG_RAIN_CONTINUES_TO_FALL;
                        sp->mp.msg_tag = TAG_NONE;
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                    }
#endif
                }
                sp->temp_work = 19;
                ret = 1;
            }
            sp->fcc_seq_no++;
            break;
        case FCC_SANDSTORM:
            if (sp->field_condition & WEATHER_SANDSTORM_ANY)
            {
                if (sp->field_condition & WEATHER_SANDSTORM_PERMANENT)
                {
                    sp->mp.msg_id = BATTLE_MSG_SANDSTORM_RAGES; // The sandstorm rages.
                    sp->mp.msg_tag = TAG_NONE;
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                }
                else
                {
                    if(--sp->fcc.weather_count == 0)
                    {
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SANDSTORM_END);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                    }
                    else
                    {
                        sp->mp.msg_id = BATTLE_MSG_SANDSTORM_RAGES;
                        sp->mp.msg_tag = TAG_NONE;
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                    }
                }
                sp->temp_work = 21;
                ret = 1;
            }
            sp->fcc_seq_no++;
            break;
        case FCC_SUNNY:
            if (sp->field_condition & WEATHER_SUNNY_ANY)
            {
#ifndef DISABLE_END_OF_TURN_WEATHER_MESSAGE
                if (sp->field_condition & WEATHER_SUNNY_PERMANENT)
                {
                    sp->mp.msg_id = BATTLE_MSG_SUNLIGHT_IS_STRONG;
                    sp->mp.msg_tag = TAG_NONE;
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                }
                else
#endif // DISABLE_END_OF_TURN_WEATHER_MESSAGE
                {
                    if (--sp->fcc.weather_count == 0)
                    {
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SUN_END);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                    }
#ifndef DISABLE_END_OF_TURN_WEATHER_MESSAGE
                    else
                    {
                        sp->mp.msg_id = BATTLE_MSG_SUNLIGHT_IS_STRONG;
                        sp->mp.msg_tag = TAG_NONE;
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                    }
#endif // DISABLE_END_OF_TURN_WEATHER_MESSAGE
                }
                sp->temp_work = 22;
                ret = 1;
            }
            sp->fcc_seq_no++;
            break;
        case FCC_HAIL:
            if (sp->field_condition & WEATHER_HAIL_ANY)
            {
                if (sp->field_condition & WEATHER_HAIL_PERMANENT)
                {
                    sp->mp.msg_id = BATTLE_MSG_HAIL_CONTINUES_TO_FALL; // Hail continues to fall.
                    sp->mp.msg_tag = TAG_NONE;
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                }
                else
                {
                    if (--sp->fcc.weather_count == 0)
                    {
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HAIL_END);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                    }
                    else
                    {
                        sp->mp.msg_id = BATTLE_MSG_HAIL_CONTINUES_TO_FALL;
                        sp->mp.msg_tag = TAG_NONE;
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                    }
                }
                sp->temp_work = 20;
                ret = 1;
            }
            sp->fcc_seq_no++;
            break;
        case FCC_SNOW:
            if (sp->field_condition & WEATHER_SNOW_ANY) {
                if (sp->field_condition & WEATHER_SNOW_PERMANENT) {
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                } else {
                    if (--sp->fcc.weather_count == 0) {
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SNOW_END);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                    } else {
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                    }
                }
                // Reuse same animation for now
                sp->temp_work = 20;
                ret = 1;
            }
            sp->fcc_seq_no++;
            break;
        case FCC_FOG:
#ifndef DISABLE_END_OF_TURN_WEATHER_MESSAGE
            if (sp->field_condition & FIELD_STATUS_FOG)
            {
                sp->mp.msg_id = BATTLE_MSG_FOG_IS_DEEP; // The fog is deep...
                sp->mp.msg_tag = TAG_NONE;
                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                sp->next_server_seq_no = sp->server_seq_no;
                sp->server_seq_no = 22;
                sp->temp_work = 18; // signifies fog i guess -- subanimation?
                ret = 1;
            }
#endif // DISABLE_END_OF_TURN_WEATHER_MESSAGE
            sp->fcc_seq_no++;
            break;
        case FCC_STRONG_WINDS:
#ifndef DISABLE_END_OF_TURN_WEATHER_MESSAGE
            if (sp->field_condition & WEATHER_STRONG_WINDS)
            {
                sp->mp.msg_id = BATTLE_MSG_STRONG_WINDS_BLOW_ON; // The strong winds blow on!
                sp->mp.msg_tag = TAG_NONE;
                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                sp->next_server_seq_no = sp->server_seq_no;
                sp->server_seq_no = 22;
                ret = 1;
            }
#endif // DISABLE_END_OF_TURN_WEATHER_MESSAGE
            sp->fcc_seq_no++;
            break;
        case FCC_GRAVITY:
            if (sp->field_condition & FIELD_STATUS_GRAVITY)
            {
                sp->field_condition -= (1 << 12);
                if ((sp->field_condition & FIELD_STATUS_GRAVITY) == 0)
                {
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_GRAVITY_END);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    ret = 1;
                }
            }
            sp->fcc_seq_no++;
            break;
        case FCC_TERRAIN:
            if (sp->terrainOverlay.type != TERRAIN_NONE) {
                sp->terrainOverlay.numberOfTurnsLeft--;
                if (sp->terrainOverlay.numberOfTurnsLeft <= 0) {
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_TERRAIN_END);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    ret = 1;
                }
            }

            sp->fcc_seq_no++;
            break;
        case FCC_FIELD_EFFECT:
            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_FIELD_EFFECTS_END_OF_TURN);
            sp->next_server_seq_no = sp->server_seq_no;
            sp->server_seq_no = 22;
            ret = 1;
            sp->fcc_seq_no++;
            break;
        case FCC_END:
            ret = 2;
            break;
        }
    } while (ret == 0);

    if (ret == 1)
    {
        SCIO_BlankMessage(bw);
    }

    if (ret == 2)
    {
        sp->fcc_seq_no = 0;
        sp->server_seq_no = 10;
    }
}
