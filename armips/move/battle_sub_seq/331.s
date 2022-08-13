.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_330", 0

growthSubEffectScript: // a001_330
    if IF_MASK, VAR_FIELD_EFFECT, 0x30, SunIsUp // checks for sun weather
    changevar VAR_OP_SETMASK, VAR_60, 0x80
    changevar VAR_OP_SET, VAR_34, ATTACK_UP
    gotosubscript 12
    changevar VAR_OP_SET, VAR_34, SPATK_UP
    gotosubscript 12
    changevar VAR_OP_CLEARMASK, VAR_60, 0x2
    changevar VAR_OP_CLEARMASK, VAR_60, 0x80
    endscript

SunIsUp:
    changevar VAR_OP_SETMASK, VAR_60, 0x80
    changevar VAR_OP_SET, VAR_34, ATTACK_UP_2
    gotosubscript 12
    changevar VAR_OP_SET, VAR_34, SPATK_UP_2
    gotosubscript 12
    changevar VAR_OP_CLEARMASK, VAR_60, 0x2
    changevar VAR_OP_CLEARMASK, VAR_60, 0x80
    endscript