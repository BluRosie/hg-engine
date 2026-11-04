#include "debug.h"
#include "types.h"
#include "pokemon.h"

#include "bug_contest.h"

#include "constants/item.h"

u16 BugContest_JudgePlayerMon(BugContest *bugContest, struct PartyPokemon *mon);

void LONG_CALL BugContest_Judge(BugContest *bugContest) {
    int i, j, cur_max, score, compareScore;
    u8 temp, rand;
    BugContestant *player;

    // Judge the player's caught Pokemon
    player = &bugContest->contestants[BUGCONTESTANT_PLAYER];
    player->id = BUGCONTESTANT_PLAYER;
    player->score = BugContest_JudgePlayerMon(bugContest, bugContest->mon);
    player->data.species = GetMonData(bugContest->mon, MON_DATA_SPECIES, NULL);

    // Init the rankings list
    for (i = 0; i < BUGCONTESTANT_COUNT; i++) {
        bugContest->ranking[i] = i;
    }

    // Sort the rankings list by selection sort
    for (i = 0; i < BUGCONTESTANT_COUNT - 1; i++) {
        temp = bugContest->ranking[i];
        cur_max = i;
        score = bugContest->contestants[bugContest->ranking[i]].score;
        for (j = i + 1; j < BUGCONTESTANT_COUNT; j++) {
            compareScore = bugContest->contestants[bugContest->ranking[j]].score;
            if (compareScore >= score) {
                cur_max = j;
                score = compareScore;
            }
        }
        bugContest->ranking[i] = bugContest->ranking[cur_max];
        bugContest->ranking[cur_max] = temp;
    }

    // Did the player win?
    bugContest->placement = 3;
    for (i = 0; i < 3; i++) {
        if (bugContest->ranking[i] == BUGCONTESTANT_PLAYER) {
            bugContest->placement = i;
            break;
        }
    }

    // Assign the player's prize item
    switch (bugContest->placement) {
    case 0: // First Place
        if (bugContest->national_dex) {
            rand = gf_rand() % 10;
        } else {
            rand = 0;
        }
        if (rand < 6) {
            bugContest->prize = ITEM_SUN_STONE + rand; // The 6 stones introduced prior to Generation IV have sequential item IDs.
        } else {
            bugContest->prize = ITEM_SHINY_STONE + rand - 6; // The 3 stones introduced in Generation VI also have sequential item IDs.
        }
        break;
    case 1:
        bugContest->prize = ITEM_EVERSTONE;
        break;
    case 2:
        bugContest->prize = ITEM_SITRUS_BERRY;
        break;
    default:
        bugContest->prize = ITEM_SHED_SHELL;
        break;
    }
}

// We don't need to hook this function since it is only called in BugContest_Judge.
u16 BugContest_JudgePlayerMon(BugContest *bugContest, struct PartyPokemon *mon) {
    u16 score = 0;
    int i;
    u16 species;
    BugContestEncounter *encounter = NULL;
    u16 stat_total;

    if (!bugContest->caught_poke) {
        return score;
    }

    species = GetMonData(mon, MON_DATA_SPECIES, NULL);
    for (i = 0; i < BUG_CONTEST_ENCOUNTER_MAX; i++) {
        if (bugContest->encounters[i].species == species) {
            encounter = &bugContest->encounters[i];
            score += bugContest->encounters[i].score;
            break;
        }
    }

    if (encounter == NULL) {
        GF_ASSERT(FALSE);
        return 0;
    }

    score += GetMonData(mon, MON_DATA_LEVEL, NULL) * 100 / encounter->lvlmax;

    stat_total = 0;
    for (i = 0; i < 6; i++) { // NUM_STATS
        stat_total += GetMonData(mon, MON_DATA_HP_IV + i, NULL);
    }

    score += stat_total * 100 / (31 * 6); // NUM_STATS
    score += GetMonData(mon, MON_DATA_HP, NULL) * 100 / GetMonData(mon, MON_DATA_MAXHP, NULL);
    return score;
}
