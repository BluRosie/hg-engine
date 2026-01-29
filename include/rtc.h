#ifndef RTC_H
#define RTC_H

#include "types.h"

/* defines all taken from pokeheartgold */

enum RTCWeek {
    RTC_WEEK_SUNDAY = 0,
    RTC_WEEK_MONDAY,
    RTC_WEEK_TUESDAY,
    RTC_WEEK_WEDNESDAY,
    RTC_WEEK_THURSDAY,
    RTC_WEEK_FRIDAY,
    RTC_WEEK_SATURDAY,
    RTC_WEEK_MAX
};

typedef enum RTC_TimeOfDay {
    RTC_TIMEOFDAY_MORN = 0,
    RTC_TIMEOFDAY_DAY,
    RTC_TIMEOFDAY_EVE,
    RTC_TIMEOFDAY_NITE,
    RTC_TIMEOFDAY_LATE,
} TIMEOFDAY;

typedef enum TimeOfDayWildParam {
    TIMEOFDAY_WILD_MORN,
    TIMEOFDAY_WILD_DAY,
    TIMEOFDAY_WILD_NITE,
} TimeOfDayWildParam;

struct RTCDate {
    u32 year;
    u32 month;
    u32 day;
    enum RTCWeek week;
};

struct RTCTime {
    u32 hour;
    u32 minute;
    u32 second;
};

struct GF_RTC_DateTime {
    struct RTCDate date;
    struct RTCTime time;
};

struct Party; // file too general for pokemon.h to be included

void LONG_CALL Party_ResetAllShayminToLandForme(struct Party *party);
void LONG_CALL GF_RTC_CopyDateTime(struct RTCDate *date, struct RTCTime *time);
void LONG_CALL GF_RTC_CopyTime(struct RTCTime *time);
void LONG_CALL GF_RTC_CopyDate(struct RTCDate *date);
BOOL LONG_CALL IsNighttime(void);
TIMEOFDAY LONG_CALL GF_RTC_GetTimeOfDay(void);
TIMEOFDAY LONG_CALL GF_RTC_GetTimeOfDayByHour(s32 hour);
TimeOfDayWildParam LONG_CALL GF_RTC_GetTimeOfDayWildParam(void);
TimeOfDayWildParam LONG_CALL GF_RTC_GetTimeOfDayWildParamByHour(s32 hour);
// u32 GrabCurrentSeason(void) is in pokemon.h because it is defined there

#endif // RTC_H
