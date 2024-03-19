.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// misty terrain

.create "build/move/move_anim/0_584", 0

a010_584:
    changepermanentbg BATTLE_BG_MISTY_TERRAIN, TERRAIN_CURRENT
    end


.close
