.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "armips/include/constants.s"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

// misty terrain

.create "build/move/move_anim/0_584", 0

a010_584:
    changepermanentbg BATTLE_BG_MISTY_TERRAIN, TERRAIN_CURRENT
    end


.close
