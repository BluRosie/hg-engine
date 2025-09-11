#ifndef DEBUG_H
#define DEBUG_H

// DEBUG_ADJUSTED_ACCURACY is used to debug the adjusted accuracy for testing abilities that affect accuracy.
// this is used in combination with a lua script to dynamically display the adjusted accuracy.
// uncomment the define to have the information written to 0x23DF000
//#define DEBUG_ADJUSTED_ACCURACY

// DEBUG_DAMAGE_ROLLS is used to print all of the damage rolls
//#define DEBUG_DAMAGE_ROLLS

// DEBUG_HIDDEN_ABILITIES is used to debug hidden abilities by forcing all generated mons to have the hidden ability bit set.
// uncomment the define to activate
//#define DEBUG_HIDDEN_ABILITIES

// DEBUG_PRIMAL_REVERSION is used to debug primal reversions by making no item required to activate the primal reversion, i.e. will always activate without an item
// uncomment the define to activate
//#define DEBUG_PRIMAL_REVERSION

// DEBUG_SCALED_EXPERIENCE is used to debug the new scaled experience system.
//#define DEBUG_SCALED_EXPERIENCE

// DEBUG_BATTLE_SCRIPT_COMMANDS prints out the battle script command names in the desmume window
//#define DEBUG_BATTLE_SCRIPT_COMMANDS

// DEBUG_PRINT_OVERLAY_LOADS prints out overlay loads and unloads in the desmume window
//#define DEBUG_PRINT_OVERLAY_LOADS

// DEBUG_SOUND_SSEQ_LOADS prints out sseq loads from the SDAT and the free space left after the load.
//#define DEBUG_SOUND_SSEQ_LOADS

// DEBUG_SOUND_SBNK_LOADS prints out sseq loads from the SDAT and the free space left after the load.
//#define DEBUG_SOUND_SBNK_LOADS

// GUARANTEE_CAPTURES guarantees captures
//#define GUARANTEE_CAPTURES

// Uncomment this when you want to enable all gimmicks while testing
// #define DEBUG_ENABLE_ALL_GIMMICKS

// DEBUG_SQRT prints debug information for the gpio sqrt function
//#define DEBUG_SQRT

// DEBUG_PRINT_EXPERIENCE_VALUES prints debug information for experience outputs
//#define DEBUG_PRINT_EXPERIENCE_VALUES

// DEBUG_CAPTURE_RATE_PERCENTAGES prints debug information for capture rate
//#define DEBUG_CAPTURE_RATE_PERCENTAGES

// DEBUG_SERVER_QUEUE prints debug information about the status of the server queue when the waitmessage script command
//#define DEBUG_SERVER_QUEUE

// DEBUG_INIT_PC_BOXES_WITH_MONS initializes pc boxes with mons on save creation.  inits with national dex num
//#define DEBUG_INIT_PC_BOXES_WITH_MONS

// DEBUG_PRINT_HEAP_OVERFLOW_MESSAGES will cause any crash from a heap overflow to display error information
//#define DEBUG_PRINT_HEAP_OVERFLOW_MESSAGES

// DEBUG_PRINT_HEAP_OVERFLOW_MESSAGES_ASSERT_FAIL will cause any GF_AssertFail call to display error information, even those that would normally in vanilla work fine
//#define DEBUG_PRINT_HEAP_OVERFLOW_MESSAGES_ASSERT_FAIL

// DEBUG_ALWAYS_OBEY will force all battlers to obey regardless of badges owned
//#define DEBUG_ALWAYS_OBEY

// DEBUG_ENDTURN_LOGIC turns on a number of debug prints related to the end-turn logic
//#define DEBUG_ENDTURN_LOGIC

// DEBUG_BEFORE_MOVE_LOGIC turns on a number of debug prints related to the before-move logic
//#define DEBUG_BEFORE_MOVE_LOGIC

// DEBUG_PRINT_HEAP_CREATION allows for debug prints on heap creation/deletion
//#define DEBUG_PRINT_HEAP_CREATION

// DEBUG_PRINT_HEAP_ALLOCATION allows for debug prints on memory allocation/free
//#define DEBUG_PRINT_HEAP_ALLOCATION

// DEBUG_DAMAGE_CALC shows debug information related to calculating damage.
//#define DEBUG_DAMAGE_CALC

//DEBUG_SPEED_CALC shows debug information related to calculating speed. It is very slow and laggy.
// #define DEBUG_SPEED_CALC

// FANCY_PRINT_NICKNAME defines in progress implementations that may not necessarily function.
// #define FANCY_PRINT_NICKNAME

// DEBUG_ENABLE_UNIMPLEMENTED_MOVES shows debug information if a chosen move is not implemented/dexited
//#define DEBUG_ENABLE_UNIMPLEMENTED_MOVES

// NOCASH_GBA_PRINT swaps from desmume prints with the syscall to NO$GBA-style prints for use with i.e. melonDS
#define NOCASH_GBA_PRINT

#endif // DEBUG_H
