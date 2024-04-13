.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_115", 0

// Sandstorm

a030_115:
    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_SANDSTORM_ANY, _0094
    preparemessage 0x324, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, FIELD_CONDITION_WEATHER
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, WEATHER_SANDSTORM
    changevar VAR_OP_SET, VAR_WEATHER_TURNS, 0x5
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005D
    checkitemeffect 0x1, BATTLER_ATTACKER, 0x6F, _0090
    getitempower BATTLER_ATTACKER, 0x9
    changevar2 VAR_OP_ADD, VAR_WEATHER_TURNS, VAR_CALCULATION_WORK
_0090:
    endscript
_0094:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
