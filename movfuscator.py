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

def _load_to_virtual(code, addr, virtual_reg):
    """Helper to safely load a value (reg, imm, or mem) into a virtual register."""
    if addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl {addr}, {virtual_reg}")
    elif addr.startswith('$'):
        code.append(f"movl {addr}, {virtual_reg}")
    else:
        # Memory to Memory requires a register bridge. We use %ecx (it's backed up).
        code.append(f"movl {addr}, %ecx")
        code.append(f"movl %ecx, {virtual_reg}")

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

    # Write back
    if dest_addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl v_dest, {dest_addr}")
    
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

    if dest_addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl v_dest, {dest_addr}")
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

    if dest_addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl v_dest, {dest_addr}")
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

    if dest_addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl v_dest, {dest_addr}")
    code.append("")
    return "\n".join(code)

def movfuscate_mul(table_addr: str, src_addr: str, backup_addr: str):
    code = []
    
    code.append("movl %eax, v_val") # EAX is implicit dest for MUL
    
    if src_addr.startswith('$'):
        code.append(f"movl {src_addr}, v_src")
    elif src_addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl {src_addr}, v_src")
    else:
        # Use existing register (e.g., %ecx) as temp since we are about to overwrite it anyway or back it up
        # Ideally, we should be safe. backup_addr not used yet.
        # But movfuscate_add *will* use backup.
        # Let's use stack push/pop or just %ecx since movfuscate_mul logic handles regs.
        code.append(f"movl {src_addr}, %ecx")
        code.append("movl %ecx, v_src")

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

    # Use movfuscate_mul logic basically
    # Just reusing register load logic
    if dest_addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl {dest_addr}, v_val")
    else:
        code.append(f"movl {dest_addr}, %ecx") 
        code.append(f"movl %ecx, v_val")
        
    code.append(f"movl {src_val_str}, v_src")
    code.append("movl $0, v_res")

    mul_low_offset = 0x40000
    mul_high_offset = 0x50000
    
    for i in range(4): 
        for j in range(4):
            pos = i + j
            if pos >= 4: continue

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

    code.append(f"movl v_res, %eax") # result in eax
    if dest_addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl %eax, {dest_addr}")
    else:
        code.append(f"movl %eax, {dest_addr}")
    
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

    code.append("movl v_eax, %eax") # result
    if dest_addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl %eax, {dest_addr}")
    else:
        code.append(f"movl %eax, {dest_addr}")
    
    code.append("")
    return "\n".join(code)

def movfuscate_inc(table_addr: str, op_addr: str, backup_addr: str):
    code = []

    code.append(f"movl %ecx, {backup_addr}")
    code.append(f"movl %eax, {backup_addr}+4")
    code.append(f"movl %ebx, {backup_addr}+8")
    
    # Load op to v_dest using reg bridge if memory
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

    if op_addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl v_dest, {op_addr}")
    else:
        # Write back to memory using %eax bridge (safe now because we restored eax, but we can overwrite it again temporarily or use another way)
        # Wait, we just restored eax. If we use it, we lose the value.
        # But inc/dec modifies FLAGS, not necessarily EAX (except result).
        # Actually INC doesn't affect CARRY flag in real x86 but here we simulate it.
        # We need to write v_dest to op_addr.
        # We can use %ecx again since we don't need it after this.
        code.append(f"movl {backup_addr}, %ecx") # Restore ECX just in case user expects it
        # But we need a register to write to memory.
        # Let's use %eax as temp, assuming INC doesn't need to preserve EAX value if it wasn't the operand.
        # Actually INC preserves other registers.
        # We can use the stack!
        code.append("pushl %eax")
        code.append(f"movl v_dest, %eax")
        code.append(f"movl %eax, {op_addr}")
        code.append("popl %eax")

    code.append("")
    return "\n".join(code)

def movfuscate_dec(table_addr: str, op_addr: str, backup_addr: str):
    code = []
    
    code.append(f"movl %ecx, {backup_addr}")
    code.append(f"movl %eax, {backup_addr}+4")
    code.append(f"movl %ebx, {backup_addr}+8")

    # Load op to v_dest
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

    if op_addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl v_dest, {op_addr}")
    else:
        # Write back to memory
        code.append("pushl %eax")
        code.append(f"movl v_dest, %eax")
        code.append(f"movl %eax, {op_addr}")
        code.append("popl %eax")

    code.append("")
    return "\n".join(code)

def movfuscate_lea(table_addr: str, src_addr: str, dest_addr: str, backup_addr: str):
    code = []
    
    val_str = f"${src_addr}"
    
    if dest_addr in ["%eax", "%ebx", "%ecx", "%edx", "%esp", "%esi"]:
        code.append(f"movl {val_str}, v_{dest_addr[1:]}")
        code.append(f"movl {val_str}, {dest_addr}")
    else:
        code.append(f"movl {val_str}, {dest_addr}")
        
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
            case _:
                outputFile.write(f'{line[:-1]} # de movfuscat\n')

inputFile.close()
outputFile.close()