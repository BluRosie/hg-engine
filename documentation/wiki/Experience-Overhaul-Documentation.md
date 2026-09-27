# Experience Overhaul Documentation
Starting in Gen 5, Pokémon levels scaled the experience in such a way that Pokémon who defeated a much higher-level opponent gained far more experience compared to a higher-level Pokémon defeating a weaker foe.  hg-engine allows for the user to choose what experience system is best for their hack among those that are present in the official series.  All of the base experiences have been moved into their own file, [``data/BaseExperienceTable.c``](https://github.com/BluRosie/hg-engine/blob/main/data/BaseExperienceTable.c).

### Scaled Rate
The formula for the experience without any multipliers is as such:

$$ exp = \lfloor\frac{b  L}{5}\rfloor * \lfloor\frac{(2L + 10)^2}{\lfloor (L+Lp+10)^{2.5} \rfloor}\rfloor * \lfloor\sqrt{2L + 10}\rfloor $$

``b`` is the base experience of the Pokémon defeated.  ``L`` is the level of the Pokémon defeated + 1 to better match expected output.  ``Lp`` is the level of the Pokémon gaining experience.  All of this attempts to emulate the formula from Gen 5, but due to working around the limitations of a 32-bit data type, the experience gain may be slightly off.  The floors in the formula are the result of not using float data types to perform calculations, just integers.

This is then split in half if a Pokémon holding the Exp. Share is present, at which point half of the experience goes to both holders and non-holders split up "evenly" between them (which is to say, each Pokémon has their own share individually calculated, and the amount that participated further divides the calculation).  Lucky Egg bonuses and traded Pokémon bonuses are also applied here.

### Flat Rate
There is a configuration in [``include/config.h``](https://github.com/BluRosie/hg-engine/blob/main/include/config.h) that allows you to revert to a flat rate, i.e. the default Heart Gold rate.  This is done by setting the ``EXPERIENCE_FORMULA_GEN`` configure define to a generation in which a flat experience rate was present.

The formula for the experience under this system without any multipliers is as such:

$$ exp = \lfloor\frac{b  L}{7}\rfloor $$

``b`` is the base experience of the Pokémon defeated multiplied by 255 / 390 so as not to artificially inflate the experience gained.  This factor is based on Audino having a 390 base experience yield, which I assume would map to 255 in the single-byte system.  This specifically tries to correct down for experience that is gained with the new larger base stats.  ``L`` is the level of the Pokémon defeated.
