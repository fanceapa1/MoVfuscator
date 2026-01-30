import re
from liniarize import liniarizeCode

inputFile = open('in.S', 'r')
outputFile = open('out.S', 'w')

def initializeMemory():
    outputFile.write('.data\n')
    outputFile.write('M: .incbin "tables.bin"')
    outputFile.write("\nbackup_space: .space 16\n")
    outputFile.write("v_eax: .space 4\nv_ebx: .space 4\nv_ecx: .space 4\nv_edx: .space 4\n")
    outputFile.write("v_esp: .space 4\nv_esi: .space 4\n")
    outputFile.write("v_src: .space 4\n")
    outputFile.write("v_dest: .space 4\n")
    outputFile.write("v_val: .space 4\n")
    outputFile.write("v_res: .space 4\n")
    outputFile.write("v_temp: .space 4\n")
    outputFile.write("v_mul_src: .space 4\n")

def _load_to_virtual(code, addr, virtual_reg):
    if addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl {addr}, {virtual_reg}")
    elif addr.startswith('$'):
        code.append(f"movl {addr}, {virtual_reg}")
    else:
        code.append(f"movl {addr}, %ecx")
        code.append(f"movl %ecx, {virtual_reg}")

def _write_back_from_virtual(code, dest_addr, virtual_reg, backup_addr):
    if dest_addr == virtual_reg:
        return

    if dest_addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl {virtual_reg}, {dest_addr}")
    else:
        code.append(f"movl %eax, {backup_addr}+4")
        code.append(f"movl {virtual_reg}, %eax")
        code.append(f"movl %eax, {dest_addr}")
        code.append(f"movl {backup_addr}+4, %eax")

def movfuscate_xor(table_addr: str, src_addr: str, dest_addr: str, backup_addr: str):
    if dest_addr == src_addr:
        return f'mov $0, {dest_addr}\n'
    code = []
    
    code.append(f"movl %ecx, {backup_addr}")
    code.append(f"movl %eax, {backup_addr}+4")
    
    _load_to_virtual(code, src_addr, "v_src")
    _load_to_virtual(code, dest_addr, "v_dest")

    code.append("")
    xor_offset = 720896 

    for i in range(4):
        code.append(f"movl $0, %ecx")
        code.append(f"movb v_dest+{i}, %cl")
        code.append(f"movb v_src+{i}, %ch")
        code.append(f"movb {table_addr} + {xor_offset}(%ecx), %al")
        code.append(f"movb %al, v_dest+{i}")
        code.append("")

    code.append(f"movl {backup_addr}, %ecx")
    code.append(f"movl {backup_addr}+4, %eax")

    _write_back_from_virtual(code, dest_addr, "v_dest", backup_addr)
    
    code.append("")
    return "\n".join(code)

def movfuscate_or(table_addr: str, src_addr: str, dest_addr: str, backup_addr: str):
    code = []

    code.append(f"movl %ecx, {backup_addr}")
    code.append(f"movl %eax, {backup_addr}+4")
    
    _load_to_virtual(code, src_addr, "v_src")
    _load_to_virtual(code, dest_addr, "v_dest")

    code.append("")
    or_offset = 0x110000 

    for i in range(4):
        code.append(f"movl $0, %ecx")
        code.append(f"movb v_dest+{i}, %cl")
        code.append(f"movb v_src+{i}, %ch")
        code.append(f"movb {table_addr} + {or_offset}(%ecx), %al")
        code.append(f"movb %al, v_dest+{i}")
        code.append("")

    code.append(f"movl {backup_addr}, %ecx")
    code.append(f"movl {backup_addr}+4, %eax")

    _write_back_from_virtual(code, dest_addr, "v_dest", backup_addr)
    code.append("")
    return "\n".join(code)

def movfuscate_add(table_addr: str, src_addr: str, dest_addr: str, backup_addr: str):
    code = []
    
    code.append(f"movl %ecx, {backup_addr}")
    code.append(f"movl %eax, {backup_addr}+4")
    code.append(f"movl %ebx, {backup_addr}+8")
    code.append(f"movl %edx, {backup_addr}+12")
    
    _load_to_virtual(code, src_addr, "v_src")
    _load_to_virtual(code, dest_addr, "v_dest")
    
    code.append("")
    code.append("movl $0, %ebx") 

    add_offset = 0
    carry_offset = 65536

    for i in range(4):
        code.append("movl $0, %ecx")
        code.append(f"movb v_dest+{i}, %cl")
        code.append(f"movb v_src+{i}, %ch")
        
        code.append(f"movb {table_addr} + {add_offset}(%ecx), %al")
        code.append(f"movb {table_addr} + {carry_offset}(%ecx), %dl")

        code.append("movl $0, %ecx")
        code.append("movb %bl, %cl") 
        code.append("movb %al, %ch")
        
        code.append(f"movb {table_addr} + {add_offset}(%ecx), %al")
        code.append(f"movb %al, v_dest+{i}")

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

    _write_back_from_virtual(code, dest_addr, "v_dest", backup_addr)
    code.append("")
    return "\n".join(code)

def movfuscate_sub(table_addr: str, src_addr: str, dest_addr: str, backup_addr: str):
    code = []
    
    code.append(f"movl %ecx, {backup_addr}")
    code.append(f"movl %eax, {backup_addr}+4")
    code.append(f"movl %ebx, {backup_addr}+8")
    code.append(f"movl %edx, {backup_addr}+12")
    
    _load_to_virtual(code, src_addr, "v_src")
    _load_to_virtual(code, dest_addr, "v_dest")

    code.append("")
    code.append("movl $0, %ebx")

    sub_offset = 0x20000
    borrow_offset = 0x30000
    add_offset = 0

    for i in range(4):
        code.append("movl $0, %ecx")
        code.append(f"movb v_src+{i}, %cl")
        code.append(f"movb v_dest+{i}, %ch") 
        code.append(f"movb {table_addr} + {sub_offset}(%ecx), %al")  
        code.append(f"movb {table_addr} + {borrow_offset}(%ecx), %dl") 

        code.append("movl $0, %ecx")
        code.append("movb %bl, %cl")  
        code.append("movb %al, %ch")  
        code.append(f"movb {table_addr} + {sub_offset}(%ecx), %al")   
        code.append(f"movb %al, v_dest+{i}")                 

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

    _write_back_from_virtual(code, dest_addr, "v_dest", backup_addr)
    code.append("")
    return "\n".join(code)

def movfuscate_mul(table_addr: str, src_addr: str, backup_addr: str):
    code = []
    
    code.append("movl %eax, v_val")
    
    if src_addr.startswith('$'):
        code.append(f"movl {src_addr}, v_mul_src")
    elif src_addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl {src_addr}, v_mul_src")
    else:
        code.append(f"movl {src_addr}, %ecx")
        code.append("movl %ecx, v_mul_src")

    code.append("movl $0, v_res")
    
    mul_low_offset = 0x40000
    mul_high_offset = 0x50000
    
    for i in range(4): 
        for j in range(4):
            pos = i + j
            if pos >= 4:
                continue
            
            code.append("movl $0, %ecx")
            code.append(f"movb v_val+{i}, %ch")
            code.append(f"movb v_mul_src+{j}, %cl")
            
            code.append(f"movb {table_addr} + {mul_low_offset}(%ecx), %al")
            
            code.append("movl $0, v_temp")
            code.append(f"movb %al, v_temp+{pos}")
            
            code.append(movfuscate_add(table_addr, "v_temp", "v_res", backup_addr))

            if pos + 1 < 4:
                code.append("movl $0, %ecx")
                code.append(f"movb v_val+{i}, %ch")
                code.append(f"movb v_mul_src+{j}, %cl")
                
                code.append(f"movb {table_addr} + {mul_high_offset}(%ecx), %al")
                
                code.append("movl $0, v_temp")
                code.append(f"movb %al, v_temp+{pos+1}")
                
                code.append(movfuscate_add(table_addr, "v_temp", "v_res", backup_addr))

    code.append("movl v_res, %eax")
    code.append("movl $0, %edx")
    code.append("")
    
    return "\n".join(code)

def movfuscate_div(table_addr: str, src_addr: str, backup_addr: str):
    code = []

    if src_addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
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

def movfuscate_shl(table_addr: str, src_addr: str, dest_addr: str, backup_addr: str):
    code = []

    try:
        if src_addr.startswith('$'):
            shift_count = int(src_addr.replace('$', ''))
            multiplier = 1 << shift_count
            src_val_str = f"${multiplier}"
    except:
        code.append("eroare shl\n")
        return

    if dest_addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl {dest_addr}, v_val")
    else:
        code.append(f"movl {dest_addr}, %ecx") 
        code.append(f"movl %ecx, v_val")
        
    code.append(f"movl {src_val_str}, v_mul_src") 
    code.append("movl $0, v_res")

    mul_low_offset = 0x40000
    mul_high_offset = 0x50000
    
    for i in range(4): 
        for j in range(4):
            pos = i + j
            if pos >= 4: continue

            code.append("movl $0, %ecx")
            code.append(f"movb v_val+{i}, %ch")
            code.append(f"movb v_mul_src+{j}, %cl")
            code.append(f"movb {table_addr} + {mul_low_offset}(%ecx), %al")
            
            code.append("movl $0, v_temp")
            code.append(f"movb %al, v_temp+{pos}")
            code.append(movfuscate_add(table_addr, "v_temp", "v_res", backup_addr))

            if pos + 1 < 4:
                code.append("movl $0, %ecx")
                code.append(f"movb v_val+{i}, %ch")
                code.append(f"movb v_mul_src+{j}, %cl")
                code.append(f"movb {table_addr} + {mul_high_offset}(%ecx), %al")
                
                code.append("movl $0, v_temp")
                code.append(f"movb %al, v_temp+{pos+1}")
                code.append(movfuscate_add(table_addr, "v_temp", "v_res", backup_addr))

    code.append(f"movl v_res, %eax") 
    _write_back_from_virtual(code, dest_addr, "%eax", backup_addr)
    
    code.append("")
    return "\n".join(code)

def movfuscate_shr(table_addr: str, src_addr: str, dest_addr: str, backup_addr: str):
    code = []

    try:
        if src_addr.startswith('$'):
            shift_count = int(src_addr.replace('$', ''))
            divisor = 1 << shift_count
            src_val_str = f"${divisor}"
    except:
        code.append("eroare shr\n")
        return

    if dest_addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl {dest_addr}, v_val")
    else:
        code.append(f"movl {dest_addr}, %ecx")
        code.append(f"movl %ecx, v_val")

    code.append(f"movl {src_val_str}, v_src")

    div_offset = 0x70000
    
    code.append("movl $0, %ecx")
    code.append("movb v_val, %ch")
    code.append("movb v_src, %cl")
    
    code.append(f"movb {table_addr} + {div_offset}(%ecx), %al")

    code.append("movl $0, v_eax")
    code.append("movb %al, v_eax")

    code.append("movl v_eax, %eax") 
    _write_back_from_virtual(code, dest_addr, "%eax", backup_addr)
    
    code.append("")
    return "\n".join(code)

def movfuscate_inc(table_addr: str, op_addr: str, backup_addr: str):
    code = []

    code.append(f"movl %ecx, {backup_addr}")
    code.append(f"movl %eax, {backup_addr}+4")
    code.append(f"movl %ebx, {backup_addr}+8")
    
    _load_to_virtual(code, op_addr, "v_dest")
    
    inc_offset = 0x120000
    carry_offset = 0x120100
    add_offset = 0
    add_carry_offset = 0x10000

    code.append("movl $0, %ecx")
    code.append(f"movb v_dest+0, %cl")
    
    code.append(f"movb {table_addr} + {inc_offset}(%ecx), %al")
    code.append(f"movb {table_addr} + {carry_offset}(%ecx), %bl")
    
    code.append(f"movb %al, v_dest+0")

    for i in range(1, 4):
        code.append("movl $0, %ecx")
        code.append(f"movb v_dest+{i}, %ch")
        code.append("movb %bl, %cl")

        code.append(f"movb {table_addr} + {add_offset}(%ecx), %al")
        code.append(f"movb {table_addr} + {add_carry_offset}(%ecx), %dl")
        
        code.append(f"movb %al, v_dest+{i}")
        code.append("movb %dl, %bl")

    code.append(f"movl {backup_addr}, %ecx")
    code.append(f"movl {backup_addr}+4, %eax")
    code.append(f"movl {backup_addr}+8, %ebx")

    _write_back_from_virtual(code, op_addr, "v_dest", backup_addr)

    code.append("")
    return "\n".join(code)

def movfuscate_dec(table_addr: str, op_addr: str, backup_addr: str):
    code = []
    
    code.append(f"movl %ecx, {backup_addr}")
    code.append(f"movl %eax, {backup_addr}+4")
    code.append(f"movl %ebx, {backup_addr}+8")

    _load_to_virtual(code, op_addr, "v_dest")

    dec_offset = 0x120200
    borrow_offset = 0x120300
    sub_offset = 0x20000
    sub_borrow_offset = 0x30000
    
    code.append("movl $0, %ecx")
    code.append(f"movb v_dest+0, %cl")
    
    code.append(f"movb {table_addr} + {dec_offset}(%ecx), %al")
    code.append(f"movb {table_addr} + {borrow_offset}(%ecx), %bl")
    
    code.append(f"movb %al, v_dest+0")
    
    for i in range(1, 4):
        code.append("movl $0, %ecx")
        code.append(f"movb v_dest+{i}, %ch")
        code.append("movb %bl, %cl")

        code.append(f"movb {table_addr} + {sub_offset}(%ecx), %al")
        code.append(f"movb {table_addr} + {sub_borrow_offset}(%ecx), %dl")
        
        code.append(f"movb %al, v_dest+{i}")
        code.append("movb %dl, %bl")

    code.append(f"movl {backup_addr}, %ecx")
    code.append(f"movl {backup_addr}+4, %eax")
    code.append(f"movl {backup_addr}+8, %ebx")

    _write_back_from_virtual(code, op_addr, "v_dest", backup_addr)

    code.append("")
    return "\n".join(code)

def movfuscate_lea(table_addr: str, src_addr: str, dest_addr: str, backup_addr: str):
    code = []
    val_str = f"${src_addr}"
    _write_back_from_virtual(code, dest_addr, val_str, backup_addr)
    code.append("")    
    return "\n".join(code)

def movfuscate_push(table_addr: str, src_addr: str, backup_addr: str):
    code = []
    code.append("movl %ecx, v_temp")

    _load_to_virtual(code, src_addr, "v_val")

    code.append("movl v_temp, %ecx")

    code.append(movfuscate_sub(table_addr, "$4", "%esp", backup_addr))

    code.append(f"movl %eax, {backup_addr}+4")
    code.append("movl v_val, %eax")
    code.append("movl %eax, (%esp)")
    code.append(f"movl {backup_addr}+4, %eax")
    
    code.append("")
    return "\n".join(code)

def movfuscate_pop(table_addr: str, dest_addr: str, backup_addr: str):
    code = []

    code.append(f"movl %eax, {backup_addr}+4")
    code.append("movl (%esp), %eax")
    code.append("movl %eax, v_val")
    code.append(f"movl {backup_addr}+4, %eax")
    
    code.append(movfuscate_add(table_addr, "$4", "%esp", backup_addr))
    
    _write_back_from_virtual(code, dest_addr, "v_val", backup_addr)
    
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
            case 'mov' | 'movb' | 'movl' | 'movw' | 'int':
                outputFile.write(line)
            case 'xor' | 'xorl':
                param1 = parts[1][:-1].strip()
                param2 = parts[2].strip()
                outputFile.write(movfuscate_xor('M', param1, param2, 'backup_space'))
            case 'or' | 'orl':
                param1 = parts[1][:-1].strip()
                param2 = parts[2].strip()
                outputFile.write(movfuscate_or('M', param1, param2, 'backup_space'))
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
            case 'shl' | 'shll':
                param1 = parts[1][:-1].strip()
                param2 = parts[2].strip()
                outputFile.write(movfuscate_shl('M', param1, param2, 'backup_space'))
            case 'shr' | 'shrl':
                param1 = parts[1][:-1].strip()
                param2 = parts[2].strip()
                outputFile.write(movfuscate_shr('M', param1, param2, 'backup_space'))
            case 'inc' | 'incl':
                param1 = parts[1].strip()
                outputFile.write(movfuscate_inc('M', param1, 'backup_space'))
            case 'dec' | 'decl':
                param1 = parts[1].strip()
                outputFile.write(movfuscate_dec('M', param1, 'backup_space'))
            case 'lea' | 'leal':
                param1 = parts[1][:-1].strip()
                param2 = parts[2].strip()
                outputFile.write(movfuscate_lea('M', param1, param2, 'backup_space'))
            case 'push' | 'pushl':
                param1 = parts[1].strip()
                outputFile.write(movfuscate_push('M', param1, 'backup_space'))
            case 'pop' | 'popl':
                param1 = parts[1].strip()
                outputFile.write(movfuscate_pop('M', param1, 'backup_space'))
            case _:
                outputFile.write(f'{line[:-1]} # de movfuscat\n')

inputFile.close()
outputFile.close()