.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

// fix spit up: original makes user go right 2 pixels

.create "build/move/move_anim/0_255", 0

//Spit Up

a010_255:
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
    loadparticle 0, 273
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 1927, -117
    callfunction 53, 5, 70, 120, 8, 5, 15, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 25
    repeatse 2049, -117, 5, 2
    addparticle 0, 0, 3
    waitstate
    addparticle 0, 1, 4
    wait 15
    repeatse 1920, 117, 2, 3
    callfunction 36, 5, 2, 0, 1, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end

.close
