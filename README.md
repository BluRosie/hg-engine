# hg-engine
## About
 A huge upgrade to the battle engine in HeartGold

### Disclaimer
 This repository and its assets are a [community endeavor](CREDITS.md).  By its nature, using it and subsequently profiting off of it is profiting on the backs of all of our work, all of which is intended to be used to further hobbies and for everyone to have fun.  You have my blessing to use code and assets from this repository as you please as long as there is *no money involved*, including optional donations through whichever platform to play your hack.  The creations that stem from this repository must be freely accessible and not hidden at all behind any paywall, including those that prompt the player to pay optionally (Ko-Fi's style comes to mind here).  The [Credits](CREDITS.md) should also be replicated in your hack's repository and/or the post to your hack--we all sit on the shoulders of giants here.

## Table of Contents
- [Features](#features)
- [Setup Instructions (Linux with apt)](#setup-instructions-linux-with-apt)
- [Setup Instructions (Linux with apk)](#setup-instructions-linux-with-apk)
- [Setup Instructions (Linux with dnf or yum)](#setup-instructions-linux-with-dnf-or-yum)
- [Setup Instructions (macOS)](#setup-instructions-macos)
- [Setup Instructions (Windows on WSL)](#setup-instructions-windows-on-wsl)
- [Setup Instructions (Windows on MSYS2)](#setup-instructions-windows-on-msys2)
- [Further Setup Instructions](#further-setup-instructions-all-platforms-continued-from-individual-sections)
- [Setup Instructions (Docker)](#setup-instructions-docker)
- [Build Instructions](#build-instructions-all-platforms-continued-from-further-setup-instructions)
- [Credits](#credits)


## Features:
* Dex Expansion (through Gen 6 almost entirely implemented)
* Ability Expansion up to 512 (through Gen 6 almost entirely implemented)
* Move Expansion with future generation moves
* Item Expansion with future generation items
* Mega Evolutions + Primal Reversions
* New Weathers
* Dynamic Speed
* Accurate Turn Sequence
* Accurate End-turn Resolution Order
* Much More Customizable Trainers
* Fairy Type
* Hidden Abilities
* Updated Effects for Existing [Moves](https://github.com/users/BluRosie/projects/3) and [Abilities](https://github.com/users/BluRosie/projects/2)
* 30 PC Boxes

*A more comprehensive list of features + a roadmap can be found by visiting the [hg-engine wiki](https://github.com/BluRosie/hg-engine/wiki).  Please read this README and the Wiki thoroughly before asking questions.*

If you are looking to contribute to hg-engine, please see the [CONTRIBUTING.md](CONTRIBUTING.md).

## Setup Instructions (Linux with apt)
1. In a Terminal window, run the following command:
    * ```sudo apt-get install libpng-dev build-essential cmake python3-pip python3-venv git automake autoconf gcc-arm-none-eabi pkg-config```
2. Continue to [Further Setup Instructions](#further-setup-instructions-all-platforms-continued-from-individual-sections)


## Setup Instructions (Linux with apk)
1. In a Terminal window, run the following command:
    * ```apk add libpng-dev build-base cmake python3 git automake autoconf```
    * Grab your Alpine Linux version using the command `grep PRETTY_NAME /etc/os-release`.  I get `PRETTY_NAME='Alpine Linux v3.14'`, so my version is `v3.14`.  Substitute that into the next command for `[version]`.
    * ```apk add --no-cache binutils-arm-none-eabi gcc-arm-none-eabi newlib-arm-none-eabi --repository http://dl-cdn.alpinelinux.org/alpine/[version]/community```
2. Continue to [Further Setup Instructions](#further-setup-instructions-all-platforms-continued-from-individual-sections)


## Setup Instructions (Linux with dnf or yum)
1. In a Terminal window, run the following command (replace `dnf` with `yum` if applicable):
    * ```sudo dnf install libpng-devel arm-none-eabi-gcc-cs arm-none-eabi-newlib.noarch cmake python3 git automake autoconf make```
2. Continue to [Further Setup Instructions](#further-setup-instructions-all-platforms-continued-from-individual-sections)


## Setup Instructions (Linux with pacman)
1. In a Terminal window, run the following command:
    * ```sudo pacman -S libpng cmake python-pip python git automake autoconf arm-none-eabi-gcc arm-none-eabi-newlib pkg-config base-devel```
2. Continue to [Further Setup Instructions](#further-setup-instructions-all-platforms-continued-from-individual-sections)


## Setup Instructions (macOS)
1. If you don't have it already, install `brew` by running the following in Terminal: ```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"```
2. In a Terminal window, run the following commands:
    * ```xcode-select --install```
    * ```brew install python3 libpng automake autoconf cmake zlib pkg-config zstd```
    * ```brew install --cask gcc-arm-embedded```
    * ```export PKG_CONFIG_PATH=$(brew --prefix zlib)/lib/pkgconfig```
3. Continue to [Further Setup Instructions](#further-setup-instructions-all-platforms-continued-from-individual-sections)


## Setup Instructions (Windows on WSL)
1. Open the Windows Command Prompt as Administrator (look up "Command Prompt" on your Start Menu, Right Click -> Run as Administrator). Once you have done that, execute the following command: ```dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all```
    * Once this process finishes, you will have to restart your PC by entering "Y"
    * If Windows is not cooperating and has issues logging in when your PC reboots, do not worry! You likely just need to enable virtualization in your BIOS. For instructions on that, look [**here**](https://support.microsoft.com/en-gb/windows/enable-virtualization-on-windows-c5578302-6e43-4b4b-a449-8ced115f58e1).
2. Go to the Microsoft Store and search "Ubuntu". Go to any one of the version's pages in the store and click the blue "Get" button.  It shouldn't matter which you choose.
    * Once Ubuntu finishes installing, launch it from its page in the Microsoft Store so it can finish setting itself up.
    * Once Ubuntu finishes setting itself up, it will ask you to enter a username (in lowercase letters only) and password. After doing so, you can close Ubuntu.
3. Open the "Run" window by pressing the `Windows key` and `R` at the same time, then type in `wsl` and press Enter. This is how you should open WSL from now on.
    *  Note that you can also delete the folder path at the top of the File Explorer and just type in `wsl` to open WSL at the file explorer.
4. In WSL, type in ```sudo apt update```, and after it finishes processing, type in ```sudo apt upgrade```. This will take quite a while, so find something else to do in the meantime. These two commands together will update all of the packages that came pre-installed with Ubuntu.
    * At some point during the process, you'll be asked to confirm whether you want WSL to restart automatically during package updates. We'll select "Yes" and press Enter. The process will then proceed.
5. In WSL, run the following commands:
    * ```sudo apt-get install build-essential git libpng-dev gdebi-core python3 python3-pip python3-venv cmake automake autoconf gcc-arm-none-eabi pkg-config```
        * You will be asked to confirm the installation, so press "y" followed by Enter to do so.
6. Once the last process has finished, continue to [Further Setup Instructions](#further-setup-instructions-all-platforms-continued-from-individual-sections)


## Setup Instructions (Windows on MSYS2)
1. Install MSYS2 from [the website](https://www.msys2.org/#installation).
2. Open up the base MSYS2 with the light purple background.
3. Execute the commands:
    * ```pacman -Syu```
    * ```pacman -S gcc base-devel cmake python git automake autoconf mingw-w64-x86_64-arm-none-eabi-gcc p7zip zlib-devel```
    * ```export PATH=$PATH:/mingw64/bin```
    * ```echo export PATH='$'PATH:/mingw64/bin >> ~/.bashrc```
    * ```python3 -m ensurepip --upgrade```
4. Download [libpng](https://sourceforge.net/projects/libpng/files/latest/download) and install it.  Decompress it to a folder, and then open MSYS2 in that source folder and run:
    * ```./configure --prefix=/usr```
    * ```make check```
    * ```make install```
5. Once that process has finished, continue to [Further Setup Instructions](#further-setup-instructions-all-platforms-continued-from-individual-sections)


## Further Setup Instructions (All Platforms) (Continued from Individual Sections)
1. In Terminal/WSL, run the following commands:
    * ```mkdir -p ~/git && cd ~/git```
    * ```git clone --recursive https://github.com/BluRosie/hg-engine.git```
2. Continue to [Build Instructions](#build-instructions-all-platforms-continued-from-further-setup-instructions)

## Setup Instructions (Docker)
If you are using Docker, there is no need for complicated setup or anything.  You just have to clone the git repository:
* ```mkdir -p ~/git && cd ~/git```
* ```git clone --recursive https://github.com/BluRosie/hg-engine.git```
* ```cd hg-engine```

Docker handles all of the setup for you with relative replicability across platforms.  This abstracts a bit of it away from the user and is slightly slower, but such is the price of simplicity.

To set up for the first time, all that needs to be run is:
```docker build . -t hg-engine```

To build, you can then run a simple shell script to build the `test.nds`:
```./docker-makerom.cmd```

This script is written in such a way that it works on every platform (including from `cmd` on Windows).

There is no need to continue to [Build Instructions](#build-instructions-all-platforms-continued-from-further-setup-instructions) for anything.  Docker handles it all for you.

You will still have to `make clean` and `make clean_code` manually when changing code or other things that won't build for some reason.  But this makes setup really convenient.

## Build Instructions (All Platforms) (Continued from Further Setup Instructions)

1. Get your ROM, rename it to **rom.nds** and place it in `~/git/hg-engine`.
    * \[Windows\] You can easily find where this is on MSYS2 or WSL by running the command `explorer.exe .` from the WSL terminal.  This will open the File Explorer to the folder where hg-engine is located.
        * For WSL this will likely be in the Linux drive that has newly been appended to the bottom of your files.  From there, it will likely be at `Linux\Ubuntu\home\[USERNAME]\git\hg-engine`.
        * For MSYS2 this will likely be in the `C:\msys64\home\[USERNAME]\git\hg-engine` directory.
2. In Terminal/WSL, type `make`.  It will start with building all the tools necessary, then move to the code, then the rest of the files in the folders.
    * `make` is initially very slow.  It can be sped up by specifying a certain amount of threads through the `-j#` flag, where # is a number.  The ideal amount of threads is typically the number that is given from `nproc`--so my `make` command, with `nproc` giving me `8`, is typically `make -j8`.
    * If you are a macOS user who is on arm64 (an Apple M Processor), you may have issues running this command due to `libpng` linker issues caused by an expected architecture mismatch. You can get around this issue by going to `Applications/Utilities/`, right clicking on Terminal, Clicking "Get Info", and clicking the "Open using Rosetta" checkbox so it becomes blue. Close Terminal if you had it open, then open it again and run the following:
        * ```cd ~/git/hg-engine```
        * ```make tools/nitrogfx```
        * ```make tools/ENCODE_IMG```
    * Make sure to undo your changes to Terminal after you are done so it will run as a native arm64 application again (uncheck the checkbox from before).
3. After the process completes, a new file will appear in the `hg-engine` folder named **test.nds**.
   * It is important to note that this alone will not add new Pokémon to the wild, trainers, etc...; it simply makes them available in your game. It is up to you to place them.
   * You can edit various game data such as trainers, dex entries, Pokémon stats, and more in the files in `armips/data`.

# Credits
* [CREDITS.md](CREDITS.md).
* [**Bubble (Base Mega Code)**][TEMPLATE]
* [**Skeli (FR template)**][CFRU]
* [**PokeDiamond decompilation projects (nitrogfx, msgenc)**][diamond]
* [**Mikelan98, Nomura (ARM9 Expansion Subroutine )**][ARM9]
* Rafael Vuijk (ndstool)
* Come swing by the [Kingdom of DS Hacking](https://discord.gg/zAtqJDW2jC) or [DS Modding Community](https://discord.gg/YBtdN3aXfv) Discord servers for any help with this!

[MONEXPAND]: https://github.com/BluRosie/hgss-monexpansion
[CFRU]: https://github.com/Skeli789/Complete-Fire-Red-Upgrade
[G5T]: https://github.com/CodenamePU/Gen5Tools
[ARM9]: https://pokehacking.com/tutorials/ramexpansion/
[diamond]:https://github.com/pret/pokediamond
[TEMPLATE]: https://github.com/Bubble791/Pokemon-Heart-Gold-Engine
[LUNOS]: https://www.pokecommunity.com/showthread.php?t=432351
