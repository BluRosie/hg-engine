# ./tools/source/dumptools/dumprom.sh
rm -rf build/pokemonow
<<<<<<< Updated upstream
mkdir -p data/graphics/overworlds
=======
mkdir -p build build/pokemonow data/graphics/overworlds
>>>>>>> Stashed changes
. .venv/bin/activate; python3 tools/narcpy.py extract base/root/a/0/8/1 -o build/pokemonow
if test -s build/pokemonow/1_0000; then
	for file in $(seq -w 0000 0265); do 
		python3 tools/overworld-btx.py data/graphics/overworlds/$file.png build/pokemonow/1_$file -d;
	done
	for file in $(seq -w 0266 0296); do
		cp build/pokemonow/1_$file data/graphics/overworlds/$file.bin;
	done
else
	for file in $(seq -w 000 265); do 
		python3 tools/overworld-btx.py data/graphics/overworlds/0$file.png build/pokemonow/1_$file -d;
	done
	for file in $(seq -w 266 296); do
		cp build/pokemonow/1_$file data/graphics/overworlds/0$file.bin;
	done
fi
rm -rf build/pokemonow