import sys
import os
import re

def parse_trainers_s(filepath):
    trainers = {}
    current = None
    trainer_id = None

    with open(filepath, "r") as f:
        for line in f:
            line = line.strip()

            if line.startswith("trainerdata"):
                if current and trainer_id is not None:
                    trainers[trainer_id] = current

                _, tid, name = re.split(r'\s+|,', line, maxsplit=2)
                trainer_id = int(tid.strip())
                current = {
                    "id": trainer_id,
                    "battletype": "",
                }

            elif line.startswith("battletype"):
                if current:
                    current["battletype"] = line.split()[1]

    if current and trainer_id is not None:
        trainers[trainer_id] = current

    return trainers


def patch_no_partner_double_battle_trainers(trainer_narc_path, trainers_s_path):
    trainer_narc_files = sorted(os.listdir(trainer_narc_path))
    trainers_s = parse_trainers_s(trainers_s_path)

    for filename in trainer_narc_files:
        trainer_index = int(filename.split('_')[-1])
        if trainer_index == 0:
            continue  # skip trainer 0

        path = os.path.join(trainer_narc_path, filename)

        with open(path, 'rb') as f:
            data = bytearray(f.read())

        trainer_s_trainer = trainers_s.get(trainer_index)
        if trainer_s_trainer and trainer_s_trainer["battletype"] == 'NO_PARTNER_DOUBLE_BATTLE':
            if len(data) > 16:
                if data[16] == 0:
                    data[16] |= 0x03

        with open(path, 'wb') as f:
            f.write(data)


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print(f"Usage: python3 {sys.argv[0]} <trainer_narc_path> <trainers_s_path>")
        sys.exit(1)

    patch_no_partner_double_battle_trainers(sys.argv[1], sys.argv[2])