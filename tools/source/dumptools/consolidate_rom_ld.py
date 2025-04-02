#!/usr/bin/env python3

# sup ballers

f = open("rom.ld")
content = f.readlines()
f.close()
addresses = {}
addytofuncname = {}
entries = {}

for l in content:
    test = l.strip()
    if not test.startswith("//") and not "/*" in test and test != "":
        addresses[test.split("=")[1].strip("; \t")] = test.split("=")[0].strip("; \t")

n = 0
for entry in addresses:
    entries[n] = eval(entry + "& 0xFFFFFFFC")
    addytofuncname[entries[n]] = addresses[entry]
    #print(entry, f"0x{entries[n]:08X}", addresses[entry])
    n = n + 1

for n in range(0, len(entries)):
    for i in range(0, n):
        if entries[n] == entries[i]:
            print(f"0x{entries[n]:08X} ({addytofuncname[entries[n]]}) has a duplicate somewhere.")
