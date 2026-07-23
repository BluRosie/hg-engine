## Adding New Trainer Classes
HeartGold and SoulSilver divorce from the previous entries in the series and couple the trainer class directly with a sprite for said class.

In this sense, adding new characters to battle was an inconvenience.  You would have to add a brand new class or decide which one you would not want in your hack to add a new one.

hg-engine now has exposed everything needed to add brand new trainer classes so that you do not need to compromise with the vanilla engine and you can put in an additional 120 or so trainer classes, allowing for as many individual trainer sprites.

There is a very handy commit that handles all of this as a sort of tutorial to follow.  While not part of the main repository for obvious reasons, [it can be accessed here](https://github.com/BluRosie/hg-engine/commit/3e2263fc84627ca583334c7fa1f8dbf84112f60c).

Trainer sprites can be animated with a few frames, but that will not be covered here for the time being.

In alphabetical order, the relevant files are...
- `armips/data/trainers/trainers.s` - [link to file](https://github.com/BluRosie/hg-engine/blob/3e2263fc84627ca583334c7fa1f8dbf84112f60c/armips/data/trainers/trainers.s) - just trainer data, nothing needs to be done except you can add your trainer class constant here
- `armips/include/constants.s` - [link to file](https://github.com/BluRosie/hg-engine/blob/3e2263fc84627ca583334c7fa1f8dbf84112f60c/armips/include/constants.s) - add `TRAINERCLASS_*` constant define here
- [`bytereplacement`](#bytereplacement) - [link to file](https://github.com/BluRosie/hg-engine/blob/3e2263fc84627ca583334c7fa1f8dbf84112f60c/bytereplacement) - adjust bytes written to allow for more table entries in the music tables
- [`data/graphics/trainer_gfx`](#datagraphicstrainer_gfx) - [link to file](https://github.com/BluRosie/hg-engine/tree/3e2263fc84627ca583334c7fa1f8dbf84112f60c/data/graphics/trainer_gfx)
- `data/text/730.txt` - [link to file](https://github.com/BluRosie/hg-engine/blob/3e2263fc84627ca583334c7fa1f8dbf84112f60c/data/text/730.txt) - trainer class names
- `data/text/731.txt` - [link to file](https://github.com/BluRosie/hg-engine/blob/3e2263fc84627ca583334c7fa1f8dbf84112f60c/data/text/731.txt) - trainer class names with their articles
- `include/constants/sndseq.h` - [link to file](https://github.com/BluRosie/hg-engine/blob/3e2263fc84627ca583334c7fa1f8dbf84112f60c/include/constants/sndseq.h) - `ANIM_MUSIC_COMBO_*` constant defines
- `include/constants/trainerclass.h` - [link to file](https://github.com/BluRosie/hg-engine/blob/3e2263fc84627ca583334c7fa1f8dbf84112f60c/include/constants/trainerclass.h) - `TRAINERCLASS_*` constant define here
- [`src/music_tables.c`](#srcmusic_tablesc) - [link to file](https://github.com/BluRosie/hg-engine/blob/3e2263fc84627ca583334c7fa1f8dbf84112f60c/src/music_tables.c) - special animations/music for either certain wild Pokémon or trainer classes that the player faces
- [`src/pokemon.c`](#srcpokemonc) - [link to file](https://github.com/BluRosie/hg-engine/blob/3e2263fc84627ca583334c7fa1f8dbf84112f60c/src/pokemon.c) - the gender assigned to each trainer class is covered in this file
- [`src/trainermoney.c`](#srctrainermoneyc) - [link to file](https://github.com/BluRosie/hg-engine/blob/3e2263fc84627ca583334c7fa1f8dbf84112f60c/src/trainermoney.c) - trainer base prize money table

Special coverage is given to...
- [Animating Sprites](#animating-sprites)

Now we cover the files that aren't self-explanatory beyond their blurbs above.

### `data/graphics/trainer_gfx`
In this folder, each trainer class has its own set of images and JSON files.  There is...
- ###.png
- ###_anim.json
- ###_cell.json
- ###_enc.png
- ###_enc.png.key

First, we start with ###_enc.png.

\###_enc.png is the first 2 frames of your sprite (with an empty second half if your sprite is not animated).  It should be a 4bpp 160x80 image (may be 8bpp, i.e. the direct output of Aseprite's indexed sprite when you save it).  It pairs with a .key file that can be copied from any other sprite.

For an example:

![Sprite of Brendan by hyo-oppa!  See https://www.deviantart.com/hyo-oppa/art/WIP-Emerald-Brendan-DPPt-HGSS-Gen-4-Sprite-Sheet-864378236 ](https://github.com/BluRosie/hg-engine/blob/3e2263fc84627ca583334c7fa1f8dbf84112f60c/data/graphics/trainer_gfx/129_enc.png?raw=true)

\###.png is a garbled version of all of the frames of your sprite, here dumped as 80 pixels in width and `80*frames` pixels in height, 80 pixels per frame.  It is garbled such that the NCER can pull directly from consecutive tiles, or 8x8 squares, for each of its individual OAM's.

For an example:

![Sprite of Brendan by hyo-oppa!  See https://www.deviantart.com/hyo-oppa/art/WIP-Emerald-Brendan-DPPt-HGSS-Gen-4-Sprite-Sheet-864378236 ](https://github.com/BluRosie/hg-engine/blob/3e2263fc84627ca583334c7fa1f8dbf84112f60c/data/graphics/trainer_gfx/129.png?raw=true)

A somewhat better way to visualize this would be to dump the image with width 64, although this adds 4 rows to the bottom of the image because 100 is not divisible by 8:

![](https://raw.githubusercontent.com/BluRosie/hg-engine/70c6ea4f8019ed8cbfe3e1fca7c10d88b1a91249/data/graphics/trainer_gfx/128.png)

It is recommended for the time being to stick with the 80x80 image.

The garbled image can be generated with Tinke relatively easy.  Follow the [NCER (cell) editing tutorial from the DS Pokémon Hacking Wiki](https://ds-pokemon-hacking.github.io/docs/generation-iv/guides/ncer_sprite_editing/).

When you have imported your image over the existing one and managed to get it to not be transparent or whatever issues end up arising, export the individual NCGR and NCLR files (RGCN and RLCN in Tinke due to little endian), saving them as their names.

For this tutorial, we export the Dawn sprite from Platinum from the ROM.  So we export 8_640.RGCN and 8_641.RLCN, saving them as 8_640.NCGR and 8_641.NCLR.  In your terminal, you can then extract the image using `nitrogfx` from the hg-engine repository.  Navigating to the hg-engine folder...

```bash
./tools/nitrogfx 8_640.NCGR 129.png -palette 8_641.NCLR -width 10
```

This will output an image to `129.png` and will work if you exported your NCGR and NCLR files to the hg-engine folder directly.  You can replace the filenames with whatever.

The output image in question:

![Garbled Dawn image set for insertion](resources/Adding-New-Trainer-Classes/129.png)

\###_anim.json and ###_cell.json can be easily copied from another sprite that you want to emulate the animation/tile mapping from.  These correspond to NANR and NCER files directly, which can once again be edited in Tinke and visualized accordingly.  Converting the NANR to JSON can also be done using `nitrogfx`:

```bash
./tools/nitrogfx 8_642.NCER 129_cell.json
./tools/nitrogfx 8_643.NANR 129_anim.json
```

Note that the NCER JSON must end with `_cell.json` after the number, while the NANR JSON must end with `_anim.json` after the number.  This will allow the build system to detect everything properly and output the files in order.

### `src/music_tables.c`
This file has a few tables that control music for both trainer classes and specific wild Pokémon species.

This introduces the concept of the Animation-Music Combination (AMC), which controls the animation that plays leading into a battle and the music that plays during the battle itself.

We are looking to play the music from the Spiky-eared Pichu event during our battle without an introductory animation.  Not sure how to edit the animations as of yet, so we will keep it at no animation.

When the trainer sees us and walks up to us, we would like the Weather Trio battle music to play.

Here are the steps to recreate this behavior:

AMC's are indexed by constants at the end of `include/constants/sndseq.h`.  Adding a new one there will let us keep track of things easily, here `ANIM_MUSIC_COMBO_TEST`.

We then add our new entry to the `MainMusicComboTable`:
```c
u16 MainMusicComboTable[][2] =
{
...
    [ANIM_MUSIC_COMBO_KIMONO_GIRL] = {0x2D, SEQ_GS_VS_TRAINER},
    [ANIM_MUSIC_COMBO_RED] = {0x2E, SEQ_GS_VS_CHAMP},
    // (***END OF VANILLA ENTRIES***)
    [ANIM_MUSIC_COMBO_TEST] = {0xFFFF, SEQ_GS_E_G_PICHU},
};
```

Then we increase the amount of elements that the game expects for `MainMusicComboTable` in `bytereplacement` from `2D` to `2E`:
```
# MainMusicComboTable combo range
arm9 080517AA 2E
arm9 080517D4 2E
```

In order to get the trainer class to play a specific music during battles, we need to add an entry to `TrainerClassToMusicCombo`:

```c
u8 TrainerClassToMusicCombo[][2] =
{
...
    {TRAINERCLASS_KIMONO_GIRL, ANIM_MUSIC_COMBO_KIMONO_GIRL*4},
    {TRAINERCLASS_PKMN_TRAINER_RED, ANIM_MUSIC_COMBO_RED*4},
    // (***END OF VANILLA ENTRIES***)
    {TRAINERCLASS_NEW_CLASS_TEST, ANIM_MUSIC_COMBO_TEST*4},
};
```

Then we increase the amount of elements that the game expects for `TrainerClassToMusicCombo` in `bytereplacement` from `20` to `21`:
```
# TrainerClassToMusicCombo table range
arm9 08051886 21
```
Now the battle music with be the Spiky-eared Pichu event music.

In order to play the Weather Trio vs. music when the trainer sees the player, we then need to add an entry to `sTrainerEncounterMusicParam`:
```c
struct TrainerMusic sTrainerEncounterMusicParam[] = // cues which music sequence occurs upon eyes meeting
{
...
    {.class = TRAINERCLASS_EXECUTIVE_ARCHER, .music1 = SEQ_GS_EYE_ROCKET, .music2 = SEQ_GS_EYE_ROCKET},
    {.class = TRAINERCLASS_EXECUTIVE_PROTON, .music1 = SEQ_GS_EYE_ROCKET, .music2 = SEQ_GS_EYE_ROCKET},
    {.class = TRAINERCLASS_EXECUTIVE_PETREL, .music1 = SEQ_GS_EYE_ROCKET, .music2 = SEQ_GS_EYE_ROCKET},
    {.class = TRAINERCLASS_NEW_CLASS_TEST, .music1 = SEQ_GS_VS_KODAI, .music2 = SEQ_GS_VS_KODAI}, // new entry
};
```

Then we increase the amount of elements that the game expects for `sTrainerEncounterMusicParam` in `bytereplacement` from `2C` to `2D`:
```
# sTrainerEncounterMusicParam table range
arm9 080550D4 2D
```

This should then allow the Vs. Weather Trio music to play when the trainer sees the player.

### `src/pokemon.c`
This file contains a table called `sTrainerGenders` that maps each trainer class to the gender that it represents.  You only have to add the entry for the new class in order for this to repoint properly because the function is also replaced:
```c
const u8 sTrainerGenders[] = {
...
    [TRAINERCLASS_ROCKET_BOSS] = TRAINER_MALE,
    [TRAINERCLASS_PKMN_TRAINER_LUCAS_DP] = TRAINER_MALE,
    [TRAINERCLASS_PKMN_TRAINER_DAWN_DP] = TRAINER_FEMALE,
    [TRAINERCLASS_PKMN_TRAINER_LUCAS_PT] = TRAINER_MALE,
    [TRAINERCLASS_NEW_CLASS_TEST] = TRAINER_MALE, // new entry
};
```


### `src/trainermoney.c`
This file contains a table called `PrizeMoney` that maps each trainer class to a multiplier for the money that the player gains when beating the trainer.  You can add your entry to the table:
```c
struct TrainerMoney PrizeMoney[] = // 0x34C04 in Overlay 12; 2 bytes for trainer class ID, 2 bytes for modifier; 516 bytes in total in vanilla
{
...
    { .class = TRAINERCLASS_PKMN_TRAINER_DAWN_PT, .multiplier = 0 },
    { .class = TRAINERCLASS_BIRD_KEEPER, .multiplier = 8 },
    { .class = TRAINERCLASS_NEW_CLASS_TEST, .multiplier = 50 }, // new entry
};
```

Then we increase the amount of elements that the game expects for `PrizeMoney` in `bytereplacement` from `81` to `82`:
```
# PrizeMoney table range
0012 0223FBD0 82
0012 0223FBD4 82
0012 0223FBDC 82
```

### `bytereplacement`
As previously alluded to, `bytereplacement` has a series of bytes that are written at addresses in overlays.  For an overview of what this does, check out the [Code Injection Guide on the DS Pokémon Hacking Wiki](https://ds-pokemon-hacking.github.io/docs/generation-iv/guides/hgss-code_injection/#bytereplacement).

For adding a trainer class, you just need to add 1 (in hexadecimal) for the tables that you want to expand, between `MainMusicComboTable`, `TrainerClassToMusicCombo`, `PokemonBattleMusic`, and `sTrainerEncounterMusicParam`.  You only need to expand the ones that you were looking to expand earlier.

### Animating Sprites
Animated sprites are handled entirely by the NCER and NANR pulling from the sprite and toggling OAM's on and off.

Arcade Star Dahlia, the Frontier Brain of the Battle Arcade, has quite the battle sprite animation.

![Thanks Bulbapedia!](https://archives.bulbagarden.net/media/upload/3/36/Spr_Pt_Dahlia.png)

The `101_enc.png` sprite is easy, just the first 2 frames on a 160x80 canvas:

![](https://raw.githubusercontent.com/BluRosie/hg-engine/fc6842f3c6c749cbbcd88ce456817e2dcfb36000/data/graphics/trainer_gfx/101_enc.png)

The base `101.png` sprite is a little harder.  The raw image for this looks like this (first the raw image, then one dumped to width 64 for easier visualization):

<details>
<summary>Click to drop down!</summary>
<br>

![](https://raw.githubusercontent.com/BluRosie/hg-engine/fc6842f3c6c749cbbcd88ce456817e2dcfb36000/data/graphics/trainer_gfx/101.png) ![](https://raw.githubusercontent.com/BluRosie/hg-engine/3e2263fc84627ca583334c7fa1f8dbf84112f60c/data/graphics/trainer_gfx/101.png)
</details>

Dahlia is trainer class 101.  With 5 raw files per trainer class, we look to files 505 through 509 in Tinke.

Viewing 506, then 505, and then 507 will give us the NCER view in Tinke.  We are able to then edit the individual frames that can be pulled from for the NANR animation file.  All of the placement and such is defined in the NCER--so those frames that just shift are entirely duplicated OAM entries that differ in their x- and y-coordinates.

Here are the frames that only differ in shifting, viewed through the OAM editor in Tinke:

<details>
<summary>Click to drop down!</summary>
<br>

![](resources/Adding-New-Trainer-Classes/dahlia-0.png) ![](resources/Adding-New-Trainer-Classes/dahlia-1.png) ![](resources/Adding-New-Trainer-Classes/dahlia-2.png)
</details>

The NANR then sequences the frames, adding them in order and specifying the delays between each frames.  This may actually be best edited using the JSON, as Tinke's editor is more of a viewer that doesn't have an implementation for editing.

The NANR is represented in the repository by the `101_anim.json`.  It is posted here for reference while we also cover what exactly it means:

<details>
<summary>Click to view full anim JSON.</summary>
<br>

```json
{
	"labelEnabled":	true,
	"sequenceCount":	2,
	"frameCount":	14,
	"sequences":	[{
			"frameCount":	1,
			"loopStartFrame":	0,
			"animationElement":	0,
			"animationType":	1,
			"playbackMode":	2,
			"frameData":	[{
					"frameDelay":	4,
					"resultId":	0
				}]
		}, {
			"frameCount":	13,
			"loopStartFrame":	0,
			"animationElement":	0,
			"animationType":	1,
			"playbackMode":	1,
			"frameData":	[{
					"frameDelay":	20,
					"resultId":	0
				}, {
					"frameDelay":	6,
					"resultId":	1
				}, {
					"frameDelay":	4,
					"resultId":	2
				}, {
					"frameDelay":	20,
					"resultId":	3
				}, {
					"frameDelay":	6,
					"resultId":	4
				}, {
					"frameDelay":	4,
					"resultId":	5
				}, {
					"frameDelay":	28,
					"resultId":	6
				}, {
					"frameDelay":	4,
					"resultId":	5
				}, {
					"frameDelay":	6,
					"resultId":	0
				}, {
					"frameDelay":	18,
					"resultId":	7
				}, {
					"frameDelay":	4,
					"resultId":	8
				}, {
					"frameDelay":	4,
					"resultId":	9
				}, {
					"frameDelay":	80,
					"resultId":	10
				}]
		}],
	"animationResults":	[{
			"resultType":	0,
			"index":	0
		}, {
			"resultType":	0,
			"index":	4
		}, {
			"resultType":	0,
			"index":	5
		}, {
			"resultType":	0,
			"index":	6
		}, {
			"resultType":	0,
			"index":	1
		}, {
			"resultType":	0,
			"index":	2
		}, {
			"resultType":	0,
			"index":	3
		}, {
			"resultType":	0,
			"index":	9
		}, {
			"resultType":	0,
			"index":	7
		}, {
			"resultType":	0,
			"index":	8
		}, {
			"resultType":	0,
			"index":	10
		}],
	"resultCount":	11,
	"labels":	["\u0001", "ï¾X"],
	"labelCount":	2
}
```
</details>

- `labelEnabled` should be `true`
- `sequenceCount` is the amount of `sequences` that will be read from the NANR
- `frameCount` at this point is the total amount of frames between each defined sequence
- `sequences` is an array of individual `sequence` objects, each containing the following fields:
    - `frameCount` is the amount of entries in the `frameData` of this `sequence`
    - `loopStartFrame` should always be `0`
    - `animationElement` should always be `0`
    - `animationType` should always be `1`
    - `playbackMode` should be `2` for the first animation with just 1 `frameData` entry, `1` for the one featuring the actual animation
    - `frameData` is an array of individual `frameData` objects, each containing the following fields:
        - `frameDelay` is how many frames for which this part of the animation should be present
        - `resultId` corresponds with the entry in `animationResults` that corresponds with the frame displayed
- `animationResults` is an array of individual `animationResult` objects, each containing the following fields:
    - `resultType` should always be `0`
    - `index` corresponds with the frame as defined in the NCER
- `resultCount` is the amount of `animationResult` objects are in the array `animationResults`
- `labels` is text strings that correspond with each `sequence` object that is defined, although it's often gibberish
- `labelCount` is the amount of strings in `labels`

So as an example, we will insert the male protagonist sprite from B2W2.

![Thanks Bulbapedia!](https://archives.bulbagarden.net/media/upload/c/cd/Spr_B2W2_Nate.png)

We first split it into frames.  Dahlia has 11 total frames, so we will limit our frames to 11.  This sprite has 28 total frames.

We split it down into these images:

![](resources/Adding-New-Trainer-Classes/frame_apngframe02.png)
![](resources/Adding-New-Trainer-Classes/frame_apngframe06.png)
![](resources/Adding-New-Trainer-Classes/frame_apngframe08.png)
![](resources/Adding-New-Trainer-Classes/frame_apngframe10.png)
![](resources/Adding-New-Trainer-Classes/frame_apngframe14.png)
![](resources/Adding-New-Trainer-Classes/frame_apngframe16.png)
![](resources/Adding-New-Trainer-Classes/frame_apngframe18.png)
![](resources/Adding-New-Trainer-Classes/frame_apngframe20.png)
![](resources/Adding-New-Trainer-Classes/frame_apngframe22.png)
![](resources/Adding-New-Trainer-Classes/frame_apngframe24.png)
![](resources/Adding-New-Trainer-Classes/frame_apngframe28.png)

We can then multi-export in Tinke the Dahlia frames and superimpose our own frames over top of Dahlia's.  From there, we can reimport the image (once to get the palette, a second time with the Swap To Original Palette enabled with the Threshold set to 244 if necessary):

![](resources/Adding-New-Trainer-Classes/ncer-multi-import-export.png)
![](resources/Adding-New-Trainer-Classes/ncer-cell-editor.png)

From there, we clean up the NCER cells in Tinke by shifting each to the same 80x80 frame as the original frame.  We offset each frame by (-40, -40) and cleanly align all of the other OAM's to border properly.  We then export the file and get [this NCER](resources/Adding-New-Trainer-Classes/8_507.NCER), which translates to [this JSON file](resources/Adding-New-Trainer-Classes/8_507.json).

Doing all of this also gives us this NCGR image:

![](resources/Adding-New-Trainer-Classes/8_505.png)

Finally putting the first two frames together to match this:

![](resources/Adding-New-Trainer-Classes/nate_enc.png)

Putting this all in the ROM (and copying the `101_anim.json` file from Dahlia) gives us the following animation:

![](resources/Adding-New-Trainer-Classes/initial-results.gif)

Very close, but not quite there yet.

We first clean up the animation JSON file.

We put each `animationResult` in order by `index`:

<details>
<summary>Click to drop down!</summary>
<br>

```json
	"animationResults":	[{
			"resultType":	0,
			"index":	0
		}, {
			"resultType":	0,
			"index":	1
		}, {
			"resultType":	0,
			"index":	2
		}, {
			"resultType":	0,
			"index":	3
		}, {
			"resultType":	0,
			"index":	4
		}, {
			"resultType":	0,
			"index":	5
		}, {
			"resultType":	0,
			"index":	6
		}, {
			"resultType":	0,
			"index":	7
		}, {
			"resultType":	0,
			"index":	8
		}, {
			"resultType":	0,
			"index":	9
		}, {
			"resultType":	0,
			"index":	10
		}],
	"resultCount":	11,
```
</details>

And then we put each `frameData` in order of its `resultId` and adjust the `frameDelay`.  We then delete instances with duplicate `resultId` fields.
This then requires us to change the `frameCount` fields (both the upper-level one and the individual `frameData`'s `frameCount`), adjusting it down to account for the new amount of frames.

<details>
<summary>Click to drop down!</summary>
<br>

```json
	"frameCount":	12,
	"sequences":	[{
			"frameCount":	1,
			"loopStartFrame":	0,
			"animationElement":	0,
			"animationType":	1,
			"playbackMode":	2,
			"frameData":	[{
					"frameDelay":	4,
					"resultId":	0
				}]
		}, {
			"frameCount":	11,
			"loopStartFrame":	0,
			"animationElement":	0,
			"animationType":	1,
			"playbackMode":	1,
			"frameData":	[{
					"frameDelay":	10,
					"resultId":	0
				}, {
					"frameDelay":	5,
					"resultId":	1
				}, {
					"frameDelay":	5,
					"resultId":	2
				}, {
					"frameDelay":	10,
					"resultId":	3
				}, {
					"frameDelay":	5,
					"resultId":	4
				}, {
					"frameDelay":	5,
					"resultId":	5
				}, {
					"frameDelay":	5,
					"resultId":	6
				}, {
					"frameDelay":	5,
					"resultId":	7
				}, {
					"frameDelay":	5,
					"resultId":	8
				}, {
					"frameDelay":	10,
					"resultId":	9
				}, {
					"frameDelay":	80,
					"resultId":	10
				}]
		}],

```
</details>

After doing that, there are still frames where the sprite is jumbled

This is caused, interestingly enough, by Dahlia's sprite using reflected tiles and thus OAM layouts:

![](resources/Adding-New-Trainer-Classes/base-oam.png)
![](resources/Adding-New-Trainer-Classes/reflected-oam.png)

So we now aim to clean up frames 4 through 6 to resemble the OAM's on the left.

We redo an export on the frames so that they are easily imported once again.  Then we change the x-values on each of the OAM's on frames 4-6 to realign with where they are now, which will let us reimport the frames over the original ones and allow for a NCGR for insertion again.

This gives us a [new NCER](resources/Adding-New-Trainer-Classes/8_507_ext.NCER) that corresponds with a [new JSON](resources/Adding-New-Trainer-Classes/8_507_ext.json) and a [new NCGR](resources/Adding-New-Trainer-Classes/8_505_ext.NCGR).  Reconverting the NCGR to PNG gives us:

<details>
<summary>Click to drop down!</summary>
<br>

![](resources/Adding-New-Trainer-Classes/8_505_ext.png)
</details>

Combining all of this together gives us the final animation:

![](resources/Adding-New-Trainer-Classes/final-results.gif)

As always, feel free to reach out to me on Discord with help for this, either in the KoDSH server or the DSMC server, where we'll help you as soon as we can.  The NCER/JSON files are provided for easy reproduction steps and viewing the reproduction steps in Tinke for yourself as you follow along.  It may even be possible to insert far more frames at a time by copying the patterns that you see in each file and extending further, reproducing patterns that you see and such.  This is just the process that made sense to me for developing animated trainer sprites so far.

If you'd like this Nate sprite inserted in your hg-engine repository, the exact files are these ones:

- [Picture file](resources/Adding-New-Trainer-Classes/8_505_ext.png)
- [Encoded picture file](resources/Adding-New-Trainer-Classes/nate_enc.png)
- [Anim JSON](resources/Adding-New-Trainer-Classes/nate_anim.json)
- [Cell JSON](resources/Adding-New-Trainer-Classes/nate_cell.json)
