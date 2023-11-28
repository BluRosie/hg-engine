.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_511", 0

/*
// Shift Gear
Just shakes the user a bit and plays Horn Drill SE.
No gear particles :(
*/

a010_511:
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 1, 0, 0, 0

    callfunction 36, 5, 4, 0, 1, 20, 264, "NaN", "NaN", "NaN", "NaN", "NaN"

    waitse 1850, 117, 3

    end

.close
