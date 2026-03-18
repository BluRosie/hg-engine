.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_025", 0

//Mega Kick

a010_025:
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
    loadparticle 0, 56
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd43
    cmd0C 7, 1
    changebg 0, 0x800001
    wait 5
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    addparticle 0, 0, 4
    addparticle 0, 3, 4
    waitse 1847, 117, 1
    callfunction 36, 5, 4, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 68, 5, 5, 0, 1, 3, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 7, 1
    resetbg 0, 0x1000001
    waitforchangebg
    end

.close
