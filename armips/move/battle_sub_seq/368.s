.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/battle_script_constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_368", 0

// Clear Primal Weather when switching

a001_368:
    // Check if there is still 1 more alive excluding the mon switching
    canclearprimalweather 1,Sun,Rain,Winds,Fail
    endscript
Sun:
    ifmonstat IF_NOTEQUAL, BATTLER_REPLACE, MON_DATA_ABILITY, ABILITY_DESOLATE_LAND, Fail
    printmessage 1444, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The harsh sunlight faded.
    waitmessage
    wait 0x1E
    goto Continue
Rain:
    ifmonstat IF_NOTEQUAL, BATTLER_REPLACE, MON_DATA_ABILITY, ABILITY_PRIMORDIAL_SEA, Fail
    printmessage 1448, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The heavy rain has lifted!
    waitmessage
    wait 0x1E
    goto Continue
Winds:
    ifmonstat IF_NOTEQUAL, BATTLER_REPLACE, MON_DATA_ABILITY, ABILITY_DELTA_STREAM, Fail
    printmessage 1452, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The mysterious strong winds\nhave dissipated!
    waitmessage
    wait 0x1E
Continue:
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, FIELD_CONDITION_WEATHER
Fail:
    endscript
.close