.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_557", 0
//Ice Burn
a010_557:
    loadparticlefromspa 0, 486
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
