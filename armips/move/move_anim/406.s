.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_406", 0
//Dragon Pulse
a010_406:
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
    loadparticle 0, 424
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    playsepan 2074, -117
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 26, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 26, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 26, 0, 0, 0, "NaN", "NaN"
    wait 15
    playsepanmod 2080, -117, 117, 4, 2
    addparticle 0, 3, 17
    cmd37 6, 0, 2, 26, 20, 0, 0, "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 26, 20, 0, 0, "NaN", "NaN"
    wait 10
    callfunction 36, 5, 4, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
