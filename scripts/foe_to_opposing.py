import os

def areAllNewlinesGood(dexEntry):
    lines = dexEntry.split("\\n")
    for line in lines:
        if len(line) >= 40:
            return False
    return True

def doIt():
    file = "../data/text/197.txt"
    with open(file, "r") as infile:
        data = infile.readlines()
    with open("fixed/197.txt", "w") as outfile:
        newSentence = ""
        for line in data:
            newSentence = line
            if "foe" in line:
                if "Your foe’s weak!" in line:
                    outfile.write(newSentence)
                    continue
                
                newSentence = newSentence.replace("The tailwind blew from behind\\nyour team!", "The Tailwind blew from behind\\nyour team!")
                newSentence = newSentence.replace("The tailwind blew from behind\\nthe foe!", "The Tailwind blew from behind\\nthe opposing team!")
                newSentence = newSentence.replace("The foe’s tailwind petered out!", "The opposing team’s Tailwind\\npetered out!")
                newSentence = newSentence.replace("The Lucky Chant shielded the foe\\nfrom critical hits!", "Lucky Chant shielded the opposing team\\nfrom critical hits!")
                newSentence = newSentence.replace(" protected\\nby Safeguard!", "\\n protected by Safeguard!")
                newSentence = newSentence.replace("transformed into its\\nComplete Forme!", "transformed\\ninto its Complete Forme!")
                newSentence = newSentence.replace(" {STRVAR_1 5, 1, 0}\\npopped!", "\\n{STRVAR_1 5, 1, 0} popped!")
                newSentence = newSentence.replace(" has Mega Evolved!", "\\nhas Mega Evolved!")
                
                # Original text is also wrong, not "It’s reverted to a primal form!" but rather "It reverted to its primal form!"
                newSentence = newSentence.replace(" Primal Reversion!\\nIt’s reverted to a primal form!", "\\nPrimal Reversion! It reverted to\\fits primal form!")
                newSentence = newSentence.replace(" all other\\nPokémon’s auras!", "\\nall other Pokémon’s auras!")
                newSentence = newSentence.replace(" was restored.", "\\nwas restored.")
                
                # Follow line 625: The foe’s {STRVAR_1 1, 0, 0}’s\n{STRVAR_1 5, 1, 0} raised its {STRVAR_1 13, 2, 0}!
                newSentence = newSentence.replace("The foe’s {STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\\nraised its Attack!", "The foe’s {STRVAR_1 1, 0, 0}’s\\n{STRVAR_1 5, 1, 0} raised its Attack!")
                newSentence = newSentence.replace("The foe’s {STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\\nraised its Defense!", "The foe’s {STRVAR_1 1, 0, 0}’s\\n{STRVAR_1 5, 1, 0} raised its Defense!")
                newSentence = newSentence.replace("The foe’s {STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\\nraised its Sp. Attack!", "The foe’s {STRVAR_1 1, 0, 0}’s\\n{STRVAR_1 5, 1, 0} raised its Sp. Attack!")
                newSentence = newSentence.replace("The foe’s {STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\\nraised its Special Defense!", "The foe’s {STRVAR_1 1, 0, 0}’s\\n{STRVAR_1 5, 1, 0} raised its Special Defense!")
                newSentence = newSentence.replace("The foe’s {STRVAR_1 1, 0, 0}’s {STRVAR_1 5, 1, 0}\\nraised its Speed!", "The foe’s {STRVAR_1 1, 0, 0}’s\\n{STRVAR_1 5, 1, 0} raised its Speed!")
                
                # Probably Accupressure
                newSentence = newSentence.replace("The {STRVAR_1 8, 1, 0} raised the wild\\n{STRVAR_1 1, 0, 0}’s {STRVAR_1 13, 2, 0}!", "The {STRVAR_1 8, 1, 0} raised\\nthe wild {STRVAR_1 1, 0, 0}’s {STRVAR_1 13, 2, 0}!")
                newSentence = newSentence.replace("The {STRVAR_1 8, 1, 0} raised the foe’s\\n{STRVAR_1 1, 0, 0}’s {STRVAR_1 13, 2, 0}!", "The {STRVAR_1 8, 1, 0} raised\\nthe opposing {STRVAR_1 1, 0, 0}’s {STRVAR_1 13, 2, 0}!")
                
                # No idea what this is for, but probably a backport, so I have free reign to move the line break :3
                #  {STRVAR_1 5, 1, 0}\ncut its {STRVAR_1 13, 2, 0}!
                newSentence = newSentence.replace(" {STRVAR_1 5, 1, 0}\\ncut its {STRVAR_1 13, 2, 0}!", "\\n{STRVAR_1 5, 1, 0} cut its {STRVAR_1 13, 2, 0}!")
                
                # Destiny Bond
                newSentence = newSentence.replace(" is trying\\nto take its foe with it!", " is trying\\nto take its attacker down with it!")
                
                # Grudge
                newSentence = newSentence.replace(" wants the\\nfoe to bear a grudge!", " wants the\\ntarget to bear a grudge!")
                
                # Safeguard
                newSentence = newSentence.replace("The foe is no longer\\n protected by Safeguard!", "The opposing team is no longer\\n protected by Safeguard!")
                
                newSentence = newSentence.replace("foe’s", "opposing")
                
                # TODO
                # Frisk
                # "Mon" frisked "Mon" and found its\\n "Item"

                # Validation part begins
                checkSentence = newSentence
                
                if "too nervous to eat Berries!" in checkSentence:
                    checkSentence = checkSentence.replace("{STRVAR_1 5, 1, 0}", "Unnerve")
                    
                checkSentence = checkSentence.replace("{STRVAR_1 1, 0, 0}", "1234567890").replace("{STRVAR_1 1, 1, 0}", "1234567890").replace("{STRVAR_1 1, 2, 0}", "1234567890")
                checkSentence = checkSentence.replace("{STRVAR_1 5, 1, 0}", "Utility Umbrella").replace("{STRVAR_1 13, 1, 0}", "Sp. Defense")
                # Stockpile counter
                checkSentence = checkSentence.replace("{STRVAR_1 50, 1, 0}", "3")
                firstHalf = checkSentence.split("\\n")[0]
                assert len(firstHalf) <= 40
            outfile.write(newSentence)

if __name__ == "__main__":
    doIt()