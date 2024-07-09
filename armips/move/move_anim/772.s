.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_772", 0
// Apple Acid
a010_772:
    loadparticlefromspa 0, 430 //energy ball
    waitparticle
    loadparticlefromspa 1, 273 //spit up
    waitparticle


    playsepan 1927, -117 
    callfunction 53, 5, 70, 120, 8, 5, 15, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 0, 3 //gunk shot


    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"


    addparticle2 0, 1, 0, 3
    callfunction 66, 6, 1, 0, 0, 0, 10, 64, "NaN", "NaN", "NaN", "NaN" //this should chuck the energy ball like egg bomb
    wait 8
    addparticle 0, 2, 4 //acid spray on opponent
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN" //shake and shade target
    callfunction 34, 6, 8, 0, 1, 11252, 14, 0, "NaN", "NaN", "NaN", "NaN"

    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"//green bg ends


    unloadparticle 0
    waitstate
    end
    

.close
