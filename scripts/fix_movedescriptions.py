import os

def doIt():
    file = "../armips/data/moves.s"
    with open(file, "r") as infile:
        data = infile.readlines()
    with open("fixed/moves.s", "w") as outfile:
        newData = [val for val in data]
        for i in range(len(data)):
            if "terminatedata" in data[i]:
                print("data term" , i)
                if len(data) > i+1 and "movedescription" not in data[i+1]:
                    print("no desc")
                    j = 13   
                    while "movedata" not in data[i-j]:
                        j +=1                 
                    movename = data[i-j].split()[1].replace(",", "")
                    print(movename)
                    newData[i+1] = '    movedescription {}, "---"\n\n'.format(movename)                    
        outfile.write("".join(newData))

if __name__ == "__main__":
    doIt()