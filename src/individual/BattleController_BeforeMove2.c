#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/file.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/types.h"

// TODO: https://bulbapedia.bulbagarden.net/wiki/Ignoring_Abilities#Ignorable_Abilities
/*

Abilities are only ignored while the move is being executed. They take effect again immediately after its execution.

    Abilities that prevent status conditions (such as Immunity and Oblivious) will not protect the Pokémon from receiving the status condition. However, many of these Abilities also have effects to cure the Pokémon of the status condition if afflicted, which will activate immediately after being inflicted with the status condition, even if it was inflicted while the Ability was being ignored.
    If a Pokémon with Own Tempo consumes a held Berry that may cause confusion in response to the move that ignores Abilities, it will become confused if it dislikes the flavor. However, Own Tempo will then activate and cure it of confusion.

*/

static BOOL BattleController_CheckPrimalWeather(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    // Handle Extremely Harsh Sunlight and Heavy Rain
    if (!CheckSideAbility(bsys, ctx, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) && !CheckSideAbility(bsys, ctx, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK)) {
        if ((ctx->field_condition & WEATHER_EXTREMELY_HARSH_SUNLIGHT) && (ctx->move_type == TYPE_WATER)) {
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CANCEL_WATER_MOVE);
            ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
            return TRUE;
        }

        if ((ctx->field_condition & WEATHER_HEAVY_RAIN) && (ctx->move_type == TYPE_FIRE)) {
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CANCEL_FIRE_MOVE);
            ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
            return TRUE;
        }
    }
    return FALSE;
}

static BOOL BattleController_CheckBurnUpOrDoubleShock(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx) {
    int typeToCheck = 0;
    switch (ctx->current_move_index) {
        case MOVE_BURN_UP:
            typeToCheck = TYPE_FIRE;
            break;
        case MOVE_DOUBLE_SHOCK:
            typeToCheck = TYPE_ELECTRIC;
            break;

        default:
            return FALSE;
            break;
    }

    if (!HasType(ctx, ctx->attack_client, typeToCheck)) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_BUT_IT_FAILED_SPREAD);
        ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
        return TRUE;
    }
    return FALSE;
}

// TODO: Handle Pledge moves
static BOOL BattleController_CheckInterruptibleMoves(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx) {
    int effect = ctx->moveTbl[ctx->current_move_index].effect;
    if (effect == MOVE_EFFECT_HIT_IN_3_TURNS) {
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        return TRUE;
    }
    return FALSE;
}

// TODO: Check edge cases
static BOOL BattleController_CheckChargeMoves(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx) {
    if (ctx->battlemon[ctx->attack_client].condition2 & STATUS2_LOCKED_INTO_MOVE) {
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        return TRUE;
    }
    // need to BATTLE_SUBSCRIPT_CHARGE_MOVE_CLEANUP if fail below checks???
    return FALSE;
}

static BOOL BattleController_CheckStolenBySnatch(struct BattleSystem *bw UNUSED, struct BattleStruct *sp) {
    int i;
    int client_no;
    int client_set_max;

    client_set_max = BattleWorkClientSetMaxGet(bw);

    if (sp->defence_client == 0xFF) {
        return FALSE;
    }

    for (i = 0; i < client_set_max; i++) {
        client_no = sp->turnOrder[i];
        if (((sp->waza_status_flag & 0x801FDA49) == 0) && (sp->oneTurnFlag[client_no].snatchFlag) && (sp->moveTbl[sp->current_move_index].flag & FLAG_SNATCH)) {
            sp->battlerIdTemp = client_no;
            sp->oneTurnFlag[client_no].snatchFlag = 0;
            if ((sp->server_status_flag & (0x00100000)) == 0) {
                sp->waza_no_mamoru[sp->attack_client] = 0;
                sp->waza_no_old[sp->attack_client] = sp->moveNoTemp;
                sp->waza_no_last = sp->moveNoTemp;
                sp->server_status_flag |= (0x00100000);
            }
            LoadBattleSubSeqScript(sp, 1, SUB_SEQ_SNATCH);
            sp->next_server_seq_no = sp->server_seq_no;
            sp->server_seq_no = 22;
            CheckPressureForPPDecrease(sp, client_no, sp->attack_client);
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL BattleController_CheckSemiInvulnerability(struct BattleSystem *bsys UNUSED, struct BattleStruct *ctx, int defender) {
    if (!(ctx->waza_status_flag & MOVE_STATUS_FLAG_LOCK_ON)
    && !(GetBattlerAbility(ctx, ctx->attack_client) != ABILITY_NO_GUARD)
    && ctx->moveTbl[ctx->current_move_index].target != MOVE_TARGET_OPPONENTS_FIELD
    && (
        (!(ctx->server_status_flag & BATTLE_STATUS_HIT_FLY) && ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_FLYING_IN_AIR)
        || (!(ctx->server_status_flag & BATTLE_STATUS_SHADOW_FORCE) && ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_SHADOW_FORCE)
        || (!(ctx->server_status_flag & BATTLE_STATUS_HIT_DIG) && ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_DIGGING)
        || (!(ctx->server_status_flag & BATTLE_STATUS_HIT_DIVE) && ctx->battlemon[defender].effect_of_moves & MOVE_EFFECT_FLAG_IS_DIVING)
        )) {
        ctx->moveStatusFlagForSpreadMoves[defender] = WAZA_STATUS_FLAG_KIE_NOHIT;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_ATTACK_MISSED);
        ctx->next_server_seq_no = ctx->server_seq_no;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        return TRUE;
    }
    return FALSE;
}

static BOOL BattleController_CheckMoveFailures1(struct BattleSystem *bsys, struct BattleStruct *ctx) {
    int currentMoveIndex = ctx->current_move_index;
    int moveEffect = ctx->moveTbl[currentMoveIndex].effect;
    struct BattlePokemon attackClient = ctx->battlemon[ctx->attack_client];
    struct BattlePokemon defenceClient = ctx->battlemon[ctx->defence_client];
    int cnt = GetBattlerLearnedMoveCount(bsys, ctx, ctx->attack_client);
    int move;
    int attackerAbility = GetBattlerAbility(ctx, ctx->attack_client);

    // For Sucker Punch
    if (ctx->battlemon[ctx->defence_client].moveeffect.encoredMove && ctx->battlemon[ctx->defence_client].moveeffect.encoredMove == ctx->battlemon[ctx->defence_client].move[ctx->battlemon[ctx->defence_client].moveeffect.encoredMoveIndex]) {
        move = ctx->battlemon[ctx->defence_client].moveeffect.encoredMove;
    } else {
        move = GetBattlerSelectedMove(ctx, ctx->defence_client);
    }

    // TODO: client Transformed into the correct species can use the move as well
    // Dark Void when user isn't Darkrai
    if ((currentMoveIndex == MOVE_DARK_VOID && attackClient.species != SPECIES_DARKRAI)
    // Hyperspace Fury when user isn't Hoopa
    || (currentMoveIndex == MOVE_HYPERSPACE_FURY && attackClient.species != SPECIES_HOOPA)
    // Aura Wheel when user isn't Morpeko
    || (currentMoveIndex == MOVE_AURA_WHEEL && attackClient.species != SPECIES_MORPEKO)) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CANT_USE_MOVE);
        ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
        return TRUE;
    }
    // Hyperspace Fury when user is Hoopa Confined
    if (currentMoveIndex == MOVE_HYPERSPACE_FURY
    && attackClient.species == SPECIES_HOOPA
    && attackClient.form_no == 0) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CANT_USE_MOVE_HOOPA_CONFINED);
        ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
        return TRUE;
    }

    // Aurora Veil when it is not hailing
    if ((currentMoveIndex == MOVE_AURORA_VEIL && !(ctx->field_condition & WEATHER_HAIL_ANY || ctx->field_condition & WEATHER_SNOW_ANY))
    // Clangorous Soul when user lacks HP to execute the move
    || ((currentMoveIndex == MOVE_CLANGOROUS_SOUL) && (attackClient.hp < (attackClient.maxhp / 3)))
    // Fake Out / First Impression / Mat Block after user has already performed an action
    || ((currentMoveIndex == MOVE_FAKE_OUT || currentMoveIndex == MOVE_FIRST_IMPRESSION || currentMoveIndex == MOVE_MAT_BLOCK) && attackClient.moveeffect.fakeOutCount != ctx->total_turn)
    // Follow Me / Rage Powder in singles
    || ((currentMoveIndex == MOVE_FOLLOW_ME || currentMoveIndex == MOVE_RAGE_POWDER) && !(BattleTypeGet(bsys) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE)))
    // Future Sight / Doom Desire into target that already has future attack
    || (moveEffect == MOVE_EFFECT_HIT_IN_3_TURNS && (ctx->fcc.future_prediction_count[ctx->defence_client] != 0))
    // Poltergeist when the target does not have an item
    || (currentMoveIndex == MOVE_POLTERGEIST && defenceClient.item == ITEM_NONE)
    // Sleep Talk / Snore while not asleep
    || ((moveEffect == MOVE_EFFECT_USE_RANDOM_LEARNED_MOVE_SLEEP || moveEffect == MOVE_EFFECT_DAMAGE_WHILE_ASLEEP) && !(attackClient.condition & STATUS_SLEEP))
    // Rest while user is already asleep
    || (moveEffect == MOVE_EFFECT_RECOVER_HEALTH_AND_SLEEP && attackClient.condition & STATUS_SLEEP)
    // Steel Roller when there is no Terrain
    || (currentMoveIndex == MOVE_STEEL_ROLLER && ctx->terrainOverlay.type == TERRAIN_NONE)
    // Stuff Cheeks when user doesn't have a Berry
    || (currentMoveIndex == MOVE_STUFF_CHEEKS && !IS_ITEM_BERRY(attackClient.item))
    // Stockpile with 3 Stockpiles already
    || (moveEffect == MOVE_EFFECT_STOCKPILE && attackClient.moveeffect.stockpileCount == 3)
    // Swallow / Spit Up with 0 Stockpiles
    || ((moveEffect == MOVE_EFFECT_SWALLOW || moveEffect == MOVE_EFFECT_SPIT_UP) && attackClient.moveeffect.stockpileCount == 0)
    // Last Resort when user has not used all its other moves once or user does not have Last Resort in its moveslot
    || (moveEffect == MOVE_EFFECT_FAIL_IF_NOT_USED_ALL_OTHER_MOVES && (ctx->battlemon[ctx->attack_client].moveeffect.lastResortCount < cnt - 1 || cnt < 2))
    // Sucker Punch when target doesn't have an eligible move pending
    || (moveEffect == MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING && (ctx->playerActions[ctx->defence_client][3] == CONTROLLER_COMMAND_40 || (ctx->moveTbl[move].power == 0 && !ctx->oneTurnFlag[ctx->defence_client].struggle_flag)))
    // Teleport with nothing to switch to
    || (moveEffect == MOVE_EFFECT_FLEE_FROM_WILD_BATTLE && (BattleTypeGet(bsys) & BATTLE_TYPE_TRAINER) && !CanSwitchMon(bsys, ctx, ctx->attack_client))
    // TODO: Magic Room
    // Fling / Natural Gift: Embargo or Magic Room are in effect, or ineligible held item, or no item
    || ((moveEffect == MOVE_EFFECT_FLING || moveEffect == MOVE_EFFECT_NATURAL_GIFT) && attackClient.moveeffect.embargoFlag)
    ) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
        return TRUE;
    }

    // Counter / Mirror Coat / Metal Burst when user hasn't been damaged
    // TODO: Copied from BtlCmd_Counter, BtlCmd_TryMetalBurst, contradicts existing documentation
    int battlerId;
    BOOL flag = FALSE;

    int sideA = IsClientEnemy(bsys, ctx->attack_client);
    int sideB = 0;

    switch (ctx->current_move_index) {
        case MOVE_COUNTER:
            battlerId = ctx->oneTurnFlag[ctx->attack_client].physical_damager;
            sideB = IsClientEnemy(bsys, battlerId);
            if (!(ctx->oneTurnFlag[ctx->attack_client].physical_damage[battlerId] && sideA != sideB && ctx->battlemon[battlerId].hp)) {
                flag = TRUE;
                ctx->oneSelfFlag[ctx->attack_client].no_pressure_flag = 1;
            }
            break;
        case MOVE_MIRROR_COAT:
            battlerId = ctx->oneTurnFlag[ctx->attack_client].special_damager;
            sideB = IsClientEnemy(bsys, battlerId);
            if (!(ctx->oneTurnFlag[ctx->attack_client].special_damage[battlerId] && sideA != sideB && ctx->battlemon[battlerId].hp)) {
                ctx->oneSelfFlag[ctx->attack_client].no_pressure_flag = 1;
            }
            break;
        case MOVE_METAL_BURST:
            sideB = IsClientEnemy(bsys, ctx->oneTurnFlag[ctx->attack_client].last_damage);
            if (!(ctx->oneTurnFlag[ctx->attack_client].last_damage && sideA != sideB && ctx->battlemon[ctx->oneTurnFlag[ctx->attack_client].last_damager].hp)) {
                flag = TRUE;
            }
            break;
        default:
            break;
    }

    if (flag) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        ctx->server_seq_no = CONTROLLER_COMMAND_25;
        ctx->waza_status_flag |= MOVE_STATUS_FLAG_FAILED;
        return TRUE;
    }
    // Weight moves into Dynamax
    if (IsWeightMove(currentMoveIndex) && defenceClient.is_currently_dynamaxed) {
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
        ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
        LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_CANT_USE_MOVE_DYNAMAX_TARGET);
        ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
        ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
        ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
        return TRUE;
    }

    // TODO: Destiny Bond when user has "Destiny Bond" Y-info volatile
    // TODO: No Retreat when user has Can't Escape flag set by No Retreat
    // TODO: Refactor random roll location - Protecting move when user failed to repeat a successive protecting move
    // TODO: Protecting move when move is the last used in the turn

    // Following has to be in order

    if (moveEffect == MOVE_EFFECT_RECOVER_HEALTH_AND_SLEEP) {
        // Rest while user is at full HP
        if (attackClient.hp == attackClient.maxhp) {
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_RESTORE_HP_FULL_FAIL);
            ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
            return TRUE;
        }
        // Rest while user has Insomnia / Vital Spirit
        if (attackerAbility == ABILITY_INSOMNIA || attackerAbility == ABILITY_VITAL_SPIRIT) {
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_flag = 0;
            ctx->oneTurnFlag[ctx->attack_client].parental_bond_is_active = FALSE;
            // TODO: test
            ctx->battlerIdTemp = ctx->attack_client;
            LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_STAYED_AWAKE);
            ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
            ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
            ctx->waza_status_flag |= MOVE_STATUS_NO_MORE_WORK;
            return TRUE;
        }
    }
    return FALSE;
}

// https://stackoverflow.com/questions/2219829/how-can-i-prevent-gcc-optimizing-some-statements-in-c
void LONG_CALL __attribute__((optimize("O0"))) BattleController_BeforeMove2(struct BattleSystem *bsys, struct BattleStruct *ctx) {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
    debug_printf("In BattleController_BeforeMove2\n")
#endif

    switch (ctx->wb_seq_no) {
        case BEFORE_MOVE_STATE_MOVE_TYPE_CHANGES: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_MOVE_TYPE_CHANGES\n");
#endif

            ctx->move_type = GetAdjustedMoveType(ctx, ctx->attack_client, ctx->current_move_index);
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case BEFORE_MOVE_STATE_REDIRECT_TARGET: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_REDIRECT_TARGET\n");
#endif

            ctx->wb_seq_no++;
            if (ov12_02250BBC(bsys, ctx) == TRUE) {
                return;
            }
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_DECREMENT_PP: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_DECREMENT_PP\n");
#endif

            if ((ctx->waza_out_check_on_off & 0x8) == 0) {
                // pp检查
                if (ServerPPCheck(bsys, ctx) == TRUE)  // 801393Ch
                {
                    return;
                }
            }
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case BEFORE_MOVE_STATE_CHOICE_LOCK: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_CHOICE_LOCK\n");
#endif

            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_BURN_UP_OR_DOUBLE_SHOCK: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_BURN_UP_OR_DOUBLE_SHOCK\n");
#endif

            ctx->wb_seq_no++;
            if (BattleController_CheckBurnUpOrDoubleShock(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_PRIMAL_WEATHER: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_PRIMAL_WEATHER\n");
#endif

            ctx->wb_seq_no++;
            if (BattleController_CheckPrimalWeather(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_CONSUME_MICLE_BERRY_FLAG: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_CONSUME_MICLE_BERRY_FLAG\n");
#endif

            if (ctx->battlemon[ctx->attack_client].moveeffect.boostedAccuracy) {
                ctx->boostedAccuracy = TRUE;
                ctx->battlemon[ctx->attack_client].moveeffect.boostedAccuracy = 0;
            }

            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_MOVE_FAILURES_1: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_MOVE_FAILURES_1\n");
#endif

            ctx->wb_seq_no++;
            if (BattleController_CheckMoveFailures1(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        // TODO
        case BEFORE_MOVE_STATE_ABILITY_FAILURES_1: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_ABILITY_FAILURES_1\n");
#endif
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_INTERRUPTIBLE_MOVES: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_INTERRUPTIBLE_MOVES\n");
#endif

            ctx->wb_seq_no++;
            if (BattleController_CheckInterruptibleMoves(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_PROTEAN_OR_LIBERO: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_PROTEAN_OR_LIBERO\n");
#endif

            if ((ctx->battlemon[ctx->attack_client].ability == ABILITY_PROTEAN || ctx->battlemon[ctx->attack_client].ability == ABILITY_LIBERO)
                // if either type is not the move's type
                && (ctx->battlemon[ctx->attack_client].type1 != ctx->moveTbl[ctx->current_move_index].type || ctx->battlemon[ctx->attack_client].type2 != ctx->moveTbl[ctx->current_move_index].type)
                // Protean should activate only once per switch-in if gen 9 behavior
                && (ctx->battlemon[ctx->attack_client].ability_activated_flag == 0 || PROTEAN_GENERATION < 9)
                // the move has to have power in order for it to change the type
                && ctx->moveTbl[ctx->current_move_index].power != 0) {
                ctx->battlemon[ctx->attack_client].type1 = ctx->moveTbl[ctx->current_move_index].type;
                ctx->battlemon[ctx->attack_client].type2 = ctx->moveTbl[ctx->current_move_index].type;
#if PROTEAN_GENERATION >= 9
                ctx->battlemon[ctx->attack_client].ability_activated_flag = 1;
#endif
                LoadBattleSubSeqScript(ctx, ARC_BATTLE_SUB_SEQ, SUB_SEQ_HANDLE_PROTEAN_MESSAGE);
                ctx->msg_work = ctx->battlemon[ctx->attack_client].type1;
                ctx->battlerIdTemp = ctx->attack_client;
                ctx->next_server_seq_no = CONTROLLER_COMMAND_25;
                ctx->server_seq_no = CONTROLLER_COMMAND_RUN_SCRIPT;
                return;
            } else {
                ctx->wb_seq_no++;
            }
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_CHARGING_MOVE_MESSAGE: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_CHARGING_MOVE_MESSAGE\n");
#endif

            ctx->wb_seq_no++;
            if (BattleController_CheckChargeMoves(bsys, ctx)) {
                return;
            }
            FALLTHROUGH;
        }
        // TODO: split ServerWazaKoyuuCheck function, modernise
        case BEFORE_MOVE_STATE_CHECK_STOLEN_BY_SNATCH: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_CHECK_STOLEN_BY_SNATCH\n");
#endif

            if ((ctx->waza_out_check_on_off & 0x80) == 0) {
                if (ServerWazaKoyuuCheck(bsys, ctx) == TRUE && !ctx->moveStolen)  // 8014944h
                {
                    return;
                }
            }
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case BEFORE_MOVE_STATE_SET_EXPLOSION_SELF_DESTRUCT_FLAG: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_SET_EXPLOSION_SELF_DESTRUCT_FLAG\n");
#endif

            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // 攻击对象检查，包括了蓄力技能
        case BEFORE_MOVE_STATE_CHECK_NO_TARGET_OR_SELF: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_CHECK_NO_TARGET_OR_SELF\n");
#endif

            if (ServerDefenceCheck(bsys, ctx) == TRUE)  // 8013AD8h
            {
                return;
            }
            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case BEFORE_MOVE_STATE_SET_STEEL_BEAM_FLAG: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_SET_STEEL_BEAM_FLAG\n");
#endif

            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        // TODO
        case BEFORE_MOVE_STATE_CHECK_SKY_DROP_TARGET: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_CHECK_SKY_DROP_TARGET\n");
#endif

            ctx->wb_seq_no++;
            FALLTHROUGH;
        }
        case BEFORE_MOVE_STATE_SEMI_INVULNERABILITY: {
#ifdef DEBUG_BEFORE_MOVE_LOGIC
            debug_printf("In BEFORE_MOVE_STATE_SEMI_INVULNERABILITY\n");
#endif

            LoopCheckFunctionForSpreadMove(bsys, ctx, BattleController_CheckSemiInvulnerability);
            ctx->wb_seq_no++;
            // FALLTHROUGH;
            return;
        }
    }
}
