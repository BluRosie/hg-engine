.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_544", 0

// Tail Slap
// Slam animation

a010_544:
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
    loadparticle 0, 52
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    callfunction 57, 4, 2, 14, 4, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 57, 4, 2, -14, -4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 57, 4, 2, -14, -4, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 4, 14, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1920, 117
    waitparticle
    unloadparticle 0
    end
    

.close
