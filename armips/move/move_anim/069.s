.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_069", 0

a010_069:
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
    loadparticle 0, 100
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    cmd0C 1, 26
    changebg 51, 0x20001
    waitforchangebg
    playsepan 2064, 0
    wait 5
    changebgparam 1, 0x16
    wait 5
    changebgparam 1, 0xB
    wait 5
    changebgparam 1, 0x7
    wait 5
    changebgparam 1, 0x4
    wait 5
    changebgparam 1, 0x0
    wait 5
    changebgparam 1, 0xFFFFFFFA
    wait 5
    changebgparam 1, 0xFFFFFFF3
    wait 5
    changebgparam 1, 0xFFFFFFEB
    wait 5
    changebgparam 1, 0xFFFFFFDE
    playsepan 1954, 117
    addparticle 0, 0, 4
    addparticle 0, 2, 4
    addparticle 0, 1, 4
    callfunction 36, 5, 2, 0, 1, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 0, 5, 1, 3, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 10
    cmd0C 1, -34
    resetbg 51, 0x40001
    playsepan 1972, 117
    waitforchangebg
    waitparticle
    unloadparticle 0
    end

.close
