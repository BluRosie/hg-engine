.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// knock off subscript

.create "build/move/battle_sub_seq/1_142", 0

a001_142:
    checksubstitute BATTLER_DEFENDER, _0084
    // update:  handle plates and griseous orbs in tryknockoff to get more granular control
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_86, 0x0, _0084
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, MON_DATA_85, 0x0, _0084
    tryknockoff _0084
    printpreparedmessage
    waitmessage
    wait 0x1E
_0084:
    endscript

.close
