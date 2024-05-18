.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/battle_script_constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_164", 0

// Hail

a030_164:
    printattackmessage
    waitmessage
    wait 0x1E

    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_EXTREMELY_HARSH_SUNLIGHT, PreventChangingWeather
    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_HEAVY_RAIN, PreventChangingWeather
    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_STRONG_WINDS, PreventChangingWeather

    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_HAIL_ANY, NoAnimation
    playanimation BATTLER_ATTACKER
    waitmessage
NoAnimation:
    gotosubscript SUB_SEQ_HANDLE_HAIL_TEMPORARY
    endscript

PreventChangingWeather:
    gotosubscript SUB_SEQ_PREVENT_CHANGING_WEATHER
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript
.close
