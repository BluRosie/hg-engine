.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_302", 0

a010_302:
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
    loadparticle 0, 320
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 2, 4
    addparticle 0, 3, 4
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    wait 2
    repeatse 1926, 117, 2, 8
    wait 13
    callfunction 36, 5, 2, 0, 1, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitse 1874, 117, 5
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
