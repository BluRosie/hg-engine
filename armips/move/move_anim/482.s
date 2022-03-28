.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_482", 0

a010_482:
    loadparticlefromspa 0, 495
    waitparticle
    loadparticlefromspa 1, 119
    waitparticle
    
    addparticle 1, 1, 4
    addparticle 1, 2, 4
    wait 8
    playsepan 1972, 117
    wait 4
    playsepan 1954, 117
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    callfunction 36, 5, 3, 0, 1, 7, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle

    unloadparticle 0
    unloadparticle 1
    waitstate
    end
    

.close
