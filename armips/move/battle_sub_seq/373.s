.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/battle_script_constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_373", 0

// Prevent changing weather

a001_373:
    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_EXTREMELY_HARSH_SUNLIGHT, Sun
    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_HEAVY_RAIN, Rain
    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_STRONG_WINDS, Winds
    endscript
Sun:
    printmessage 1442, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The extremely harsh sunlight\nwas not lessened at all!
    goto Continue
Rain:
    printmessage 1446, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // There is no relief from this heavy rain!
    goto Continue
Winds:
    printmessage 1450, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // The mysterious strong winds\nblow on regardless!
Continue:
    waitmessage
    wait 0x1E
    endscript
.close