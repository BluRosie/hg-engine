.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_196", 0

a010_196:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
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
    loadparticle 0, 216
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 6, 5, 0, 0, "NaN", "NaN"
    repeatse 1915, 0, 2, 14
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 6, 5, 0, 0, "NaN", "NaN"
    wait 20
    addparticle 0, 2, 20
    callfunction 36, 5, 2, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 10, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 2, 32767, 14, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 16, 0, 2, 32767, 14, 0, "NaN", "NaN", "NaN", "NaN"
    wait 10
    repeatse 2052, 117, 4, 4
    wait 50
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    stopse 1915
    end

.close
