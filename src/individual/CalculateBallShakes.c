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
 *  @return the amount of shakes a ball undergoes.  or'd with 0x80 for critical captures
 */
u32 CalculateBallShakes(void *bw, struct BattleStruct *sp) {
    u32 i, speciesCatchRate, ballCaptureRatio, type1, type2, criticalCapture = FALSE;
    u32 heavyBallMod = 0;
    u32 a = 0, b = 0, c = 0, d = 0, e = 0, f = 0, g = 0, captureValueCoeffcient = 0, modifiedCatchRate = 0, badgePenalty = UQ412__1_0, statusModifier = 0, criticalCatchModifier = 0, speciesInDex = 0, criticalCatchRate = 0, shakeChecks = 4, shakeChance = 0;
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
            return 1 | 0x80;
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

    a = (QMul_RoundDown((3 * sp->battlemon[sp->defence_client].maxhp - 2 * sp->battlemon[sp->defence_client].hp) * UQ412__1_0, UQ412__1_0) + QMul_RoundDown(1, UQ412__0_5));
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
    d = QMul_RoundUp(c, ballCaptureRatio);
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
    e = ((d / UQ412__1_0) * badgePenalty) / (3 * sp->battlemon[sp->defence_client].maxhp);
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
        g = QMul_RoundUp(f, statusModifier);

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

    modifiedCatchRate = QMul_RoundUp(g, captureValueCoeffcient);
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("modifiedCatchRate: %d\n", modifiedCatchRate);
#endif

    // If the MCR reaches the maximum value of 1044480, the game simply calculates whether a critical catch occurred so it can properly display 1 or 3 shakes. This can be overridden by SV's critical capture animation quirk.
    if (modifiedCatchRate > 0xFF000) {
        modifiedCatchRate = 0xFF000;
        i = 4;
    }
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("Final capped modifiedCatchRate: %d\n\n", modifiedCatchRate);
#endif
//=====End of Step 8=====

//=====Step 9=====
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
//=====End of Step 10=====

//=====Step 11=====
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("Step 11: Determine the chance of a successful shake. This approximation does fully account for the double/float precision used by the game?\n");
#endif
    shakeChance = get_shake_chance(modifiedCatchRate);
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("shakeChance: %d\n\n", shakeChance);
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
                debug_printf("Check for shake #%d unsuccessful.\n", i);
#endif
                break;
            }
        }

        if (sp->item_work == ITEM_FRIEND_BALL && i == shakeChecks) // if amount of succeeded captures is the same as necessary for the type of capture
        {
            u32 friendship = 200;
            SetMonData(Battle_GetClientPartyMon(bw,sp->defence_client,0), MON_DATA_FRIENDSHIP, &friendship);
        }

        if (criticalCapture) // succeeded the one chance it had
            i = i | 0x80; // change the flow of the ball callback to make sure that critical captures only shake once then succeed.  if it shakes, it succeeds, though


    }
//====End of Step 11=====
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
    debug_printf("\nEnding ball business\n=================\n");
#endif

    if (sp->item_work == ITEM_FRIEND_BALL && (i & 0x7F) >= 4)  // 0x80 signifies critical capture, which is already caught above.  this code still necessary for the case that IMPLEMENT_CRITICAL_CAPTURE isn't defined
    {
        u32 friendship = 200;
        SetMonData(Battle_GetClientPartyMon(bw,sp->defence_client,0), MON_DATA_FRIENDSHIP, &friendship);
    }

#ifdef GUARANTEE_CAPTURES
    if (Battle_CheckIfHasCaughtMon(bw, sp->battlemon[sp->defence_client].species)) {
        return 1 | 0x80;
    }
    return 4;
#else
    // if the capture is successful, and the target species is already registered, use the critical capture animation, otherwise there should still be 0-3 shakes.
    // https://xcancel.com/Sibuna_Switch/status/1847665451809075315#m
    if (Battle_CheckIfHasCaughtMon(bw, sp->battlemon[sp->defence_client].species)) {
        return (i == 4 || i == (1 | 0x80)) ? 1 | 0x80 : i;
    }
    return i == (0 | 0x80) ? 0 : i;
#endif
}
