.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_779", 0

// Body Press
// Body Slam animation with extra squish

a010_779:
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
    loadparticle 0, 65
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 57, 4, 4, 0, 16, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 57, 4, 4, 0, -16, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    playsepan 1927, 117
    waitse 1920, 117, 6
    callfunction 57, 4, 4, 24, 0, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    callfunction 36, 5, 3, 0, 1, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 42, 8, 264, 100, 130, 100, 70, 100, 1310721, 262148, "NaN", "NaN"
    callfunction 57, 4, 4, -24, 0, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
