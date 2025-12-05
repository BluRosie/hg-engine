./tools/source/dumptools/dumprom.sh
touch data/text/728.txt
. .venv/bin/activate; python3 tools/narcpy.py extract base/root/a/0/2/7 -o a027
. .venv/bin/activate; python3 tools/narcpy.py extract base/root/a/0/5/7 -o a057
. .venv/bin/activate; python3 tools/narcpy.py extract base/root/a/1/3/1 -o a131
./tools/msgenc -d -c charmap.txt a027/7_728 data/text/728.txt
. .venv/bin/activate; python3 scripts/trainer_text.py --dump
# rm -rf data/text/728.txt a057 a131 a027