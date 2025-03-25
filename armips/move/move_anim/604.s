.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_604", 0
// Geomancy
a010_604:
    loadparticlefromspa 0, 340 //cosmic power
    waitparticle
/*
    checkturn _firstTurn, _secondTurn
    end

_firstTurn:
    callfunction 33, 5, 0, 1, 0, 12, 10272, "NaN", "NaN", "NaN", "NaN", "NaN" //draco meteor bg
    playsepan 2063, 0
    wait 25
    shadeattackingmon 31, 31, 31
    waitparticle
    wait 20
    callfunction 33, 5, 0, 1, 12, 0, 10272, "NaN", "NaN", "NaN", "NaN", "NaN"
    unloadparticle 0
    waitstate
    end
*/

_secondTurn:
    callfunction 33, 5, 0, 1, 0, 12, 10272, "NaN", "NaN", "NaN", "NaN", "NaN" //draco meteor bg
    addparticle 0, 1, 3
    addparticle 0, 0 ,3
    playsepan 2063, 0

    wait 25
    shadeattackingmon 31, 31, 31
    addparticle 0, 2, 3
    waitparticle
    callfunction 33, 5, 0, 1, 12, 0, 10272, "NaN", "NaN", "NaN", "NaN", "NaN"
    unloadparticle 0
    waitstate
    end


.close
