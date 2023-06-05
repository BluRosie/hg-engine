.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_472", 0

// wide guard

a010_472:
    loadparticlefromspa 0, 515
    waitparticle

    addparticle 0, 2, 3

    addparticle 0, 1, 3
    waitparticle

    addparticle 0, 0, 3
    playsepan 1990, -117
    wait 20

    unloadparticle 0
    waitstate
    end
    

.close
