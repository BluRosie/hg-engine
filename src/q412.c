#include "../include/types.h"
#include "../include/q412.h"

struct Q412Entry {
    u16 i;
    u16 q;
};

extern const struct Q412Entry gQ412Table[] = {
    {  10, UQ412__0_1  },
    {  20, UQ412__0_2  },
    {  25, UQ412__0_25 },
    {  30, UQ412__0_3  },
    {  33, UQ412__0_33 },
    {  50, UQ412__0_5  },
};

u16 QPercent(u16 i)
{
    for (unsigned int j = 0; j < NELEMS(gQ412Table); j++) {
        if (gQ412Table[j].i == i) {
            return gQ412Table[j].q;
        }
    }

    return 0;
}