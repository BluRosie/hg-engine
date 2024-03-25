.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_619", 0
// land's wrath
a010_619:
    loadparticlefromspa 0, 432 //earth power
    waitparticle

    //eq screenshake and flash
    callfunction 24, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"

    playsepan 1938, 117 //begin the earth power sequence
    addparticle 0, 3, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -5504, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -5504, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -5504, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -5504, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -5504, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 0, 5, 0, 5, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 2124, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 20
    addparticle 0, 3, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 5504, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 5504, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 5504, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 5504, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 5504, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 0, 5, 0, 5, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 2124, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 20

    addparticle 0, 3, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 0, 5, 0, 5, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 2124, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate //terminate earth power sequence




    

    end
    

.close
