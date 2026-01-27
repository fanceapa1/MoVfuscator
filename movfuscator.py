import re
from liniarize import liniarizeCode

inputFile = open('in.S', 'r')
outputFile = open('out.S', 'w')

def initializeMemory():
    outputFile.write('.data\n')
    outputFile.write('M: .incbin "tables.bin"')
    outputFile.write("\nbackup_space: .space 16\n")
    outputFile.write("v_eax: .space 4\nv_ebx: .space 4\nv_ecx: .space 4\nv_edx: .space 4\n")
    outputFile.write("v_src: .space 4\n")
    outputFile.write("v_dest: .space 4\n")
    outputFile.write("v_val: .space 4\n")
    outputFile.write("v_res: .space 4\n")
    outputFile.write("v_temp: .space 4\n")

def movfuscate_xor(table_addr: str, src_addr: str, dest_addr: str, backup_addr: str):
    if dest_addr == src_addr:
        return f'mov $0, {dest_addr}\n'
    code = []
    
    if src_addr in ["%eax", "%ebx", "%ecx", "%edx"]:
        code.append(f"movl {src_addr}, v_{src_addr[1:]}")
        src_addr = f'v_{src_addr[1:]}'
    elif src_addr.startswith('$'):
        code.append(f"movl {src_addr}, v_src")
        src_addr = "v_src"

    if dest_addr in ["%eax", "%ebx", "%ecx", "%edx"]:
        code.append(f"movl {dest_addr}, v_{dest_addr[1:]}") 
        dest_addr = f'v_{dest_addr[1:]}'   
    
    code.append(f"movl %ecx, {backup_addr}")
    code.append(f"movl %eax, {backup_addr}+4")
    code.append("")

    xor_offset = 720896 

    for i in range(4):
        code.append(f"movl $0, %ecx")
        code.append(f"movb {dest_addr}+{i}, %cl")
        code.append(f"movb {src_addr}+{i}, %ch")
        code.append(f"movb {table_addr} + {xor_offset}(%ecx), %al")
        code.append(f"movb %al, {dest_addr}+{i}")
        code.append("")

    code.append(f"movl {backup_addr}, %ecx")
    code.append(f"movl {backup_addr}+4, %eax")

    if dest_addr in "v_eax v_ebx v_ecx v_edx":
        code.append(f"movl {dest_addr}, %{dest_addr[2:]}")
    code.append("")
    return "\n".join(code)

def movfuscate_add(table_addr: str, src_addr: str, dest_addr: str, backup_addr: str):
    code = []
    
    if src_addr in ["%eax", "%ebx", "%ecx", "%edx"]: 
        code.append(f"movl {src_addr}, v_{src_addr[1:]}")
        src_addr = f'v_{src_addr[1:]}'
    elif src_addr.startswith('$'):
        code.append(f"movl {src_addr}, v_src")
        src_addr = "v_src"
    
    if dest_addr in ["%eax", "%ebx", "%ecx", "%edx"]:
        code.append(f"movl {dest_addr}, v_{dest_addr[1:]}") 
        dest_addr = f'v_{dest_addr[1:]}'   
    
    code.append(f"movl %ecx, {backup_addr}")
    code.append(f"movl %eax, {backup_addr}+4")
    code.append(f"movl %ebx, {backup_addr}+8")
    code.append(f"movl %edx, {backup_addr}+12")
    code.append("")
    code.append("movl $0, %ebx") 

    add_offset = 0
    carry_offset = 65536

    for i in range(4):
        code.append("movl $0, %ecx")
        code.append(f"movb {dest_addr}+{i}, %cl")
        code.append(f"movb {src_addr}+{i}, %ch")
        
        code.append(f"movb {table_addr} + {add_offset}(%ecx), %al")
        code.append(f"movb {table_addr} + {carry_offset}(%ecx), %dl")

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
    
    if src_addr in ["%eax", "%ebx", "%ecx", "%edx"]: 
        code.append(f"movl {src_addr}, v_{src_addr[1:]}")
        src_addr = f'v_{src_addr[1:]}'
    elif src_addr.startswith('$'):
        code.append(f"movl {src_addr}, v_src")
        src_addr = "v_src"

    if dest_addr in ["%eax", "%ebx", "%ecx", "%edx"]:
        code.append(f"movl {dest_addr}, v_{dest_addr[1:]}") 
        dest_addr = f'v_{dest_addr[1:]}'   
    
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

def movfuscate_mul(table_addr: str, src_addr: str, backup_addr: str):
    code = []
    
    if src_addr in ["%eax", "%ebx", "%ecx", "%edx"]:
        code.append(f"movl {src_addr}, v_src")
    elif src_addr.startswith('$'):
        code.append(f"movl {src_addr}, v_src")
    else:
        code.append("pushl %eax")
        code.append(f"movl {src_addr}, %eax")
        code.append("movl %eax, v_src")
        code.append("popl %eax")

    code.append(f"movl %eax, v_val")       
    code.append(f"movl $0, v_res")
    
    mul_low_offset = 0x40000
    mul_high_offset = 0x50000
    
    for i in range(4):      
        for j in range(4):  
            pos = i + j
            if pos >= 4:
                continue
            
            code.append("movl $0, %ecx")
            code.append(f"movb v_val+{i}, %ch")
            code.append(f"movb v_src+{j}, %cl")
            
            code.append(f"movb {table_addr} + {mul_low_offset}(%ecx), %al")
            
            code.append("movl $0, v_temp")
            code.append(f"movb %al, v_temp+{pos}")
            
            code.append(movfuscate_add(table_addr, "v_temp", "v_res", backup_addr))

            if pos + 1 < 4:
                code.append("movl $0, %ecx")
                code.append(f"movb v_val+{i}, %ch")
                code.append(f"movb v_src+{j}, %cl")
                
                code.append(f"movb {table_addr} + {mul_high_offset}(%ecx), %al")
                
                code.append("movl $0, v_temp")
                code.append(f"movb %al, v_temp+{pos+1}")
                code.append(movfuscate_add(table_addr, "v_temp", "v_res", backup_addr))

    code.append(f"movl v_res, %eax")
    code.append(f"movl $0, %edx") 
    code.append("\n")
    
    return "\n".join(code)

def movfuscate_div(table_addr: str, src_addr: str, backup_addr: str):
    code = []

    if src_addr in ["%eax", "%ebx", "%ecx", "%edx"]:
        code.append(f"movl {src_addr}, v_src")
    elif src_addr.startswith('$'):
        code.append(f"movl {src_addr}, v_src")
    else:
        code.append("pushl %ecx")
        code.append(f"movl {src_addr}, %ecx")
        code.append("movl %ecx, v_src")
        code.append("popl %ecx")

    code.append(f"movl %eax, v_val")
    code.append(f"movl %ecx, {backup_addr}")

    div_offset = 0x70000
    mod_offset = 0x80000
    
    code.append("movl $0, %ecx")
    code.append("movb v_val, %ch")
    code.append("movb v_src, %cl")

    code.append(f"movb {table_addr} + {div_offset}(%ecx), %al")

    code.append("movl $0, v_eax")
    code.append("movb %al, v_eax")

    code.append("movl $0, %ecx")
    code.append("movb v_val, %ch")
    code.append("movb v_src, %cl")
    
    code.append(f"movb {table_addr} + {mod_offset}(%ecx), %dl")
    
    code.append("movl $0, v_edx")
    code.append("movb %dl, v_edx")

    code.append(f"movl {backup_addr}, %ecx")
    code.append("movl v_eax, %eax")
    code.append("movl v_edx, %edx")
    code.append("")

    return "\n".join(code)

if __name__=="__main__":
    initializeMemory()
    linearInput = liniarizeCode(inputFile.readlines())
    for line in linearInput.split('\n'):
        line += '\n'
        if ".data" in line:
            continue
        if re.match(r'^\s*[a-zA-Z_][a-zA-Z0-9_]*:\s*\.[a-zA-Z]+\s+.*$', line):
            outputFile.write(line)
            continue
        if line.strip().endswith(':') or line.strip().startswith('.'):
            outputFile.write(line)
            continue
        
        parts = line.split()
        if not parts: continue
        instruction = parts[0]
        
        match instruction:
            case 'mov' | 'movb' | 'movl' | 'movw' | 'int' | 'pushl' | 'popl':
                outputFile.write(line)
            case 'xor' | 'xorl':
                param1 = parts[1][:-1].strip()
                param2 = parts[2].strip()
                outputFile.write(movfuscate_xor('M', param1, param2, 'backup_space'))
            case 'add' | 'addl':
                param1 = parts[1][:-1].strip()
                param2 = parts[2].strip()
                outputFile.write(movfuscate_add('M', param1, param2, 'backup_space'))
            case 'sub' | 'subl':
                param1 = parts[1][:-1].strip()
                param2 = parts[2].strip()
                outputFile.write(movfuscate_sub('M', param1, param2, 'backup_space'))
            case 'mul' | 'mull':
                param1 = parts[1].strip()
                outputFile.write(movfuscate_mul('M', param1, 'backup_space'))
            case 'div' | 'divl':
                param1 = parts[1].strip()
                outputFile.write(movfuscate_div('M', param1, 'backup_space'))
            case _:
                outputFile.write(f'{line} # de movfuscat')

inputFile.close()
outputFile.close()