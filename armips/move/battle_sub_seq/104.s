.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// continue weather sub script

.create "build/move/battle_sub_seq/1_104", 0

a001_104:
    gotosubscript 57
    setstatus2effect3 BATTLER_PLAYER, 0x2B
    waitmessage
    changevar VAR_OP_SET, VAR_CLIENT_NO_AGI, 0x0
_0028:
    orderbattlersbyspeed 0x14
    weatherdamagecalc BATTLER_xFF
    if IF_EQUAL, VAR_TEMP_WORK, 0x1, _018C
    if IF_EQUAL, VAR_HP_TEMP, 0x0, _016C
    if IF_GREATER, VAR_HP_TEMP, 0x0, _0134
    abilitycheck 0x0, BATTLER_xFF, ABILITY_MAGIC_GUARD, _016C
    abilitycheck 0x0, BATTLER_xFF, ABILITY_OVERCOAT, _016C // handle overcoat
    abilitycheck 0x0, BATTLER_xFF, ABILITY_SAND_FORCE, handle_sand_force
    abilitycheck 0x0, BATTLER_xFF, ABILITY_SAND_RUSH, handle_sand_force
    abilitycheck 0x0, BATTLER_xFF, ABILITY_SAND_VEIL, handle_sand_force
    abilitycheck 0x0, BATTLER_xFF, ABILITY_ICE_BODY, handle_hail_immunity
    abilitycheck 0x0, BATTLER_xFF, ABILITY_SNOW_CLOAK, handle_hail_immunity
return_from_weather_canceling_abilities:
    if IF_MASK, VAR_FIELD_EFFECT, 0x30, _00B8
    printmessage 0x11D, 0x15, 0xFF, 0xFF, "NaN", "NaN", "NaN", "NaN" // sandstorm
    goto _00FC
_00B8:
    if IF_EQUAL, VAR_TEMP_WORK, 0x2, _00E8
    printmessage 0x442, 0xB, 0xFF, 0x15, "NaN", "NaN", "NaN", "NaN"
    goto _00FC
_00E8:
    printmessage 0x448, 0xB, 0xFF, 0x15, "NaN", "NaN", "NaN", "NaN"
_00FC:
    waitmessage
    wait 0x1E
    gotosubscript 2
    if IF_NOTMASK, VAR_SERVER_STATUS1, 0xF000000, _016C
    gotosubscript 6
    goto _016C
_0134:
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    gotosubscript 2
    printmessage 0x27B, 0xB, 0xFF, 0x15, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_016C:
    changevar VAR_OP_ADD, VAR_CLIENT_NO_AGI, 0x1
    jumpifvarisvalidbattler 0x27, _0028
    endscript
_018C:
    gotosubscript 190
    goto _016C

handle_sand_force:
    if IF_MASK, VAR_FIELD_EFFECT, 0xC, _016C // sandstorm | permanent sandstorm
    goto return_from_weather_canceling_abilities

handle_hail_immunity:
    if IF_MASK, VAR_FIELD_EFFECT, 0xC0, _016C // hail | permanent hail
    goto return_from_weather_canceling_abilities

.close
