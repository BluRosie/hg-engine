.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "armips/include/constants.s"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

// psychic terrain

.create "build/move/move_sub_anim/1_053", 0

a061_053:
    changepermanentbg BATTLE_BG_PSYCHIC_TERRAIN, TERRAIN_PSYCHIC_TERRAIN
    end


.close
