.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_587", 0

a010_587:
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
    loadparticle 0, 336
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 1914, 0
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 0, 0, 0, 0, "NaN", "NaN"
    callfunction 33, 5, 0, 1, 0, 12, 32415, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 0, 0, 0, 0, "NaN", "NaN"
    playsepan 2041, 0
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 32415, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    stopse 1914
    stopse 2041
    end
.close
