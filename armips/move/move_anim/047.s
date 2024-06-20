.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_047", 0

a010_047:
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
    loadparticle 0, 78
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 12, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 0, 3
    addparticle 0, 1, 3
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    playsepanmod 1935, -117, 117, 4, 2
    wait 5
    callfunction 34, 6, 8, 0, 3, 23199, 14, 0, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
