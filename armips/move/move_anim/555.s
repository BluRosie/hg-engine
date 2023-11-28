.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_555", 0

// Fiery Dance
// Fire Spin with red bg + particles on user briefly also

a010_555:
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
    loadparticle 0, 114
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3

    callfunction 33, 5, 0, 1, 0, 12, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"

    playsepan 2034, 117

    addparticle 0, 0, 3
    addparticle 0, 1, 3

    wait 20

    addparticle 0, 0, 4
    addparticle 0, 1, 4
    callfunction 34, 6, 8, 0, 2, 31, 10, 10, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0

    callfunction 33, 5, 0, 1, 12, 0, 2124, "NaN", "NaN", "NaN", "NaN", "NaN"

    end

.close
