#include "../include/types.h"
#include "../include/config.h"
#include "../include/debug.h"
#include "../include/q412.h"

// complement to asm/qmath.s using 64-bit numbers

static u64 QMul64(u64 i, u64 q, u32 adjustment)
{
    return ((i * q) + adjustment) >> UQ412_INT_BITSHIFT;
}

u64 LONG_CALL QMul64_RoundUp(u64 i, u64 q)
{
    return QMul64(i, q, UQ412__0_5);
}

u64 LONG_CALL QMul64_RoundDown(u64 i, u64 q)
{
    return QMul64(i, q, UQ412__0_5_BUT_LOWER);
}
