.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_790", 0
//Apple Acid
a010_790:
    loadparticlefromspa 0, 414//aura sphere
    waitparticle
    loadparticlefromspa 1, 398//gastro acid
    waitparticle

    callfunction 33, 5, 0, 1, 0, 8, 11252, "NaN", "NaN", "NaN", "NaN", "NaN"
    



    repeatse 2081, 117, 2, 6
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 1, 1, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    callfunction 34, 6, 8, 0, 2, 11252, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"

    callfunction 33, 5, 0, 1, 8, 0, 11252, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
