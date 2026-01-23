import re

inputFile = open('in.S', 'r')
outputFile = open('out.S', 'w')

def initializeMemory():
    outputFile.write('.data\n')
    outputFile.write('M: .incbin "tables.bin"')
    outputFile.write("\nbackup_space: .space 16\n")
    outputFile.write("v_eax: .space 4\nv_ebx: .space 4\nv_ecx: .space 4\nv_edx: .space 4\n") # registrii virtuali

def movfuscate_xor(table_addr: str, src_addr: str, dest_addr: str, backup_addr: str):
    """
        table_addr: adresa de inceput a tabelelor de lookup
        src_addr: adresa primului operand
        dest_addr: adresa celui de-al doilea operand
        backup_addr: adresa unui loc liber in memorie pt backup-ul registrilor
    """ 
    if dest_addr == src_addr: # cazul cel mai simplu, a^a
        return f'mov $0, {dest_addr}\n'
    code = []

    # daca vreunul din parametrii e registru, il transformam in
    # registru virtual pentru a il putea prelucra byte cu byte
    if src_addr in "%eax%ebx%ecx%edx": 
        code.append(f"movl {src_addr}, v_{src_addr[1:]}")
        src_addr = f'v_{src_addr[1:]}'
    if dest_addr in "%eax%ebx%ecx%edx":
        code.append(f"movl {dest_addr}, v_{dest_addr[1:]}") 
        dest_addr = f'v_{dest_addr[1:]}'   
    
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
        offset = 720896
        code.append(f"movb {table_addr} + {offset}(%ecx), %al")
        # salvam in registrul dest

        code.append(f"movb %al, {dest_addr}+{i}")
        code.append("")

    # restore registers
    code.append(f"movl {backup_addr}, %ecx")
    code.append(f"movl {backup_addr}+4, %eax")

    # daca am folosit registrii virtuali, salvam rezultatele in registrii originali
    # e relevant doar registrul destinatie
    if dest_addr in "v_eax v_ebx v_ecx v_edx":
        code.append(f"movl {dest_addr}, %{dest_addr[2:]}")
    
    code.append("")

    return "\n".join(code)


def movfuscate_add(table_addr: str, src_addr: str, dest_addr: str, backup_addr: str):
    code = []

    if src_addr in "%eax%ebx%ecx%edx": 
        code.append(f"movl {src_addr}, v_{src_addr[1:]}")
        src_addr = f'v_{src_addr[1:]}'
    if dest_addr in "%eax%ebx%ecx%edx":
        code.append(f"movl {dest_addr}, v_{dest_addr[1:]}") 
        dest_addr = f'v_{dest_addr[1:]}'   
    
    code.append(f"movl %ecx, {backup_addr}")
    code.append(f"movl %eax, {backup_addr}+4")
    code.append(f"movl %ebx, {backup_addr}+8")
    code.append(f"movl %edx, {backup_addr}+12")
    
    code.append("")
    code.append("movl $0, %ebx") # ebx = carry

    add_offset = 0
    carry_offset = 65536

    for i in range(4):
        code.append("movl $0, %ecx")
        code.append(f"movb {dest_addr}+{i}, %cl")
        code.append(f"movb {src_addr}+{i}, %ch")
        
        code.append(f"movb {table_addr} + {add_offset}(%ecx), %al")
        code.append(f"movb {table_addr} + {carry_offset}(%ecx), %dl")

        # adaugam carry carry
        code.append("movl $0, %ecx")
        code.append("movb %bl, %cl") 
        code.append("movb %al, %ch")
        
        code.append(f"movb {table_addr} + {add_offset}(%ecx), %al")
        code.append(f"movb %al, {dest_addr}+{i}")

        code.append(f"movb {table_addr} + {carry_offset}(%ecx), %dh")

        code.append("movl $0, %ecx")
        code.append("movb %dh, %cl")
        code.append("movb %dl, %ch")
        code.append(f"movb {table_addr} + {add_offset}(%ecx), %bl")

        code.append("")

    code.append(f"movl {backup_addr}, %ecx")
    code.append(f"movl {backup_addr}+4, %eax")
    code.append(f"movl {backup_addr}+8, %ebx")
    code.append(f"movl {backup_addr}+12, %edx")

    if dest_addr in "v_eax v_ebx v_ecx v_edx":
        code.append(f"movl {dest_addr}, %{dest_addr[2:]}")
    
    code.append("")

    return "\n".join(code)


def movfuscate_sub(table_addr: str, src_addr: str, dest_addr: str, backup_addr: str):
    code = []

    # 1. Virtualizam registrii daca sunt folositi direct
    if src_addr in "%eax%ebx%ecx%edx": 
        code.append(f"movl {src_addr}, v_{src_addr[1:]}")
        src_addr = f'v_{src_addr[1:]}'
    if dest_addr in "%eax%ebx%ecx%edx":
        code.append(f"movl {dest_addr}, v_{dest_addr[1:]}") 
        dest_addr = f'v_{dest_addr[1:]}'   
    
    # 2. Facem backup la TOTI registrii
    code.append(f"movl %ecx, {backup_addr}")
    code.append(f"movl %eax, {backup_addr}+4")
    code.append(f"movl %ebx, {backup_addr}+8")
    code.append(f"movl %edx, {backup_addr}+12")
    
    code.append("")
    code.append("movl $0, %ebx")

    sub_offset = 0x20000
    borrow_offset = 0x30000
    add_offset = 0

    for i in range(4):
        code.append("movl $0, %ecx")
        code.append(f"movb {src_addr}+{i}, %cl")
        code.append(f"movb {dest_addr}+{i}, %ch") 
        
        code.append(f"movb {table_addr} + {sub_offset}(%ecx), %al")  
        code.append(f"movb {table_addr} + {borrow_offset}(%ecx), %dl") 

        code.append("movl $0, %ecx")
        code.append("movb %bl, %cl")  
        code.append("movb %al, %ch")  
        
        code.append(f"movb {table_addr} + {sub_offset}(%ecx), %al")   
        code.append(f"movb %al, {dest_addr}+{i}")                 

        code.append(f"movb {table_addr} + {borrow_offset}(%ecx), %dh")

        code.append("movl $0, %ecx")
        code.append("movb %dh, %cl")
        code.append("movb %dl, %ch")
        code.append(f"movb {table_addr} + {add_offset}(%ecx), %bl")

        code.append("")

    code.append(f"movl {backup_addr}, %ecx")
    code.append(f"movl {backup_addr}+4, %eax")
    code.append(f"movl {backup_addr}+8, %ebx")
    code.append(f"movl {backup_addr}+12, %edx")

    if dest_addr in "v_eax v_ebx v_ecx v_edx":
        code.append(f"movl {dest_addr}, %{dest_addr[2:]}")
    
    code.append("")

    return "\n".join(code)


if __name__=="__main__":
    initializeMemory() # am facut-o functie separata fiindca poate o mai modificam
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
            ### CAZURI DE MOVFUSCAT
            case 'xor':
                param1 = line.split()[1][:-1] # src
                param2 = line.split()[2] # dest
                outputFile.write(movfuscate_xor('M', param1, param2, 'backup_space'))
            case 'add':
                param1 = line.split()[1][:-1]
                param2 = line.split()[2]
                outputFile.write(movfuscate_add('M', param1, param2, 'backup_space'))
            case 'sub':
                param1 = line.split()[1][:-1]
                param2 = line.split()[2]
                outputFile.write(movfuscate_sub('M', param1, param2, 'backup_space'))
            case _:
                outputFile.write('de movfuscat\n')

inputFile.close()
outputFile.close()