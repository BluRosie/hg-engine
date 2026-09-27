# Form System Documentation
This page serves to document the additional forme changes and to document how the form system works.

Firstly, the form system in HGSS is very all over the place.  Each individual system (icons, learnsets, personal data, etc.) has some sort of appending to the original narc that occurs that contains the form data.  Most functions then have a massive if statement table to determine what the actual index is.  Icons specifically have 50 extra slots after the original 493.

As a result of this, expanding this system starts at 544.  Expanded Pokémon indices go from 544 (Victini) to 955 (Enamorus).  New form data, in all narc files, then resumes at 956.  Forms for Gens 3 and 4 still use their sprite and icon data from the vanilla game for the most part (as that is still handled by the if statements), but new forms are handled by the table ``PokeFormDataTbl`` in [``src/pokemon.c``](https://github.com/BluRosie/hg-engine/blob/main/src/pokemon.c).  This is an array of ``FormData`` structures and specifies the base species, the form number, whether or not the form should be reverted after battle, and the new species that the form data will come from.

The ``FormData`` structure:
```c
struct FormData
{
    u16 species;
    
    u16 form_no:15;
    u16 need_rev:1;
    
    u16 file;
};
```
This structure is then iterated through to find which file to read from for Pokémon with forms.

Adding new forms is then exactly just like adding new species, just adding the new data to all the folders necessary.  We use ``SPECIES_*`` constants just about everywhere we can--the new form data is no exception, with each form data getting a constant, i.e. ``SPECIES_MELOETTA_PIROUETTE`` or ``SPECIES_KYUREM_BLACK``.

## Supported Forms
<details> <!-- megas -->
<summary>- Mega Evolutions</summary>
<br>

    Venusaur
    Charizard X
    Charizard Y
    Blastoise
    Beedrill
    Pidgeot
    Alakazam
    Slowbro
    Gengar
    Kangaskhan
    Pinsir
    Gyarados
    Aerodactyl
    Mewtwo X
    Mewtwo Y
    Ampharos
    Steelix
    Scizor
    Heracross
    Houndoom
    Tyranitar
    Sceptile
    Blaziken
    Swampert
    Gardevoir
    Sableye
    Mawile
    Aggron
    Medicham
    Manectric
    Sharpedo
    Camerupt
    Altaria
    Banette
    Absol
    Glalie
    Salamence
    Metagross
    Latias
    Latios
    Rayquaza (can mega evolve when it knows Dragon Ascent)
    Lopunny
    Garchomp
    Lucario
    Abomasnow
    Gallade
    Audino
    Diancie
</details>
<details> <!-- primal reversions -->
<summary>- Primal Reversions</summary>
<br>

    Kyogre
    Groudon
</details>
<details> <!-- alolans -->
<summary>- Alolan Forms</summary>
<br>

    Rattata
    Raticate
    Raichu
    Sandshrew
    Sandslash
    Vulpix
    Ninetales
    Diglett
    Dugtrio
    Meowth
    Persian
    Geodude
    Graveler
    Golem
    Grimer
    Muk
    Exeggutor
    Marowak
</details>
<details> <!-- galarians -->
<summary>- Galarian Forms</summary>
<br>

    Meowth
    Ponyta
    Rapidash
    Slowpoke
    Slowbro
    Farfetch'd
    Weezing
    Mr. Mime
    Articuno
    Zapdos
    Moltres
    Slowking
    Corsola
    Zigzagoon
    Linoone
    Darumaka
    Darmanitan (both Zen Modes included)
    Yamask
    Stunfisk
</details>
<details> <!-- cosmetics -->
<summary>- Cosmetic Forms</summary>
<br>
<details>
<summary>    Pikachu</summary>

        Cosplay
        Rock Star
        Belle
        Pop Star
        Ph.D
        Libre
        Original Cap
        Hoenn Cap
        Sinnoh Cap
        Unova Cap
        Kalos Cap
        Alola Cap
        Partner Cap
        World Cap
</details>
<details>
<summary>    Basculin</summary>

        Red Stripe is form 0
        Blue Stripe
        White Stripe
</details>
<details>
<summary>    Deerling</summary>

        Spring is form 0
        Summer
        Autumn
        Winter
</details>
<details>
<summary>    Sawsbuck</summary>

        Spring is form 0
        Summer
        Autumn
        Winter
</details>
    Tornadus Therian
    <br>
    Thundurus Therian
    <br>
    Landorus Therian
    <br>
<details>
<summary>    Kyurem</summary>

        White
        Black
</details>
    Keldeo Resolute
    <br>
<details>
<summary>    Genesect</summary>

        Douse
        Shock
        Burn
        Chill
</details>
    Greninja Battle Bond
    <br>
<details>
<summary>    Vivillon</summary>

        Meadow is form 0
        Polar
        Tundra
        Continental
        Garden
        Elegant
        Meadow
        Modern
        Marine
        Archipelago
        High Plains
        Sandstorm
        River
        Monsoon
        Savanna
        Sun
        Ocean
        Jungle
        Fancy
        Poké Ball
</details>
<details>
<summary>    Flabébé</summary>

        Red Flower is form 0
        Yellow Flower
        Orange Flower
        Blue Flower
        White Flower
</details>
<details>
<summary>    Floette</summary>

        Red Flower is form 0
        Yellow Flower
        Orange Flower
        Blue Flower
        White Flower
        Eternal Flower
</details>
<details>
<summary>    Florges</summary>

        Red Flower is form 0
        Yellow Flower
        Orange Flower
        Blue Flower
        White Flower
</details>
<details>
<summary>    Furfrou</summary>

        Natural is form 0
        Heart
        Star
        Diamond
        Debutante
        Matron
        Dandy
        La Reine
        Kabuki
        Pharaoh
</details>
<details>
<summary>    Pumpkaboo</summary>

        Medium is form 0
        Small
        Large
        Super
</details>
<details>
<summary>    Gourgeist</summary>

        Medium is form 0
        Small
        Large
        Super
</details>
    Hoopa Unbound
    <br>
<details>
<summary>    Oricorio</summary>

        Baile is form 0
        Pom Pom
        Pa'u
        Sensu
</details>
    Rockruff Own Tempo
    <br>
<details>
<summary>    Lycanroc</summary>

        Day is form 0
        Midnight
        Dusk
</details>
    Magearna Original
    <br>
    Toxtricity Low Key
    <br>
    Sinistea Antique
    <br>
    Polteageist Antique
    <br>
<details>
<summary>    Alcremie</summary>

        Strawberry Sweet is form 0
        Berry Sweet
        Love Sweet
        Star Sweet
        Clover Sweet
        Flower Sweet
        Ribbon Sweet
</details>
    Urshifu Rapid Strike
    Zarude Dada
<details>
<summary>    Calyrex</summary>

        Ice Rider
        Shadow Rider
</details>
</details>
<details> <!-- battle forms -->
<summary>- Battle Forms</summary>
<br>
<details>
<summary>    Castform</summary>

        Normal is form 0
        Sunny
        Rainy
        Snowy
</details>
    Cherrim Sunshine
    <br>
    Shellos East Sea
    <br>
    Gastrodon East Sea
    <br>
    Dialga Origin
    <br>
    Palkia Origin
    <br>
    Meloetta Pirouette
    <br>
    Greninja Ash
    <br>
    Aegislash Blade
    <br>
    Xerneas Active
    <br>
<details>
<summary>    Zygarde</summary>

        50% is form 0
        10%
        10% Power Construct
        50% Power Construct
        10% Complete
        50% Complete
</details>
    Wishiwashi School
    <br>
<details>
<summary>    Minior</summary>

        Red is form 0
        Orange
        Yellow
        Green
        Blue
        Indigo
        Violet
        Core Red
        Core Orange
        Core Yellow
        Core Green
        Core Blue
        Core Indigo
        Core Violet
</details>
    Mimikyu Busted
    <br>
<details>
<summary>    Necrozma</summary>

        Base is form 0
        Dusk Mane
        Dawn Wings
        Ultra Dusk Mane
        Ultra Dawn Wings
</details>
<details>
<summary>    Cramorant</summary>

        Base is form 0
        Gulping
        Gorging
</details>
    Eiscue NoIce Face
    <br>
    Morpeko Hangry
    <br>
    Zacian Crowned
    <br>
    Zamazenta Crowned
    <br>
    Eternatus Eternamax
    <br>
    Enamorus Therian
    <br>


</details>
<details> <!-- hisuians -->
<summary>- Hisuian Forms</summary>
<br>

    Growlithe
    Arcanine
    Voltorb
    Electrode
    Typhlosion
    Qwilfish
    Sneasel
    Samurott
    Lilligant
    Zorua
    Zoroark
    Braviary
    Sliggoo
    Goodra
    Avalugg
    Decidueye
</details>
<details> <!-- significant gender differences -->
<summary>- Significant Gender Differences</summary>
<br>

    Unfezant
    Frillish
    Jellicent
    Pyroar
    Meowstic
    Indeedee
    Basculegion
    Oinkologne
</details>
<details> <!-- paldean forms -->
<summary>- Paldean Forms</summary>
<br>

<details>
<summary>    Maushold</summary>

        Base is Family of 4
        Family of 3
</details>
<details>
<summary>    Squawkabilly</summary>

        Green is form 0
        Blue
        Yellow
        White
</details>
<details>
<summary>    Palafin</summary>

        Zero is form 0
        Hero
</details>
<details>
<summary>    Tatsugiri</summary>

        Curly is form 0
        Droopy
        Stretchy
</details>
<details>
<summary>    Dudunsparce</summary>

        Four Segment is form 0
        Three Segment
</details>
<details>
<summary>    Gimmighoul</summary>

        Base is form 0
        Roaming
</details>
<details>
<summary>    Wooper</summary>

        Base is form 0
        Paldean
</details>
<details>
<summary>    Tauros</summary>

        Base is form 0
        Combat
        Blaze
        Aqua
</details>
<details>
<summary>    Revavroom</summary>

        Base is form 0
        Segin
        Schedar
        Navi
        Ruchbah
        Caph
</details>
<details>
<summary>    Poltchageist/Sinistcha</summary>

        Base is form 0
        Antique
</details>
<details>
<summary>    Ogerpon</summary>

        Base is form 0
        Wellspring Mask
        Hearthflame Mask
        Cornerstone Mask
</details>
<details>
<summary>    Terapagos</summary>

        Base is form 0
        Terastal
        Stellar
</details>
<details>
<summary>    Ursaluna</summary>

        Base is form 0
        Bloodmoon
</details>

</details>

## Additional Form-Changing Methods
Along with new forms, various new methods to change specific Pokémon forms have also been implemented.  These are discussed below.

### Significant Gender Differences
While Gen 4 was the generation that introduced gender differences, the things that could differ between genders was very limited.  As a result, significant gender differences (that at least change icons between genders) require separate forms.

Unfezant, Frillish, Jellicent, Pyroar, Meowstic, Indeedee, and Basculegion are currently the only ones this applies to.  These wild Pokémon--when generated--will swap between the forms at a 50/50 rate except for Pyroar, which is female 7/8 of the time in accordance with the gender split of future generations.  This is governed in [`src/pokemon.c`](https://github.com/BluRosie/hg-engine/blob/main/src/pokemon.c#L3171) in `UpdatePassiveForms`.

Tranquill, Litleo, Espurr, and White Stripe Basculin all have their evolutions tweaked to force females to evolve into the female form.  Specifically, when a female evolves, it will set its form to the female form.  This is done by an evolution table overhaul that allows us to specify forms as such:

```
evodata SPECIES_LITLEO
    evolutionwithform EVO_LEVEL_MALE, 35, SPECIES_PYROAR, 0
    evolutionwithform EVO_LEVEL_FEMALE, 35, SPECIES_PYROAR, 1
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
terminateevodata
```

Specifying a form of 0 in the evolution doesn't actually change forms upon evolution.  This can be solved by specifying an invalid form for the Pokémon in the form field, such as is done for White-Stripe Basculin, with form 0, to evolve into Basculegion:

```
// evolution methods/parameters are placeholder until those have been implemented
evodata SPECIES_BASCULIN_WHITE_STRIPED
    evolutionwithform EVO_LEVEL_MALE, 0, SPECIES_BASCULEGION, 2 // set to invalid form to force loading male form assets
    evolutionwithform EVO_LEVEL_FEMALE, 0, SPECIES_BASCULEGION, 1
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
    evolution EVO_NONE, 0, SPECIES_NONE
terminateevodata
```


### Mega Evolution
Every mega evolution is actually just a form of the base Pokémon.  When holding the specific mega stone for the species, the Pokémon will mega evolve.

### Deerling and Sawsbuck
Deerling and Sawsbuck in the PC do not change form.  They only change form in the party.  

They update at the same time as the checks for Shaymin that would revert to Land forme would update--time needs to move forward for it to actually change, moving backwards will not properly update the party.

Wild Deerling and Sawsbuck are generated according to the current season, which is just Spring - Summer - Fall - Winter, in that order, starting from January:

| Season | Months                  |
|--------|-------------------------|
| Spring | January, May, September |
| Summer | February, June, October |
| Autumn | March, July, November   |
| Winter | April, August, December |

### Darmanitan's Zen Mode
Darmanitan with their Hidden Ability bit set get the ability Zen Mode.  This allows for Darmanitan to swap between Zen Mode and Normal Mode.  Zen Mode activates in-battle when Darmanitan's HP falls below half, turning it to Zen Mode Darmanitan.  Galarian Darmanitan will become Galarian Zen Mode Darmanitan as well.

### Kyurem Black & White
Kyurem that have the DNA Splicers used on them set a chain of events off:
- First, it checks for the forme of the Kyurem.
- If the forme is 0, then it looks for a Reshiram or a Zekrom in the party starting from the front going to the back.
    - If it finds one, then it stores the Reshiram or Zekrom in the save as it is.  A flag (separate from the scripting flags) also in the save is set that tells us that a Reshiram/Zekrom is stored.
    - The Reshiram or the Zekrom is deleted from the party.
    - The Kyurem then transforms into the respective forme (White or Black depending on if Reshiram or Zekrom was chosen).  
    - Finally, Scary Face and Glaciate are replaced with Fusion Flare/Bolt and Ice Burn/Freeze Shock, respectively (if they are present).
- If the forme is not 0 and a Reshiram/Zekrom is stored in the save properly, then it looks for a free party spot starting from the front going to the back.
    - If there is a free spot, then the Reshiram or Zekrom is added to the first available free spot.
    - The Reshiram or the Zekrom is deleted from the save and the flag is cleared.
    - The Kyurem then reverts to forme 0.
    - Fusion Flare/Bolt is replaced with Scary Face, and Ice Burn/Freeze Shock is replaced with Glaciate.

### Keldeo Resolute - TODO
While there is currently no way to transform Keldeo Ordinary to Resolute, Keldeo Resolute, upon forgetting Sacred Sword, will transform back into Keldeo Ordinary.

### Meloetta Pirouette
A Meloetta using Relic Song changes into its Pirouette Forme.  When switching out or fainting, the Meloetta changes back to its normal forme.

### Genesect Formes
A Genesect given any one of its Drive items will have that drive inserted on its head.

### Therian Formes
Tornadus, Thundurus, Landorus, and Enamorus--when a Reveal Mirror is used on them--will transform to and from their Therian formes and their Incarnate formes.

### Greninja Ash - TODO
A Greninja with form id 1 will have the Battle Bond ability.  In battle, said Greninja will transform into Ash Greninja when a move it uses directly causes another Pokémon to faint.  This reverts upon fainting or the battle's ending.  However, a Greninja that has transformed can still retransform upon revival in battles.

### Vivillon - TODO
Wild Vivillon will default to Meadow form until the player sets their location in the GTS.  Upon doing this, the Vivillon form will change to emulate how it is described in Bulbapedia.  The full list of countries that give a specific form are:

<details>
<summary>Vivillon Forms per Location</summary>

<br>

| Location  | Vivillon Form |
|-----------|---------------|
| Country   | Meadow        |

</details>

### Aegislash Blade
Aegislash with Stance Change will transform into Blade Form when attacking in battle, and Shield Form when using King's Shield in battle.  It also reverts when switching and on battle end.

### Pumpkaboo/Gourgeist
Pumpkaboo and Gourgeist automatically randomly choose between their forms in wild battles.

### Xerneas Active
In battle, Xerneas turns into Active Forme.  It reverts at the end of the battle.

### Zygarde Stages - TODO

### Hoopa Unbound - TODO

### Rockruff Behavior
A Rockruff that evolves at Night will evolve into Lycanroc's Midnight form.  When evolving during the day, the Daytime form will be the target.

A Rockruff with form 1 is an Own Tempo Rockruff.  This can only evolve into Lycanroc's Dusk Form when it levels up during Dusk, which is the hour of 5PM.

### Minior Meteor/Core and Color - TODO

### Necrozma (Ultra) Dusk Mane/Dawn Wings - TODO

### Cramorant Gulping/Gorging - TODO

### Toxtricity Low Key
A Toxel with any of the Low Key natures will evolve into a Low Key Toxtricity.  The other natures will evolve into an Amped Toxtricity.

The Low Key natures are as follows: Adamant, Brave, Docile, Hardy, Hasty, Impish, Jolly, Lax, Naive, Naughty, Quirky, Rash, and Sassy.

### Sinistea/Polteageist/Poltchageist/Sinistcha Antique
Sinistea, Polteageist, Poltchageist, and Sinistcha all have a 5% chance of generating as their authentic form.  There is no visible difference.

### Alcremie - TODO

### Eiscue Noice Face
When damaged in battle by a physical move, the Ice Face ability activates and the Eiscue is transformed into its Noice Face form.  This prevents the damage from being applied.

If Hail then starts after the Ice Face has been broken through, the Ice Face will regenerate.

### Morpeko Hangry - TODO

### Zacian/Zamazenta Crowned - TODO

### Urshifu Rapid Strike - TODO

### Zarude Dada - TODO

### Calyrex Behavior - TODO

### Dunsparce/Dudunsparce
A wild Dunsparce or Dudunsparce has a 1% chance of being a three-segment form Dudunsparce instead of the normal four-segment.

### Tandemaus/Maushold
A wild Tandemaus or Maushold has a 1% chance of being a family of three Maushold instead of the normal family of four.

### Tatsugiri
A wild Tatsugiri will randomly be any of its Curly, Droopy, or Stretchy forms.
