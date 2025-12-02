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

enum EndTurnResolutionOrder {
    ENDTURN_WEATHER_SUBSIDING,
    ENDTURN_WEATHER_ANIMATION_AND_DAMAGE_AND_HEAL,
    ENDTURN_RESOLVE_SWITCHES_1,
    ENDTURN_AFFECTION_SELF_CURE,
    ENDTURN_FUTURE_EFFECT,
    ENDTURN_FIRST_EVENT_BLOCK,
    ENDTURN_RESOLVE_SWITCHES_2,
    ENDTURN_AQUA_RING,
    ENDTURN_INGRAIN,
    ENDTURN_LEECH_SEED,
    ENDTURN_POSION,
    ENDTURN_BURN,
    ENDTURN_NIGHTMARE,
    ENDTURN_CURSE,
    ENDTURN_TRAPPING_DAMAGE,
    ENDTURN_OCTOLOCK,
    ENDTURN_TAUNT_FADING,
    ENDTURN_TORMENT_FADING,
    ENDTURN_ENCORE_FADING,
    ENDTURN_DISABLE_FADING,
    ENDTURN_MAGNET_RISE_FADING,
    ENDTURN_TELEKINESIS_FADING,
    ENDTURN_HEAL_BLOCK_FADING,
    ENDTURN_EMBARGO_FADING,
    ENDTURN_YAWN,
    ENDTURN_PERISH_COUNT,
    ENDTURN_ROOST_USERS_REGAINING_FLYING_TYPE,
    ENDTURN_RESOLVE_SWITCHES_3,
    ENDTURN_SECOND_EVENT_BLOCK,
    ENDTURN_TRICK_ROOM_DISSIPATING,
    ENDTURN_GRAVITY_DISSIPATING,
    ENDTURN_WATER_SPORT_DISSIPATING,
    ENDTURN_MUD_SPORT_DISSIPATING,
    ENDTURN_WONDER_ROOM_DISSIPATING,
    ENDTURN_MAGIC_ROOM_DISSIPATING,
    ENDTURN_TERRAIN_DISSIPATING,
    ENDTURN_THIRD_EVENT_BLOCK,
    ENDTURN_RESOLVE_SWITCHES_4,
    ENDTURN_FORM_CHANGE,
    ENDTURN_FORTH_EVENT_BLOCK,
    ENDTURN_END,
};

enum FirstEventBlockResolutionOrder {
    FIRST_EVENT_BLOCK_SIDE_CONDITION_RESIDUAL_DAMAGE,
    FIRST_EVENT_BLOCK_GRASSY_TERRAIN,
    FIRST_EVENT_BLOCK_ABILITY_HEAL_STATUS,
    FIRST_EVENT_BLOCK_ITEM,
    FIRST_EVENT_BLOCK_END,
};

enum SideConditionResidualDamageType {
    SIDE_CONDITION_DAMAGE_TYPE_G_MAX_VINE_LASH,
    SIDE_CONDITION_DAMAGE_TYPE_G_MAX_VOLCALITH,
    SIDE_CONDITION_DAMAGE_TYPE_G_MAX_WILDFIRE,
    SIDE_CONDITION_DAMAGE_TYPE_SEA_OF_FIRE,
};

enum SecondEventBlockResolutionOrder {
    SECOND_EVENT_BLOCK_REFLECT_DISSIPATING,
    SECOND_EVENT_BLOCK_LIGHT_SCREEN_DISSIPATING,
    SECOND_EVENT_BLOCK_SAFEGUARD_DISSIPATING,
    SECOND_EVENT_BLOCK_MIST_DISSIPATING,
    SECOND_EVENT_BLOCK_TAILWIND_DISSIPATING,
    SECOND_EVENT_BLOCK_LUCKY_CHANT_DISSIPATING,
    SECOND_EVENT_BLOCK_RAINBOW_DISSIPATING,
    SECOND_EVENT_BLOCK_SEA_OF_FIRE_DISSIPATING,
    SECOND_EVENT_BLOCK_SWAMP_DISSIPATING,
    SECOND_EVENT_BLOCK_AURORA_VEIL_DISSIPATING,
    SECOND_EVENT_BLOCK_END,
};

enum ThirdEventBlockResolutionOrder {
    THIRD_EVENT_BLOCK_UPROAR,
    THIRD_EVENT_BLOCK_ABILITIES,
    THIRD_EVENT_BLOCK_ITEMS,
    THIRD_EVENT_BLOCK_END,
};

enum ForthEventBlockResolutionOrder {
    FORTH_EVENT_BLOCK_HUNGER_SWITCH,
    FORTH_EVENT_BLOCK_EJECT_PACK,
    FORTH_EVENT_BLOCK_END,
};

void ServerFieldConditionCheck(void *bw, struct BattleStruct *sp) {
    int ret = 0;
    int side;
    int client_set_max;

    client_set_max = BattleWorkClientSetMaxGet(bw);

    int battlerId = sp->turnOrder[sp->updateMonConditionData];

    int i;

    int seq_no;
    u8 flag = 0;
    FutureCondition futureCondition;

#ifdef DEBUG_ENDTURN_LOGIC
    u8 buf[64];
    sprintf(buf, "In ServerFieldConditionCheck\n");
    debugsyscall(buf);
#endif

    do {
        if (CheckIfAnyoneShouldFaint(sp, sp->server_seq_no, sp->server_seq_no, 1) == TRUE) {
            return;
        }

        if (ServerGetExpCheck(sp, sp->server_seq_no, sp->server_seq_no) == TRUE) {
            return;
        }

        if (ServerZenmetsuCheck(bw, sp) == TRUE) {
            return;
        }

        switch (sp->fcc_seq_no) {
            case ENDTURN_WEATHER_SUBSIDING: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_WEATHER_SUBSIDING\n");
                debugsyscall(buf);
                #endif

                if (sp->field_condition & WEATHER_RAIN) {
                    if (--sp->fcc.weather_count == 0) {
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_RAIN_END);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        sp->temp_work = 19;
                        ret = 1;
                    }
                }

                if (sp->field_condition & WEATHER_SANDSTORM) {
                    if (--sp->fcc.weather_count == 0) {
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SANDSTORM_END);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        sp->temp_work = 21;
                        ret = 1;
                    }
                }

                if (sp->field_condition & WEATHER_SUNNY) {
                    if (--sp->fcc.weather_count == 0) {
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SUN_END);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        sp->temp_work = 22;
                        ret = 1;
                    }
                }

                if (sp->field_condition & WEATHER_HAIL) {
                    if (--sp->fcc.weather_count == 0) {
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HAIL_END);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        sp->temp_work = 20;
                        ret = 1;
                    }
                }

                if (sp->field_condition & WEATHER_SNOW) {
                    if (--sp->fcc.weather_count == 0) {
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_SNOW_END);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        // TODO: Reuse same animation for now
                        sp->temp_work = 54;
                        ret = 1;
                    }
                }

                sp->fcc_seq_no++;
                break;
            }
            case ENDTURN_WEATHER_ANIMATION_AND_DAMAGE_AND_HEAL: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_WEATHER_ANIMATION_AND_DAMAGE_AND_HEAL\n");
                debugsyscall(buf);
                #endif

                if (sp->field_condition & WEATHER_RAIN_ANY) {
                    sp->mp.msg_id = BATTLE_MSG_RAIN_CONTINUES_TO_FALL;  // Rain continues to fall.
                    sp->mp.msg_tag = TAG_NONE;
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    sp->temp_work = 19;
                    ret = 1;
                }

                if (sp->field_condition & WEATHER_SANDSTORM_ANY) {
                    sp->mp.msg_id = BATTLE_MSG_SANDSTORM_RAGES;  // The sandstorm rages.
                    sp->mp.msg_tag = TAG_NONE;
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    sp->temp_work = 21;
                    ret = 1;
                }

                if (sp->field_condition & WEATHER_SUNNY_ANY) {
                    sp->mp.msg_id = BATTLE_MSG_SUNLIGHT_IS_STRONG;  // The sunlight is strong.
                    sp->mp.msg_tag = TAG_NONE;
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    sp->temp_work = 22;
                    ret = 1;
                }

                if (sp->field_condition & WEATHER_HAIL_ANY) {
                    sp->mp.msg_id = BATTLE_MSG_HAIL_CONTINUES_TO_FALL;  // Hail continues to fall.
                    sp->mp.msg_tag = TAG_NONE;
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    sp->temp_work = 20;
                    ret = 1;
                }

                if (sp->field_condition & WEATHER_SNOW_ANY) {
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    // Reuse same animation for now
                    sp->temp_work = 54;
                    ret = 1;
                }

                if (sp->field_condition & FIELD_STATUS_FOG) {
                    sp->mp.msg_id = BATTLE_MSG_FOG_IS_DEEP;  // The fog is deep...
                    sp->mp.msg_tag = TAG_NONE;
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    sp->temp_work = 18;  // signifies fog i guess -- subanimation?
                    ret = 1;
                }

                if (sp->field_condition & WEATHER_STRONG_WINDS) {
                    sp->mp.msg_id = BATTLE_MSG_STRONG_WINDS_BLOW_ON;  // The strong winds blow on!
                    sp->mp.msg_tag = TAG_NONE;
                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEATHER_EOT_EFFECT);
                    sp->next_server_seq_no = sp->server_seq_no;
                    sp->server_seq_no = 22;
                    ret = 1;
                }

                sp->fcc_seq_no++;
                sp->scc_work = 0;
                break;
            }
            // TODO
            case ENDTURN_RESOLVE_SWITCHES_1: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_RESOLVE_SWITCHES_1\n");
                debugsyscall(buf);
                #endif

                sp->fcc_seq_no++;
                break;
            }
            // TODO
            case ENDTURN_AFFECTION_SELF_CURE: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_AFFECTION_SELF_CURE\n");
                debugsyscall(buf);
                #endif

                sp->fcc_seq_no++;
                break;
            }
            case ENDTURN_FUTURE_EFFECT: {
#ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_FUTURE_EFFECT\n");
                debugsyscall(buf);
#endif

                while (sp->scc_work < CLIENT_MAX * FUTURE_CONDITION_MAX) {
#ifdef DEBUG_ENDTURN_LOGIC
                    sprintf(buf, "scc_work: %d\n", sp->scc_work);
                    debugsyscall(buf);
#endif
                    futureCondition = sp->futureConditionQueue[sp->scc_work];
#ifdef DEBUG_ENDTURN_LOGIC
                    sprintf(buf, "Client: %d, Condition: %d\n", futureCondition.affectedClient, futureCondition.conditionType.futureConditionType);
                    debugsyscall(buf);
#endif
                    switch (futureCondition.conditionType.futureConditionType) {
                        case FUTURE_CONDITION_FUTURE_SIGHT_OR_DOOM_DESIRE: {
                            if (sp->fcc.future_prediction_count[futureCondition.affectedClient]) {
#ifdef DEBUG_ENDTURN_LOGIC
                                sprintf(buf, "In Future Sight\n");
                                debugsyscall(buf);
#endif
                                if (!(--sp->fcc.future_prediction_count[futureCondition.affectedClient]) && sp->battlemon[futureCondition.affectedClient].hp != 0) {
#ifdef DEBUG_ENDTURN_LOGIC
                                    sprintf(buf, "Future Sight Pass\n");
                                    debugsyscall(buf);
#endif
                                    sp->side_condition[IsClientEnemy(bw, futureCondition.affectedClient)] &= ~SIDE_STATUS_FUTURE_SIGHT;
                                    sp->mp.msg_id = BATTLE_MSG_TOOK_DOOM_DESIRE;  // Seadra took the Doom Desire attack!
                                    sp->mp.msg_tag = TAG_NICKNAME_MOVE;
                                    sp->mp.msg_para[0] = CreateNicknameTag(sp, futureCondition.affectedClient);
                                    sp->mp.msg_para[1] = sp->fcc.future_prediction_wazano[futureCondition.affectedClient];
                                    sp->battlerIdTemp = futureCondition.affectedClient;
                                    sp->attack_client_work = sp->fcc.future_prediction_client_no[futureCondition.affectedClient];
                                    sp->waza_work = sp->fcc.future_prediction_wazano[futureCondition.affectedClient];
                                    sp->hp_calc_work = sp->fcc.future_prediction_damage[futureCondition.affectedClient];
                                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, 121);
                                    sp->next_server_seq_no = sp->server_seq_no;
                                    sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                                    ret = 1;
                                    sp->futureConditionQueue[sp->scc_work].conditionType.futureConditionType = FUTURE_CONDITION_NONE;
                                }
                            }
                            break;
                        }
                        case FUTURE_CONDITION_WISH: {
                            if (sp->fcc.wish_count[futureCondition.affectedClient]) {
#ifdef DEBUG_ENDTURN_LOGIC
                                sprintf(buf, "In Wish\n");
                                debugsyscall(buf);
#endif
                                if (--sp->fcc.wish_count[futureCondition.affectedClient] == 0) {
                                    if (sp->battlemon[futureCondition.affectedClient].hp) {
#ifdef DEBUG_ENDTURN_LOGIC
                                        sprintf(buf, "Wish Pass\n");
                                        debugsyscall(buf);
#endif
                                        sp->battlerIdTemp = futureCondition.affectedClient;
                                        sp->mp.msg_tag = TAG_NICKNAME;
                                        sp->mp.msg_id = BATTLE_MSG_WISH_CAME_TRUE;  // "{STRVAR_1 1, 0, 0}’s wish\ncame true!"
                                        sp->mp.msg_para[0] = futureCondition.affectedClient | (sp->fcc.wish_sel_mons[futureCondition.affectedClient] << 8);
                                        sp->hp_calc_work = BattleDamageDivide(sp->battlemon[futureCondition.affectedClient].maxhp, 2);
                                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WISH_HEAL);
                                        sp->next_server_seq_no = sp->server_seq_no;
                                        sp->server_seq_no = 22;
                                        ret = 1;
                                        sp->futureConditionQueue[sp->scc_work].conditionType.futureConditionType = FUTURE_CONDITION_NONE;
                                    }
                                }
                            }
                            break;
                        }
                        default:
                            break;
                    }

                    sp->scc_work++;
                    break;
                }
/*
                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];
                    // TODO: keep this "skip" logic?
                    // if (sp->no_reshuffle_client & No2Bit(battlerId)) {
                    //     sp->scc_work++;
                    //     continue;
                    // }

                    debug_printf("\n\nClient %d future count: %d, wish count: %d\n", battlerId, sp->fcc.future_prediction_count[battlerId], sp->fcc.wish_count[battlerId]);
                    debug_printf("Client %d future order: %d, wish order: %d\n\n", battlerId, sp->futureConditionQueueWrong[battlerId].futureSightOrDoomDesireExecutionOrder, sp->futureConditionQueueWrong[battlerId].wishExecutionOrder);

                    // Process the first in queue first
                    if (sp->fcc.future_prediction_count[battlerId] == 1 &&
                        (sp->fcc.wish_count[battlerId] != 1 ||
                         sp->futureConditionQueueWrong[battlerId].futureSightOrDoomDesireExecutionOrder == 1)) {
                        debug_printf("\n\nIn Doom Desire\n\n", NULL);
                        sp->fcc.future_prediction_count[battlerId]--;
                        if (sp->battlemon[battlerId].hp != 0) {
                            sp->side_condition[IsClientEnemy(bw, battlerId)] &= ~SIDE_STATUS_FUTURE_SIGHT;
                            sp->mp.msg_id = 475;  // Seadra took the Doom Desire attack!
                            sp->mp.msg_tag = TAG_NICKNAME_MOVE;
                            sp->mp.msg_para[0] = CreateNicknameTag(sp, battlerId);
                            sp->mp.msg_para[1] = sp->fcc.future_prediction_wazano[battlerId];
                            sp->client_work = battlerId;
                            sp->attack_client_work = sp->fcc.future_prediction_client_no[battlerId];
                            sp->waza_work = sp->fcc.future_prediction_wazano[battlerId];
                            sp->hp_calc_work = sp->fcc.future_prediction_damage[battlerId];
                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, 121);
                            sp->next_server_seq_no = sp->server_seq_no;
                            sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                            ret = 1;
                        }
                        // "Move" everyone forward in line
                        if (sp->futureConditionQueueWrong[battlerId].wishExecutionOrder) {
                            sp->futureConditionQueueWrong[battlerId].wishExecutionOrder--;
                        }
                        if (sp->futureConditionQueueWrong[battlerId].futureSightOrDoomDesireExecutionOrder) {
                            sp->futureConditionQueueWrong[battlerId].futureSightOrDoomDesireExecutionOrder--;
                        }
                    } else {
                        if (sp->fcc.wish_count[battlerId] == 1 &&
                            (sp->fcc.future_prediction_count[battlerId] != 1 ||
                             sp->futureConditionQueueWrong[battlerId].wishExecutionOrder == 1)) {
                            debug_printf("\n\nIn Wish\n\n", NULL);
                            sp->fcc.wish_count[battlerId]--;
                            if (sp->battlemon[battlerId].hp) {
                                sp->client_work = battlerId;
                                sp->mp.msg_tag = TAG_NICKNAME;
                                sp->mp.msg_id = BATTLE_MSG_WISH_CAME_TRUE;  // "{STRVAR_1 1, 0, 0}’s wish\ncame true!"
                                sp->mp.msg_para[0] = battlerId | (sp->fcc.wish_sel_mons[battlerId] << 8);
                                sp->hp_calc_work = BattleDamageDivide(sp->battlemon[battlerId].maxhp, 2);
                                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WISH_HEAL);
                                sp->next_server_seq_no = sp->server_seq_no;
                                sp->server_seq_no = 22;
                                ret = 1;
                            }
                            // "Move" everyone forward in line
                            if (sp->futureConditionQueueWrong[battlerId].wishExecutionOrder) {
                                sp->futureConditionQueueWrong[battlerId].wishExecutionOrder--;
                            }
                            if (sp->futureConditionQueueWrong[battlerId].futureSightOrDoomDesireExecutionOrder) {
                                sp->futureConditionQueueWrong[battlerId].futureSightOrDoomDesireExecutionOrder--;
                            }
                        }
                    }

                    if (ret == 0) {
                        // Decrement the counts first
                        if (sp->fcc.future_prediction_count[battlerId]) {
                            sp->fcc.future_prediction_count[battlerId]--;
                        }
                        if (sp->fcc.wish_count[battlerId]) {
                            sp->fcc.wish_count[battlerId]--;
                        }
                        sp->scc_work++;
                    }
                    break;
                }
*/
                if (sp->scc_work >= CLIENT_MAX * FUTURE_CONDITION_MAX) {
#ifdef DEBUG_ENDTURN_LOGIC
                    sprintf(buf, "Start cleaning\n");
                    debugsyscall(buf);
#endif
                    // remove effects that happened already
                    // deleteProcessedElements(sp->futureConditionQueue, CLIENT_MAX * FUTURE_CONDITION_MAX);

                    int flag = TRUE;
                    int i;
                    while (flag) {
                        // Find position of element to be deleted
                        for (i = 0; i < CLIENT_MAX * FUTURE_CONDITION_MAX; i++) {
                            if (sp->futureConditionQueue[i].conditionType.futureConditionType == FUTURE_CONDITION_NONE && sp->futureConditionQueue[i].affectedClient != 0) {
                                break;
                            }
                        }

                        int position = i == CLIENT_MAX * FUTURE_CONDITION_MAX ? -1 : i;

#ifdef DEBUG_ENDTURN_LOGIC
                    sprintf(buf, "Position: %d\n", position);
                    debugsyscall(buf);
#endif

                        if (position == -1) {
                            flag = FALSE;
                            break;
                        }

                        sp->futureConditionQueue[position].affectedClient = 0;

                        // Shifting elements
                        for (i = position; i < CLIENT_MAX * FUTURE_CONDITION_MAX - 1; i++) {
                            sp->futureConditionQueue[i].affectedClient = sp->futureConditionQueue[i + 1].affectedClient;
                            sp->futureConditionQueue[i].conditionType = sp->futureConditionQueue[i + 1].conditionType;
                        }
                        sp->futureConditionQueue[i].affectedClient = 0;
                        sp->futureConditionQueue[i].conditionType.futureConditionType = FUTURE_CONDITION_NONE;
                    }

                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }
                break;
            }
            case ENDTURN_FIRST_EVENT_BLOCK: {
#ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_FIRST_EVENT_BLOCK\n");
                debugsyscall(buf);
#endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];
                    // if (sp->no_reshuffle_client & No2Bit(battlerId)) {
                    //     sp->scc_work++;
                    //     continue;
                    // }

                    switch (sp->endTurnEventBlockSequenceNumber) {
                        // TODO
                        case FIRST_EVENT_BLOCK_SIDE_CONDITION_RESIDUAL_DAMAGE: {
                            #ifdef DEBUG_ENDTURN_LOGIC
                            sprintf(buf, "In FIRST_EVENT_BLOCK_SIDE_CONDITION_RESIDUAL_DAMAGE\n");
                            debugsyscall(buf);
                            #endif

                            sp->endTurnEventBlockSequenceNumber++;
                            break;
                        }
                        case FIRST_EVENT_BLOCK_GRASSY_TERRAIN: {
                            #ifdef DEBUG_ENDTURN_LOGIC
                            sprintf(buf, "In FIRST_EVENT_BLOCK_GRASSY_TERRAIN\n");
                            debugsyscall(buf);
                            #endif

                            if (sp->terrainOverlay.type == GRASSY_TERRAIN
                            && sp->battlemon[battlerId].hp
                            && sp->battlemon[battlerId].hp < (s32)sp->battlemon[battlerId].maxhp
                            && IsClientGrounded(sp, battlerId)) {
                                sp->battlerIdTemp = battlerId;
                                sp->hp_calc_work = BattleDamageDivide(sp->battlemon[battlerId].maxhp, 16);
                                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_FIELD_EFFECTS_END_OF_TURN);
                                sp->next_server_seq_no = sp->server_seq_no;
                                sp->server_seq_no = 22;
                                ret = 1;
                            }
                            sp->endTurnEventBlockSequenceNumber++;
                            break;
                        }
                        case FIRST_EVENT_BLOCK_ABILITY_HEAL_STATUS: {
                            #ifdef DEBUG_ENDTURN_LOGIC
                            sprintf(buf, "In FIRST_EVENT_BLOCK_ABILITY_HEAL_STATUS\n");
                            debugsyscall(buf);
                            #endif

                            switch (GetBattlerAbility(sp, battlerId)) {
                                case ABILITY_SHED_SKIN:
                                case ABILITY_HYDRATION:
                                    if ((GetBattlerAbility(sp, battlerId) == ABILITY_SHED_SKIN
                                    && sp->battlemon[battlerId].condition & STATUS_ANY_PERSISTENT
                                    && sp->battlemon[battlerId].hp
                                    && (BattleRand(bw) % 3 == 0))  // Generation V onward: Shed Skin has a 1/3 chance of curing the Pokémon.
                                    || (GetBattlerAbility(sp, battlerId) == ABILITY_HYDRATION
                                    && sp->field_condition & WEATHER_RAIN_ANY
                                    && sp->battlemon[battlerId].hp
                                    && (u8)sp->battlemon[battlerId].condition)) {
                                        seq_no = SUB_SEQ_SHED_SKIN;
                                        ret = TRUE;
                                    }
                                    break;
                                case ABILITY_HEALER:
                                    if ((sp->battlemon[BATTLER_ALLY(battlerId)].condition & STATUS_ANY_PERSISTENT) // if the partner of the client has a status condition
                                    && (sp->battlemon[battlerId].hp)
                                    && (sp->battlemon[BATTLER_ALLY(battlerId)].hp)
                                    && (BattleRand(bw) % 10 < 3)) // 30% chance
                                    {
                                        battlerId = BATTLER_ALLY(battlerId);
                                        seq_no = SUB_SEQ_HANDLE_HEALER;
                                        ret = TRUE;
                                    }
                                    break;
                                default:
                                    break;
                            }

                            if (ret) {
                                #ifdef DEBUG_ENDTURN_LOGIC
                                sprintf(buf, "condition: %d\n", sp->battlemon[battlerId].condition);
                                debugsyscall(buf);
                                #endif

                                // TODO: why is condition weird here?
                                if (sp->battlemon[battlerId].condition & STATUS_SLEEP) {
                                    #ifdef DEBUG_ENDTURN_LOGIC
                                    sprintf(buf, "In STATUS_FLAG_ASLEEP\n");
                                    debugsyscall(buf);
                                    #endif

                                    sp->msg_work = MSG_HEAL_SLEEP;
                                } else if (sp->battlemon[battlerId].condition & STATUS_POISON_ALL) {
                                    #ifdef DEBUG_ENDTURN_LOGIC
                                    sprintf(buf, "In STATUS_POISON_ANY\n");
                                    debugsyscall(buf);
                                    #endif

                                    sp->msg_work = MSG_HEAL_POISON;
                                } else if (sp->battlemon[battlerId].condition & STATUS_BURN) {
                                    #ifdef DEBUG_ENDTURN_LOGIC
                                    sprintf(buf, "In STATUS_FLAG_BURNED\n");
                                    debugsyscall(buf);
                                    #endif

                                    sp->msg_work = MSG_HEAL_BURN;
                                } else if (sp->battlemon[battlerId].condition & STATUS_PARALYSIS) {
                                    #ifdef DEBUG_ENDTURN_LOGIC
                                    sprintf(buf, "In STATUS_FLAG_PARALYZED\n");
                                    debugsyscall(buf);
                                    #endif

                                    sp->msg_work = MSG_HEAL_PARALYSIS;
                                } else {
                                    #ifdef DEBUG_ENDTURN_LOGIC
                                    sprintf(buf, "In MSG_HEAL_FROZEN\n");
                                    debugsyscall(buf);
                                    #endif

                                    sp->msg_work = MSG_HEAL_FROZEN;
                                }
                                sp->battlerIdTemp = battlerId;

                                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
                                sp->next_server_seq_no = sp->server_seq_no;
                                sp->server_seq_no = 22;
                            }

                            sp->endTurnEventBlockSequenceNumber++;
                            break;
                        }
                        case FIRST_EVENT_BLOCK_ITEM: {
                            #ifdef DEBUG_ENDTURN_LOGIC
                            sprintf(buf, "In FIRST_EVENT_BLOCK_ITEM\n");
                            debugsyscall(buf);
                            #endif

                            if (CheckItemGradualHPRestore(bw, sp, battlerId) == TRUE) {  // come back for this one
                                ret = 1;
                            }
                            sp->endTurnEventBlockSequenceNumber++;
                            break;
                        }
                        case FIRST_EVENT_BLOCK_END: {
                            #ifdef DEBUG_ENDTURN_LOGIC
                            sprintf(buf, "In FIRST_EVENT_BLOCK_END\n");
                            debugsyscall(buf);
                            #endif

                            sp->endTurnEventBlockSequenceNumber = 0;
                            sp->scc_work++;
                            break;
                        }
                    }
                    break;
                }

                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }

                break;
            }
            // TODO
            case ENDTURN_RESOLVE_SWITCHES_2: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_RESOLVE_SWITCHES_2\n");
                debugsyscall(buf);
                #endif

                sp->fcc_seq_no++;
                break;
            }
            case ENDTURN_AQUA_RING: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_AQUA_RING\n");
                debugsyscall(buf);
                #endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];

                    if ((sp->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_FLAG_AQUA_RING) && (u32)sp->battlemon[battlerId].hp != sp->battlemon[battlerId].maxhp && sp->battlemon[battlerId].hp != 0) {
                        if (sp->battlemon[battlerId].moveeffect.healBlockTurns) {
                            sp->battlerIdTemp = battlerId;
                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CANNOT_HEAL);
                        } else {
                            sp->battlerIdTemp = battlerId;
                            sp->waza_work = MOVE_AQUA_RING;
                            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[battlerId].maxhp, 16);
                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_AQUA_RING_HEAL);
                        }
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        ret = 1;
                    }

                    sp->scc_work++;
                    break;
                }
                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }
                break;
            }
            case ENDTURN_INGRAIN: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_INGRAIN\n");
                debugsyscall(buf);
                #endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];

                    if ((sp->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN)
                    && (u32)sp->battlemon[battlerId].hp != sp->battlemon[battlerId].maxhp
                    && sp->battlemon[battlerId].hp != 0) {
                        if (sp->battlemon[battlerId].moveeffect.healBlockTurns) {
                            sp->battlerIdTemp = battlerId;
                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CANNOT_HEAL);
                        } else {
                            sp->battlerIdTemp = battlerId;
                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_INGRAIN_HEAL);
                        }
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        ret = 1;
                    }

                    sp->scc_work++;
                    break;
                }

                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }
                break;
            }
            case ENDTURN_LEECH_SEED: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_LEECH_SEED\n");
                debugsyscall(buf);
                #endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];

                    if ((sp->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED_ACTIVE)
                    && (sp->battlemon[sp->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_LEECH_SEED_BATTLER].hp != 0)
                    && (GetBattlerAbility(sp, battlerId) != ABILITY_MAGIC_GUARD && sp->battlemon[battlerId].hp != 0)) {
                        sp->attack_client_work = sp->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_LEECH_SEED_BATTLER;
                        sp->defence_client_work = battlerId;
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_LEECH_SEED_DAMAGE);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        ret = 1;
                    }

                    sp->scc_work++;
                    break;
                }
                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }
                break;
            }
            case ENDTURN_POSION: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_POSION\n");
                debugsyscall(buf);
                #endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];

                    if ((sp->battlemon[battlerId].condition & STATUS_POISON) && sp->battlemon[battlerId].hp != 0) {
                        sp->battlerIdTemp = battlerId;
                        sp->hp_calc_work = BattleDamageDivide(sp->battlemon[battlerId].maxhp * -1, 8);
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_POISON_DAMAGE);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        ret = 1;
                    } else if ((sp->battlemon[battlerId].condition & STATUS_BAD_POISON) && sp->battlemon[battlerId].hp != 0) {
                        sp->battlerIdTemp = battlerId;
                        sp->hp_calc_work = BattleDamageDivide(sp->battlemon[battlerId].maxhp, 16);
                        if ((sp->battlemon[battlerId].condition & STATUS_POISON_COUNT) != STATUS_POISON_COUNT) {
                            sp->battlemon[battlerId].condition += 1 << 8;
                        }
                        sp->hp_calc_work *= ((sp->battlemon[battlerId].condition & STATUS_POISON_COUNT) >> 8);
                        sp->hp_calc_work *= -1;
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_POISON_DAMAGE);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        ret = 1;
                    }

                    sp->scc_work++;
                    break;
                }

                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }
                break;
            }
            case ENDTURN_BURN: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_BURN\n");
                debugsyscall(buf);
                #endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];

                    if ((sp->battlemon[battlerId].condition & STATUS_BURN) && sp->battlemon[battlerId].hp != 0) {
                        sp->battlerIdTemp = battlerId;
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BURN_DAMAGE);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        ret = 1;
                    }

                    sp->scc_work++;
                    break;
                }

                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }
                break;
            }
            case ENDTURN_NIGHTMARE: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_NIGHTMARE\n");
                debugsyscall(buf);
                #endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];

                    if ((sp->battlemon[battlerId].condition2 & STATUS2_NIGHTMARE) && sp->battlemon[battlerId].hp != 0) {
                        if (sp->battlemon[battlerId].condition & STATUS_SLEEP) {
                            sp->battlerIdTemp = battlerId;
                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_NIGHTMARE_DAMAGE);
                            sp->next_server_seq_no = sp->server_seq_no;
                            sp->server_seq_no = 22;
                            ret = 1;
                        } else {
                            sp->battlemon[battlerId].condition2 &= ~STATUS2_NIGHTMARE;
                        }
                    }

                    sp->scc_work++;
                    break;
                }

                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }
                break;
            }
            case ENDTURN_CURSE: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_CURSE\n");
                debugsyscall(buf);
                #endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];

                    if ((sp->battlemon[battlerId].condition2 & STATUS2_CURSE) && sp->battlemon[battlerId].hp != 0) {
                        sp->battlerIdTemp = battlerId;
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CURSE_DAMAGE);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        ret = 1;
                    }

                    sp->scc_work++;
                    break;
                }

                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }
                break;
            }
            case ENDTURN_TRAPPING_DAMAGE: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_TRAPPING_DAMAGE\n");
                debugsyscall(buf);
                #endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];

                    if (sp->binding_turns[battlerId] && sp->battlemon[battlerId].hp != 0) {
                        // sp->battlemon[battlerId].condition2 -= 1 << 13;
                        sp->binding_turns[battlerId]--;
                        if (sp->binding_turns[battlerId]) {
                            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[battlerId].maxhp * -1, 8);
                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CLAMP_DAMAGE);
                        } else {
                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CLAMP_END);
                        }
                        sp->waza_work = sp->battlemon[battlerId].moveeffect.bindingMove;
                        sp->battlerIdTemp = battlerId;
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        ret = 1;
                    }

                    sp->scc_work++;
                    break;
                }

                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }
                break;
            }
            // TODO
            case ENDTURN_OCTOLOCK: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_OCTOLOCK\n");
                debugsyscall(buf);
                #endif

                sp->fcc_seq_no++;
                break;
            }
            case ENDTURN_TAUNT_FADING: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_TAUNT_FADING\n");
                debugsyscall(buf);
                #endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];

                    if (sp->battlemon[battlerId].moveeffect.tauntTurns != 0) {
                        sp->battlemon[battlerId].moveeffect.tauntTurns--;
                        if (sp->battlemon[battlerId].moveeffect.tauntTurns == 0) {
                            sp->battlerIdTemp = battlerId;
                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_TAUNT_END);
                            sp->next_server_seq_no = sp->server_seq_no;
                            sp->server_seq_no = 22;
                            ret = 1;
                        }
                    }

                    sp->scc_work++;
                    break;
                }

                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }
                break;
            }
            // TODO
            case ENDTURN_TORMENT_FADING: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_TORMENT_FADING\n");
                debugsyscall(buf);
                #endif

                sp->fcc_seq_no++;
                break;
            }
            case ENDTURN_ENCORE_FADING: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_ENCORE_FADING\n");
                debugsyscall(buf);
                #endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];

                    if (sp->battlemon[battlerId].moveeffect.encoredMove) {
                        for (i = 0; i < 4; i++) {
                            if (sp->battlemon[battlerId].moveeffect.encoredMove == sp->battlemon[battlerId].move[i]) {
                                break;
                            }
                        }
                        if (i == 4 || (i != 4 && !sp->battlemon[battlerId].pp[i])) {
                            sp->battlemon[battlerId].moveeffect.encoredTurns = 0;
                        }
                        if (sp->battlemon[battlerId].moveeffect.encoredTurns) {
                            sp->battlemon[battlerId].moveeffect.encoredTurns--;
                        } else {
                            sp->battlemon[battlerId].moveeffect.encoredMove = 0;
                            sp->battlerIdTemp = battlerId;
                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ENCORE_END);
                            sp->next_server_seq_no = sp->server_seq_no;
                            sp->server_seq_no = 22;
                            ret = 1;
                        }
                    }

                    sp->scc_work++;
                    break;
                }

                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }
                break;
            }
            case ENDTURN_DISABLE_FADING: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_DISABLE_FADING\n");
                debugsyscall(buf);
                #endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];

                    if (sp->battlemon[battlerId].moveeffect.disabledMove) {
                        for (i = 0; i < 4; i++) {
                            if (sp->battlemon[battlerId].moveeffect.disabledMove == sp->battlemon[battlerId].move[i]) {
                                break;
                            }
                        }
                        if (i == 4) {
                            sp->battlemon[battlerId].moveeffect.disabledTurns = 0;
                        }
                        if (sp->battlemon[battlerId].moveeffect.disabledTurns) {
                            sp->battlemon[battlerId].moveeffect.disabledTurns--;
                        } else {
                            sp->battlemon[battlerId].moveeffect.disabledMove = 0;
                            sp->battlerIdTemp = battlerId;
                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_DISABLE_END);
                            sp->next_server_seq_no = sp->server_seq_no;
                            sp->server_seq_no = 22;
                            ret = 1;
                        }
                    }

                    sp->scc_work++;
                    break;
                }

                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }
                break;
            }
            case ENDTURN_MAGNET_RISE_FADING: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_MAGNET_RISE_FADING\n");
                debugsyscall(buf);
                #endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];

                    if (sp->battlemon[battlerId].moveeffect.magnetRiseTurns) {
                        if (--sp->battlemon[battlerId].moveeffect.magnetRiseTurns == 0) {
                            sp->battlerIdTemp = battlerId;
                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MAGNET_RISE_END);
                            sp->next_server_seq_no = sp->server_seq_no;
                            sp->server_seq_no = 22;
                            ret = 1;
                        }
                    }

                    sp->scc_work++;
                    break;
                }

                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }
                break;
            }
            // TODO
            case ENDTURN_TELEKINESIS_FADING: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_TELEKINESIS_FADING\n");
                debugsyscall(buf);
                #endif

                sp->fcc_seq_no++;
                break;
            }
            case ENDTURN_HEAL_BLOCK_FADING: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_HEAL_BLOCK_FADING\n");
                debugsyscall(buf);
                #endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];

                    if (sp->battlemon[battlerId].moveeffect.healBlockTurns) {
                        if (--sp->battlemon[battlerId].moveeffect.healBlockTurns == 0) {
                            sp->battlerIdTemp = battlerId;
                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HEAL_BLOCK_END);
                            sp->next_server_seq_no = sp->server_seq_no;
                            sp->server_seq_no = 22;
                            ret = 1;
                        }
                    }

                    sp->scc_work++;
                    break;
                }

                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }
                break;
            }
            case ENDTURN_EMBARGO_FADING: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_EMBARGO_FADING\n");
                debugsyscall(buf);
                #endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];

                    if (sp->battlemon[battlerId].moveeffect.embargoFlag) {
                        if (--sp->battlemon[battlerId].moveeffect.embargoFlag == 0) {
                            sp->battlerIdTemp = battlerId;
                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_EMBARGO_END);
                            sp->next_server_seq_no = sp->server_seq_no;
                            sp->server_seq_no = 22;
                            ret = 1;
                        }
                    }

                    sp->scc_work++;
                    break;
                }

                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }
                break;
            }
            case ENDTURN_YAWN: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_YAWN\n");
                debugsyscall(buf);
                #endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];

                    if (sp->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_YAWN_COUNTER) {
                        sp->battlemon[battlerId].effect_of_moves -= 1 << 11;
                        if ((sp->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_YAWN_COUNTER) == 0) {
                            sp->state_client = battlerId;
                            sp->addeffect_type = 4;
                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_APPLY_SLEEP);
                            sp->next_server_seq_no = sp->server_seq_no;
                            sp->server_seq_no = 22;
                            ret = 1;
                        }
                    }

                    sp->scc_work++;
                    break;
                }

                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }
                break;
            }
            // TODO: check correctness
            case ENDTURN_PERISH_COUNT: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_PERISH_COUNT\n");
                debugsyscall(buf);
                #endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];
                    if (sp->no_reshuffle_client & No2Bit(battlerId)) {
                        sp->scc_work++;
                        continue;
                    }
                    sp->scc_work++;
                    if (sp->battlemon[battlerId].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG_ACTIVE) {
                        if (sp->battlemon[battlerId].moveeffect.perishSongTurns == 0) {
                            sp->battlemon[battlerId].effect_of_moves &= ~MOVE_EFFECT_FLAG_PERISH_SONG_ACTIVE;
                            sp->msg_work = sp->battlemon[battlerId].moveeffect.perishSongTurns;
                            sp->hp_calc_work = sp->battlemon[battlerId].hp * -1;
                            sp->server_status_flag |= BATTLE_STATUS_NO_BLINK;
                        } else {
                            sp->msg_work = sp->battlemon[battlerId].moveeffect.perishSongTurns;
                            sp->battlemon[battlerId].moveeffect.perishSongTurns--;
                        }
                        sp->battlerIdTemp = battlerId;
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, 102);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                        return;
                    }
                }
                sp->fcc_seq_no++;
                sp->scc_work = 0;
                break;
            }
            // TODO
            case ENDTURN_ROOST_USERS_REGAINING_FLYING_TYPE: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_ROOST_USERS_REGAINING_FLYING_TYPE\n");
                debugsyscall(buf);
                #endif

                sp->fcc_seq_no++;
                break;
            }
            // TODO
            case ENDTURN_RESOLVE_SWITCHES_3: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_RESOLVE_SWITCHES_3\n");
                debugsyscall(buf);
                #endif

                sp->fcc_seq_no++;
                break;
            }
            case ENDTURN_SECOND_EVENT_BLOCK: {
#ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_SECOND_EVENT_BLOCK\n");
                debugsyscall(buf);
#endif

                // Host-based.
                // Whoever has their trainer card on the left side when the match starts is host,
                // and they will see side effects on their side wear off prior to the opponent's.
                //Court Change has no impact on this; the host's side will have their effects wear off first,
                // not the host's effects
                // (so it's unlike how, say, Court Change + Sticky Web + Defiant will fail to give your Pokemon an attack boost).
                while (sp->fcc_work < 2) {
                    side = sp->fcc_work;

                    switch (sp->endTurnEventBlockSequenceNumber) {
                            // TODO

                        case SECOND_EVENT_BLOCK_REFLECT_DISSIPATING: {
#ifdef DEBUG_ENDTURN_LOGIC
                            sprintf(buf, "In SECOND_EVENT_BLOCK_REFLECT_DISSIPATING\n");
                            debugsyscall(buf);
#endif

                            if (sp->side_condition[side] & SIDE_STATUS_REFLECT) {
#ifdef DEBUG_ENDTURN_LOGIC
                                sprintf(buf, "\n\nReflect side %d, turns left %d\n\n", side, sp->scw[side].reflectCount);
                                debugsyscall(buf);
#endif
                                if (--sp->scw[side].reflectCount == 0) {
                                    sp->side_condition[side] &= ~(SIDE_STATUS_REFLECT);
                                    sp->waza_work = MOVE_REFLECT;
                                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEAR_OFF);
                                    sp->next_server_seq_no = sp->server_seq_no;
                                    sp->server_seq_no = 22;
                                    sp->battlerIdTemp = ST_ServerDir2ClientNoGet(bw, sp, side);
                                    ret = 1;
                                }
                            }

                            sp->endTurnEventBlockSequenceNumber++;
                            break;
                        }
                        case SECOND_EVENT_BLOCK_LIGHT_SCREEN_DISSIPATING: {
#ifdef DEBUG_ENDTURN_LOGIC
                            sprintf(buf, "In SECOND_EVENT_BLOCK_LIGHT_SCREEN_DISSIPATING\n");
                            debugsyscall(buf);
#endif

                            if (sp->side_condition[side] & SIDE_STATUS_LIGHT_SCREEN) {
#ifdef DEBUG_ENDTURN_LOGIC
                                sprintf(buf, "\n\nLight Screen side %d, turns left %d\n\n", side, sp->scw[side].lightScreenCount);
                                debugsyscall(buf);
#endif
                                if (--sp->scw[side].lightScreenCount == 0) {
                                    sp->side_condition[side] &= ~(SIDE_STATUS_LIGHT_SCREEN);
                                    sp->waza_work = MOVE_LIGHT_SCREEN;
                                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEAR_OFF);
                                    sp->next_server_seq_no = sp->server_seq_no;
                                    sp->server_seq_no = 22;
                                    sp->battlerIdTemp = ST_ServerDir2ClientNoGet(bw, sp, side);
                                    ret = 1;
                                }
                            }

                            sp->endTurnEventBlockSequenceNumber++;
                            break;
                        }
                        case SECOND_EVENT_BLOCK_SAFEGUARD_DISSIPATING: {
#ifdef DEBUG_ENDTURN_LOGIC
                            sprintf(buf, "In SECOND_EVENT_BLOCK_SAFEGUARD_DISSIPATING\n");
                            debugsyscall(buf);
#endif

                            if (sp->side_condition[side] & SIDE_STATUS_SAFEGUARD) {
                                if (--sp->scw[side].safeguardCount == 0) {
                                    sp->side_condition[side] &= ~(SIDE_STATUS_SAFEGUARD);
                                    sp->battlerIdTemp = sp->scw[side].safeguardBattler;
                                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_END_SAFEGUARD);
                                    sp->next_server_seq_no = sp->server_seq_no;
                                    sp->server_seq_no = 22;
                                    sp->battlerIdTemp = ST_ServerDir2ClientNoGet(bw, sp, side);
                                    ret = 1;
                                }
                            }
                            sp->endTurnEventBlockSequenceNumber++;
                            break;
                        }
                        case SECOND_EVENT_BLOCK_MIST_DISSIPATING: {
#ifdef DEBUG_ENDTURN_LOGIC
                            sprintf(buf, "In SECOND_EVENT_BLOCK_MIST_DISSIPATING\n");
                            debugsyscall(buf);
#endif

                            if (sp->side_condition[side] & SIDE_STATUS_MIST) {
                                if (--sp->scw[side].mistCount == 0) {
                                    sp->side_condition[side] &= ~(SIDE_STATUS_MIST);
                                    sp->waza_work = MOVE_MIST;
                                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_MIST_END);
                                    sp->next_server_seq_no = sp->server_seq_no;
                                    sp->server_seq_no = 22;
                                    sp->battlerIdTemp = ST_ServerDir2ClientNoGet(bw, sp, side);
                                    ret = 1;
                                }
                            }

                            sp->endTurnEventBlockSequenceNumber++;
                            break;
                        }
                        case SECOND_EVENT_BLOCK_TAILWIND_DISSIPATING: {
#ifdef DEBUG_ENDTURN_LOGIC
                            sprintf(buf, "In SECOND_EVENT_BLOCK_TAILWIND_DISSIPATING\n");
                            debugsyscall(buf);
#endif

                            if (sp->tailwindCount[side])  // update tailwind to use a separate counter so it can be larger
                            {
                                if (--sp->tailwindCount[side] == 0) {
                                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_TAILWIND_END);
                                    sp->next_server_seq_no = sp->server_seq_no;
                                    sp->server_seq_no = 22;
                                    sp->battlerIdTemp = ST_ServerDir2ClientNoGet(bw, sp, side);
                                    ret = 1;

                                    // clear ability activated flag for wind power/rider
                                    for (int index = side; index < client_set_max; index += 2)
                                    {
                                        u32 currAbility = GetBattlerAbility(sp, index);
                                        if (currAbility == ABILITY_WIND_POWER || currAbility == ABILITY_WIND_RIDER)
                                        {
                                            sp->battlemon[index].ability_activated_flag = FALSE;
                                        }
                                    }
                                }
                            }
                            sp->endTurnEventBlockSequenceNumber++;
                            break;
                        }
                        case SECOND_EVENT_BLOCK_LUCKY_CHANT_DISSIPATING: {
#ifdef DEBUG_ENDTURN_LOGIC
                            sprintf(buf, "In SECOND_EVENT_BLOCK_LUCKY_CHANT_DISSIPATING\n");
                            debugsyscall(buf);
#endif

                            if (sp->side_condition[side] & SIDE_STATUS_LUCKY_CHANT) {
                                sp->side_condition[side] -= (1 << 12);
                                if ((sp->side_condition[side] & SIDE_STATUS_LUCKY_CHANT) == 0) {
                                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_LUCKY_CHANT_END);
                                    sp->next_server_seq_no = sp->server_seq_no;
                                    sp->server_seq_no = 22;
                                    sp->battlerIdTemp = ST_ServerDir2ClientNoGet(bw, sp, side);
                                    ret = 1;
                                }
                            }
                            sp->endTurnEventBlockSequenceNumber++;
                            break;
                        }
                        // TODO
                        case SECOND_EVENT_BLOCK_RAINBOW_DISSIPATING: {
#ifdef DEBUG_ENDTURN_LOGIC
                            sprintf(buf, "In SECOND_EVENT_BLOCK_RAINBOW_DISSIPATING\n");
                            debugsyscall(buf);
#endif

                            if (FALSE) {
                            }
                            sp->endTurnEventBlockSequenceNumber++;
                            break;
                        }
                        // TODO
                        case SECOND_EVENT_BLOCK_SEA_OF_FIRE_DISSIPATING: {
#ifdef DEBUG_ENDTURN_LOGIC
                            sprintf(buf, "In SECOND_EVENT_BLOCK_SEA_OF_FIRE_DISSIPATING\n");
                            debugsyscall(buf);
#endif
                            if (FALSE) {
                            }
                            sp->endTurnEventBlockSequenceNumber++;
                            break;
                        }
                        // TODO
                        case SECOND_EVENT_BLOCK_SWAMP_DISSIPATING: {
#ifdef DEBUG_ENDTURN_LOGIC
                            sprintf(buf, "In SECOND_EVENT_BLOCK_SWAMP_DISSIPATING\n");
                            debugsyscall(buf);
#endif
                            if (FALSE) {
                            }
                            sp->endTurnEventBlockSequenceNumber++;
                            break;
                        }
                        // TODO
                        case SECOND_EVENT_BLOCK_AURORA_VEIL_DISSIPATING: {
#ifdef DEBUG_ENDTURN_LOGIC
                            sprintf(buf, "In SECOND_EVENT_BLOCK_AURORA_VEIL_DISSIPATING\n");
                            debugsyscall(buf);
#endif

                            if (sp->side_condition[side] & SIDE_STATUS_AURORA_VEIL) {
#ifdef DEBUG_ENDTURN_LOGIC
                                sprintf(buf, "\n\nAurora Veil side %d, turns left %d\n\n", side, sp->scw[side].auroraVeilCount);
                                debugsyscall(buf);
#endif
                                if (--sp->scw[side].auroraVeilCount == 0) {
                                    sp->side_condition[side] &= ~(SIDE_STATUS_AURORA_VEIL);
                                    sp->waza_work = MOVE_AURORA_VEIL;
                                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WEAR_OFF);
                                    sp->next_server_seq_no = sp->server_seq_no;
                                    sp->server_seq_no = 22;
                                    sp->battlerIdTemp = ST_ServerDir2ClientNoGet(bw, sp, side);
                                    ret = 1;
                                }
                            }
                            
                            sp->endTurnEventBlockSequenceNumber++;
                            break;
                        }
                        case SECOND_EVENT_BLOCK_END: {
#ifdef DEBUG_ENDTURN_LOGIC
                            sprintf(buf, "In SECOND_EVENT_BLOCK_END\n");
                            debugsyscall(buf);
#endif

                            sp->endTurnEventBlockSequenceNumber = 0;
                            sp->fcc_work++;
                            break;
                        }
                    }
                    break;
                }

                if (sp->fcc_work >= 2) {
                    sp->fcc_work = 0;
                    sp->fcc_seq_no++;
                }

                break;
            }
            case ENDTURN_TRICK_ROOM_DISSIPATING: {
#ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_TRICK_ROOM_DISSIPATING\n");
                debugsyscall(buf);
#endif

                if (sp->field_condition & FIELD_STATUS_TRICK_ROOM) {
                    sp->field_condition -= 1 << FIELD_CONDITION_TRICK_ROOM_SHIFT;
                    if (!(sp->field_condition & FIELD_STATUS_TRICK_ROOM)) {
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, 251);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                        return;
                    }
                }
                sp->fcc_seq_no++;
                sp->scc_work = 0;
                break;
            }
            case ENDTURN_GRAVITY_DISSIPATING: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_GRAVITY_DISSIPATING\n");
                debugsyscall(buf);
                #endif

                if (sp->field_condition & FIELD_STATUS_GRAVITY) {
                    sp->field_condition -= (1 << 12);
                    if ((sp->field_condition & FIELD_STATUS_GRAVITY) == 0) {
                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_GRAVITY_END);
                        sp->next_server_seq_no = sp->server_seq_no;
                        sp->server_seq_no = 22;
                        ret = 1;
                    }
                }
                sp->fcc_seq_no++;
                break;
            }
            // TODO
            case ENDTURN_WATER_SPORT_DISSIPATING: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_WATER_SPORT_DISSIPATING\n");
                debugsyscall(buf);
                #endif

                sp->fcc_seq_no++;
                break;
            }
            // TODO
            case ENDTURN_MUD_SPORT_DISSIPATING: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_MUD_SPORT_DISSIPATING\n");
                debugsyscall(buf);
                #endif

                sp->fcc_seq_no++;
                break;
            }
            // TODO
            case ENDTURN_WONDER_ROOM_DISSIPATING: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_WONDER_ROOM_DISSIPATING\n");
                debugsyscall(buf);
                #endif

                sp->fcc_seq_no++;
                break;
            }
            // TODO
            case ENDTURN_MAGIC_ROOM_DISSIPATING: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_MAGIC_ROOM_DISSIPATING\n");
                debugsyscall(buf);
                #endif

                sp->fcc_seq_no++;
                break;
            }
            case ENDTURN_TERRAIN_DISSIPATING: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_TERRAIN_DISSIPATING\n");
                debugsyscall(buf);
                #endif

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
            }
            case ENDTURN_THIRD_EVENT_BLOCK: {
#ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_THIRD_EVENT_BLOCK\n");
                debugsyscall(buf);
#endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];
                    // if (sp->no_reshuffle_client & No2Bit(battlerId)) {
                    //     sp->scc_work++;
                    //     continue;
                    // }

                    switch (sp->endTurnEventBlockSequenceNumber) {
                        case THIRD_EVENT_BLOCK_UPROAR: {
#ifdef DEBUG_ENDTURN_LOGIC
                            debug_printf("In THIRD_EVENT_BLOCK_UPROAR\n", NULL);
#endif

                            if (sp->battlemon[battlerId].condition2 & STATUS2_UPROAR) {
                                u8 battlerIdSleep;
                                for (battlerIdSleep = 0; battlerIdSleep < client_set_max; battlerIdSleep++) {
                                    if ((sp->battlemon[battlerIdSleep].condition & STATUS_SLEEP) && sp->battlemon[battlerIdSleep].hp != 0 && GetBattlerAbility(sp, battlerIdSleep) != ABILITY_SOUNDPROOF) {
                                        sp->battlerIdTemp = battlerIdSleep;
                                        LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_WAKE_UP);
                                        sp->next_server_seq_no = sp->server_seq_no;
                                        sp->server_seq_no = 22;
                                        break;
                                    }
                                }
                                if (battlerIdSleep != client_set_max) {
                                    flag = 2;
                                    ret = 1;
                                    break;
                                }
                                sp->battlemon[battlerId].condition2 -= 1 << 4;
                                if (ov12_02252218(sp, battlerId)) {  // come back to this
                                    i = SUB_SEQ_UPROAR_END;
                                    sp->battlemon[battlerId].condition2 &= ~STATUS2_UPROAR;
                                    sp->field_condition &= (No2Bit(battlerId) << 8) ^ 0xFFFFFFFF;
                                } else if (sp->battlemon[battlerId].condition2 & STATUS2_UPROAR) {
                                    i = SUB_SEQ_MAKING_AN_UPROAR;
                                } else {
                                    i = SUB_SEQ_UPROAR_END;
                                    sp->battlemon[battlerId].condition2 &= ~STATUS2_UPROAR;
                                    sp->field_condition &= (No2Bit(battlerId) << 8) ^ 0xFFFFFFFF;
                                }
                                sp->battlerIdTemp = battlerId;
                                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, i);
                                sp->next_server_seq_no = sp->server_seq_no;
                                sp->server_seq_no = 22;
                                flag = 1;
                                ret = 1;
                            }
                            if (flag != 2) {
                                sp->endTurnEventBlockSequenceNumber++;
                            }
                            break;
                        }
                        case THIRD_EVENT_BLOCK_ABILITIES: {
#ifdef DEBUG_ENDTURN_LOGIC
                            debug_printf("In THIRD_EVENT_BLOCK_ABILITIES\n", NULL);
#endif

                            switch (GetBattlerAbility(sp, battlerId)) {
                                case ABILITY_SPEED_BOOST: {
                                    if ((sp->battlemon[battlerId].hp) && (sp->battlemon[battlerId].states[STAT_SPEED] < 12) && (sp->battlemon[battlerId].moveeffect.fakeOutCount != (sp->total_turn + 1))) {
                                        sp->addeffect_param = ADD_STATUS_EFF_BOOST_STATS_SPEED_UP;
                                        sp->addeffect_type = ADD_EFFECT_ABILITY;
                                        sp->state_client = battlerId;
                                        seq_no = SUB_SEQ_BOOST_STATS;
                                        ret = TRUE;
                                    }
                                    break;
                                }
                                case ABILITY_HARVEST: {
                                    if ((sp->battlemon[battlerId].hp)
                                    && IS_ITEM_BERRY(sp->recycle_item[battlerId])
                                    && ((BattleRand(bw) % 2 == 0) // 50% chance
                                    // OR sun is active + abilities are not fucking it
                                    || ((CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0)
                                    && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0)
                                    && (sp->field_condition & WEATHER_SUNNY_ANY))))
                                    {
                                        sp->item_work = sp->recycle_item[battlerId];
                                        sp->recycle_item[battlerId] = 0;
                                        sp->battlemon[battlerId].item = sp->item_work;
                                        seq_no = SUB_SEQ_HANDLE_HARVEST;
                                        ret = TRUE;
                                    }
                                    break;
                                }
                                case ABILITY_MOODY: {  // this is going to be interesting
                                    if (sp->battlemon[battlerId].hp) {
                                        // Use % 7 instead of %5 and pass FALSE to AreAnyStatsNotAtValue to include accuracy/evasion like earlier gens.

                                        int temp = BattleRand(bw) % 5;

                                        if (AreAnyStatsNotAtValue(sp, battlerId, 12, TRUE))  // if any stat can be lowered
                                        {
                                            while (sp->battlemon[battlerId].states[temp] == 12) {
                                                temp = BattleRand(bw) % 5;
                                            }
                                        } else {
                                            sp->calc_work = 8;  // skip the raising if this is the case
                                        }
                                        sp->calc_work = temp;

                                        temp = BattleRand(bw) % 5;

                                        if (AreAnyStatsNotAtValue(sp, battlerId, 0, TRUE))  // if any stat can be raised
                                        {
                                            while (sp->battlemon[battlerId].states[temp] == 0 || temp == sp->calc_work) {
                                                temp = BattleRand(bw) % 5;
                                            }
                                        } else {
                                            sp->tokusei_work = 8;  // skip the lowering if this is the case
                                        }
                                        sp->tokusei_work = temp;  // VAR_ABILITY_TEMP2

                                        sp->battlerIdTemp = battlerId;
                                        sp->state_client = battlerId;
                                        seq_no = SUB_SEQ_HANDLE_MOODY;
                                        ret = TRUE;
                                    }
                                    break;
                                }
                                case ABILITY_SLOW_START: {
                                    if ((sp->battlemon[battlerId].slow_start_end_flag == 0) && (sp->battlemon[battlerId].hp) && (GetBattlerAbility(sp, battlerId) == ABILITY_SLOW_START) && ((sp->total_turn - sp->battlemon[battlerId].moveeffect.slowStartTurns) == 5)) {
                                        sp->battlemon[battlerId].slow_start_end_flag = 1;
                                        sp->battlerIdTemp = battlerId;
                                        seq_no = SUB_SEQ_HANDLE_SLOW_START_END;
                                        ret = TRUE;
                                    }
                                    break;
                                }
                                case ABILITY_BAD_DREAMS: {
                                    while (sp->updateMonConditionData < client_set_max) {
                                        if (sp->updateMonConditionData != BATTLER_ALLY(battlerId) &&
                                        (sp->battlemon[sp->updateMonConditionData].condition & STATUS_SLEEP) &&
                                        GetBattlerAbility(sp, sp->updateMonConditionData) != ABILITY_MAGIC_GUARD &&
                                        sp->battlemon[sp->updateMonConditionData].hp != 0) {
                                            seq_no = SUB_SEQ_BAD_DREAMS;
                                            sp->hp_calc_work = BattleDamageDivide(sp->battlemon[sp->updateMonConditionData].maxhp * -1, 8); // 1/8 health drop, can probably put binding band in here too soon
#ifdef DEBUG_ENDTURN_LOGIC
                                            debug_printf("\n\nhp_calc_work: %d\n\n", sp->hp_calc_work);
#endif
                                            sp->server_status_flag |= BATTLE_STATUS_NO_BLINK;
                                            sp->attack_client = battlerId;
                                            sp->battlerIdTemp = sp->updateMonConditionData;
                                            ret = TRUE;
                                        }
                                        sp->updateMonConditionData++;
                                        break;
                                    }
                                }
                                default:
                                    break;
                            }

                            if (ret == TRUE) {
                                LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, seq_no);
                                sp->next_server_seq_no = sp->server_seq_no;
                                sp->server_seq_no = MOVE_SEQUENCE_NO;  // not sure what this corresponds to
                            }
                            if (GetBattlerAbility(sp, battlerId) == ABILITY_BAD_DREAMS) {
                                if (sp->updateMonConditionData >= client_set_max) {
                                    sp->updateMonConditionData = 0;
                                    sp->endTurnEventBlockSequenceNumber++;
                                }
                                break;
                            } else {
                                sp->endTurnEventBlockSequenceNumber++;
                                break;
                            }
                        }
                        case THIRD_EVENT_BLOCK_ITEMS: {
#ifdef DEBUG_ENDTURN_LOGIC
                            debug_printf("In THIRD_EVENT_BLOCK_ITEMS\n", NULL);
#endif
                            // Handle Toxic Orb, Flame Orb, Sticky Barb
                            if (TryHeldItemNegativeEffect(bw, sp, battlerId) == TRUE) {  // come back to this
                                ret = 1;
                            } else {
                                // Handle White Herb
                                switch (HeldItemHoldEffectGet(sp, battlerId)) {
                                    case HOLD_EFFECT_STATDOWN_RESTORE:  // White Herb
                                    {
                                        int stat;
                                        for (stat = 0; stat < 8; stat++) {
                                            if (sp->battlemon[battlerId].states[stat] < 6) {
                                                sp->battlemon[battlerId].states[stat] = 6;
                                                ret = TRUE;
                                            }
                                        }
                                        if (ret == TRUE) {
                                            LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ITEM_RECOVER_STAT_DROP);
                                            sp->next_server_seq_no = sp->server_seq_no;
                                            sp->server_seq_no = 22;
                                        }
                                        break;
                                    }
                                    default:
                                        break;
                                }
                            }

                            sp->endTurnEventBlockSequenceNumber++;
                            break;
                        }
                        case THIRD_EVENT_BLOCK_END: {
#ifdef DEBUG_ENDTURN_LOGIC
                            debug_printf("In THIRD_EVENT_BLOCK_END\n", NULL);
#endif
                            sp->endTurnEventBlockSequenceNumber = 0;
                            sp->scc_work++;
                            break;
                        }
                    }
                    break;
                }

                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }

                break;
            }
            // TODO
            case ENDTURN_RESOLVE_SWITCHES_4: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_RESOLVE_SWITCHES_4\n");
                debugsyscall(buf);
                #endif

                sp->fcc_seq_no++;
                break;
            }
            // TODO
            case ENDTURN_FORM_CHANGE: {
                #ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_FORM_CHANGE\n");
                debugsyscall(buf);
                #endif

                sp->fcc_seq_no++;
                break;
            }
            case ENDTURN_FORTH_EVENT_BLOCK: {
#ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_FORTH_EVENT_BLOCK\n");
                debugsyscall(buf);
#endif

                while (sp->scc_work < client_set_max) {
                    battlerId = sp->turnOrder[sp->scc_work];
                    // if (sp->no_reshuffle_client & No2Bit(battlerId)) {
                    //     sp->scc_work++;
                    //     continue;
                    // }

                    switch (sp->endTurnEventBlockSequenceNumber) {
                        // TODO
                        case FORTH_EVENT_BLOCK_HUNGER_SWITCH: {
#ifdef DEBUG_ENDTURN_LOGIC
                            debug_printf("In FORTH_EVENT_BLOCK_HUNGER_SWITCH\n", NULL);
#endif

                            sp->endTurnEventBlockSequenceNumber++;

                            break;
                        }
                        // TODO
                        case FORTH_EVENT_BLOCK_EJECT_PACK: {
#ifdef DEBUG_ENDTURN_LOGIC
                            debug_printf("In FORTH_EVENT_BLOCK_EJECT_PACK\n", NULL);
#endif

                            /*
                            if (HeldItemHoldEffectGet(sp, battlerId) == HOLD_EFFECT_SWITCH_OUT_ON_STAT_DROP) {
                                int stat;
                                for (stat = 0; stat < 8; stat++) {
                                    if (sp->battlemon[battlerId].states[stat] < 6) {
                                        sp->battlemon[battlerId].states[stat] = 6;
                                        ret = TRUE;
                                    }
                                }
                                if (ret == TRUE) {
                                    LoadBattleSubSeqScript(sp, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_SWITCHING_ITEMS);
                                    sp->next_server_seq_no = sp->server_seq_no;
                                    sp->server_seq_no = 22;
                                }
                            }
                            */

                            sp->endTurnEventBlockSequenceNumber++;
                            break;
                        }
                        case FORTH_EVENT_BLOCK_END: {
#ifdef DEBUG_ENDTURN_LOGIC
                            debug_printf("In FORTH_EVENT_BLOCK_END\n", NULL);
#endif
                            sp->endTurnEventBlockSequenceNumber = 0;
                            sp->scc_work++;
                            break;
                        }
                    }
                    break;
                }

                if (sp->scc_work >= client_set_max) {
                    sp->scc_work = 0;
                    sp->fcc_seq_no++;
                }

                break;
            }
            case ENDTURN_END: {
#ifdef DEBUG_ENDTURN_LOGIC
                sprintf(buf, "In ENDTURN_END\n");
                debugsyscall(buf);
#endif

                for (int i = 0; i < client_set_max; i++) {
                    sp->battlemon[i].moveeffect.quickClawFlag = 0;
                    sp->battlemon[i].moveeffect.custapBerryFlag = 0;
                    sp->numberOfTurnsClientHasCurrentAbility[i] = sp->numberOfTurnsClientHasCurrentAbility[i] + 1;

                    sp->moveConditionsFlags[i].endTurnMoveEffectActivated = 0;
                    sp->moveConditionsFlags[i].moveFailureLastTurn = sp->moveConditionsFlags[i].moveFailureThisTurn;
                    sp->moveConditionsFlags[i].moveFailureThisTurn = 0;
                }

                sp->playerSideHasFaintedTeammateLastTurn = sp->playerSideHasFaintedTeammateThisTurn;
                sp->enemySideHasFaintedTeammateLastTurn = sp->enemySideHasFaintedTeammateThisTurn;
                sp->playerSideHasFaintedTeammateThisTurn = 0;
                sp->enemySideHasFaintedTeammateThisTurn = 0;
                ret = 2;
                break;
            }
        }
    } while (ret == 0);

    if (ret == 1) {
        SCIO_BlankMessage(bw);
    }

    if (ret == 2) {
        sp->fcc_seq_no = 0;
        // skip the vanilla functions since we handle all of them here
        sp->server_seq_no = CONTROLLER_COMMAND_TURN_END;
    }
}
