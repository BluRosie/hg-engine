.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_543", 0

// Psystrike
// Psycho Boost + Psychic bg + Psyshock battering

a010_543:
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
    loadparticle 0, 372
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3

    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"

    addparticle 0, 4, 3
    addparticle 0, 3, 3
    addparticle 0, 5, 3
    addparticle 0, 0, 3
    playsepan 2077, -117
    wait 60
    callfunction 34, 6, 2, 0, 1, 32767, 10, 50, "NaN", "NaN", "NaN", "NaN"
    wait 60
    // playsepan 2080, -117


    changebg 52, 0x800001
    waitforchangebg
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"

    callfunction 34, 6, 8, 0, 1, 32767, 10, 10, "NaN", "NaN", "NaN", "NaN"
    waitse 1903, 117, 10
    waitse 1900, 117, 15
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    callfunction 36, 5, 4, 0, 1, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN"

    wait 28
    repeatse 2119, 0, 2, 9
    callfunction 36, 5, 3, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 72

    waitparticle
    unloadparticle 0
    cmd43
    cmd0C 4, 1
    resetbg 52, 0x1000001
    waitstate
    waitforchangebg
    end

.close
