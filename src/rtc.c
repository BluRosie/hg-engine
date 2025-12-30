#include "../include/rtc.h"
#include "../include/save.h"
#include "../include/script.h"

TIMEOFDAY GF_RTC_GetTimeOfDayByHour(s32 hour) {
    struct RTCTime time;
    GF_RTC_CopyTime(&time);
    // Return a time slot according to the current RTC minute instead of RTC hour.
    if (time.minute< 10) // 4 * 2.5 == 10
    {
        return (TIMEOFDAY)RTC_TIMEOFDAY_LATE;
    }
    else if (time.minute< 25) // 6 * 2.5 == 15, 10 + 15 == 25
    {
        return (TIMEOFDAY)RTC_TIMEOFDAY_MORN;
    }
    else if (time.minute < 42) // 7 * 2.5 == 17.5, 17.5 + 25 == 42.5
    {
        return (TIMEOFDAY)RTC_TIMEOFDAY_DAY;
    }
    else if (time.minute == 42) // Between Day and Evening
    {  
        return (TIMEOFDAY)((time.second / 30 == 0) ? RTC_TIMEOFDAY_DAY : RTC_TIMEOFDAY_EVE);
    }
    else if (time.minute < 50) // 3 * 2.5 == 7.5, 7.5 + 42.5 == 50
    {
        return (TIMEOFDAY)RTC_TIMEOFDAY_EVE;
    }
    
    return (TIMEOFDAY)RTC_TIMEOFDAY_NITE;
}