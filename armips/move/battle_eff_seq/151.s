.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_151", 0

a030_151:
    checkcloudnine _001C
    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_SUNNY_ANY, _0074
_001C:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x1000, _0088
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x63, _006C
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x4000000C
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x23
    endscript
_006C:
    gotosubscript 217
_0074:
    if IF_EQUAL, VAR_DEFENDER, 0xFF, _0090
_0088:
    critcalc
    damagecalc
_0090:
    gotosubscript 259
    endscript

.close
