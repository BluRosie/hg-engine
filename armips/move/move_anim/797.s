.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_797", 0

// Meteor Assault
// Just DE animation

a010_797:
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
    loadparticle 0, 69
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 1528, -117
    waitse 1846, 117, 10
    waitstate
    callfunction 60, 3, 2, 1, 10, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    cmd43
    cmd0C 7, 1
    changebg 6, 0x1
    callfunction 60, 3, 2, 1, 10, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 57, 4, 2, 14, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    addparticle 0, 3, 4
    addparticle 0, 4, 4
    playsepan 1847, 117
    wait 2
    callfunction 57, 4, 2, -18, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 2, -14, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 0, 5, 1, 3, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 2
    callfunction 57, 4, 4, 18, -4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 7, 1
    resetbg 6, 0x1
    waitforchangebg
    end

.close
