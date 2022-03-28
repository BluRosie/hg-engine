.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_488", 0

a010_488:
    loadparticlefromspa 0, 501
    waitparticle
    loadparticlefromspa 1, 271
    waitparticle

// rings
//    addparticle 0, 1, 3
//    addparticle 0, 0, 3
//    addparticle 0, 2, 3
    addparticle 1, 1, 3
    wait 12

// air hits
    addparticle 0, 3, 4

    wait 4
    unloadparticle 1
    waitparticle

    unloadparticle 0
    //unloadparticle 1
    waitstate
    end
    

.close
