# hg-engine
## About
 A huge upgrade to the battle engine in HeartGold

## Creators
* [BluRose](https://github.com/BluRosie)
* [turtleisaac](https://github.com/turtleisaac)
* [dog-broad](https://github.com/dog-broad)
* [DavveDP](https://github.com/DavveDP)
* [Brioche](https://github.com/Brioooche)

## Table of Contents
- [Features](#features)
- [Setup Instructions (Linux)](#setup-instructions-linux)
- [Setup Instructions (MacOS)](#setup-instructions-macos)
- [Setup Instructions (Windows on WSL)](#setup-instructions-windows-on-wsl)
- [Setup Instructions (Windows on WSL)](#setup-instructions-windows-on-msys2)
- [Further Setup Instructions](#further-setup-instructions-all-platforms-continued-from-individual-sections)
- [Build Instructions](#build-instructions-all-platforms-continued-from-further-setup-instructions)
- [Credits](#credits)


## Features:
* Mega Evolutions + Primal Reversions
* Dex Expansion (currently has up to gen 5 completely implemented)
* Ability expansion + Hidden abilities
* Updated effects for gen 4 and prior abilities
* All new functional Mega Stones added after the already-existing items

*A more comprehensive list of features + a roadmap can be found by visiting the [hg-engine wiki](https://github.com/BluRosie/hg-engine/wiki).  Please read this README and the Wiki thoroughly before asking questions.*

## Setup Instructions (Linux)
1. In a Terminal window, run the following commands:
    * ```sudo apt-get install libpng-dev build-essential cmake python3-pip git automake gcc-arm-none-eabi```
    * ```pip3 install ndspy```
2. On distros where `mono` is not preinstalled (Ubuntu-based ones come to mind), install it with `sudo apt-get install mono-devel`
3. Continue to [Further Setup Instructions](#further-setup-instructions-all-platforms-continued-from-individual-sections)

## Setup Instructions (macOS)
1. Download and install Devkitpro using the Mac download (.pkg) and instructions [**here**][DEVKITPRO].
2. If you don't have it already, install `brew` by running the following in Terminal: ```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"```
3. In a Terminal window, run the following commands:
    * ```xcode-select --install```
    * ```brew install python3```
    * ```brew install libpng```
    * ```brew install automake```
    * ```pip3 install ndspy```
4. Download and install Mono using the download and instructions [**here**](https://www.mono-project.com/docs/getting-started/install/mac/).
5. Continue to [Further Setup Instructions](#further-setup-instructions-all-platforms-continued-from-individual-sections)


## Setup Instructions (Windows on WSL)
1. Open the Windows Command Prompt as Administrator (look up "Command Prompt" on your Start Menu, Right Click -> Run as Administrator). Once you have done that, execute the following command: ```dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all```
    * Once this process finishes, you will have to restart your PC by entering "Y"
    * If Windows is not cooperating and has issues logging in when your PC reboots, do not worry! You likely just need to enable virtualization in your BIOS. For instructions on that, look [**here**](https://bce.berkeley.edu/enabling-virtualization-in-your-pc-bios.html).
2. Go to the Microsoft Store and search "Ubuntu". Go to any one of the version's pages in the store and click the blue "Get" button.  It shouldn't matter which you choose.
    * Once Ubuntu finishes installing, launch it from its page in the Microsoft Store so it can finish setting itself up.
    * Once Ubuntu finishes setting itself up, it will ask you to enter a username (in lowercase letters only) and password. After doing so, you can close Ubuntu.
3. Open the "Run" window by pressing the `Windows key` and `R` at the same time, then type in `wsl` and press Enter. This is how you should open WSL from now on.
    *  Note that you can also delete the folder path at the top of the File Explorer and just type in `wsl` to open WSL at the file explorer.
4. In WSL, type in ```sudo apt update```, and after it finishes processing, type in ```sudo apt upgrade```. This will take a **QUITE** a while, so find something else to do in the meantime. These two commands together will update all of the packages that came pre-installed with Ubuntu.
    * At some point during the process, you'll be asked to confirm whether you want WSL to restart automatically during package updates. We'll select "Yes" and press Enter. The process will then proceed.
5. In WSL, run the following commands:
    * ```sudo apt-get install build-essential git libpng-dev gdebi-core python3 python3-pip cmake automake mono-devel gcc-arm-none-eabi```
        * You will be asked to confirm the installation, so press "y" followed by Enter to do so.
    * ```pip3 install ndspy```
6. Once the last process has finished, continue to [Further Setup Instructions](#further-setup-instructions-all-platforms-continued-from-individual-sections)


## Setup Instructions (Windows on MSYS2)
1. Install MSYS2 from [the website](https://www.msys2.org/#installation).
2. Open up the base MSYS2 with the light purple background.
3. Execute the commands:
    * ```pacman -Syu```
    * ```pacman -S gcc base-devel cmake python git automake mingw-w64-x86_64-mono mingw-w64-x86_64-arm-none-eabi-gcc p7zip zlib-devel```
    * ```export PATH=$PATH:/mingw64/bin```
    * ```echo export PATH='$'PATH:/mingw64/bin >> ~/.bashrc```
    * ```python3 -m ensurepip --upgrade```
    * ```python3 -m pip install ndspy```
4. Download [libpng](https://sourceforge.net/projects/libpng/files/latest/download) and install it.  Decompress it to a folder, and then open MSYS2 in that source folder and run:
    * ```./configure --prefix=/usr```
    * ```make check```
    * ```make install```
5. Once that process has finished, continue to [Further Setup Instructions](#further-setup-instructions-all-platforms-continued-from-individual-sections)


## Further Setup Instructions (All Platforms) (Continued from Individual Sections)
1. In Terminal/WSL, run the following commands:
    * ```cd Documents```
    * ```git clone https://github.com/BluRosie/hg-engine.git```
2. Continue to [Build Instructions](#build-instructions-all-platforms-continued-from-further-setup-instructions)

## Build Instructions (All Platforms) (Continued from Further Setup Instructions)

1. Get your ROM, rename it to **rom.nds** and place it in `Documents/hg-engine`.
<<<<<<< HEAD
2. In Terminal/WSL, run ```cd hg-engine```
3. In Terminal/WSL, run ```sudo make build_tools --jobs```. This will compile most of the tools that hg-engine needs to build.
4. In Terminal/WSL, run ```sudo make build_nitrogfx --jobs```. This will compile nitrogfx, one of the tools needed for hg-engine to build.
    * If you are a macOS user who is on arm64 (an Apple M1 Processor), you may have issues running this command due to `libpng` linker issues caused by an expected architecture mismatch. You can get around this issue by going to `Applications/Utilities/`, right clicking on Terminal, Clicking "Get Info", and clicking the "Open using Rosetta" checkbox so it becomes blue. Close Terminal if you had it open, then open it again and run the following:
        * ```cd Documents/hg-engine```
        * ```sudo make build_nitrogfx --jobs```
    * Make sure to undo your changes to Terminal after you are done so it will run as a native arm64 application again (uncheck the checkbox from before).
5. In Terminal/WSL, type `sudo make --jobs`.
6. After the process completes, a new file will appear in the `hg-engine` folder named **test.nds**.
=======
2. In Terminal/WSL, type `make --jobs`.  It will start with building all the tools necessary, then move to the code, then the rest of the files in the folders.
    * If you are a macOS user who is on arm64 (an Apple M1 Processor), you may have issues running this command due to `libpng` linker issues caused by an expected architecture mismatch. You can get around this issue by going to `Applications/Utilities/`, right clicking on Terminal, Clicking "Get Info", and clicking the "Open using Rosetta" checkbox so it becomes blue. Close Terminal if you had it open, then open it again and run the following:
        * ```cd Documents/hg-engine```
        * ```make tools/nitrogfx --jobs```
        * ```make tools/ENCODE_IMG --jobs```
    * Make sure to undo your changes to Terminal after you are done so it will run as a native arm64 application again (uncheck the checkbox from before).
3. After the process completes, a new file will appear in the `hg-engine` folder named **test.nds**.
   * It is important to note that this alone will not add new pokemon to the wild, trainers, etc...; it simply makes them available in your game. It is up to you to place them.
   * You can edit various game data such as trainers, dex entries, pokemon stats, and more in the files in `armips/data`

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
