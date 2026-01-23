#structura de parsare are inputului, care tine liniile de cod de la fiecare eticheta(fara eticheta)
def if_condition(eticheta_jmp, rez):
  if rez == True:
    return dic_index[eticheta_jmp]
  else:
    return -1

fin = open("in", "r")
fout = open("out", "w")

lines = fin.readlines()
dic_index = {} #tine indicii pentru fiecare eticheta ex "main:"
nr_etichete = 0 #nr de etichete
v_cod = [[] for i in range(10)] #toate liniile de cod pentru fiecare eticheta
for line in lines:
  if line[-2] == ':':
    dic_index[line[:-1]] = nr_etichete
    nr_etichete += 1
  elif (nr_etichete != 0):
    v_cod[nr_etichete - 1].append(line[:-1])

cer = "main:"
ok = 0
for i in dic_index:
  if i == cer:
    ok = 1
  if ok == 1:
    fout.write(f"{v_cod[dic_index[i]]}\n")

#if_conditie returneaza indexul etichetei la care se da jump, daca conditita e adevarata
#daca conditia e falsa, returneaza -1 si stim sa continuam pe urmatoarea linie

fin.close()
fout.close()