#!/usr/bin/env python3

import re
import struct
from pathlib import Path

from dump_scripts.dump_tools import read_arm9_table


ITEM_DEFINE_RE = re.compile(r"^#define\s+(ITEM_[A-Z0-9_]+)\s+(\d+)\b")
HIDDEN_ITEM_STRUCT = struct.Struct("<HBBHH")
ARM9_HIDDEN_ITEMS_OFFSET = 0xFA558
HIDDEN_ITEM_COUNT = 231
INPUT_PATH = Path("base/arm9.bin")
ITEMS_PATH = Path("include/constants/item.h")
OUTPUT_PATH = Path("dumped_c/HiddenItems.c")


def load_item_id_to_name(constants_path: Path) -> dict[int, str]:
    items = {}
    for line in constants_path.read_text().splitlines():
        match = ITEM_DEFINE_RE.match(line.strip())
        if match is None:
            continue
        items[int(match.group(2))] = match.group(1)
    return items


def parse_hidden_item_binary(data: bytes, input_name: str) -> list[tuple[int, int, int, int, int]]:
    if len(data) % HIDDEN_ITEM_STRUCT.size != 0:
        raise ValueError(f"{input_name} size is not a multiple of {HIDDEN_ITEM_STRUCT.size}")

    rows = []
    for offset in range(0, len(data), HIDDEN_ITEM_STRUCT.size):
        item_id, quantity, unk3, unk4, index = HIDDEN_ITEM_STRUCT.unpack_from(data, offset)
        rows.append((item_id, quantity, unk3, unk4, index))
    return rows


def read_hidden_items_from_arm9(arm9_data: bytes) -> bytes:
    table_size = HIDDEN_ITEM_STRUCT.size * HIDDEN_ITEM_COUNT
    return read_arm9_table(arm9_data, ARM9_HIDDEN_ITEMS_OFFSET, table_size)


def dump_hidden_items_from_arm9_c(arm9_data: bytes, output_items_path: Path = ITEMS_PATH) -> str:
    return dump_hidden_items_c(read_hidden_items_from_arm9(arm9_data), output_items_path, "arm9 hidden item table")


def dump_hidden_items_c(data: bytes, output_items_path: Path = ITEMS_PATH, input_name: str = "hidden item data") -> str:
    reference_rows = parse_hidden_item_binary(data, input_name)
    output_item_id_to_name = load_item_id_to_name(output_items_path)
    translated_rows = []

    for item_id, quantity, unk3, unk4, index in reference_rows:
        item_name = output_item_id_to_name.get(item_id, f"ITEM_{item_id}")
        translated_rows.append((item_name, quantity, unk3, unk4, index))

    name_width = max(len(row[0]) for row in translated_rows)

    output_lines = [
        '#include "../include/constants/item.h"\n',
        '#include "../include/types.h"\n\n',
        "typedef struct HiddenItemData {\n",
        "    u16 itemId;\n",
        "    u8 quantity;\n",
        "    u8 unk3;\n",
        "    u16 unk4;\n",
        "    u16 index;\n",
        "} HiddenItemData;\n\n",
        "const HiddenItemData sHiddenItemParam[] = {\n",
    ]

    for item_name, quantity, unk3, unk4, index in translated_rows:
        output_lines.append(
            f"    {{ {item_name:<{name_width}}, {quantity}, {unk3}, {unk4}, {index:<3} }},\n"
        )

    output_lines.append("};\n\n")
    return "".join(output_lines)


def dump_hidden_items(input_path: Path, output_items_path: Path, output_path: Path) -> None:
    output_path.parent.mkdir(parents=True, exist_ok=True)

    with output_path.open("w", encoding="utf-8") as output:
        output.write(dump_hidden_items_from_arm9_c(input_path.read_bytes(), output_items_path))


def main() -> None:
    dump_hidden_items(INPUT_PATH, ITEMS_PATH, OUTPUT_PATH)


if __name__ == "__main__":
    main()
