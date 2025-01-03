.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "armips/include/constants.s"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_583", 0

a010_583:
    changepermanentbg BATTLE_BG_GRASSY_TERRAIN, TERRAIN_GRASSY_TERRAIN
    end


.close
