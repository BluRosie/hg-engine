# Item System Documentation

Items in HeartGold are really close to being extremely expandible in and of themselves.  This discusses how items are structured originally, how hg-engine changes this to allow for new items, and how to add new items.

## Table of Contents
- [Item Data](#item-data)
- [Item Graphics](#item-graphics)
- [Expanding Bag Pockets](#expanding-bag-pockets)

## Item Data
There is just a table at 0x02100194 that has 8 bytes per item and can be expanded nicely with the structure:

```c
struct ITEMDATA_INDEX
{
    u16 arc_data; // file in a017 - itemdata
    u16 arc_cgx;  // ncgr in a018 - itemgfx
    u16 arc_pal;  // nclr in a018 - itemgfx
    u16 agb_id;   // item index on the gba for pal park conversion
};
```

In expanding this table, the approach taken was actually to just leave the table alone and directly map new items to new data/gfx entries.  See all of the code in [``src/item.c``](https://github.com/BluRosie/hg-engine/blob/main/src/item.c) for how this is handled:
```c
if (item > ITEM_DATA_MAX)
    ret = ITEM_DATA_ENTRIES + (item - ITEM_DATA_MAX); // each new item gets a new data entry--537 maps to 513 + (537-536) = 514+
else
    ret = ItemDataIndex[item].arc_data;
return ret;
```
The item table being left alone leaves the limbo items between the Griseous Orb and the Adamant Orb unusable.  This is fine.  Furthermore, the Explorer Kit is also functionally unusable despite possibly appearing in the bag.

This is all reflected in the item data built from [``data/itemdata/itemdata.c``](https://github.com/BluRosie/hg-engine/blob/main/data/itemdata/itemdata.c).  Items before the Adamant Orb can be built with a reference to their index:
```c
[ITEM_MOOMOO_MILK] =
{
// ...
},
```
Items before the Explorer Kit and after the Adamant Orb need to be built with the offset to account for the 22 limbo items:
```c
[ITEM_LUM_BERRY - NUM_UNKNOWN_SLOTS] =
{
// ...
},
```
And finally, all items after the explorer kit (including brand new items) need to be built using a new offset to account for the 23 total limbo items:
```c
[ITEM_MYSTERY_EGG - NUM_UNKNOWN_SLOTS_EXPLORER_KIT] =
{
// ...
},
```
Each item has the structure:
<details>
<summary>Item Data Structure - Click to Expand</summary>
<br>

```c
/*
 * Item parameter data, main structure
 */
typedef struct ItemData
{
    u16 price; // price that it costs to buy the item
    u8 holdEffect; // hold effect
    u8 holdEffectParam; // some hold effects have a parameter, i.e. percent that a move is boosted by the item
    u8 pluckEffect; // move effect that pluck uses
    u8 flingEffect; // move effect that fling uses
    u8 flingPower;  // power that flinging the ietm has
    u8 naturalGiftPower; // natural gift's base power
    u16 naturalGiftType:5; // natural gift's type (31 if it can't be used)
    u16 prevent_toss:1; // can you toss this item from the bag?
    u16 selectable:1; // can you select use on this item from the bag?
    u16 fieldPocket:4; // pocket that the item is placed into in the overworld
    u16 battlePocket:5; // pockets that the item shows up in in battles
    u8 fieldUseFunc; // number that describes how the item is used in the overworld
    u8 battleUseFunc; // number that describes how the item is used in battles
    u8 partyUse; // not 100% certain
    u8 padding_0D; // unused
    union {
        u8 dummy; // unused
        ITEMPARTYPARAM partyUseParam; // bits that describe how the item is used
    };
    u8 padding_22[2]; // unused
} ITEMDATA;

/*
 * Bit array describing the effects of using the item on a
 * party member, substructure to ITEMDATA above
 */
typedef struct ItemPartyUseParam
{
    u8 slp_heal:1; // does the item heal sleep when used?
    u8 psn_heal:1; // does the item heal poison when used?
    u8 brn_heal:1; // does the item heal burn when used?
    u8 frz_heal:1; // does the item heal freeze when used?
    u8 prz_heal:1; // does the item heal paralysis when used?
    u8 cfs_heal:1; // does the item heal confusion when used?
    u8 inf_heal:1; // does the item heal infatuation when used?
    u8 guard_spec:1; // is the item guard specs?
    u8 revive:1; // does the item revive fainted pokemon?
    u8 revive_all:1; // does the item revive all fainted pokemon? (sacred ash)
    u8 level_up:1; // does the item induce a level up? (rare candy)
    u8 evolve:1; // is the item an evolution item?
    u8 atk_stages:4; // how many attack stages does the item raise?
    u8 def_stages:4; // how many defense stages does the item raise?
    u8 spatk_stages:4; // how many sp. atk stages does the item raise?
    u8 spdef_stages:4; // how many sp. def stages does the item raise?
    u8 speed_stages:4; // how many speed stages does the item raise?
    u8 accuracy_stages:4; // how many accuracy stages does the item raise?
    u8 critrate_stages:2; // how many critical rate stages does the item raise?
    u8 pp_up:1; // does the item increase max pp?
    u8 pp_max:1; // does the item increase to max pp?
    u8 pp_restore:1; // does the item restore pp?
    u8 pp_restore_all:1; // does the item restore pp to all moves?
    u8 hp_restore:1; // does the item restore hp?
    u8 hp_ev_up:1; // does the item increase hp ev?
    u8 atk_ev_up:1; // does the item increase attack ev?
    u8 def_ev_up:1; // does the item increase defense ev?
    u8 speed_ev_up:1; // does the item increase speed ev?
    u8 spatk_ev_up:1; // does the item increase sp. atk ev?
    u8 spdef_ev_up:1; // does the item increase sp. def ev?
    u8 friendship_mod_lo:1; // when friendship is low, does item use affect friendship?
    u8 friendship_mod_med:1; // when friendship is medium, does item use affect friendship?
    u8 friendship_mod_hi:1; // when friendship is high, does item use affect friendship?
    s8 hp_ev_up_param; // hp ev delta when used
    s8 atk_ev_up_param; // attack ev delta when used
    s8 def_ev_up_param; // defense ev delta when used
    s8 speed_ev_up_param; // speed ev delta when used
    s8 spatk_ev_up_param; // sp. atk ev delta when used
    s8 spdef_ev_up_param; // sp. def ev delta when used
    u8 hp_restore_param; // amount hp is restored by (255 for full, 254 for half, 253 for quarter)
    u8 pp_restore_param; // amount pp is restored by (127 for full restore)
    s8 friendship_mod_lo_param; // when friendship is low, amount the friendship is changed by
    s8 friendship_mod_med_param; // when friendship is medium, amount the friendship is changed by
    s8 friendship_mod_hi_param; // when friendship is high, amount the friendship is changed by
    u8 padding[2];
} ITEMPARTYPARAM;
```

</details>

All of this manifests in a number of ways to configure items.  You can even mix and match for brand new items.  A particularly involved example is the Full Restore:

<details>
<summary>Full Restore Item Data Structure - Click to Expand</summary>
<br>

```c
[ITEM_FULL_RESTORE] =
{
    .price = 3000,
    .holdEffect = 0,
    .holdEffectParam = 255,
    .pluckEffect = 0,
    .flingEffect = 0,
    .flingPower = 30,
    .naturalGiftPower = 0,
    .naturalGiftType = 31, // no natural gift usage is possible
    .prevent_toss = FALSE,
    .selectable = FALSE,
    .fieldPocket = POCKET_MEDICINE, // appears in the medicine pocket in the overworld
    .battlePocket = BATTLE_POCKET_HP_RESTORE | BATTLE_POCKET_STATUS_HEALERS, // appears in the hp/pp restore + status healers battle pockets in battles
    .fieldUseFunc = 1,
    .battleUseFunc = 2,
    .partyUse = 1,
    .partyUseParam = {
        .slp_heal = TRUE, // heals everything but infatuation
        .psn_heal = TRUE,
        .brn_heal = TRUE,
        .frz_heal = TRUE,
        .prz_heal = TRUE,
        .cfs_heal = TRUE,
        .inf_heal = FALSE,
        .guard_spec = FALSE,
        .revive = FALSE,
        .revive_all = FALSE,
        .level_up = FALSE,
        .evolve = FALSE,
        .atk_stages = 0,
        .def_stages = 0,
        .spatk_stages = 0,
        .spdef_stages = 0,
        .speed_stages = 0,
        .accuracy_stages = 0,
        .critrate_stages = 0,
        .pp_up = FALSE,
        .pp_max = FALSE,
        .pp_restore = FALSE,
        .pp_restore_all = FALSE,
        .hp_restore = TRUE, // is capable of restoring hp
        .hp_ev_up = FALSE,
        .atk_ev_up = FALSE,
        .def_ev_up = FALSE,
        .speed_ev_up = FALSE,
        .spatk_ev_up = FALSE,
        .spdef_ev_up = FALSE,
        .friendship_mod_lo = FALSE,
        .friendship_mod_med = FALSE,
        .friendship_mod_hi = FALSE,
        .hp_ev_up_param = 0,
        .atk_ev_up_param = 0,
        .def_ev_up_param = 0,
        .speed_ev_up_param = 0,
        .spatk_ev_up_param = 0,
        .spdef_ev_up_param = 0,
        .hp_restore_param = 255, // heals full hp
        .pp_restore_param = 0,
        .friendship_mod_lo_param =  0,
        .friendship_mod_med_param = 0,
        .friendship_mod_hi_param =  0,
    },
},
```

</details>

## Item Graphics
This segues into the item graphics.  New item icons are automatically built from png files in [``data/graphics/item``](https://github.com/BluRosie/hg-engine/tree/main/data/graphics/item).  From here, you have to index the png image to 4bpp (16 colors) using GIMP or irfanview, making sure the transparent color is first in the palette.  Then just need to place the png in the aforementioned folder, naming it accordingly to the next available odd number.

This automatically corresponds to the order present after the Enigma Stone in [``data/itemdata/itemdata.c``](https://github.com/BluRosie/hg-engine/blob/main/data/itemdata/itemdata.c), starting after the mega/primal reversion gfx:

![image](https://user-images.githubusercontent.com/16446370/207158340-12c52c1a-ef9b-4e9d-bc01-8088fd157a83.png)

Adding the image here, properly formatted, will automatically build the NCGR and the NCLR using the image and the palette embedded within it.

The old item gfx are not currently touched due to the complications in building such that it corresponds with the table.  This is no issue for new items, and editing old item graphics can be done simply using Tinke.

## Expanding Bag Pockets
The bag by default has exactly the amount of space necessary for exactly 1 stack of every possible obtainable item in the game.  When adding new items, this presents a problem that we need to expand the save for.

In expanding the save, PKHeX compatibility is shot.  Expanding bag pockets is disabled by the ``ALLOW_SAVE_CHANGES`` configuration option in [``include/config.h``](https://github.com/BluRosie/hg-engine/blob/main/include/config.h).  While new items will still be collectable should they be configured properly, it will be possible for the player to collect too many individual items and prevent further item collection without tossing some existing items.

Each pocket is configured individually.  Each pocket can be expanded currently up to 255 items per pocket.  These numbers are configured from [``include/constants/item.h``](https://github.com/BluRosie/hg-engine/blob/main/include/constants/item.h) starting after the main item defines at the bottom of the file.  In expanding the items, you want to deal with those that are present after the `#ifdef ITEM_POCKET_EXPANSION` and leave alone the ones after the `#else`, as those are used in case the item pocket expansion is disabled and default behavior is desired.  Expanding the pocket without allowing save expansion has a failsafe that prevents pocket expansion from happening despite the configurations calling for it to prevent item deletion in the save.
