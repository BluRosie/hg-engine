.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_845", 0

// Shelter
// Withdraw no bubbles + Iron Defense no flash

a010_845:
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
    loadparticle 0, 137
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 2, 3
    addparticle 0, 3, 3
    // addparticle 0, 1, 3
    addparticle 0, 0, 3
    playsepan 1925, -117
    wait 17
    waitparticle
    unloadparticle 0
    
    repeatse 2038, -117, 8, 2
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspritemaybe 0, 0, 0, 0
    loadspritemaybe 0, 0, 1, 0
    loadspritemaybe 2, 0, 2, 1
    callfunction 83, 2, 3, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    resetsprite 0
    resetsprite 1
    resetsprite 2
    unloadspriteresource
    waitstate
    end

.close
