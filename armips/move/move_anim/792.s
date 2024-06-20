.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_792", 0

// Spirit Break
// Miracle Eye (no eye) and some hits

a010_792:
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
    loadparticle 0, 375
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 2, 4
    wait 25
    callfunction 34, 6, 8, 0, 1, 32767, 10, 25, "NaN", "NaN", "NaN", "NaN"
    playsepan 1886, 117
    waitparticle
    unloadparticle 0

    callfunction 36, 5, 3, 0, 1, 12, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    loadparticle 1, 32
    playsepan 1827, 117
    addparticle 1, 1, 4
    callfunction 51, 3, 1, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    playsepan 1827, 117
    addparticle 1, 1, 4
    callfunction 51, 3, 1, -4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    playsepan 1827, 117
    addparticle 1, 1, 4
    callfunction 51, 3, 1, -4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    playsepan 1827, 117
    addparticle 1, 1, 4
    callfunction 51, 3, 1, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8

    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
    

.close
