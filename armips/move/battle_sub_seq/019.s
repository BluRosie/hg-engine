.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Wake up

.create "build/move/battle_sub_seq/1_019", 0

a001_019:
    abilitycheck 0x0, BATTLER_xFF, ABILITY_SOUNDPROOF, _0040
    if IF_NOTMASK, VAR_FIELD_EFFECT, FIELD_STATUS_UPROAR, _0040
    printmessage 0x131, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    goto _0050
_0040:
    printmessage 0x12E, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
_0050:
    waitmessage
    setstatusicon BATTLER_xFF, 0x0
    wait 0x1E
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x34, 0x7
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_xFF, 0x35, 0x8000000
    endscript

.close
