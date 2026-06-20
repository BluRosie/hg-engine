#!/usr/bin/env python3

import re
import struct
from pathlib import Path


ITEM_DEFINE_RE = re.compile(r"^#define\s+(ITEM_[A-Z0-9_]+)\s+(\d+)\b")
HIDDEN_ITEM_STRUCT = struct.Struct("<HBBHH")
INPUT_PATH = Path("build/a028/8_18")
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


def parse_hidden_item_binary(input_path: Path) -> list[tuple[int, int, int, int, int]]:
    data = input_path.read_bytes()
    if len(data) % HIDDEN_ITEM_STRUCT.size != 0:
        raise ValueError(f"{input_path} size is not a multiple of {HIDDEN_ITEM_STRUCT.size}")

    rows = []
    for offset in range(0, len(data), HIDDEN_ITEM_STRUCT.size):
        item_id, quantity, unk3, unk4, index = HIDDEN_ITEM_STRUCT.unpack_from(data, offset)
        rows.append((item_id, quantity, unk3, unk4, index))
    return rows


def dump_hidden_items(input_path: Path, output_items_path: Path, output_path: Path) -> None:
    reference_rows = parse_hidden_item_binary(input_path)
    output_item_id_to_name = load_item_id_to_name(output_items_path)

    output_path.parent.mkdir(parents=True, exist_ok=True)
    translated_rows = []

    for item_id, quantity, unk3, unk4, index in reference_rows:
        item_name = output_item_id_to_name.get(item_id, f"ITEM_{item_id}")
        translated_rows.append((item_name, quantity, unk3, unk4, index))

    name_width = max(len(row[0]) for row in translated_rows)

    with output_path.open("w", encoding="utf-8") as output:
        output.write('#include "../include/constants/item.h"\n')
        output.write('#include "../include/types.h"\n\n')
        output.write("typedef struct HiddenItemData {\n")
        output.write("    u16 itemId;\n")
        output.write("    u8 quantity;\n")
        output.write("    u8 unk3;\n")
        output.write("    u16 unk4;\n")
        output.write("    u16 index;\n")
        output.write("} HiddenItemData;\n\n")
        output.write("const HiddenItemData sHiddenItemParam[] = {\n")

        for item_name, quantity, unk3, unk4, index in translated_rows:
            output.write(
                f"    {{ {item_name:<{name_width}}, {quantity}, {unk3}, {unk4}, {index:<3} }},\n"
            )

        output.write("};\n\n")


def main() -> None:
    dump_hidden_items(INPUT_PATH, ITEMS_PATH, OUTPUT_PATH)


if __name__ == "__main__":
    main()
