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
    u32 i, captureRate, ballRate, type1, type2, criticalCapture = FALSE;

    if (BattleTypeGet(bw) & (BATTLE_TYPE_POKE_PARK | BATTLE_TYPE_CATCHING_DEMO)) // poke park and safari zone always succeed
    {
        return 4;
    }

    if (sp->item_work == ITEM_SAFARI_BALL)
    {
        captureRate = PokePersonalParaGet(sp->battlemon[sp->defence_client].species, PERSONAL_CATCH_RATE);
        captureRate = captureRate * gSafariBallRateTable[sp->safari_get_count][0] / gSafariBallRateTable[sp->safari_get_count][1];
    }
    else
    {
        captureRate = PokePersonalParaGet(sp->battlemon[sp->defence_client].species, PERSONAL_CATCH_RATE);
    }

    ballRate = 10;
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
        ballRate = 20;
        break;
    case ITEM_GREAT_BALL:
        ballRate = 15;
        break;
    case ITEM_POKE_BALL:
        //ballRate = 10;
        break;
    case ITEM_SAFARI_BALL:
        ballRate = 10;
        break;
    case ITEM_NET_BALL:
        if (type1 == TYPE_WATER || type2 == TYPE_WATER || type1 == TYPE_BUG || type2 == TYPE_BUG)
            ballRate = 35;
        break;
    case ITEM_DIVE_BALL:
        if (BattleWorkGroundIDGet(bw) == 7) // if the battle is happening with a water background
            ballRate = 35;
        break;
    case ITEM_NEST_BALL:
        if (sp->battlemon[sp->defence_client].level <= 30)
        {
            ballRate = 40 - sp->battlemon[sp->defence_client].level;
        }
        break;
    case ITEM_REPEAT_BALL:
        if (Battle_CheckIfHasCaughtMon(bw, sp->battlemon[sp->defence_client].species))
            ballRate = 35;
        break;
    case ITEM_TIMER_BALL:
        ballRate = 10 + sp->total_turn;
        if (ballRate > 40)
            ballRate = 40;
        break;
    //case ITEM_LUXURY_BALL:
    //
    //    break;
    //case ITEM_PREMIER_BALL:
    //
    //    break;
    case ITEM_DUSK_BALL:
        if (Battle_GetTimeOfDay(bw) == 3 || Battle_GetTimeOfDay(bw) == 4 || BattleWorkGroundIDGet(bw) == 5)
            ballRate = 30;
        break;
    //case ITEM_HEAL_BALL:
    //
    //    break;
    case ITEM_QUICK_BALL:
        if (sp->total_turn < 1)
            ballRate = 50;
        break;
    //case ITEM_CHERISH_BALL:
    //
    //    break;
    case ITEM_FAST_BALL:
        if (PokePersonalParaGet(sp->battlemon[sp->defence_client].species, PERSONAL_BASE_SPEED) > 100)
            ballRate = 40;
        break;
    case ITEM_LEVEL_BALL:
        {
            u32 defLevel = sp->battlemon[sp->defence_client].level;
            u32 atkLevel = sp->battlemon[sp->attack_client].level;

            if (atkLevel >= 4*defLevel)
                ballRate = 80;
            else if (atkLevel >= 2*defLevel)
                ballRate = 40;
            else if (atkLevel > defLevel) // yes the pattern apparently doesn't hold
                ballRate = 20;
        }
        break;
    case ITEM_LURE_BALL:
        if (Battle_IsFishingEncounter(bw))
            ballRate = 40; // as of sword and shield
        break;
    case ITEM_HEAVY_BALL:
        if (GetPokemonWeight(bw, sp, sp->defence_client) < 1024)
        {
            if (captureRate > 20)
                captureRate -= 20;
            else
                captureRate = 1;
        }
        else if (GetPokemonWeight(bw, sp, sp->defence_client) < 2048)
            ballRate = 10; // do nothing
        else if (GetPokemonWeight(bw, sp, sp->defence_client) < 3072)
            captureRate += 20;
        else if (GetPokemonWeight(bw, sp, sp->defence_client) < 4096)
            captureRate += 30;
        else if (GetPokemonWeight(bw, sp, sp->defence_client) < 4096)
            captureRate += 40;

        if (captureRate > 255)
            captureRate = 255;

        break;
    case ITEM_LOVE_BALL:
        {
            u32 gender1 = BattlePokemonParamGet(sp, sp->attack_client, BATTLE_MON_DATA_SEX, NULL);
            u32 gender2 = BattlePokemonParamGet(sp, sp->defence_client, BATTLE_MON_DATA_SEX, NULL);

            if (sp->battlemon[sp->attack_client].species == sp->battlemon[sp->defence_client].species
             && gender1 != gender2
             && gender1 != POKEMON_GENDER_UNKNOWN
             && gender2 != POKEMON_GENDER_UNKNOWN)
                ballRate = 80;
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
        if (i != NELEMS(MoonBallSpecies))
            ballRate = 40;
        break;
    case ITEM_SPORT_BALL:
        ballRate = 10;
        break;
    //case ITEM_PARK_BALL:
    //
    //    break;
    case ITEM_DREAM_BALL:
        if (sp->battlemon[sp->defence_client].condition & (STATUS_SLEEP))
            captureRate *= 4;
        break;
    // case ITEM_BEAST_BALL:
    //     if (IS_SPECIES_ULTRA_BEAST(sp->battlemon[sp->defence_client].species)) {
    //         captureRate *= 5;
    //     } else {
    //         captureRate *= 410 / 4096;
    //     }
    //     if (captureRate > 255) {
    //         captureRate = 255;
    //     }
    //     break;
    }

    // TODO: SV Capture formula
    // https://xcancel.com/Sibuna_Switch/status/1610341810655608833

    // = captureRate * ballRate / 10 * (3maxHP - 2curHP) / (3maxHP)
    captureRate = ((captureRate * ballRate) / 10) * (sp->battlemon[sp->defence_client].maxhp * 3  -  sp->battlemon[sp->defence_client].hp * 2) / (sp->battlemon[sp->defence_client].maxhp * 3);

    if (sp->battlemon[sp->defence_client].condition & (STATUS_SLEEP | STATUS_FREEZE))
        captureRate *= 2;

    if (sp->battlemon[sp->defence_client].condition & (STATUS_POISON_ALL | STATUS_BURN | STATUS_PARALYSIS))
        captureRate = captureRate * 15 / 10;

    if (captureRate > 255)
        i = 4;
    else
    {
        u32 work;

        work = (0xFF << 16) / captureRate;
        captureRate = sqrt(sqrt(work));
        captureRate = (0xFFFF << 4) / captureRate;


#ifdef IMPLEMENT_CRITICAL_CAPTURE

        u32 criticalCaptureWork, caughtMons;

#if CRITICAL_CAPTURE_GENERATION >= 9
        // https://xcancel.com/Sibuna_Switch/status/1610341810655608833
        // TODO: does our dex expansion handle this correctly?
        caughtMons = Pokedex_CountJohtoDexOwned(SaveData_GetDexPtr(SaveBlock2_get()));
#else
        // https://xcancel.com/Sibuna_Switch/status/1549932678304210946#m
        caughtMons = Pokedex_CountDexOwned(SaveData_GetDexPtr(SaveBlock2_get()));
#endif
        if (caughtMons > 600)
            criticalCaptureWork = 25;
        else if (caughtMons > 450)
            criticalCaptureWork = 20;
        else if (caughtMons > 300)
            criticalCaptureWork = 15;
        else if (caughtMons > 150)
            criticalCaptureWork = 10;
        else if (caughtMons > 30)
            criticalCaptureWork = 5;
        else
            criticalCaptureWork = 0;

        criticalCaptureWork = captureRate * criticalCaptureWork / 10;

        if ((BattleRand(bw) & 0xFF) < criticalCaptureWork) // return critical capture number
            criticalCapture = TRUE;

        if (criticalCapture)
            caughtMons = 1;
        else
            caughtMons = 4;

#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
        u8 buf[64];
        sprintf(buf, "Shake probability = %d (%2d", captureRate, (captureRate * 100) / 65536);
        debugsyscall(buf);
        sprintf(buf, ".%02d%% per shake)\n", ((captureRate * 10000) / 65536) % 100);
        debugsyscall(buf);
#endif

        for (i = 0; i < caughtMons; i++) // there are 4 shake checks apparently
        {
            u32 rand = BattleRand(bw);
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
            sprintf(buf, "Shake #%d: rand = %d\n", i, rand);
            debugsyscall(buf);
#endif
            if (rand >= captureRate)
            {
#ifdef DEBUG_CAPTURE_RATE_PERCENTAGES
                sprintf(buf, "Check for shake #%d unsuccessful.\n", i);
                debugsyscall(buf);
#endif
                break;
            }
        }

        if (sp->item_work == ITEM_FRIEND_BALL && i == caughtMons) // if amount of succeeded captures is the same as necessary for the type of capture
        {
            u32 friendship = 200;
            SetMonData(Battle_GetClientPartyMon(bw,sp->defence_client,0), MON_DATA_FRIENDSHIP, &friendship);
        }

        if (criticalCapture) // succeeded the one chance it had
            i = i | 0x80; // change the flow of the ball callback to make sure that critical captures only shake once then succeed.  if it shakes, it succeeds, though

#else

        for (i = 0; i < 4; i++)
        {
            if (BattleRand(bw) >= captureRate)
                break;
        }

#endif
    }

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
