#!/usr/bin/env python3

"""
Reads the script narc (a/0/1/2), the zone event narc (a/0/3/2), and the message narc (a/0/2/7) straight out of the ROM and regenerates data/scr_seq/scr_seq_*.s, data/scr_seq/event_*.inc, data/eventdata/zone_event/*.json, and data/text/*.txt.

The mapping between narc subfiles and source file names ships in event_mapping.csv and the script command table lives in scrcmd.json. Symbol names are resolved from the repo's own constant includes. Command names, constants, and event data layouts follow the pret/pokeheartgold decompilation (https://github.com/pret/pokeheartgold), which this tool was templated on.

Two script narc subfiles are hand-maintained instead of dumped: 2_003 (commonscript) and 2_953 (trainerscript). The text archives hg-engine edits or adds are hand-maintained the same way. Both are skipped unless --include-engine-managed is given, because a dump would replace an engine source with whatever the ROM happens to hold.

Text archives the build regenerates from other sources are skipped unless --include-generated-text is given.

What is dumped is a reference for diffing a ROM against, so the build only writes it back into the ROM when the matching BUILD_DUMPED_* toggle in include/config.h is enabled.

    make dump_scripts DUMP_ROM=path/to/rom.nds
"""

import argparse
import collections
import copy
import csv
import json
import os
import re
import shutil
import struct
import subprocess
import sys
import typing
import warnings

from collections.abc import Callable, Mapping

TOOL_DIR = os.path.dirname(os.path.realpath(__file__))
DEFAULT_REPO_ROOT = os.path.realpath(os.path.join(TOOL_DIR, "..", "..", ".."))

SCRIPT_NARC = "a/0/1/2"
ZONE_EVENT_NARC = "a/0/3/2"
MSGDATA_NARC = "a/0/2/7"

# the macro table the build assembles the dumped scripts back with
SCRIPT_MACROS = "asm/include/scriptmacros.inc"

# where the dumped field scripts and their label headers live (SCR_SEQ_DEPENDENCIES_DIR in narcs.mk)
SCR_SEQ_DIR = "data/scr_seq"

# each text archive's original 16-bit key, so msgenc re-encrypts headers exactly as the rom had them
MSGDATA_KEYS = "data/text/keys.csv"

# script narc subfiles whose tracked sources are engine customizations, not dumps - see the module docstring
ENGINE_MANAGED_SCRIPTS = {"0003", "0953"}

# text archives hg-engine itself edits or adds
ENGINE_MANAGED_TEXT_ARCHIVES = {
    10, 24, 40, 197, 203, 221, 222, 223, 224, 300, 302, 435, 720, 721, 722, 728, 730, 731, 735, 811,
    *range(829, 854),
}

# text archives rebuilt from other sources at build time (MSGDATA_COMPILETIME_DEPENDENCIES in narcs.mk)
GENERATED_TEXT_ARCHIVES = {
    3, 237, 238, 728, 729, 749, 750, 751, 803,
    812, 813, 814, 815, 816, 817, 823,
}

_CONSTANT_PATTERNS = (
    r"^\s*\.(?:equ|definelabel)\s+({prefix}\w+)\s*,\s*(\d+|0x[0-9a-fA-F]+)\s*$", # .equ NAME, VALUE / .definelabel NAME, VALUE (asm/include/*.inc)
    r"^\s*({prefix}\w+)\s+equ\s+(\d+|0x[0-9a-fA-F]+)\s*$", # NAME equ VALUE (armips syntax)
    r"^#define\s+({prefix}\w+)\s+(\d+|0x[0-9a-fA-F]+)\s*$", # #define NAME VALUE
)

def parse_constants(filenames, prefix = ""):
    """
    Build a value -> symbol map from armips/C constant definitions.

    Later definitions win, matching how the game data uses one symbol per value even when a file defines aliases.
    """

    out = {}
    pats = [re.compile(pat.format(prefix = prefix)) for pat in _CONSTANT_PATTERNS]

    for filename in filenames:
        with open(filename, encoding = "utf-8") as fp:
            for line in fp:
                line = line.split("//")[0].split(";")[0].rstrip()

                for pat in pats:
                    if m := pat.match(line):
                        out[int(m[2], 0)] = m[1]
                        break

    return out

_MACRO_DEF = re.compile(r"^\.macro\s+(\w+)[^\n]*\n(.*?)^\.endm", re.M | re.S)
_MACRO_OPCODE = re.compile(r"^\s*\.hword\s+(\d+|0x[0-9a-fA-F]+)\s*$", re.M)
_MACRO_ALIAS = re.compile(r"^\s*(\w+)\s*$", re.M) # a body that just invokes another macro

def check_command_opcodes(commands, repo_root):
    """
    Raise if a scrcmd.json command name assembles back to a different opcode.
    """

    with open(os.path.join(repo_root, SCRIPT_MACROS), encoding = "utf-8") as fp:
        bodies = dict(_MACRO_DEF.findall(fp.read()))

    def opcode(name, depth = 0):
        body = bodies.get(name)

        if body is None or depth > 4:
            return None

        if m := _MACRO_OPCODE.search(body):
            return int(m[1], 0)

        if m := _MACRO_ALIAS.search(body):
            return opcode(m[1], depth + 1)

        return None

    mismatched = [
        f"  command {i} is {cmd['name']!r}, but that macro assembles to {op}"
        for i, cmd in enumerate(commands)
        if (op := opcode(cmd["name"])) is not None and op != i
    ]

    if mismatched:
        raise ValueError(
            f"scrcmd.json disagrees with {SCRIPT_MACROS} on {len(mismatched)} command name(s); "
            f"dumping now would silently miscompile them:\n" + "\n".join(mismatched)
        )

class NamedStruct(struct.Struct):
    def __init__(self, cls_name, _format, fields):
        super().__init__(_format)

        self._fields = fields

        def _subclass__init__(self, values):
            for field, value in zip(fields, values):
                setattr(self, field, value)

        def _subclass__repr__(self):
            return "<" + cls_name + "(" + ", ".join(field + "=" + repr(getattr(self, field)) for field in fields) + ")"

        self._cls = type(cls_name, (object,), {"__init__": _subclass__init__, "__repr__": _subclass__repr__})

    def _make(self, values):
        return self._cls(values)

    def unpack_from(self, buffer, offset = 0):
        return self._make(super().unpack_from(buffer, offset = offset))

    def iter_unpack(self, buffer):
        for tup in super().iter_unpack(buffer):
            yield self._make(tup)

BgEvent = NamedStruct("BgEvent", "<HHLLLL", (
    "scriptId",
    "type",
    "x",
    "z",
    "y",
    "dir",
))

ObjectEvent = NamedStruct("ObjectEvent", "<HHHHHHhHHHhhHHl", (
    "id",
    "spriteId",
    "movement",
    "type",
    "eventFlag",
    "scriptId",
    "facingDirection",
    "param0",
    "param1",
    "param2",
    "xRange",
    "yRange",
    "x",
    "z",
    "y",
))

WarpEvent = NamedStruct("WarpEvent", "<HHHHL", (
    "x",
    "z",
    "header",
    "anchor",
    "y",
))

CoordEvent = NamedStruct("CoordEvent", "<HHHHHHHH", (
    "scriptId",
    "x",
    "z",
    "w",
    "h",
    "y",
    "val",
    "var",
))

assert BgEvent.size == 20, BgEvent.size
assert ObjectEvent.size == 32, ObjectEvent.size
assert WarpEvent.size == 12, WarpEvent.size
assert CoordEvent.size == 16, CoordEvent.size

_R = typing.TypeVar("_R")
_T = typing.TypeVar("_T")

class class_property(classmethod):
    def __init__(self, func: Callable[[typing.Type[_T]], _R]):
        self.func = func

    def __get__(self, obj: _T, objtype: typing.Type[_T] = None):
        if objtype is not None:
            obj = objtype

        return self.func(obj)

class ScriptCommandsData:
    _is_init = False
    _constants: Mapping[str, Mapping[int, str]]
    _commands: list
    _commands_d: Mapping[str, dict]
    _movement_cmds: list
    _stdscr_plain: Mapping[int, str]

    @classmethod
    def load(cls, repo_root):
        if cls._is_init:
            return

        with open(os.path.join(TOOL_DIR, "scrcmd.json")) as jsonfp:
            scrcmds = json.load(jsonfp)

        cls._constants = {
            key: parse_constants([os.path.join(repo_root, src) for src in value["sources"]], value["prefix"])
            for key, value in scrcmds["argtypes"].items()
        }

        # npc trainer script ids are encoded as trainer id + 2999 (approach 1) or + 4999 (approach 2)
        cls._stdscr_plain = dict(cls._constants["stdscr"])
        cls._constants["stdscr"] |= {
            x + 2999: f"{y} - 1 + _std_npc_trainer" for x, y in cls._constants["trainer"].items()
        } | {
            x + 4999: f"{y} - 1 + _std_npc_trainer_2" for x, y in cls._constants["trainer"].items()
        }

        cls._commands = scrcmds.get("commands", [])
        cls._commands_d = {x["name"]: x for x in cls._commands}
        cls._movement_cmds = scrcmds.get("movement_commands", [])

        check_command_opcodes(cls._commands, repo_root)

        cls._is_init = True

    @class_property
    def constants(cls):
        return copy.deepcopy(cls._constants)

    @class_property
    def commands(cls):
        return copy.deepcopy(cls._commands)

    @class_property
    def commands_d(cls):
        return copy.deepcopy(cls._commands_d)

    @class_property
    def movement_cmds(cls):
        return copy.deepcopy(cls._movement_cmds)

    @class_property
    def stdscr_plain(cls):
        return copy.deepcopy(cls._stdscr_plain)

COMMON_INCLUDES = (
    '.include "asm/include/interop_macros.inc"\n'
    '\n'
    '.include "asm/include/scriptmacros.inc"\n'
    '.include "asm/include/flags.inc"\n'
    '.include "asm/include/soundeffects.inc"\n'
    '.include "asm/include/vars.inc"\n'
    '\n'
    '.include "asm/include/events.inc"\n'
    '.include "asm/include/game_stats.inc"\n'
    '.include "asm/include/maps.inc"\n'
    '.include "asm/include/map_sections.inc"\n'
    '.include "asm/include/movements.inc"\n'
    '.include "asm/include/rankings.inc"\n'
    '.include "asm/include/spawns.inc"\n'
    '.include "asm/include/std_scripts.inc"\n'
    '.include "asm/include/trainers.inc"\n'
    '\n'
    '#include "constants/item.h"\n'
    '#include "constants/moves.h"\n'
    '#include "constants/species.h"\n'
)

# scripts are data, and gas pads alignment in a code section with thumb nops instead of zeroes
SECTION = ".data\n"

class NormalScriptParser:
    """
    Disassembles one script narc subfile into an armips .s source.
    """

    def __init__(self, inc_name, raw, events_raw, event_id, text_archive, prefix = "_EV", script = None):
        self.inc_name = inc_name
        self.raw = raw
        self.prefix = prefix
        self.script = script
        self.is_parsed = False

        self.commands = ScriptCommandsData.commands
        self.commands_d = ScriptCommandsData.commands_d
        self.constants = ScriptCommandsData.constants
        self.movement_cmds = ScriptCommandsData.movement_cmds

        self.exported = []
        self.labels = {}
        self.lines = {}
        self.movement_scripts = set()
        self.header_end = 0
        self.pc_history = []

        self.objects = [
            (253, "obj_partner_poke"),
            (255, "obj_player"),
        ]

        self.events_raw = events_raw
        self.event_id = event_id
        self.text = text_archive
        self.events_data = None

        # convenience macros: fold common command sequences back into the reusable macros from scriptmacros.inc
        def handle_itemspace(macro, *arg_idxs):
            itemgrp, quantgrp, *_ = arg_idxs

            def inner(m):
                grps = list(m.groups())

                if grps[itemgrp].isnumeric():
                    grps[itemgrp] = self.constants["item"].get(int(grps[itemgrp]), grps[itemgrp])

                return f'\t{macro} {", ".join(grps[i] for i in arg_idxs)}\n'

            return inner

        def replace_case_compare(m):
            case = m[1]

            if case.isnumeric():
                case = int(case)

                if case >= 0x8000:
                    case -= 0x10000

            return f"\tcase {case}, {m[2]}\n"

        self.macros = [
            (re.compile(
                r"\t(set|copy)var VAR_SPECIAL_x8004, (\w+)\n"
                r"\t(set|copy)var VAR_SPECIAL_x8005, (\w+)\n"
                r"\tcallstd std_give_item_verbose\n"
            ), handle_itemspace("giveitem_no_check", 1, 3)),
            (re.compile(
                r"\t(set|copy)var VAR_SPECIAL_x8004, (\w+)\n"
                r"\t(set|copy)var VAR_SPECIAL_x8005, (\w+)\n"
                r"\ttakeitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT\n"
            ), handle_itemspace("takeitem_no_check", 1, 3)),
            (re.compile(
                r"\t(set|copy)var VAR_SPECIAL_x8004, (\w+)\n"
                r"\t(set|copy)var VAR_SPECIAL_x8005, (\w+)\n"
                r"\thasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT\n"
                r"\tcompare_var_to_value VAR_SPECIAL_RESULT, 0\n"
                r"\tgoto_if eq, (\w+)\n"
            ), handle_itemspace("goto_if_no_item_space", 1, 3, 4)),
            (re.compile(
                r"\t(set|copy)var VAR_SPECIAL_x8004, (\w+)\n"
                r"\t(set|copy)var VAR_SPECIAL_x8005, (\w+)\n"
                r"\thasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT\n"
                r"\tcomparevartovalue VAR_SPECIAL_RESULT, 1\n"
                r"\tgoto_if ne, (\w+)\n"
            ), handle_itemspace("goto_if_no_item_space_2", 1, 3, 4)),
            (re.compile(
                r"\tcopyvar VAR_SPECIAL_x8008, (\w+)\n"
            ), r"\tswitch \1\n"),
            (re.compile(
                r"\tcompare_var_to_value VAR_SPECIAL_x8008, (\w+)\n"
                r"\tgoto_if eq, (\w+)\n"
            ), replace_case_compare),
            (re.compile(
                r"\tcompare_var_to_(var|value) "
            ), "\tcompare "),
            (re.compile(
                r"\tcheckflag (\w+)\n"
                r"\t(goto|call)_if FALSE, (\w+)\n"
            ), r"\t\2_if_unset \1, \3\n"),
            (re.compile(
                r"\tcheckflag (\w+)\n"
                r"\t(goto|call)_if TRUE, (\w+)\n"
            ), r"\t\2_if_set \1, \3\n"),
            (re.compile(
                r"\t(goto|call)_if (eq|ne|lt|le|gt|ge), (\w+)\n"
            ), r"\t\1_if_\2 \3\n"),
            (re.compile(
                r"\tchecktrainerflag (\w+)\n"
                r"\t(goto|call)_if TRUE, (\w+)\n"
            ), r"\t\2_if_defeated \1, \3\n"),
            (re.compile(
                r"\tchecktrainerflag (\w+)\n"
                r"\t(goto|call)_if FALSE, (\w+)\n"
            ), r"\t\2_if_not_defeated \1, \3\n"),
            (re.compile(
                r"\tplay_se SEQ_SE_DP_SELECT\n"
                r"\tlockall\n"
                r"\tfaceplayer\n"
                r"\tnpc_msg (\w+)\n"
                r"\twait_button\n"
                r"\tclosemsg\n"
                r"\treleaseall\n"
            ), r"\tsimple_npc_msg \1\n"),
        ]

    def __repr__(self):
        return f"<{self.__class__.__name__}(raw=bytes({len(self.raw)}), prefix={self.prefix!r})>"

    def get_object(self, id_):
        for i, name in self.objects:
            if i == id_:
                return name

        return str(id_)

    def parse_header(self):
        for i in range(0, len(self.raw), 4):
            if self.raw[i:i + 2] == b"\x13\xfd":
                self.header_end = i + 2
                break

            self.exported.append(int.from_bytes(self.raw[i:i + 4], "little") + i + 4)

            assert(self.exported[-1] < len(self.raw))

        if self.header_end != 4 * len(self.exported) + 2:
            raise ValueError("malformatted script file")

        self.labels |= {addr: False for addr in self.exported}

    def make_events_json(self):
        if self.events_raw is None:
            return

        def scr_get(id_):
            # npc trainer ids (3000+/5000+) resolve via the augmented stdscr entries, which are already formatted as "TRAINER_X - 1 + _std_npc_trainer"
            if id_ in self.constants["stdscr"]:
                return self.constants["stdscr"][id_]

            if 0 <= id_ - 1 < len(self.exported):
                return f"_EV_{self.prefix}_{id_ - 1:03d} + 1"

            return id_

        ret = {
            "header": f"{SCR_SEQ_DIR}/{self.inc_name}",
            "eventId": self.event_id,
        }

        raw = self.events_raw
        pos = 0

        nbg = int.from_bytes(raw[pos:pos + 4], "little"); pos += 4
        bgs = list(BgEvent.iter_unpack(raw[pos:pos + nbg * BgEvent.size])); pos += nbg * BgEvent.size
        nob = int.from_bytes(raw[pos:pos + 4], "little"); pos += 4
        obs = list(ObjectEvent.iter_unpack(raw[pos:pos + nob * ObjectEvent.size])); pos += nob * ObjectEvent.size
        nwp = int.from_bytes(raw[pos:pos + 4], "little"); pos += 4
        wps = list(WarpEvent.iter_unpack(raw[pos:pos + nwp * WarpEvent.size])); pos += nwp * WarpEvent.size
        ncd = int.from_bytes(raw[pos:pos + 4], "little"); pos += 4
        cds = list(CoordEvent.iter_unpack(raw[pos:pos + ncd * CoordEvent.size])); pos += ncd * CoordEvent.size

        if bgs:
            ret["bgs"] = [
                {
                    "scriptId": scr_get(bg.scriptId),
                    "type": bg.type,
                    "x": bg.x,
                    "z": bg.z,
                    "y": bg.y,
                    "dir": bg.dir,
                } for bg in bgs
            ]

        if obs:
            # name each object after its sprite, numbering repeats
            obj_prefix = self.prefix.replace("scr_seq_", "obj_")
            seen_objects = collections.Counter()

            for obj in obs:
                sprite = self.constants["sprites"][obj.spriteId].replace("SPRITE_", "").lower()
                obj_name = f"{obj_prefix}_{sprite}"
                seen_objects[obj_name] += 1

                if seen_objects[obj_name] > 1:
                    obj_name = f"{obj_name}_{seen_objects[obj_name]}"

                self.objects.append((obj.id, obj_name))

            ret["objects"] = []

            for i, ob in enumerate(obs):
                flag = self.constants["flag"].get(ob.eventFlag, ob.eventFlag)

                ret["objects"].append({
                    "id": self.objects[i + 2][1],
                    "spriteId": self.constants["sprites"][ob.spriteId],
                    "movement": ob.movement,
                    "type": ob.type,
                    "eventFlag": flag,
                    "scriptId": scr_get(ob.scriptId),
                    "facingDirection": ob.facingDirection,
                    "param0": ob.param0,
                    "param1": ob.param1,
                    "param2": ob.param2,
                    "xRange": ob.xRange,
                    "yRange": ob.yRange,
                    "x": ob.x,
                    "z": ob.z,
                    "y": ob.y,
                })

        if wps:
            ret["warps"] = [
                {
                    "x": wp.x,
                    "z": wp.z,
                    "header": self.constants["maps"].get(wp.header, wp.header),
                    "anchor": wp.anchor,
                    "y": wp.y,
                } for wp in wps
            ]

        if cds:
            ret["coords"] = [
                {
                    "scriptId": scr_get(cd.scriptId),
                    "x": cd.x,
                    "z": cd.z,
                    "w": cd.w,
                    "h": cd.h,
                    "y": cd.y,
                    "val": cd.val,
                    "var": self.constants["var"].get(cd.var, cd.var),
                } for cd in cds
            ]

        self.events_data = ret

    def get_arg(self, size, pc):
        if isinstance(size, int):
            assert size in [1, 2, 4]

            return int.from_bytes(self.raw[pc:pc + size], "little"), pc + size

        match size:
            case "object1" | "object2":
                size = int(size[-1])
                value = int.from_bytes(self.raw[pc:pc + size], "little")
                pc += size

                if size == 2 and value in self.constants["var"]:
                    return self.constants["var"][value], pc

                return self.get_object(value), pc
            case "message":
                value = int.from_bytes(self.raw[pc:pc + 1], "little")
                pc += 1

                return value, pc
            case "message_var":
                value = int.from_bytes(self.raw[pc:pc + 2], "little")
                pc += 2

                if value in self.constants["var"]:
                    return self.constants["var"][value], pc

                return value, pc
            case "bool1" | "bool2" | "bool4":
                size = int(size[-1])
                value = int.from_bytes(self.raw[pc:pc + size], "little")
                pc += size

                return ["FALSE", "TRUE"][value], pc
            case "hex1" | "hex2" | "hex4":
                size = int(size[-1])
                value = int.from_bytes(self.raw[pc:pc + size], "little")
                pc += size

                return (f"0x{{:0{size * 2}X}}").format(value), pc
            case "addr" | "script" | "movement":
                value = int.from_bytes(self.raw[pc:pc + 4], "little")
                pc += 4
                value += pc
                value &= 0xFFFFFFFF

                assert self.header_end <= value < len(self.raw)

                if size == "movement":
                    self.movement_scripts.add(value)

                if value not in self.labels:
                    self.labels[value] = (size != "script")
                else:
                    self.labels[value] |= (size != "script")

                return self.make_label(value), pc
            case "condition":
                value = self.raw[pc]
                pc += 1

                if len(self.pc_history) >= 2 and value < 2 and self.lines[self.pc_history[-2]][0] in ("checkflag", "checktrainerflag"):
                    conds = ["FALSE", "TRUE"]
                else:
                    conds = ["lt", "eq", "gt", "le", "ge", "ne"]

                return conds[value], pc
            case "var" | "flag":
                value = int.from_bytes(self.raw[pc:pc + 2], "little")
                pc += 2

                return self.constants[size].get(value, value), pc
            case "species" | "item" | "move" | "sound" | "ribbon" | "stdscr" | "trainer" | "phone_contact" | "spawn" | "maps" | "badge" | "direction" | "ranking":
                value = int.from_bytes(self.raw[pc:pc + 2], "little")
                pc += 2

                return self.constants["var"].get(value, self.constants[size].get(value, value)), pc
            case "rgb":
                value = int.from_bytes(self.raw[pc:pc + 2], "little")
                pc += 2

                if value == 0:
                    ret = "RGB_BLACK"
                elif value == 0x7FFF:
                    ret = "RGB_WHITE"
                else:
                    r = value & 0x1F
                    g = (value >> 5) & 0x1F
                    b = (value >> 10) & 0x1F
                    ret = f"RGB({r}, {g}, {b})"

                    if value & 0x8000:
                        ret += " | 0x8000"

                return ret, pc
            case "player_transition":
                value = int.from_bytes(self.raw[pc:pc + 2], "little")
                pc += 2

                if value == 0:
                    ret = "0"
                else:
                    ret = " | ".join(key for mask, key in self.constants["player_transition"].items() if value & mask)

                return ret, pc
            case "default":
                return "0", pc
            case _:
                raise ValueError("unknown arg type: " + size)

    def parse_script(self, pc, warn = True):
        self.pc_history.clear()

        while not self.labels.get(pc, False) and pc < len(self.raw):
            if pc in self.labels:
                self.labels[pc] = True

            self.pc_history.append(pc)

            cmd_i = int.from_bytes(self.raw[pc:pc + 2], "little")

            if cmd_i >= len(self.commands):
                if warn:
                    warnings.warn(f"script parser hit illegal command {cmd_i} at position {pc} ({self.prefix})")

                # data misidentified as code disassembles as command 842 ("dummy2A" - no args), which keeps the byte stream aligned
                cmd_i = 842

            pc += 2

            args = []
            cmd_struct = self.commands[cmd_i]
            name = cmd_struct["name"]
            arg_sizes = cmd_struct["args"]
            special = cmd_struct.get("cases")
            switch_arg = cmd_struct.get("switch_arg")

            try:
                for size in arg_sizes:
                    arg, pc = self.get_arg(size, pc)
                    args.append(arg)

                if special is not None and switch_arg is not None:
                    for size in special[str(args[switch_arg])]:
                        arg, pc = self.get_arg(size, pc)
                        args.append(arg)
            except (ValueError, KeyError):
                if warn:
                    warnings.warn(f"script parser hit illegal command args to {cmd_i} at position {self.pc_history[-1]} "
                                  f"(command {name}, arg {len(args)}, last good arg: {None if not args else args[-1]}) ({self.prefix})")

                return True

            self.lines[self.pc_history[-1]] = (name, args, pc)

            if cmd_struct.get("is_abs_branch"):
                break

        return False

    def parse_all(self, *additional_labels):
        self.parse_header()

        for x in additional_labels:
            self.labels[x] = False

        self.make_events_json()

        while not all(self.labels.values()):
            for label in sorted(self.labels):
                self.parse_script(label)

        self.is_parsed = True

        return self

    def make_gap_internal(self, pc, nextpc):
        if pc == nextpc:
            return ""

        s = "\n"

        if pc in self.movement_scripts:
            if pc & 1:
                pc += 1

            while pc < nextpc:
                cmd = int.from_bytes(self.raw[pc:pc + 2], "little")

                if cmd == 254:
                    s += "\tstep_end\n"
                    pc += 4
                    break

                if cmd < len(self.movement_cmds):
                    cmd = self.movement_cmds[cmd]

                duration = int.from_bytes(self.raw[pc + 2:pc + 4], "little")
                s += f"\tstep {cmd}, {duration}\n"
                pc += 4

            if pc == nextpc:
                return s

        # unreachable bytes from the original dump, kept for byte-reproducibility
        if pc & 15:
            gap = min(16 - (pc & 15), nextpc - pc)
            s += self.make_bytes(pc, gap)
            pc += gap

        while pc < nextpc:
            gap = min(16, nextpc - pc)
            s += self.make_bytes(pc, gap)
            pc += gap

        return s

    def make_bytes(self, pc, gap):
        return "\t.byte " + ", ".join(f"0x{x:02x}" for x in self.raw[pc:pc + gap]) + "\n"

    def make_gap(self, pc, nextpc):
        if pc == nextpc or (nextpc == len(self.raw) and all(x == 0 for x in self.raw[pc:nextpc])):
            return ""

        s = ""
        labels = sorted({x for x in self.labels if pc <= x < nextpc} | {pc, nextpc})

        for x, y in zip(labels[:-1], labels[1:]):
            if (label := self.make_label(x)) is not None:
                s += f"\t.balign 4\n{label}:\n"

            s += self.make_gap_internal(x, y)

        return s

    def make_label(self, addr):
        if addr in self.exported:
            return f"{self.prefix}_{self.exported.index(addr):03d}"

        if addr in self.labels:
            return f"_{addr:04X}"

    def __str__(self):
        if not self.is_parsed:
            return repr(self)

        s = COMMON_INCLUDES
        s += "\n"

        if self.event_id:
            s += f'.include "{SCR_SEQ_DIR}/{self.inc_name}"\n'
            s += "\n\n"
        else:
            s += "\n"

        if self.text is not None:
            s += f"// text archive to grab from: {self.text}.txt\n"

        s += "\n"
        s += SECTION
        s += "\n\n"

        for i, addr in enumerate(self.exported):
            s += f"scrdef {self.prefix}_{i:03d}\n"

        s += "scrdef_end\n\n"

        if not self.lines:
            s += self.make_gap(self.header_end, len(self.raw))
        else:
            if self.header_end not in self.lines:
                s += self.make_gap(self.header_end, min(self.lines))

            lines = sorted(self.lines.items())
            lines.append((len(self.raw), ("", [], -1)))

            for i, (pc, (name, args, nextpc)) in enumerate(lines[:-1]):
                if pc != nextpc:
                    args = list(args)

                    if (label := self.make_label(pc)) is not None:
                        if self.exported.count(pc) > 1:
                            for idx, addr in enumerate(self.exported):
                                if addr == pc:
                                    s += f"{self.prefix}_{idx:03d}:\n"
                        else:
                            s += f"{label}:\n"

                    if args:
                        s += f"\t{name} " + ", ".join(map(str, args)) + "\n"
                    else:
                        s += f"\t{name}\n"

                    if nextpc in self.labels and name in self.commands_d and self.commands_d[name].get("is_abs_branch"):
                        s += "\n"

                if nextpc != lines[i + 1][0]:
                    s += self.make_gap(nextpc, lines[i + 1][0])

        s += "\t.balign 4\n"

        for pattern, replacement in self.macros:
            s = pattern.sub(replacement, s)

        return s

    def make_inc(self):
        s = f".ifndef {self.prefix.upper()}_H_\n"
        s += f".definelabel {self.prefix.upper()}_H_, 0\n\n"

        for i, addr in enumerate(self.exported):
            s += f".equ _EV_{self.prefix}_{i:03d}, {i}\n"

        s += "\n"

        for i, name in self.objects:
            if i not in (253, 255):
                s += f".equ {name}, {i}\n"

        s += f"\n.endif //{self.prefix.upper()}_H_\n"

        return s

class SpecialScriptParser:
    """
    Disassembles a map's trigger/init-var table subfile.
    """

    def __init__(self, inc_name, raw, prefix = "_EV", script = None):
        self.inc_name = inc_name
        self.raw = raw
        self.prefix = prefix
        self.script = script
        self.is_parsed = False

        self.vars = ScriptCommandsData.constants["var"]
        self.std_scripts = ScriptCommandsData.stdscr_plain

        self.table = []
        self.init_offset = -1
        self.init_vars = []

    def __repr__(self):
        return f"<{self.__class__.__name__}(raw=bytes({len(self.raw)}), prefix={self.prefix!r})>"

    def parse_all(self):
        i = 0

        for i in range(0, len(self.raw), 5):
            if self.raw[i] == 0:
                break

            if self.raw[i] == 1:
                self.init_offset = i + 5 + int.from_bytes(self.raw[i + 1:i + 5], "little")
                self.table.append((1, -1, -1))
            else:
                self.table.append((
                    self.raw[i],
                    int.from_bytes(self.raw[i + 1:i + 3], "little"),
                    int.from_bytes(self.raw[i + 3:i + 5], "little"),
                ))

        if self.init_offset != -1:
            for i in range(self.init_offset, len(self.raw), 6):
                if (a := int.from_bytes(self.raw[i:i + 2], "little")) == 0:
                    break

                self.init_vars.append((
                    a,
                    int.from_bytes(self.raw[i + 2:i + 4], "little"),
                    int.from_bytes(self.raw[i + 4:i + 6], "little"),
                ))

            i += 2
        else:
            i += 1

        assert ((i + 3) & ~3) == len(self.raw)

        self.is_parsed = True

        return self

    def get_script(self, id_):
        return self.std_scripts.get(id_, id_)

    def __str__(self):
        if not self.is_parsed:
            return repr(self)

        s = COMMON_INCLUDES
        s += "\n"
        s += f'.include "{SCR_SEQ_DIR}/{self.inc_name}"\n'
        s += "\n\n"
        s += SECTION
        s += "\n\n"

        for kind, val1, val2 in self.table:
            if kind == 1:
                s += f"\t.byte 1\n\t.word {self.prefix}_map_scripts_2-.-4\n"
            else:
                val1 = self.get_script(val1)
                s += f"\t.byte {kind}\n\t.hword {val1}, {val2}\n"

        s += "\t.byte 0\n\n"

        if self.init_offset != -1:
            s += f"{self.prefix}_map_scripts_2:\n"

            for flex1, flex2, script in self.init_vars:
                script = self.get_script(script)
                s += f"\t.hword {self.vars.get(flex1, flex1)}, {self.vars.get(flex2, flex2)}, {script}\n"

            s += "\t.hword 0\n\n"

        s += "\t.balign 4\n"

        return s

class MapParser:
    """
    Drives the dump of one event_mapping.csv row into repo source files.
    """

    def __init__(self, events, scripts, header, text, script_members, event_members, repo_root):
        self.repo_root = repo_root
        self.events = events or None
        self.scripts = scripts or None
        self.header = header or None
        self.text = text or None

        self.script_stem = os.path.splitext(os.path.basename(self.scripts))[0]
        self.script_isolated = self.script_stem.replace("scr_seq_", "").split("_")[0]
        self.header_isolated = header and os.path.basename(self.header).replace("scr_seq_", "").split("_")[0]

        self.scr_pref = re.sub(r"scr_seq_\d{4}_", "scr_seq_", self.script_stem)

        # the label header is named after the map when there is zone event data, and after the script number otherwise
        if not self.events or "DUMMY" in self.events:
            self.inc_name = re.sub(r"scr_seq_\d{4}_", "scr_seq_", self.script_stem).replace("scr_seq_", "event_") + ".inc"
        else:
            event_stem = os.path.splitext(os.path.basename(self.events))[0]
            self.inc_name = "event_" + event_stem.split("_", 1)[1] + ".inc"

        self.event_id = self.events and os.path.basename(self.events).split("_")[0]

        events_raw = event_members[int(self.event_id)] if self.events else None

        self.parser = NormalScriptParser(self.inc_name, script_members[int(self.script_isolated)], events_raw, self.event_id, self.text, prefix = self.scr_pref, script = self.script_isolated)
        self.header_raw = header and script_members[int(self.header_isolated)]

    def parse(self, *extra_labels):
        self.parser.parse_all(*extra_labels)

        return self

    def _open(self, relpath):
        path = os.path.join(self.repo_root, relpath)
        os.makedirs(os.path.dirname(path), exist_ok = True)

        return open(path, "w", encoding = "utf-8", newline = "\n")

    def _write(self, relpath, content):
        with self._open(relpath) as ofp:
            ofp.write(content)

    def dump_script_asm(self):
        self._write(self.scripts, str(self.parser))

        return self

    def dump_script_header(self):
        # only written when something will include it: the script itself (when the map has zone event data) or the trigger table
        if self.events or self.header:
            self._write(os.path.join(SCR_SEQ_DIR, self.inc_name), self.parser.make_inc())

        return self

    def dump_events_json(self):
        if self.parser.events_data is not None:
            with self._open(self.events) as ofp:
                json.dump(self.parser.events_data, ofp, indent = 2)

        return self

    def dump_header_asm(self):
        if self.header:
            h_parser = SpecialScriptParser(self.inc_name, self.header_raw, prefix = self.scr_pref, script = self.header_isolated).parse_all()

            self._write(self.header, str(h_parser))

        return self

    def dump(self):
        self.dump_script_asm().dump_script_header().dump_events_json().dump_header_asm()

def load_narc_members(rom, path):
    import ndspy.narc

    return ndspy.narc.NARC(rom.files[rom.filenames[path]]).files

def dump_text(msg_members, repo_root, msgenc, charmap, include_generated, include_engine_managed):
    workdir = os.path.join(repo_root, "build", "dump_scripts_text")

    os.makedirs(workdir, exist_ok = True)
    os.makedirs(os.path.join(repo_root, "data", "text"), exist_ok = True)

    generated = 0
    engine_managed = 0
    keys = {}

    for i, member in enumerate(msg_members):
        if i in GENERATED_TEXT_ARCHIVES and not include_generated:
            generated += 1
            continue

        member_file = os.path.join(workdir, f"{i:03d}")

        with open(member_file, "wb") as fp:
            fp.write(member)

        # engine-managed archives are still decoded, because the build needs their original key to re-encrypt with, but their tracked source is an hg-engine edit and is left alone
        keep = include_engine_managed or i not in ENGINE_MANAGED_TEXT_ARCHIVES

        if not keep:
            engine_managed += 1

        out_file = os.path.join(repo_root, "data", "text", f"{i:03d}.txt") if keep else f"{member_file}.txt"

        proc = subprocess.run([msgenc, "-d", "-c", charmap, member_file, out_file],
                              check = True, capture_output = True, text = True)

        if m := re.search(r"^Key:\s*([0-9a-fA-F]+)$", proc.stdout, re.M):
            keys[i] = int(m[1], 16)
        else:
            raise ValueError(f"msgenc -d printed no key for text archive {i:03d}")

    shutil.rmtree(workdir)

    with open(os.path.join(repo_root, MSGDATA_KEYS), "w", newline = "") as fp:
        csv.writer(fp).writerows([f"{i:03d}", f"0x{key:04x}"] for i, key in sorted(keys.items()))

    notes = [f"{count} {kind}" for kind, count in (("build-generated", generated), ("engine-managed", engine_managed)) if count]

    print(f"dumped {len(msg_members) - generated - engine_managed} text archives to data/text/" + (f" (skipped {' and '.join(notes)} archives)" if notes else ""))

def read_mapping():
    with open(os.path.join(TOOL_DIR, "event_mapping.csv"), newline = "") as fp:
        return [row for row in csv.reader(fp) if row and not row[0].startswith("#")]

def main(argv = None):
    p = argparse.ArgumentParser(description = "dump scripts, zone events, and message text from a built HeartGold ROM back into hg-engine source form")

    p.add_argument("rom", help = "path to the ROM to dump (e.g. test.nds)")
    p.add_argument("--repo-root", default = DEFAULT_REPO_ROOT, help = "hg-engine checkout to write into (default: this repo)")
    p.add_argument("--msgenc", default = None, help = "path to the msgenc binary (default: <repo>/tools/msgenc)")
    p.add_argument("--charmap", default = None, help = "charmap for msgenc (default: <repo>/charmap.txt)")
    p.add_argument("--scripts-only", action = "store_true", help = "skip the message text dump")
    p.add_argument("--text-only", action = "store_true", help = "only dump message text")
    p.add_argument("--include-engine-managed", action = "store_true", help = f'also overwrite the engine-managed script subfiles ({", ".join(sorted(ENGINE_MANAGED_SCRIPTS))}) and text archives')
    p.add_argument("--include-generated-text", action = "store_true", help = "also dump text archives the build regenerates from other sources (species names, trainer text, ...)")
    p.add_argument("--map", dest = "single_map", metavar = "SCRIPT", help = "dump a single map by script name (e.g. scr_seq_0005_D01R0101.s) and print the result instead of writing files")
    p.add_argument("offsets", nargs = "*", type = lambda x: int(x, 0), help = "extra entry point offsets for --map")

    args = p.parse_args(argv)

    try:
        import ndspy.rom
    except ImportError:
        sys.exit("ndspy is required - run from the repo venv (see requirements.txt)")

    repo_root = os.path.realpath(args.repo_root)
    rom = ndspy.rom.NintendoDSRom.fromFile(args.rom)

    ScriptCommandsData.load(repo_root)

    if not args.text_only:
        script_members = load_narc_members(rom, SCRIPT_NARC)
        event_members = load_narc_members(rom, ZONE_EVENT_NARC)
        rows = read_mapping()

        if args.single_map:
            for events, scripts, header, text in rows:
                if os.path.basename(scripts) == os.path.basename(args.single_map):
                    parser = MapParser(events, scripts, header, text, script_members, event_members, repo_root).parse(*args.offsets)

                    print(parser.parser)

                    return

            sys.exit(f"no event_mapping.csv row for {args.single_map}")

        skipped = []

        for events, scripts, header, text in rows:
            row_parser = MapParser(events, scripts, header, text, script_members, event_members, repo_root)

            if row_parser.script_isolated in ENGINE_MANAGED_SCRIPTS and not args.include_engine_managed:
                skipped.append(os.path.basename(scripts))
                continue

            row_parser.parse().dump()

        print(f"dumped {len(rows) - len(skipped)} maps to {SCR_SEQ_DIR}/ and data/eventdata/zone_event/")

        if skipped:
            print(f'skipped engine-managed scripts: {", ".join(skipped)} (--include-engine-managed overrides)')

    if not args.scripts_only:
        msgenc = args.msgenc or os.path.join(repo_root, "tools", "msgenc")
        charmap = args.charmap or os.path.join(repo_root, "charmap.txt")

        if not os.path.exists(msgenc):
            sys.exit(f"{msgenc} not found - build the tools first (make) or pass --msgenc")

        dump_text(load_narc_members(rom, MSGDATA_NARC), repo_root, msgenc, charmap, args.include_generated_text, args.include_engine_managed)

if __name__ == "__main__":
    main()
