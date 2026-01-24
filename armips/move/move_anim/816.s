.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_816", 0

//triple axel (ice punch + tackle)

a010_816:
    loadparticlefromspa 0, 39
    waitparticle
    loadparticlefromspa 1, 1
    waitparticle

    callfunction 33, 5, 0, 1, 0, 8, 32631, "NaN", "NaN", "NaN", "NaN", "NaN"
    //blue tint
    addparticle 0, 1, 4
    
    addparticle 1, 1, 4
    addparticle 0, 0, 4
    //playsepan 2116, 117
    waitse 2055, 117, 5
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 2, 32631, 14, 0, "NaN", "NaN", "NaN", "NaN"
    wait 12

    addparticle 1, 1, 4
    addparticle 0, 0, 4
    //playsepan 2116, 117
    waitse 2055, 117, 5
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    //callfunction 34, 6, 8, 0, 2, 32631, 14, 0, "NaN", "NaN", "NaN", "NaN"
    wait 12

    addparticle 1, 1, 4
    addparticle 0, 0, 4
    //playsepan 2116, 117
    waitse 2055, 117, 5
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 33, 5, 0, 1, 8, 0, 32631, "NaN", "NaN", "NaN", "NaN", "NaN" //undo blue tint
    wait 10

    unloadparticle 0
    waitstate
    unloadparticle 1
    waitstate
    end
    

.close
