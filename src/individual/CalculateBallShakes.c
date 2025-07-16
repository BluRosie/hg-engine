#include "../../include/types.h"
#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/mega.h"
#include "../../include/overlay.h"
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
#include "../../include/q412.h"

u32 get_shake_chance(int input_value);

extern u8 gSafariBallRateTable[13][2];

u16 MoonBallSpecies[] =
{
    SPECIES_NIDORAN_F,
    SPECIES_NIDORINA,
    SPECIES_NIDOQUEEN,
    SPECIES_NIDORAN_M,
    SPECIES_NIDORINO,
    SPECIES_NIDOKING,
    SPECIES_CLEFFA,
    SPECIES_CLEFAIRY,
    SPECIES_CLEFABLE,
    SPECIES_IGGLYBUFF,
    SPECIES_JIGGLYPUFF,
    SPECIES_WIGGLYTUFF,
    SPECIES_SKITTY,
    SPECIES_DELCATTY,
    SPECIES_MUNNA,
    SPECIES_MUSHARNA,
};

/**
 *  @brief calculate the amount of times a ball shakes
 *
 *  @param bw battle work structure
 *  @param sp global battle structure
 *  @return the amount of shakes a ball undergoes.  or'd with CRITICAL_CAPTURE_MASK for critical captures
 */
u32 __attribute__((section (".init"))) CalculateBallShakesInternal(void *bw, struct BattleStruct *sp) {
    u32 i, speciesCatchRate, ballCaptureRatio, type1, type2, criticalCapture = FALSE;
    u32 heavyBallMod = 0, modifiedCatchRate = 0;
    u64 a = 0, b = 0, c = 0, d = 0, e = 0, f = 0, g = 0, captureValueCoeffcient = 0, badgePenalty = UQ412__1_0, statusModifier = 0, criticalCatchModifier = 0, speciesInDex = 0, criticalCatchRate = 0, shakeChecks = 4, shakeChance = 0;
    int badges, missingBadges;
    BOOL isCriticalCatch = FALSE;

    if (BattleTypeGet(bw) & (BATTLE_TYPE_PAL_PARK | BATTLE_TYPE_CATCHING_DEMO)) // poke park and safari zone always succeed
    {
        return 4;
    }

    if (sp->item_work == ITEM_SAFARI_BALL)
    {
        speciesCatchRate = PokePersonalParaGet(sp->battlemon[sp->defence_client].species, PERSONAL_CATCH_RATE);
        speciesCatchRate = speciesCatchRate * gSafariBallRateTable[sp->safari_get_count][0] / gSafariBallRateTable[sp->safari_get_count][1];
    }
    else
    {
        speciesCatchRate = PokePersonalParaGet(sp->battlemon[sp->defence_client].species, PERSONAL_CATCH_RATE);
    }

    ballCaptureRatio = 0x1000;
    type1 = BattlePokemonParamGet(sp, sp->defence_client, BATTLE_MON_DATA_TYPE1, 0); // type 1
    type2 = BattlePokemonParamGet(sp, sp->defence_client, BATTLE_MON_DATA_TYPE2, 0); // type 2


    switch (sp->item_work)
    {
    case ITEM_MASTER_BALL:
        if (Battle_CheckIfHasCaughtMon(bw, sp->battlemon[sp->defence_client].species)) {
            return 1 | CRITICAL_CAPTURE_MASK;
        }
        return 4;
    case ITEM_ULTRA_BALL:
        ballCaptureRatio = 0x2000;
        break;
    case ITEM_GREAT_BALL:
        ballCaptureRatio = 0x1800;
        break;
    case ITEM_POKE_BALL:
        ballCaptureRatio = 0x1000;
        break;
    case ITEM_SAFARI_BALL:
        ballCaptureRatio = 0x1000;
        break;
    case ITEM_NET_BALL:
        if (type1 == TYPE_WATER || type2 == TYPE_WATER || type1 == TYPE_BUG || type2 == TYPE_BUG) {
            ballCaptureRatio = 0x3800;
        }
        break;
    case ITEM_DIVE_BALL:
        if (BattleWorkGroundIDGet(bw) == 7) { // if the battle is happening with a water background
            ballCaptureRatio = 0x3800;
        }
        break;
    case ITEM_NEST_BALL:
        if (sp->battlemon[sp->defence_client].level <= 30) {
            // TODO: Probably wrong
            ballCaptureRatio = QMul_RoundDown((41 - sp->battlemon[sp->defence_client].level) * 0x1000 + UQ412__0_5, UQ412__0_1);
        }
        break;
    case ITEM_REPEAT_BALL:
        if (Battle_CheckIfHasCaughtMon(bw, sp->battlemon[sp->defence_client].species)) {
            ballCaptureRatio = 0x3800;
        }
        break;
    case ITEM_TIMER_BALL:
        ballCaptureRatio = 1229 * sp->total_turn + 0x1000;
        if (ballCaptureRatio > 0x4000) {
            ballCaptureRatio = 0x4000;
        }
        break;
    //case ITEM_LUXURY_BALL:
    //
    //    break;
    //case ITEM_PREMIER_BALL:
    //
    //    break;
    case ITEM_DUSK_BALL:
        if (Battle_GetTimeOfDay(bw) == 3 || Battle_GetTimeOfDay(bw) == 4 || BattleWorkGroundIDGet(bw) == 5) {
            ballCaptureRatio = 0x3000;
        }
        break;
    //case ITEM_HEAL_BALL:
    //
    //    break;
    case ITEM_QUICK_BALL:
        if (sp->total_turn < 1) {
            ballCaptureRatio = 0x5000;
        }
        break;
    //case ITEM_CHERISH_BALL:
    //
    //    break;
    case ITEM_FAST_BALL:
        if (PokePersonalParaGet(sp->battlemon[sp->defence_client].species, PERSONAL_BASE_SPEED) >= 100) {
            ballCaptureRatio = 0x4000;
        }
        break;
    case ITEM_LEVEL_BALL:
        {
            u32 defLevel = sp->battlemon[sp->defence_client].level;
            u32 atkLevel = sp->battlemon[sp->attack_client].level;

            if (atkLevel >= 4 * defLevel) {
                ballCaptureRatio = 0x8000;
            } else if (atkLevel >= 2 * defLevel) {
                ballCaptureRatio = 0x4000;
            } else if (atkLevel > defLevel) { // yes the pattern apparently doesn't hold
                ballCaptureRatio = 0x2000;
            }
        }
        break;
    // case ITEM_LURE_BALL:
    //     if (Battle_IsFishingEncounter(bw))
    //         ballRate = 40; // as of sword and shield
    //     break;
    case ITEM_HEAVY_BALL:
        if (GetPokemonWeight(bw, sp, sp->defence_client) < 999) {
            heavyBallMod = -20;
        } else if (GetPokemonWeight(bw, sp, sp->defence_client) < 1999) {
            heavyBallMod = 0;
        } else if (GetPokemonWeight(bw, sp, sp->defence_client) < 2999) {
            heavyBallMod = 20;
        } else {
            heavyBallMod = 30;
        }
        break;
    case ITEM_LOVE_BALL:
        {
            u32 gender1 = BattlePokemonParamGet(sp, sp->attack_client, BATTLE_MON_DATA_SEX, NULL);
            u32 gender2 = BattlePokemonParamGet(sp, sp->defence_client, BATTLE_MON_DATA_SEX, NULL);

            if (sp->battlemon[sp->attack_client].species == sp->battlemon[sp->defence_client].species
             && gender1 != gender2
             && gender1 != POKEMON_GENDER_UNKNOWN
             && gender2 != POKEMON_GENDER_UNKNOWN) {
                ballCaptureRatio = 0x8000;
             }
        }
        break;
    //case ITEM_FRIEND_BALL: // assume that this and the heal ball are handled elsewhere
    //                       // Friend ball is handled at the end of the function, no clue for heal ball
    //    break;
    case ITEM_MOON_BALL:
        for (i = 0; i < NELEMS(MoonBallSpecies); i++) // yes, this is how game freak coded it in heart gold/soul silver
        {
            if (sp->battlemon[sp->defence_client].species == MoonBallSpecies[i])
                break;
        }
        if (i != NELEMS(MoonBallSpecies)) {
            ballCaptureRatio = 0x4000;
        }
        break;
    case ITEM_SPORT_BALL:
        ballCaptureRatio = 0x1000;
        break;
    //case ITEM_PARK_BALL:
    //
    //    break;
    case ITEM_DREAM_BALL:
        if (sp->battlemon[sp->defence_client].condition & (STATUS_SLEEP)
        || (GetBattlerAbility(sp, sp->defence_client) == ABILITY_COMATOSE)) {
            ballCaptureRatio = 0x4000;
        }
        break;
    case ITEM_BEAST_BALL:
        if (IS_SPECIES_ULTRA_BEAST(sp->battlemon[sp->defence_client].species)) {
            ballCaptureRatio = 0x5000;
        } else {
            ballCaptureRatio = 0x19A;
        }
        break;
    }

    // https://xcancel.com/Sibuna_Switch/status/1610341810655608833

#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("\n=================\nBegin calculating ball business\n");
    debug_printf("maxHP: %d\n", sp->battlemon[sp->defence_client].maxhp);
    debug_printf("hp: %d\n", sp->battlemon[sp->defence_client].hp);
    debug_printf("level: %d\n", sp->battlemon[sp->defence_client].level);
    debug_printf("captureRate: %d\n", speciesCatchRate);
    debug_printf("heavyBallMod: %d\n", heavyBallMod);
    debug_printf("ballCaptureRatio: %d\n\n", ballCaptureRatio);
#endif

// =====Step 1=====
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("Step 1: Calculate the HP modifier\n");
#endif

    a = (u64)(QMul_RoundDown(((3 * sp->battlemon[sp->defence_client].maxhp - 2 * sp->battlemon[sp->defence_client].hp) * UQ412__1_0) / (3 * sp->battlemon[sp->defence_client].maxhp), UQ412__1_0) + QMul_RoundDown(1, UQ412__0_5));
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("a: %d\n\n", a);
#endif
//=====End of Step 1=====

//=====Step 2=====
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("Step 2: Check whether to apply the dark grass modifier\n");
#endif

    if (FALSE) {
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
        debug_printf("Need to apply dark grass modifier\n", b);
#endif
        // TODO: Implement Dark tall grass
        // https://bulbapedia.bulbagarden.net/wiki/Tall_grass#Dark_grass
    } else {
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
        debug_printf("No need to apply dark grass modifier\n", b);
#endif
        b = a;
    }

#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("b: %d\n\n", b);
#endif
//=====End of Step 2=====

//=====Step 3=====
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("Step 3: Account for the species catch rate\n");
#endif

    c = (speciesCatchRate + heavyBallMod) * b;
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("c: %d\n\n", c);
#endif
//=====End of Step 3

//=====Step 4=====
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("Step 4: Multiply by the ball capture ratio with rounding\n");
#endif
    d = QMul64_RoundUp(c, ballCaptureRatio);
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("d: %d\n\n", d);
#endif
//=====End of Step 4=====

//===== Step 5
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("Step 5: Calculate the badge penalty\n");
#endif
    struct PlayerProfile *profile = Sav2_PlayerData_GetProfileAddr(SaveBlock2_get());
    badges = profile->johtoBadges + profile->kantoBadges;
    missingBadges = 8 - badges;
    if (missingBadges < 0) {
        missingBadges = 0;
    }
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("missingBadges: %d\n", missingBadges);
#endif

    // fuck it be a coward and pre-calulate the values
    switch(missingBadges) {
        case 0:
            badgePenalty = UQ412__1_0;
            break;
        case 1:
            badgePenalty = UQ412__0_8;
            break;
        case 2:
            badgePenalty = UQ412__0_8_exp_2;
            break;
        case 3:
            badgePenalty = UQ412__0_8_exp_3;
            break;
        case 4:
            badgePenalty = UQ412__0_8_exp_4;
            break;
        case 5:
            badgePenalty = UQ412__0_8_exp_5;
            break;
        case 6:
            badgePenalty = UQ412__0_8_exp_6;
            break;
        case 7:
            badgePenalty = UQ412__0_8_exp_7;
            break;
        case 8:
            badgePenalty = UQ412__0_8_exp_8;
            break;

    }

#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("badgePenalty in Q4.12 number format: %d\n", badgePenalty);
#endif
    // TODO: some precision is lost here
    e = ((d * badgePenalty) / UQ412__1_0);
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("e: %d\n\n", e);
#endif
//=====End of Step 5=====

//=====Step 6
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("Step 6: Apply the low level bonus if the wild Pokémon is level 13 or under\n");
#endif
    if (sp->battlemon[sp->defence_client].level <= 13) {
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
        debug_printf("Need to apply low level bonus\n", f);
#endif
        f = (36 - 2 * sp->battlemon[sp->defence_client].level) * e / 10;
    } else {
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
        debug_printf("No need to apply low level bonus\n", f);
#endif
        f = e;
    }

#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("f: %d\n\n", f);
#endif
//=====End of Step 6

//=====Step 7=====
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("Step 7: If the target Pokémon has a status effect, apply a status modifier\n");
#endif
    if (sp->battlemon[sp->defence_client].condition) {
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
        debug_printf("Need to apply status modifier\n");
#endif
        if (sp->battlemon[sp->defence_client].condition & (STATUS_SLEEP | STATUS_FREEZE)) {
            statusModifier = UQ412__2_5;
        } else {
            statusModifier = UQ412__1_5;
        }
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
        debug_printf("statusModifier: %d\n", statusModifier);
#endif
        g = QMul64_RoundUp(f, statusModifier);

    } else {
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
        debug_printf("No need to apply status modifier\n");
#endif
        g = f;
    }
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("g: %d\n\n", g);
#endif
//=====End of Step 7=====

//=====Step 8=====
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("Step 8: Multiply by the Capture Value Coefficient\n");
#endif

    // TODO: Catching Power, Backstrike
    captureValueCoeffcient = UQ412__1_0;

#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("captureValueCoeffcient: %d\n", captureValueCoeffcient);
#endif

    modifiedCatchRate = (u32)QMul64_RoundUp(g, captureValueCoeffcient);
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("modifiedCatchRate: %d\n", modifiedCatchRate);
#endif

    // If the MCR reaches the maximum value of 1044480, the game simply calculates whether a critical catch occurred so it can properly display 1 or 3 shakes. This can be overridden by SV's critical capture animation quirk.
    if (modifiedCatchRate > (255 * UQ412__1_0)) {
        modifiedCatchRate = 255 * UQ412__1_0;
        i = 4;
    }
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("Final capped modifiedCatchRate: %d\n\n", modifiedCatchRate);
#endif
//=====End of Step 8=====

//=====Step 9=====
#ifdef IMPLEMENT_CRITICAL_CAPTURE
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("Step 9: Calculate the critical catch rate\n");
#endif
#if CRITICAL_CAPTURE_GENERATION >= 9
    speciesInDex = Pokedex_CountJohtoDexOwned(SaveData_GetDexPtr(SaveBlock2_get()));
#else
    speciesInDex = Pokedex_CountDexOwned(SaveData_GetDexPtr(SaveBlock2_get()));
#endif

    if (speciesInDex > 600) {
        criticalCatchModifier = UQ412__2_5;
    } else if (speciesInDex > 450) {
        criticalCatchModifier = UQ412__2_0;
    } else if (speciesInDex > 300) {
        criticalCatchModifier = UQ412__1_5;
    } else if (speciesInDex > 150) {
        criticalCatchModifier = UQ412__1_0;
    } else if (speciesInDex > 30) {
        criticalCatchModifier = UQ412__0_5;
    } else {
        criticalCatchModifier = 0;
    }

    criticalCatchRate = 715827883 * QMul_RoundUp(modifiedCatchRate, criticalCatchModifier) / 4294967296 / UQ412__1_0;
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("criticalCatchRate: %d\n\n", criticalCatchRate);
#endif
//=====End of Step 9=====

//=====Step 10=====
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("Step 10: Calculate whether a critical catch occurs\n");
#endif
    isCriticalCatch = (BattleRand(bw) & 0xFF) < criticalCatchRate;

#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("isCriticalCatch: %d\n\n", isCriticalCatch);
#endif

    if (isCriticalCatch) {
        shakeChecks = 1;
    } else {
        shakeChecks = 4;
    }
#else
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("Skipping steps 9 and 10 because critical captures are not implemented.\n");
#endif
#endif
//=====End of Step 10=====

//=====Step 11=====
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("Step 11: Determine the chance of a successful shake.  ");
    debug_printf("This approximation does fully account for the double/float precision used by the game?\n");
#endif
    shakeChance = get_shake_chance(modifiedCatchRate);
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    u32 shakeChanceCalculation = shakeChance * 10000 / 65536;
    shakeChanceCalculation = shakeChanceCalculation * shakeChance / 65536;
    shakeChanceCalculation = shakeChanceCalculation * shakeChance / 65536;
    shakeChanceCalculation = shakeChanceCalculation * shakeChance / 65536;
    debug_printf("shakeChance: %d\n", shakeChance);
    debug_printf("  This is a %d.%d percent chance of capture.\n\n", shakeChanceCalculation / 100, shakeChanceCalculation % 100);
#endif

    if (speciesCatchRate > 255)
        i = 4;
    else {
        for (i = 0; i < shakeChecks; i++) { // there are 4 shake checks apparently
            u32 rand = BattleRand(bw);
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
            debug_printf("Shake #%d: rand = %d\n", i, rand);
#endif
            if (rand >= shakeChance) {
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
                debug_printf("  Check for shake #%d unsuccessful.\n", i);
#endif
                break;
            }
        }

        if (sp->item_work == ITEM_FRIEND_BALL && i == shakeChecks) // if amount of succeeded captures is the same as necessary for the type of capture
        {
            u32 friendship = 200;
            SetMonData(Battle_GetClientPartyMon(bw,sp->defence_client,0), MON_DATA_FRIENDSHIP, &friendship);
        }
#ifdef IMPLEMENT_CRITICAL_CAPTURE
        if (criticalCapture) // succeeded the one chance it had
            i = i | CRITICAL_CAPTURE_MASK;
#endif
    }
//====End of Step 11=====
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("\nEnding ball business\n=================\n");
#endif

    if (sp->item_work == ITEM_FRIEND_BALL && (i & ~CRITICAL_CAPTURE_MASK) >= 4) // this code still necessary for the case that IMPLEMENT_CRITICAL_CAPTURE isn't defined
    {
        u32 friendship = 200;
        SetMonData(Battle_GetClientPartyMon(bw,sp->defence_client,0), MON_DATA_FRIENDSHIP, &friendship);
    }

#ifdef GUARANTEE_CAPTURES
    if (Battle_CheckIfHasCaughtMon(bw, sp->battlemon[sp->defence_client].species)) {
        return 1 | CRITICAL_CAPTURE_MASK;
    }
    return 4;
#else
    // if the capture is successful, and the target species is already registered, use the critical capture animation, otherwise there should still be 0-3 shakes.
    // https://xcancel.com/Sibuna_Switch/status/1847665451809075315#m
#ifdef IMPLEMENT_CRITICAL_CAPTURE
    if (Battle_CheckIfHasCaughtMon(bw, sp->battlemon[sp->defence_client].species)) {
        return ((i == 4 || i == (1 | CRITICAL_CAPTURE_MASK)) ? (1 | CRITICAL_CAPTURE_MASK) : (i));
    }
#endif
    return i & ~CRITICAL_CAPTURE_MASK; //(i == (0 | CRITICAL_CAPTURE_MASK) ? 0 : i);
#endif
}

// fuck it be a coward and pre-calulate the values
const u16 getShakeChancesLookupTable[] = {
    [0]   = 0,
    [1]   = 23186,
    [2]   = 26405,
    [3]   = 28490,
    [4]   = 30070,
    [5]   = 31355,
    [6]   = 32447,
    [7]   = 33395,
    [8]   = 34243,
    [9]   = 35007,
    [10]  = 35705,
    [11]  = 36348,
    [12]  = 36949,
    [13]  = 37506,
    [14]  = 38032,
    [15]  = 38529,
    [16]  = 38994,
    [17]  = 39441,
    [18]  = 39868,
    [19]  = 40275,
    [20]  = 40659,
    [21]  = 41038,
    [22]  = 41393,
    [23]  = 41740,
    [24]  = 42074,
    [25]  = 42400,
    [26]  = 42710,
    [27]  = 43018,
    [28]  = 43310,
    [29]  = 43598,
    [30]  = 43876,
    [31]  = 44143,
    [32]  = 44406,
    [33]  = 44664,
    [34]  = 44918,
    [35]  = 45160,
    [36]  = 45397,
    [37]  = 45636,
    [38]  = 45862,
    [39]  = 46083,
    [40]  = 46305,
    [41]  = 46522,
    [42]  = 46733,
    [43]  = 46937,
    [44]  = 47143,
    [45]  = 47343,
    [46]  = 47535,
    [47]  = 47730,
    [48]  = 47917,
    [49]  = 48098,
    [50]  = 48288,
    [51]  = 48462,
    [52]  = 48638,
    [53]  = 48815,
    [54]  = 48984,
    [55]  = 49155,
    [56]  = 49317,
    [57]  = 49490,
    [58]  = 49645,
    [59]  = 49802,
    [60]  = 49960,
    [61]  = 50118,
    [62]  = 50268,
    [63]  = 50419,
    [64]  = 50571,
    [65]  = 50715,
    [66]  = 50868,
    [67]  = 51004,
    [68]  = 51150,
    [69]  = 51286,
    [70]  = 51424,
    [71]  = 51562,
    [72]  = 51701,
    [73]  = 51831,
    [74]  = 51972,
    [75]  = 52103,
    [76]  = 52224,
    [77]  = 52357,
    [78]  = 52480,
    [79]  = 52613,
    [80]  = 52737,
    [81]  = 52852,
    [82]  = 52977,
    [83]  = 53102,
    [84]  = 53218,
    [85]  = 53335,
    [86]  = 53451,
    [87]  = 53569,
    [88]  = 53687,
    [89]  = 53794,
    [90]  = 53913,
    [91]  = 54022,
    [92]  = 54130,
    [93]  = 54240,
    [94]  = 54350,
    [95]  = 54460,
    [96]  = 54571,
    [97]  = 54671,
    [98]  = 54782,
    [99]  = 54883,
    [100] = 54984,
    [101] = 55086,
    [102] = 55188,
    [103] = 55290,
    [104] = 55393,
    [105] = 55496,
    [106] = 55588,
    [107] = 55692,
    [108] = 55784,
    [109] = 55877,
    [110] = 55982,
    [111] = 56075,
    [112] = 56169,
    [113] = 56263,
    [114] = 56358,
    [115] = 56441,
    [116] = 56536,
    [117] = 56631,
    [118] = 56715,
    [119] = 56811,
    [120] = 56896,
    [121] = 56992,
    [122] = 57077,
    [123] = 57162,
    [124] = 57247,
    [125] = 57333,
    [126] = 57419,
    [127] = 57505,
    [128] = 57591,
    [129] = 57678,
    [130] = 57765,
    [131] = 57840,
    [132] = 57927,
    [133] = 58002,
    [134] = 58090,
    [135] = 58165,
    [136] = 58254,
    [137] = 58330,
    [138] = 58406,
    [139] = 58482,
    [140] = 58571,
    [141] = 58648,
    [142] = 58725,
    [143] = 58802,
    [144] = 58880,
    [145] = 58957,
    [146] = 59035,
    [147] = 59100,
    [148] = 59178,
    [149] = 59257,
    [150] = 59335,
    [151] = 59401,
    [152] = 59480,
    [153] = 59546,
    [154] = 59625,
    [155] = 59692,
    [156] = 59771,
    [157] = 59838,
    [158] = 59905,
    [159] = 59985,
    [160] = 60052,
    [161] = 60119,
    [162] = 60187,
    [163] = 60254,
    [164] = 60336,
    [165] = 60404,
    [166] = 60472,
    [167] = 60540,
    [168] = 60608,
    [169] = 60677,
    [170] = 60732,
    [171] = 60800,
    [172] = 60869,
    [173] = 60938,
    [174] = 61008,
    [175] = 61063,
    [176] = 61133,
    [177] = 61202,
    [178] = 61258,
    [179] = 61328,
    [180] = 61398,
    [181] = 61455,
    [182] = 61525,
    [183] = 61581,
    [184] = 61638,
    [185] = 61709,
    [186] = 61766,
    [187] = 61837,
    [188] = 61894,
    [189] = 61951,
    [190] = 62022,
    [191] = 62080,
    [192] = 62137,
    [193] = 62195,
    [194] = 62267,
    [195] = 62325,
    [196] = 62383,
    [197] = 62441,
    [198] = 62499,
    [199] = 62557,
    [200] = 62616,
    [201] = 62674,
    [202] = 62733,
    [203] = 62791,
    [204] = 62850,
    [205] = 62909,
    [206] = 62968,
    [207] = 63027,
    [208] = 63072,
    [209] = 63131,
    [210] = 63191,
    [211] = 63250,
    [212] = 63310,
    [213] = 63355,
    [214] = 63414,
    [215] = 63474,
    [216] = 63519,
    [217] = 63580,
    [218] = 63640,
    [219] = 63685,
    [220] = 63746,
    [221] = 63806,
    [222] = 63852,
    [223] = 63913,
    [224] = 63958,
    [225] = 64019,
    [226] = 64065,
    [227] = 64126,
    [228] = 64172,
    [229] = 64234,
    [230] = 64280,
    [231] = 64326,
    [232] = 64388,
    [233] = 64434,
    [234] = 64481,
    [235] = 64543,
    [236] = 64589,
    [237] = 64636,
    [238] = 64698,
    [239] = 64745,
    [240] = 64792,
    [241] = 64839,
    [242] = 64902,
    [243] = 64949,
    [244] = 64996,
    [245] = 65043,
    [246] = 65091,
    [247] = 65138,
    [248] = 65185,
    [249] = 65249,
    [250] = 65296,
    [251] = 65344,
    [252] = 65392,
    [253] = 65440,
    [254] = 65488,
};

/// @brief Returns a pre-calculated value of the shake chance
/// @param input_value
/// @return shake chance
u32 get_shake_chance(int input_value) {
    if (input_value == 255 * UQ412__1_0) {
        return 65536;
    }

    return getShakeChancesLookupTable[input_value / UQ412__1_0];
}
