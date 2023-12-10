.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_675", 0

// Toxic Thread
// String Shot with a flash of purple from Sludge

a010_675:
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
    loadparticle 0, 112
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 6, 5, 0, 0, "NaN", "NaN"
    playsepan 1964, 117
    waitse 1919, 117, 50
    initresources 0, 3, 1, 1, 1, 1, 0, 0
    loadresources 0, 1
    loadpalette 0, 1, 1
    loadcell 0, 1
    loadcellanm 0, 1
    addsomething 0, 1, 1, 1, 1, 1, 0, 0, 1, 3, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 34, 6, 8, 0, 1, 31764, 14, 0, "NaN", "NaN", "NaN", "NaN"
    freeresources 0
    waitparticle
    unloadparticle 0
    waitstate
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
