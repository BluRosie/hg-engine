.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "armips/include/constants.s"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

// misty terrain

.create "build/move/move_sub_anim/1_051", 0

a061_051:
    changepermanentbg BATTLE_BG_MISTY_TERRAIN, TERRAIN_MISTY_TERRAIN
    end


.close
