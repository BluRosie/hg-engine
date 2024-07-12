.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_075", 0

a010_075:
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
    loadparticle 0, 106
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 2121, -117
    addparticle 0, 2, 3
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 6, 5, 0, 0, "NaN", "NaN"
    wait 15
    stopse 2121
    wait 50
    playsepanmod 1885, -117, 117, 4, 2
    wait 10
    addparticle 0, 0, 20
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 2, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 7
    repeatse 2119, 117, 3, 5
    waitparticle
    unloadparticle 0
    end

.close
