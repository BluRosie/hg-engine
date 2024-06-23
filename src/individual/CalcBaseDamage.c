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


struct EvoTable {
    struct Evolution data[7];
};



static const u8 HeldItemPowerUpTable[][2]={
    {HOLD_EFFECT_STRENGTHEN_BUG, TYPE_BUG},
    {HOLD_EFFECT_STRENGTHEN_STEEL, TYPE_STEEL},
    {HOLD_EFFECT_STRENGTHEN_GROUND, TYPE_GROUND},
    {HOLD_EFFECT_STRENGTHEN_ROCK, TYPE_ROCK},
    {HOLD_EFFECT_STRENGTHEN_GRASS, TYPE_GRASS},
    {HOLD_EFFECT_STRENGTHEN_DARK, TYPE_DARK},
    {HOLD_EFFECT_STRENGTHEN_FIGHT, TYPE_FIGHTING},
    {HOLD_EFFECT_STRENGTHEN_ELECTRIC, TYPE_ELECTRIC},
    {HOLD_EFFECT_STRENGTHEN_WATER, TYPE_WATER},
    {HOLD_EFFECT_STRENGTHEN_FLYING, TYPE_FLYING},
    {HOLD_EFFECT_STRENGTHEN_POISON, TYPE_POISON},
    {HOLD_EFFECT_STRENGTHEN_ICE, TYPE_ICE},
    {HOLD_EFFECT_STRENGTHEN_GHOST, TYPE_GHOST},
    {HOLD_EFFECT_STRENGTHEN_PSYCHIC, TYPE_PSYCHIC},
    {HOLD_EFFECT_STRENGTHEN_FIRE, TYPE_FIRE},
    {HOLD_EFFECT_STRENGTHEN_DRAGON, TYPE_DRAGON},
    {HOLD_EFFECT_STRENGTHEN_NORMAL, TYPE_NORMAL},
    {HOLD_EFFECT_ARCEUS_FIRE, TYPE_FIRE},
    {HOLD_EFFECT_ARCEUS_WATER, TYPE_WATER},
    {HOLD_EFFECT_ARCEUS_ELECTRIC, TYPE_ELECTRIC},
    {HOLD_EFFECT_ARCEUS_GRASS, TYPE_GRASS},
    {HOLD_EFFECT_ARCEUS_ICE, TYPE_ICE},
    {HOLD_EFFECT_ARCEUS_FIGHTING, TYPE_FIGHTING},
    {HOLD_EFFECT_ARCEUS_POISON, TYPE_POISON},
    {HOLD_EFFECT_ARCEUS_GROUND, TYPE_GROUND},
    {HOLD_EFFECT_ARCEUS_FLYING, TYPE_FLYING},
    {HOLD_EFFECT_ARCEUS_PSYCHIC, TYPE_PSYCHIC},
    {HOLD_EFFECT_ARCEUS_BUG, TYPE_BUG},
    {HOLD_EFFECT_ARCEUS_ROCK, TYPE_ROCK},
    {HOLD_EFFECT_ARCEUS_GHOST, TYPE_GHOST},
    {HOLD_EFFECT_ARCEUS_DRAGON, TYPE_DRAGON},
    {HOLD_EFFECT_ARCEUS_DARK, TYPE_DARK},
    {HOLD_EFFECT_ARCEUS_STEEL, TYPE_STEEL},
    {HOLD_EFFECT_ARCEUS_NORMAL, TYPE_NORMAL},
#if FAIRY_TYPE_IMPLEMENTED == 1
    {HOLD_EFFECT_STRENGTHEN_FAIRY, TYPE_FAIRY},
    {HOLD_EFFECT_ARCEUS_FAIRY, TYPE_FAIRY},
#endif
};

static const u16 IronFistMovesTable[] = {
    MOVE_BULLET_PUNCH,
    MOVE_COMET_PUNCH,
    MOVE_DIZZY_PUNCH,
    MOVE_DOUBLE_IRON_BASH,
    MOVE_DRAIN_PUNCH,
    MOVE_DYNAMIC_PUNCH,
    MOVE_FIRE_PUNCH,
    MOVE_FOCUS_PUNCH,
    MOVE_HAMMER_ARM,
    MOVE_HEADLONG_RUSH,
    MOVE_ICE_HAMMER,
    MOVE_ICE_PUNCH,
    MOVE_JET_PUNCH,
    MOVE_MACH_PUNCH,
    MOVE_MEGA_PUNCH,
    MOVE_METEOR_MASH,
    MOVE_PLASMA_FISTS,
    MOVE_POWER_UP_PUNCH,
    MOVE_RAGE_FIST,
    MOVE_SHADOW_PUNCH,
    MOVE_SKY_UPPERCUT,
    MOVE_SURGING_STRIKES,
    MOVE_THUNDER_PUNCH,
    MOVE_WICKED_BLOW,
};

static const u16 StrongJawMovesTable[] = {
        MOVE_BITE,
        MOVE_CRUNCH,
        MOVE_FIRE_FANG,
        MOVE_FISHIOUS_REND,
        MOVE_HYPER_FANG,
        MOVE_ICE_FANG,
        MOVE_JAW_LOCK,
        MOVE_POISON_FANG,
        MOVE_PSYCHIC_FANGS,
        MOVE_THUNDER_FANG,
};

static const u16 MegaLauncherMovesTable[] = {
        MOVE_AURA_SPHERE,
        MOVE_DARK_PULSE,
        MOVE_DRAGON_PULSE,
        MOVE_HEAL_PULSE,
        MOVE_ORIGIN_PULSE,
        MOVE_TERRAIN_PULSE,
        MOVE_WATER_PULSE,
};

static const u16 SharpnessMovesTable[] = {
        MOVE_AERIAL_ACE,
        MOVE_AIR_CUTTER,
        MOVE_AIR_SLASH,
        MOVE_AQUA_CUTTER,
        MOVE_BEHEMOTH_BLADE,
        MOVE_BITTER_BLADE,
        MOVE_CEASELESS_EDGE,
        MOVE_CROSS_POISON,
        MOVE_CUT,
        MOVE_FURY_CUTTER,
        MOVE_KOWTOW_CLEAVE,
        MOVE_LEAF_BLADE,
        MOVE_NIGHT_SLASH,
        MOVE_POPULATION_BOMB,
        MOVE_PSYBLADE,
        MOVE_PSYCHO_CUT,
        MOVE_RAZOR_SHELL,
        MOVE_RAZOR_LEAF,
        MOVE_SACRED_SWORD,
        MOVE_SECRET_SWORD,
        MOVE_SLASH,
        MOVE_SOLAR_BLADE,
        MOVE_STONE_AXE,
        MOVE_X_SCISSOR,
};

static const u16 sRecklessBoosted[] = {
    MOVE_BRAVE_BIRD,
    MOVE_CHLOROBLAST,
    MOVE_DOUBLE_EDGE,
    MOVE_FLARE_BLITZ,
    MOVE_HEAD_CHARGE,
    MOVE_HEAD_SMASH,
    MOVE_HIGH_JUMP_KICK,
    MOVE_JUMP_KICK,
    MOVE_LIGHT_OF_RUIN,
    MOVE_SUBMISSION,
    MOVE_TAKE_DOWN,
    MOVE_VOLT_TACKLE,
    MOVE_WAVE_CRASH,
    MOVE_WILD_CHARGE,
    MOVE_WOOD_HAMMER
};

#define __NORM     0
#define _IMMUN  0x7F
#define _NVEFF    -1
#define _SPEFF     1

/**
 * NxN matrix, modeled as an attacking type vs a defensive type. Each
 * value S in the matrix is one of the following values:
 *   -    0 -> no modifier
 *   -    1 -> attacking type is super effective
 *   -   -1 -> attacking type is not very effective
 *   - 0x7F -> defending type is immune
 * 
 * These values can be interpreted as the leftward shift to apply to
 * UQ412__1_0 for a particular matchup. e.g., if an attacking type is
 * super effective against the defending type, the type modifier becomes
 * UQ412__1_0 << 1, which is equivalent to UQ412__2_0. If the defender is
 * dual-type and its second type resists the attacking type, then the
 * final modifier would then be UQ412__2_0 >> 1, which is UQ412__1_0.
 * 
 * If the value stored is 0xFF (an immunity), then other special cases
 * need to be handled elsewhere (e.g. Scrappy, Foresight, Roost).
 *
 * This table as provided is up-to-date as of generation 9.
 */
static const s8 sTypeEffectiveness[18][18] = {
    // attacking type    vs:  NORM,  FIGHT, FLYING, POISON, GROUND,   ROCK,    BUG,  GHOST,  STEEL,  FAIRY,   FIRE,  WATER,  GRASS, ELECTR, PSYCHC,    ICE, DRAGON,   DARK
    [TYPE_NORMAL]       = { __NORM, __NORM, __NORM, __NORM, __NORM, _NVEFF, __NORM, _IMMUN, _NVEFF, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM },
    [TYPE_FIGHTING]     = { _SPEFF, __NORM, _NVEFF, _NVEFF, __NORM, _SPEFF, _NVEFF, _IMMUN, _SPEFF, _NVEFF, __NORM, __NORM, __NORM, __NORM, _NVEFF, _SPEFF, __NORM, _SPEFF },
    [TYPE_FLYING]       = { __NORM, _SPEFF, __NORM, __NORM, __NORM, _NVEFF, _SPEFF, __NORM, _NVEFF, __NORM, __NORM, __NORM, _SPEFF, __NORM, __NORM, __NORM, __NORM, __NORM },
    [TYPE_POISON]       = { __NORM, __NORM, __NORM, _NVEFF, _NVEFF, _NVEFF, __NORM, _NVEFF, _IMMUN, _SPEFF, __NORM, __NORM, _SPEFF, __NORM, __NORM, __NORM, __NORM, __NORM },
    [TYPE_GROUND]       = { __NORM, __NORM, _IMMUN, _SPEFF, __NORM, _SPEFF, _NVEFF, __NORM, _SPEFF, __NORM, _SPEFF, __NORM, _NVEFF, _SPEFF, __NORM, __NORM, __NORM, __NORM },
    [TYPE_ROCK]         = { __NORM, _NVEFF, _SPEFF, __NORM, _NVEFF, __NORM, _SPEFF, __NORM, _NVEFF, __NORM, _SPEFF, __NORM, __NORM, __NORM, __NORM, _SPEFF, __NORM, __NORM },
    [TYPE_BUG]          = { __NORM, _NVEFF, _NVEFF, _NVEFF, __NORM, __NORM, __NORM, _NVEFF, _NVEFF, _NVEFF, _NVEFF, __NORM, _SPEFF, __NORM, _SPEFF, __NORM, __NORM, _SPEFF },
    [TYPE_GHOST]        = { _IMMUN, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, _SPEFF, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, _SPEFF, __NORM, __NORM, _NVEFF },
    [TYPE_STEEL]        = { __NORM, __NORM, __NORM, __NORM, __NORM, _SPEFF, __NORM, __NORM, _NVEFF, _SPEFF, _NVEFF, _NVEFF, __NORM, _NVEFF, __NORM, _SPEFF, __NORM, __NORM },
    [TYPE_FAIRY]        = { __NORM, _SPEFF, __NORM, _NVEFF, __NORM, __NORM, __NORM, __NORM, _NVEFF, __NORM, _NVEFF, __NORM, __NORM, __NORM, __NORM, __NORM, _SPEFF, _SPEFF },
    [TYPE_FIRE]         = { __NORM, __NORM, __NORM, __NORM, __NORM, _NVEFF, _SPEFF, __NORM, _SPEFF, __NORM, _NVEFF, _NVEFF, _SPEFF, __NORM, __NORM, _SPEFF, _NVEFF, __NORM },
    [TYPE_WATER]        = { __NORM, __NORM, __NORM, __NORM, _SPEFF, _SPEFF, __NORM, __NORM, __NORM, __NORM, _SPEFF, _NVEFF, _NVEFF, __NORM, __NORM, __NORM, _NVEFF, __NORM },
    [TYPE_GRASS]        = { __NORM, __NORM, _NVEFF, _NVEFF, _SPEFF, _SPEFF, _NVEFF, __NORM, _NVEFF, __NORM, _NVEFF, _SPEFF, _NVEFF, __NORM, __NORM, __NORM, _NVEFF, __NORM },
    [TYPE_ELECTRIC]     = { __NORM, __NORM, _SPEFF, __NORM, _IMMUN, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, _SPEFF, _NVEFF, _NVEFF, __NORM, __NORM, _NVEFF, __NORM },
    [TYPE_PSYCHIC]      = { __NORM, _SPEFF, __NORM, _SPEFF, __NORM, __NORM, __NORM, __NORM, _NVEFF, __NORM, __NORM, __NORM, __NORM, __NORM, _NVEFF, __NORM, __NORM, _IMMUN },
    [TYPE_ICE]          = { __NORM, __NORM, _SPEFF, __NORM, _SPEFF, __NORM, __NORM, __NORM, _NVEFF, __NORM, _NVEFF, _NVEFF, _SPEFF, __NORM, __NORM, _NVEFF, _SPEFF, __NORM },
    [TYPE_DRAGON]       = { __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, _NVEFF, _IMMUN, __NORM, __NORM, __NORM, __NORM, __NORM, __NORM, _SPEFF, __NORM },
    [TYPE_DARK]         = { __NORM, _NVEFF, __NORM, __NORM, __NORM, __NORM, __NORM, _SPEFF, __NORM, _NVEFF, __NORM, __NORM, __NORM, __NORM, _SPEFF, __NORM, __NORM, _NVEFF },
};

static const u8 sTypeBoostingItems[] = {
    [TYPE_NORMAL]       = HOLD_EFFECT_STRENGTHEN_NORMAL,
    [TYPE_FIGHTING]     = HOLD_EFFECT_STRENGTHEN_FIGHT,
    [TYPE_FLYING]       = HOLD_EFFECT_STRENGTHEN_FLYING,
    [TYPE_POISON]       = HOLD_EFFECT_STRENGTHEN_POISON,
    [TYPE_GROUND]       = HOLD_EFFECT_STRENGTHEN_GROUND,
    [TYPE_ROCK]         = HOLD_EFFECT_STRENGTHEN_ROCK,
    [TYPE_BUG]          = HOLD_EFFECT_STRENGTHEN_BUG,
    [TYPE_GHOST]        = HOLD_EFFECT_STRENGTHEN_GHOST,
    [TYPE_STEEL]        = HOLD_EFFECT_STRENGTHEN_STEEL,
    [TYPE_FAIRY]        = HOLD_EFFECT_STRENGTHEN_FAIRY,
    [TYPE_FIRE]         = HOLD_EFFECT_STRENGTHEN_FIRE,
    [TYPE_WATER]        = HOLD_EFFECT_STRENGTHEN_WATER,
    [TYPE_GRASS]        = HOLD_EFFECT_STRENGTHEN_GRASS,
    [TYPE_ELECTRIC]     = HOLD_EFFECT_STRENGTHEN_ELECTRIC,
    [TYPE_PSYCHIC]      = HOLD_EFFECT_STRENGTHEN_PSYCHIC,
    [TYPE_ICE]          = HOLD_EFFECT_STRENGTHEN_ICE,
    [TYPE_DRAGON]       = HOLD_EFFECT_STRENGTHEN_DRAGON,
    [TYPE_DARK]         = HOLD_EFFECT_STRENGTHEN_DARK,
};

static const u8 sTypePlates[] = {
    [TYPE_NORMAL]       = HOLD_EFFECT_ARCEUS_NORMAL,
    [TYPE_FIGHTING]     = HOLD_EFFECT_ARCEUS_FIGHTING,
    [TYPE_FLYING]       = HOLD_EFFECT_ARCEUS_FLYING,
    [TYPE_POISON]       = HOLD_EFFECT_ARCEUS_POISON,
    [TYPE_GROUND]       = HOLD_EFFECT_ARCEUS_GROUND,
    [TYPE_ROCK]         = HOLD_EFFECT_ARCEUS_ROCK,
    [TYPE_BUG]          = HOLD_EFFECT_ARCEUS_BUG,
    [TYPE_GHOST]        = HOLD_EFFECT_ARCEUS_GHOST,
    [TYPE_STEEL]        = HOLD_EFFECT_ARCEUS_STEEL,
    [TYPE_FAIRY]        = HOLD_EFFECT_ARCEUS_FAIRY,
    [TYPE_FIRE]         = HOLD_EFFECT_ARCEUS_FIRE,
    [TYPE_WATER]        = HOLD_EFFECT_ARCEUS_WATER,
    [TYPE_GRASS]        = HOLD_EFFECT_ARCEUS_GRASS,
    [TYPE_ELECTRIC]     = HOLD_EFFECT_ARCEUS_ELECTRIC,
    [TYPE_PSYCHIC]      = HOLD_EFFECT_ARCEUS_PSYCHIC,
    [TYPE_ICE]          = HOLD_EFFECT_ARCEUS_ICE,
    [TYPE_DRAGON]       = HOLD_EFFECT_ARCEUS_DRAGON,
    [TYPE_DARK]         = HOLD_EFFECT_ARCEUS_DARK,
};

static const u8 sGems[] = {
    [TYPE_NORMAL]       = HOLD_EFFECT_GEM_NORMAL,
    [TYPE_FIGHTING]     = HOLD_EFFECT_GEM_FIGHTING,
    [TYPE_FLYING]       = HOLD_EFFECT_GEM_FLYING,
    [TYPE_POISON]       = HOLD_EFFECT_GEM_POISON,
    [TYPE_GROUND]       = HOLD_EFFECT_GEM_GROUND,
    [TYPE_ROCK]         = HOLD_EFFECT_GEM_ROCK,
    [TYPE_BUG]          = HOLD_EFFECT_GEM_BUG,
    [TYPE_GHOST]        = HOLD_EFFECT_GEM_GHOST,
    [TYPE_STEEL]        = HOLD_EFFECT_GEM_STEEL,
    [TYPE_FAIRY]        = HOLD_EFFECT_GEM_FAIRY,
    [TYPE_FIRE]         = HOLD_EFFECT_GEM_FIRE,
    [TYPE_WATER]        = HOLD_EFFECT_GEM_WATER,
    [TYPE_GRASS]        = HOLD_EFFECT_GEM_GRASS,
    [TYPE_ELECTRIC]     = HOLD_EFFECT_GEM_ELECTRIC,
    [TYPE_PSYCHIC]      = HOLD_EFFECT_GEM_PSYCHIC,
    [TYPE_ICE]          = HOLD_EFFECT_GEM_ICE,
    [TYPE_DRAGON]       = HOLD_EFFECT_GEM_DRAGON,
    [TYPE_DARK]         = HOLD_EFFECT_GEM_DARK,
};

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

static inline BOOL WeatherIsActive(struct BattleSystem *battle, struct BattleStruct *server, u32 weatherMask) {
    return (server->field_condition & weatherMask)
            && (CheckSideAbility(battle, server, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0)
            && (CheckSideAbility(battle, server, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0);
}

static inline BOOL AllyHasAbility(struct BattleStruct *server, int battler, u16 ability)
{
    // Ally is the battler which has the same parity as ours
    // Just get the battler which has the input ability, XOR it with the requesting battler,
    // and check that bit 0 of the result is 0
    //
    //  XOR | 0 | 1 | 2 | 3 |
    //  ----|---|---|---|---|
    //    0 | X | 1 | 0 | 1 |
    //    1 | 1 | X | 1 | 0 |
    //    2 | 0 | 1 | X | 1 |
    //    3 | 1 | 0 | 1 | X |
    return server->battlemon[BATTLER_ALLY(battler)].ability == ability;
}

// this needs to be refactored
static inline u16 Calc_StatWithStages(u16 stat, u8 stage)
{
    return stat * StatBoostModifiers[stage][0] / StatBoostModifiers[stage][1];
}

static u16 Calc_AttackerStat(u16 stat, u8 stage, BOOL unaware, BOOL critical)
{
    /*
     * Ignore stat stages if Unaware is active for this stat.
     *
     * Ignore detrimental stages on criticals.
     *
     * Also shortcut for neutral stat.
     */
    if ((stage == 6) || unaware || (critical && (stage < 6))) {
        return stat;
    }

    return Calc_StatWithStages(stat, stage);
}

static u16 Calc_DefenderStat(u16 stat, u8 stage, BOOL unaware, BOOL critical)
{
    /*
     * Ignore stat stages if Unaware is active for this stat.
     *
     * Ignore beneficial stages on criticals.
     *
     * Also shortcut for neutral stat.
     */
    if ((stage == 6) || unaware || (critical && (stage > 6))) {
        return stat;
    }

    return Calc_StatWithStages(stat, stage);
}

static inline BOOL SlowStartActive(struct BattleSystem *battle, struct BattleStruct *server)
{
    return server->total_turn - server->battlemon[server->attack_client].moveeffect.slowStartTurns < 5;
}

static inline BOOL CheckResistBerry(int heldItemEffect, u8 moveType)
{
    return sResistBerries[moveType] == heldItemEffect;
}

// TODO
/*
static BOOL Pokemon_IsNFE(u16 species, u32 form)
{
    struct EvoTable *evos = sys_AllocMemoryLo(0, sizeof(struct EvoTable));
    Pokemon_Evolutions(Form_GetTrueSpecies(species, form), evos);

    // Check for any possible evolutions
    for (unsigned int i = 0; i < 7; i++) {
        struct EvoData *data = &evos->data[i];
        if (data->condition != 0
                && data->param != 0
                && data->target != 0) {
            return TRUE;
        }
    }

    // No evolutions found, so this mon is fully-evolved.
    return FALSE;
}
*/

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


/**
 * @brief Computes the modified base power for a move, considering all abilities of the attacker
 * attacker's partner, and defender as well as all items which would affect it.
 * 
 * @param battle 
 * @param server 
 * @param attacker 
 * @param defender 
 * @param moveID 
 * @param movePower 
 * @param moveType 
 * @param movePSS 
 * @param isAteAbility 
 * @return u16 
 */
static u16 Calc_ModifiedBasePower(
    struct BattleSystem *battle,
    struct BattleStruct *server,
    struct CalcParams *attacker,
    struct CalcParams *defender,
    u16 moveID,
    u16 movePower,
    u8 movePSS,
    u8 moveType,
    BOOL isAteAbility
)
{
    /*
     * Certain moves are expected to input some multipliers as part of their effect scripts, e.g.:
     *  - Facade, if the user is burned/paralyzed/poisoned
     *  - Brine, if the target's current HP is half or less of its maximum (rounded down)
     *  - Venoshock and Barb Barrage, if the target is poisoned
     *  - Retaliate, if a Pokemon in the user's party fainted last turn
     *  - Fusion Flare/Bolt, if the most recently used move in the turn was the opposite move
     *  - Lash Out, if any of the attacker's stats were lowered on this turn
     *  - Solar Beam/Blade, if the weather is an active rain/sand/snow/fog effect
     *  - Knock Off, if the target is holding an item that can be removed when the move is executed
     *  - Grav Apple, if Gravity is in effect
     *  - Misty Explosion, if the user is grounded on Misty Terrain
     *  - Expanding Force, if the user is grounded on Psychic Terrain
     *  - Psyblade, if the user is grounded on Electric Terrain
     * 
     * This multiplier is passed as a value which is expected to be in Q4.12 format.
     */
    int i;
    u16 powerMod = server->damage_value;
    #ifdef DEBUG_DAMAGE_CALC
    u8 buf[128];
    sprintf(buf, "[PLAT-ENGINE] Initial power mod: %d\n", powerMod);
    debugsyscall(buf);
    #endif

    // 2x if the attacker is under the effect of Charge and the used move is Electric-type.
    if ((server->battlemon[server->attack_client].effect_of_moves & MOVE_EFFECT_FLAG_CHARGE) && (moveType == TYPE_ELECTRIC)) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Charge active: 2x\n");
        debugsyscall(buf);
        #endif

        powerMod = QMul_RoundUp(powerMod, UQ412__2_0);
    }

    // 1.5x if the used move was stolen via Me First.
    if ((server->battlemon[server->attack_client].moveeffect.meFirstFlag)) {
        // Turn has been taken for the calling attacker
        if (server->me_first_total_turns == server->battlemon[server->attack_client].moveeffect.meFirstCount) {
            server->battlemon[server->attack_client].moveeffect.meFirstCount--;
        }

        if (server->me_first_total_turns - server->battlemon[server->attack_client].moveeffect.meFirstCount < 2) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Me First active: 1.5x\n");
            debugsyscall(buf);
            #endif

            powerMod = QMul_RoundUp(powerMod, UQ412__1_5);
        }
    }

    // 1.5x if the attacker's ally used Helping Hand.
    //
    // Technically this breaks for Triple Battles if one ally uses Helping Hand
    // and another uses Instruct, but lol. lmao.
    if (server->oneTurnFlag[server->attack_client].helping_hand_flag) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Helping Hand active: 1.5x\n");
        debugsyscall(buf);
        #endif

        powerMod = QMul_RoundUp(powerMod, UQ412__1_5);
    }

    // 0.33x if Mud or Water Sport are in effect and the used move is Electric or Fire-type (respectively).
    // TODO: These need to be moved to field conditions instead of being move effects
    if ((CheckFieldMoveEffect(battle, server, MOVE_EFFECT_FLAG_MUD_SPORT) && (moveType == TYPE_ELECTRIC))
            || (CheckFieldMoveEffect(battle, server, MOVE_EFFECT_FLAG_WATER_SPORT) && (moveType == TYPE_FIRE))) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Mud/Water Sport active: 0.33x\n");
        debugsyscall(buf);
        #endif

        powerMod = QMul_RoundUp(powerMod, UQ412__0_33);
    }

    // TODO: Refactor terrains
    // 0.5x if Grassy Terrain is in effect and the used move is Earthquake, Magnitude, or Bulldoze.
    // 0.5x if Misty Terrain is in effect and the used move is Dragon-type.
    if (server->terrainOverlay.numberOfTurnsLeft > 0) {
        switch (server->terrainOverlay.type) {
        case GRASSY_TERRAIN:
            if (server->current_move_index == MOVE_EARTHQUAKE || server->current_move_index == MOVE_MAGNITUDE || server->current_move_index == MOVE_BULLDOZE) {
                powerMod = QMul_RoundUp(powerMod, UQ412__0_5);
            }
            break;
        case MISTY_TERRAIN:
            // https://www.smogon.com/dex/sv/moves/misty-terrain/
            // During the effect, the power of Dragon-type attacks used against grounded Pokemon is multiplied by 0.5
            if (IsClientGrounded(server, server->defence_client) && moveType == TYPE_DRAGON) {
                powerMod = QMul_RoundUp(powerMod, UQ412__0_5);
            }
            break;
        default:
            break;
        }
    }

    // 1.3x if Electric Terrain is in effect, the attacker is grounded, and the used move is Electric-type.
    // 1.3x if Grassy Terrain is in effect, the attacker is grounded, and the used move is Grass-type.
    // 1.3x if Psychic Terrain is in effect, the attacker is grounded, and the used move is Psychic-type.
    if (server->terrainOverlay.numberOfTurnsLeft > 0) {
        switch (server->terrainOverlay.type) {
        case GRASSY_TERRAIN:
            if (IsClientGrounded(server, server->attack_client) && moveType == TYPE_GRASS) {
                powerMod = QMul_RoundUp(powerMod, UQ412__1_33);
            }
            break;
        case ELECTRIC_TERRAIN:
            if (IsClientGrounded(server, server->attack_client) && moveType == TYPE_ELECTRIC) {
                powerMod = QMul_RoundUp(powerMod, UQ412__1_33);
            }
            break;
        case PSYCHIC_TERRAIN:
            if (IsClientGrounded(server, server->attack_client) && moveType == TYPE_PSYCHIC) {
                powerMod = QMul_RoundUp(powerMod, UQ412__1_33);
            }
            break;
        default:
            break;
        }
    }

    // ==================== START OF ABILITY CHAIN ==================== //

    // Exclusive set 1
    u16 nextMod = UQ412__1_0;
    switch (attacker->ability) {
        case ABILITY_RIVALRY:
            /*
             * 1.25x if the attacker's ability is Rivalry and the target is of the same gender.
             * 0.75x if the attacker's ability is Rivalry and the target is of the opposite gender.
             * No muliplier if either Pokemon is genderless.
             */
            if (attacker->gender == 2 || defender->gender == 2) {
                // do nothing
            } else if (attacker->gender == defender->gender) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Rivalry active, same gender: 1.25x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_25;
            } else {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Rivalry active, diff gender: 0.75x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__0_75;
            }
            break;
    
        case ABILITY_SUPREME_OVERLORD:
            /*
             * 1 + 0.1n if the attacker's ability is Supreme Overlord, where n is the number of Pokemon
             * on the attacker's party which have previously fainted.
             * 
             * TODO: Implement
             */
            break;

        case ABILITY_RECKLESS:
            /*
             * 1.2x if the attacker's ability is Reckless and the used move is applicable (deals recoil damage,
             * or is High Jump Kick or Jump Kick, but is _not_ Struggle).
             */
            // TODO: REMOVE FROM EFFECT SCRIPTS
            if (IsElementInArray(sRecklessBoosted, (u16 *)&moveID, NELEMS(sRecklessBoosted), sizeof(sRecklessBoosted[0]))) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Reckless active: 1.2x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_2;
            }
            break;

        case ABILITY_IRON_FIST:
            /*
             * 1.2x if the attacker's ability is Iron Fist and the used move is a punching move.
             */
            if (IsElementInArray(IronFistMovesTable, (u16 *)&moveID, NELEMS(IronFistMovesTable), sizeof(IronFistMovesTable[0]))) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Iron Fist active: 1.2x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_2;
            }
            break;

        case ABILITY_NORMALIZE:
        case ABILITY_AERILATE:
        case ABILITY_GALVANIZE:
        case ABILITY_PIXILATE:
        case ABILITY_REFRIGERATE:
            /*
             * 1.2x if the attacker's ability is Normalize and the used move is affected.
             * 1.2x if the attacker's ability is an -ate ability and the move's type was altered.
             */
            if (isAteAbility) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- -ate ability active: 1.2x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_2;
            }
            break;

        case ABILITY_ANALYTIC:
            /*
             * 1.3x if the attacker's ability is Analytic and it moves last in turn order.
             *
             */
            // TODO: Use execution order instead of speed
            for (i = 0; i < 4; i++) {
                if (server->attack_client != i && server->battlemon[i].hp != 0 && CalcSpeed(battle, server, server->attack_client, i, 0) == 0) {
                    break;
                }
            }
            if (i == 4) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Analytic active: 1.3x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_3;
            }
            break;

        case ABILITY_SAND_FORCE:
            /*
             * 1.3x if the attacker's ability is Sand Force, the weather is sandstorm, and the used
             * move is Ground-, Rock-, or Steel-type.
             */
            if (WeatherIsActive(battle, server, WEATHER_SANDSTORM_ANY)
                    && (moveType == TYPE_GROUND || moveType == TYPE_ROCK || moveType == TYPE_STEEL)) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Sand Force active: 1.3x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_3;
            }
            break;

        case ABILITY_SHEER_FORCE:
            /*
             * 1.3x if the attacker's ability is Sheer Force and the used move has an additional effect.
             *
             */
            if (server->battlemon[server->attack_client].sheer_force_flag == 1) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Sheer Force active: 1.3x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_3;
            }
            break;

        case ABILITY_TOUGH_CLAWS:
            /*
             * 1.3x if the attacker's ability is Tough Claws and the used move makes contact.
             */
            if (server->moveTbl[server->current_move_index].flag & FLAG_CONTACT) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Tough Claws active: 1.3x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_3;
            }
            break;

        default:
            break;
    }
    powerMod = QMul_RoundUp(powerMod, nextMod);

    // Battery and Power Spot are not technically exclusive in the scope of Triple Battles,
    // but they are mutually exclusive in doubles.
    if (AllyHasAbility(server, server->attack_client, ABILITY_BATTERY) && movePSS == SPLIT_SPECIAL) {
        // 1.3x if our ally has Battery and the used move is Special-split.
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Battery active: 1.3x\n");
        debugsyscall(buf);
        #endif

        powerMod = QMul_RoundUp(powerMod, UQ412__1_3);
    }
    
    if (AllyHasAbility(server, server->attack_client, ABILITY_POWER_SPOT)) {
        // 1.3x if our ally has Power Spot.
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Power Spot active: 1.2x\n");
        debugsyscall(buf);
        #endif

        powerMod = QMul_RoundUp(powerMod, UQ412__1_3);
    }

    if (attacker->ability == ABILITY_PUNK_ROCK && IsMoveSoundBased(moveID)) {
        // 1.3x if the attacker's ability is Punk Rock and the used move is sound-based.
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Punk Rock active: 1.3x\n");
        debugsyscall(buf);
        #endif

        powerMod = QMul_RoundUp(powerMod, UQ412__1_3);
    }

    if (CheckSideAbility(battle, server, CHECK_ABILITY_ALL_HP, 0, ABILITY_FAIRY_AURA)
            && (moveType == TYPE_FAIRY)
            && (attacker->ability != ABILITY_MOLD_BREAKER)
            && (attacker->ability != ABILITY_TERAVOLT)
            && (attacker->ability != ABILITY_TURBOBLAZE)) {
        // 1.33x if Fairy Aura is in effect, the used move is Fairy-type, and the attacker's ability is not
        // Mold Breaker. If Aura Break is also in effect, instead 0.75x.
        if (CheckSideAbility(battle, server, CHECK_ABILITY_ALL_HP, 0, ABILITY_AURA_BREAK)) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Fairy Aura broken: 0.75x\n");
            debugsyscall(buf);
            #endif

            nextMod = UQ412__0_75;
        } else {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Fairy Aura active: 1.33x\n");
            debugsyscall(buf);
            #endif

            nextMod = UQ412__1_33;
        }

        powerMod = QMul_RoundUp(powerMod, nextMod);
    }

    if (CheckSideAbility(battle, server, CHECK_ABILITY_ALL_HP, 0, ABILITY_DARK_AURA)
            && (moveType == TYPE_DARK)
            && (attacker->ability != ABILITY_MOLD_BREAKER)
            && (attacker->ability != ABILITY_TERAVOLT)
            && (attacker->ability != ABILITY_TURBOBLAZE)) {
        // 1.33x if Dark Aura is in effect, the used move is Dark-type, and the attacker's ability is not
        // Mold Breaker. If Aura Break is also in effect, instead 0.75x.
        if (CheckSideAbility(battle, server, CHECK_ABILITY_ALL_HP, 0, ABILITY_AURA_BREAK)) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Dark Aura broken: 1.33x\n");
            debugsyscall(buf);
            #endif

            nextMod = UQ412__0_75;
        } else {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Dark Aura active: 1.33x\n");
            debugsyscall(buf);
            #endif

            nextMod = UQ412__1_33;
        }
        
        powerMod = QMul_RoundUp(powerMod, nextMod);
    }

    // exclusive set 2
    nextMod = UQ412__1_0;
    switch (attacker->ability) {
        case ABILITY_STRONG_JAW:
            /*
             * 1.5x if the attacker's ability is Strong Jaw and the used move is a biting move.
             */
            if (IsElementInArray(StrongJawMovesTable, (u16 *)&moveID, NELEMS(StrongJawMovesTable), sizeof(StrongJawMovesTable[0]))) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Strong Jaw active: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;
        case ABILITY_MEGA_LAUNCHER:
            /*
             * 1.5x if the attacker's ability is Mega Launcher and the used move is Aura or
             * Pulse-based.
             */
            if (IsElementInArray(MegaLauncherMovesTable, (u16 *)&moveID, NELEMS(MegaLauncherMovesTable), sizeof(MegaLauncherMovesTable[0]))) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Mega Launcher active: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        case ABILITY_TECHNICIAN:
            /*
             * 1.5x if the attacker's ability is Technician, the used move's power is less than or
             * equal to 60, and the used move is _not_ Struggle.
             */
            if (movePower <= 60 && moveID != MOVE_STRUGGLE) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Technician active: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        case ABILITY_TOXIC_BOOST:
            /*
             * 1.5x if the attacker's ability is Toxic Boost, the used move is Physical, and the
             * attacker is poisoned.
             */
            if (movePSS == SPLIT_PHYSICAL && ((attacker->condition & STATUS_FLAG_BADLY_POISONED) || (attacker->condition & STATUS_FLAG_POISONED))) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Toxic Boost active: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        case ABILITY_FLARE_BOOST:
            /*
             * 1.5x if the attacker's ability is Flare Boost, the used move is Special, and the
             * attacker is burned.
             */
            if (movePSS == SPLIT_SPECIAL && (attacker->condition & STATUS_FLAG_BURNED)) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Flare Boost active: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        case ABILITY_STEELY_SPIRIT:
            /*
             * 1.5x if the attacker's ability is Steely Spirit and the used move is Steel-type.
             */
            if (moveType == TYPE_STEEL) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Self Steely Spirit active: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        default:
            break;
    }
    powerMod = QMul_RoundUp(powerMod, nextMod);

    if (AllyHasAbility(server, server->attack_client, ABILITY_STEELY_SPIRIT)
            && moveType == TYPE_STEEL) {
        // 1.5x if the attacker's ally has Steely Spirit and the used move is Steel-type.
        // Note that this modifier stacks with the attacker itself having Steely Spirit.
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Ally Steely Spirit active: 1.5x\n");
        debugsyscall(buf);
        #endif

        powerMod = QMul_RoundUp(powerMod, UQ412__1_5);
    }

    if (moveType == TYPE_FIRE) {
        if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_HEATPROOF)) {
            // 0.5x if the target's ability is Heatproof, the used move is Fire-type, and the
            // target's ability is not ignored.
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Opp has Heatproof: 0.5x\n");
            debugsyscall(buf);
            #endif

            powerMod = QMul_RoundUp(powerMod, UQ412__0_5);
        } else if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_DRY_SKIN)) {
            // 1.25x if the target's ability is Dry Skin, the used move is Fire-type, and the
            // target's ability is not ignored.
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Opp has Dry Skin: 1.25x\n");
            debugsyscall(buf);
            #endif

            powerMod = QMul_RoundUp(powerMod, UQ412__1_25);
        }
    }

    if (attacker->ability == ABILITY_SHARPNESS && IsElementInArray(SharpnessMovesTable, (u16 *)&moveID, NELEMS(SharpnessMovesTable), sizeof(SharpnessMovesTable[0]))) {
        // 1.5x if the attacker's ability is Sharpness and the used move is slashing-based.
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Sharpness active: 1.5x\n");
        debugsyscall(buf);
        #endif

        powerMod = QMul_RoundUp(powerMod, UQ412__1_5);
    }

    // ==================== END OF ABILITY CHAIN ==================== //
    // ==================== START OF ITEM CHECKS ==================== //

    // these are easily defined in a switch
    u16 tableLookup = UQ412__1_0;
    switch (attacker->heldItemEffect) {
        case HOLD_EFFECT_POWER_UP_PHYS:
            if (movePSS == SPLIT_PHYSICAL) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Muscle Band active: 1.1x\n");
                debugsyscall(buf);
                #endif

                goto LookupItemPower;
            }
            goto SkipLookupItemPower;

        case HOLD_EFFECT_POWER_UP_SPEC:
            if (movePSS == SPLIT_SPECIAL) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Wise Glasses active: 1.1x\n");
                debugsyscall(buf);
                #endif

                goto LookupItemPower;
            }
            goto SkipLookupItemPower;

        case HOLD_EFFECT_DIALGA_BOOST:
            if (attacker->species == SPECIES_DIALGA
                    && (moveType == TYPE_DRAGON || moveType == TYPE_STEEL)) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Adamant Orb active: 1.2x\n");
                debugsyscall(buf);
                #endif

                goto LookupItemPower;
            }
            goto SkipLookupItemPower;

        case HOLD_EFFECT_PALKIA_BOOST:
            if (attacker->species == SPECIES_PALKIA
                    && (moveType == TYPE_DRAGON || moveType == TYPE_WATER)) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Lustrous Orb active: 1.2x\n");
                debugsyscall(buf);
                #endif

                goto LookupItemPower;
            }
            goto SkipLookupItemPower;

        case HOLD_EFFECT_GIRATINA_BOOST:
            if (attacker->species == SPECIES_GIRATINA
                    && (moveType == TYPE_DRAGON || moveType == TYPE_GHOST)) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Griseous Orb active: 1.2x\n");
                debugsyscall(buf);
                #endif

                goto LookupItemPower;
            }
            goto SkipLookupItemPower;

        case HOLD_EFFECT_LATI_SPECIAL:
            if ((attacker->species == SPECIES_LATIAS || attacker->species == SPECIES_LATIOS)
                    && (moveType == TYPE_DRAGON || moveType == TYPE_PSYCHIC)) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Soul Dew active: 1.2x\n");
                debugsyscall(buf);
                #endif

                goto LookupItemPower;
            }
            goto SkipLookupItemPower;

        case HOLD_EFFECT_INCREASE_PUNCHING_MOVE_DMG:
            if (IsElementInArray(IronFistMovesTable, (u16 *)&moveID, NELEMS(IronFistMovesTable), sizeof(IronFistMovesTable[0]))) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] -- Punching Glove active: 1.1x\n");
                debugsyscall(buf);
                #endif

                goto LookupItemPower;
            }
            goto SkipLookupItemPower;

        default:
            break;
    }

    // Check the tables for type-boosting items and Gems
    if (sTypeBoostingItems[moveType] == attacker->heldItemEffect
            || sTypePlates[moveType] == attacker->heldItemEffect) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Type Item active: 1.2x\n");
        debugsyscall(buf);
        #endif

        goto LookupItemPower;
    } else if (sGems[moveType] == attacker->heldItemEffect) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Type Gem active: 1.3x\n");
        debugsyscall(buf);
        #endif

        goto LookupItemPower;
    }

    goto SkipLookupItemPower;

LookupItemPower:
    tableLookup = UQ412__1_0 + QPercent(attacker->heldItemPower);
    #ifdef DEBUG_DAMAGE_CALC
    sprintf(buf, "[PLAT-ENGINE] -- Item lookup modifier: %d\n", tableLookup);
    debugsyscall(buf);
    #endif

SkipLookupItemPower:
    powerMod = QMul_RoundUp(powerMod, tableLookup);

    #ifdef DEBUG_DAMAGE_CALC
    sprintf(buf, "[PLAT-ENGINE] Final power modifier: %d\n\n", powerMod);
    debugsyscall(buf);
    #endif

    u32 modifiedPower = QMul_RoundDown(movePower, powerMod);
    return (modifiedPower < 1) ? 1 : modifiedPower;         // power can never be less than 1
}


static u16 Calc_ChainOffenseMods(
    struct BattleSystem *battle,
    struct BattleStruct *server,
    struct CalcParams *attacker,
    struct CalcParams *defender,
    u16 stat,
    u8 moveType,
    u8 movePSS
)
{
    u16 statMod = UQ412__1_0;
    u16 nextMod = UQ412__1_0;
    #ifdef DEBUG_DAMAGE_CALC
    u8 buf[128];
    sprintf(buf, "[PLAT-ENGINE] -- Offense Mods Chain:\n");
    debugsyscall(buf);
    #endif

    switch (attacker->ability) {
        case ABILITY_SLOW_START:
            /*
             * Halves the Attack stat during the first five turns that a Pokemon
             * is in battle.
             */
            if (movePSS == SPLIT_PHYSICAL && SlowStartActive(battle, server)) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Slow Start: 0.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__0_5;
            }
            break;

        case ABILITY_DEFEATIST:
            /*
             * Halves all offensive stats when the attacker's HP is less than or
             * equal to half of its maximum.
             */
            if (attacker->currentHP <= (attacker->maxHP / 2)) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Defeatist: 0.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__0_5;
            }
            break;

        case ABILITY_SOLAR_POWER:
            /*
             * Increases Special Attack by 50% during harsh sunlight.
             */
            if (movePSS == SPLIT_SPECIAL && WeatherIsActive(battle, server, WEATHER_SUNNY_ANY)) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Solar Power: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        case ABILITY_FLOWER_GIFT:
            /*
             * Increases Attack by 50% during harsh sunlight.
             */
            if (movePSS == SPLIT_PHYSICAL && WeatherIsActive(battle, server, WEATHER_SUNNY_ANY)) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Flower Gift (self): 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            // Flower Gift does not stack with itself if both the attacker and an ally have it.
            goto SkipAllyFlowerGift;

        case ABILITY_GORILLA_TACTICS:
            /*
             * Increases Attack by 50%.
             */
            if (movePSS == SPLIT_PHYSICAL) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Gorilla Tactics: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;
        
        case ABILITY_GUTS:
            /*
             * Increases Attack by 50% if the attacker is statused (but not frozen).
             */
            if (movePSS == SPLIT_PHYSICAL && (attacker->condition & ~STATUS_FLAG_FROZEN)) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Guts: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        case ABILITY_BLAZE:
            /*
             * Increases all offensive stats by 50% if the attacker's HP is less
             * than or equal to 1/3 of its maximum and the used move is Fire-type.
             */
            if (moveType == TYPE_FIRE && (attacker->currentHP < (attacker->maxHP / 3))) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Blaze: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        case ABILITY_OVERGROW:
            /*
             * Increases all offensive stats by 50% if the attacker's HP is less
             * than or equal to 1/3 of its maximum and the used move is Grass-type.
             */
            if (moveType == TYPE_GRASS && (attacker->currentHP < (attacker->maxHP / 3))) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Overgrow: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        case ABILITY_SWARM:
            /*
             * Increases all offensive stats by 50% if the attacker's HP is less
             * than or equal to 1/3 of its maximum and the used move is Bug-type.
             */
            if (moveType == TYPE_BUG && (attacker->currentHP < (attacker->maxHP / 3))) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Swarm: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        case ABILITY_TORRENT:
            /*
             * Increases all offensive stats by 50% if the attacker's HP is less
             * than or equal to 1/3 of its maximum and the used move is Water-type.
             */
            if (moveType == TYPE_WATER && (attacker->currentHP < (attacker->maxHP / 3))) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Torrent: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        case ABILITY_FLASH_FIRE:
            /*
             * Increases all offensive stats by 50% if the attacker previously
             * activated Flash Fire and the used move is Fire-type.
             */
            if (moveType == TYPE_FIRE
                    && server->battlemon[server->attack_client].moveeffect.flashFire) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Flash Fire: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        case ABILITY_STEELWORKER:
            /*
             * Increases all offensive stats by 50% if the used move is Steel-type.
             */
            if (moveType == TYPE_STEEL) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Steelworker: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        case ABILITY_DRAGONS_MAW:
            /*
             * Increases all offensive stats by 50% if the used move is Dragon-type.
             */
            if (moveType == TYPE_DRAGON) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Dragon's Maw: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        case ABILITY_ROCKY_PAYLOAD:
            /*
             * Increases all offensive stats by 50% if the used move is Rock-type.
             */
            if (moveType == TYPE_ROCK) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Solar Power: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        case ABILITY_TRANSISTOR:
            /*
             * Increases all offensive stats by 30% if the used move is Electric-type.
             */
            if (moveType == TYPE_ELECTRIC) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Transistor: 1.3x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_3;
            }
            break;

        case ABILITY_STAKEOUT:
            /*
             * Doubles all offensive stats if the target switched in this turn.
             *
             * TODO: Implement.
             */
            break;

        case ABILITY_WATER_BUBBLE:
            /*
             * Doubles all offensive stats if the used move is Water-type.
             */
            if (moveType == TYPE_WATER) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Water Bubble (self): 2.0x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__2_0;
            }
            break;

        case ABILITY_PURE_POWER:
            // fallthrough
        case ABILITY_HUGE_POWER:
            /*
             * Doubles Attack.
             */
            if (movePSS == SPLIT_PHYSICAL) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Huge Power: 2.0x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__2_0;
            }
            break;
        
        case ABILITY_PROTOSYNTHESIS:
            // fallthrough
        case ABILITY_QUARK_DRIVE:
            /*
             * Increases the highest stat by 30% (if an attacking stat).
             *
             * TODO: Implement.
             */
            break;
        
        case ABILITY_HADRON_ENGINE:
            /*
             * Increases Special Attack by 33% on Electric Terrain.
             *
             * TODO: Refactor Terrain implementation.
             */
            if (server->terrainOverlay.numberOfTurnsLeft && server->terrainOverlay.type == ELECTRIC_TERRAIN) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Special Attack: 1.3333x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_3333;
            }
            break;

        case ABILITY_ORICHALCUM_PULSE:
            /*
             * Increases Attack by 33% in harsh sunlight.
             */
            if (movePSS == SPLIT_PHYSICAL && WeatherIsActive(battle, server, WEATHER_SUNNY_ANY)) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Orichalcum Pulse: 1.3333x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_3333;
            }
            break;

        default:
            break;
    }

    if (AllyHasAbility(server, server->attack_client, ABILITY_FLOWER_GIFT)) {
        if (movePSS == SPLIT_PHYSICAL && WeatherIsActive(battle, server, WEATHER_SUNNY_ANY)) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] ---- Flower Gift (ally): 1.5x\n");
            debugsyscall(buf);
            #endif

            statMod = QMul_RoundUp(statMod, nextMod);   // Apply the previous modifier before stacking ally Flower Gift
            nextMod = UQ412__1_5;
        }
    }

SkipAllyFlowerGift:
    statMod = QMul_RoundUp(statMod, nextMod);

CheckDefenderAbility:
    if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_THICK_FAT)) {
        // Halves the attacking stats if the used move is Fire- or Ice-type.
        if (moveType == TYPE_FIRE || moveType == TYPE_ICE) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] ---- Thick Fat: 0.5x\n");
            debugsyscall(buf);
            #endif

            nextMod = UQ412__0_5;
        }
    } else if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_WATER_BUBBLE)) {
        // Halves the attacking stats if the used move is Fire-type.
        if (moveType == TYPE_FIRE) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] ---- Water Bubble (target): 0.5x\n");
            debugsyscall(buf);
            #endif

            nextMod = UQ412__0_5;
        }
    } else if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_PURIFYING_SALT)) {
        // Halves the attacking stats if the used move is Ghost-type.
        if (moveType == TYPE_GHOST) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] ---- Purifying Salt: 0.5x\n");
            debugsyscall(buf);
            #endif

            nextMod = UQ412__0_5;
        }
    }
    statMod = QMul_RoundUp(statMod, nextMod);

CheckRuinEffects: 
    if (CheckSideAbility(battle, server, CHECK_ABILITY_ALL_HP_NOT_USER, server->attack_client, ABILITY_TABLETS_OF_RUIN)) {
        /*
         * Decreases the Attack stat of all Pokemon on the field other than the ability
         * bearer by 25%. Does not apply if the attacker also has Tablets of Ruin.
         */
        if (attacker->ability != ABILITY_TABLETS_OF_RUIN && movePSS == SPLIT_PHYSICAL) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] ---- Tablets of Ruin: 0.75x\n");
            debugsyscall(buf);
            #endif

            statMod = QMul_RoundUp(statMod, UQ412__0_75);
        }
    }
    if (CheckSideAbility(battle, server, CHECK_ABILITY_ALL_HP_NOT_USER, server->attack_client, ABILITY_VESSEL_OF_RUIN)) {
        /*
         * Decreases the SpAttack stat of all Pokemon on the field other than the ability
         * bearer by 25%. Does not apply if the attacker also has Vessel of Ruin.
         */
        if (attacker->ability != ABILITY_VESSEL_OF_RUIN && movePSS == SPLIT_SPECIAL) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] ---- Vessel of Ruin: 0.75x\n");
            debugsyscall(buf);
            #endif

            statMod = QMul_RoundUp(statMod, UQ412__0_75);
        }
    }

CheckItems:
    nextMod = UQ412__1_0;
    switch (attacker->heldItemEffect) {
        case HOLD_EFFECT_CUBONE_ATK_UP:
            /*
             * Doubles the Attack of Cubone and Marowak.
             */
            if (movePSS == SPLIT_PHYSICAL
                    && (attacker->species == SPECIES_CUBONE || attacker->species == SPECIES_MAROWAK)) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Thick Club: 2.0x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__2_0;
            }
            break;

        case HOLD_EFFECT_CLAMPERL_SPATK:
            /*
             * Doubles the Special Attack of Clamperl.
             */
            if (movePSS == SPLIT_SPECIAL && attacker->species == SPECIES_CLAMPERL) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Deep Sea Tooth: 2.0x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__2_0;
            }
            break;

        case HOLD_EFFECT_PIKA_SPATK_UP:
            /*
             * Doubles the offensive stats of Pikachu.
             */
            if (attacker->species == SPECIES_PIKACHU) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Light Ball: 2.0x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__2_0;
            }
            break;

        case HOLD_EFFECT_CHOICE_ATK:
            /*
             * Increases the Attack stat by 50%.
             */
            if (movePSS == SPLIT_PHYSICAL) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Choice Band: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        case HOLD_EFFECT_CHOICE_SPATK:
            /*
             * Increases the Special Attack stat by 50%.
             */
            if (movePSS == SPLIT_SPECIAL) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Choice Specs: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            break;

        default:
            break;
    }
    statMod = QMul_RoundUp(statMod, nextMod);
    
    #ifdef DEBUG_DAMAGE_CALC
    sprintf(buf, "[PLAT-ENGINE] -- Final Offense Mod: %d\n\n", statMod);
    debugsyscall(buf);
    #endif

    return QMul_RoundDown(stat, statMod);
}


static u16 Calc_ChainDefenseMods(
    struct BattleSystem *battle,
    struct BattleStruct *server,
    struct CalcParams *attacker,
    struct CalcParams *defender,
    u16 stat,
    u8 moveType,
    u8 movePSS
)
{
    u16 statMod = UQ412__1_0;
    u16 nextMod = UQ412__1_0;
    #ifdef DEBUG_DAMAGE_CALC
    u8 buf[128];
    sprintf(buf, "[PLAT-ENGINE] -- Defense Mods Chain:\n");
    debugsyscall(buf);
    #endif

    if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_MARVEL_SCALE)) {
        /*
         * Increases Defense by 50% if the defender is statused.
         */
        if (defender->condition && movePSS == SPLIT_PHYSICAL) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] ---- Marvel Scale: 1.5x\n");
            debugsyscall(buf);
            #endif

            nextMod = UQ412__1_5;
        }
    } else if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_FLOWER_GIFT)) {
        /*
         * Increases Special Defense by 50% during harsh sunlight.
         */
        if (movePSS == SPLIT_SPECIAL && WeatherIsActive(battle, server, WEATHER_SUNNY_ANY)) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] ---- Flower Gift (self): 1.5x\n");
            debugsyscall(buf);
            #endif
            
            nextMod = UQ412__1_5;
        }

        // Flower Gift does not stack with itself, so skip ahead.
        goto CheckDefensiveRuins;
    } else if (defender->ability == ABILITY_GRASS_PELT) {
        /*
         * Increases Defense by 50% while Grassy Terrain is active. Not ignorable.
         *
         * TODO: Refactor Terrain implementation.
         */
        if (server->terrainOverlay.numberOfTurnsLeft && server->terrainOverlay.type == GRASSY_TERRAIN && movePSS == SPLIT_PHYSICAL) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] ---- Grass Pelt: 1.5x\n");
            debugsyscall(buf);
            #endif

            nextMod = UQ412__1_5;
        }
    } else if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_FUR_COAT)) {
        /*
         * Doubles Defense.
         */
        if (movePSS == SPLIT_PHYSICAL) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] ---- Fur Coat: 2.0x\n");
            debugsyscall(buf);
            #endif
            
            nextMod = UQ412__2_0;
        }
    }

    if (MoldBreakerAbilityCheck(server, server->attack_client, BATTLER_ALLY(server->defence_client), ABILITY_FLOWER_GIFT)) {
        // Flower Gift increases ally's SpDefense by 50% during harsh sunlight.
        if (movePSS == SPLIT_SPECIAL && WeatherIsActive(battle, server, WEATHER_SUNNY_ANY)) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] ---- Flower Gift (ally): 1.5x\n");
            debugsyscall(buf);
            #endif

            statMod = QMul_RoundUp(statMod, nextMod);
            nextMod = UQ412__1_5;
        }
    }

CheckDefensiveRuins:
    statMod = QMul_RoundUp(statMod, nextMod);
    if (CheckSideAbility(battle, server, CHECK_ABILITY_ALL_HP_NOT_USER, server->defence_client, ABILITY_SWORD_OF_RUIN)) {
        /*
         * Decreases the Defense stat of all Pokemon on the field other than the
         * ability's bearer by 25%. Ignored if the Defender also has Sword of Ruin.
         */
        if (defender->ability != ABILITY_SWORD_OF_RUIN && movePSS == SPLIT_PHYSICAL) {
            #ifdef DEBUG_DAMAGE_CALC
            u8 buf[128];
            sprintf(buf, "[PLAT-ENGINE] ---- Sword of Ruin: 0.75x\n");
            debugsyscall(buf);
            #endif

            statMod = QMul_RoundUp(statMod, UQ412__0_75);
        }
    }
    if (CheckSideAbility(battle, server, CHECK_ABILITY_ALL_HP_NOT_USER, server->defence_client, ABILITY_BEADS_OF_RUIN)) {
        /*
         * Decreases the SpDefense stat of all Pokemon on the field other than the
         * ability's bearer by 25%. Ignored if the Defender also has Beads of Ruin.
         */
        if (defender->ability != ABILITY_BEADS_OF_RUIN && movePSS == SPLIT_SPECIAL) {
            #ifdef DEBUG_DAMAGE_CALC
            u8 buf[128];
            sprintf(buf, "[PLAT-ENGINE] ---- Beads of Ruin: 0.75x\n");
            debugsyscall(buf);
            #endif

            statMod = QMul_RoundUp(statMod, UQ412__0_75);
        }
    }

    // TODO: Protosynthesis, Quark Drive

CheckDefensiveItems:
    nextMod = UQ412__1_0;

    #ifdef DEBUG_DAMAGE_CALC
    sprintf(buf, "[PLAT-ENGINE] -- Checking defender's item: %d\n", defender->heldItemEffect);
    debugsyscall(buf);
    #endif
    switch (defender->heldItemEffect) {
        case HOLD_EFFECT_DITTO_DEF_UP:
            /*
             * Doubles the Defense of Ditto.
             */
            if (defender->species == SPECIES_DITTO && movePSS == SPLIT_PHYSICAL) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Metal Powder: 2.0x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__2_0;
            }
            break;

        case HOLD_EFFECT_CLAMPERL_SPDEF:
            /*
             * Doubles the Special Defense of Clamperl.
             */
            if (defender->species == SPECIES_CLAMPERL && movePSS == SPLIT_SPECIAL) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Deep Sea Scale: 2.0x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__2_0;
            }
            break;

        case HOLD_EFFECT_EVIOLITE:
            /*
             * Increases all defensive stats by 50% if the defender is not
             * fully-evolved.
             */
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] ---- Eviolite found\n");
            debugsyscall(buf);
            #endif
            // TODO
            /*
            if (Pokemon_IsNFE(defender->species, server->battlemon[server->defence_client].form_no)) {
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Eviolite: 1.5x\n");
                debugsyscall(buf);
                #endif

                nextMod = UQ412__1_5;
            }
            */
            break;

        default:
            break;
    }
    statMod = QMul_RoundUp(statMod, nextMod);

    #ifdef DEBUG_DAMAGE_CALC
    sprintf(buf, "[PLAT-ENGINE] -- Final Defense Mod: %d\n\n", statMod);
    debugsyscall(buf);
    #endif

    return QMul_RoundDown(stat, statMod);
}


static u16 Calc_ChainOtherModifiers(
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


static u16 Calc_BaseDamage(
    struct BattleSystem *battle,
    struct BattleStruct *server,
    struct CalcParams *attacker,
    struct CalcParams *defender
)
{
    // Start by gathering/discerning some necessary data points.
    u16 moveID = server->current_move_index;
    u16 moveBasePower = server->damage_power;
    u8 movePSS = GetMoveSplit(server, moveID);
    u8 moveType = server->move_type;
    u8 modifiedMoveType = GetAdjustedMoveType(server, server->attack_client, server->current_move_index);
    BOOL isAteAbility = FALSE;

    if (moveBasePower == 0) {
        moveBasePower = server->moveTbl[moveID].power;
    }

    switch (attacker->ability) {
        case ABILITY_NORMALIZE:
            if (MoveIsAffectedByNormalizeVariants(moveID)) {
                // Normal-type moves used by the Pokémon with this Ability now receive a 20% power boost, except moves that cannot be affected by Normalize. This boost applies to both moves that are originally Normal-type and moves that become Normal-type due to Normalize.
                isAteAbility = TRUE;
            }
            break;
        case ABILITY_AERILATE:
        case ABILITY_GALVANIZE:
        case ABILITY_PIXILATE:
        case ABILITY_REFRIGERATE:
        case ABILITY_LIQUID_VOICE:
            if (MoveIsAffectedByNormalizeVariants(moveID) && (moveType != modifiedMoveType)) {
                isAteAbility = TRUE;
            }
            break;
        default:
            break;
    }

    server->move_type = modifiedMoveType;

    // Calc the modified base power first.
    u16 modifiedBasePower = Calc_ModifiedBasePower(
        battle,
        server,
        attacker,
        defender,
        moveID,
        moveBasePower,
        movePSS,
        moveType,
        isAteAbility);
#ifdef DEBUG_DAMAGE_CALC
    u8 buf[128];
    sprintf(buf, "[PLAT-ENGINE] Modified base power: %d\n", modifiedBasePower);
    debugsyscall(buf);
#endif

    // Treat Shell Side Arm moves differently
    // TODO: What does this mean
    if (moveID == MOVE_SHELL_SIDE_ARM) {
        return 0;
    }

    // Compute the effective offensive + defensive stats
    // Some moves alter this process slightly
    u16 effectiveOffense, effectiveDefense;
    BOOL attackerUnaware = attacker->ability == ABILITY_UNAWARE;
    BOOL defenderUnaware = MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_UNAWARE);
    if (moveID == MOVE_PHOTON_GEYSER) {
        /*
         * If the user's Attack stat is higher than its Special Attack stat, Photon Geyser
         * becomes a Physical move; otherwise, it is a special move.
         *
         * During the execution of Photon Geyser, all ignorable Abilities are ignored.
         *
         * When determining which stat is higher, stat stage modifiers are taken into
         * account, but other effects (held items, abilities, etc.) are not.
         */
        u16 boostedAttack = Calc_AttackerStat(attacker->stats.attack, attacker->stages.attack, FALSE, FALSE);
        u16 boostedSpAttack = Calc_AttackerStat(attacker->stats.spAttack, attacker->stages.spAttack, FALSE, FALSE);
        if (boostedAttack > boostedSpAttack) {
            // Now recalc everything accounting for crits.
            effectiveOffense = Calc_AttackerStat(attacker->stats.attack, attacker->stages.attack, FALSE, server->critical);
            effectiveDefense = Calc_DefenderStat(defender->stats.defense, defender->stages.defense, FALSE, server->critical);
            movePSS = SPLIT_PHYSICAL;
        } else {
            effectiveOffense = Calc_AttackerStat(attacker->stats.spAttack, attacker->stages.spAttack, FALSE, server->critical);
            effectiveDefense = Calc_DefenderStat(defender->stats.spDefense, defender->stages.spDefense, FALSE, server->critical);
        }
    } else if (moveID == MOVE_BODY_PRESS) {
        /*
         * When calculating damage, Body Press uses the user's Defense stat instead of its
         * Attack stat. Defense stat-stage modifiers are applied, but Attack modifiers are
         * used thereafter.
         *
         * Since the user's Defense stat is used for calculating damage, Body Press does
         * not consider Unaware when calculating the offensive stat.
         */
        effectiveOffense = Calc_AttackerStat(attacker->stats.defense, attacker->stages.defense, FALSE, server->critical);
        effectiveDefense = Calc_DefenderStat(defender->stats.defense, defender->stages.defense, attackerUnaware, server->critical);
    } else if (moveID == MOVE_FOUL_PLAY) {
        /*
         * When calculating damage, Foul Play uses the target's Attack stat instead of its
         * user's Attack stat. The target's Attack stat-stage modifiers are applied (rather
         * than the user's), but the user's Attack modifiers are used thereafter.
         *
         * Since the target's Attack stat is used for calculating damage, Foul Play does
         * not consider Unaware when calculating the offensive stat.
         */
        effectiveOffense = Calc_AttackerStat(defender->stats.attack, defender->stages.attack, FALSE, server->critical);
        effectiveDefense = Calc_DefenderStat(defender->stats.defense, defender->stages.defense, attackerUnaware, server->critical);
    } else if ((moveID == MOVE_PSYSHOCK) || (moveID == MOVE_PSYSTRIKE) || (moveID == MOVE_SECRET_SWORD)) {
        /*
         * Moves with this effect use the target's Defense stat instead of its Special
         * Defense stat during damage calculation. The move, however, still deals Special
         * damage.
         */
        effectiveOffense = Calc_AttackerStat(attacker->stats.spAttack, attacker->stages.spAttack, defenderUnaware, server->critical);
        effectiveDefense = Calc_DefenderStat(defender->stats.defense, defender->stages.defense, attackerUnaware, server->critical);
    } else if (moveID == MOVE_SACRED_SWORD) {
        /*
         * When calculating damage, Sacred Sword ignores the target's Defense stat stages.
         */
        effectiveOffense = Calc_AttackerStat(attacker->stats.attack, attacker->stages.attack, defenderUnaware, server->critical);
        effectiveDefense = Calc_DefenderStat(defender->stats.defense, defender->stages.defense, TRUE, server->critical);
    } else {
        /*
         * All other moves determine offensive/defensive stats depending on the PSS-split.
         */
        if (movePSS == SPLIT_PHYSICAL) {
            effectiveOffense = Calc_AttackerStat(attacker->stats.attack, attacker->stages.attack, defenderUnaware, server->critical);
            effectiveDefense = Calc_DefenderStat(defender->stats.defense, defender->stages.defense, attackerUnaware, server->critical);
        } else {
            effectiveOffense = Calc_AttackerStat(attacker->stats.spAttack, attacker->stages.spAttack, defenderUnaware, server->critical);
            effectiveDefense = Calc_DefenderStat(defender->stats.spDefense, defender->stages.spDefense, attackerUnaware, server->critical);
        }
#ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] A/D Stats:\n");
        debugsyscall(buf);
        sprintf(buf, "[PLAT-ENGINE] -- Attack:  %d\n", effectiveOffense);
        debugsyscall(buf);
        sprintf(buf, "[PLAT-ENGINE] -- Defense: %d\n", effectiveDefense);
        debugsyscall(buf);
#endif
    }

    // Unlike all other offensive modifiers, Hustle is applied directly to the
    // Attack stat.
    if (attacker->ability == ABILITY_HUSTLE && movePSS == SPLIT_PHYSICAL) {
        effectiveOffense = QMul_RoundDown(effectiveOffense, UQ412__1_5);
    }

    // Unlike all other defensive modifiers, Sandstorm SpD boost gets applied
    // directly.
    // Note: this is also where Snow's Def boost for Ice-types goes.
    if ((WeatherIsActive(battle, server, WEATHER_SANDSTORM_ANY) && ((defender->type1 == TYPE_ROCK) || (defender->type2 == TYPE_ROCK)) && (movePSS == SPLIT_SPECIAL)) ||
        (WeatherIsActive(battle, server, WEATHER_SNOW_ANY) && ((defender->type1 == TYPE_ICE) || (defender->type2 == TYPE_ICE)) && (movePSS == SPLIT_PHYSICAL))) {
        effectiveDefense = QMul_RoundDown(effectiveDefense, UQ412__1_5);
    }

    // Other stat modifiers are applied as a chain.
    effectiveOffense = Calc_ChainOffenseMods(battle, server, attacker, defender, effectiveOffense, moveType, movePSS);
    effectiveDefense = Calc_ChainDefenseMods(battle, server, attacker, defender, effectiveDefense, moveType, movePSS);

#ifdef DEBUG_DAMAGE_CALC
    sprintf(buf, "[PLAT-ENGINE] -- Attack w/Mods:  %d\n", effectiveOffense);
    debugsyscall(buf);
    sprintf(buf, "[PLAT-ENGINE] -- Defense w/Mods: %d\n\n", effectiveDefense);
    debugsyscall(buf);
#endif

    // All of these divisions are integer-division.
    s32 baseDamage = 2 * BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_LEVEL, NULL);

#ifdef DEBUG_DAMAGE_CALC
    sprintf(buf, "[PLAT-ENGINE] Base Damage Calcs:\n");
    debugsyscall(buf);
    sprintf(buf, "[PLAT-ENGINE] -- Level x 2:       %ld\n", baseDamage);
    debugsyscall(buf);
#endif

    baseDamage = baseDamage / 5 + 2;
#ifdef DEBUG_DAMAGE_CALC
    sprintf(buf, "[PLAT-ENGINE] -- Div by 5, + 2:   %ld\n", baseDamage);
    debugsyscall(buf);
#endif

    baseDamage = baseDamage * modifiedBasePower;
#ifdef DEBUG_DAMAGE_CALC
    sprintf(buf, "[PLAT-ENGINE] -- Mul by BP:       %ld\n", baseDamage);
    debugsyscall(buf);
#endif

    baseDamage = baseDamage * effectiveOffense;
#ifdef DEBUG_DAMAGE_CALC
    sprintf(buf, "[PLAT-ENGINE] -- Mul by Attack:   %ld\n", baseDamage);
    debugsyscall(buf);
#endif

    baseDamage = baseDamage / effectiveDefense;
#ifdef DEBUG_DAMAGE_CALC
    sprintf(buf, "[PLAT-ENGINE] -- Div by Defense:  %ld\n", baseDamage);
    debugsyscall(buf);
#endif

    baseDamage = baseDamage / 50 + 2;
#ifdef DEBUG_DAMAGE_CALC
    sprintf(buf, "[PLAT-ENGINE] -- Div by 50, + 2:  %ld\n\n", baseDamage);
    debugsyscall(buf);
#endif

    return baseDamage;

    /*
        // ORGINIAL CODE BELOW
        u32 i;
        s32 damage = 0;
        u8 movetype;
        u8 movesplit;
        u16 attack;
        u16 defense;
        u16 sp_attack;
        u16 sp_defense;
        s8 atkstate;
        s8 defstate;
        s8 spatkstate;
        s8 spdefstate;
        u8 level;
        u16 movepower;
        u16 item;
        u32 battle_type;


        struct CalcParams AttackingMon;
        struct CalcParams DefendingMon;

        switch (moveno) {
            // Handle Body Press - Attack is derived from Defense
            case MOVE_BODY_PRESS:
                attack = BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_DEF, NULL);
                atkstate = BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_STATE_DEF, NULL) - 6;
                break;

            default:
                attack = BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_ATK, NULL);
                atkstate = BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_STATE_ATK, NULL) - 6;
                break;
        }

        defense = BattlePokemonParamGet(sp, defender, BATTLE_MON_DATA_DEF, NULL);
        sp_attack = BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_SPATK, NULL);
        sp_defense = BattlePokemonParamGet(sp, defender, BATTLE_MON_DATA_SPDEF, NULL);

        defstate = BattlePokemonParamGet(sp, defender, BATTLE_MON_DATA_STATE_DEF, NULL) - 6;
        spatkstate = BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_STATE_SPATK, NULL) - 6;
        spdefstate = BattlePokemonParamGet(sp, defender, BATTLE_MON_DATA_STATE_SPDEF, NULL) - 6;

        level = BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_LEVEL, NULL);

        AttackingMon.species = BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_SPECIES, NULL);
        DefendingMon.species = BattlePokemonParamGet(sp, defender, BATTLE_MON_DATA_SPECIES, NULL);
        AttackingMon.currentHP = BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_HP, NULL);
        DefendingMon.currentHP = BattlePokemonParamGet(sp, defender, BATTLE_MON_DATA_HP, NULL);
        AttackingMon.maxHP = BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_MAX_HP, NULL);
        DefendingMon.maxHP = BattlePokemonParamGet(sp, defender, BATTLE_MON_DATA_MAX_HP, NULL);
        AttackingMon.condition = BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_MAX_CONDITION, NULL);
        DefendingMon.condition = BattlePokemonParamGet(sp, defender, BATTLE_MON_DATA_MAX_CONDITION, NULL);
        AttackingMon.ability = GetBattlerAbility(sp, attacker);
        DefendingMon.ability = GetBattlerAbility(sp, defender);
        AttackingMon.gender = BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_SEX, NULL);
        DefendingMon.gender = BattlePokemonParamGet(sp, defender, BATTLE_MON_DATA_SEX, NULL);
        AttackingMon.type1 = BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_TYPE1, NULL);
        DefendingMon.type1 = BattlePokemonParamGet(sp, defender, BATTLE_MON_DATA_TYPE1, NULL);
        AttackingMon.type2 = BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_TYPE2, NULL);
        DefendingMon.type2 = BattlePokemonParamGet(sp, defender, BATTLE_MON_DATA_TYPE2, NULL);

        item = GetBattleMonItem(sp, attacker);
        AttackingMon.heldItemEffect = BattleItemDataGet(sp, item, 1);
        AttackingMon.heldItemPower = BattleItemDataGet(sp, item, 2);

        item = GetBattleMonItem(sp, defender);
        DefendingMon.heldItemEffect = BattleItemDataGet(sp, item, 1);
        DefendingMon.heldItemPower = BattleItemDataGet(sp, item, 2);

        battle_type = BattleTypeGet(bw);

        if (((MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_DISGUISE) == TRUE || MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_ICE_FACE) == TRUE) && GetMoveSplit(sp, moveno) == SPLIT_PHYSICAL) && sp->battlemon[defender].form_no == 0)
            return 0;

        if (pow == 0)
            movepower = sp->moveTbl[moveno].power;
        else
            movepower = pow;

        // get the type
        movetype = GetAdjustedMoveType(sp, attacker, moveno);
        movepower = movepower * sp->damage_value / 10;

        // handle charge
        if ((sp->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_CHARGE) && (movetype == TYPE_ELECTRIC))
            movepower *= 2;

        // handle helping hand
        if (sp->oneTurnFlag[attacker].helping_hand_flag)
            movepower = movepower * 15 / 10;

        // handle technician
        if ((AttackingMon.ability == ABILITY_TECHNICIAN) && (moveno != MOVE_STRUGGLE) && (movepower <= 60))
            movepower = movepower * 15 / 10;

        movesplit = GetMoveSplit(sp, moveno);

        // handle huge power + pure power
        if ((AttackingMon.ability == ABILITY_HUGE_POWER) || (AttackingMon.ability == ABILITY_PURE_POWER))
            attack = attack * 2;

        // handle slow start
        if ((AttackingMon.ability == ABILITY_SLOW_START)
         && ((BattleWorkMonDataGet(bw, sp, 3, 0) - BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_SLOW_START_COUNTER, NULL)) < 5))
            attack /= 2;

        // handle defeatist
        if ((AttackingMon.ability == ABILITY_DEFEATIST) && (AttackingMon.currentHP <= AttackingMon.maxHP / 2))
        {
            attack /= 2;
            sp_attack /= 2;
        }

        //handle analytic
        if (AttackingMon.ability == ABILITY_ANALYTIC)
        {
            for (i = 0; i < 4; i++)
            {
                if (attacker != i && sp->battlemon[i].hp != 0 && CalcSpeed(bw, sp, attacker, i, 0) == 0)
                {
                    break;
                }
            }
            if (i == 4)
            {
                movepower = movepower * 130 / 100;
            }

        }

        // handle sheer force
        if (AttackingMon.ability == ABILITY_SHEER_FORCE && sp->battlemon[attacker].sheer_force_flag == 1)
        {
            movepower = movepower * 130 / 100;
        }

    //    // handle punk rock TODO uncomment
    //    if (AttackingMon.ability == ABILITY_PUNK_ROCK && IsMoveSoundBased(sp->current_move_index))
    //    {
    //        movepower = movepower * 130 / 100;
    //        break;
    //    }


        // type boosting held items
        {
            u8 element[2] = {AttackingMon.heldItemEffect, movetype};
            if (IsElementInArray(HeldItemPowerUpTable, element, NELEMS(HeldItemPowerUpTable), sizeof(element)))
            {
                movepower = movepower * (100 + AttackingMon.heldItemPower) / 100;
            }
        }
        // handle choice band
        if (AttackingMon.heldItemEffect == HOLD_EFFECT_CHOICE_ATK)
            attack = attack * 150 / 100;

        // handle choice specs
        if (AttackingMon.heldItemEffect == HOLD_EFFECT_CHOICE_SPATK)
            sp_attack = sp_attack * 150 / 100;

        // handle soul dew - gen 7 changes it to just boost movepower if the type is dragon or psychic, no more defense boost
        if ((AttackingMon.heldItemEffect == HOLD_EFFECT_LATI_SPECIAL)
         && ((AttackingMon.species == SPECIES_LATIOS) || (AttackingMon.species == SPECIES_LATIAS))
         && (movetype == TYPE_DRAGON || movetype == TYPE_PSYCHIC))
        {
            movepower = movepower * 120 / 100; // 4915/4096
        }

        // handle deep sea tooth
        if ((AttackingMon.heldItemEffect == HOLD_EFFECT_CLAMPERL_SPATK) && (AttackingMon.species == SPECIES_CLAMPERL))
            sp_attack *= 2;

        // handle deep sea scale
        if ((DefendingMon.heldItemEffect == HOLD_EFFECT_CLAMPERL_SPDEF) && (DefendingMon.species == SPECIES_CLAMPERL))
            sp_defense *= 2;

        // handle light ball
        if ((AttackingMon.heldItemEffect == HOLD_EFFECT_PIKA_SPATK_UP) && (AttackingMon.species == SPECIES_PIKACHU))
            movepower *= 2;

        // handle metal powder
        if ((DefendingMon.heldItemEffect == HOLD_EFFECT_DITTO_DEF_UP) && (DefendingMon.species == SPECIES_DITTO))
            defense *= 2;

        // handle Gorilla Tactics
        if (AttackingMon.ability == ABILITY_GORILLA_TACTICS) {
            attack = attack * 150 / 100;
        }

        // Handle Assault Vest
        if ((DefendingMon.heldItemEffect == HOLD_EFFECT_SPDEF_BOOST_NO_STATUS_MOVES)) {
            sp_defense = sp_defense * 150 / 100;
        }

        // handle eviolite
        //if ((DefendingMon.item_held_effect == HOLD_EFFECT_EVIOLITE)
        //    defense *= 2;
        //    sp_defense *= 2;

        // handle thick club
        if ((AttackingMon.heldItemEffect == HOLD_EFFECT_CUBONE_ATK_UP)
         && ((AttackingMon.species == SPECIES_CUBONE)
          || (AttackingMon.species == SPECIES_MAROWAK)))
            attack *= 2;

        // handle adamant/lustrous/griseous orb & adamant crystal, lustrous globe & griseous core
        if ((AttackingMon.heldItemEffect == HOLD_EFFECT_DIALGA_BOOST) &&
            ((movetype == TYPE_DRAGON) || (movetype == TYPE_STEEL)) &&
            (AttackingMon.species == SPECIES_DIALGA))
        {
            movepower = movepower * (100 + AttackingMon.heldItemPower) / 100;
        }

        if ((AttackingMon.heldItemEffect == HOLD_EFFECT_DIALGA_BOOST_AND_TRANSFORM) &&
            ((movetype == TYPE_DRAGON) || (movetype == TYPE_STEEL)) &&
            ((BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_STATUS2, NULL) & STATUS2_TRANSFORMED) == 0) &&
            (AttackingMon.species == SPECIES_DIALGA))
        {
            movepower = movepower * (100 + AttackingMon.heldItemPower) / 100;
        }

        if ((AttackingMon.heldItemEffect == HOLD_EFFECT_PALKIA_BOOST) &&
            ((movetype == TYPE_DRAGON) || (movetype == TYPE_WATER)) &&
            (AttackingMon.species == SPECIES_PALKIA))
        {
            movepower = movepower * (100 + AttackingMon.heldItemPower) / 100;
        }

        if ((AttackingMon.heldItemEffect == HOLD_EFFECT_PALKIA_BOOST_AND_TRANSFORM) &&
            ((movetype == TYPE_DRAGON) || (movetype == TYPE_WATER)) &&
            ((BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_STATUS2, NULL) & STATUS2_TRANSFORMED) == 0) &&
            (AttackingMon.species == SPECIES_PALKIA))
        {
            movepower = movepower * (100 + AttackingMon.heldItemPower) / 100;
        }

        if ((AttackingMon.heldItemEffect == HOLD_EFFECT_GIRATINA_BOOST) &&
            ((movetype == TYPE_DRAGON) || (movetype == TYPE_GHOST)) &&
            (AttackingMon.species == SPECIES_GIRATINA))
        {
            movepower = movepower * (100 + AttackingMon.heldItemPower) / 100;
        }

        if ((AttackingMon.heldItemEffect == HOLD_EFFECT_GIRATINA_BOOST_AND_TRANSFORM) &&
            ((movetype == TYPE_DRAGON) || (movetype == TYPE_GHOST)) &&
            ((BattlePokemonParamGet(sp, attacker, BATTLE_MON_DATA_STATUS2, NULL) & STATUS2_TRANSFORMED) == 0) &&
            (AttackingMon.species == SPECIES_GIRATINA))
        {
            movepower = movepower * (100 + AttackingMon.heldItemPower) / 100;
        }

        // handle punching glove
        if ((AttackingMon.heldItemEffect == HOLD_EFFECT_INCREASE_PUNCHING_MOVE_DMG) && IsElementInArray(IronFistMovesTable, (u16 *)&moveno, NELEMS(IronFistMovesTable), sizeof(IronFistMovesTable[0])))
        {
            movepower = movepower * (100 + AttackingMon.heldItemPower) / 100;
        }

        // handle ogerpon mask boosts
        if (((AttackingMon.heldItemEffect == HOLD_EFFECT_CORNERSTONE_MASK) ||
            (AttackingMon.heldItemEffect == HOLD_EFFECT_WELLSPRING_MASK) ||
            (AttackingMon.heldItemEffect == HOLD_EFFECT_HEARTHFLAME_MASK)) &&
            (AttackingMon.species == SPECIES_OGERPON))
        {
            movepower = movepower * (100 + AttackingMon.heldItemPower) / 100;
        }

        // handle items that boost physical/special moves
        if ((AttackingMon.heldItemEffect == HOLD_EFFECT_POWER_UP_PHYS) && (movesplit == SPLIT_PHYSICAL))
        {
            movepower = movepower * (100 + AttackingMon.heldItemPower) / 100;
        }

        if ((AttackingMon.heldItemEffect == HOLD_EFFECT_POWER_UP_SPEC) && (movesplit == SPLIT_SPECIAL))
        {
            movepower = movepower * (100 + AttackingMon.heldItemPower) / 100;
        }

        // handle thick fat
        if ((MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_THICK_FAT) == TRUE) &&
            ((movetype == TYPE_FIRE) || (movetype == TYPE_ICE)))
        {
            movepower /= 2;
        }

        // handle hustle
        if (AttackingMon.ability == ABILITY_HUSTLE)
        {
            attack = attack * 150 / 100;
        }

        // handle guts
        if ((AttackingMon.ability == ABILITY_GUTS) && (AttackingMon.condition))
        {
            attack = attack * 150 / 100;
        }

        // handle toxic boost
        if ((AttackingMon.ability == ABILITY_TOXIC_BOOST) && ((AttackingMon.condition & STATUS_FLAG_BADLY_POISONED) || (AttackingMon.condition & STATUS_FLAG_POISONED)))
        {
            attack = attack * 150 / 100;
        }

        // handle flare boost
        if ((AttackingMon.ability == ABILITY_FLARE_BOOST) && ((AttackingMon.condition & STATUS_FLAG_BURNED)))
        {
            sp_attack = sp_attack * 150 / 100;
        }

        // handle tough claws
        if ((AttackingMon.ability == ABILITY_TOUGH_CLAWS) && (sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT))
        {
            movepower = movepower * 130 / 100;
        }

        // Handle Fluffy
        if (DefendingMon.ability == ABILITY_FLUFFY) {
            if (sp->moveTbl[sp->current_move_index].flag & FLAG_CONTACT) {
                movepower = movepower * 50 / 100;
            }

            if (movetype == TYPE_FIRE) {
                movepower = movepower * 200 / 100;
            }
        }

        // handle marvel scale
        if ((MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_MARVEL_SCALE) == TRUE) && (AttackingMon.condition))
        {
            defense = defense * 150 / 100;
        }

        // handle grass pelt
        if ((MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_GRASS_PELT) == TRUE) && (sp->terrainOverlay.type == GRASSY_TERRAIN && sp->terrainOverlay.numberOfTurnsLeft > 0))
        {
            defense = defense * 150 / 100;
        }

        // handle plus/minus
        if (((AttackingMon.ability == ABILITY_PLUS) || (AttackingMon.ability == ABILITY_MINUS)) &&
            (CheckSideAbility(bw, sp, CHECK_ABILITY_SAME_SIDE_HP, attacker, ABILITY_MINUS) ||
            CheckSideAbility(bw, sp, CHECK_ABILITY_SAME_SIDE_HP, attacker, ABILITY_PLUS)))
        {
            sp_attack = sp_attack * 150 / 100;
        }

        // handle fur coat - double defense
        if ((MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_FUR_COAT) == TRUE))
        {
            defense *= 2;
        }

        // handle mud/water sport
        if ((movetype == TYPE_ELECTRIC) && (CheckFieldMoveEffect(bw, sp, MOVE_EFFECT_FLAG_MUD_SPORT)))
        {
            movepower /= 3;
        }

        if ((movetype == TYPE_FIRE) && (CheckFieldMoveEffect(bw, sp, MOVE_EFFECT_FLAG_WATER_SPORT)))
        {
            movepower /= 3;
        }

        // handle "in a pinch" type boosters
        if ((movetype == TYPE_GRASS) && (AttackingMon.ability == ABILITY_OVERGROW) && (AttackingMon.currentHP <= AttackingMon.maxHP * 10 / 30))
        {
            movepower = movepower * 150 / 100;
        }

        if ((movetype == TYPE_FIRE) && (AttackingMon.ability == ABILITY_BLAZE) && (AttackingMon.currentHP <= AttackingMon.maxHP * 10 / 30))
        {
            movepower = movepower * 150 / 100;
        }

        if ((movetype == TYPE_WATER) && (AttackingMon.ability == ABILITY_TORRENT) && (AttackingMon.currentHP <= AttackingMon.maxHP * 10 / 30))
        {
            movepower = movepower * 150 / 100;
        }

        if ((movetype == TYPE_BUG) && (AttackingMon.ability == ABILITY_SWARM) && (AttackingMon.currentHP <= AttackingMon.maxHP * 10 / 30))
        {
            movepower = movepower * 150 / 100;
        }

        // handle ice scales - halve damage if move is special, regardless of if it uses defense stat
        if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_ICE_SCALES) == TRUE && movesplit == SPLIT_SPECIAL)
        {
            movepower /= 2;
        }

        // handle steelworker
        if(AttackingMon.ability == ABILITY_STEELWORKER && (movetype == TYPE_STEEL))
        {
            movepower = movepower * 150 / 100;
        }

        // handle dragon's maw
        if(AttackingMon.ability == ABILITY_DRAGONS_MAW && (movetype == TYPE_DRAGON))
        {
            movepower = movepower * 150 / 100;
        }

        // handle transistor
        if(AttackingMon.ability == ABILITY_TRANSISTOR && (movetype == TYPE_ELECTRIC))
        {
            movepower = movepower * 130 / 100;
        }

        // handle rocky payload
        if(AttackingMon.ability == ABILITY_ROCKY_PAYLOAD && (movetype == TYPE_ROCK))
        {
            movepower = movepower * 150 / 100;
        }

        // if dark aura is present but not aura break
        if ((movetype == TYPE_DARK) && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_DARK_AURA) != 0)
          && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AURA_BREAK) == 0))
            movepower = movepower * 133 / 100;

        // if dark aura is present AND aura break
        else if ((movetype == TYPE_DARK) && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_DARK_AURA) != 0)
          && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AURA_BREAK) != 0))
            movepower = movepower * 100 / 133;

    #if FAIRY_TYPE_IMPLEMENTED == 1
        // if FAIRY aura is present but not aura break
        if ((movetype == TYPE_FAIRY) && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_FAIRY_AURA) != 0)
          && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AURA_BREAK) == 0))
            movepower = movepower * 133 / 100;

        // if FAIRY aura is present AND aura break
        else if ((movetype == TYPE_FAIRY) && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_FAIRY_AURA) != 0)
          && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AURA_BREAK) != 0))
            movepower = movepower * 100 / 133;
    #endif

        // handle steely spirit for the ally
        if (movetype == TYPE_STEEL && GetBattlerAbility(sp, BATTLER_ALLY(attacker)) == ABILITY_STEELY_SPIRIT)
        {
            movepower = movepower * 150 / 100;
        }
        // handle steely spirit for the attacker--can stack
        if (movetype == TYPE_STEEL && AttackingMon.ability == ABILITY_STEELY_SPIRIT)
        {
            movepower = movepower * 150 / 100;
        }

        // handle battery
        if (GetBattlerAbility(sp, BATTLER_ALLY(attacker)) == ABILITY_BATTERY)
        {
            sp_attack = sp_attack * 130 / 100;
        }

        // handle power spot
        if (GetBattlerAbility(sp, BATTLER_ALLY(attacker)) == ABILITY_POWER_SPOT)
        {
            movepower = movepower * 130 / 100;
        }

        // handle friend guard
        if (GetBattlerAbility(sp, BATTLER_ALLY(defender)) == ABILITY_FRIEND_GUARD)
        {
            movepower = movepower * 75 / 100;
        }

        if (MoveIsAffectedByNormalizeVariants(moveno)) {
            // handle aerilate - 20% boost if a normal type move was changed to a flying type move.  does not boost flying type moves themselves
            if (AttackingMon.ability == ABILITY_AERILATE && movetype == TYPE_FLYING && sp->moveTbl[moveno].type == TYPE_NORMAL) {
                movepower = movepower * 120 / 100;
            }

            // handle pixilate - 20% boost if a normal type move was changed to a fairy type move.  does not boost fairy type moves themselves
            if (AttackingMon.ability == ABILITY_PIXILATE && movetype == TYPE_FAIRY && sp->moveTbl[moveno].type == TYPE_NORMAL) {
                movepower = movepower * 120 / 100;
            }

            // handle galvanize - 20% boost if a normal type move was changed to an electric type move.  does not boost electric type moves themselves
            if (AttackingMon.ability == ABILITY_GALVANIZE && movetype == TYPE_ELECTRIC && sp->moveTbl[moveno].type == TYPE_NORMAL) {
                movepower = movepower * 120 / 100;
            }

            // handle refrigerate - 20% boost if a normal type move was changed to an ice type move.  does not boost ice type moves themselves
            if (AttackingMon.ability == ABILITY_REFRIGERATE && movetype == TYPE_ICE && sp->moveTbl[moveno].type == TYPE_NORMAL) {
                movepower = movepower * 120 / 100;
            }

            // handle normalize - 20% boost if a normal type move is used (and it changes types to normal too)
            if (AttackingMon.ability == ABILITY_NORMALIZE && movetype == TYPE_NORMAL) {
                movepower = movepower * 120 / 100;
            }
        }

        // handle heatproof/dry skin
        if ((movetype == TYPE_FIRE) && (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_HEATPROOF) == TRUE))
        {
            movepower /= 2;
        }

        if ((movetype == TYPE_FIRE) && (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_DRY_SKIN) == TRUE))
        {
            movepower = movepower * 125 / 100;
        }

        // handle simple
        if (AttackingMon.ability == ABILITY_SIMPLE)
        {
            atkstate *= 2;
            if (atkstate < -6)
            {
                atkstate = -6;
            }
            if (atkstate > 6)
            {
                atkstate = 6;
            }
            spatkstate *= 2;
            if (spatkstate < -6)
            {
                spatkstate = -6;
            }
            if (spatkstate > 6)
            {
                spatkstate = 6;
            }
        }

        if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_SIMPLE) == TRUE)
        {
            defstate *= 2;
            if (defstate < -6)
            {
                defstate = -6;
            }
            if (defstate > 6)
            {
                defstate = 6;
            }
            spdefstate *= 2;
            if (spdefstate < -6)
            {
                spdefstate = -6;
            }
            if (spdefstate > 6)
            {
                spdefstate = 6;
            }
        }

        // handle unaware
        if (MoldBreakerAbilityCheck(sp, attacker, defender, ABILITY_UNAWARE) == TRUE)
        {
            atkstate = 0;
            spatkstate = 0;
        }

        if (AttackingMon.ability == ABILITY_UNAWARE)
        {
            defstate = 0;
            spdefstate = 0;
        }

        // adjust states to access from the array
        atkstate += 6;
        defstate += 6;
        spatkstate += 6;
        spdefstate += 6;

        // handle rivalry
        if ((AttackingMon.ability == ABILITY_RIVALRY) &&
            (AttackingMon.gender == DefendingMon.gender) && (AttackingMon.gender != POKEMON_GENDER_UNKNOWN) && (DefendingMon.gender != POKEMON_GENDER_UNKNOWN))
        {
            movepower = movepower * 125 / 100;
        }

        if ((AttackingMon.ability == ABILITY_RIVALRY) &&
            (AttackingMon.gender != DefendingMon.gender) && (AttackingMon.gender != POKEMON_GENDER_UNKNOWN) && (DefendingMon.gender != POKEMON_GENDER_UNKNOWN))
        {
            movepower = movepower * 75 / 100;
        }

        // handle iron fist
        if ((AttackingMon.ability == ABILITY_IRON_FIST) && IsElementInArray(IronFistMovesTable, (u16 *)&moveno, NELEMS(IronFistMovesTable), sizeof(IronFistMovesTable[0])))
        {
            movepower = movepower * 12 / 10;
        }

        // handle strong jaw
        if ((AttackingMon.ability == ABILITY_STRONG_JAW) && IsElementInArray(StrongJawMovesTable, (u16 *)&moveno, NELEMS(StrongJawMovesTable), sizeof(StrongJawMovesTable[0])))
        {
            movepower = movepower * 15 / 10;
        }

        // handle mega launcher
        if ((AttackingMon.ability == ABILITY_MEGA_LAUNCHER) && IsElementInArray(MegaLauncherMovesTable, (u16 *)&moveno, NELEMS(MegaLauncherMovesTable), sizeof(MegaLauncherMovesTable[0])))
        {
            movepower = movepower * 15 / 10;
        }

        // handle sharpness
        if ((AttackingMon.ability == ABILITY_SHARPNESS) && IsElementInArray(SharpnessMovesTable, (u16 *)&moveno, NELEMS(SharpnessMovesTable), sizeof(SharpnessMovesTable[0])))
        {
            movepower = movepower * 15 / 10;
        }

        // handle water bubble
        if((AttackingMon.ability == ABILITY_WATER_BUBBLE) && (movetype == TYPE_WATER))
        {
            movepower = movepower * 2;
        }

        // Handle field effects interacting with their moves
        if (sp->terrainOverlay.numberOfTurnsLeft > 0) {
            switch (sp->terrainOverlay.type)
            {
            case ELECTRIC_TERRAIN:
                if (IsClientGrounded(sp, defender) && moveno == MOVE_RISING_VOLTAGE) {
                    movepower = movepower * 2;
                }
                break;
            case MISTY_TERRAIN:
                if (IsClientGrounded(sp, attacker) && moveno == MOVE_MISTY_EXPLOSION) {
                    movepower = movepower * 15 / 10;
                }
                break;
            case PSYCHIC_TERRAIN:
                if (IsClientGrounded(sp, attacker) && moveno == MOVE_EXPANDING_FORCE) {
                    movepower = movepower * 15 / 10;
                }
                break;
            default:
                break;
            }
        }

        // handle weather boosts
        if ((CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0) &&
            (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0))
        {
            if ((field_cond & WEATHER_SUNNY_ANY) && (AttackingMon.ability == ABILITY_SOLAR_POWER))
            {
                sp_attack = sp_attack * 15 / 10;
            }
            if ((field_cond & WEATHER_SANDSTORM_ANY) &&
                ((DefendingMon.type1 == TYPE_ROCK) || (DefendingMon.type2 == TYPE_ROCK)))
            {
                sp_defense = sp_defense * 15 / 10;
            }
            if ((field_cond & WEATHER_SNOW_ANY) &&
                ((DefendingMon.type1 == TYPE_ICE) || (DefendingMon.type2 == TYPE_ICE)))
            {
                defense = defense * 15 / 10;
            }
            if ((field_cond & WEATHER_SUNNY_ANY) &&
                (CheckSideAbility(bw, sp, CHECK_ABILITY_SAME_SIDE_HP, attacker, ABILITY_FLOWER_GIFT)))
            {
                attack = attack * 15 / 10;
            }
            if ((field_cond & WEATHER_SUNNY_ANY) &&
                (AttackingMon.ability != ABILITY_MOLD_BREAKER) &&
                (CheckSideAbility(bw, sp, CHECK_ABILITY_SAME_SIDE_HP, defender, ABILITY_FLOWER_GIFT)))
            {
                sp_defense = sp_defense * 15 / 10;
            }
        }

        u16 equivalentAttack;
        u16 equivalentDefense;
        getEquivalentAttackAndDefense(sp, attack, defense, sp_attack, sp_defense, atkstate, defstate, spatkstate, spdefstate, &movesplit, attacker, defender, critical, moveno, &equivalentAttack, &equivalentDefense);

        //// halve the defense if using selfdestruct/explosion
        //if (sp->moveTbl[moveno].effect == MOVE_EFFECT_HALVE_DEFENSE)
        //    defense = defense / 2;

        damage = equivalentAttack * movepower;
        damage *= (level * 2 / 5 + 2);

        damage = damage / equivalentDefense;
        damage /= 50;

        // Handle Parental Bond
        if (sp->battlemon[attacker].parental_bond_flag == 2) {
            damage /= 4;
        }
        switch (sp->battlemon[attacker].parental_bond_flag) {
            case 1:
                sp->battlemon[attacker].parental_bond_flag++;
                sp->battlemon[attacker].parental_bond_is_active = TRUE; // after first hit, set this flag just in case the ability is nullified after the first one
                break;
            default:
                sp->battlemon[attacker].parental_bond_flag = 0;
                break;
        }

        // handle physical moves
        if (movesplit == SPLIT_PHYSICAL)
        {
            // burns halve physical damage.  this is ignored by guts and facade (as of gen 6)
            if ((AttackingMon.condition & STATUS_FLAG_BURNED) && (AttackingMon.ability != ABILITY_GUTS) && (moveno != MOVE_FACADE))
            {
                damage /= 2;
            }

            // handle reflect
            if (((side_cond & SIDE_STATUS_REFLECT) != 0)
             && (critical == 1)
             && (sp->moveTbl[moveno].effect != MOVE_EFFECT_REMOVE_SCREENS)
             && (AttackingMon.ability != ABILITY_INFILTRATOR))
            {
                if ((battle_type & BATTLE_TYPE_DOUBLE) && (CheckNumMonsHit(bw, sp, 1, defender) == 2))
                {
                    damage = damage * 2 / 3;
                }
                else
                {
                    damage /= 2;
                }
            }
        }
        else// if (movesplit == SPLIT_SPECIAL) // same as above, handle special moves
        {
            // handle light screen
            if (((side_cond & SIDE_STATUS_LIGHT_SCREEN) != 0)
             && (critical == 1)
             && (sp->moveTbl[moveno].effect != MOVE_EFFECT_REMOVE_SCREENS)
             && (AttackingMon.ability != ABILITY_INFILTRATOR))
            {
                if ((battle_type & BATTLE_TYPE_DOUBLE) && (CheckNumMonsHit(bw, sp, 1, defender) == 2))
                {
                    damage = damage * 2 / 3;
                }
                else
                {
                    damage /= 2;
                }
            }
        }

        if ((battle_type & BATTLE_TYPE_DOUBLE) &&
            (sp->moveTbl[moveno].target == 0x4) &&
            (CheckNumMonsHit(bw, sp, 1, defender) == 2))
        {
            damage = damage * 3 / 4;
        }

        if ((battle_type & BATTLE_TYPE_DOUBLE) &&
            (sp->moveTbl[moveno].target == 0x8) &&
            (CheckNumMonsHit(bw, sp, 1, defender) >= 2))
        {
            damage = damage * 3 / 4;
        }

        // handle weather inate type boosts
        if ((CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0) &&
            (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0))
        {
            if (field_cond & WEATHER_RAIN_ANY) // handle rain boosts
            {
                switch (movetype)
                {
                case TYPE_FIRE:
                    damage /= 2;
                    break;
                case TYPE_WATER:
                    damage = damage * 15 / 10;
                    break;
                }
            }

            if ((field_cond & (FIELD_STATUS_FOG | WEATHER_HAIL_ANY | WEATHER_SANDSTORM_ANY | WEATHER_RAIN_ANY | WEATHER_SNOW_ANY)) && (moveno == MOVE_SOLAR_BEAM || moveno == MOVE_SOLAR_BLADE)) // solar beam nerf
            {
                damage /= 2;
            }

            if (field_cond & WEATHER_SUNNY_ANY) // sun boosts fire but nerfs water
            {
                switch (movetype)
                {
                case TYPE_FIRE:
                    damage = damage * 15 / 10;
                    break;
                case TYPE_WATER:
                    // If the current weather is Sunny Day and the user is not holding Utility Umbrella, this move's damage is multiplied by 1.5 instead of halved for being Water type.
                    if (moveno == MOVE_HYDRO_STEAM && item != ITEM_UTILITY_UMBRELLA) {
                        damage = damage * 15 / 10;
                    } else {
                        damage /= 2;
                    }
                    break;
                }
            }

            if (AttackingMon.ability == ABILITY_SAND_FORCE // sand force boosts damage in sand for certain move types
             && field_cond & WEATHER_SANDSTORM_ANY
             && (movetype == TYPE_GROUND || movetype == TYPE_ROCK || movetype == TYPE_STEEL))
            {
                damage = damage * 130 / 100;
            }
        }

        if ((BattlePokemonParamGet(sp, attacker, BATTLE_MON_FLASH_FIRE_ACTIVATED, NULL)) && (movetype == TYPE_FIRE))
        {
            damage = damage * 15 / 10;
        }

        // handle multiscale
        if ((DefendingMon.ability == ABILITY_MULTISCALE) && (DefendingMon.currentHP == DefendingMon.maxHP))
        {
            damage /= 2;
        }

        // handle shadow shield
        if ((DefendingMon.ability == ABILITY_SHADOW_SHIELD) && (DefendingMon.currentHP == DefendingMon.maxHP))
        {
            damage /= 2;
        }

        // handle water bubble
        if ((DefendingMon.ability == ABILITY_WATER_BUBBLE) && (movetype == TYPE_FIRE))
        {
            damage /= 2;
        }

    //    // handle punk rock TODO uncomment
    //    if (DefendingMon.ability == ABILITY_PUNK_ROCK && IsMoveSoundBased(moveno))
    //    {
    //        damage /= 2;
    //        break;
    //    }

        // Handle field effects
        if (sp->terrainOverlay.numberOfTurnsLeft > 0) {
            switch (sp->terrainOverlay.type)
            {
            case GRASSY_TERRAIN:
                if (IsClientGrounded(sp, attacker) && movetype == TYPE_GRASS) {
                    damage = damage * 130 / 100;
                }
                if (moveno == MOVE_EARTHQUAKE || moveno == MOVE_MAGNITUDE || moveno == MOVE_BULLDOZE) {
                    damage /= 2;
                }
                break;
            case ELECTRIC_TERRAIN:
                if (IsClientGrounded(sp, attacker) && movetype == TYPE_ELECTRIC) {
                    damage = damage * 130 / 100;
                }
                break;
            case MISTY_TERRAIN:
                if (IsClientGrounded(sp, defender) && movetype == TYPE_DRAGON) {
                    damage /= 2;
                }
                break;
            case PSYCHIC_TERRAIN:
                if (IsClientGrounded(sp, attacker) && movetype == TYPE_PSYCHIC) {
                    damage = damage * 130 / 100;
                }
                break;
            default:
                break;
            }
        }

        return damage + 2;
    */
}




/**
 * @brief Checks if an immunity is active.
 * 
 * @param server 
 * @param attacker 
 * @param defender 
 * @param moveType 
 * @return BOOL 
 */
static BOOL Calc_ImmunityActive(struct BattleStruct *server, struct CalcParams *attacker, struct CalcParams *defender, u8 moveType)
{
    switch (moveType) {
        case TYPE_NORMAL:
        case TYPE_FIGHTING:
            // Stuff that removes existing immunities to Normal and Fighting:
            //   - Foresight / Odor Sleuth (same effect)
            //   - Scrappy
            //   - Mind's Eye
            if ((attacker->ability == ABILITY_SCRAPPY)
                    || (attacker->ability == ABILITY_MINDS_EYE)
                    || (server->battlemon[server->defence_client].condition2 & STATUS2_FORESIGHT)) {
                return FALSE;
            }
            break;
        case TYPE_GROUND:
            // Stuff that removes existing immunities to Ground:
            //   - Iron Ball
            //   - Ingrain
            //   - Roost
            //   - Gravity
            //   - TODO: Smack Down, Thousand Arrows
            if ((defender->heldItemEffect == HOLD_EFFECT_SPEED_DOWN_GROUNDED)
                    || (server->battlemon[server->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN)
                    || (server->oneTurnFlag[server->defence_client].haneyasume_flag)
                    || (server->field_condition & FIELD_STATUS_GRAVITY)) {
                return FALSE;
            }
            break;
        case TYPE_PSYCHIC:
            // Check for Miracle Eye
            if (server->battlemon[server->defence_client].effect_of_moves & MOVE_EFFECT_FLAG_MIRACLE_EYE) {
                return FALSE;
            }
            break;
        default:
            return TRUE;
    }

    return TRUE;
}


/**
 * @brief Calculates the type-effectiveness modifier.
 * 
 * @param server 
 * @param attacker 
 * @param defender 
 * @return u16 
 */
static u16 Calc_TypeModifier(struct BattleStruct *server, struct CalcParams *attacker, struct CalcParams *defender)
{
    #ifdef DEBUG_DAMAGE_CALC
    u8 buf[128];
    sprintf(buf, "[PLAT-ENGINE] Type Modifier:\n");
    debugsyscall(buf);
    #endif 

    // Ground can have additional immunities ahead of typing:
    //  - Levitate
    //  - Magnet Rise
    //  - TODO: Air Balloon
    //  - TODO: Telekinesis
    // Effects that break Ground-type immunities also break these.
    if (server->move_type == TYPE_GROUND
            && !Calc_ImmunityActive(server, attacker, defender, TYPE_GROUND)) {
        if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_LEVITATE)) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Defender has Levitate\n");
            debugsyscall(buf);
            #endif

            server->waza_status_flag = server->waza_status_flag | MOVE_STATUS_FLAG_LEVITATE_MISS;
        } else if (server->battlemon[server->defence_client].moveeffect.magnetRiseTurns) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Defender has Magnet Rise\n");
            debugsyscall(buf);
            #endif

            server->waza_status_flag = server->waza_status_flag | MOVE_STATUS_FLAG_MAGNET_RISE_MISS;
        }

        return 0;
    }

    // TODO: Check for Burn Up, Double Shock on these types
    // TODO: Forest's Curse, Trick-or-Treat
    u8 type1 = defender->type1;
    u8 type2 = defender->type2;

    // If the defending Pokemon is Roosting, ignore its Flying type for the purpose of type-checks.
    // This is subject to the following rules:
    //   - If the Pokemon is mono-Flying, then it should be treated as Normal type.
    //   - If the Pokemon is a dual-typing that lost its other type due to some effect (e.g.,
    //     a Fire/Flying-type which previously used Burn Up), then it should be treated as typeless.
    //   - If the Pokemon is mono-Flying but was previously hit with an effect which bestows an
    //     additional type upon it (e.g., Forest's Curse), then its Flying type will be replaced
    //     by the Normal type, but its additional "third" typing will remain.
    if (server->oneTurnFlag[server->defence_client].haneyasume_flag) {
        // Handle dual-types with a Flying sub-type.
        if ((type1 == TYPE_FLYING) && (type2 != TYPE_FLYING)) {
            type1 = TYPE_TYPELESS;
        } else if ((type1 != TYPE_FLYING) && (type2 == TYPE_FLYING)) {
            type2 = TYPE_TYPELESS;
        } else if ((type1 == TYPE_FLYING) && (type2 == TYPE_FLYING)) {
            type1 = TYPE_NORMAL;
            type2 = TYPE_NORMAL;
        }
    }

    // Now we can check for effectiveness on the types.
    u16 typeMod = UQ412__1_0;
    const s8 *typeMatchups = sTypeEffectiveness[server->move_type];
    #ifdef DEBUG_DAMAGE_CALC
    // sprintf(buf, "[PLAT-ENGINE] -- Attacking type: %s\n", sTypeStrings[server->move_type]);
    // debugsyscall(buf);
    #endif

    // TODO: Strong Winds, etc
    if (type1 != TYPE_TYPELESS) {
        s8 type1Matchup = typeMatchups[type1];
        #ifdef DEBUG_DAMAGE_CALC
        // sprintf(buf, "[PLAT-ENGINE] -- vs. Type 1:  %s\n", sTypeStrings[type1]);
        // debugsyscall(buf);
        #endif

        switch (type1Matchup) {
            case    0:                          // normal effectiveness
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Neutral\n");
                debugsyscall(buf);
                #endif

                break;
            case    1:                          // super effective
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Weakness: 2x\n");
                debugsyscall(buf);
                #endif

                typeMod = typeMod << 1;
                break;
            case   -1:                          // not very effective
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Resisted: 0.5x\n");
                debugsyscall(buf);
                #endif

                typeMod = typeMod >> 1;
                break;
            default:                            // immune
                if (Calc_ImmunityActive(server, attacker, defender, server->move_type)) {
                    #ifdef DEBUG_DAMAGE_CALC
                    sprintf(buf, "[PLAT-ENGINE] ---- Immune: 0x\n");
                    debugsyscall(buf);
                    #endif

                    typeMod = 0;
                }
                break;
        }
    }

    // mono-type mons are technically double of the one type
    if (type1 != type2 && type2 != TYPE_TYPELESS) {
        s8 type2Matchup = typeMatchups[type2];
        #ifdef DEBUG_DAMAGE_CALC
        // sprintf(buf, "[PLAT-ENGINE] -- vs. Type 2:  %s\n", sTypeStrings[type2]);
        // debugsyscall(buf);
        #endif

        switch (type2Matchup) {
            case    0:                          // normal damage
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Neutral\n");
                debugsyscall(buf);
                #endif

                break;
            case    1:                          // super effective
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Weakness: 2x\n");
                debugsyscall(buf);
                #endif

                typeMod = typeMod << 1;
                break;
            case   -1:                          // not very effective
                #ifdef DEBUG_DAMAGE_CALC
                sprintf(buf, "[PLAT-ENGINE] ---- Resisted: 0.5x\n");
                debugsyscall(buf);
                #endif

                typeMod = typeMod >> 1;
                break;
            default:                            // immune
                if (Calc_ImmunityActive(server, attacker, defender, server->move_type)) {
                    #ifdef DEBUG_DAMAGE_CALC
                    sprintf(buf, "[PLAT-ENGINE] ---- Immune: 0x\n");
                    debugsyscall(buf);
                    #endif

                    typeMod = 0;
                }
                break;
        }
    }

    // Wonder Guard override check goes here
    if (MoldBreakerAbilityCheck(server, server->attack_client, server->defence_client, ABILITY_WONDER_GUARD)
            && ShouldDelayTurnEffectivenessChecking(server, server->current_move_index)
            && typeMod < UQ412__2_0) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Defender has Wonder Guard; immune\n\n");
        debugsyscall(buf);
        #endif

        server->waza_status_flag = server->waza_status_flag | MOVE_STATUS_FLAG_MISS_WONDER_GUARD;
        return 0;
    }

    // If the type-effectiveness ignorance flag is in play, default back to 1x (unless already 0x)
    // This has to happen after all checks to account for moves like Night Shade and Dragon Rage
    // dealing fixed damage but still having immunities
    if ((server->server_status_flag & BATTLE_STATUS_IGNORE_TYPE_EFFECTIVENESS) && (typeMod != 0)) {
        server->waza_status_flag = server->waza_status_flag | ~MOVE_STATUS_FLAG_SUPER_EFFECTIVE;
        server->waza_status_flag = server->waza_status_flag | ~MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE;
        return UQ412__1_0;
    }

    if (typeMod == 0) {
        server->waza_status_flag = server->waza_status_flag | MOVE_STATUS_FLAG_NOT_EFFECTIVE;
    }

    if (typeMod > UQ412__1_0) {
        server->waza_status_flag = server->waza_status_flag | MOVE_STATUS_FLAG_SUPER_EFFECTIVE;
    }
    
    if (typeMod < UQ412__1_0) {
        server->waza_status_flag = server->waza_status_flag | MOVE_STATUS_FLAG_NOT_VERY_EFFECTIVE;
    }

    return typeMod;
}


/**
 *  @brief calculate overall damage, accounting for critical hits and me first boosts.  passed into damage roller below
 *  Equivalent to Calc_MoveDamage in plat-engine
 *  https://github.com/lhearachel/plat-engine/blob/00bbf5fc4d743d82e5fbbe1f97c1d8a07e404640/src/battle/calc.c#L2370
 *  @param bw battle work structure
 *  @param sp global battle structure
 */
void CalcDamageOverall(struct BattleSystem *battle, struct BattleStruct *server) {
    struct CalcParams attackerParams = {
            .species        = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_SPECIES,       NULL),
            .currentHP      = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_HP,            NULL),
            .maxHP          = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_MAX_HP,        NULL),
            .condition      = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_MAX_CONDITION, NULL),
            .ability        = GetBattlerAbility(    server, server->attack_client),
            .gender         = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_SEX,           NULL),
            .type1          = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_TYPE1,         NULL),
            .type2          = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_TYPE2,         NULL),
            .stats          = {
                .attack     = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_ATK,           NULL),
                .defense    = BattlePokemonParamGet(server ,server->attack_client, BATTLE_MON_DATA_DEF,           NULL),
                .spAttack   = BattlePokemonParamGet(server ,server->attack_client, BATTLE_MON_DATA_SPATK,         NULL),
                .spDefense  = BattlePokemonParamGet(server ,server->attack_client, BATTLE_MON_DATA_SPDEF,         NULL),
            },
            .stages         = {
                .attack     = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_STATE_ATK,     NULL),
                .defense    = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_STATE_DEF,     NULL),
                .spAttack   = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_STATE_SPATK,   NULL),
                .spDefense  = BattlePokemonParamGet(server, server->attack_client, BATTLE_MON_DATA_STATE_SPDEF,   NULL),
            },
            .heldItemEffect =     BattleItemDataGet(server, GetBattleMonItem(server, server->attack_client), 1),
            .heldItemPower  =     BattleItemDataGet(server, GetBattleMonItem(server, server->attack_client), 2),
        };

    struct CalcParams defenderParams = {
        .species        = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_SPECIES,       NULL),
        .currentHP      = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_HP,            NULL),
        .maxHP          = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_MAX_HP,        NULL),
        .condition      = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_MAX_CONDITION, NULL),
        .ability        = GetBattlerAbility(    server, server->defence_client),
        .gender         = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_SEX,           NULL),
        .type1          = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_TYPE1,         NULL),
        .type2          = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_TYPE2,         NULL),
        .stats          = {
            .attack     = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_ATK,           NULL),
            .defense    = BattlePokemonParamGet(server ,server->defence_client, BATTLE_MON_DATA_DEF,           NULL),
            .spAttack   = BattlePokemonParamGet(server ,server->defence_client, BATTLE_MON_DATA_SPATK,         NULL),
            .spDefense  = BattlePokemonParamGet(server ,server->defence_client, BATTLE_MON_DATA_SPDEF,         NULL),
        },
        .stages         = {
            .attack     = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_STATE_ATK,     NULL),
            .defense    = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_STATE_DEF,     NULL),
            .spAttack   = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_STATE_SPATK,   NULL),
            .spDefense  = BattlePokemonParamGet(server, server->defence_client, BATTLE_MON_DATA_STATE_SPDEF,   NULL),
        },
        .heldItemEffect =     BattleItemDataGet(server, GetBattleMonItem(server, server->defence_client), 1),
        .heldItemPower  =     BattleItemDataGet(server, GetBattleMonItem(server, server->defence_client), 2),
    };
    
    // Step 1: Calculate the base damage value.
    u32 damage = Calc_BaseDamage(battle, server, &attackerParams, &defenderParams);
    #ifdef DEBUG_DAMAGE_CALC
    u8 buf[128];
    sprintf(buf, "[PLAT-ENGINE] Base damage: %d\n", damage);
    debugsyscall(buf);
    #endif


    // Step 2: 0.75x if the move has more than one target upon execution.
    u32 battleType = BattleTypeGet(battle);
    if ((battleType & BATTLE_TYPE_DOUBLE) && (CheckNumMonsHit(battle, server, 0, server->defence_client) > 1)) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Spread damage: 0.75x\n");
        debugsyscall(buf);
        #endif

        damage = QMul_RoundDown(damage, UQ412__0_75);
    }

    // Step 3: Divide by 4 if the move is the second-strike of Parental Bond.
    if (server->battlemon[server->attack_client].parental_bond_flag == 2) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Second-strike of Parental Bond: 0.25x\n");
        debugsyscall(buf);
        #endif
        
        damage = QMul_RoundDown(damage, UQ412__0_25);
        }
        switch (server->battlemon[server->attack_client].parental_bond_flag) {
            case 1:
                server->battlemon[server->attack_client].parental_bond_flag++;
                server->battlemon[server->attack_client].parental_bond_is_active = TRUE; // after first hit, set this flag just in case the ability is nullified after the first one
                break;
            default:
                server->battlemon[server->attack_client].parental_bond_flag = 0;
                break;
        }

    // Step 4: 1.5x if the active weather is Sun or Rain and the move is Fire or Water type, respectively.
    //         0.5x if the active weather is Sun or Rain and the move is Water or Fire type, respectively.
    // Neither applies if the defender is holding a Utility Umbrella.
    if (WeatherIsActive(battle, server, WEATHER_SUNNY_ANY)
            && defenderParams.heldItemEffect != HOLD_EFFECT_UNAFFECTED_BY_RAIN_OR_SUN) {
        if (server->move_type == TYPE_FIRE) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Fire move in Sun: 1.5x\n");
            debugsyscall(buf);
            #endif

            damage = QMul_RoundDown(damage, UQ412__1_5);
        } else if (server->move_type == TYPE_WATER) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Water move in Sun: 0.5x\n");
            debugsyscall(buf);
            #endif

            damage = QMul_RoundDown(damage, UQ412__0_5);
        }
    } else if (WeatherIsActive(battle, server, WEATHER_RAIN_ANY)
            && defenderParams.heldItemEffect != HOLD_EFFECT_UNAFFECTED_BY_RAIN_OR_SUN) {
        if (server->move_type == TYPE_WATER) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Water move in Rain: 1.5x\n");
            debugsyscall(buf);
            #endif

            damage = QMul_RoundDown(damage, UQ412__1_5);
        } else if (server->move_type == TYPE_FIRE) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Fire move in Rain: 0.5x\n");
            debugsyscall(buf);
            #endif

            damage = QMul_RoundDown(damage, UQ412__0_5);
        }
    }

    // Step 5: 2x if the defender used Glaive Rush last turn (or this turn) and the move does
    // not have a fixed damage value.
    // TODO

    // Step 6: 1.5x if the attack was a critical hit.
    if (server->critical) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Critical Hit: 1.5x\n");
        debugsyscall(buf);
        #endif

        damage = QMul_RoundDown(damage, UQ412__1_5);
    }

    // Step 7: Apply random damage fluctuation.
    #ifdef DEBUG_DAMAGE_CALC
    // Debug mode: store all possible damage values as a buffer.
    // u32 damageValues[] = { 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100 };
    // for (int i = 0; i < 16; i++) {
    //     damageValues[i] = damage * damageValues[i] / 100;
    // }
    
    // Alternate debug mode: only take the maximum value, so do nothing here
    #else
    // Generate a random number from 85 to 100.
    int rand = 100 - (BattleRand(battle) % 16);
    damage = damage * rand / 100;
    #endif

    // Step 8: 1.5x if the attacker shares a type with the move.
    // TODO: Handle Soak, Forest's Curse, Trick-or-Treat.
    u16 stabMod = UQ412__1_0;
    if ((server->move_type == attackerParams.type1) || (server->move_type == attackerParams.type2)) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] STAB: 1.5x\n");
        debugsyscall(buf);
        #endif

        stabMod = stabMod + UQ412__0_5;
    } else if (((attackerParams.ability == ABILITY_PROTEAN) || (attackerParams.ability == ABILITY_LIBERO)) &&
                !server->battlemon[server->attack_client].ability_activated_flag) {
        // This one is only here for the AI.
        stabMod = stabMod + UQ412__0_5;
    }

    if ((attackerParams.ability == ABILITY_ADAPTABILITY)
            && ((attackerParams.type1 == server->move_type) || (attackerParams.type2 == server->move_type))) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Adaptability: +0.5x\n");
        debugsyscall(buf);
        #endif

        stabMod = stabMod + UQ412__0_5;
    }

    // Step 9: Compute the modifier for type effectiveness.
    u16 typeMod = Calc_TypeModifier(server, &attackerParams, &defenderParams);

    // Step 10: Divide by 2 if the attacker is burned and does not have Guts nor is using Facade.
    u16 burnMod = UQ412__1_0;
    if (GetMoveSplit(server, server->current_move_index) == SPLIT_PHYSICAL) {
        if ((attackerParams.condition & STATUS_FLAG_BURNED)
                && ((attackerParams.ability != ABILITY_GUTS) && (server->current_move_index != MOVE_FACADE))) {
            #ifdef DEBUG_DAMAGE_CALC
            sprintf(buf, "[PLAT-ENGINE] -- Burned Attacker: 0.5x\n");
            debugsyscall(buf);
            #endif

            burnMod = UQ412__0_5;
        }
    }

    // Step 11: Finish up remaining modifiers, in-order:
    //  - various moves interacting with Minimize
    //  - Earthquake and Magnitude, if the opponent is semi-invulnerable via Dig    
    //  - Surf and Whirlpool, if the opponent is semi-invulnerable via Dive
    //  - Reflect, Light Screen, and Aurora Veil
    //  - Collision Course and Electro Drift
    //  - Multiscale and Shadow Shield, if the target is at full health
    //  - Various abilites for the target: Fluffy, Punk Rock, Ice Scales
    //  - Friend Guard, if the target's ally has it
    //  - More abilities for the target: Filter, Prism Armor, Solid Rock
    //  - Some attacker abilities: Neuroforce, Sniper, Tinted Lens
    //  - Fluffy, if the used move is Fire-type
    //  - Type-resist berries
    //  - Expert Belt, Life Orb, and Metronome
    u16 lastMod = Calc_ChainOtherModifiers(
        server,
        &attackerParams,
        &defenderParams,
        battleType,
        server->current_move_index,
        server->move_type,
        GetMoveSplit(server, server->current_move_index)
    );

    // Step 11: Divide by 4 if the used move is a Z-move and the target is trying to Protect itself.
    // TODO: Z-moves
    // 守る flag?
    if (MoveIsZMove(server->current_move_index) && server->oneTurnFlag[server->defence_client].mamoru_flag) {
        #ifdef DEBUG_DAMAGE_CALC
        sprintf(buf, "[PLAT-ENGINE] -- Target is trying to Protect itself: 0.25x\n");
        debugsyscall(buf);
        #endif
        
        damage = QMul_RoundDown(damage, UQ412__0_25);
    }

    // Apply all the modifiers.
    #ifdef DEBUG_DAMAGE_CALC
    // sprintf(buf, "[PLAT-ENGINE] Preliminary damage values: [ ");
    // int length = 43;
    // for (int i = 0; i < 16; i++) {
    //     length += sprintf(buf + length, "%ld ", damageValues[i]);
    // }
    // sprintf(buf + length, "]\n");
    // debugsyscall(buf);

    sprintf(buf, "[PLAT-ENGINE] Max Roll:       %ld\n", damage);

    damage = QMul_RoundDown(damage, stabMod);
    sprintf(buf, "[PLAT-ENGINE] With STAB:      %ld\n", damage);
    debugsyscall(buf);
    
    damage = QMul_RoundDown(damage, typeMod);
    sprintf(buf, "[PLAT-ENGINE] With Chart:     %ld\n", damage);
    debugsyscall(buf);

    damage = QMul_RoundDown(damage, burnMod);
    sprintf(buf, "[PLAT-ENGINE] With Burn:      %ld\n", damage);
    debugsyscall(buf);

    damage = QMul_RoundDown(damage, lastMod);
    sprintf(buf, "[PLAT-ENGINE] Final Damage:   %ld\n", damage);
    debugsyscall(buf);


    // If we're in debug mode, then we instead have a whole list of damage values that need to be
    // applied to and printed out.
    // sprintf(buf, "[PLAT-ENGINE] Damage results: [ ");
    // length = 32;
    // for (int i = 0; i < 16; i++) {
    //     damageValues[i] = Q412_Mul_IntByQ_RoundDown(damageValues[i], stabMod);
    //     damageValues[i] = Q412_Mul_IntByQ_RoundDown(damageValues[i], typeMod);
    //     damageValues[i] = Q412_Mul_IntByQ_RoundDown(damageValues[i], burnMod);
    //     damageValues[i] = Q412_Mul_IntByQ_RoundDown(damageValues[i], lastMod);
    //     length += sprintf(buf + length, "%ld ", damageValues[i]);
    // }
    // sprintf(buf + length, "]\n");
    // debugsyscall(buf);

    // Always use the max value in debug mode.
    // damage = damageValues[15];
    #else
    damage = QMul_RoundDown(damage, stabMod);
    damage = QMul_RoundDown(damage, typeMod);
    damage = QMul_RoundDown(damage, burnMod);
    damage = QMul_RoundDown(damage, lastMod);
    #endif

    #ifdef DEBUG_DAMAGE_CALC_1_DAMAGE
    // In this debug mode, always return 1 damage.
    server->damage = -1;
    #else
    // And we're done. Cut the top bit off, then multiply by -1.
    server->damage = ((s32) damage & 0x7FFF) * -1;
    #endif
}
