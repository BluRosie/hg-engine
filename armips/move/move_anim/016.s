.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_016", 0

a010_016:
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
    loadparticle 0, 47
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd3E 0, 0
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 0, 0, 0, 8, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 0, 0, 0, 8, "NaN", "NaN"
    wait 5
    playsepan 2043, 117
    wait 15
    callfunction 36, 5, 3, 0, 1, 15, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    waitstate
    end

.close
