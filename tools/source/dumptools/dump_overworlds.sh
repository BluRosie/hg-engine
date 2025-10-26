./tools/source/dumptools/dumprom.sh
rm -rf build/pokemonow
mkdir -p data/graphics/overworlds
python3 tools/narcpy.py extract base/root/a/0/8/1 -o build/pokemonow
if test -s build/pokemonow/1_0000; then
	for file in $(seq -w 0000 $(printf "%04d" $(expr $(ls build/pokemonow | wc -l) - 1))); do 
		python3 tools/overworld-btx.py data/graphics/overworlds/$file.png build/pokemonow/1_$file -d;
	done
	for file in $(seq -w 0266 0296); do
		cp build/pokemonow/1_$file data/graphics/overworlds/$file.bin;
	done
else
	for file in $(seq -w 000 $(printf "%03d" $(expr $(ls build/pokemonow | wc -l) - 1))); do 
		python3 tools/overworld-btx.py data/graphics/overworlds/0$file.png build/pokemonow/1_$file -d;
	done
	for file in $(seq -w 266 296); do
		cp build/pokemonow/1_$file data/graphics/overworlds/0$file.bin;
	done
fi
rm -rf build/pokemonow