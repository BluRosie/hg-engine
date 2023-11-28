.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_532", 0

// Drill Run
// Horn Drill animation

a010_532:
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
    loadparticle 0, 63
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 57, 4, 2, 14, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    playsepan 1926, 117
    waitse 1850, 117, 5
    jumpifside 0, _01CC, _024C
    end
_01CC:
    addparticle 0, 3, 4
    addparticle 0, 0, 4
    addparticle 0, 6, 4
    callfunction 36, 5, 1, 0, 1, 12, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 57, 4, 2, -14, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
_024C:
    addparticle 0, 4, 4
    addparticle 0, 1, 4
    addparticle 0, 7, 4
    callfunction 36, 5, 1, 0, 1, 12, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 57, 4, 2, -14, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
