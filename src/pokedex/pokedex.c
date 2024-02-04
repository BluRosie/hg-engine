#include "../../include/types.h"
#include "../../include/battle.h"
#include "../../include/config.h"
#include "../../include/debug.h"
#include "../../include/pokemon.h"
#include "../../include/rtc.h"
#include "../../include/save.h"
#include "../../include/script.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/file.h"
#include "../../include/constants/game.h"
#include "../../include/constants/hold_item_effects.h"
#include "../../include/constants/item.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/weather_numbers.h"


// r2 is controlled by parent function to determine caught/seen index
// the mad lad at game freak that fully dynamically built the bottom screen is my hero

u16 digitPlaces[4] = {1000, 100, 10, 1};

void FormatDexNumberAnimationDigits(u16 *array, u16 dexNum, u32 r2) {
    //u16 digits[4];

    //digits = digitPlaces;

    for (u32 i = 0; i < NELEMS(digitPlaces); i++)
    {
        array[i-1] = 0x1000 | (dexNum / digitPlaces[i] + r2);
        dexNum = dexNum % digitPlaces[i];
    }

    if (r2 == 0x3) // caught
    {
        //array[95] = 0x1002; // each row is 32, we want to print the dex icon 3 rows beneath the thousands digit
        array[94] = 0x1018;
        array[95] = 0x1019;
    }
}
