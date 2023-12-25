.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"
.include "armips/include/constants.s"

// handle terrain and field effects subscript

.create "build/move/battle_sub_seq/1_345", 0x0

HandleTerrainAndFieldEffects:
    goto HandleTerrainOverlay
    
HandleTerrainOverlay:
    ifterrainoverlayistype GRASSY_TERRAIN, IsGrassyTerrain
    ifterrainoverlayistype MISTY_TERRAIN, IsMistyTerrain
    ifterrainoverlayistype ELECTRIC_TERRAIN, IsElectricTerrain
    ifterrainoverlayistype PSYCHIC_TERRAIN, IsPsychicTerrain
    goto DefaultOrEnd

    IsGrassyTerrain:
        if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_EARTHQUAKE, GrassFieldSoftenNerf
        if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_MAGNITUDE, GrassFieldSoftenNerf
        if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_BULLDOZE, GrassFieldSoftenNerf
        ifmovepowergreaterthanzero GrassyTerrainTypeCheck
        goto DefaultOrEnd
        endscript
    IsMistyTerrain:
        ifmovepowergreaterthanzero MistyTerrainTypeCheck
        goto DefaultOrEnd
    IsElectricTerrain:
        ifmovepowergreaterthanzero ElectricTerrainTypeCheck
        goto DefaultOrEnd
    IsPsychicTerrain:
        ifmovepowergreaterthanzero PsychicFieldTypeCheck
        goto DefaultOrEnd
    goto DefaultOrEnd

HandleFieldEffects:
    goto DefaultOrEnd
    IsGrassField:
            if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_EARTHQUAKE, GrassFieldSoftenNerf
            if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_MAGNITUDE, GrassFieldSoftenNerf
            if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_BULLDOZE, GrassFieldSoftenNerf
            ifmovepowergreaterthanzero GrassFieldTypeCheck
            goto DefaultOrEnd
        GrassFieldTypeCheck:
        GrassyTerrainTypeCheck:
            checkifcurrentadjustedmoveistype TYPE_GRASS, GrassFieldAttackerGroundedCheck
            goto DefaultOrEnd
        GrassFieldDefenderGroundedCheck:
            goto DefaultOrEnd
        GrassFieldAttackerGroundedCheck:
            ifgrounded BATTLER_ATTACKER, GrassFieldGrassBoost
            goto DefaultOrEnd
        GrassFieldGrassBoost:
            changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xD // 1.3 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            endscript
        GrassFieldSoftenNerf:
            changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x5 // 0.5 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            endscript
    IsElectricField:
            ifmovepowergreaterthanzero ElectricFieldTypeCheck
            goto DefaultOrEnd
        ElectricTerrainTypeCheck:
        ElectricFieldTypeCheck:
            checkifcurrentadjustedmoveistype TYPE_ELECTRIC, ElectricFieldAttackerGroundedCheck
            goto DefaultOrEnd
        ElectricFieldAttackerGroundedCheck:
            ifgrounded BATTLER_ATTACKER, ElectricFieldElectricBoost
            goto DefaultOrEnd
        ElectricFieldElectricBoost:
            changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xD // 1.3 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            endscript
    IsMistyField:
            ifmovepowergreaterthanzero MistyFieldTypeCheck
            goto DefaultOrEnd
        MistyTerrainTypeCheck:
        MistyFieldTypeCheck:
            checkifcurrentadjustedmoveistype TYPE_FAIRY, MistyFieldAttackerGroundedCheck
            checkifcurrentadjustedmoveistype TYPE_DRAGON, MistyFieldDefenderGroundedCheck
            goto DefaultOrEnd
        MistyFieldAttackerGroundedCheck:
            ifgrounded BATTLER_ATTACKER, MistyFieldFairyBoost
            goto DefaultOrEnd
        MistyFieldDefenderGroundedCheck:
            ifgrounded BATTLER_DEFENDER, MistyFieldDragonNerf
            goto DefaultOrEnd
        MistyFieldFairyBoost:
            changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xD // 1.3 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            endscript
        MistyFieldDragonNerf:
            changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x5 // 0.5 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            endscript
    IsPsychicField:
            ifmovepowergreaterthanzero PsychicFieldTypeCheck
            goto DefaultOrEnd
        PsychicTerrainTypeCheck:
        PsychicFieldTypeCheck:
            checkifcurrentadjustedmoveistype TYPE_PSYCHIC, PsychicFieldAttackerGroundedCheck
            goto DefaultOrEnd
        PsychicFieldAttackerGroundedCheck:
            ifgrounded BATTLER_ATTACKER, PsychicFieldPsychicBoost
            goto DefaultOrEnd
        PsychicFieldPsychicBoost:
            changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xD // 1.3 multiplier
            printattackmessage
            waitmessage
            wait 0x1E
            endscript

DefaultOrEnd:
    endscript

.close
