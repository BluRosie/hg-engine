#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/overlay.h"
#include "../../include/pokemon.h"
#include "../../include/types.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/file.h"
#include "../../include/constants/item.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/q412.h"

static const u8 sResistBerries[] = {
    [TYPE_NORMAL]       = HOLD_EFFECT_WEAKEN_NORMAL,
    [TYPE_FIGHTING]     = HOLD_EFFECT_WEAKEN_SE_FIGHT,
    [TYPE_FLYING]       = HOLD_EFFECT_WEAKEN_SE_FLYING,
    [TYPE_POISON]       = HOLD_EFFECT_WEAKEN_SE_POISON,
    [TYPE_GROUND]       = HOLD_EFFECT_WEAKEN_SE_GROUND,
    [TYPE_ROCK]         = HOLD_EFFECT_WEAKEN_SE_ROCK,
    [TYPE_BUG]          = HOLD_EFFECT_WEAKEN_SE_BUG,
    [TYPE_GHOST]        = HOLD_EFFECT_WEAKEN_SE_GHOST,
    [TYPE_STEEL]        = HOLD_EFFECT_WEAKEN_SE_STEEL,
    [TYPE_FAIRY]        = HOLD_EFFECT_WEAKEN_SE_FAIRY,
    [TYPE_FIRE]         = HOLD_EFFECT_WEAKEN_SE_FIRE,
    [TYPE_WATER]        = HOLD_EFFECT_WEAKEN_SE_WATER,
    [TYPE_GRASS]        = HOLD_EFFECT_WEAKEN_SE_GRASS,
    [TYPE_ELECTRIC]     = HOLD_EFFECT_WEAKEN_SE_ELECTRIC,
    [TYPE_PSYCHIC]      = HOLD_EFFECT_WEAKEN_SE_PSYCHIC,
    [TYPE_ICE]          = HOLD_EFFECT_WEAKEN_SE_ICE,
    [TYPE_DRAGON]       = HOLD_EFFECT_WEAKEN_SE_DRAGON,
    [TYPE_DARK]         = HOLD_EFFECT_WEAKEN_SE_DARK,
};

static inline BOOL CheckResistBerry(int heldItemEffect, u8 moveType)
{
    return sResistBerries[moveType] == heldItemEffect;
}


static u16 sBoostedByMinimize[] = {
    MOVE_BODY_SLAM,
    MOVE_DRAGON_RUSH,
    MOVE_FLYING_PRESS,
    MOVE_HEAT_CRASH,
    MOVE_HEAVY_SLAM,
    MOVE_STEAMROLLER,
    MOVE_STOMP,
};

static BOOL Moves_BoostedByMinimize(u16 moveID)
{
    return IsElementInArray(sBoostedByMinimize, (u16 *)&moveID, NELEMS(sBoostedByMinimize), sizeof(sBoostedByMinimize[0]));
}


u16 Calc_ChainOtherModifiers(
    struct BattleStruct *server,
    struct CalcParams *attacker,
    struct CalcParams *defender,
    u32 battleType,
    u16 moveID,
    u8 moveType,
    u8 movePSS
)
{
    u16 chainMod = UQ412__1_0;

    #ifdef DEBUG_DAMAGE_CALC
    u8 buf[128];
    sprintf(buf, "[PLAT-ENGINE] Final Mods Chain:\n");
    debugsyscall(buf);
    #endif

    // TODO: Dynamax stuff goes here if we ever implement it (Behemoth Blade, Behemoth Bash, Dynamax Cannon)

    if (((moveID == MOVE_BEHEMOTH_BLADE) || (moveID == MOVE_BEHEMOTH_BASH) || (moveID == MOVE_DYNAMAX_CANNON))
            && server->battlemon[server->defence_client].is_currently_dynamaxed) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Defender is Dynamaxed: 2x\n");
        debugsyscall(buf);
        #endif

        chainMod = QMul_RoundUp(chainMod, UQ412__2_0);
    }

    if ((server->battlemon[server->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_MINIMIZED)
            && Moves_BoostedByMinimize(moveID)) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Defender is Minimized: 2x\n");
        debugsyscall(buf);
        #endif

        chainMod = QMul_RoundUp(chainMod, UQ412__2_0);
    }
    
    if (((moveID == MOVE_EARTHQUAKE) || (moveID == MOVE_MAGNITUDE))
            && server->battlemon[server->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_DIGGING) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Defender is Underground: 2x\n");
        debugsyscall(buf);
        #endif

        chainMod = QMul_RoundUp(chainMod, UQ412__2_0);
    }
    
    if (((moveID == MOVE_SURF) || (moveID == MOVE_WHIRLPOOL))
            && server->battlemon[server->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_IS_DIVING) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Defender is Underwater: 2x\n");
        debugsyscall(buf);
        #endif

        chainMod = QMul_RoundUp(chainMod, UQ412__2_0);
    }

    if (((moveID == MOVE_TWISTER) || (moveID == MOVE_GUST))
            && server->battlemon[server->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_FLYING_IN_AIR) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Defender is Airborne: 2x\n");
        debugsyscall(buf);
        #endif

        chainMod = QMul_RoundUp(chainMod, UQ412__2_0);
    }

    // Reflect / Light Screen / Aurora Veil checks
    if (attacker->ability == ABILITY_INFILTRATOR) {
        goto _NoScreenReduction;
    }

    // TODO: Aurora Veil
    // TODO: Check implemenation correctness
    u32 defendingSideConditions = server->side_condition[server->defence_client & 1];
    if (movePSS == SPLIT_PHYSICAL) {
        if (defendingSideConditions & SIDE_STATUS_REFLECT) {
            goto _ScreenReduction;
        }
    } else {
        if (defendingSideConditions & SIDE_STATUS_LIGHT_SCREEN) {
            goto _ScreenReduction;
        }
    }

    goto _NoScreenReduction;

_ScreenReduction:
    if (battleType & BATTLE_TYPE_DOUBLE) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Doubles Screen: 0.6666x\n");
        debugsyscall(buf);
        #endif

        chainMod = QMul_RoundUp(chainMod, UQ412__0_6666);
    } else {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Singles Screen: 0.5x\n");
        debugsyscall(buf);
        #endif

        chainMod = QMul_RoundUp(chainMod, UQ412__0_5);
    }

_NoScreenReduction:

    // 0.5x if the target has Multiscale (ignorable) or Shadow Shield and is at full HP.
    if ((defender->currentHP == defender->maxHP)
            && (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_MULTISCALE)
                    || defender->ability == ABILITY_SHADOW_SHIELD)) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Multiscale: 0.5x\n");
        debugsyscall(buf);
        #endif

        chainMod = QMul_RoundUp(chainMod, UQ412__0_5);
    }

    // 0.5x if the target has Fluffy, the move makes contact, and the attacker does not have Long Reach.
    if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_FLUFFY)
            && (attacker->ability != ABILITY_LONG_REACH)
            && (server->moveTbl[moveID].flag & FLAG_CONTACT)) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Fluffy (contact): 0.5x\n");
        debugsyscall(buf);
        #endif

        chainMod = QMul_RoundUp(chainMod, UQ412__0_5);
    }

    // 0.5x if the target has Punk Rock and the used move is sound-based.
    if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_PUNK_ROCK)
            && IsMoveSoundBased(moveID)) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Punk Rock: 0.5x\n");
        debugsyscall(buf);
        #endif

        chainMod = QMul_RoundUp(chainMod, UQ412__0_5);
    }

    // 0.5x if the target has Ice Scales and the used move is Special.
    if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_ICE_SCALES)
            && (movePSS == SPLIT_SPECIAL)) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Ice Scales: 0.5x\n");
        debugsyscall(buf);
        #endif

        chainMod = QMul_RoundUp(chainMod, UQ412__0_5);
    }

    if (MoldBreakerAbilityCheck(server, server->attack_client, BATTLER_ALLY(server->defence_client), ABILITY_FRIEND_GUARD)) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Friend Guard: 0.5x\n");
        debugsyscall(buf);
        #endif

        chainMod = QMul_RoundUp(chainMod, UQ412__0_75);
    }

    if (server->waza_status_flag & MOVE_STATUS_FLAG_SUPER_EFFECTIVE) {
        if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_FILTER)
                || MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_SOLID_ROCK)
                || defender->ability == ABILITY_PRISM_ARMOR) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Filter: 0.75x\n");
            debugsyscall(buf);
            #endif

            chainMod = QMul_RoundUp(chainMod, UQ412__0_75);
        }

        if (attacker->ability == ABILITY_NEUROFORCE) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Neuroforce: 1.25x\n");
            debugsyscall(buf);
            #endif

            chainMod = QMul_RoundUp(chainMod, UQ412__1_25);
        }

        if (moveID == MOVE_COLLISION_COURSE || moveID == MOVE_ELECTRO_DRIFT) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Collision Course/Electro Drift: 1.3333x\n");
            debugsyscall(buf);
            #endif

            chainMod = QMul_RoundUp(chainMod, UQ412__1_3333);
        }
    }

    if (server->critical && attacker->ability == ABILITY_SNIPER) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Sniper: 1.5x\n");
        debugsyscall(buf);
        #endif

        chainMod = QMul_RoundUp(chainMod, UQ412__1_5);
    }

    if ((server->waza_status_flag & MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE) && attacker->ability == ABILITY_TINTED_LENS) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Tinted Lens: 2.0x\n");
        debugsyscall(buf);
        #endif

        chainMod = QMul_RoundUp(chainMod, UQ412__2_0);
    }

    if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_FLUFFY)
            && moveType == TYPE_FIRE) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Fluffy (fire): 2.0x\n");
        debugsyscall(buf);
        #endif

        chainMod = QMul_RoundUp(chainMod, UQ412__2_0);
    }

    if (((moveType == TYPE_NORMAL) && (defender->heldItemEffect == HOLD_EFFECT_WEAKEN_NORMAL))
            || ((server->waza_status_flag & MOVE_STATUS_FLAG_SUPER_EFFECTIVE) && CheckResistBerry(defender->heldItemEffect, moveType))) {
        #ifdef DEBUG_DAMAGE_CALC
        // sprintf(buf, "[PLAT-ENGINE] -- Resist Berry for type: %s\n", sTypeStrings[moveType]);
        sprintf(buf, "[PLAT-ENGINE] -- Resist Berry for type: I don't care\n");
        debugsyscall(buf);
        #endif

        if (defender->ability == ABILITY_RIPEN) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] ---- Ripen: 0.25x\n");
            debugsyscall(buf);
            #endif

            chainMod = QMul_RoundUp(chainMod, UQ412__0_25);
        } else {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] ---- Normal: 0.5x\n");
            debugsyscall(buf);
            #endif

            chainMod = QMul_RoundUp(chainMod, UQ412__0_5);
        }
    }

    if (attacker->heldItemEffect == HOLD_EFFECT_POWER_UP_SE) {
        if (server->waza_status_flag & MOVE_STATUS_FLAG_SUPER_EFFECTIVE) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Expert Belt: 1.2x\n");
            debugsyscall(buf);
            #endif

            chainMod = QMul_RoundUp(chainMod, UQ412__1_2);
        }
    } else if (attacker->heldItemEffect == HOLD_EFFECT_HP_DRAIN_ON_ATK) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Life Orb: 1.3x\n");
        debugsyscall(buf);
        #endif
        
        chainMod = QMul_RoundUp(chainMod, UQ412__1_3);
    } else if (attacker->heldItemEffect == HOLD_EFFECT_BOOST_REPEATED) {
        u8 metronomeCount = server->battlemon[server->attack_client].moveeffect.metronomeTurns;
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Metronome Count: %d\n", metronomeCount);
        debugsyscall(buf);
        #endif

        u16 metronomeMod;
        if (metronomeCount < 6) {
            metronomeMod = QMul_RoundUp(chainMod, UQ412__1_0 + (UQ412__0_2 * (metronomeCount - 1)));
        } else {
            metronomeMod = UQ412__2_0;
        }

        chainMod = QMul_RoundUp(chainMod, metronomeMod);
    }

    #ifdef DEBUG_DAMAGE_CALC
    sprintf(buf, "[PLAT-ENGINE] Final modifier: %d\n\n", chainMod);
    debugsyscall(buf);
    #endif

    return chainMod;
}

