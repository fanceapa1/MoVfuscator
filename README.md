# MoVfuscator
Movfuscator asc

# Descriere MOVfuscator
MOVfuscator-ul este un program care transforma un cod clasic de Assembly x86 ( pe 32 de biti ), intr-un program format exclusiv din instructiuni "mov".

Acesta primeste un fisier ( al carui continut este codul Assembly ) si returneaza intr-un alt fisier noul cod.
Este capabil de a reproduce instructiunile urmatoare: inc, dec, add, sub, mul, div, and, or, not, xor, shr, shl, lea, push, pop, cmp, loop si jump-uri).
El nu este gandit pentru a face un cod "mai eficient", ci doar pentru a inlocui toate instructiunile cu MOV-uri.

# Cum functioneaza
MOVfuscatorul "compileaza" codul, tinand minte toate variabilele care sunt folosite in programul assembly si face operatii pentru a stii la fiecare moment al
programului ce se va intampla. El anticipeaza ce se va intampla in urma fiecarui calcul, bucla sau operatie de comparare.

MOVfuscatorul parseaza codul primit, linie cu linie, intr-un obiect, pentru a-l separa pe etichete. Acesta tine minte in timp real variabilele din registrii si,
utilizand functiile predefinite, executa calculele si scrie in fisierul de output codul asociat acelei operatii. Pentru fiecare loop, pe care il avem, programul
cunoaste situatia in care se afla variabilele din asssembly si va decide daca bucla continua sau este intrerupta.

# Limite
Programul nu stie sa inlocuiasca instructiunea "call".
Procedurile care pot fi chemate trebuie sa fie functii din C ( exemplu: printf, scanf ).

# Echipa
Mosul Tudor
Nechifor Stefan-Alexandru
Simzianu Teodora
Teodorescu Nicolas-Alexandru

