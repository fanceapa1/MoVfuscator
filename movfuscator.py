import re

tables = open('lookupTables.txt', 'r')
inputFile = open('in.S', 'r')
outputFile = open('out.S', 'w')

def initializeMemory():
    outputFile.write('.data\n')
    outputFile.write('M: .byte')
    outputFile.write(tables.read())
    outputFile.write("\nbackup_space: .space 16\n")
    outputFile.write("v_eax: .space 4\nv_ebx: .space 4\nv_ecx: .space 4\nv_edx: .space 4\n") # registrii virtuali

def movfuscate_xor(table_addr: str, src_addr: str, dest_addr: str, backup_addr: str):
    ### inca nu merge pt ca nu stiu cum sa il fac sa functioneze direct pe registrii
    """
        table_addr: adresa de inceput a tabelelor de lookup
        src_addr: adresa primului operand
        dest_addr: adresa celui de-al doilea operand
        backup_addr: adresa unui loc liber in memorie pt backup-ul registrilor
    """
    code = []
    # backup_addr+0 = backup %ecx
    # backup_addr+4 = backup %eax
    code.append(f"movl %ecx, {backup_addr}")
    code.append(f"movl %eax, {backup_addr}+4")
    code.append("")

    for i in range(4): # o iteratie pt fiecare byte
        code.append(f"movl $0, %ecx")
        # %cl = dest byte (index coloana)
        # %ch = src byte  (index-rand * 256)
        code.append(f"movb {dest_addr}+{i}, %cl")
        code.append(f"movb {src_addr}+{i}, %ch")
        
        # rezultat in %al
        code.append(f"movb {table_addr}(%ecx), %al")
        # salvam in registrul dest

        code.append(f"movb %al, {dest_addr}+{i}")
        code.append("")

    # restore registers
    code.append(f"movl {backup_addr}, %ecx")
    code.append(f"movl {backup_addr}+4, %eax")
    
    return "\n".join(code)

# movfuscate_xor("0x08100000", "%eax", "%ebx", "backup_space")

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