import os

def areAllNewlinesGood(dexEntry):
    lines = dexEntry.split("\\n")
    for line in lines:
        if len(line) >= 40:
            return False
    return True

def doIt():
    file = "../armips/data/mondata.s"
    with open(file, "r") as infile:
        data = infile.readlines()
    with open("fixed/mondata.s", "w") as outfile:
        newData = []
        for line in data:
            if "mondexentry" in line:
                newline = line.split('"')
                dexData = newline[-2]
                if len(dexData) > 1 and not areAllNewlinesGood(dexData):
                    count = 0
                    newText = ""
                    for word in dexData.replace("\\n", " ").split():
                        if count + len(word) < 40:
                            if count != 0:
                                newText += " "
                                count += 1
                            newText += word
                            count += len(word)
                        else:
                            newText += "\\n" + word
                            count = len(word)
                                
                    newline[-2] = '"' + newText + '"'
                    line = " ".join(newline)
            newData.append(line)
        outfile.write("".join(newData))

if __name__ == "__main__":
    doIt()