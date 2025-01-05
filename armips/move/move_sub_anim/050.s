.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "armips/include/constants.s"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

// grassy terrain

.create "build/move/move_sub_anim/1_050", 0

a061_050:
    changepermanentbg BATTLE_BG_GRASSY_TERRAIN, TERRAIN_GRASSY_TERRAIN
    end


.close
