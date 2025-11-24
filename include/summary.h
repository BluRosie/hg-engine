#ifndef __UI_SUMMARY_H
#define __UI_SUMMARY_H

//#include "lib/string.h"

#include "types.h"
#include "window.h"
#include "pokemon.h"

enum SummaryStringJustify {
    JUSTIFY_LEFT,
    JUSTIFY_RIGHT,
    JUSTIFY_CENTER,
};

struct SummaryBaseData {
    void *ppd;                  /* 0x00 */
    void *config;               /* 0x04 */
    u16  *playerName;           /* 0x08 */
    u32  playerID;              /* 0x0C */
    u8   playerGender;          /* 0x10 */
    u8   dataType;              /* 0x11 */
    u8   mode;
    u8   limit;
    u8   pos;
    u8   pageFlag;

    u8   selectedMoveOut;
    u8   selectedModeOut;
    u16  move;

    u32  dexDisplayMode;

    void *ribbons;
    void *pokeblocks;
    void *cry;

    BOOL contest;
};

struct SummaryPokemonData {
    /* 0x00 */ void *speciesName;
    /* 0x04 */ void *nickname;
    /* 0x08 */ void *otName;

    /* 0x0C */ u16  species;
    /* 0x0E */ u16  heldItem;

    /* 0x10 */ u8   type1;
    /* 0x11 */ u8   type2;
    /* 0x12 */ u8   level      :7,
                    showGender :1;
    /* 0x13 */ u8   gender     :2,
                    ballType   :6;

    /* 0x14 */ u32 otID;
    /* 0x18 */ u32 curExp;
    /* 0x1C */ u32 curLevelExp;
    /* 0x20 */ u32 nextLevelExp;

    /* 0x24 */ u16 hp;
    /* 0x26 */ u16 maxHP;
    /* 0x28 */ u16 attack;
    /* 0x2A */ u16 defense;
    /* 0x2C */ u16 spAttack;
    /* 0x2E */ u16 spDefense;
    /* 0x30 */ u16 speed;

    /* 0x32 */ u8  form;
    /* 0x33 */ u8  nature;

    /* 0x34 */ u16 moves[4];
    /* 0x3C */ u8  curPP[4];
    /* 0x40 */ u8  maxPP[4];

    /* 0x44 */ u8  otGender;
    /* 0x45 */ u8  cool;
    /* 0x46 */ u8  beauty;
    /* 0x47 */ u8  cute;
    /* 0x48 */ u8  smart;
    /* 0x49 */ u8  tough;
    /* 0x4A */ u8  sheen;
    /* 0x4B */ u8  favoriteFlavor;

    /* 0x4C */ u16 mark;
    /* 0x4E */ u16 ability;

    /* 0x50 */ u32 status      :28,
                   isEgg       :1,
                   isShiny     :1,
                   pokerus     :2;

    /* 0x54 */ u32 ribbons[4];
}; // size = 0x64

struct SummaryState {
    /* 0x000 */ void *bgl;
    /* 0x004 */ GF_BGL_BMPWIN defnWindows[34]; // two less windows apparently
    /* 0x224 */ GF_BGL_BMPWIN *addlWindows;
    /* 0x228 */ u32 addlWindowCount;

    /* 0x22C */ struct SummaryBaseData    *baseData;
    /* 0x230 */ struct SummaryPokemonData pokemonData;

    // rest of the hooked struct from here is undocumented, glhf
};

/**
 * @brief Picks the status icon to display on the summary page, if any.
 *
 * Original Function: `Function_208e9f0` (ARM9)
 *
 * @param[in] pokemon
 * @return                  ID of the status icon to display.
 */
u32  LONG_CALL Summary_PickStatusIcon(struct PartyPokemon *pokemon);

/**
 * @brief Assigns data about the input Pokemon to the struct used for display
 * on the summary screen.
 *
 * Original Function: `Function_208d200` (ARM9)
 *
 * @param[in]     summary
 * @param[in]     pokemon
 * @param[in,out] data
 */
void LONG_CALL Summary_SetPokemonData(void *summary, struct PartyPokemon *pokemon, struct SummaryPokemonData *data);

/**
 * @brief Returns the underlying Pokemon struct attached to this summary.
 *
 * This can be either a BoxPokemon or a Pokemon struct; which of them it is
 * depends on the source of the summary screen (since it can be accessed
 * from the PC).
 *
 * Original Function: `Function_208dd48` (ARM9)
 *
 * @param[in] summary
 * @return              The Pokemon struct attached to the summary.
 */
void* LONG_CALL Summary_GetPokemonData(struct SummaryState *summary);

/**
 * @brief Converts a number input to a displayable string and stores it in
 * the summary's holding buffer.
 *
 * Original Function: `Function_2090184` (ARM9)
 *
 * @param[in,out] summary
 * @param[in]     arcMessageID  ID of the string to be pulled from text archive 302.
 * @param[in]     num           The number to be converted.
 * @param[in]     digits        The maximum number of digits permitted.
 * @param[in]     displayType   0 == left-justified; 1 == left-padded by spaces; 2 == left-padded by zeroes.
 */
void  LONG_CALL Summary_NumberToString(struct SummaryState *summary, u32 arcMessageID, u32 num, u8 digits, u8 displayType);

/**
 * @brief Prints the string in the summary's holding buffer to the given window.
 *
 * Original Function: `Function_20900d8` (ARM9)
 *
 * @param[in,out] summary
 * @param[in,out] window    The window to print the string into.
 * @param[in]     color     The color to print the font in.
 * @param[in]     justify   Justification mode; see enum SummaryStringJustify.
 */
void  LONG_CALL Summary_PrintString(struct SummaryState *summary, GF_BGL_BMPWIN *window, u32 color, u32 justify);

/**
 * @brief Print a string for a `current / max` visualization.
 *
 * Original Function: `Function_20901d0` (ARM9)
 *
 * @param[in,out] summary
 * @param[in]     windowIdx Index of the window to print the constructed string into.
 * @param[in]     idSep     ID of the separator string within text archive 302.
 * @param[in]     idCur     ID of the placeholder string within text archive 302 for the value of `current`.
 * @param[in]     idMax     ID of the placeholder string within text archive 302 for the value of `max`.
 * @param[in]     cur
 * @param[in]     max
 * @param[in]     digits    The maximum number of digits permitted.
 * @param[in]     x
 * @param[in]     y
 */
void  LONG_CALL Summary_PrintCurrentOverMax(struct SummaryState *summary, u32 windowIdx, u32 idSep, u32 idCur, u32 idMax, u16 cur, u16 max, u8 digits, u8 x, u8 y);

// ========================================================================= //
//                      NOVEL FUNCTIONS START HERE                           //
// ========================================================================= //

/**
 * @brief Prints values onto the stat screen with appropriate colors based on
 * the input Pokemon's nature.
 *
 * @param[in,out] summary
 */
void LONG_CALL Summary_ColorizeStatScreen_Wrap(struct SummaryState *summary);

/**
 * @brief Updates the state necessary for the stats page of the summary.
 *
 * Accepted modes are as follows:
 * - `0`: Display the calculated stats page (including current and max HP).
 * - `1`: Display EVs for the Pokemon.
 * - `2`: Display IVs for the Pokemon.
 *
 * Output will be color-coded according to the Pokemon's nature.
 *
 * @param[in,out] summary
 * @param[in]     mode      Determines which page of the stat screen to show.
 */
void  LONG_CALL Summary_ChangeStatScreenState(struct SummaryState *summary, u8 mode);

void  LONG_CALL Summary_PrintStatStringAccountForStat(struct SummaryState *summary, u32 windowId, u32 msgId, u32 stat, u32 justify);
void  LONG_CALL Summary_PrintStringGeneric(struct SummaryState *summary, u32 windowId, u32 msgId, u32 color, u32 justify);
void LONG_CALL Summary_ColorizeStatScreen(struct SummaryState *summary, u32 mode);

#endif // __UI_SUMMARY_H