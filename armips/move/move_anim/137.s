.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_137", 0

a010_137:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 6
    loadpalette 0, 6, 1
    loadcell 0, 6
    loadcellanm 0, 6
    addsomething 0, 7, 6, 6, 6, 6, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 8
    playsepan 1933, 0
    waitstate
    freeresources 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
