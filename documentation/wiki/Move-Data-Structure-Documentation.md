# Move Data Structure Documentation
Moves each have a simple structure detailing various properties of the move.  Not much to cover here.  All of them can be edited as part of hg-engine in [``armips/data/moves.s``](https://github.com/BluRosie/hg-engine/blob/main/armips/data/moves.s).

The full structure:
```c
struct MoveData
{
    u16 battleeffect;
    u8 split;
    u8 basepower;
    u8 type;
    u8 accuracy;
    u8 pp;
    u8 effectchance;
    u8 target;
    u8 priority;
    u8 flags;
    u8 appeal;
    u8 contesttype;
}
```
A short description of each parameter:
- ``battleeffect`` is the ``battle_eff_seq`` script that is run.  See [[Move Scripting Systems Documentation|Move Scripting Systems Documentation]].
- ``split`` is the category the move has in the physical/special split, either ``MOVE_PHYSICAL``, ``MOVE_SPECIAL``, or ``MOVE_STATUS``
- ``basepower`` is the base power of the move as it shows up in the summary screen
- ``type`` is the move's type
- ``accuracy`` is the move's accuracy, expressed as a percent from 0-100
- ``pp`` is the base PP of the move
- ``effectchance`` is the chance that secondary effects happen.  Relic Song has an ``effectchance`` of 10 because it has a 10% chance to inflict sleep on the target.
- ``target`` is the target of the move and is a bitfield (targets can be combined, I believe).  It can have these values:
  - ``MOVE_TARGET_SELECTED``
  - ``MOVE_TARGET_DEPENDS``
  - ``MOVE_TARGET_RANDOM``
  - ``MOVE_TARGET_BOTH``
  - ``MOVE_TARGET_FOES_AND_ALLY``
  - ``MOVE_TARGET_USER``
  - ``MOVE_TARGET_USER_SIDE``
  - ``MOVE_TARGET_ACTIVE_FIELD``
  - ``MOVE_TARGET_OPPONENTS_FIELD``
  - ``MOVE_TARGET_ALLY``
  - ``MOVE_TARGET_ACUPRESSURE``
  - ``MOVE_TARGET_ME_FIRST``
- ``priority`` is the priority rank of the move, i.e. Quick Attack has +1.  Can be positive or negative.
- ``flags`` is a bitfield describing parameters of the move.  It can have these values:
  - ``FLAG_CONTACT`` determines whether the move makes contact or not (for activation of Rough Skin, Static, etc.)
  - ``FLAG_PROTECT`` determines whether or not the move is affected by Protect.
  - ``FLAG_MAGIC_COAT`` determines whether or not the move is affected by Magic Coat.
  - ``FLAG_SNATCH`` detemines whether or not the move can be stolen by Snatch.
  - ``FLAG_MIRROR_MOVE`` determines whether or not the move can be copied by Mirror Move.
  - ``FLAG_KINGS_ROCK`` determines whether or not the King's Rock's increased flinch chance applies to this move.
  - ``FLAG_KEEP_HP_BAR`` determines whether or not the HP Bar is kept during the move's animation.
  - ``FLAG_HIDE_SHADOW`` determines whether or not the target's shadow is made invisible for the duration of the move.
- ``appeal`` has something to do with contest effects and is unused in Heart Gold.
- ``contesttype`` has something to do with contest effects and is unused in Heart Gold.

An example ``movedata`` entry is as follows:

```
movedata MOVE_KARATE_CHOP, "Karate Chop"
    battleeffect 43
    pss SPLIT_PHYSICAL
    basepower 50
    type TYPE_FIGHTING
    accuracy 100
    pp 25
    effectchance 0
    target MOVE_TARGET_SELECTED
    priority 0
    flags FLAG_KEEP_HP_BAR | FLAG_KINGS_ROCK | FLAG_MIRROR_MOVE | FLAG_PROTECT | FLAG_CONTACT
    appeal 0x05
    contesttype CONTEST_TOUGH
    terminatedata
    movedescription MOVE_KARATE_CHOP, "The foe is attacked\nwith a sharp chop.\nIt has a high\ncritical-hit ratio.\n"
```
