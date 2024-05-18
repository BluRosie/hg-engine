.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Delta Stream

.create "build/move/battle_sub_seq/1_367", 0

a001_367:
    // Tailwind animation
    changevar VAR_OP_SET, VAR_MOVE_TEMP2, MOVE_TAILWIND
    playanimation BATTLER_xFF
    waitmessage
    changevar VAR_OP_SET, VAR_MOVE_EFFECT, 0x0
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x4000
    printmessage 1449, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // Mysterious strong winds are protecting\nFlying-type Pokémon!
    waitmessage
    wait 0x1E
    changevar VAR_OP_CLEARMASK, VAR_FIELD_EFFECT, FIELD_CONDITION_WEATHER
    changevar VAR_OP_SETMASK, VAR_FIELD_EFFECT, WEATHER_STRONG_WINDS
    endscript

.close
