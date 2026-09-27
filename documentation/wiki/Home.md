hg-engine is an engine overhaul for English Pokémon HeartGold with a focus on bringing battles up to par with recent mainline Pokémon games and their mechanics.  

## Table of Contents

- [Vision/Goals](#visiongoals)
- [Current Status](#current-status)
- [Wiki Contents](#wiki-contents)
- [FAQ](#faq)

### Vision/Goals
The primary focus of this is a sort of step-by-step process:

1) Make sure everything (moves, abilities, items, Pokémon, mechanics) is implemented in *some* capacity
2) Make sure everything is implemented *accurately* using in-game tests, Smogon, and the [rh-hideout Emerald battle expansion](https://github.com/rh-hideout/pokeemerald-expansion)
3) Revamp the battle AI to properly use new moves and make a much more difficult trainer battle experience

There is no timeline for this.  I have been working with a small team on this since the beginning of 2022, largely spearheading it myself.  This is a massive undertaking that is only done in our free time in addition to other projects and real life.  We have jobs, friends, family, everything.  There is no expectation that anything be done on any given timeline, and this has been a driving philosophy behind this project so far.  This is to prevent burnout on the project and eventual satisfaction with the work being done.

### Current Status
A rough list of what all comes in this repository and the status:
- All Pokémon through Gen 9 Teal Mask DLC have data defined.  All of the data is built from files in this repository.  For editing, see [[Editing Pokémon Data|Editing Pokémon Data]].  We are working on getting sprites done for all of the Pokémon in the style of HeartGold.  Reach out to me if you would like to help!
- A total of 30 PC Boxes*
- [Ability Expansion](https://github.com/users/BluRosie/projects/1)
- Move Expansion
- Item Expansion (see [[Item System Documentation|Item System Documentation]])
- Mega Evolution and Primal Reversion*
- Completely customizable trainers, including specifying IV's, EV's, shininess, and even specifying specific stat values (see [[Trainer Pokémon Structure Documentation|Trainer Pokémon Structure Documentation]])
- Fairy type*
- Hidden Abilities* (detailed in [[Hidden Ability Documentation|Hidden Ability Documentation]])
- Updated Effects for Existing [Moves](https://github.com/users/BluRosie/projects/3) and [Abilities](https://github.com/users/BluRosie/projects/2)
- Level-influence experience system* (as in gens 5, 7, and 8, detailed in [[Experience Overhaul Documentation|Experience Overhaul Documentation]])
- Brand new forms (current support detailed in [[Form System Documentation|Form System Documentation]])
- Wild and Gift Pokémon can have their form specified (see [[Wild Pokémon Table Documentation|Wild Pokémon Table Documentation]])
- 60 FPS battles*
- Always set battles*
- Transparent textboxes*
- [Mikelan's BDHCam routine](https://github.com/BluRosie/hg-engine/blob/main/pokehacking.com/r/20110901)*
- Completely new evolution methods up to generation 8 (see [[New Evolution Methods Documentation|New Evolution Methods Documentation]])
- Wild Double Battles*
- Capture Experience*
- Critical Captures*
- EV/IV Viewer in the Summary Screen*
- Support for Level Caps*

<sup><sub><b>*</b> - configurable at compile time, can be completely disabled, see [CONFIG.md](https://github.com/BluRosie/hg-engine/blob/main/CONFIG.md)</sub></sup>

### Wiki Contents

- Tutorials/Documentation
  - [[Editing Pokémon Data|Editing Pokémon Data]]
  - [[Move Scripting Systems Documentation|Move Scripting Systems Documentation]]
  - [[Trainer Pokémon Structure Documentation|Trainer Pokémon Structure Documentation]]
  - [[Wild Pokémon Table Documentation|Wild Pokémon Table Documentation]]
  - [[New Evolution Methods Documentation|New Evolution Methods Documentation]]
  - [[Hidden Ability System|Hidden Ability Documentation]]
  - [[Dex Flag Expansion|Dex Flag Expansion Documentation]]
  - [[Experience Overhaul|Experience Overhaul Documentation]]
  - [[Form System|Form System Documentation]]
  - [[Item System Documentation|Item System Documentation]]
  - [[Move Data Structure|Move Data Structure Documentation]]
  - [[Overworld System Documentation|Overworld System Documentation]]
  - [[Adding New Trainer Classes|Adding New Trainer Classes]]


### FAQ
<details>
<summary>How do I use this?</summary>
<br>

Read the [README from the repository](https://github.com/BluRosie/hg-engine/blob/main/README.md).  This goes through how to install it from a fresh install of Windows, Debian Linux, and MacOS.  If you are capable of building the [CFRU](https://github.com/Skeli789/Complete-Fire-Red-Upgrade), you are capable of building this.
</details>

<details>
<summary>I encountered a glitch!  How can it be fixed?</summary>
<br>

Please create an issue on the [Github Issues page](https://github.com/BluRosie/hg-engine/issues/).  This should detail reproduction steps and, if you're the best bug reporter ever, include a save file so that we can easily reproduce it.
</details>

<details>
<summary>What is all configurable in the repository?</summary>
<br>

See [CONFIG.md](https://github.com/BluRosie/hg-engine/blob/main/CONFIG.md).
</details>

<details>
<summary>What can I use this for?</summary>
<br>

You are free to use this for your own hacks as you please with slight restriction.

The only restriction that I have is similar to the CFRU's only restriction:

ROM Hacking is a hobby.  Without my express permission, please do not use this repository or the code within it as part of a project that results in any sort of financial gain.

That is to say, if you want to have Ko-Fi donations for your work, then feel free to do so.  Just don't put a hack in that uses hg-engine as advertisement for your Ko-Fi.  I have personally poured thousands of dollars into sprite commissions for this project, and I would strongly prefer that every appearance of the resource remains free without directly bolstering anyone's financial gain.

This includes optional donations alongside the hack, things locked behind paywalls, whatever.  There is a drastic increase lately in streamers essentially paying modding figures to make mods for content and it has debilitated XY, Breath of the Wild, BDSP, and Super Mario Odyssey to be limited to a small team of workers that would rather be exclusive with their findings to ensure that they have a continuous stream of revenue from streamers looking to make content.
</details>

<details>
<summary>My TM learnsets are still in armips/data/tmlearnset.s (and I am looking to update to beyond 28 September 2023)</summary>
<br>

Before updating via `git pull [hg-engine] main`, make sure that your repository can build in its existing format.

Then run `git pull [hg-engine] main`, where `[hg-engine]` is the remote name that you have given the main repository.

Finally, to update, make sure there are files in ``build/a002`` (normally `mondata_*`).  Run `python3 scripts/tm_learnset.py --dump armips/data/tmlearnset.txt`.  This will dump the TM data in the new format for insertion.  It automatically handles everything, including dumping the moves from the `include/constants/moves.h`/species from `include/constants/species.h` and correlating them with what is in the ROM.

From there, delete all your `tmdata` entries in `armips/data/mondata.s` and then the `armips/data/tmlearnset.s`.
</details>

<details>
<summary>Where can I get help for this?</summary>
<br>

First, check [[Troubleshooting|Troubleshooting]] and see if your problem is there and the directions there help you out.

From there, join the [Kingdom of DS Hacking Discord server](https://discord.gg/zAtqJDW2jC).  Read the rules there and make sure you're comfortable in the 11-minute anti-spam probationary period that every new join goes through in that server.  Once you get access, head over to `#hg-feature-expansions` and ask there.  *Please do not reask your question*.  It will be addressed if possible.
</details>

