./tools/source/dumptools/dumprom.sh
. .venv/bin/activate; python3 tools/narcpy.py extract base/root/a/2/5/2 -o base/root/a/2/5/a252
. .venv/bin/activate; python3 tools/source/dumptools/headbutt.py --dump base/root/a/2/5/a252 armips/data/headbutt.s
rm -rf base/root/a/2/5/a252