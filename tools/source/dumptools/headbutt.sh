./tools/source/dumptools/dumprom.sh
python3 tools/narcpy.py extract base/data/a/2/5/2 -o base/data/a/2/5/a252
python3 tools/source/dumptools/headbutt.py --dump base/data/a/2/5/a252 armips/data/headbutt.s
rm -rf base/data/a/2/5/a252