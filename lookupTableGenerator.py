# add sub inc dec
# mul div 
# xor or shl
# je jge/jb jle/jg ja/jbe jz

def createAddTable(size: int):
    table = [[((i+j)%256) for j in range(size)] for i in range(size)]
    return table

def createAddCarryTable(size: int):
    table = [[(0 if i+j < 256 else 1) for j in range(size)] for i in range(size)]
    return table

def createSubTable(size: int):
    table = [[((i-j)%256) for j in range(size)] for i in range(size)]
    return table

def createSubBorrowTable(size: int):
    table = [[(0 if i>=j else 1) for j in range(size)] for i in range(size)]
    return table

def createIncTable(size: int):
    table = [(i+1)%256 for i in range(size)]
    return table

def createIncCarryTable(size: int):
    table = [0]*size
    table[255] = 1
    return table

def createDecTable(size: int):
    table = [(i-1)%256 for i in range(size)]
    return table

def createDecBorrowTable(size: int):
    table = [0]*size
    table[0] = 1
    return table

def createMulLowerTable(size: int):
    table = [[((i*j)%256) for j in range(size)] for i in range(size)]
    return table

def createMulHigherTable(size: int):
    table = [[((i*j)>>8) for j in range(size)] for i in range(size)]
    return table

def createImulHigherTable(size: int):
    table = [[(((i - 256 if i > 127 else i) * (j - 256 if j > 127 else j)) >> 8) % 256 for j in range(256)] for i in range(256)]
    return table

def createDivTable(size: int):
    table = [[(i // j) if j != 0 else 0 for j in range(256)] for i in range(256)]
    return table

def createModuloTable(size: int):
    table = [[(i % j) if j != 0 else 0 for j in range(256)] for i in range(256)]
    return table

def createIdivTable(size: int):
    S = lambda x: x - 256 if x > 127 else x
    table = [[(int(S(i) / S(j)) % 256) if j != 0 else 0 for j in range(256)] for i in range(256)]
    return table

def createIModuloTable(size: int):
    S = lambda x: x - 256 if x > 127 else x
    table = [[(S(i) - int(S(i) / S(j)) * S(j)) & 0xFF if j != 0 else 0 for j in range(256)] for i in range(256)]
    return table
    
def createXorTable(size: int):
    table = [[((i ^ j)) for j in range(size)] for i in range(size)]
    return table
def createLeftShiftTable(size: int):
    table=[[((i << j) % 256)for j in range(size)]for i in range(size)]
    return table
def createRightShiftTable(size: int):
    table=[[(i >> j)for j in range(size)]for i in range(size)]
    return table
def createShiftCarryTable(size: int):
    table = [[(i << j) >> 8 for j in range(size)] for i in range(size)]
    return table
def createJeTable(size: int):
    table=[[(1 if i==j else 0)for j in range(size)for i in range(size)]]
    return table
def createJgeTable(size: int):
    table=[[(1 if i>=j else 0)for  j in range(size)for i in range(size)]]
    return table
def createJleTable(size: int):
    table=[[(1 if i<=j else 0)for j in  range(size)for i in range(size)]]
    return table
def createJaTable(size: int):
    table=[[(1 if i > j else 0)for j in range(size)for i in range(size)]]
    return table

size = 256

addTable = createAddTable(size)
addCarryTable = createAddCarryTable(size)
subTable = createSubTable(size)
subBorrowTable = createSubBorrowTable(size)
incTable = createIncTable(size)
incCarryTable = createIncCarryTable(size)
decTable = createDecTable(size)
decBorrowTable = createDecBorrowTable(size)
mulLowerTable = createMulLowerTable(size) # mul table = mul_lo + mul_hi
mulHigherTable = createMulHigherTable(size)
imulHigherTable = createImulHigherTable(size) # imul table = mul_lo + imul_hi // nu cred ca e necesara operatia
divTable = createDivTable(size) # din fericire in probleme avem doar numere <256 si putem memora toate rezultatele
moduloTable = createModuloTable(size)
iDivTable = createIdivTable(size) # tabele diferite pentru impartirea cu semn // nu cred ca e necesara
iModuloTable = createIModuloTable(size)
xortable = createXorTable(size)
leftshifttable = createLeftShiftTable(size)
rightshifttable = createRightShiftTable(size)
shiftcarrytable = createShiftCarryTable(size)
jetable = createJeTable(size)
jatable = createJaTable(size)
