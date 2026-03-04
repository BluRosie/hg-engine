#include "../../include/exp_contribution.h"

#include "../../include/config.h"
#include "../../include/pokemon.h"
#include "../../include/constants/species.h"

#define EXP_CONTRIB_SCALE 1024u
#define EXP_CONTRIB_SCORE_MAX_SAFE 0x3FFFFFFFu
#define EXP_CONTRIB_SUM_MAX_SAFE 0x7FFFFFFFu
#define STAT_WEIGHT_DEN 100u

static const struct BattleStruct *sTrackedBattle = NULL;
static u32 sDamageHpByEnemyBattler[CLIENT_MAX][6];
static u32 sStatScoreByEnemyBattler[CLIENT_MAX][6];

static inline u32 SaturatingAddU32(u32 value, u32 delta, u32 maxValue)
{
    if (value >= maxValue || delta >= (maxValue - value))
    {
        return maxValue;
    }
    return value + delta;
}

static void ExpContrib_ResetState(void)
{
    sTrackedBattle = NULL;
    for (int battler = 0; battler < CLIENT_MAX; battler++)
    {
        for (int slot = 0; slot < 6; slot++)
        {
            sDamageHpByEnemyBattler[battler][slot] = 0;
            sStatScoreByEnemyBattler[battler][slot] = 0;
        }
    }
}

static void ExpContrib_EnsureStateForBattle(const struct BattleStruct *sp)
{
    if (sTrackedBattle != sp)
    {
        ExpContrib_ResetState();
        sTrackedBattle = sp;
    }
}

static int ExpContrib_GetPlayerPartySlotFromBattler(struct BattleSystem *bw, struct BattleStruct *sp, u32 battler)
{
    if (battler >= CLIENT_MAX || IsClientEnemy(bw, battler))
    {
        return -1;
    }

    struct Party *party = BattleWorkPokePartyGet(bw, battler);
    if (party == NULL)
    {
        return -1;
    }

    int partyCount = party->count;
    if (partyCount > 6)
    {
        partyCount = 6;
    }
    if (partyCount <= 0)
    {
        return -1;
    }

    int candidate = sp->sel_mons_no[battler];
    if (candidate >= 0 && candidate < partyCount)
    {
        struct PartyPokemon *candidateMon = BattleWorkPokemonParamGet(bw, battler, candidate);
        if (candidateMon != NULL)
        {
            if (GetMonData(candidateMon, MON_DATA_SPECIES, NULL) != SPECIES_NONE
             && !GetMonData(candidateMon, MON_DATA_IS_EGG, NULL))
            {
                return candidate;
            }
        }
    }

    candidate = sp->reshuffle_sel_mons_no[battler];
    if (candidate >= 0 && candidate < partyCount)
    {
        struct PartyPokemon *candidateMon = BattleWorkPokemonParamGet(bw, battler, candidate);
        if (candidateMon != NULL)
        {
            if (GetMonData(candidateMon, MON_DATA_SPECIES, NULL) != SPECIES_NONE
             && !GetMonData(candidateMon, MON_DATA_IS_EGG, NULL))
            {
                return candidate;
            }
        }
    }

    u32 battlerPersonality = sp->battlemon[battler].personal_rnd;
    for (int i = 0; i < partyCount; i++)
    {
        struct PartyPokemon *pp = BattleWorkPokemonParamGet(bw, battler, i);
        if (pp == NULL)
        {
            continue;
        }
        if (GetMonData(pp, MON_DATA_PERSONALITY, NULL) == battlerPersonality)
        {
            return i;
        }
    }

    return -1;
}

static BOOL ExpContrib_IsPartyMonEligible(struct PartyPokemon *pp)
{
    if (pp == NULL)
    {
        return FALSE;
    }
    if (GetMonData(pp, MON_DATA_SPECIES, NULL) == SPECIES_NONE)
    {
        return FALSE;
    }
    if (GetMonData(pp, MON_DATA_IS_EGG, NULL))
    {
        return FALSE;
    }
#ifndef RESULT_BASED_EXP_INCLUDE_FAINTED
    if (GetMonData(pp, MON_DATA_HP, NULL) == 0)
    {
        return FALSE;
    }
#endif
    return TRUE;
}

static u32 ExpContrib_GetHpDamagePoints(u32 damage)
{
    if (damage == 0)
    {
        return 0;
    }
    u64 points = (u64)damage;
    if (points > EXP_CONTRIB_SCORE_MAX_SAFE)
    {
        return EXP_CONTRIB_SCORE_MAX_SAFE;
    }
    return (u32)points;
}

void LONG_CALL ExpContrib_RecordDirectDamage(struct BattleSystem *bw, struct BattleStruct *sp, u32 attacker, u32 target, u32 damage)
{
#ifndef IMPLEMENT_RESULT_BASED_EXP
    (void)bw;
    (void)sp;
    (void)attacker;
    (void)target;
    (void)damage;
    return;
#else
    ExpContrib_EnsureStateForBattle(sp);

    if (target >= CLIENT_MAX || !IsClientEnemy(bw, target))
    {
        return;
    }

    int partySlot = ExpContrib_GetPlayerPartySlotFromBattler(bw, sp, attacker);
    if (partySlot < 0)
    {
        return;
    }

    if (damage == 0)
    {
        return;
    }

    u32 points = ExpContrib_GetHpDamagePoints(damage);
    sDamageHpByEnemyBattler[target][partySlot] = SaturatingAddU32(
        sDamageHpByEnemyBattler[target][partySlot],
        points,
        EXP_CONTRIB_SCORE_MAX_SAFE);
#endif
}

void LONG_CALL ExpContrib_RecordResidualDamage(struct BattleSystem *bw, struct BattleStruct *sp, u32 source, u32 target, u32 damage)
{
#ifndef IMPLEMENT_RESULT_BASED_EXP
    (void)bw;
    (void)sp;
    (void)source;
    (void)target;
    (void)damage;
    return;
#else
    ExpContrib_EnsureStateForBattle(sp);

    if (target >= CLIENT_MAX || !IsClientEnemy(bw, target))
    {
        return;
    }

    int partySlot = ExpContrib_GetPlayerPartySlotFromBattler(bw, sp, source);
    if (partySlot < 0)
    {
        return;
    }

    u32 points = ExpContrib_GetHpDamagePoints(damage);
    sDamageHpByEnemyBattler[target][partySlot] = SaturatingAddU32(
        sDamageHpByEnemyBattler[target][partySlot],
        points,
        EXP_CONTRIB_SCORE_MAX_SAFE);
#endif
}

void LONG_CALL ExpContrib_RecordStatDrop(struct BattleSystem *bw, struct BattleStruct *sp, u32 source, u32 target, u32 statId, u32 oldStage, u32 newStage)
{
#ifndef IMPLEMENT_RESULT_BASED_EXP
    (void)bw;
    (void)sp;
    (void)source;
    (void)target;
    (void)statId;
    (void)oldStage;
    (void)newStage;
    return;
#else
    ExpContrib_EnsureStateForBattle(sp);

    if (target >= CLIENT_MAX || !IsClientEnemy(bw, target))
    {
        return;
    }
    if (newStage >= oldStage || oldStage > 12 || newStage > 12)
    {
        return;
    }

    int partySlot = ExpContrib_GetPlayerPartySlotFromBattler(bw, sp, source);
    if (partySlot < 0)
    {
        return;
    }

    int monDataParam = -1;
    u32 statWeightNum = 0;
    switch (statId)
    {
        case STAT_ATTACK:
            monDataParam = BATTLE_MON_DATA_ATK;
            statWeightNum = RESULT_BASED_EXP_WEIGHT_OFFENSE_PERCENT;
            break;
        case STAT_DEFENSE:
            monDataParam = BATTLE_MON_DATA_DEF;
            statWeightNum = RESULT_BASED_EXP_WEIGHT_DEFENSE_PERCENT;
            break;
        case STAT_SPEED:
            monDataParam = BATTLE_MON_DATA_SPE;
            statWeightNum = RESULT_BASED_EXP_WEIGHT_SPEED_PERCENT;
            break;
        case STAT_SPATK:
            monDataParam = BATTLE_MON_DATA_SPATK;
            statWeightNum = RESULT_BASED_EXP_WEIGHT_OFFENSE_PERCENT;
            break;
        case STAT_SPDEF:
            monDataParam = BATTLE_MON_DATA_SPDEF;
            statWeightNum = RESULT_BASED_EXP_WEIGHT_DEFENSE_PERCENT;
            break;
        case STAT_ACCURACY:
            statWeightNum = RESULT_BASED_EXP_WEIGHT_ACCURACY_EVASION_PERCENT;
            break;
        case STAT_EVASION:
            statWeightNum = RESULT_BASED_EXP_WEIGHT_ACCURACY_EVASION_PERCENT;
            break;
        default:
            return;
    }

    u32 oldNum = StatBoostModifiers[oldStage][0];
    u32 oldDen = StatBoostModifiers[oldStage][1];
    u32 newNum = StatBoostModifiers[newStage][0];
    u32 newDen = StatBoostModifiers[newStage][1];

    u64 oldNumer;
    u64 newNumer;

    if (monDataParam >= 0)
    {
        u32 baseStat = BattlePokemonParamGet(sp, target, monDataParam, NULL);
        if (baseStat == 0)
        {
            return;
        }
        oldNumer = (u64)baseStat * oldNum;
        newNumer = (u64)baseStat * newNum;
    }
    else
    {
        oldNumer = oldNum;
        newNumer = newNum;
    }

    u64 oldScaledNumer = oldNumer * newDen;
    u64 newScaledNumer = newNumer * oldDen;
    if (newScaledNumer >= oldScaledNumer || oldScaledNumer == 0)
    {
        return;
    }

    u32 targetMaxHp = sp->battlemon[target].maxhp;
    if (targetMaxHp == 0)
    {
        return;
    }

    u64 deltaScaledNumer = oldScaledNumer - newScaledNumer;
    u64 pointsNumer = (u64)targetMaxHp
                    * statWeightNum
                    * deltaScaledNumer
                    * RESULT_BASED_EXP_STAT_HP_EQUIV_DIV;
    u64 pointsDenom = (u64)STAT_WEIGHT_DEN * oldScaledNumer;
    u64 rawPoints = pointsNumer / pointsDenom;
    u32 points;

    if (rawPoints > EXP_CONTRIB_SCORE_MAX_SAFE)
    {
        points = EXP_CONTRIB_SCORE_MAX_SAFE;
    }
    else
    {
        points = (u32)rawPoints;
    }
    sStatScoreByEnemyBattler[target][partySlot] = SaturatingAddU32(
        sStatScoreByEnemyBattler[target][partySlot],
        points,
        EXP_CONTRIB_SCORE_MAX_SAFE);
#endif
}

BOOL LONG_CALL ExpContrib_CaptureContributionForFainted(struct BattleSystem *bw, struct BattleStruct *sp, u32 faintedClient, u32 outDamageHp[6], u32 outStatScore[6])
{
#ifndef IMPLEMENT_RESULT_BASED_EXP
    (void)bw;
    (void)sp;
    (void)faintedClient;
    (void)outDamageHp;
    (void)outStatScore;
    return FALSE;
#else
    ExpContrib_EnsureStateForBattle(sp);

    if (faintedClient >= CLIENT_MAX || !IsClientEnemy(bw, faintedClient) || outDamageHp == NULL || outStatScore == NULL)
    {
        return FALSE;
    }

    BOOL hasAnyContribution = FALSE;
    for (int i = 0; i < 6; i++)
    {
        outDamageHp[i] = 0;
        outStatScore[i] = 0;
    }

    struct Party *party = BattleWorkPokePartyGet(bw, 0);
    if (party == NULL)
    {
        return FALSE;
    }

    int partyCount = party->count;
    if (partyCount > 6)
    {
        partyCount = 6;
    }

    for (int i = 0; i < partyCount; i++)
    {
        struct PartyPokemon *pp = BattleWorkPokemonParamGet(bw, 0, i);
        if (!ExpContrib_IsPartyMonEligible(pp))
        {
            continue;
        }
        outDamageHp[i] = sDamageHpByEnemyBattler[faintedClient][i];
        outStatScore[i] = sStatScoreByEnemyBattler[faintedClient][i];
        if (outDamageHp[i] || outStatScore[i])
        {
            hasAnyContribution = TRUE;
        }
    }

    for (int i = 0; i < 6; i++)
    {
        sDamageHpByEnemyBattler[faintedClient][i] = 0;
        sStatScoreByEnemyBattler[faintedClient][i] = 0;
    }
    return hasAnyContribution;
#endif
}
