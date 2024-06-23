.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_588", 0

//Moonblast
a010_588:
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
    loadparticle 0, 254
    loadparticle 1, 369
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    changebg 56, 0x20001
    waitforchangebg
    playsepan 2042, 0
    addparticle 0, 0, 3
    wait 5
    addparticle 1, 1, 3
    wait 30
    addparticle 1, 1, 3
    waitparticle
    unloadparticle 0
    unloadparticle 1
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, 1
    cmd0C 4, 1
    resetbg 56, 0x40001
    waitforchangebg
    stopse 2042
    end
.close
