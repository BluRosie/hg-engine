.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_757", 0

//Bolt Beak

a010_757:

    loadparticlefromspa 0, 228
    waitparticle
    loadparticlefromspa 1, 63
    waitparticle


    addparticle 0, 2, 3
    addparticle 0, 3, 3
    playsepan 2031, -117
    wait 20 //spark particles

    callfunction 57, 4, 2, 14, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate //move user forward 

    jumpifside 0, _01CC, _024C
    end



_01CC:
    addparticle 1, 6, 4 //horndrill effects
    addparticle 0, 3, 4
    addparticle 0, 1, 4
    shaketargetmon 6, 4
    playsepan 1926, 117
    wait 2
    playsepan 1926, 117
    wait 2
    playsepan 1926, 117
    wait 2
    playsepan 1926, 117
    wait 2
    callfunction 57, 4, 2, -14, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1874, 117
    waitparticle

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end

_024C:
    addparticle 1, 7, 4 //horndrill effects
    addparticle 0, 3, 4
    addparticle 0, 1, 4
    shaketargetmon 6, 4
    playsepan 1926, 117
    wait 2
    playsepan 1926, 117
    wait 2
    playsepan 1926, 117
    wait 2
    playsepan 1926, 117
    wait 2
    callfunction 57, 4, 2, -14, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1874, 117
    waitparticle

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
