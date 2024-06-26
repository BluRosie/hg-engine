.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_158", 0

a010_158:
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
    loadparticle 0, 179
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd43
    cmd0C 7, 1
    changebg 58, 0x800001
    waitforchangebg
    wait 10
    addparticle 0, 2, 4
    addparticle 0, 3, 4
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    callfunction 36, 5, 2, 2, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1934, 117
    waitse 1930, 117, 5
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 7, 1
    resetbg 6, 0x1000001
    waitforchangebg
    end

.close
