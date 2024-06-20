.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_575", 0

// Petal Blizzard
// Sweet Scent animation with Pokemon getting hit animation

a010_575:
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
    loadparticle 0, 248
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 2037, 0
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 3, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -2000, 8000, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 3, 0
    addparticle 0, 4, 4
    callfunction 34, 5, 8, 0, 2, 23199, 12, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 5, 16, 0, 2, 23199, 12, "NaN", "NaN", "NaN", "NaN", "NaN"

    wait 20

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

    waitparticle
    unloadparticle 0
    end
    
.close
