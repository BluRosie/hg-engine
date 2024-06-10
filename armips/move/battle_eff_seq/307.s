.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/config.s"
.include "armips/include/constants.s"
.include "armips/include/hold_item_effects.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Techno Blast

.create "build/move/battle_eff_seq/0_307", 0

a030_307:
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_BURN_DRIVE, _setFire       // TYPE_FIRE    
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_DOUSE_DRIVE, _setWater      // TYPE_WATER   
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_SHOCK_DRIVE, _setElectric   // TYPE_ELECTRIC
    checkitemeffect 0x0, BATTLER_ATTACKER, HOLD_EFFECT_CHILL_DRIVE, _setIce        // TYPE_ICE     
    goto _return
_setFire:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_FIRE
    goto _return
_setWater:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_WATER
    goto _return
_setElectric:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_ELECTRIC
    goto _return
_setIce:
    changevar VAR_OP_SET, VAR_MOVE_TYPE, TYPE_ICE
    goto _return
_return:
    critcalc
    damagecalc
    endscript

.close
