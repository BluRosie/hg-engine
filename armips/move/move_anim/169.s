.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_169", 0

a010_169:
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
    loadparticle 0, 190
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
    loadparticle 1, 190
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    jumpifcontest _021C
    playsepanmod 1964, -117, 117, 4, 2
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 6, 1, 0, 1, "NaN", "NaN"
    addparticle 1, 1, 4
    addparticle 1, 2, 4
    wait 14
    playsepan 1838, 117
    waitse 1963, 117, 32
    waitparticle
    unloadparticle 0
    unloadparticle 1
    end
_021C:
    playsepanmod 1964, -117, 117, 4, 2
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 28, 22, 0, 4, "NaN", "NaN"
    addparticle 1, 1, 4
    addparticle 1, 2, 4
    wait 14
    playsepan 1838, 117
    waitse 1963, 117, 32
    waitparticle
    unloadparticle 0
    unloadparticle 1
    end

.close
