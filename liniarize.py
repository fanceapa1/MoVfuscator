def liniarizeCode(inputText: str):

    registrii = {
        "%eax": 0, "%ebx": 0, "%ecx": 0, "%edx": 0,
        "%edi": 0, "%esi": 0, "%esp": 0, "%ebp": 0
    }

    flags = {"ZF": 0, "SF": 0}
    memorie = {}
    variabile = {} 
    etichete_linii = {} 
    adresa_curenta_alocare = 100
    output = ".data\n"

    def parseaza_adresa(operand_string):
        continut = operand_string.replace('(', '').replace(')', '')
        componente = continut.split(',')
        
        if len(componente) == 1:
            reg_baza = componente[0].strip()
            return registrii.get(reg_baza, 0)
        elif len(componente) >= 2:
            reg_baza = componente[0].strip()   
            reg_index = componente[1].strip()  
            val_baza = registrii.get(reg_baza, 0)
            val_index = registrii.get(reg_index, 0)
            
            scara = 1
            if len(componente) == 3:
                try: scara = int(componente[2].strip())
                except: pass
                
            for _, info in variabile.items():
                if info["addr"] == val_baza and scara != info["step"]:
                    scara = info["step"]
                    break
            return val_baza + (val_index * scara)
        return 0

    def get_valoare_operand(operand):
        if "(" in operand:
            addr = parseaza_adresa(operand)
            return memorie.get(addr, 0)
        if operand.startswith('$'):
            raw = operand.replace('$', '')
            if raw in variabile: return variabile[raw]["addr"]
            if '0x' in raw.lower(): return int(raw, 16)
            if raw.startswith('0b'): return int(raw, 2)
            try: return int(raw)
            except: return 0
        if operand in registrii: return registrii[operand]
        if operand in variabile:
            addr = variabile[operand]["addr"]
            return memorie.get(addr, 0)
        return 0

    code_baza = inputText

    # Indexare Etichete
    for idx, linie in enumerate(code_baza):
        l = linie.strip()
        if l.endswith(":"): etichete_linii[l[:-1]] = idx

    i = 0
    while i < len(code_baza):
        linie = code_baza[i].strip()
        if not linie: i += 1; continue

        if linie == ".data":
            i += 1
            while i < len(code_baza) and ".text" not in code_baza[i]:
                curr_line = code_baza[i].strip()
                if curr_line: 
                    output += f'{curr_line}\n' 
                    
                lin_data = curr_line
                if ":" in lin_data:
                    parts = lin_data.split(":", 1)
                    nume = parts[0].strip()
                    rest = parts[1].strip()
                    
                    if ".space" in rest or "space" in rest:
                        try:
                            dim = int(rest.replace(".space", "").replace("space", "").strip())
                            variabile[nume] = {"addr": adresa_curenta_alocare, "step": 4}
                            for k in range(0, dim, 4): memorie[adresa_curenta_alocare + k] = 0
                            adresa_curenta_alocare += dim
                        except: pass

                    elif ".ascii" in rest or ".asciz" in rest or "ascii" in rest:
                        is_asciz = ".asciz" in rest or "asciz" in rest
                        try: content = rest.split('"')[1]
                        except: content = ""
                        variabile[nume] = {"addr": adresa_curenta_alocare, "step": 1}
                        for char in content:
                            memorie[adresa_curenta_alocare] = ord(char)
                            adresa_curenta_alocare += 1
                        if is_asciz:
                            memorie[adresa_curenta_alocare] = 0
                            adresa_curenta_alocare += 1

                    else:
                        pas = 4
                        if ".word" in rest: pas = 2
                        elif ".byte" in rest: pas = 1
                        val_str = rest.replace('.long', '').replace('.int', '') \
                                    .replace('.word', '').replace('.byte', '').strip()
                        if val_str:
                            val_str = val_str.split(';')[0].strip() 
                            vals = [int(x, 0) for x in val_str.split(',')]
                            variabile[nume] = {"addr": adresa_curenta_alocare, "step": pas}
                            for v in vals:
                                memorie[adresa_curenta_alocare] = v
                                adresa_curenta_alocare += pas
                i += 1
            continue

        if linie in [".text", ".global main"] or linie.endswith(":"):
            if linie == ".text": output += ".text\n"
            elif linie in [".global main", "main:", "exit:", "et_exit:", "end:", "etexit:"]: output += f"{linie}\n"
            elif linie.endswith(":"): pass
            i += 1
            continue

        # main parsing
        parts = linie.split(None, 1)
        if len(parts) < 2:
            if parts and parts[0] == "ret": i+=1; continue
            i += 1; continue
        
        if linie == 'int $0x80':
            output += 'int $0x80\n'

        inst_raw = parts[0]
        rest = parts[1].split(';')[0].strip()
        instructiune = inst_raw[:-1] if (inst_raw.endswith('l') and len(inst_raw)>3 and inst_raw not in ["call", "imul"]) else inst_raw

        op1, op2 = "", ""
        idx_virgula = -1
        paranteze = 0
        for idx, c in enumerate(rest):
            if c == '(': paranteze += 1
            elif c == ')': paranteze -= 1
            elif c == ',' and paranteze == 0: idx_virgula = idx; break
        
        if idx_virgula != -1: op1, op2 = rest[:idx_virgula].strip(), rest[idx_virgula+1:].strip()
        else: op1 = rest.strip()


        if instructiune == "loop":
            old_ecx = registrii["%ecx"]
            registrii["%ecx"] -= 1
            
            if registrii["%ecx"] != 0:
                if op1 in etichete_linii:
                    i = etichete_linii[op1]
                    continue

        elif instructiune == "test":
            output += f'{linie}\n'
            val1 = get_valoare_operand(op1)
            val2 = get_valoare_operand(op2)
            rez = val1 & val2
            flags["ZF"] = 1 if rez == 0 else 0
            flags["SF"] = 1 if rez < 0 else 0

        elif instructiune == "cmp":
            # Compare does NOT output line; it only sets internal flags for the next jump
            v1, v2 = get_valoare_operand(op1), get_valoare_operand(op2)
            rez = v2 - v1
            flags["ZF"] = 1 if rez == 0 else 0
            flags["SF"] = 1 if rez < 0 else 0

        elif instructiune in ["jmp", "ja", "jb", "jg", "jle", "je", "jne", "jz", "jnz"]:
            # Jumps do NOT output line; they change the execution index 'i'
            should_jump = False
            if instructiune == "jmp": should_jump = True
            elif instructiune == "ja": should_jump = (flags["SF"] == 0 and flags["ZF"] == 0)
            elif instructiune == "jb": should_jump = (flags["SF"] == 1)
            elif instructiune == "jg": should_jump = (flags["SF"] == 0 and flags["ZF"] == 0)
            elif instructiune == "jle": should_jump = (flags["SF"] == 1 or flags["ZF"] == 1)
            elif instructiune in ["je", "jz"]: should_jump = (flags["ZF"] == 1)
            elif instructiune in ["jne", "jnz"]: should_jump = (flags["ZF"] == 0)

            if should_jump and op1 in etichete_linii:
                i = etichete_linii[op1]
                continue

        elif instructiune in ["div", "idiv"]:
            output += f'{linie}\n'
            impartitor = get_valoare_operand(op1)
            if impartitor != 0:
                deimpartit = registrii["%eax"]
                cat = deimpartit // impartitor
                rest = deimpartit % impartitor
                
                old_eax = registrii["%eax"]
                old_edx = registrii["%edx"]
                
                registrii["%eax"] = cat
                registrii["%edx"] = rest
                
            else:
                print("Eroare: Impartire la 0")

        elif instructiune == "mov" or instructiune == "movl":
            output += f'{linie}\n'
            val = get_valoare_operand(op1)
            if "(" in op2: 
                memorie[parseaza_adresa(op2)] = val
            elif op2 in registrii: 
                old = registrii[op2]
                registrii[op2] = val
            elif op2 in variabile:
                memorie[variabile[op2]["addr"]] = val

        elif instructiune == "sub" or instructiune == "subl":
            output += f'{linie}\n'
            val = get_valoare_operand(op1)
            if op2 in registrii: 
                old = registrii[op2]
                registrii[op2] -= val

        elif instructiune == "add" or instructiune == "addl":
            output += f'{linie}\n'
            val = get_valoare_operand(op1)
            if op2 in registrii: 
                old = registrii[op2]
                registrii[op2] += val

        elif instructiune == "xor" or instructiune == "xorl":
            output += f'{linie}\n'
            val = get_valoare_operand(op1)
            if op2 in registrii:
                old = registrii[op2]
                res = registrii[op2] ^ val
                registrii[op2] = res
                flags["ZF"] = 1 if res == 0 else 0

        elif instructiune == "or" or instructiune == "orl":
            output += f'{linie}\n'
            val = get_valoare_operand(op1)
            if op2 in registrii:
                old = registrii[op2]
                res = registrii[op2] | val
                registrii[op2] = res
                flags["ZF"] = 1 if res == 0 else 0

        elif instructiune == "mul" or instructiune == "mull":
            output += f'{linie}\n'
            val = get_valoare_operand(op1)
            # mul calculates EDX:EAX = EAX * operand
            old_eax = registrii["%eax"]
            res = old_eax * val
            registrii["%eax"] = res & 0xFFFFFFFF
            registrii["%edx"] = (res >> 32) & 0xFFFFFFFF

        elif instructiune == "shl" or instructiune == "shll":
            output += f'{linie}\n'
            val = get_valoare_operand(op1)
            if op2 in registrii:
                old = registrii[op2]
                registrii[op2] <<= val

        elif instructiune == "shr" or instructiune == "shrl":
            output += f'{linie}\n'
            val = get_valoare_operand(op1)
            if op2 in registrii:
                old = registrii[op2]
                registrii[op2] >>= val

        elif instructiune == "inc" or instructiune == "incl":
            output += f'{linie}\n'
            if op1 in registrii:
                registrii[op1] += 1

        elif instructiune == "dec" or instructiune == "decl":
            output += f'{linie}\n'
            if op1 in registrii:
                registrii[op1] -= 1

        elif instructiune == "lea":
            output += f'{linie}\n'
            if op1 in variabile:
                registrii[op2] = variabile[op1]["addr"]
            elif "(" in op1:
                addr = parseaza_adresa(op1)
                registrii[op2] = addr

        elif instructiune == "push":
            output += f'{linie}\n'
            registrii["%esp"] -= 4

        elif instructiune == "pop":
            output += f'{linie}\n'
            registrii["%esp"] += 4

        elif instructiune == "call":
            output += f'{linie}\n'

        i += 1

    return output