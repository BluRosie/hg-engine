#ifndef CONFIG_H
#define CONFIG_H

// FAIRY_TYPE_IMPLEMENTED should be used if you implemented the fairy type over type slot 9 using hgss-filesys-example's fairy branch.
// for this project, it is used to adjust the mega stone item gfx start, as the pixie plate
// should shift all of the item gfx.
// set FAIRY_TYPE_IMPLEMENTED to 1 if the above applies to you.  otherwise, leave it blank
#define FAIRY_TYPE_IMPLEMENTED 0

// START_ADDRESS should be the same as armips/include/config.h's START_ADDRESS so that hall of fame/pokéathlon overworlds work properly.
// START_ADDRESS defines the file address within the synthetic overlay where you would like to place all of the code that this project uses.  this is largely the repointed tables that the code uses.
// if START_ADDRESS is 0x10000, then the tables will be inserted at address 0x10000 of the synthetic overlay
// the current implementation (with all gen 5 mons) uses ~9222/0x2406 bytes.  make sure this points to that much free space (probably allow for a little bit more than that)
#define START_ADDRESS 0x0

// EXPERIENCE_FORMULA_GEN defines the experience formula you would like to use.  Gens 5, 7, and 8 consider the difference between the attacker's level and the fainted's level to scale the experience gained.
// i.e. defining this as "5", "7", or "8" would use a scaled formula, whereas "6" and others would use the default formula.  There is a multiplier of 255 / 390 to not artificially inflate the experience given as well with higher base experience.
#define EXPERIENCE_FORMULA_GEN 8

#endif
