#ifndef DEBUG_H
#define DEBUG_H

// DEBUG_ADJUSTED_ACCURACY is used to debug the adjusted accuracy for testing abilities that affect accuracy.
// this is used in combination with a lua script to dynamically display the adjusted accuracy.
// uncomment the define to have the information written to 0x23DF000
//#define DEBUG_ADJUSTED_ACCURACY

// DEBUG_ADJUSTED_DAMAGE is used to debug the adjusted damage for testing abilities that affect damage output.
// this is used in combination with a lua script to dynamically display the adjusted damage.
// uncomment the define to have the information written to 0x23DF000
//#define DEBUG_ADJUSTED_DAMAGE

// DEBUG_HIDDEN_ABILITIES is used to debug hidden abilities by forcing all generated mons to have the hidden ability bit set.
// uncomment the define to activate
//#define DEBUG_HIDDEN_ABILITIES

// DEBUG_PRIMAL_REVERSION is used to debug primal reversions by making no item required to activate the primal reversion, i.e. will always activate without an item
// uncomment the define to activate
//#define DEBUG_PRIMAL_REVERSION

#endif // DEBUG_H
