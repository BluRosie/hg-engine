.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_502", 0

// clear smog animation

a010_502:
    loadparticlefromspa 0, 514
    waitparticle

    addparticle 0, 0, 4
    addparticle 0, 2, 4
    addparticle 0, 3, 4
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
