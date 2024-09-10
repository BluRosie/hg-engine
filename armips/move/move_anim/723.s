.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_723", 0
//Mind Blown
a010_723:
    loadparticlefromspa 0, 175
    waitparticle
    cmd43
    cmd0C 4, 1
    cmd0C 0, 0
    cmd0C 1, 32
    changebg 43, 0x20001
    waitforchangebg
    playsepan 2113, -117
    addparticle 0, 0, 3
    addparticle 0, 2, 3
    addparticle 0, 3, 3
    addparticle 0, 1, 3
    wait 40
    callfunction 33, 5, 0, 0, 0, 15, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2, 0, 1, 32767, 15, 20, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 4, 0, 1, 32767, 15, 20, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 32767, 15, 20, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 16, 0, 1, 32767, 15, 20, "NaN", "NaN", "NaN", "NaN"
    wait 1
    playsepan 1874, 0
    wait 14
    repeatse 2096, -117, 3, 4
    callfunction 36, 5, 4, 0, 1, 2, 320, "NaN", "NaN", "NaN", "NaN", "NaN"
    shaketargetmon 8, 4
    //wait 15
    callfunction 33, 5, 0, 0, 15, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 8, 8, 0, 8, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate


    unloadparticle 0
    waitstate
    cmd43
    cmd0C 4, 1
    cmd0C 0, 0
    cmd0C 1, 32
    resetbg 43, 0x40001
    waitforchangebg
    end


.close
