.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_498", 0

// after you move animation

a010_498:
    callfunction 57, 4, 4, 0, 5, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // slide attacking mon x, y
    wait 5
    callfunction 57, 4, 4, 0, -5, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // slide attacking mon x, y
    wait 20
    callfunction 57, 4, 4, 0, 5, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // slide attacking mon x, y
    wait 5
    callfunction 57, 4, 4, 0, -5, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN" // slide attacking mon x, y
    waitstate
    end
    

.close
