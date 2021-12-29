# hg-mega-evolution
## About
 Mega Evolution in English Pokemon Heart Gold

## Features:
* Mega Evolutions

* All new functional Mega Stones added after the already-existing items


## Installation Instructions:
1. Download and install Devkitpro. 

2. Download (or clone) the master folder from this github page.
(Click 'Clone or Download', then 'Download Zip')

3. Install WSL using  [**Lunos' tutorial**][LUNOS].  Follow steps 6 and 6.5 to make sure Devkitpro is installed correctly.

4. Install Python 3.7 through WSL using `sudo apt-get install python3.7`.

5. Get your ROM, rename it to **rom.nds** and place it the main (master) folder.

6. Shift + right click in the main folder, click on **Open Linux shell here** from the **main folder**. 

7. In the window, type `make`.

8. A new nds file will appear named as **test.nds** and an **offsets.ini** file after everything has built.

# Credits
* [CREDITS.md](CREDITS.md).
* [**Bubble (Base Mega Code)**][TEMPLATE]
* [**Skeli (FR template)**][CFRU]
* [**PokeDiamond decompilation projects (nitrogfx, msgenc)**][diamond]
* [**Mikelan98, Nomura (ARM9 Expansion Subroutine )**][ARM9]
* Rafael Vuijk (ndstool)

[MONEXPAND]: https://github.com/BluRosie/hgss-monexpansion
[CFRU]: https://github.com/Skeli789/Complete-Fire-Red-Upgrade
[G5T]: https://github.com/CodenamePU/Gen5Tools
[ARM9]: https://pokehacking.com/tutorials/ramexpansion/
[diamond]:https://github.com/pret/pokediamond
[TEMPLATE]: https://github.com/Bubble791/Pokemon-Heart-Gold-Engine
[LUNOS]: https://www.pokecommunity.com/showthread.php?t=432351
