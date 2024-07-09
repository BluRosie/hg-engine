.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_836", 0

// Raging Fury
// Outrage animation with Fire Blast background

a010_836:
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
    loadparticle 0, 219
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspritemaybe 0, 0, 0, 0
    loadspritemaybe 0, 0, 1, 1
    wait 1
    cmd43
    cmd0C 7, 1
    changebg 22, 0x800001
    waitforchangebg
    repeatse 1965, -117, 4, 2
    addparticle 0, 0, 3
    addparticle 0, 1, 3
    callfunction 34, 6, 8, 0, 3, 31, 10, 10, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 3, 0, 0, 13, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    loop 2
    callfunction 33, 5, 0, 0, 0, 10, 31, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    callfunction 33, 5, 0, 0, 10, 0, 31, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    doloop
    callfunction 33, 5, 0, 0, 0, 10, 31, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    callfunction 33, 5, 0, 0, 10, 0, 31, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepanmod 1939, -117, 117, 4, 2
    wait 10
    waitparticle
    unloadparticle 0
    cmd0C 7, 1
    resetbg 22, 0x1000001
    waitforchangebg
    resetsprite 0
    resetsprite 1
    unloadspriteresource
    end

.close    
