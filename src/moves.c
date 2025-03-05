#include "../include/types.h"
#include "../include/battle.h"
#include "../include/config.h"
#include "../include/pokemon.h"
#include "../include/constants/ability.h"
#include "../include/constants/battle_script_constants.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"

// brackets are there so we can possibly come back and make constants for them
u16 move_effect_to_subscripts[] =
{
    [ADD_STATUS_EFF_START_BATTLE]                = SUB_SEQ_START_BATTLE,
    [ADD_STATUS_EFF_APPLY_SLEEP]                 = SUB_SEQ_APPLY_SLEEP,
    [ADD_STATUS_EFF_APPLY_POISON]                = SUB_SEQ_APPLY_POISON,
    [ADD_STATUS_EFF_APPLY_BURN]                  = SUB_SEQ_APPLY_BURN,
    [ADD_STATUS_EFF_APPLY_FREEZE]                = SUB_SEQ_APPLY_FREEZE,
    [ADD_STATUS_EFF_APPLY_PARALYSIS]             = SUB_SEQ_APPLY_PARALYSIS,
    [ADD_STATUS_EFF_BADLY_POISON]                = SUB_SEQ_BADLY_POISON,
    [ADD_STATUS_EFF_APPLY_CONFUSION]             = SUB_SEQ_APPLY_CONFUSION,
    [ADD_STATUS_EFF_TRY_FLINCH]                  = SUB_SEQ_TRY_FLINCH,
    [ADD_STATUS_EFF_REST]                        = SUB_SEQ_REST,
    [ADD_STATUS_EFF_UPROAR]                      = SUB_SEQ_UPROAR,
    [ADD_STATUS_EFF_PAY_DAY]                     = SUB_SEQ_PAY_DAY,
    [ADD_STATUS_EFF_VANISH_ON_CHARGE_TURN]       = SUB_SEQ_VANISH_ON_CHARGE_TURN,
    [ADD_STATUS_EFF_CLAMP_START]                 = SUB_SEQ_CLAMP_START,
    [ADD_STATUS_EFF_RECOIL_1_4]                  = SUB_SEQ_RECOIL_1_4,
    [ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP]       = SUB_SEQ_BOOST_STATS, // attack +1
    [ADD_STATUS_EFF_BOOST_STATS_DEFENSE_UP]      = SUB_SEQ_BOOST_STATS, // defense +1
    [ADD_STATUS_EFF_BOOST_STATS_SPEED_UP]        = SUB_SEQ_BOOST_STATS, // speed +1
    [ADD_STATUS_EFF_BOOST_STATS_SP_ATK_UP]       = SUB_SEQ_BOOST_STATS, // spatk +1
    [ADD_STATUS_EFF_BOOST_STATS_SP_DEF_UP]       = SUB_SEQ_BOOST_STATS, // spdef +1
    [ADD_STATUS_EFF_BOOST_STATS_ACCURACY_UP]     = SUB_SEQ_BOOST_STATS, // accuracy +1
    [ADD_STATUS_EFF_BOOST_STATS_EVASION_UP]      = SUB_SEQ_BOOST_STATS, // evasion +1
    [ADD_STATUS_EFF_BOOST_STATS_ATTACK_DOWN]     = SUB_SEQ_BOOST_STATS, // attack -1
    [ADD_STATUS_EFF_BOOST_STATS_DEFENSE_DOWN]    = SUB_SEQ_BOOST_STATS, // defense -1
    [ADD_STATUS_EFF_BOOST_STATS_SPEED_DOWN]      = SUB_SEQ_BOOST_STATS, // speed -1
    [ADD_STATUS_EFF_BOOST_STATS_SP_ATK_DOWN]     = SUB_SEQ_BOOST_STATS, // spatk -1
    [ADD_STATUS_EFF_BOOST_STATS_SP_DEF_DOWN]     = SUB_SEQ_BOOST_STATS, // spdef -1
    [ADD_STATUS_EFF_BOOST_STATS_ACCURACY_DOWN]   = SUB_SEQ_BOOST_STATS, // accuracy -1
    [ADD_STATUS_EFF_BOOST_STATS_EVASION_DOWN]    = SUB_SEQ_BOOST_STATS, // evasion -1
    [ADD_STATUS_EFF_RECHARGE_MOVE]               = SUB_SEQ_RECHARGE_MOVE,
    [ADD_STATUS_EFF_RAGE_SET]                    = SUB_SEQ_RAGE_SET,
    [ADD_STATUS_EFF_THIEF]                       = SUB_SEQ_THIEF,
    [ADD_STATUS_EFF_MEAN_LOOK]                   = SUB_SEQ_MEAN_LOOK,
    [ADD_STATUS_EFF_APPLY_NIGHTMARE]             = SUB_SEQ_APPLY_NIGHTMARE,
    [ADD_STATUS_EFF_OMNIBOOST]                   = SUB_SEQ_OMNIBOOST,
    [ADD_STATUS_EFF_RAPID_SPIN]                  = SUB_SEQ_RAPID_SPIN,
    [ADD_STATUS_EFF_HEAL_PARALYSIS]              = SUB_SEQ_HEAL_PARALYSIS,
    [ADD_STATUS_EFF_SUPERPOWER_DEBUFF]           = SUB_SEQ_USER_ATK_AND_DEF_DOWN_HIT,
    [ADD_STATUS_EFF_RECOIL_1_3]                  = SUB_SEQ_RECOIL_1_3,
    [ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_2]     = SUB_SEQ_BOOST_STATS, // attack +2
    [ADD_STATUS_EFF_BOOST_STATS_DEFENSE_UP_2]    = SUB_SEQ_BOOST_STATS, // defense +2
    [ADD_STATUS_EFF_BOOST_STATS_SPEED_UP_2]      = SUB_SEQ_BOOST_STATS, // speed +2
    [ADD_STATUS_EFF_BOOST_STATS_SP_ATK_UP_2]     = SUB_SEQ_BOOST_STATS, // spatk +2
    [ADD_STATUS_EFF_BOOST_STATS_SP_DEF_UP_2]     = SUB_SEQ_BOOST_STATS, // spdef +2
    [ADD_STATUS_EFF_BOOST_STATS_ACCURACY_UP_2]   = SUB_SEQ_BOOST_STATS, // accuracy +2
    [ADD_STATUS_EFF_BOOST_STATS_EVASION_UP_2]    = SUB_SEQ_BOOST_STATS, // evasion +2
    [ADD_STATUS_EFF_BOOST_STATS_ATTACK_DOWN_2]   = SUB_SEQ_BOOST_STATS, // attack -2
    [ADD_STATUS_EFF_BOOST_STATS_DEFENSE_DOWN_2]  = SUB_SEQ_BOOST_STATS, // defense -2
    [ADD_STATUS_EFF_BOOST_STATS_SPEED_DOWN_2]    = SUB_SEQ_BOOST_STATS, // speed -2
    [ADD_STATUS_EFF_BOOST_STATS_SP_ATK_DOWN_2]   = SUB_SEQ_BOOST_STATS, // spatk -2
    [ADD_STATUS_EFF_BOOST_STATS_SP_DEF_DOWN_2]   = SUB_SEQ_BOOST_STATS, // spdef -2
    [ADD_STATUS_EFF_BOOST_STATS_ACCURACY_DOWN_2] = SUB_SEQ_BOOST_STATS, // accuracy -2
    [ADD_STATUS_EFF_BOOST_STATS_EVASION_DOWN_2]  = SUB_SEQ_BOOST_STATS, // evasion -2
    [ADD_STATUS_EFF_THRASHING]                   = SUB_SEQ_THRASHING,
    [ADD_STATUS_EFF_KNOCK_OFF]                   = SUB_SEQ_KNOCK_OFF,
    [ADD_STATUS_EFF_COSMIC_POWER]                = SUB_SEQ_COSMIC_POWER,
    [ADD_STATUS_EFF_BULK_UP]                     = SUB_SEQ_BULK_UP,
    [ADD_STATUS_EFF_TICKLE]                      = SUB_SEQ_TICKLE,
    [ADD_STATUS_EFF_CALM_MIND]                   = SUB_SEQ_CALM_MIND,
    [ADD_STATUS_EFF_DRAGON_DANCE]                = SUB_SEQ_DRAGON_DANCE,
    [ADD_STATUS_EFF_DRAIN_HALF]                  = SUB_SEQ_DRAIN_HALF,
    [ADD_STATUS_EFF_DREAM_EATER]                 = SUB_SEQ_DREAM_EATER,
    [ADD_STATUS_EFF_CLEAR_ALL_BOOSTS]            = SUB_SEQ_CLEAR_ALL_BOOSTS,
    [ADD_STATUS_EFF_START_BIDE]                  = SUB_SEQ_START_BIDE,
    [ADD_STATUS_EFF_STRUGGLE]                    = SUB_SEQ_STRUGGLE,
    [ADD_STATUS_EFF_CONVERSION]                  = SUB_SEQ_CONVERSION,
    [ADD_STATUS_EFF_RECOVER_HALF_HP]             = SUB_SEQ_RECOVER_HALF_HP,
    [ADD_STATUS_EFF_LIGHT_SCREEN]                = SUB_SEQ_LIGHT_SCREEN,
    [ADD_STATUS_EFF_REFLECT]                     = SUB_SEQ_REFLECT,
    [ADD_STATUS_EFF_APPLY_MIST]                  = SUB_SEQ_APPLY_MIST,
    [ADD_STATUS_EFF_FOCUS_ENERGY]                = SUB_SEQ_FOCUS_ENERGY,
    [ADD_STATUS_EFF_MIMIC]                       = SUB_SEQ_MIMIC,
    [ADD_STATUS_EFF_APPLY_LEECH_SEED]            = SUB_SEQ_APPLY_LEECH_SEED,
    [ADD_STATUS_EFF_APPLY_DISABLE]               = SUB_SEQ_APPLY_DISABLE,
    [ADD_STATUS_EFF_APPLY_ENCORE]                = SUB_SEQ_APPLY_ENCORE,
    [ADD_STATUS_EFF_PAIN_SPLIT]                  = SUB_SEQ_PAIN_SPLIT,
    [ADD_STATUS_EFF_CONVERSION_2]                = SUB_SEQ_CONVERSION_2,
    [ADD_STATUS_EFF_LOCKON]                      = SUB_SEQ_LOCKON,
    [ADD_STATUS_EFF_SKETCH]                      = SUB_SEQ_SKETCH,
    [ADD_STATUS_EFF_FEINT]                       = SUB_SEQ_FEINT,
    [ADD_STATUS_EFF_DESTINY_BOND]                = SUB_SEQ_DESTINY_BOND,
    [ADD_STATUS_EFF_SPITE]                       = SUB_SEQ_SPITE,
    [ADD_STATUS_EFF_PROTECT]                     = SUB_SEQ_PROTECT,
    [ADD_STATUS_EFF_HEAL_BELL]                   = SUB_SEQ_HEAL_BELL,
    [ADD_STATUS_EFF_TRY_SUBSTITUTE]              = SUB_SEQ_TRY_SUBSTITUTE,
    [ADD_STATUS_EFF_FORCE_OUT]                   = SUB_SEQ_FORCE_OUT,
    [ADD_STATUS_EFF_TRANSFORM]                   = SUB_SEQ_TRANSFORM,
    [ADD_STATUS_EFF_EVA_PLUS_ONE]                = SUB_SEQ_EVA_PLUS_ONE,
    [ADD_STATUS_EFF_CURSE_BOOST]                 = SUB_SEQ_CURSE_BOOST,
    [ADD_STATUS_EFF_CURSE_GHOST]                 = SUB_SEQ_CURSE_GHOST,
    [ADD_STATUS_EFF_PRINT_MESSAGE]               = SUB_SEQ_PRINT_MESSAGE,
    [ADD_STATUS_EFF_FORESIGHT]                   = SUB_SEQ_FORESIGHT,
    [ADD_STATUS_EFF_START_PERISH_SONG]           = SUB_SEQ_START_PERISH_SONG,
    [ADD_STATUS_EFF_WEATHER_MESSAGE]             = SUB_SEQ_WEATHER_MESSAGE,
    [ADD_STATUS_EFF_SWAGGER]                     = SUB_SEQ_SWAGGER,
    [ADD_STATUS_EFF_APPLY_ATTRACT]               = SUB_SEQ_APPLY_ATTRACT,
    [ADD_STATUS_EFF_APPLY_SAFEGUARD]             = SUB_SEQ_APPLY_SAFEGUARD,
    [ADD_STATUS_EFF_PRESENT]                     = SUB_SEQ_PRESENT,
    [ADD_STATUS_EFF_MAGNITUDE]                   = SUB_SEQ_MAGNITUDE,
    [ADD_STATUS_EFF_BATON_PASS]                  = SUB_SEQ_BATON_PASS,
    [ADD_STATUS_EFF_BELLY_DRUM]                  = SUB_SEQ_BELLY_DRUM,
    [ADD_STATUS_EFF_TELEPORT]                    = SUB_SEQ_TELEPORT,
    [ADD_STATUS_EFF_FUTURE_SIGHT_ATTACK_MESSAGE] = SUB_SEQ_FUTURE_SIGHT_ATTACK_MESSAGE,
    [ADD_STATUS_EFF_STOCKPILE]                   = SUB_SEQ_STOCKPILE,
    [ADD_STATUS_EFF_SWALLOW]                     = SUB_SEQ_SWALLOW,
    [ADD_STATUS_EFF_APPLY_TORMENT]               = SUB_SEQ_APPLY_TORMENT,
    [ADD_STATUS_EFF_FLATTER]                     = SUB_SEQ_FLATTER,
    [ADD_STATUS_EFF_MEMENTO]                     = SUB_SEQ_MEMENTO,
    [ADD_STATUS_EFF_CHARGE]                      = SUB_SEQ_CHARGE,
    [ADD_STATUS_EFF_APPLY_TAUNT]                 = SUB_SEQ_APPLY_TAUNT,
    [ADD_STATUS_EFF_TRICK]                       = SUB_SEQ_TRICK,
    [ADD_STATUS_EFF_ROLE_PLAY]                   = SUB_SEQ_ROLE_PLAY,
    [ADD_STATUS_EFF_BREAK_SCREENS]               = SUB_SEQ_BREAK_SCREENS,
    [ADD_STATUS_EFF_YAWN]                        = SUB_SEQ_YAWN,
    [ADD_STATUS_EFF_SKILL_SWAP]                  = SUB_SEQ_SKILL_SWAP,
    [ADD_STATUS_EFF_REFRESH]                     = SUB_SEQ_REFRESH,
    [ADD_STATUS_EFF_ROOST]                       = SUB_SEQ_ROOST,
    [ADD_STATUS_EFF_FORCE_WAKE_UP]               = SUB_SEQ_FORCE_WAKE_UP,
    [ADD_STATUS_EFF_APPLY_GRAVITY]               = SUB_SEQ_APPLY_GRAVITY,
    [ADD_STATUS_EFF_MIRACLE_EYE]                 = SUB_SEQ_MIRACLE_EYE,
    [ADD_STATUS_EFF_HEALING_WISH]                = SUB_SEQ_HEALING_WISH,
    [ADD_STATUS_EFF_APPLY_TAILWIND]              = SUB_SEQ_APPLY_TAILWIND,
    [ADD_STATUS_EFF_CLOSE_COMBAT_DEBUFF]         = SUB_SEQ_USER_DEF_AND_SP_DEF_DOWN_HIT,
    [ADD_STATUS_EFF_POWER_TRICK]                 = SUB_SEQ_POWER_TRICK,
    [ADD_STATUS_EFF_GASTRO_ACID]                 = SUB_SEQ_GASTRO_ACID,
    [ADD_STATUS_EFF_APPLY_LUCKY_CHANT]           = SUB_SEQ_APPLY_LUCKY_CHANT,
    [ADD_STATUS_EFF_POWER_SWAP]                  = SUB_SEQ_POWER_SWAP,
    [ADD_STATUS_EFF_GUARD_SWAP]                  = SUB_SEQ_GUARD_SWAP,
    [ADD_STATUS_EFF_WORRY_SEED]                  = SUB_SEQ_WORRY_SEED,
    [ADD_STATUS_EFF_HEART_SWAP]                  = SUB_SEQ_HEART_SWAP,
    [ADD_STATUS_EFF_FLARE_BLITZ]                 = SUB_SEQ_FLARE_BLITZ,
    [ADD_STATUS_EFF_DEFOG]                       = SUB_SEQ_DEFOG,
    [ADD_STATUS_EFF_APPLY_HEAL_BLOCK]            = SUB_SEQ_APPLY_HEAL_BLOCK,
    [ADD_STATUS_EFF_PIVOT_ATTACK]                = SUB_SEQ_PIVOT_ATTACK,
    [ADD_STATUS_EFF_EMBARGO]                     = SUB_SEQ_EMBARGO,
    [ADD_STATUS_EFF_PLUCK]                       = SUB_SEQ_PLUCK,
    [ADD_STATUS_EFF_FLING]                       = SUB_SEQ_FLING,
    [ADD_STATUS_EFF_VOLT_TACKLE]                 = SUB_SEQ_VOLT_TACKLE,
    [ADD_STATUS_EFF_RECOIL_1_2]                  = SUB_SEQ_RECOIL_1_2,
    [ADD_STATUS_EFF_BURN_OR_FLINCH]              = SUB_SEQ_BURN_OR_FLINCH,
    [ADD_STATUS_EFF_FREEZE_OR_FLINCH]            = SUB_SEQ_FREEZE_OR_FLINCH,
    [ADD_STATUS_EFF_PARA_OR_FLINCH]              = SUB_SEQ_PARA_OR_FLINCH,
    [ADD_STATUS_EFF_CHATTER]                     = SUB_SEQ_CHATTER,
    [ADD_STATUS_EFF_LUNAR_DANCE]                 = SUB_SEQ_LUNAR_DANCE,
    [ADD_STATUS_EFF_SYNCHRONIZE]                 = SUB_SEQ_SYNCHRONIZE,
    // new effects
    [ADD_STATUS_EFF_RAISE_ATTACK_AND_ACCURACY]   = SUB_SEQ_RAISE_ATTACK_AND_ACCURACY,
    [ADD_STATUS_EFF_GUARD_SPLIT]                 = SUB_SEQ_GUARD_SPLIT,
    [ADD_STATUS_EFF_POWER_SPLIT]                 = SUB_SEQ_POWER_SPLIT,
    [ADD_STATUS_EFF_QUIVER_DANCE]                = SUB_SEQ_SP_ATK_SP_DEF_SPEED_UP,
    [ADD_STATUS_EFF_CHANGE_TARGET_TO_WATER_TYPE] = SUB_SEQ_CHANGE_TARGET_TO_WATER_TYPE,
    [ADD_STATUS_EFF_COIL]                        = SUB_SEQ_ATK_DEF_ACC_UP,
    [ADD_STATUS_EFF_SHIFT_GEAR]                  = SUB_SEQ_SHIFT_GEAR,
    [ADD_STATUS_EFF_SHELL_SMASH]                 = SUB_SEQ_ATK_SP_ATK_SPEED_UP_2_DEF_SP_DEF_DOWN,
    [ADD_STATUS_EFF_V_CREATE]                    = SUB_SEQ_USER_DEF_SP_DEF_SPEED_DOWN_HIT,
    [ADD_STATUS_EFF_AUTOTOMIZE]                  = SUB_SEQ_AUTOTOMIZE,
    [ADD_STATUS_EFF_HANDLE_GROWTH]               = SUB_SEQ_HANDLE_GROWTH,
    [ADD_STATUS_EFF_WORK_UP]                     = SUB_SEQ_ATK_SP_ATK_UP,
    [ADD_STATUS_EFF_SPICY_EXTRACT]               = SUB_SEQ_SPICY_EXTRACT,
    [ADD_STATUS_EFF_FILLET_AWAY]                 = SUB_SEQ_ATK_SP_ATK_SPEED_UP_2_LOSE_HALF_MAX_HP,
    [ADD_STATUS_EFF_SHED_TAIL]                   = SUB_SEQ_HANDLE_SHED_TAIL,
    [ADD_STATUS_EFF_AFTER_YOU]                   = SUB_SEQ_HANDLE_AFTER_YOU,
    [ADD_STATUS_EFF_QUASH]                       = SUB_SEQ_HANDLE_QUASH,
    [ADD_STATUS_EFF_DRAIN_FULL]                  = SUB_SEQ_DRAIN_FULL,
    [ADD_STATUS_EFF_SIMPLE_BEAM]                 = SUB_SEQ_GIVE_TARGET_SIMPLE,
    [ADD_STATUS_EFF_BOOST_STATS_ATTACK_UP_3]     = SUB_SEQ_BOOST_STATS, // attack +3
    [ADD_STATUS_EFF_BOOST_STATS_DEFENSE_UP_3]    = SUB_SEQ_BOOST_STATS, // defense +3
    [ADD_STATUS_EFF_BOOST_STATS_SPEED_UP_3]      = SUB_SEQ_BOOST_STATS, // speed +3
    [ADD_STATUS_EFF_BOOST_STATS_SP_ATK_UP_3]     = SUB_SEQ_BOOST_STATS, // spatk +3
    [ADD_STATUS_EFF_BOOST_STATS_SP_DEF_UP_3]     = SUB_SEQ_BOOST_STATS, // spdef +3
    [ADD_STATUS_EFF_BOOST_STATS_ACCURACY_UP_3]   = SUB_SEQ_BOOST_STATS, // accuracy +3
    [ADD_STATUS_EFF_BOOST_STATS_EVASION_UP_3]    = SUB_SEQ_BOOST_STATS, // evasion +3
    [ADD_STATUS_EFF_BOOST_STATS_ATTACK_DOWN_3]   = SUB_SEQ_BOOST_STATS, // attack -3
    [ADD_STATUS_EFF_BOOST_STATS_DEFENSE_DOWN_3]  = SUB_SEQ_BOOST_STATS, // defense -3
    [ADD_STATUS_EFF_BOOST_STATS_SPEED_DOWN_3]    = SUB_SEQ_BOOST_STATS, // speed -3
    [ADD_STATUS_EFF_BOOST_STATS_SP_ATK_DOWN_3]   = SUB_SEQ_BOOST_STATS, // spatk -3
    [ADD_STATUS_EFF_BOOST_STATS_SP_DEF_DOWN_3]   = SUB_SEQ_BOOST_STATS, // spdef -3
    [ADD_STATUS_EFF_BOOST_STATS_ACCURACY_DOWN_3] = SUB_SEQ_BOOST_STATS, // accuracy -3
    [ADD_STATUS_EFF_BOOST_STATS_EVASION_DOWN_3]  = SUB_SEQ_BOOST_STATS, // evasion -3
    [ADD_STATUS_EFF_USER_DEF_DOWN_HIT]           = SUB_SEQ_USER_DEF_DOWN_HIT,
    [ADD_STATUS_EFF_ATK_DEF_SPEED_UP]            = SUB_SEQ_ATK_DEF_SPEED_UP,
    [ADD_STATUS_EFF_HYPERSPACE_FURY]             = SUB_SEQ_HYPERSPACE_FURY,
    [ADD_STATUS_EFF_CLANGOROUS_SOUL]             = SUB_SEQ_RAISE_ALL_STATS_LOSE_THIRD_MAX_HP,
    [ADD_STATUS_EFF_DRAIN_THREE_QUARTERS]        = SUB_SEQ_DRAIN_THREE_QUARTERS,
    [ADD_STATUS_EFF_JAW_LOCK]                    = SUB_SEQ_JAW_LOCK,
    [ADD_STATUS_EFF_TOXIC_THREAD]                = SUB_SEQ_TOXIC_THREAD,
    [ADD_STATUS_EFF_MAKE_IT_RAIN]                = SUB_SEQ_MAKE_IT_RAIN,
    [ADD_STATUS_EFF_ATK_SP_ATK_SPEED_DOWN]       = SUB_SEQ_ATK_SP_ATK_SPEED_DOWN,
    [ADD_STATUS_EFF_ATK_SP_ATK_DOWN]             = SUB_SEQ_ATK_SP_ATK_DOWN,
    [ADD_STATUS_EFF_TAKE_HEART]                  = SUB_SEQ_TAKE_HEART,
    [ADD_STATUS_EFF_MORTAL_SPIN]                 = SUB_SEQ_MORTAL_SPIN,
    [ADD_STATUS_EFF_TIDY_UP]                     = SUB_SEQ_TIDY_UP,
    [ADD_STATUS_EFF_BURN_AND_DRAIN_HEALTH]       = SUB_SEQ_BURN_AND_DRAIN_HEALTH,
};


void GetMoveDataTable(void *dest)
{
    ArchiveDataLoadOfs(dest, ARC_MOVE_DATA, 0, 0, sizeof(struct BattleMove)*(NUM_OF_MOVES+1));
}


/**
 *  @brief get move data field requested from ARC_MOVE_DATA
 *
 *  @param id move index
 *  @param field MOVE_DATA_* constant requesting data
 *  @return requested data
 */
u32 LONG_CALL GetMoveData(u16 id, u32 field)
{
    struct BattleMove *bm = sys_AllocMemory(0, sizeof(struct BattleMove));
    ArchiveDataLoad(bm, ARC_MOVE_DATA, id);
    u32 ret = 0;

    switch (field)
    {
    case MOVE_DATA_EFFECT:
        ret = bm->effect;
        break;
    case MOVE_DATA_PSS_SPLIT:
        ret = bm->effect;
        break;
    case MOVE_DATA_BASE_POWER:
        ret = bm->power;
        break;
    case MOVE_DATA_TYPE:
        ret = bm->type;
        break;
    case MOVE_DATA_ACCURACY:
        ret = bm->accuracy;
        break;
    case MOVE_DATA_BASE_PP:
        ret = bm->pp;
        break;
    case MOVE_DATA_SECONDARY_EFFECT_CHANCE:
        ret = bm->secondaryEffectChance;
        break;
    case MOVE_DATA_TARGET:
        ret = bm->target;
        break;
    case MOVE_DATA_PRIORITY:
        ret = bm->priority;
        break;
    case MOVE_DATA_FLAGS:
        ret = bm->flag;
        break;
    }

    sys_FreeMemoryEz(bm);

    return ret;
}
