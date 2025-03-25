#!/usr/bin/env python3

# sup ballers

moveToEffDict = {}

constFile = open("include/constants/move_effects.h")
#consts = constFile.read()

for line in constFile:
    if "//" in line:
        line = line.strip(" //")[0]
    if "#define" in line and len(line.split(" ")) > 2 and "0x" not in line:
        moveToEffDict[int(line.split(" ")[-1])] = line.split(" ")[1]

constFile.close()

file = open("armips/data/moves.s")
file2 = open("fixedmoves.s", "w")

for line in file:
    if "battleeffect" in line:
        line = line[0:len("    battleeffect ")] + moveToEffDict[int(line[len("    battleeffect "):])] + "\n"
    file2.write(line)

file2.close()
file.close()
