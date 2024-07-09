.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_460", 0

a010_460:
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
    loadparticle 0, 478
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepan 2101, -117
    addparticle 0, 5, 3
    addparticle 0, 3, 3
    addparticle 0, 4, 3
    addparticle 0, 0, 3
    wait 50
    cmd43
    cmd0C 7, 1
    changebg 41, 0x1
    wait 10
    callfunction 68, 5, 0, 3, 0, 10, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1374, 117
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    callfunction 36, 5, 2, 0, 1, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 32767, 10, 0, "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 7, 1
    resetbg 41, 0x1
    waitforchangebg
    end

.close
