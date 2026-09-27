# New Evolution Methods Documentation

Later generation Pokémon have new evolution methods that are not implemented in Gen 4.  They have approximately been implemented in hg-engine within limitations.

First, the defines for all of them (from [``armips/include/constants.s``](https://github.com/BluRosie/hg-engine/blob/main/armips/include/constants.s#L67)):

```arm
EVO_NONE                         equ 0
EVO_HAPPINESS                    equ 1
EVO_HAPPINESS_DAY                equ 2
EVO_HAPPINESS_NIGHT              equ 3
EVO_LEVEL_UP                     equ 4
EVO_TRADE                        equ 5
EVO_TRADE_ITEM                   equ 6
EVO_USE_ITEM                     equ 7
EVO_LEVEL_MORE_ATTACK            equ 8
EVO_LEVEL_ATK_DEF_EQUAL          equ 9
EVO_LEVEL_MORE_DEFENSE           equ 10
EVO_LEVEL_PID_LOW                equ 11
EVO_LEVEL_PID_HIGH               equ 12
EVO_LEVEL_GEN_NEW_MON_1          equ 13
EVO_LEVEL_GEN_NEW_MON_2          equ 14
EVO_MAX_BEAUTY                   equ 15
EVO_USE_ITEM_MALE                equ 16
EVO_USE_ITEM_FEMALE              equ 17
EVO_USE_ITEM_DAY                 equ 18
EVO_USE_ITEM_NIGHT               equ 19
EVO_KNOWS_MOVE                   equ 20
EVO_MON_IN_PARTY                 equ 21
EVO_LEVEL_MALE                   equ 22
EVO_LEVEL_FEMALE                 equ 23
EVO_LEVEL_ELECTRIC_FIELD         equ 24
EVO_LEVEL_MOSSY_STONE            equ 25
EVO_LEVEL_ICY_STONE              equ 26
EVO_LEVEL_DAY                    equ 27
EVO_LEVEL_NIGHT                  equ 28
EVO_LEVEL_DUSK                   equ 29
EVO_LEVEL_RAIN                   equ 30
EVO_HAS_MOVE_TYPE                equ 31
EVO_LEVEL_DARK_TYPE_MON_IN_PARTY equ 32
EVO_TRADE_SPECIFIC_MON           equ 33
EVO_LEVEL_NATURE_AMPED           equ 34
EVO_LEVEL_NATURE_LOW_KEY         equ 35
EVO_AMOUNT_OF_CRITICAL_HITS      equ 36
EVO_HURT_IN_BATTLE_AMOUNT        equ 37
```

To run through each of them:

### None

A dummy entry.


### Happiness

The Pokémon will evolve upon leveling up with over 220 happiness.

### Happiness Day

The Pokémon will evolve upon leveling up with over 220 happiness during the day.

### Happiness Night

The Pokémon will evolve upon leveling up with over 220 happiness during the night.

### Level Up

The Pokémon will evolve when leveling up over the specified level.

### Trade

The Pokémon will evolve when being received in a trade.

### Trade Holding Item

The Pokémon will evolve when being received in a trade holding the specified item.

### Use Item

The Pokémon will evolve when the specified item is used on it.

### Level Higher Attack

The Pokémon will evolve when leveling up with higher attack than defense.

### Level Same Attack and Defense

The Pokémon will evolve when leveling up with the same attack and defense.

### Level Higher Defense

The Pokémon will evolve when leveling up with higher defense than attack.

### Level PID Low

The Pokémon will evolve when leveling up above the specified level and with a low PID value.

### Level PID High

The Pokémon will evolve when leveling up above the specified level and with a high PID value.

### Level Shedinja 1 + 2

The Pokémon will evolve when above the specified level and will produce another Pokémon in the party.

### Level Maximum Beauty

The Pokémon will evolve when leveling up after having achieved maximum beauty.

### Use Item on Female

The Pokémon will evolve when using an item on a female only.

### Use Item on Male

The Pokémon will evolve when using an item on a male only.

### Hold Item during the Day

The Pokémon will evolve when leveling up holding an item during the day.

### Hold Item during the Night

The Pokémon will evolve when leveling up holding an item during the night.

### Level Up Knowing Move

The Pokémon will evolve when leveling up knowing the specified move.

### Level Up with Another Mon in Party

The Pokémon will evolve when leveling up with the specified Pokémon in the party.

### Level Up a Male

The Pokémon will evolve when leveling up a male above the specified level.

### Level Up a Female

The Pokémon will evolve when leveling up a female above the specified level.

### Level Up in an Electric Field

The Pokémon will evolve when leveling up in Route 43 or outside the Kanto Power Plant.

### Level Up near a Mossy Stone

The Pokémon will evolve when leveling up in Ilex Forest or Viridian Forest.

### Level Up near an Icy Stone

The Pokémon will evolve when leveling up in the bottom floors of Ice Path or the Seafoam Islands.

### Level Up During the Day

The Pokémon will evolve when leveling up above the specified level during the day.

### Level Up During the Nigt

The Pokémon will evolve when leveling up above the specified level during the night.

### Level Up During the Dusk

The Pokémon will evolve when leveling up above the specified level during dusk (5:00-5:59 PM).

### Level Up While it is Raining

The Pokémon will evolve when leveling up above the specified level while it is raining.

### Level Up When it Knows a Move of Type

The Pokémon will evolve when leveling up with a move of the specified type.

### Level Up When There is a Dark-Type Mon in Party

The Pokémon will evolve when leveling up above the specified level while there is another Pokémon with the Dark-Type in the party.

### Trade With Specific Pokémon (Unimplemented)

Currently unimplemented pending further research.

### Level Up With Amped Nature

The Pokémon will evolve when leveling up above the specified level with the nature Hardy, Brave, Adamant, Naughty, Docile, Impish, Lax, Hasty, Jolly, Naive, Rash, Sassy, or Quirky.

### Level Up With Low Key Nature

The Pokémon will evolve when leveling up above the specified level with the nature Lonely, Bold, Relaxed, Timid, Serious, Modest, Mild, Quiet, Bashful, Calm, Gentle, or Careful.

### Level Up After Having Hit 3 Critical Hits

The Pokémon will evolve when leveling up after having hit 3 critical hits in one battle session.  Switching out resets this counter, and once the critical hits have occurred it will try to level up after every level regardless of battles that take place after.

### Level Up After Having Maintained A Damage Amount

The Pokémon will evolve when leveling up and its current HP is less than its max HP by the specified amount.
