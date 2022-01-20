# hg-engine
## About
 A huge upgrade to the battle engine in HeartGold

##Creators
* [BluRose](https://github.com/BluRosie)
* [turtleisaac](https://github.com/turtleisaac)
* [dog-broad](https://github.com/dog-broad)

## Features:
* Mega Evolutions
* Dex Expansion (currently has up to gen 5)
* Ability expansion
* Updated effects for gen 4 and prior abilities
* All new functional Mega Stones added after the already-existing items

## Coming Soon:
* Move expansion
* Updated effects for gen 4 and prior moves


## Setup Instructions (Debian Linux)
1. Download and install Devkitpro using the downloads and instructions [**here**][DEVKITPRO].
2. In a Terminal window, run the following commands:
   * ```sudo apt-get install libpng-dev build-essential cmake python3-pip git```
   * ```pip3 install ndspy```
3. Continue to [Further Setup Instructions](#All-Platforms-Setup-Instructions-(Continued-from-Individual-Sections))

## Setup Instructions (macOS)
1. Download and install Devkitpro using the Mac download (.pkg) and instructions [**here**][DEVKITPRO].
2. If you don't have it already, install `brew` by running the following in Terminal: ```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"```
3. In a Terminal window, run the following commands:
   * ```xcode-select --install```
   * ```brew install python3```
   * ```brew install libpng```
4. Download and install Mono
5. Continue to [Further Setup Instructions](#All-Platforms-Setup-Instructions-(Continued-from-Individual-Sections))


## Setup Instructions (Windows)
1. Open the Windows Command Prompt as Administrator (look up "Command Prompt" on your Start Menu, Right Click -> Run as Administrator). Once you have done that, execute the following command: ```dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all```
    * Once this process finishes, you will have to restart your PC by entering "Y"
2. Go to the Microsoft Store and search "Ubuntu 18.04 LTS". Go to its page in the store and click the blue "Get" button.
   * Once Ubuntu finishes installing, launch it from its page in the Microsoft Store so it can finish setting itself up.
   * Once Ubuntu finishes setting itself up, it will ask you to enter a username (in lowercase letters only) and password. After doing so, you can close Ubuntu.
3. Open the "Run" window by pressing the `Windows key` and `R` at the same time, then type in "wsl" and press Enter. This is how you should open WSL from now on.
4. In WSL, type in ```sudo apt update```, and after it finishes processing, type in ```sudo apt upgrade```. This will take a **QUITE** a while, so find something else to do in the meantime. These two commands together will update all of the packages that came pre-installed with Ubuntu.
   * At some point during the process, you'll be asked to confirm whether you want WSL to restart automatically during package updates. We'll select "Yes" and press Enter. The process will then proceed.
5. In WSL, run the following commands:
   * ```sudo apt-get install build-essential git libpng-dev gdebi-core python3 python3-pip cmake```
      * You will be asked to confirm the installation, so press "y" followed by Enter to do so.
   * ```pip3 install ndspy```
6. Download Devkitpro for Linux (one of the .deb files), specifically the amd64 file, [**here**][DEVKITPRO]. The file should be kept in your Downloads folder.
7. In WSL, run the following commands and input your password if asked:
    * ```cd Downloads```
    * ```sudo gdebi devkitpro-pacman.amd64.deb```
8. Once the last process has finished, continue to [Further Setup Instructions](#All-Platforms-Setup-Instructions-(Continued-from-Individual-Sections))


## Further Setup Instructions (All Platforms) (Continued from Individual Sections)
1. In Terminal/WSL, run ```dkp-pacman -S gba-dev```, then press Enter/Return when prompted to choose what to download from the `gba-dev` library.
2. Close and reopen Terminal/WSL so the changes made by `dkp-pacman` will be loaded. Then, run the following commands in this exact order:
    * ```export DEVKITPRO=/opt/devkitpro```
    * ```echo "export DEVKITPRO=$DEVKITPRO" >> ~/.bashrc```
    * ```export DEVKITARM=$DEVKITPRO/devkitARM```
    * ```echo "export DEVKITARM=$DEVKITARM" >> ~/.bashrc```
3. In Terminal/WSL, run the following commands:
   * ```cd Documents```
   * ```git clone https://github.com/BluRosie/hg-engine.git```
4. Continue to [Build Instructions](#-Build-Instructions-(All-Platforms)-(Continued-from-Further-Setup-Instructions))

## Build Instructions (All Platforms) (Continued from Further Setup Instructions)

1. Get your ROM, rename it to **rom.nds** and place it in `Documents/hg-engine`.
2. In Terminal/WSL, run ```cd hg-engine```
3. In Terminal/WSL, run ```make build_tools```. This will compile most of the tools that hg-engine needs to build.
4. In Terminal/WSL, run ```make build_nitrogfx```. This will compile nitrogfx, one of the tools needed for hg-engine to build.
   * If you are a macOS user who is on arm64 (an Apple M1 Processor), you may have issues running this command due to `libpng` linker issues caused by an expected architecture mismatch. You can get around this issue by going to `Applications/Utilities/`, right clicking on Terminal, Clicking "Get Info", and clicking the "Open using Rosetta" checkbox so it becomes blue. Close Terminal if you had it open, then run the following:
     * ```cd Documents/hg-engine```
     * ```make build_nitrogfx```
   * Make sure to undo your changes to Terminal after you are done so it will run as a native arm64 application again (uncheck the checkbox from before).
5. In Terminal/WSL, type `make`.
6. After the process completes, a new file will appear in the `hg-engine` folder named **test.nds**.
   * It is important to note that this alone will not add new pokemon to the wild, trainers, etc...; it simply makes them available in your game. It is up to you to place them.

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
[DEVKITPRO]: https://github.com/devkitPro/pacman/releases
