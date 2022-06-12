#ifndef CONFIG_H
#define CONFIG_H

// FAIRY_TYPE_IMPLEMENTED should be used if you implemented the fairy type over type slot 9 using hgss-filesys-example's fairy branch.
// for this project, it is used to adjust the mega stone item gfx start, as the pixie plate
// should shift all of the item gfx.
// set FAIRY_TYPE_IMPLEMENTED to 1 if the above applies to you.  otherwise, leave it blank
#define FAIRY_TYPE_IMPLEMENTED 0

// DEBUG_ADJUSTED_ACCURACY is used to debug the adjusted accuracy for testing abilities that affect accuracy.
// this is used in combination with a lua script to dynamically display the adjusted accuracy.
// uncomment the define to have the information written to 0x23DF000
//#define DEBUG_ADJUSTED_ACCURACY

// DEBUG_ADJUSTED_DAMAGE is used to debug the adjusted damage for testing abilities that affect damage output.
// this is used in combination with a lua script to dynamically display the adjusted damage.
// uncomment the define to have the information written to 0x23DF000
//#define DEBUG_ADJUSTED_DAMAGE

#endif
