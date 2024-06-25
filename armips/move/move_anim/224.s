.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_224", 0
//Megahorn
a010_224:
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
    loadparticle 0, 242
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 47, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1965, -117
    wait 10
    cmd43
    cmd0C 7, 1
    changebg 2, 0x800001
    wait 5
    cmd55 12
    addparticle 0, 3, 17
    cmd37 6, 0, 2, 1, 1, 0, 0, "NaN", "NaN"
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 1, 1, 0, 0, "NaN", "NaN"
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    playsepan 1909, 117
    callfunction 48, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 5
    callfunction 68, 5, 5, 0, 1, 6, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    waitstate
    cmd43
    cmd0C 7, 1
    resetbg 2, 0x1000001
    waitforchangebg
    end

.close
