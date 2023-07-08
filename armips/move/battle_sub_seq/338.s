.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// subscript for air balloon switch in message

.create "build/move/battle_sub_seq/1_338", 0x0

a001_337:
    changevar2 VAR_OP_SET, VAR_DEFENDER, VAR_BATTLER_SOMETHING
    printmessage 1370, TAG_NICK_ITEM, BATTLER_DEFENDER, BATTLER_DEFENDER, "NaN", "NaN", "NaN", "NaN" // {STRVAR_1 1, 0, 0} floats in the\nair with its {STRVAR_1 5, 1, 0}!
    waitmessage
    wait 0x1E
    endscript

.close
