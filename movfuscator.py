import re

tables = open('lookupTables.txt', 'r')
inputFile = open('in.S', 'r')
outputFile = open('out.S', 'w')

def initializeMemory():
    outputFile.write('.data\n')
    outputFile.write('M: .byte')
    outputFile.write(tables.read())
    outputFile.write('\n')


if __name__=="__main__":
    initializeMemory() # am facut-o functie separata fiindca poate o mai modificam
    tables.close()
    for line in inputFile.readlines(): # bucla principala in care prelucram instructiunile
        if ".data" in line:
            continue
        if re.match(r'^\s*[a-zA-Z_][a-zA-Z0-9_]*:\s*\.[a-zA-Z]+\s+.*$', line): # e declarare de variabila
            outputFile.write(line)
            continue
        if line[-2] == ':' or line[0] == '.': # este label sau sectiune
            outputFile.write(line)
            continue
        instruction = line.split()[0]
        match instruction:
            ### CAZURI DEFAULT (mov, int)
            case 'mov':
                outputFile.write(line)
            case 'movb':
                outputFile.write(line)
            case 'movl':
                outputFile.write(line)
            case 'movw':
                outputFile.write(line)
            case 'int':
                outputFile.write(line)
            case _:
                outputFile.write('de movfuscat\n')

            ### CAZURI DE MOVFUSCAT


inputFile.close()
outputFile.close()