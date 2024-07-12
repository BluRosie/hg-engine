.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_061", 0

a010_061:
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
    loadparticle 0, 92
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 6, 1, 4096, 0, "NaN", "NaN"
    cmd37 5, 4, 0, 2, 5, 0, "NaN", "NaN", "NaN"
    repeatse 2117, 0, 4, 8
    loop 2
    repeatse 1997, 117, 2, 2
    callfunction 52, 3, 8, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    callfunction 52, 3, 16, -16, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 16
    callfunction 52, 3, 8, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    doloop
    repeatse 2024, 117, 4, 6
    waitparticle
    unloadparticle 0
    end

.close
