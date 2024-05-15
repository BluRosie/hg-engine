.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/battle_script_constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_137", 0

// Sunny Day

a030_137:
    printattackmessage
    waitmessage
    wait 0x1E
    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_SUNNY_ANY, NoAnimation
    playanimation BATTLER_ATTACKER
    waitmessage
NoAnimation:
    gotosubscript SUB_SEQ_HANDLE_SUN_TEMPORARY
    endscript

.close
