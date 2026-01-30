# MoVfuscator

# Descriere
MOVfuscator-ul este un program care transforma un cod clasic de Assembly x86 ( pe 32 de biti ), intr-un program format exclusiv din instructiuni "mov".

Acesta primeste un fisier ( al carui continut este codul Assembly ) si returneaza intr-un alt fisier noul cod.
El nu este gandit pentru a face un cod "mai eficient", ci doar pentru a inlocui toate instructiunile cu MOV-uri.

Este capabil de a reproduce instructiunile urmatoare: 

- Operatii
> inc, dec, add, sub, mul, div, and, or, not, xor, shr, shl

- Utilizarea stivei
> lea, push, pop

- Conditii si bucle
> cmp, loop, jump-uri

# Cum functioneaza
MOVfuscatorul "compileaza" codul, tinand minte toate variabilele care sunt folosite in programul assembly si face operatii pentru a stii la fiecare moment al
programului ce se va intampla. El anticipeaza ce se va intampla in urma fiecarui calcul, bucla sau operatie de comparare.

MOVfuscatorul parseaza codul primit, linie cu linie, intr-un obiect, pentru a-l separa pe etichete. Acesta tine minte in timp real variabilele din registrii si,
utilizand functiile predefinite, executa calculele si scrie in fisierul de output codul asociat acelei operatii. Pentru fiecare loop, pe care il avem, programul
cunoaste situatia in care se afla variabilele din asssembly si va decide daca bucla continua sau este intrerupta.

Functiile predefinite functioneaza prin utilizarea unor lookup table-uri. Aceste tabele contin date astfel incat, in urma executiei, registrii sa primeasca 
valorile potrivite. Noul cod assembly se foloseste de aceste valori pentru a creea o replica a fiecarei linii de cod din input, cu scopul de a functiona 
independent de MOVfuscator.

Metoda prin care generam aceste lookup table-uri, poate fi vazuta in fisierul _lookupTableGenerator.py_.


# Testare
Pentru a verifica daca MOVfuscatorul functioneaza, puteti descarca cateva coduri urmand folder-ele astfel:

> tests - > probleme movfuscator - > 0x02 sau 0x04

Sau puteti folosi aceste link-uri:

    https://cs.unibuc.ro/~crusu/asc/Arhitectura%20Sistemelor%20de%20Calcul%20(ASC)%20-%20Probleme%20Rezolvate%20Laborator%200x02.pdf
######
    https://cs.unibuc.ro/~crusu/asc/Arhitectura%20Sistemelor%20de%20Calcul%20(ASC)%20-%20Probleme%20Rezolvate%20Laborator%200x04.pdf

# Limite
Programul nu stie sa inlocuiasca instructiunea "call".

Procedurile care pot fi chemate trebuie sa fie functii din C ( exemplu: printf, scanf ).

Etichetele originale ( in afara de cea de final ) sunt sterse. Prin urmare, ele trebuie sa fie adaugate manual pentru debugging.

Input-ul trebuie sa aiba un format specific ( nu au voie sa lipseasca liniile .data si .text ).

Avand in vedere numarul ridicat de instructiuni "mov" necesare pentru a face o simpla operatie, pentru un cod assembly cu sute de linii o sa returneze unul cu
zeci sau chiar sute de mii de linii, asa ca timpul de executie poate fi lung.

# Referinte
Ideea programului a fost preluata de la Christopher Domas [The movfuscator](https://www.youtube.com/watch?v=hsNDLVUzYEs).

# Echipa
Mosul Tudor

Nechifor Stefan-Alexandru

Simzianu Teodora

Teodorescu Nicolas-Alexandru

