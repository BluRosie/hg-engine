.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/constants.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// electric terrain

.create "build/move/move_anim/0_607", 0

a010_607:
    changepermanentbg BATTLE_BG_ELECTRIC_TERRAIN, TERRAIN_CURRENT
    end


.close
