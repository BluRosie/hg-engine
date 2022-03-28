.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_433", 0

a010_433:
    cmd0C 0, 0
    cmd0C 1, 0
    cmd0C 6, 0
    cmd0C 7, 0
    cmd0C 5, 1
    changebg 57, 0x800000
    waitse 1838, 0, 2
    waitforchangebg
    wait 60
    cmd0C 0, 0
    cmd0C 1, 0
    cmd0C 6, 0
    cmd0C 7, 0
    cmd0C 5, 2
    resetbg 57, 0x1000000
    waitforchangebg
    end

.close
