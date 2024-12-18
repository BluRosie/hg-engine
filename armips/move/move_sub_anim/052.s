.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "armips/include/constants.s"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

// electric terrain

.create "build/move/move_sub_anim/1_052", 0

a061_052:
    changepermanentbg BATTLE_BG_ELECTRIC_TERRAIN, TERRAIN_ELECTRIC_TERRAIN
    end


.close
