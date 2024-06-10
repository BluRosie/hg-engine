.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_894", 0
//Bitter Blade
a010_894:
    loadparticlefromspa 0, 527 //secret sword
    waitparticle

    callfunction 33, 5, 0, 1, 0, 12, 10272, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate   
    playsepan 1910, 117
    addparticle 0, 2, 4
    addparticle 0, 1, 4
    addparticle 0, 0, 4 //slash hit 
    waitparticle
    callfunction 33, 5, 0, 1, 12, 0, 10272, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    unloadparticle 0
    waitstate
    end
    

.close
