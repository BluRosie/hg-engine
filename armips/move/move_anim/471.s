.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_471", 0

a010_471:
    loadparticlefromspa 0, 486
    waitparticle

    addparticle 0, 2, 3
    addparticle 0, 1, 3
    addparticle 0, 1, 3
    addparticle 0, 0, 3
    playsepan 1908, -117
    wait 10

    addparticle 0, 1, 3
    addparticle 0, 1, 3
    playsepan 1908, -117
    wait 10

    addparticle 0, 2, 3
    addparticle 0, 0, 3
    playsepan 1908, -117
    wait 2
    playsepan 1908, -117
    waitparticle

    unloadparticle 0
    waitstate
    end
    

.close
