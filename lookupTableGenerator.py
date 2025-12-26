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
    table[size-1] = 1
    return table

addTable = createAddTable(256)
addCarryTable = createAddCarryTable(256)
subTable = createSubTable(256)
subBorrowTable = createSubBorrowTable(256)
incTable = createIncTable(256)
incCarryTable = createIncCarryTable(256)
