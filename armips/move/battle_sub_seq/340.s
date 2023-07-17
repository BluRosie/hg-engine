.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// subscript for handling the eject button and red card

.create "build/move/battle_sub_seq/1_340", 0x0

a001_340:
    ifmonstat IF_EQUAL, BATTLER_WORK, MON_DATA_HP, 0x0, _0028
    setstatus2effect BATTLER_WORK, 0xA // play the mon ate animation
    waitmessage

    removeitem BATTLER_WORK // remove eject button/red card

    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x00080000 // use 0x00080000 to skip ability checks and such for u-turn subscript.  it technically is used for hitting shadow force but we repurpose it here
    gotosubscript 175
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x00080000

_0028:
    endscript

.close
