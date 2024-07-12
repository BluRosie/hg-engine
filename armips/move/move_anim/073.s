.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_073", 0

a010_073:
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
    loadparticle 0, 104
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
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
    loadparticle 1, 349
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle2 1, 0, 0, 3
    callfunction 66, 6, 0, 0, -2, 0, 13, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    playsepanmod 1821, -117, 117, 4, 2
    addparticle2 1, 1, 0, 3
    callfunction 66, 6, 1, -20, -2, 0, 13, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle2 1, 2, 0, 3
    callfunction 66, 6, 2, 20, -2, 0, 13, 64, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -344, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -344, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -344, 0, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -3440, -344, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -3440, -344, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -3440, -344, 0, "NaN", "NaN", "NaN", "NaN"
    wait 2
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 3440, -344, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 3440, -344, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 3440, -344, 0, "NaN", "NaN", "NaN", "NaN"
    playsepan 1839, 117
    waitparticle
    unloadparticle 0
    end

.close
