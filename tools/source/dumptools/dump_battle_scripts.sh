./tools/source/dumptools/dumprom.sh
rm -rf build/move
mkdir -p build build/move/
. .venv/bin/activate; python3 tools/narcpy.py extract base/root/a/0/0/0 -o build/move/battle_move_seq
. .venv/bin/activate; python3 tools/narcpy.py extract base/root/a/0/3/0 -o build/move/battle_eff_seq
. .venv/bin/activate; python3 tools/narcpy.py extract base/root/a/0/0/1 -o build/move/battle_sub_seq
git clone https://github.com/BluRosie/pkhax-utils.git
python3 pkhax-utils/gen4/dump_battle_scripts/btlscr_dump.py -g hg -s build/move -d data/battle_scripts -m data/text/197.txt
rm -rf pkhax-utils
