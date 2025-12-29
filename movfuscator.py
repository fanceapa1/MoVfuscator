from lookupTableGenerator import *

tables = open('lookupTables.txt', 'r')
inputFile = open('in.S', 'r')
outputFile = open('out.S', 'w')

def initializeMemory():
    outputFile.write('.data\n')
    outputFile.write('M: .byte')
    outputFile.write(tables.read())

initializeMemory()

tables.close()
inputFile.close()
outputFile.close()