#ifndef __Q412_H
#define __Q412_H

#include "../include/types.h"

/*
 * Starting with generation 5, Pokemon moved to using the Q4.12 number format
 * for representing integers as they were to be used in damage computations.
 * This format specifies decimal values as such:
 * 
 *  0000 000000000000
 *  ^--^ ^----------^
 *    |       |
 *    |       -------- Bits 0 through 11 are the decimal component.
 *    ---------------- Bits 12 through 15 are the whole component.
 * 
 * So the value 1.5, in this format, would, in binary, be:
 * 
 *  0001 100000000000
 *  ^--^ ^----------^
 *    |       |
 *    |       -------- 1 * 2^(-1) -> 0.5
 *    ---------------- 1 * 2^0    -> 1.0
 * 
 * This means, effectively, that the integral value 4096 is equivalent to 1 when
 * interpreted in Q4.12 format.
 * 
 * Further reading: https://en.wikipedia.org/wiki/Q_(number_format)
 * 
 * For ease of use, some common values are provided here as pre-processor
 * definitions.
 */

#define UQ412__1_0              4096                                    // 1.0
#define UQ412__1_67             6840                                    // 1.67
#define UQ412__2_0              8192                                    // 2.0
#define UQ412__0_6666           2732                                    // 0.6666
#define UQ412__0_5              2048                                    // 0.5
#define UQ412__0_3333           1365                                    // 0.3333
#define UQ412__0_33             1352                                    // 0.33
#define UQ412__0_3              1229                                    // 0.3
#define UQ412__0_25             1024                                    // 0.25
#define UQ412__0_2              819                                     // 0.2
#define UQ412__0_1              409                                     // 0.1
#define UQ412__0_1_BUT_HIGHER   410                                     // ≈0.1

#define UQ412__2_25             (UQ412__2_0 + UQ412__0_25)              // 9216
#define UQ412__2_5              (UQ412__2_0 + UQ412__0_5)               // 10240
#define UQ412__1_5              (UQ412__1_0 + UQ412__0_5)               // 6144
#define UQ412__1_3333           (UQ412__1_0 + UQ412__0_3333)            // 5461   
#define UQ412__1_33             (UQ412__1_0 + UQ412__0_33)              // 5448
#define UQ412__1_3              (UQ412__1_0 + UQ412__0_3)               // 5325
#define UQ412__1_25             (UQ412__1_0 + UQ412__0_25)              // 5120
#define UQ412__1_2              (UQ412__1_0 + UQ412__0_2)               // 4915
#define UQ412__1_1              (UQ412__1_0 + UQ412__0_1)               // 4505
#define UQ412__1_1_BUT_HIGHER   (UQ412__1_0 + UQ412__0_1_BUT_HIGHER)    // 4506
#define UQ412__0_75             (UQ412__0_5 + UQ412__0_25)              // 3072
#define UQ412__0_9              (UQ412__1_0 - UQ412__0_1_BUT_HIGHER)    // 3686
#define UQ412__0_8              (UQ412__0_5 + UQ412__0_3)               // 3277

// The following are non-canonical estimations
// https://web.archive.org/web/20210625213105/https://chummersone.github.io/qformat.html
// UQ412__0_8 is also non-canonical for capture mechanics, but canonical otherwise
#define UQ412__0_8_exp_2        2621                                    // 0.64
#define UQ412__0_8_exp_3        2097                                    // 0.512
#define UQ412__0_8_exp_4        1678                                    // 0.4096
#define UQ412__0_8_exp_5        1342                                    // 0.32768
#define UQ412__0_8_exp_6        1074                                    // 0.262144
#define UQ412__0_8_exp_7        859                                     // 0.2097152
#define UQ412__0_8_exp_8        687                                     // 0.16777216

/*
 * Shift by this much to the right to translate the whole component from Q4.12
 * format back to a standard 16-bit integer.
 * 
 * Shift by this much to the left to translate a 16-bit integer to Q4.12 format
 * (maximum value: 15).
 */
#define UQ412_INT_BITSHIFT      12

#define UQ412__FROM_INT(n)      ((n & 0x000F) << UQ412_INT_BITSHIFT)

/**
 * @brief Convenience function to convert an integer to a Q412 value,
 * treating the input integer as a percentage.
 */
u16 __attribute__((long_call)) QPercent(u16 i);

/**
 * @brief Multiply two values together.
 * 
 * @param i     First operand. Format-agnostic.
 * @param q     Second operand. Assumed to be in Q4.12 format. 
 */
u32 __attribute__((long_call)) QMul_RoundUp(u32 i, u32 q);

/**
 * @brief Multiply two values together.
 * 
 * @param i     First operand. Format-agnostic.
 * @param q     Second operand. Assumed to be in Q4.12 format. 
 */
u32 __attribute__((long_call)) QMul_RoundDown(u32 i, u32 q);

#endif // __Q412_H