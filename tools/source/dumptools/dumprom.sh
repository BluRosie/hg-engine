set -e

ROM_PATH="$1"

if [ -z "$ROM_PATH" ]; then
    echo "Usage: dumprom.sh path/to/test.nds" >&2
    exit 1
fi

mkdir -p base
./tools/ndstool -x "$ROM_PATH" -9 base/arm9.bin -7 base/arm7.bin -y9 base/overarm9.bin -y7 base/overarm7.bin -d base/root -y base/overlay -t base/banner.bin -h base/header.bin
