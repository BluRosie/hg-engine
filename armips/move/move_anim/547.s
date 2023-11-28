.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_547", 0

/*
// Gear Grind
Very simple shake Pokemon + shake floor animation + Horn Drill sound
No gear particles in Gen 4 :(
*/

a010_547:
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 1, 0, 0, 0

    callfunction 36, 5, 4, 0, 1, 20, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 0, 3, 0, 20, 0, "NaN", "NaN", "NaN", "NaN", "NaN"

    waitse 1850, 117, 3

    end

.close
