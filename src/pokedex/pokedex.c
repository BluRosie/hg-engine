#include "types.h"
#include "battle.h"
#include "config.h"
#include "debug.h"
#include "pokemon.h"
#include "rtc.h"
#include "save.h"
#include "script.h"
#include "constants/ability.h"
#include "constants/file.h"
#include "constants/game.h"
#include "constants/hold_item_effects.h"
#include "constants/item.h"
#include "constants/moves.h"
#include "constants/species.h"
#include "constants/weather_numbers.h"


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
