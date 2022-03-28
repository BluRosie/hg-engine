.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_002", 0

a001_002:
    if IF_MASK, VAR_06, 0x40, _0044
    playmovesoundeffect BATTLER_xFF
    monflicker 0xFF
    waitmessage
    if IF_EQUAL, VAR_69, 0x0, _0044
    gotosubscript 264
_0044:
    changevar VAR_OP_CLEARMASK, VAR_06, 0x40
    healthbarupdate BATTLER_xFF
    waitmessage
    datahpupdate BATTLER_xFF
    tryfaintmon BATTLER_xFF
    if IF_GREATER, VAR_HP_TEMP, 0x0, _0094
    changevar2 VAR_OP_SET, VAR_ASSURANCE_DAMAGE, VAR_HP_TEMP
_0094:
    endscript

.close
