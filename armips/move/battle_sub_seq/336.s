.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// subscript for handling the absorb bulb
// adapted from mashing a few together for berries and such

.create "build/move/battle_sub_seq/1_336", 0x0

a001_336:
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x0, _0028
    setstatus2effect BATTLER_DEFENDER, 0xA // play the mon ate animation
    waitmessage
_0028:

	// raise spatk, skip message
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x204001 // use 0x200000 to skip stat raise message from subscript 12
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS2, 0x80
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, 18 // ADD_STATE_SPATK_UP
    gotosubscript 12
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS2, 0x2
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS2, 0x80
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x200000 // use this to skip stat raise message from subscript 12

    printmessage 1364, TAG_NICK_ITEM, BATTLER_DEFENDER, BATTLER_DEFENDER, "NaN", "NaN", "NaN", "NaN" // print the real message
    waitmessage
    wait 0x1E

	removeitem BATTLER_DEFENDER // remove absorb bulb

    endscript

.close
