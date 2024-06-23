.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_419", 0

a010_419:
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
    loadparticle 0, 437
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 12, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 3, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 5, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    wait 2
    playsepan 2092, 117
    wait 12
    playsepan 1954, 117
    wait 2
    playsepan 1954, 117
    wait 2
    playsepan 1954, 117
    wait 2
    playsepan 1954, 117
    wait 2
    playsepan 1954, 117
    wait 2
    playsepan 1954, 117
    wait 2
    playsepan 1954, 117
    wait 2
    playsepan 1954, 117
    wait 2
    callfunction 34, 6, 8, 0, 1, 32767, 10, 10, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
