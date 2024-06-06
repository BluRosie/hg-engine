.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_102", 0

a010_102:
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
    loadparticle 0, 131
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    jumpifcontest _01F4
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspritemaybe 1, 0, 0, 0
    loadspritemaybe 1, 0, 1, 1
    loadspritemaybe 3, 0, 2, 2
    playsepan 1984, 117
    callfunction 58, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 1, 1, 1, 0, 0, "NaN", "NaN"
    wait 25
    callfunction 34, 5, 2, 0, 1, 32767, 12, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1838, -117
    addparticle 0, 0, 17
    cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    waitparticle
    unloadparticle 0
    waitstate
    resetsprite 0
    resetsprite 1
    resetsprite 2
    unloadspriteresource
    end
_01F4:
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspritemaybe 1, 0, 0, 0
    loadspritemaybe 1, 0, 1, 1
    loadspritemaybe 3, 0, 2, 2
    playsepan 1984, 117
    callfunction 58, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 1, 1, 1, 0, 0, "NaN", "NaN"
    wait 25
    callfunction 34, 5, 2, 0, 1, 32767, 12, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1838, -117
    addparticle 0, 0, 17
    cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    waitparticle
    unloadparticle 0
    waitstate
    resetsprite 0
    resetsprite 1
    resetsprite 2
    unloadspriteresource
    end

.close
