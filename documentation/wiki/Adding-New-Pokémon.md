## Adding New Pokémon
This tutorial is to document the intended workflow for adding brand new Pokémon to hg-engine.
The initial workflow covered will be for adding species.  There will be a section that is unique to new forms as well.  They are called out in the table of contents.
To add a new form, they should both be followed.

This is a long process if you are new to it.  I recommend reading the whole thing and then coming back to parts that aren't clear, then following along.

### Table of Contents
- [Things to Edit for both New Species and Forms](#things-to-edit-for-both-new-species-and-forms)
- [Things to Edit for just New Species](#things-to-edit-for-just-new-species)
- [Things to Edit for just Forms](#things-to-edit-for-just-forms)
- [Things to Edit for just Megas](#things-to-edit-for-just-megas)


### Things to Edit for both New Species and Forms
To start, we must define the species.  For the new species, I am going to be using the fakemon Celestina.
This is a creation by [StarWolff-Nyota from Temporal Chains (see DA page)](https://www.deviantart.com/starwolff-nyota/art/Temporal-Chains-Archive-1035340607#comments) and edited by [Yosa in their fakemon pack](https://discord.com/channels/446824489045721090/848319596226412635/1389197909173469214).

For the new form, we are adding a regional form that is used in the Unnamed heartGold Hack region Saisann, Slugma.  Saisann Slugma was created by Nilo1011 and repurposed for UGH's development.

The first thing to do will be to add the new species definition in [`include/constants/species.h`](https://github.com/BluRosie/hg-engine/blob/main/include/constants/species.h) and [`asm/include/species.inc`](https://github.com/BluRosie/hg-engine/blob/main/asm/include/species.inc)

Scroll to the definition of `MAX_CANONICAL_MON_NUM` in each of these files.  Add your new species definition here:

In [`include/constants/species.h`](https://github.com/BluRosie/hg-engine/blob/main/include/constants/species.h)...
```c
#define MAX_CANONICAL_MON_NUM (SPECIES_PECHARUNT)

// define your fakemons below like this
// #define SPECIES_FAKEMON_NAME1 (MAX_CANONICAL_MON_NUM + 1)

#define SPECIES_CELESTINA (MAX_CANONICAL_MON_NUM + 1)

#define NUM_OF_FAKEMONS 1
```

In [`asm/include/species.inc`](https://github.com/BluRosie/hg-engine/blob/main/asm/include/species.inc)...

```arm
.equ MAX_CANONICAL_MON_NUM, (SPECIES_PECHARUNT)

// define your fakemons below like this
//.equ SPECIES_FAKEMON_NAME1, (MAX_CANONICAL_MON_NUM + 1)

.equ SPECIES_CELESTINA, (MAX_CANONICAL_MON_NUM + 1)

.equ NUM_OF_FAKEMONS, 1
```

Here, Celestina is defined and the `NUM_OF_FAKEMONS` define is increased from 0 to 1.
Further fakemon should be defined using `+ 2`, `+ 3`, etc., adjusting the `NUM_OF_FAKEMONS` as needed.

Similarly, adding a form will be done at the bottom of each of those files.

In [`include/constants/species.h`](https://github.com/BluRosie/hg-engine/blob/main/include/constants/species.h)...
```c
// define your fakemons below like this
// #define SPECIES_FAKEMON_FORM1 (MAX_SPECIES_CANONICAL_FORM_NUM + 1)

#define SPECIES_SLUGMA_SAISANN (MAX_SPECIES_CANONICAL_FORM_NUM + 1)

#define MAX_SPECIES_INCLUDING_FORMS (SPECIES_SLUGMA_SAISANN)
```
Here, the definition of `MAX_SPECIES_INCLUDING_FORMS` has to be edited accordingly to be the last mon that was introduced.

In [`asm/include/species.inc`](https://github.com/BluRosie/hg-engine/blob/main/asm/include/species.inc)......
```arm
// define your fakemons below like this
//.equ SPECIES_FAKEMON_FORM1, (MAX_CANONICAL_SPECIES_INCLUDING_FORMS + 1)

.equ SPECIES_SLUGMA_SAISANN, (MAX_CANONICAL_SPECIES_INCLUDING_FORMS + 1)

.equ NUM_OF_FAKEMON_FORMS, (1)
```
That defines the new species and new form.

#### Graphics

Now that you have added your defines, run `python3 scripts/reformat_sprite_data.py` from your WSL terminal opened such that you could build hg-engine.

This edits your `pokegra.mk` with the new defines automatically.  We will first copy from Bulbasaur to get the structure, renaming it to each of the new mons you used.  For me, this is copying Bulbasaur's folder and pasting it as `celestina` and `slugma_saisann`.

![](resources/Adding-New-Pokemon/new_sprite_folders.png)

The structure of each species' folder is as follows:
- celestina (species name)
  - male
    - front.png
    - front.png.key
    - back.png
    - back.png.key
  - female
    - front.png
    - front.png.key
    - back.png
    - back.png.key
  - icon.png

If you are running WSL on Windows and your hg-engine folder is on your Linux drive, you are likely to get `:Zone.Identifier` files.  Delete these whenever you see them, as [they can mess with builds](https://discord.com/channels/446824489045721090/810895757309771796/1428725269379940432).

The sprites used for these are _very_ specific in how they have to be formatted to ensure that the tooling reads everything properly.  The `.key` files do not have to be touched.
The images have to be indexed.

###### Indexing
Indexing is the process of embedding the colors that the image can choose from (the palette) into the image.  The image pixels themselves take up significantly less data this way, only taking 4 bits-per-pixel (4bpp).  This process outlined here is specifically for 4bpp indexing.

I have found this to be best done using [Irfanview](https://www.irfanview.com/main_download_engl.htm) because it is the only tool I am familiar with that respects the color order that you specify.
Every other tool either doesn't handle 4bpp sprites well (Aseprite) or is impossible control the color order with.

Front and back sprites have 2 frames each.  This does actually mean that male and female sprites could have 2 different frames for their animations.
The front sprite has the normal palette for the species, while the back sprite has the shiny palette.
The colors for this are in the same order.  This is important, as that is how the shiny palette is loaded--just by palette swapping the order.

This can be seen in the Bulbasaur sprites:

![](https://github.com/BluRosie/hg-engine/blob/main/data/graphics/sprites/bulbasaur/male/front.png?raw=true)

![](https://github.com/BluRosie/hg-engine/blob/main/data/graphics/sprites/bulbasaur/male/back.png?raw=true)

(These sprites are transparent, but that is not necessary.)

Downloading these sprites and opening them in Irfanview shows what I mean when hitting Image -> Palette -> Edit palette...

![](resources/Adding-New-Pokemon/shiny_palette_correlation_bulbasaur.png)

Each color on the top palette is replaced directly with the bottom color to make the shiny sprite.
We have to take this into consideration when we are working with sprites.

For the Celestina sprite, we have this sprite.  I do not have second frames for this species, my apologies.  So we copy the left 80x80 frame to the right 80x80 part of the image and open it in Irfanview.

The first step of indexing is to Decrease the Color Depth to 16 colors.  This is done by navigating to Image -> Decrease Color Depth.

![](resources/Adding-New-Pokemon/decrease_color_depth.png)

The dialog box comes up for decreasing colors.  Here, select these specific options and then press OK.  This typically nets the best results in the resulting sprite.

![](resources/Adding-New-Pokemon/16_colors.png)

Now we need to check that the first color is the color that is supposed to be transparent.  In this example, the tool actually does not do this, so we need to swap the colors around:

![](resources/Adding-New-Pokemon/wrong_first_color.png)

This can be done a few ways.  The quickest I've found is by double clicking one of the colors that need to be swapped and then clicking "Add to Custom Colors" twice, pressing OK, and then adding the other color to custom colors.  This lets them be easily selectable in each other's slot.

![](resources/Adding-New-Pokemon/add_to_custom_colors.png)

![](resources/Adding-New-Pokemon/add_to_custom_colors_2.png)

![](resources/Adding-New-Pokemon/add_to_custom_colors_result.png)

Your image will be messed up like below.

![](resources/Adding-New-Pokemon/messed_up_colors.png)

The palette is correct though.  Go to export the palette at Image -> Palette -> Export Palette..

![](resources/Adding-New-Pokemon/export_palette.png)

This will allow you to save your palette as a JASC-PAL file.  This is separate from the image.  We have to reopen the image using File -> Reopen Image.
We then edit our editing properties in Options -> Properties to have the Import Nearest Color button box for Importing Palettes.

![](resources/Adding-New-Pokemon/use_nearest_color.png)

Then we can finally press Image -> Palette -> Import Palette.  Select the palette you just exported, and finally you can save the image and that is an indexed image.  This is the front male and female sprite, located at `data/graphics/celestina/male/front.png` and `data/graphics/celestina/female/front.png`.

![](resources/Adding-New-Pokemon/front-celestina.png)

From there, we need to create the shiny palette.  I will once again use Irfanview for this process.  This process is literally done by picking colors from the shiny sprite and replacing them in the palette one by one.  Here is the shiny sprite we'll use:

![](resources/Adding-New-Pokemon/celestina-shiny.png)

The idea is that we replace a color in the palette one by one with a bright color that stands out.

![](resources/Adding-New-Pokemon/replace_colors_1.png)

This allows us to select the color in the shiny sprite using Paint that will substitute that color.

![](resources/Adding-New-Pokemon/replace_colors_2.png)

We transfer over the RGB values into Irfanview to put that color in for the shiny palette.

Repeat this color by color to complete the sprite:

![](resources/Adding-New-Pokemon/celestina-shiny-indexed.png)

Then export the shiny palette.  You should now have a normal palette exported earlier in this tutorial and a shiny palette.
Now we have to index the back sprite to the normal palette with the Import Nearest Color box on, and then turn it off to import the shiny palette.
The images below detail this.

![](resources/Adding-New-Pokemon/index_back_sprite.png)

![](resources/Adding-New-Pokemon/index_back_sprite_2.png)

![](resources/Adding-New-Pokemon/index_back_sprite_3.png)

The final result, when importing the shiny palette after turning that option off:

![](resources/Adding-New-Pokemon/index_back_sprite_4.png)

And a comparison with the normal palette:

![](resources/Adding-New-Pokemon/index_back_sprite_5.png)

This is the final sprite that serves as both `data/graphics/celestina/male/back.png` and `data/graphics/celestina/female/back.png`.

A similar process is followed for Saisann Slugma.  Those files are in `data/graphics/slugma_saisann`, and the files are here:

![](resources/Adding-New-Pokemon/SaisannSlugma_Front.png) ![](resources/Adding-New-Pokemon/SaisannSlugma_Back.png)

###### Sprite Data
For data that relates to the sprites.

###### Icon Editing
For the icon of the fakemons, they are located in the base sprite folder.  These must be indexed similarly to the sprites,
but with one big difference:  The palette is forced to choose from 1 of 3 at the moment.

These are the three palette files:

![](resources/Editing-Pokemon-Data/pal0.pal)

![](resources/Editing-Pokemon-Data/pal1.pal)

![](resources/Editing-Pokemon-Data/pal2.pal)

The palette should be imported in Irfanview with the import nearest color option checked.  This allows for you to judge which palette should be used.  Remember whether you selected palette 0, palette 1, or palette 2--put the indexed PNG into the `data/graphics/celestina` folder.

On initially opening the file, the color that is intended to be transparent might not be the best for use with what we need.

![](resources/Adding-New-Pokemon/index_icon_1.png)

All of the palettes above have the same transparent color for convenience of editing.  See this Unown sprite for what I mean:

![](https://github.com/BluRosie/hg-engine/blob/main/data/graphics/sprites/511/icon.png?raw=true)

For this, we need to decrease our number of colors to 16 and set that bright green to the transparent color.

![](resources/Adding-New-Pokemon/index_icon_2.png)

The color has RGB 96, 152, 128 as can be verified by any software that lets you see component values.

![](resources/Adding-New-Pokemon/index_icon_3.png)

So we go one by one and import each palette, checking the results.  In order of 0-2:

![](resources/Adding-New-Pokemon/index_icon_4_pal0.png)
![](resources/Adding-New-Pokemon/index_icon_4_pal1.png)
![](resources/Adding-New-Pokemon/index_icon_4_pal2.png)

Looks like for our purposes, palette 2 will have to do.  We save that as Celestina's icon in `data/graphics/sprites/celestina/icon.png`.

Same thing for Saisann Slugma.  Its icon is best indexed to palette 0.  To tell the game our preferred icon palette slots, we use `armips/data/iconpalettetable.s`.  Adding entries for both Celestina and Saisann Slugma:

```
...
/* SPECIES_TERAPAGOS       */ .byte  0x0
/* SPECIES_PECHARUNT       */ .byte  0x0

/* SPECIES_CELESTINA       */ .byte  0x2

/* SPECIES_MEGA_VENUSAUR   */ .byte  0x1
/* SPECIES_MEGA_CHARIZARD_X*/ .byte  0x0
...
/* SPECIES_URSALUNA_BLOODMOON          */ .byte  0x2
/* SPECIES_TERAPAGOS_TERASTAL          */ .byte  0x0
/* SPECIES_TERAPAGOS_STELLAR           */ .byte  0x0

/* SPECIES_SLUGMA_SAISANN              */ .byte  0x0

.endarea
```

###### Overworlds
Overworlds for followers are mixed in with all of the NPC overworlds in the same NARC.  This makes them rather tedious to expand, especially when there is a form involved.  We will cover both here.

#### Data
Now we run through the list of places where data needs to be defined.

In order of how they appear in the dropdown, data will have to be defined in each of these files.  If it is not in this list, it may be ignored (or is addressed in the [Graphics](#graphics) section).

###### `armips/data/pokedex/sortlists/national.s`
- This file needs to have the new species added to it so that the species shows in the PokéDex.  Use the same format as every other species in there.
- Similarly, if you want a species to appear in the regional dex, add it to armips/data/pokedex/sortlists/regional.s
- Do NOT add forms to these!  This is for the base species only.  Forms will eventually be addable to the dex.

###### `armips/data/pokedex/areadata.s`

<details>
<summary>Click to drop down!</summary>
<br>

This file contains the areas that flash in the PokéDex when a species is opened.  We will add dummy entries for it, adding our data for Celestina at the end:

```
specialareas SPECIES_CELESTINA, DEX_MORNING
    dexendareadata


specialareas SPECIES_CELESTINA, DEX_DAY
    dexendareadata


specialareas SPECIES_CELESTINA, DEX_NIGHT
    dexendareadata


routesandcities SPECIES_CELESTINA, DEX_MORNING
    dexendareadata


routesandcities SPECIES_CELESTINA, DEX_DAY
    dexendareadata


routesandcities SPECIES_CELESTINA, DEX_NIGHT
    dexendareadata


specialareas SPECIES_CELESTINA, DEX_SPECIAL
    dexendareadata


routesandcities SPECIES_CELESTINA, DEX_SPECIAL
    dexendareadata
```
Look at Pokémon in the vanilla game for examples of how to meaningfully edit the places that the dex says it can appear.

**Please note that this is NOT where the Pokémon appears!  That is defined in `armips/data/encounters.s`**

The `DEX_SPECIAL` categories are those that blink red at all hours.  The others blink yellow.

</details>

###### `armips/data/pokedex/weight.s`

This file defines the weight of each species in hectograms.  We add both Celestina and Saisann Slugma here:

```
...

/* SPECIES_PECHARUNT                         */ .word 3

/* SPECIES_CELESTINA                         */ .word 250

/* SPECIES_MEGA_VENUSAUR                     */ .word 1555
/* SPECIES_MEGA_CHARIZARD_X                  */ .word 1105

... and then at the end of the file ...

/* SPECIES_TERAPAGOS_TERASTAL                */ .word 160
/* SPECIES_TERAPAGOS_STELLAR                 */ .word 770

/* SPECIES_SLUGMA_SAISANN                    */ .word 350

.close

```

###### `armips/data/pokedex` remainders

For all of the other files in `armips/data/pokedex` (except for `000.s`, `002.s`, and `pokedexdata.s`), copy an entry from one of the previous species and use that.

This is all of...

- [femalemonscaledivisor.s](https://github.com/BluRosie/hg-engine/blob/main/armips/data/pokedex/femalemonscaledivisor.s)
- [femaletrainerscaledivisor.s](https://github.com/BluRosie/hg-engine/blob/main/armips/data/pokedex/femaletrainerscaledivisor.s)
- [femalemonypos.s](https://github.com/BluRosie/hg-engine/blob/main/armips/data/pokedex/femalemonypos.s)
- [femaletrainerypos.s](https://github.com/BluRosie/hg-engine/blob/main/armips/data/pokedex/femaletrainerypos.s)
- [malemonscaledivisor.s](https://github.com/BluRosie/hg-engine/blob/main/armips/data/pokedex/malemonscaledivisor.s)
- [malemonypos.s](https://github.com/BluRosie/hg-engine/blob/main/armips/data/pokedex/malemonypos.s)
- [maletrainerscaledivisor.s](https://github.com/BluRosie/hg-engine/blob/main/armips/data/pokedex/maletrainerscaledivisor.s)
- [maletrainerypos.s](https://github.com/BluRosie/hg-engine/blob/main/armips/data/pokedex/maletrainerypos.s)

The size comparison will be off for the moment, but there is not a convenient editor for this at this time that would allow us to change these.

###### `armips/data/babymons.s`

This file defines the species that will typically come out of an egg if this species is bred.

Add your new Pokémon with their desired species to the end:

```
babymon SPECIES_CELESTINA, SPECIES_CELESTINA
```

### Things to Edit for just Forms
You will have to go through the entire process of the [Things to Edit for both New Species and Forms](#things-to-edit-for-both-new-species-and-forms).

This is just things that are extra on top of that.

### Things to Edit for just Megas
You will have to go through the entire process of the [Things to Edit for both New Species and Forms](#things-to-edit-for-both-new-species-and-forms).

This is just things that are extra on top of that.
