.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// handle imposter - transform, take out the subscript 76 part

.create "build/move/battle_sub_seq/1_326", 0

a001_092:
    //ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_MOVE_STATE, 0x200400C0, _0060
    //ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_STATUS_2, 0x200000, _0060
    //gotosubscript 76
    //transform
    //waitmessage
    playanimation BATTLER_ATTACKER
    waitmessage
    printmessage 345, TAG_NICK_POKE, BATTLER_ATTACKER, BATTLER_DEFENDER, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x4000 // reenable animations
    endscript
_0060:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
