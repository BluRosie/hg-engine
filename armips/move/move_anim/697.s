.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_697", 0

// Aurora Veil
// Light Screen with black screen fade

a010_697:
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspriteresource 3
    loadspritemaybe 4, 0, 0, 0
    loadspritemaybe 5, 0, 1, 1
    loadspritemaybe 6, 0, 2, 2
    loadspritemaybe 7, 0, 3, 3
    callfunction 78, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"

    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate

    loadparticle 0, 140
    waitstate
    unloadspriteresource
    loadparticle 1, 93


    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3

    playsepanmod 1530, -117, 117, 4, 2
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 6, 1, 4096, 0, "NaN", "NaN"
    cmd37 5, 3, 0, 0, 0, 0, "NaN", "NaN", "NaN"

    wait 80

    addparticle 0, 1, 19
    addparticle 0, 0, 19
    playsepan 1990, -117
    waitparticle
    unloadparticle 0

    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate

    end

.close
