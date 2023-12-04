.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_016", 0

a001_016:
    if IF_EQUAL, VAR_WAS_MOVE_CRITICAL, 0x1, _00D0
    printmessage 0x306, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    abilitycheck 0x1, BATTLER_DEFENDER, ABILITY_ANGER_POINT, _00D0
    checksubstitute BATTLER_DEFENDER, _00D0 // If subsitute go to _00D0
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0x0, _00D0
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_STAT_STAGE_ATTACK, 0xC, _00D0
    setstatus2effect BATTLER_DEFENDER, 0xC
    waitmessage
    changemondatabyvalue VAR_OP_SET, BATTLER_DEFENDER, 0x13, 0xC
    changevar VAR_OP_SET, VAR_MESSAGE_WORK, 0x1
    printmessage 0x445, 0x27, 0x2, 0x2, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_00D0: // Added two words so change 00C8 to 00D0
    endscript

.close
