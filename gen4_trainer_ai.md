# Generation 4 Pokemon Trainer AI

This document aims to be a comprehensive reference to players for how the generation 4 trainer AI behaves in battle. Each NPC trainer is assigned a set of flags, each of which determines the behavior of the AI. When considering what move to use on any given turn, the AI will initialize the "score" of all of its moves to 100. Then, it will apply score modifiers to each move according to the behavior flags given to it and choose the move with the highest score. If two moves are given the same score, then the chosen move will be selected from among them at-random.

This is a living document; the contents herein are subject to change for clarity or improved accuracy.

Information herein is sourced from the trainer AI scripts in `pokeplatinum`.

In general:
- Unless otherwise specified, none of these scores are cumulative within the scope of their respective flag. That is, if a move says that it is -10 for two different conditions within the Basic flag, the move is scored at -10, not -20. However, if the move is scored at -10 for a condition within both the Basic flag and the Expert flag, the move is scored at -20.
- If a move or an effect is not mentioned within a particular flag, that move/effect's score is not modified.

As an additional preface, the following move effects will *never* be regarded for damage-calculation in scoring. That is, they will always start with a score of 0 and be modified by their respective routines.

* Explosion and Self-Destruct
* Dream Eater
* Razor Wind (charge turn with high crit)
* Sky Attack (charge turn with high crit and chance to flinch)
* Recharge turns (Hyper Beam, Giga Impact, etc.)
* Skull Bash (charge turn, defense up)
* Solar Beam and Solar Blade
* Spit Up
* Focus Punch
* Superpower
* Eruption, Water Spout
* Sucker Punch
* Head Smash (1/2 recoil damage)

## Table of Contents

1. [Basic Flag](#basic-flag)
2. [Evaluate Attack Flag](#evaluate-attack-flag)
3. [Expert Flag](#expert-flag)
4. [Setup First Turn Flag](#setup-first-turn-flag)
5. [Risky Flag](#risky-flag)
6. [Prioritize Damage Flag](#prioritize-damage-flag)
7. [Baton Pass Flag](#baton-pass-flag)
8. [Tag Strategy Flag](#tag-strategy-flag)
9. [Check HP Flag](#check-hp-flag)
10. [Weather Flag](#weather-flag)
11. [Harassment Flag](#harassment-flag)

## Basic Flag

Philosophy: Discourage moves which would result in a (literally or functionally) wasted turn or which would immediately benefit the opponent.

Almost all trainers have this routine. This AI will *never* target a partner with any single-target move, even if it would be beneficial.

### Step 1: Check for Immunities

1. If the target is immune to a move due to its tying, -10.
2. If the target is immune to a move due to its ability and the attacker's ability is not Mold Breaker, -10. The checked abilities are:
  - Volt Absorb (Electric)
  - Motor Drive (Electric)
  - Water Absorb (Water)
  - Flash Fire (Fire)
  - Wonder Guard (any move other than Super Effective)
  - Levitate (Ground)
  - Soundproof (any sound-based move)
  - **Note**: Dry Skin is *absent* from this check due to a bug in the AI script.

### Step 2: Score a Move According To Its Effect

None of these are scored according to a specific move, but instead by their particular effect. Changing one move's effect to another move's effect would, thus, make the AI see them the same way.

#### Sleep (Status)

Example moves: Hypnosis, Grass Whistle, Yawn

If the target cannot be put to sleep for any of the following reasons, score -10:
  - The target already has a status condition.
  - The target is protected by Safeguard.
  - The target's ability is Insomnia or Vital Spirit.

#### Poison (Status)

If the target is immune to the usual effects of Poison for any of the following reasons, score -10:
  - Either of the target's types are Steel and/or Poison.
  - The target's ability is Immunity, Magic Guard, or Poison Heal.
  - The target's ability is Leaf Guard, and the weather is Sun.
  - The target's ability is Hydration, and the weather is Rain.
  - The target already has a status condition.
  - The target is protected by Safeguard.

#### Paralysis (Status)

Example moves: Stun Spore, Thunder Wave

If the target cannot be paralyzed for any of the following reasons, score -10:
  - The target is immune to the move by its typing.
  - The target's ability is Limber or Magic Guard. (the latter is immune to full-paralysis in Gen4)
  - The move is Thunder Wave, the target's ability is Motor Drive or Volt Absorb, and the attacker's ability is not Mold Breaker.
  - The target already has a status condition.
  - The target is protected by Safeguard.

#### Burn (Status)

Example moves: Will-o-Wisp

If the target is immune to the usual effects of Burn for any of the following reasons, score -10:
  - Either of the target's types are Fire.
  - The target's ability is either Water Veil or Magic Guard.
  - The target already has a status condition.
  - The target is protected by Safeguard.

#### Confusion (Status)

Example moves: Swagger, Confuse Ray

1. If the target is already confused, score -5.
2. If the target cannot be confused for any of the following reasons, score -10:
  - The target's ability is Own Tempo.
  - The target is protect by Safeguard.

#### Attract (Status)

If the target cannot be infatuated for any of the following reasons, score -10:
  - The target is already infatuated.
  - The target's ability is Oblivious.
  - The attacker and target are the same gender.
  - The target has no gender.

#### Self-Destruct / Explosion

1. If the target is immune to the move due to its typing, score -10.
2. If the target's ability is Damp and the attacker's ability is not Mold Breaker, score -10.
3. If the attacker is on their last Pokemon and:
  - The defender is also on their last Pokemon, score -1.
  - The defender is *not* on their last Pokemon, score -10.

#### Nightmare

1. If the target is already under the effect of Nightmare or has the ability Magic Guard, score -10.
2. If the target is not asleep, score -8.

#### Dream Eater

1. If the target is not asleep, score -8.
2. If the target is immune to the move due to its typing, score -10.

#### Belly Drum

If the attacker is at less than 51% HP (rounded down), score -10.

e.g., a Snorlax with 350 maximum HP at 177 HP would never Belly Drum, but at 178 HP, it could Belly Drum.

#### Stat Boosting Moves (Status)

Example moves: Howl, Swords Dance

1. If the boosted stat is Speed and Trick Room is currently active, score -10.
2. If the boosted stat is Accuracy or Evasion and the attacker's ability is No Guard, score -10.
2. If the attacker's ability is Simple and they are already at +3 or higher in the respective stat, score -10.
3. If the attacker is already at +6 in the respective stat, score -10.

#### Stat Reducing Moves (Status)

Example moves: Growl, Scary Face

1. If the reduced stat is Speed and Trick Room is currently active, score -10.
2. If the reduced stat is Attack and the target's ability is Hyper Cutter, score -10.
3. If the reduced stat is Speed and the target has Speed Boost, score -10.
4. If the reduced stat is Accuracy or Evasion and either the attacker's ability and/or the target's ability is No Guard, score -10.
5. If the reduced stat is Accuracy and the attacker's ability is Keen Eye, score -10.
6. If the attacker's ability is Clear Body or White Smoke, score -10.
7. If the target is already at -6 in the respective stat, score -10.

#### Stat Stage Resetting/Copying/Swapping Moves

Example moves: Haze, Psych Up, Heart Swap

If the attacker has a reduced stat stage or the target has a boosted stat stage for any stat, no change.

Otherwise, score -10.

e.g., the AI mon will consider using Haze if it is at -1 Attack or if any target is at +1 Defense (regardless of any other boosts or drops).

#### Non-Standard Damage and Charge Turn Moves

This section includes any move which does not follow the standard damage formula, deals a flat amount of damage, or has a "variable" power.

Charge Turn Moves:
- Razor Wind
- Sky Attack
- Blast Burn
- Frenzy Plant
- Giga Impact
- Hydro Cannon
- Hyper Beam
- Roar of Time
- Rock Wrecker
- Skull Bash
- Focus Punch
- Superpower (for some reason)

Variable Power / Flat Damage Moves:
- Bide
- Super Fang
- Dragon Rage
- Night Shade
- Seismic Toss
- Psywave
- Counter
- Flail
- Reversal
- Return
- Present
- Frustration
- Sonic Boom
- Hidden Power
- Mirror Coat
- Endeavor
- Low Kick
- Grass Knot
- Gyro Ball
- Trump Card
- Crush Grip
- Wring Out
- Punishment
- Magnitude

1. If the target is immune to the move due to its typing or ability, score -10.
  - **Note**: Hidden Power's variable typing *is* considered by this routine; it is seen as its resultant type.
2. If the target's ability is Wonder Guard, the attacker's ability is not Mold Breaker, and this move would not be super effective, score -10.

#### Moves Which Force Switches

Example moves: Roar, Whirlwind

1. If the target has no Pokemon to be sent in after the forced switch, score -10.
2. If the target's ability is Suction Cups and the attacker's ability is not Mold Breaker, score -10.

#### Recovery Moves

Example moves: Roost, Synthesis, Recover

If the attacker is at 100% HP, score -8. Otherwise, no change.

#### Reflect / Light Screen / Mist / Safeguard

If the attacker is already under the respective effect, score -8. Otherwise, no change.

#### OHKO Moves

Example moves: Horn Drill, Fissure, Sheer Cold, Guillotine

1. If the target is immune to the move due to its typing, score -10.
2. If the target's ability is Sturdy and the attacker's ability is not Mold Breaker, score -10.
3. If the target's level is greater than the attacker's level, score -10.

#### Focus Energy / Ingrain / Mud Sport / Water Sport / Camouflage / Power Trick / Lucky Chant / Aqua Ring / Magnet Rise

If the attacker is already under the respective effect, score -10. Otherwise, no change.

Special case for Magnet Rise: If the attacker's ability is Levitate or has a Flying-type, score -10.

#### Substitute

1. If the attacker is already under the effect of Substitute, score -8.
2. If the attacker's current HP is less than 26% of their maximum HP, score -10.

#### Leech Seed

If the target is already Seeded, a Grass-type, or has the ability Magic Guard, score -10.

#### Disable / Encore

If the target is already under the respective effect, score -8.

#### Snore / Sleep Talk

If the attacker is not currently asleep, score -8.

#### Lock On / Mean Look / Foresight / Perish Song / Torment / Miracle Eye / Heal Block / Gastro Acid

If the target is already under the respective effect, score -10.

Special case for Lock On: if either the target's ability and/or the attacker's ability is No Guard, score -10.

Special case for Gastro Acid: if the target's ability is one of Multitype, Truant, Slow Start, Stench, Run Away, Pickup, or Honey Gather, score -10.

#### Curse

1. If the attacker is a Ghost-type and the target is either already Cursed or has the ability Magic Guard, score -10.
2. If the attacker's ability is Simple and *either* Attack or Defense are already +2, score -10.
3. If *either* the attacker's Attack or Defense are already +6, score -10.

#### Hazard-Setting Moves (Spikes, Toxic Spikes, Stealth Rock)

1. If the target's side of the field already has the maximum value for the hazard (3 layers of Spikes, 2 layers of Toxic Spikes, 1 layer of Stealth Rocks), score -10.
2. If the target is on their last Pokemon, score -10.

#### Weather-Setting Moves (Sandstorm, Rain Dance, Sunny Day, Hail)

If the weather is already of the respective type, score -8.

Special case for Rain: If the attacker's ability is *neither* Swift Swim nor Hydration, the defender's ability is Hydration, and the defender is currently under a non-volatile status condition, score -8.

Special case for Sun: If the attacker's ability is *neither* Flower Gift, Leaf Guard, nor Solar Power, the defender's ability is Hydration, and the defender is currently under a non-volatile status condition, score -10.

Special case for Hail: If the defender's ability is Ice Body, score -8. However, if the attacker's ability is *also* Ice Body, score additional +8 (net +0).

#### Future Sight / Doom Desire

If either the attacker's side or target's side are currently pending attack by a Future Sight effect, score -12.

#### Baton Pass

If the attacker is on its last Pokemon, score -10.

#### Fake Out

If it is not the attacker's first turn in battle, score -10.

#### Stockpile

If the Stockpile count is already at 3, score -10.

#### Spit Up / Swallow

If the target is immune to the move due to its typing or the attacker's Stockpile count is 0, score -10. Swallow will still receive the -10 modifier against a Ghost-type, even though it is a Status move.

Swallow is otherwise treated like a standard Recovery move.

#### Memento

1. If the target's ability is Clear Body or White Smoke and the attacker's ability is not Mold Breaker, score -10.
2. If the target's Attack is at -6, score -10.
3. If the target's SpAttack is at -6, score -8.
4. If the attacker is on their last Pokemon, score -10.

#### Helping Hand

If the battle type is not Doubles, score -10.

#### Trick / Switcheroo / Knock Off

If the target's ability is Sticky Hold or the target does not have an item, score -10. (Mold Breaker is *not* considered for Knock Off.)

#### Imprison

If either the attacker or the target are already under the effect of Imprison, score -10.

#### Refresh

If the attacker does not have a Refreshable status (Burn, Poison, Paralyze), score -10.

#### Tickle

1. If the target's ability is Clear Body or White Smoke and the attacker's ability is not Mold Breaker, score -10.
2. If the target's Attack is at -6, score -10.
3. If the target's Defense is at -6, score -8.

#### Cosmic Power / Bulk Up / Calm Mind / Dragon Dance

1. Special case for Dragon Dance: if Trick Room is currently in effect, score -10.
2. If the attacker has Simple and either of the stats to be boosted is already at +3, score -10.
3. If the first stat to be boosted is already at +6, score -10.
4. If the second stat to be boosted is already at +6, score -8.

#### Gravity / Tailwind

If the respective effect is already active for the field / the attacker's side, score -10.

Special case for Tailwind: if Trick Room is currently active, score -10.

#### Trick Room

If the attacker is faster than (or speed ties with) any opposing Pokemon, score -10.

#### Healing Wish / Lunar Dance

Start at score -20.

1. If the attacker is on their last Pokemon, score additional -10.
2. If none of the attacker's party members are statused or at less than 100% HP, score additional -10.

Special case for Lunar Dance: In addition to the conditions for (2), no party member must be at less than maximum PP on all of their moves.

#### Natural Gift

1. If the attacker is not holding a berry, score -10.
2. If the target is immune to the held berry's Natural Gift type, score -10.

#### Acupressure

If any of the attacker's stat stages are already at +6 (or +3, if they have Simple), score -10.

#### Metal Burst

1. If the target's ability is Stall or they are holding a Shiny Stone, score -10. (yes, a Shiny Stone.)
2. If the attacker's ability is Stall or they are holding a Shiny Stone, score +10.
2. If the attacker is faster than the target, score -10.

#### Embargo

1. If the target is already under the effect, score -10.
2. If the target's recyclable item is NONE, no additional modifiers.
3. If the battle is taking place in the Frontier, score -10.

#### Fling

1. If Fling would have 0 base power from the attacker's held item, score -10.
2. If the attacker's ability is Multitype, score -10.
3. If Fling would incur a status effect (Poison, Burn, or Paralyze) that the target is immune to for any reason, score -5.

#### Psycho Shift

1. If the attacker does not have a status condition, score -10.
2. If the target already has a status condition or is protected by Safeguard, score -10.
3. If the status condition is Poison and:
	- the attacker's ability is Poison Heal, score -10.
	- the target is immune to the usual effects of Poison for any reason, score -10.
4. If the status condition is Burn and the target is immune to the usual effects of Burn for any reason, score -10.
5. If the status condition is Paralysis and the target's ability is Limber, score -10.

Note that Magic Guard is ignored for the Paralysis check.

#### Copycat

If it's the first turn of the battle and the attacker is faster than all opponents, score -10. Otherwise, no change.

#### Power Swap / Guard Swap

If the move would result in a net-negative change in stat stages for both of the affected stats, score -10. Otherwise, no change.

#### Last Resort

If the attacker has yet to use all of its other moves, score -10.

#### Worry Seed

1. If the target's ability is any of Truant, Insomnia, Vital Spirit, or Multitype, score -10.
2. If the target is currently asleep and does not know either of Sleep Talk or Snore, score -10.

#### Defog

1. If the target's Evasion is higher than -6 or has Light Screen or Reflect active, no changes.
2. If the current weather is Deep Fog, no changes.
3. If the target is on their last Pokemon, score -10.
4. If the target's side of the field has none of Spikes, Stealth Rock, or Toxic Spikes active, score -10.

#### Captivate

1. If the target's ability is any of Oblivious, Clear Body, or White Smoke and the attacker's ability is not Mold Breaker, score -10.
2. If the attacker and the target are of the same gender, score -10.
3. If the target has no gender, score -10.
4. If the target's Special Attack is already at -6, score -10.

## Evaluate Attack Flag

Philosophy: Prioritize raw damage output over all other outcomes.

This flag will *never* target its partner with a move, even if it would be beneficial.

1. If the current move's maximum damage kills and...
    1. The move's effect is Self-Destruct, no additional scoring.
    2. The move's effect is Focus Punch, Sucker Punch, or Future Sight, ~33.6% chance of score +4.
    3. The move's effect is Priority +1, score +6. (Note that this does *not* include moves like Fake Out.)
    4. The move's effect matches none of the above, score +4.
2. If the current move is not the highest overall damage among all moves for the target, score -1.
3. If the current move's effect is Self-Destruct, Focus Punch, or Sucker Punch, ~80% chance of score -2.
4. If the current move is quad-effective, 31.25% chance of score +2.

## Expert Flag

Philosophy: Provide additional logic to encourage/discourage certain move effects in particular circumstances.

### Sleep-Inducing Status Moves (e.g., Hypnosis)

If the attacker knows a move which requires the target to be asleep (Dream Eater or Nightmare effects), 50% chance of score +1.

### Poison-Inducing Status Moves (e.g. Poison Gas)

If the attacker's HP is < 50% or the defender's HP is <= 50%, score -1.

### Paralysis-Inducing Status Moves (e.g. Thunder Wave)

If the attacker is slower than its target, 92.2% chance of score +3.

If the attacker's HP is <= 70%, score -1.

### Confusion-Inducing Status Moves (e.g. Supersonic, Confuse Ray)

If the target's HP <= 70%, 50% chance of additional score -1.

If the target's HP is also <= 50%, additional score -1.

If the target's HP is also <= 30%, additional score -1.

Special case for Flatter: 50% chance of additional score +1.

Special cases for Swagger:
- If the attacker does not know Psych Up, 50% chance of additional score +1.
- If the attacker *does* know Psych Up, instead execute the following routine and ignore all other above logic:
  - If the target's attack stat is -3 or higher, score -5 and terminate.
  - If it is the first turn of the battle, score +5.
  - Otherwise, score +3.

### Draining Attacks (e.g. Giga Drain)

If the target is immune to or resists the move, ~80.5% chance of score -3.

Special cases for Dream Eater:
- If the target is immune to or resists the move, always score -1 instead of the above.
- If the target does not resist the move and is asleep, 80.1% chance of score +3.

### Self-Destruct, Explosion, Memento

If the target's Evasion is at +1 stage or higher, additional score -1 to all further modifiers.

If the target's Evasion is at +3 stages or higher, 50% chance of additional score -1 to all further modifiers.

Apply an additional modifier according to the user's current HP (as a percentage):

| User HP (%)   | Additional Qualifier | Modifier                 |
| ------------: | -------------------- | ------------------------ |
|        >= 80% | Faster than target   | 80.5% chance of score -3 |
|        >= 80% | Slower than target   | 80.5% chance of score -1 |
|         > 50% | N/A                  | 80.5% chance of score -1 |
| <= 50%, > 30% | N/A                  | 50% chance of score +1   |
|        <= 30% | N/A                  | 80.5% chance of score +1 |

### Healing Wish, Lunar Dance

If the attacker's HP >= 80% and the attacker is faster than its opponent, 25% of score -5.

If the attacker's HP > 50%, 80.5% chance of score -1.

75% chance to ignore this section of modifiers:
- Start at score +1.
- If the attacker does not have a super-effective move against its opponent, 25% chance of additional score +1.
- If a party member deals more damage than the attacker, 50% chance of additional score +1.

If the attacker's HP <= 30%, 50% chance of score +1.

### Mirror Move

If the attacker is faster than its target and the last-used move by that target is in the below list, 50% chance of score +2. Otherwise, if the last-used move by the target is *not* in the table, 68.75% chance of score -1.

- Sleep Powder
- Lovely Kiss
- Spore
- Hypnosis
- Sing
- Grass Whistle

- Shadow Punch
- Sand Attack
- Smoke Screen

- Toxic

- Guillotine
- Horn Drill
- Fissure
- Sheer Cold

- Cross Chop
- Aeroblast

- Confuse Ray
- Sweet Kiss

- Screech
- Cotton Spore
- Scary Face
- Fake Tears
- Metal Sound

- Thunder Wave
- Glare
- Poison Powder
- Shadow Ball

- Dynamic Punch
- Hyper Beam
- Extreme Speed
- Thief
- Covet

- Attract
- Swagger

- Torment
- Flatter
- Trick

- Superpower
- Skill Swap

- Psycho Shift
- Power Swap
- Guard Swap
- Sucker Punch
- Heart Swap
- Switcheroo
- Captivate

### Stat-Boosting Status Moves

#### For Attacking Stats (e.g. Meditate, Nasty Plot)

If the attacker is at +3 stat stage or higher, ~60.9% chance of additional score -1.

If the attacker is at 100% HP, 50% chance of additional score +2.

If the attacker's HP is > 70%, no further score changes.

If the attacker's HP is < 40%, additional score -2.

Otherwise, ~84.4% chance of additional score -2.

#### For Defending Stats (e.g. Withdraw, Amnesia)

**Note**: Bulk Up, Calm Mind, and Cosmic Power all use this routine; the former is treated as a Defense-boosting move, while the latter two are treated as SpDefense-boosting moves.

If the attacker is at +3 stat stage or higher, ~60.9% chance of additional score -1.

If the attacker is at 100% HP, 50% chance of additional score +2.

If the attacker's HP is >= 70%, ~78.1% chance to suppress all further score modifiers.

If the attacker's HP is < 40%, additional score -2.

Otherwise:
- If the target's last-used move was a Status move, ~76.6% chance of score -2.
- If the target's last-used move matches the stat to be boosted (Physical for Defense, Special for Special Defense), 58.6% chance of score -2.
- Otherwise, score -2.

#### For Speed (e.g. Agility)

**Note**: This does *not* include Dragon Dance, which has its own routine.

If the AI is faster than its target, score -3.

If the AI is slower than its target, 72.7% chance of score +3.

#### For Accuracy (Unused by any moves in vanilla)

If the attacker is at +3 stat stage or higher, ~80.5% chance of additional score -2.

If the attacker's HP is at < 70%, score -2.

#### For Evasion (e.g. Double Team, Minimize)

If the attacker's HP is >= 90%, ~60.9% chance of additional score +3.

If the attacker is at +3 stat stage or higher, 50% chance of additional score -1.

If the target is Badly Poisoned:
- If the attacker's HP is > 50%, ~80.5% chance of additional score +3.
- If the attacker's HP is <= 50%, ~55.3% chance of additional score +3.

If the target is affected by Leech Seed, ~72.7% chance of additional score +3.

If the attacker is affected by Ingrain or Aqua Ring, 50% chance of additional score +2.

If the target is affected by Curse, ~72.7% chance of additional score +3.

If the attacker's HP is > 70%, suppress all further modifiers. Otherwise:
- If the attacker is at exactly +0 stat stage, no further score modifiers.
- If either the attacker's HP or the target's HP are < 40%, score -2.
- Otherwise, ~72.7% chance of score -2.

### Dragon Dance

If the attacker is slower than its opponent, 50% chance of score +1.

If the attacker's HP <= 50%, 72.7% chance of score -1.

### Acupressure

If the attacker's HP <= 50%, score -1.

If the attacker's HP > 90%, 75% chance of score +1.

Otherwise, 37.5% chance of score +1.

### Stat-Reducing Status Moves

#### For Attacking Stats (e.g. Growl)

If the target is at any stat stage other than +0, additional score -1. Also, further modify the score according to all of the following which apply:
- If the attacker's HP is at 90% or lower, additional score -1.
- If the target is at -3 stat stage or lower, 80.5% chance of additional score -2.

If the target's HP is at 70% or lower, additional score -2.

If the move last used by the target was not of the corresponding class (Physical/Special), 50% chance of score -2.

#### For Defending Stats (e.g. Leer)

If the attacker's HP is < 70%, 80.5% chance of additional score -2.

If the target's stat stage is otherwise at -3 or lower, 80.5% chance of additional score -2.

If the target's HP is < 70%, score -2.

#### For Speed (e.g., String Shot)

If the attacker is slower than its target, 72.7% chance of score +2.

If the attacker is faster than its target, score -3.

#### For Accuracy (e.g. Sand Attack)

If the target's HP is <= 70% and the attacker's HP is NOT >= 70%, 60.9% chance of additional score -1.

If the attacker is at -2 accuracy or lower, 68.75% chance of additional score -2.

If the target is Badly Poisoned, ~72.7% chance of additional score +2.

If the target is affected by Leech Seed, ~72.7% chance of additional score +2.

If the attacker is affected by Ingrain or Aqua Ring, 50% chance of additional score +1.

If the target is affected by Curse, ~72.7% chance of additional score +2.

If the attacker's HP is > 70%, suppress all further modifiers. Otherwise:
- If the attacker is at exactly +0 stat stage, no further score modifiers.
- If either the attacker's HP or the target's HP are < 40%, score -2.
- Otherwise, ~72.7% chance of score -2.

#### For Evasion (e.g. Sweet Scent)

If the attacker's HP is < 70%, 80.5% chance of additional score -2.

Otherwise, if the target's stat stage is -3 or lower, 80.5% chance of additional score -2.

If the target's HP is <= 70%, score -2.

### Moves Ignoring Accuracy (e.g. Aerial Ace, Shock Wave)

If the target is at +5 Evasion or higher, or the attacker is at -5 Accuracy or lower, 60.9% chance of score +2, 39.1% chance of score +1.

If the target is at +3 Evasion or higher, or the attacker is at -3 Accuracy or lower, score +1.

### Vital Throw

If the attacker is slower than its target, no change.

If the attacker's HP > 60%, no change.

If the attacker's HP < 40%, 80.5% chance of score -1.

Otherwise, 23.9% chance of score -1.

### Haze

If any of the attacker's stat stages are at +3 or higher, or any of the target's stat stages are at -3 or lower, 80.4% chance of additional score -3.

If any of the attacker's stat stages are at -3 or lower, or any of the target's stat stages are at +3 or higher, 80.4% chance of additional score +3.

Otherwise, score -1.

### Bide

If the attacker's HP is <= 90%, score -2.

### Switch-Forcing Moves (Roar, Whirlwind)

If the target has been in battle for longer than more than 3 turns, 75% chance of score +2.

If the target's side of the field has Spikes, Stealth Rock, or Toxic Spikes set, 50% chance of score +2.

If the target has a stat stage of +3 or higher in any of the following stats, 50% chance of score +2:
- Attack
- Defense
- SpAttack
- SpDefense
- Evasion

Otherwise, score -3.

### Conversion

If the attacker's HP is <= 90%, additional score -2.

If it is NOT the first global turn of the battle, ~78.1% chance of score -2.

### Recovery Moves (e.g., Recover, Synthesis, Swallow)

If the attacker is at full HP, score -3 and terminate.

If the attacker is faster than its opponent, score -8 and terminate.

If the attacker is at 70% HP or more, ~88.3% chance of score -3 and terminate.

If the opponent does not know Snatch, ~92.2% chance of score +2.


If the opponent does know Snatch, ~56.2% chance of score +2.

Special case for Sun-boosted recovery moves (Synthesis, Morning Sun, Moonlight): If the weather is Hail, Rain, or Sand, additional score -2.

### Rest

If the attacker is faster than its target:
- If the attacker is at full HP, 60.9% chance of score -8 and terminate.
- If the attacker's HP is > 50%, score -3 and terminate.
- If the attacker's HP is >= 40%, 72.7% chance of score -3 and terminate.

If the attacker is slower than its target:
- If the attacker's HP > 70%, score -3 and terminate.
- If the attacker's HP >= 60%, 80.5% chance of score -3 and terminate.

If the opponent does not know Snatch, 96.1% chance of score +3.

If the opponent knows Snatch, 77.3% chance of score +3.

### Toxic, Leech Seed

If the attacker has at least one damaging move, apply all of the following which apply:
- If the attacker's HP <= 50%, 80.5% chance of additional score -3.
- If the defender's HP <= 50%, 80.5% chance of additional score -3.

If the attacker knows a move that either increases its Special Defense by 1 stage or acts as Protect, 76.6% chance of score +2. (Note: no such move exists in Vanilla that only raises Special Defense by 1 stage.)

### Light Screen

If the attacker's HP is < 50%, score -2.

If the attacker's HP is >= 90%, 50% of additional score +1.

If the opponent's last-used move was a Special move, 75% chance of score +1.

### Reflect

If the attacker's HP is < 50%, score -2.

If the attacker's HP is >= 90%, 50% of additional score +1.

If the opponent's last-used move was a Physical move, 75% chance of score +1.

### OHKO Moves

25% chance of score +1.

### Charge Turn Moves Without Invulnerability (Razor Wind, Skull Bash, Sky Attack, Solar Beam/Blade)

If the opponent resists or is immune to the move, score -2 and terminate.

If the move would skip its charge turn in Sun and the current weather is Sun, score +2.

If the attacker is holding a Power Herb, score +2.

If the opponent knows the move Protect, score -2.

If the attacker's HP <= 38%, score -1.


##----------------------------------------------
### Charge Turn Moves With Invulnerability (Fly, Dive, Dig, Bounce)

If the attacker is holding a Power Herb, score +2.

If the opponent knows a Protect move, score -1.

If the opponent is immune to or would resist the move, score +1. (Bug?)

If the opponent is under any of the following conditions, score +1:
- Toxic
- Curse
- Leech Seed

If the current weather is Sand or Hail and the attacker's type makes them immune to the corresponding damage effect, 68.75% chance of score +1.

If the attacker is faster than its opponent and the opponent's last-used move is not an always-hit effect (e.g. Aerial Ace), 68.75% chance of score +1.

Special cases for Shadow Force:
- Power Herb only grants score +1 instead of +2.
- The Protect check is ignored.

### Fake Out

Score +2.

### Spit Up

If the attacker's Stockpile count is 2 or higher, 68.75% chance of score +2.

### Super Fang

If the target is at 50% HP or less, score -1.

### Binding Moves (e.g. Wrap, Clamp)

If the target is under any of the following conditions or effects, 50% chance of score +1:
- Toxic
- Curse
- Perish Song
- Attract

### High Critical Hit Rate (e.g. Slash, Razor Leaf, Cross Poison)

If the move is super-effective against the target, 50% chance of score +1.

If the move would deal normal damage against the target, 25% chance of score +1.

### Recoil Moves (e.g. Submission, Flare Blitz, Double-Edge)

If the opponent resists or is immune to the move, ignore all further score modifiers.

If the attacker has either of the abilities Rock Head or Magic Guard, score +1.

### Speed-Lowering Attacks (e.g. Rock Tomb, Mud Shot, Icy Wind)

If the target is immune to or would resist the move, do not apply any further modifiers.

Treat the exact moves Icy Wind, Rock Tomb, and Mud Shot as Speed-reducing status moves.

### Recharge-Turn Attacks (e.g. Hyper Beam, Giga Impact)

If the opponent would resist or is immune to the move, score -1.

If the attacker's ability is Truant, 68.75% chance of score +1.

If the attacker is slower than the opponent and the attacker's HP is >= 60%, score -1.

If the attacker is faster than the opponent and the attacker's HP is > 40%, score -1.

### Disable

If the attacker is slower than the opponent, score +0 and terminate.

If the opponent's last-used move was a Status move, 60.9% chance of score -1.

If the opponent's last-used move was a Damaging move, score +1.

### Encore

If the opponent is Disabled, 88.3% chance of score +3.

If the attacker is slower than the opponent, score -2.

If the opponent's last-used move is not one of a specific set of effects, score -2.

Otherwise, 88.3% chance of score +3.

### Counter, Mirror Coat

If the opponent is asleep, confused, or infatuated, score -1 and terminate.

If the attacker's HP <= 30%, 96.1% chance of additional score -1.

If the attacker's HP <= 50%, 60.9% chance of additional score -1. (This stacks with the above condition.)

If the attacker knows specifically both Counter and Mirror Coat, 60.9% chance of score +4.

If the opponent's last-used move was a Status move:
- If the opponent is Taunted, 60.9% chance of additional score +1.
- If the opponent does NOT have a type which is considered a corresponding type, 49% chance of score +4.

If the opponent's last-used move was a Damaging move:
- If the opponent is Taunted, 60.9% chance of additional score +1.
- If the last-used move was NOT of the corresponding class, score -1.
- If the last-used move was of the corresponding class (Physical for Counter, Special for Mirror Coat), 60.9% chance of score +1.

### Metal Burst

If the opponent is asleep, infatuated, or confused or they know any of the following move effects, score -1 and terminate:
- Avalanche / Revenge
- Focus Punch
- Vital Throw

If the attacker's HP <= 30%, 96% chance of additional score -1.

If the attacker's HP <= 50%, 60.9% chance of additional score -1.

If the attacker's HP > 50%, 25% chance of additional score +1.

If the opponent's last-used move was not a Status move and they are not Taunted, 60.9% chance of additional score +1.

If the opponent is not Taunted, 60.9% chance of score +1.

### Pain Split

If the opponent's HP < 80%, score -1.

If the attacker is slower than its opponent:
- If the attacker's HP > 60%, score -1.
- Otherwise, score +1.

If the attacker's HP > 40%, score -1.

Otherwise, score -1.

### Nightmare

Score +2.

### Lock On, Mind Reader

50% chance of score +2.

### Sleep Talk

If the attacker is asleep, score +10. Otherwise, score -5.

### Destiny Bond

Start at score -1. If the attacker is slower than its opponent, terminate.

If the attacker's HP > 70%, terminate. Otherwise, 50% chance of additional score +1.

If the attacker's HP > 50%, terminate. Otherwise, 50% chance of additional score +1.

If the attacker's HP > 30%, terminate. Otherwise, 60.9% chance of additional score +2.

### Reversal, Flail

If the attacker is slower than its opponent:
- If the attacker's HP > 60%, score -1.
- If the attacker's HP > 40%, score +0.
- Otherwise, 60.9% chance of score +1.

If the attacker is faster than its opponent:
- If the attacker's HP > 33%, score -1.
- If the attacker's HP > 20%, score +0.
- If the attacker's HP >= 8%, 60.9% chance of score +1.
- If the attacker's HP < 8%, 60.9% chance of score +2, 39.1% chance of score +1.

### Heal Bell, Aromatherapy

If neither the attacker nor any of its party members have a non-volatile status condition,score -5.

### Thief, Covet

If the opponent's held item does NOT have one of the encouraged effects, score -2.

Otherwise, 80.5% chance of score +1.

### Curse

If the attacker has a Ghost typing:
- If the attacker's HP > 80%, score +0.
- Otherwise, score -1.

If the attacker's Defense stat stage is at +3 or higher, score +0 and terminate.

If the attacker knows the move Gyro Ball or Trick Room, 87.5% chance of additional score +1.

50% chance from here-on of additional score +1.

If the attacker's Defense stat stage is at +1 or lower, 50% chance of additional score +1.

If the attacker's Defense stat stage is at +0 or lower, 50% chance of additional score +1. (This is cumulative with the previous check.)

### Protect, Detect

If the opponent knows either Feint or Shadow Force, 50% chance of additional score -2.

If the attacker has used Protect more than once already, score -2 and terminate.

If the attacker is under any of the following effects and is also not Locked Onto by an opponent, score -2 and terminate:
- Toxic
- Curse
- Perish Song
- Attract
- Leech Seed
- Yawn

If the opponent knows a Recovery move (not weather-based or Rest) or Defense Curl and the attacker is not Locked On to a target, score -2 and terminate.

If the opponent is under any of the following effects, additional score +2:
- Toxic
- Curse
- Perish Song
- Attract
- Leech Seed
- Yawn

Otherwise, if the battle is doubles, additional score +2.

Otherwise, if the attacker is Locked Onto by an opponent, additional score +2.

Otherwise, 33.2% chance of additional score +2.

50% of additional score -1 from here-on.

If the attacker used Protect last turn, score -1 and 50% chance of additional score -1.

### Spikes

50% chance of score +0 and terminate. Otherwise, start at score +1.

If the attacker knows either Roar or Whirlwind, 75% chance of additional score +1.

### Foresight, Odor Sleuth

If the attacker has a Ghost typing, 47.3% chance of score +2.
BUG: This should instead check the opponent's typing.

If the target's Evasion stat stage is at +3 or higher, 68.75% chance of score +2.

Otherwise, score -2.

### Miracle Eye

If the opponent has a Dark typing, 47.3% chance of score +2.

If the opponent's Evasion stat stage is at +3 or higher, 68.75% chance of score +2.

Otherwise, score -2.

### Endure

If the attacker's HP < 4%, score -1.

If the attacker's HP < 35%, 72.7% chance of score +1.

### Substitute

If the attacker knows specifically Focus Punch, 62.5% chance of additional score +1.

If the attacker's HP <= 90%, roll for a 60.9% chance of additional score -1 a number of times corresponding to the attacker's HP:
- > 70%: roll once
- > 50%: roll twice
- <= 50%: roll thrice
These rolls are cumulative; e.g., an attacker at 53% HP can receive additional score -2.

If the attacker is faster than its opponent, consider the move that the opponent last used:
- If it was a Status move that induces a non-volatile status condition and the opponent is currently Asleep, Poisoned, Paralyzed, Burned, or Frozen, 60.9% chance of score +1.
- If it was a Status move that induces Confusion and the opponent is currently Confused, 60.9% chance of score +1.
- If it was Leech Seed and the opponent is currently Seeded, 60.9% chance of score +1.

Otherwise, no further score modifications.

### Baton Pass

If any of the attacker's stat stages are at +3 or higher, 68.75% chance of score +2 if either of the following is true:
- The attacker is slower than its target and has HP <= 70%
- The attacker is faster than its target and has HP <= 60%
If neither are true, score +0.

If any of the attacker's stat stages are at +2, score -2 if either of the following is true:
- The attacker is slower than its target and has HP <= 70%
- The attacker is faster than its target and has HP <= 60%
If neither are true, score +0.

Otherwise, score -2.

### Pursuit

If it is the attacker's first turn in battle, 50% chance of additional score +1.

If it is NOT the attacker's first turn in battle and the opponent has a Ghost or Psychic typing, 50% chance of additional score +1.

If the opponent knows specifically the move U-turn, 50% chance of additional score +1.

### Rain Dance

If the attacker is slower than its opponent and has the ability Swift Swim, score +1 and terminate.

If the attacker's HP < 40%, score -1.

If the current weather is Hail, Sun, or Sandstorm, score +1.

If the attacker has the ability Rain Dish or is statused and has the ability Hydration, score +1.

### Sunny Day

If the attacker's HP < 40%, score -1.

If the current weather is Hail, Rain, or Sandstorm, score +1.

If the attacker has the ability Flower Gift or is statused and has the ability Leaf Guard, score +1.

BUG: This should check instead if the attacker is NOT statused, as Leaf Guard has no effect on existing status conditions.

### Hail

If the attacker's HP < 40%, score -1 and terminate.

If the current weather is Sun, Rain, or Sand, additional score +1. If the attacker also knows the move Blizzard, additional score +2.

If the attacker has the ability Ice Body, additional score +2.

### Gravity

If the opponent has Levitate, is under the effect of Magnet Rise, or has a Flying typing, 75% chance of score +1.

If the attacker's HP >= 60%, 37.5% chance of score +1.

### Tailwind

25% chance of flat score +0.

If the attacker is faster than its opponent, score -1.

If the attacker's HP <= 30%, score -1.

If the attacker's HP > 75%, score +1.

Otherwise, 75% chance of score +1.

### Belly Drum

If the attacker is at less than 90% HP, score -2.

### Psych Up

If the opponent has any of Attack, Defense, SpAttack, SpDefense, or Evasion at +3 stages or higher:
- If the attacker's Evasion stat is at +0 stages or lower, score +2.
- If the attacker has any of Attack, Defense, SpAttack, or SpDefense at +0 stages or lower, score +1.
- Otherwise, 80.4% chance of score -2.

Otherwise, score -2.

### Facade

If the opponent has a status condition which would boost Facade, score +1.

BUG: This should instead check if the attacker has such a status condition.

### Focus Punch

If the opponent is immune to or would resist the move, score -1.

If the attacker is behind a Substitute, score +5.

If the opponent is asleep, score +1.

If the opponent is confused or infatuated, 60.9% chance of score +1.

If it is not the attacker's first turn in battle, 21.875% chance of score +1.

### Smelling Salt

If the opponent is paralyzed, score +2.

### Wake-Up Slap

If the opponent resists or is immune to the move, score -1.

If the opponent is asleep, score +1.

### Trick, Switcheroo

If the attacker is holding a Disruptive item:
- If the opponent is holding a bad item to trade with, score -3.
- Otherwise, score +5.

If the attacker is holding an item that poisons its bearer:
- If the opponent is holding a bad item to trade with, score -3.
- If the opponent does not meet any of the following criteria, score +5:
  - Has a non-volatile status condition.
  - Is protected by Safeguard.
  - Has a Steel or Poison typing.
  - Has the ability Immunity, Magic Guard, or Poison Heal.
- If the attacker meets any of the following criteria, score -3:
  - Has a non-volatile status condition.
  - Is protected by Safeguard.
  - Has a Steel or Poison typing.
  - Has the ability Immunity, Magic Guard, Poison Heal, or Klutz.
- Otherwise, score +5.

If the attacker is holding an item that burns its bearer:
- If the opponent is holding a bad item to trade with, score -3.
- If the opponent does not meet any of the following criteria, score +5:
  - Has a non-volatile status condition.
  - Is protected by Safeguard.
  - Has a Fire typing.
  - Has the ability Water Veil or Magic Guard.
- If the attacker meets any of the following criteria, score -3:
  - Has a non-volatile status condition.
  - Is protected by Safeguard.
  - Has a Fire typing.
  - Has the ability Water Veil, Magic Guard, or Klutz.
- Otherwise, score +5.

If the attacker is holding Black Sludge:
- If the opponent is holding a bad item to trade with, score -3.
- If the opponent does not meet any of the following criteria, score +5:
  - Has a Poison typing.
  - Has the ability Magic Guard.
- If the attacker meets any of the following criteria, score -3:
  - Has a Poison typing.
  - Has the ability Magic Guard or Klutz.
- Otherwise, score +5.

If the attacker is holding a Flavor Berry:
- If the opponent is holding a bad item to trade with or a flavor berry, score -3.
- Otherwise, 80.5% chance of score +2.

#### Disruptive Items

- Choice items
- Iron Ball
- Lagging Tail
- Sticky Barb
- Power items (Weight, Bracer, Belt, Lens, Band, Anklet)

Note that Macho Brace is *not* included in this list.

#### Bad Item Trades

- Macho Brace
- Choice items
- Iron Ball
- Lagging Tail
- Sticky Barb
- Power items
- Toxic Orb
- Flame Orb
- Black Sludge

### Moves Which Change the User's Ability (Role Play, Skill Swap)

If the attacker has a desirable ability, score -1.

If the opponent has a desirable ability, 80.5% chance of score +2.

#### Desirable abilities

- Speed Boost
- Battle Armor
- Sand Veil
- Static
- Flash Fire
- Wonder Guard
- Effect Spore
- Swift Swim
- Huge Power

- Rain Dish
- Cute Charm
- Shed Skin
- Marvel Scale
- Pure Power
- Chlorophyll
- Shield Dust
- Adaptability
- Magic Guard
- Mold Breaker
- Super Luck
- Unaware
- Tinted Lens
- Filter
- Solid Rock
- Reckless

Note that Shell Armor is *not* included in this list, despite being functionally equivalent to Battle Armor.

### Moves Which Decrease in Power With Less User HP (Water Spout, Eruption)

If the opponent resists or is immune to the move, score -1.

If the attacker is slower than its opponent and the opponent's HP <= 70%, score -1.

If the attacker is faster than its opponent and the opponent's HP <= 50%, score -1.

BUG: This should instead check for the user's HP.

### Superpower

If the opponent would resist or is immune to the move, score -1.

If the attacker's Attack stat stage is at -1 or lower, score -1.

If the attacker is slower than its opponent and has HP >= 60%, score -1.

If the attacker is faster than its opponent and has HP > 40%, score -1.

### Magic Coat

If the opponent's HP <= 30%, 60.9% chance of additional score -1.

If it is the attacker's first turn in battle, 41.4% chance of score +1.

If it is not the attacker's first turn in battle, 88.3% chance of score -1.

### Recycle

If the attacker's Recyclable item is *not* any of the following, score -2:
- Chesto Berry
- Lum Berry
- Starf Berry

Otherwise, 80.5% chance of score +1.

### Double-Power Negative-Priority Moves (Avalanche, Revenge)

If the opponent is asleep, infatuated, or confused, score -2.

Otherwise, 70.3% chance of score -2, 29.7% chance of score +2.

### Brick Break

If the opponent's side of the field is under the effect of Reflect or Light Screen, score +1.

### Knock Off

If the opponent's HP >= 30% and it is not the attacker's first turn in battle, 29.7% chance of score +1.

### Endeavor

If the opponent's HP < 70%, score -1 and terminate.

If the attacker is slower than its opponent:
- If the attacker's HP > 50%, score -1.
- Otherwise, score +1.

If the attacker is faster than its opponent:
- If the attacker's HP > 40%, score -1.
- Otherwise, score +1.

### Imprison

If it is not the attacker's first turn in battle, 60.9% chance of score +2.

### Refresh

If the opponent's HP < 50%, score -1.

### Snatch

If it is the attacker's first turn in battle, 41.4% chance of score +2.

11.7% chance of score +0 and terminate.

If the attacker is slower than its opponent:
- If the opponent's HP > 25%, 88.3% chance of score -2.
- If the opponent knows a flat-Recovery move or Defense Curl, 41.4% chance of score +2.
- Otherwise, 10.2% chance of score +1.

If the attacker is faster than its opponent:
- If the attacker is not at full HP, 88.3% chance of score -2.
- If the opponent's HP < 70%, 88.3% chance of score -2.
- Otherwise, 67.6% chance of score -2.

### Mud Sport, Water Sport

If the attacker's HP < 50%, score -1.

If the opponent has an Electric/Fire typing, score +1.

### Moves Reducing the User's SpAttack by 2 (e.g., Overheat, Draco Meteor)

If the opponent resists or is immune to the move, score -1.

If the attacker is faster than its opponent and the attacker's HP is <= 60%, score -1.

If the attacker is slower than its opponent and the attacker's HP is <= 80%, score -1.

### Hammer Arm

If the opponent resists or is immune to the move, score -1.

If the attacker is slower than its opponent, score +1.

### Brine

If the opponent resists or is immune to the move, score -1.

If the opponent's HP <= 50%, 50% chance of score +1, 50% chance of score +2.

### Feint

If the opponent does not know Protect, 75% chance of score +0.

If the attacker is under any of the following conditions, 50% chance of additional score +1:
- Toxic
- Curse
- Perish Song
- Attract
- Leech Seed
- Yawn

Otherwise, if the opponent is not at maximum HP and is holding Leftovers or Black Sludge, 50% chance of additional score +1.

If the opponent's Protect chain is 0, 50% chance of score +1.

If the opponent's Protect chain is 1, 25% chance of score +1.

Otherwise, score -2.

### Pluck, Bug Bite

If the opponent resists or is immune to the move, score -1.

If it is the attacker's first turn in battle, 75% chance of additional score +1.

50% chance of score +1.

### U-turn

If the opponent resists or is immune to the move, score -1 and terminate.

If the attacker is the last living party member, score +2 and terminate.
(should this be -2?)

If the attacker has a super-effective move on its opponent, 75% chance of additional score -2.

If no party member deals more damage than the attacker, 75% chance of score -2 and terminate.

If the opponent's HP > 70%, 75% chance of additional score +1.

If the opponent's HP > 30%, 50% chance of additional score +1. (Cumulative with the prior check)

Otherwise, 25% chance of additional score +1.

If the attacker is faster than its opponent, score +1. Otherwise, 50% chance of score +1.

### Close Combat

If the opponent resists or is immune to the move, score -1.

If the attacker is slower than its opponent and its HP <= 80%, score -1.

If the attacker is faster than its opponent and its HP <= 60%, score -1.

### Payback

If the opponent resists or is immune to the move, score -1.

If the attacker is slower than its opponent and the attacker's HP >= 30%, 75% chance of score +1.

### Assurance

If the opponent resists or is immune to the move, score -1.

If the attacker is slower than its opponent:
- If the attacker's ability is Rough Skin, 50% chance of score +1.
- If the attacker is holding a Jaboca Berry or Rowap Berry, 50% chance of score +1.
- Otherwise, 25% chance of score +1.

### Embargo

50% chance of score +1.

### Fling

If the opponent resists or is immune to the move and the attacker is holding an item other than any of the following, score -1:
- King's Rock
- Razor Fang
- Poison Barb
- Toxic Orb
- Flame Orb
- Light Ball

If the attacker's item would grant Fling < 30 base power, score -2.

If the attacker's item would grant Fling > 90 base power, 75% chance of score +1, and:
- If the opponent is weak to the move, additional score +4.
- Otherwise, 50% chance of additional score +1.

If the attacker's item would grant Fling > 60 base power, 75% chance of score +1.

Otherwise, 50% chance of score -1.

### Psycho Shift

If the attacker does not have any status condition, score -10.

If the opponent's HP >= 30%, 50% chance of score +1.

### Trump Card

If the opponent resists or is immune to the move, score -1.

If the move has 1 PP remaining, score +3.

If the move has 2 PP remaining, 60.9% chance of score +2, 39.1% chance of score +1.

If the move has 3 PP remaining, 60.9% chance of score +1.

If the opponent's ability is Pressure, 88.3% chance of additional score +1.

If the opponent's Evasion stat stage is +5 or higher or the attacker's Accuracy stat stage is -5 or lower, 60.9% chance of score +2, 39.1% chance of score +1.

If the opponent's Evasion stat stage is +3 or higher or the attacker's Accuracy stat stage is -3 or lower, 60.9% chance of score +1.

### Heal Block

If the opponent knows a move with any of the following effects, 90.2% chance of score +1:
- Dream Eater
- Restore half HP
- Roost
- Sun-boosted recovery
- Rest
- Swallow
- Draining moves
- Ingrain
- Aqua Ring
- Leech Seed
- Lunar Dance, Healing Wish

If the attacker is under the effect of Leech Seed or the opponent is under the effect of Ingrain or Aqua Ring, 90.2% chance of score +1.

Otherwise, 56.4% chance of score +1.

### Wring Out, Crush Grip

If the opponent resists or is immune to the move, score -1.

If the opponent's HP < 50%, score -1.

If the opponent is at full HP:
- Start with 90.2% chance of score +1.
- If the attacker is faster than its opponent, additional score +2.
- If the attacker is slower than its opponent, additional score +1.

If the opponent's HP > 85%, 90.2% chance of score +1.

### Power Trick

If the attacker's HP > 90%, 62.5% chance of score +1.

If the attacker's HP > 60%, 50% chance of score +1.

If the attacker's HP > 30%, 35.9% chance of score +1.

### Gastro Acid

25% chance to set score +0 and terminate.

If the opponent's HP > 70%, score +1.

If the opponent's HP <= 70%, 50% chance of score +0, 50% chance of score -1.

If the opponent's HP <= 50%, 50% chance of score -1, 50% chance of score -2.

If the opponent's HP <= 30%, 50% chance of score -2, 50% chance of score -3.

### Lucky Chant

If the attacker's HP < 70%, score -1.

If the opponent knows a move with a high critical-hit ratio, score +1.

Otherwise, 25% chance of score +1.

### Me First

If the attacker is slower than its opponent, score -2.

If the attacker deals more damage than its opponent, 87.5% chance of additional score +1.

If the opponent's last-used move was a Damaging move, 50% chance of additional score +1.

75% chance of score +1.

### Copycat

If the attacker is slower than its opponent, deals less damage than its opponent, and the opponent's last-used move is not an encouraged move, 68.75% chance of score -1.

If the attacker is faster than its opponent:
- If the attacker deals more damage than its opponent, 87.5% chance of score +2.
- If the opponent's last-used move is an encouraged move, 50% chance of score +2.

#### Encouraged Moves

- Sleep Powder
- Lovely Kiss
- Spore
- Hypnosis
- Sing
- Grass Whistle
- Shadow Punch
- Sand Attack
- Smoke Screen
- Toxic
- Guillotine
- Horn Drill
- Fissure
- Sheer Cold
- Cross Chop
- Aeroblast
- Confuse Ray
- Sweet Kiss
- Screech
- Cotton Spore
- Scary Face
- Fake Tears
- Metal Sound
- Thunder Wave
- Glare
- Poison Powder
- Shadow Ball
- Dynamic Punch
- Hyper Beam
- Extreme Speed
- Thief
- Covet
- Attract
- Swagger
- Torment
- Flatter
- Trick
- Superpower
- Skill Swap
- Psycho Shift
- Power Swap
- Guard Swap
- Sucker Punch
- Heart Swap
- Switcheroo
- Captivate
- Dark Void

### Power Swap

Find the difference in stat stages between the attacker and its opponent for the Attack stat.

If the difference is > 3:
- If the difference in SpAttack stages > 3:
  - 50% chance of score +5.
  - 25% chance of score +4.
  - 12.5% chance of score +3.
  - 6.25% chance of score +2.
  - 3.125% chance of score +1.
  - 3.125% chance of score +0.
- If the difference in SpAttack stages > 1:
  - 50% chance of score +4.
  - 25% chance of score +3.
  - 12.5% chance of score +2.
  - 6.25% chance of score +1.
  - 6.25% chance of score +0.
- If the difference in SpAttack stages = 0:
  - 50% chance of score +3.
  - 25% chance of score +2.
  - 12.5% chance of score +1.
  - 12.5% chance of score +0.
- Otherwise, no score change.

If the difference is > 1:
- If the difference in SpAttack stages > 3:
  - 50% chance of score +4.
  - 25% chance of score +3.
  - 12.5% chance of score +2.
  - 6.25% chance of score +1.
  - 6.25% chance of score +0.
- If the difference in SpAttack stages > 1:
  - 50% chance of score +3.
  - 25% chance of score +2.
  - 12.5% chance of score +1.
  - 12.5% chance of score +0.
- If the difference in SpAttack stages = 0:
  - 50% chance of score +2.
  - 25% chance of score +1.
  - 25% chance of score +0.
- Otherwise, no score change.

If the difference is > 0:
- If the difference in SpAttack stages > 3:
  - 50% chance of score +3.
  - 25% chance of score +2.
  - 12.5% chance of score +1.
  - 12.5% chance of score +0.
- If the difference in SpAttack stages > 1:
  - 50% chance of score +2.
  - 25% chance of score +1.
  - 25% chance of score +0.
- If the difference in SpAttack stages = 0:
  - 50% chance of score +1.
  - 50% chance of score +0.
- Otherwise, no score change.

If the difference = 0:
- If the difference in SpAttack stages > 3:
  - 50% chance of score +3.
  - 25% chance of score +2.
  - 12.5% chance of score +1.
  - 12.5% chance of score +0.
- If the difference in SpAttack stages > 1:
  - 50% chance of score +2.
  - 25% chance of score +1.
  - 25% chance of score +0.
- If the difference in SpAttack stages > 0:
  - 50% chance of score +1.
  - 50% chance of score +0.
- Otherwise, no score change.

### Guard Swap

Find the difference in stat stages between the attacker and its opponent for the Defense stat.

If the difference is > 3:
- If the difference in SpDefense stages > 3:
  - 50% chance of score +5.
  - 25% chance of score +4.
  - 12.5% chance of score +3.
  - 6.25% chance of score +2.
  - 3.125% chance of score +1.
  - 3.125% chance of score +0.
- If the difference in SpDefense stages > 1:
  - 50% chance of score +4.
  - 25% chance of score +3.
  - 12.5% chance of score +2.
  - 6.25% chance of score +1.
  - 6.25% chance of score +0.
- If the difference in SpDefense stages = 0:
  - 50% chance of score +3.
  - 25% chance of score +2.
  - 12.5% chance of score +1.
  - 12.5% chance of score +0.
- Otherwise, no score change.

If the difference is > 1:
- If the difference in SpDefense stages > 3:
  - 50% chance of score +4.
  - 25% chance of score +3.
  - 12.5% chance of score +2.
  - 6.25% chance of score +1.
  - 6.25% chance of score +0.
- If the difference in SpDefense stages > 1:
  - 50% chance of score +3.
  - 25% chance of score +2.
  - 12.5% chance of score +1.
  - 12.5% chance of score +0.
- If the difference in SpDefense stages = 0:
  - 50% chance of score +2.
  - 25% chance of score +1.
  - 25% chance of score +0.
- Otherwise, no score change.

If the difference is > 0:
- If the difference in SpDefense stages > 3:
  - 50% chance of score +3.
  - 25% chance of score +2.
  - 12.5% chance of score +1.
  - 12.5% chance of score +0.
- If the difference in SpDefense stages > 1:
  - 50% chance of score +2.
  - 25% chance of score +1.
  - 25% chance of score +0.
- If the difference in SpDefense stages = 0:
  - 50% chance of score +1.
  - 50% chance of score +0.
- Otherwise, no score change.

If the difference = 0:
- If the difference in SpDefense stages > 3:
  - 50% chance of score +3.
  - 25% chance of score +2.
  - 12.5% chance of score +1.
  - 12.5% chance of score +0.
- If the difference in SpDefense stages > 1:
  - 50% chance of score +2.
  - 25% chance of score +1.
  - 25% chance of score +0.
- If the difference in SpDefense stages > 0:
  - 50% chance of score +1.
  - 50% chance of score +0.
- Otherwise, no score change.

### Punishment

If the opponent resists or is immune to the move, score +0.

Sum the total positive stat stages for the opponent:
- If > 6:
  - 50% chance of score +4
  - 25% chance of score +3
  - 12.5% chance of score +2
  - 6.25% chance of score +1
  - 6.25% chance of score +0
- If = 6:
  - 50% chance of score +3
  - 25% chance of score +2
  - 12.5% chance of score +1
  - 12.5% chance of score +0
- If = 5:
  - 50% chance of score +2
  - 25% chance of score +1
  - 25% chance of score +0
- If > 2:
  - 50% chance of score +1
  - 50% chance of score +0
- Otherwise, score +0.

### Last Resort

If the opponent resists or is immune to the move, score -1.

If the attacker can use Last Resort, score +1. Otherwise, score +0.

### Worry Seed

If the opponent knows the move Rest, additional score +1.

If the attacker's HP >= 50%, 50% chance of additional score +1.

75% chance of score +1.

### Sucker Punch

If the opponent resists or is immune to the move, score -1.

75% chance of score +1.

### Toxic Spikes

50% chance to ignore all further scoring.

Start at score +1.

If the attacker knows specifically the moves Roar or Whirlwind, 75% chance of additional score +1.

### Heart Swap

If the opponent does not have any of the following stats at +2 stage or greater and is not under the effect of Focus Energy, score -2 and terminate:
- Attack
- Defense
- SpAttack
- SpDefense
- Evasion

If the attacker has any of the following stats at +0 stage or lower or is not under the effect of Focus Energy, score +1:
- Attack
- Defense
- SpAttack
- SpDefense

If the attacker's Evasion stat is at +0 stage or lower, score +2.

Otherwise, 80.5% chance of score -2.

### Aqua Ring

If the attacker's HP >= 30%, 50% chance of score +1.

### Magnet Rise

If the attacker's HP < 50%, ignore all further score changes.

If the opponent knows one of the following moves, additional score +1:
- Earthquake
- Earth Power
- Fissure

If the opponent has a Ground typing, score +1. Otherwise, 50% chance of score +1.

### Defog

If the opponent's side of the field is under the effect of Light Screen or Reflect:
- If the attacker's HP < 30% and there are no remaining party members:
  - 80.5% chance of additional score -2.
  - If the opponent's HP > 70%, score -2.
- Start at score +1.
- If the opponent has at least one remaining party member and their side of the field is
under the effect of Spikes, Stealth Rock, or Toxic Spikes, 50% chance of score -1.
- Proceed to the final if-block below.

If the opponent's side of the field is under the effect of Spikes, Stealth Rock, or Toxic
Spikes, additional score -2.

If all of the following conditions are met, score -2:
- The attacker's HP >= 70%
- The opponent's Evasion stat is at -2 stage or greater
- The opponent's HP <= 70%
Otherwise:
- 80.5% chance of additional score -2.
- If the opponent's HP <= 70% score -2.

### Trick Room

If the battle is a Double Battle, ignore all further score modifiers.

If the attacker's HP <= 30% and there are no remaining party members, score +0.

If the attacker is faster than its opponent, score -1.

If the attacker is slower than its opponent, 75% chance of score +3.

### Blizzard

If the opponent resists or is immune to the move, 80.5% chance of score -3.

If the current weather is Hail, score +1.

### Captivate

If the opponent's SpAttack stat stage is at any value other than +0:
- Start at score -1.
- If the attacker's HP <= 90%, additional score -1.
- If the opponent's SpAttack stat stage is at -3 or lower, 80.5% chance of additional score -2.

If the opponent's HP <= 70%, additional score -2.

If the opponent's last-used move was a Physical move, 75% chance of score -1.

### Stealth Rock

50% chance to ignore all further score modifiers.

Start at score +1.

If the attacker knows either of the moves Roar or Whirlwind, 75% chance of additional score +1.

## Setup First Turn Flag

Philosophy: On the first turn of the battle (for the entire battle, not the battler), prioritize setup moves.

If it is the first turn of the entire battle and the move's effect provides a setup effect, 68.75% chance of score +2:
- Boosting Status moves
- Dropping Status moves
- Conversion
- Reflect, Light Screen
- Condition-inducing Status moves (Poison, Sleep, Confusion, etc.)
- Leech Seed
- Substitute
- Minimize
- Camouflage
- Torment
- Ingrain
- Imprison
- Tailwind
- Lucky Chant
- Magnet Rise
- Defog
- Whirlpool

## Risky Flag

Philosophy: Prioritize "Risky" attacking or status moves.

If the current move is "Risky" in the context of this routine, 50% chance of score +2:
- Sleep-inducing Status moves
- Self-Destruct / Explosion
- Mirror Move
- OHKO moves
- High critical hit-rate moves
- Confusion-inducing Status moves
- Metronome
- Psywave
- Counter, Mirror Coat, Metal Burst
- Destiny Bond
- Swagger
- Attraction-inducing Status moves
- Present
- "Omni-boost" moves (Ancient Power, Silver Wind, Ominous Wind)
- Belly Drum
- Focus Punch
- Gyro Ball
- Acupressure
- Payback
- Me First
- Sucker Punch

## Prioritize Damage Flag

Philosophy: Prioritize non-standard/flat damage moves or "Risky" attacking moves.

If the current move is variable power or "Risky", ~61% of the time, score +2.

"Risky" moves:
- Self-Destruct / Explosion
- Dream Eater
- Two-turn attacks (Sky Attack)
- Attacks requiring a recharge turn (Hyper Beam)
- Spit Up
- Focus Punch
- Superpower
- Flail, Reversal
- Sucker Punch
- Head Smash

Non-standard/flat damage moves:
- Hidden Power
- Gyro Ball
- Natural Gift
- Judgment
- Frustration / Return
- Low Kick / Grass Knot
- Moves which deal fixed damage values (e.g., Psywave, Sonic Boom, Night Shade)

## Baton Pass Flag

Philosophy: Prioritize setting up when at higher HP thresholds and passing stat stage bonuses to party members.

If the attacker has no remaining party members alive, this routine exits. Additionally, this routine will not consider any move which deals damage.

If the attacker does not know Baton Pass, this routine has a 31.25% chance of having no effect.

### Step 1: Swords Dance, Dragon Dance, Calm Mind, Nasty Plot

1. On turn 1 of the entire battle, score +5.
2. If the attacker is at 60% HP or higher, score +1; else, score -10.

### Step 2: Protect, Detect

If the battler's previous move was Protect or Detect, score -2; else, score +2.

### Step 3: Baton Pass

1. On turn 1 of the entire battle, score -2.
2. If Attack and/or SpAttack is at:
    1. +3 or higher, score +3.
    2. +2, score +2.
    3. +1, score +1.

### Step 4: All Other Moves

~92% of the time, score +3.

## Tag Strategy Flag

Philosophy: Encourage moves which would benefit our partner and discourage moves which would harm them.

### If Targeting a Partner

If we no longer have a partner, score -30 and skip all other modifiers in this section.

If the move in question does not match any of the below checks, score -30.

#### Skill Swap

If our partner has Truant or Slow Start, score +10.

If we can give Levitate to an Electric-type partner, score +1. Additional score +1 if our partner is mono-Electric.

If we can give Compound Eyes or No Guard to a partner which knows any of the following moves, score +3:
- Fire Blast
- Thunder
- Cross Chop
- Hydro Pump
- Dynamic Punch
- Blizzard
- Zap Cannon
- Megahorn
- Focus Blast
- Gunk Shot
- Magma Storm
- Power Whip
- Seed Flare
- Head Smash

Otherwise, score -30.

#### Will-O-Wisp

If our partner has Flash Fire and it is not yet active, score +3. If Flash Fire has already been activated, score -30.

If our partner otherwise meets all of the following criteria, score +5:
- Has the Guts ability
- Is not currently statused
- Does not have a Fire typing
- Is not holding a Flame Orb or Toxic Orb
- Is at 81% HP or greater

Otherwise, score -30.

#### Thunder Wave

If our partner has a Ground typing, score -30.

If our partner otherwise has Motor Drive or Volt Absorb, handle the move identically to any damaging Electric move (see below).

Otherwise, score -30.

#### Poison-Inducing Status Moves (e.g., Toxic)

If our partner meets all of the following conditions, score +5:
- Has the Poison Heal ability
- Is not currently statused
- Is not holding a Toxic Orb
- Is at 81% HP or greater

Otherwise, score -30.

Note: This routine does **not** consider the typing of our partner, so it would incorrectly encourage such a move against a Poison or Steel type that it otherwise should not.

#### Helping Hand

If our partner has more than 50% HP or would move first in the turn, 75% chance of score +2, 25% chance of score -1.

#### Swagger

If our partner is not holding a Persim Berry or Lum Berry, score -30.

If our partner is at less than +2 Attack, score +3.

#### Gastro Acid

If our partner's ability is already suppressed, score -30.

If our partner has Truant or Slow Start, score +5.

#### Acupressure

If our partner has Simple and any stat at +3 stages, score -10.

If our partner otherwise has any stat at +6 stages, score -30.

If our partner's HP is at 50% or lower, score -1.

If our partner's HP is > 90%, 68.75% chance of score +2.

Otherwise, 31.25% chance of score +2.

#### Damaging Fire Type Moves

If our partner has Flash Fire and has not yet activated Flash Fire, score +3.

Otherwise, score -30.

#### Damaging Electric Type Moves

If our partner has Motor Drive:
- 62.5% chance of no score change.
- 37.5% chance of score +3, unless our partner is at +6 Speed, in which case score -30.

If our partner has Volt Absorb:
- If our partner is at 100% HP, score -10.
- If our partner's HP > 90%, no score change.
- If our partner's HP > 75%, 25% chance of score +3.
- If our partner's HP > 50%, 50% chance of score +3.
- Otherwise, 75% chance of score +3.

Otherwise, score -30.

#### Damaging Water Type Moves

If our partner has Water Absorb or Dry Skin:
- If our partner is at 100% HP, score -10.
- If our partner's HP > 90%, no score change.
- If our partner's HP > 75%, 25% chance of score +3.
- If our partner's HP > 50%, 50% chance of score +3.
- Otherwise, 75% chance of score +3.

### If Targeting an Opponent

#### Effectiveness Modifiers

These modifiers apply in addition to all other score modifiers for damaging moves unless otherwise mentioned. None of these modifiers apply for moves which deal flat damage or would result in a (e.g., Horn Drill).
 
1. If the move is not-very-effective against the target and does not kill on its highest damage roll, 75% chance of score -1.
2. If the move is doubly-ineffective against the target and does not kill on its highest damage roll, 75% chance of score -2.
3. If the move is super-effective against the target, ~61% chance of score +1.
4. If the move is doubly-super-effective against the target, ~75% chance of score +1.

#### Highest Damage

1. If the move has +1 priority, ~80.5% chance of score +1 and skip the super-effective score check.
2. Otherwise, 50% of the time, score +1 and skip the super-effective score check.

#### Skill Swap

If the attacker has any of the following abilities, score +5:
 - Truant
 - Slow Start
 - Stall
 - Klutz

If the target has any of the following abilities, score +2:
 - Shadow Tag
 - Pure Power
 - Huge Power
 - Mold Breaker
 - Solid Rock
 - Filter
 - Flower Gift

#### Earthquake, Magnitude

**Note**: This routine does **not** consider if our partner is currently alive.

If our partner has Levitate, has a Flying typing, or is under the effect of Magnet Rise, score +2.

If our partner has a Fire, Electric, Poison, or Rock typing, score -10.

If none of the above conditions are met, score -3.

#### Future Sight, Doom Desire

If we have no partner (they have fainted), apply none of the logic below.

If our partner also knows either Future Sight or Doom Desire and:
- They will always move before us, score -3.
- They tie our speed, 50% chance of score -3.

#### Rain Dance

Apply the following modifiers for each of ourself and our partner which meet the specified conditions:
- If the battler has Hydration and is currently statused, score +2.
- If the battler has Dry Skin, score +2.

#### Sunny Day

Apply the following modifiers for each of ourself and our partner which meet the specified conditions:
- If the battler has Leaf Guard, is not currently statused, and is at 30% HP or higher, score +2.
- If the battler has Flower Gift, score +2.
- If the battler has Dry Skin, score -2.
- If the battler has Solar Power and is at 50% HP or higher, score +1.
- If the battler has Solar Power and is at less than 50% HP, 50% chance of score -2.

#### Hail

Apply the following modifiers for each of ourself and our partner which meet the specified conditions:
- If the battler has Ice Body, score +2.
- If the battler has Snow Cloak, score +2.
- If the battler knows Blizzard, score +2.

#### Sandstorm

Apply the following modifiers for each of ourself and our partner which meet the specified conditions:
- If the battler has Sand Veil, score +2.
- If the battler has a Rock typing, score +2.

#### Gravity

If Gravity is currently active, score -30.

Apply the following modifiers cumulatively:
- For each allied battler which has Levitate, a Flying typing, or is under the effect of Magnet Rise, score -5.
- For each opposing battler which has Levitate, a Flying typing, or is under the effect of Magnet Rise, 75% chance of score +3.

#### Trick Room

If the battle has been reduced to either side having only one active Pokemon, score -30.

If the attacker would move first:
- If our partner would move first or second, score -30.
- Otherwise, score -5.
If the attacker would move second:
- If our partner would move first, score -30.
- Otherwise, score -5.
If the attacker would move third:
- If our partner would **not** move last, score -5.
- Otherwise, 75% chance of score +5, 25% chance of score -5.
If the attacker would move last:
- If our partner would **not** move third, score -5.
- Otherwise, 75% chance of score +5, 25% chance of score -5.

#### Follow Me

If our HP > 90%:
- If our partner's HP > 90%, 75% chance of score -1.
- If our partner's HP > 50%, 75% chance of score +1.
- If our partner's HP > 30%, 75% chance of score +2.
- Otherwise, 75% chance of score +3.

If our HP > 50%:
- If our partner's HP > 90%, 75% chance of score -2.
- If our partner's HP > 50%, 75% chance of score -1.
- If our partner's HP > 30%, 75% chance of score +1.
- Otherwise, 75% chance of score +2.

If our HP > 30%:
- If our partner's HP > 90%, 75% chance of score -2.
- If our partner's HP > 50%, 75% chance of score -2.
- If our partner's HP > 30%, 75% chance of score +1.
- Otherwise, 75% chance of score +2.

Otherwise, 75% chance of score -5.

#### Discharge

If our partner has Motor Drive or Volt Absorb, score +3.

If our partner otherwise has a Water or Flying typing, score -10.

If our partner otherwise has a Ground typing, score +3. (Note that the position of this check relative to the other types results in a bug: the AI will disencourage Discharge for partners like Gliscor and Swampert, rather than correctly encourage it.)

Otherwise, score -3.

#### Other Electric-Type Moves

If the target's partner would redirect the move with Lightning Rod, score -1. If that battler also has a Ground typing, additional score -8.

If our partner has Lightning Rod, additional score -10.

#### Lava Plume

If we have activated Flash Fire, additional score +1 to any other applicable modifiers in this section.

If our partner has Dry Skin, score -3.

If our partner otherwise has Flash Fire (activated or otherwise), score +3.

If our partner otherwise has a Grass, Steel, Ice, or Bug typing, score -10.

Otherwise, score -3.

#### Other Fire-Type Moves

If we have activated Flash Fire, score +1.

#### Surf

If our partner has Dry Skin or Water Absorb, score +3.

If our partner otherwise has a Ground or Fire typing, score -10. (Note that the Rock type is explicitly omitted; Surf would not be discouraged if our parter was, for example, an Armaldo.)

Otherwise, score -3.

#### Other Water-Type Moves

If the target's partner would redirect the move with Storm Drain, score -1.

If our partner has Storm Drain, additional score -10.

#### Partner Knows Helping Hand

All damaging moves which are not handled by any of the above conditions nor are OHKO nor flat-damage moves get an additional score +1.

## Check HP Flag

Philosophy: Discourage certain move effects at particular HP thresholds for both the attacker and target.

### Phase 1: Attacker's HP

#### Self-Destruct / Explosion

If the attacker is at 31% HP or higher, 80.5% chance of score -2.

#### Recovery Moves, Rest, Destiny Bond, Flail, Reversal, Memento, Healing Wish, Lunar Dance, Grudge

If the attacker is at 71% HP or higher, 80.5% chance of score -2.

#### Stat-Boosting/Reducing Moves, Focus Energy, Bide, Conversion, Conversion2, Bide, Light Screen, Mist, Safeguard, Belly Drum

If the attacker is at less than 70% HP, 80.5% chance of score -2.

#### Lucky Chant, Power Swap, Guard Swap

If the attacker is between 31% and 70% HP (inclusive), 80.5% chance of score -2.

#### Rage, Lock On, Psych Up, Mirror Coat, Metal Burst, Water Spout, Eruption, Mud Sport, Water Sport, Acupressure

If the attacker is at 30% HP or lower, 80.5% chance of score -2.

### Phase 2: Target's HP

If the target is at 71% HP or higher, then this routine will exit early and none of the below score modifiers will apply.

#### Stat-Boosting/Reducing Moves, Poison Gas, Mist, Pain Split, Safeguard, Acupressure, Wring Out, Perish Song

80.5% chance of score -2.

#### Condition-Inducing Status Moves, Bide, Conversion, Conversion2, Toxic, Light Screen, OHKO Moves, Super Fang, Lock On, Spite, Fury Cutter, Rollout, Psych Up, Mirror Coat, Explosion, Self-Destruct

If the target is at 30% HP or lower, 80.5% chance of score -2.

#### 

## Weather Flag

Philosophy: Set up weather effects on the first turn of battle if they are not already present.

If it is not the first turn of the battle, this routine will exit. This appears to be a bug, judging by the philosophy of the routine and the presence of other code further in its execution.

For each weather-inducing move, if the respective weather is not already active, score +5.

## Harassment Flag

Philosophy: Incentivize usage of moves which harass or disrupt the opponent's strategy.

If the move is judged to be applicable to the routine, 50% chance of score +2.

Eligible move effects:
- Condition-inducing Status moves (Sleep, Poison, Paralysis, Burn, Confusion, Infatuation)
- Status moves which drop Attack, Defense, Accuracy, or Evasion by 1 stage
- Status moves which drop Attack, Defense, Speed, or SpDefense by 2 stages
- Leech Seed
- Encore
- Spite
- Spikes
- Swagger, Flatter
- Torment
- Nature Power
- Knock Off
- Imprison
- Secret Power
- Tickle
- Camouflage
- Embargo
- Psycho Shift
- Toxic Spikes
- Defog
- Captivate
