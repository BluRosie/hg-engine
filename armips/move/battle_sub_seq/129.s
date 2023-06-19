.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_129", 0

a001_129:
    printattackmessage
    waitmessage
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_STAT_STAGE_ATTACK, 0x0, _0038
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_STAT_STAGE_SPATK, 0x0, _0138
_0038:
    playanimation BATTLER_ATTACKER
    waitmessage
    checksubstitute BATTLER_DEFENDER, _00FC
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x4001
    changevar2 VAR_OP_SET, VAR_ACTIVE_BATTLER, VAR_DEFENDER
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS2, 0x80
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_STAT_STAGE_ATTACK, 0x0, _00B0
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, 0x2E
    gotosubscript 12
_00B0:
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x200000
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, 0x31
    gotosubscript 12
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS2, 0x2
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS2, 0x80
    endscript
_00FC:
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x25F, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
    endscript
_0138:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
