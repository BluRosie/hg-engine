.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_375", 0

// Used for Weakness Policy

a001_375:
    setstatus2effect BATTLER_DEFENDER, 0xA
    waitmessage
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x200000
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x4001
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS2, 0x80
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, ATTACK_UP_2
    gotosubscript 12
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, SPATK_UP_2
    gotosubscript 12
    removeitem BATTLER_DEFENDER
    endscript

.close