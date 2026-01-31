# MOVfuscator

⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛
⬛️⬛️⬜️⬛️⬛️⬛️⬜️⬛️⬛️⬛️⬛️⬛️⬜️⬜️⬜️⬛️⬛️⬛⬛️⬜️⬛️⬛️⬛️⬛️⬛️⬜️⬛️
⬛️⬜️⬛️⬜️⬛️⬜️⬛️⬜️⬛️⬛️⬛️⬜️⬛️⬛️⬛️⬜️⬛️⬛⬛️⬜️⬛️⬛️⬛️⬛️⬛️⬜️⬛️
⬛️⬜️⬛️⬛️⬜️⬛️⬛️⬜️⬛️⬛️⬜️⬛️⬛️⬛️⬛️⬛️⬜️⬛⬛️⬜️⬛️⬛️⬛️⬛️⬛️⬜️⬛️
⬛️⬜️⬛️⬛️⬜️⬛️⬛️⬜️⬛️⬛️⬜️⬛️⬛️⬛️⬛️⬛️⬜️⬛️⬛️⬜️⬛️⬛️⬛️⬛️⬛️⬜️⬛️
⬛️⬜️⬛️⬛️⬛️⬛️⬛️⬜️⬛️⬛️⬜️⬛️⬛️⬛️⬛️⬛️⬜️⬛️⬛️⬛️⬜️⬛️⬛️⬛️⬜️⬛️⬛️
⬛️⬜️⬛️⬛️⬛️⬛️⬛️⬜️⬛️⬛️⬛️⬜️⬛️⬛️⬛️⬜️⬛️⬛⬛️⬛️⬛️⬜️⬛️⬜️⬛️⬛️⬛️
⬛️⬜️⬛️⬛️⬛️⬛️⬛️⬜️⬛️⬛️⬛️⬛️⬜️⬜️⬜️⬛️⬛️⬛⬛️⬛️⬛️⬛️⬜️⬛️⬛️⬛️⬛️
⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛️⬛
# LIVE AICI
[MOVfuscator](https://movfuscator.onrender.com/)

# Descriere
Movfuscatorul este un script care primeste ca input un cod clasic de Assembly x86 ( pe 32 de biti ), si returneaza un program "movfuscat", format exclusiv din instructiuni MOV.


# Manual de utilizare
| Interfata                     |
|:------------------------------------------:|
| <img width="1545" height="665" alt="MovFuscator" src="https://github.com/user-attachments/assets/7ea9ffc7-aad3-4459-9daf-abb0558914a9" />         |

Am pus la dispozitie o interfata grafica pentru a face testarea mai usoara. Se poate gasi la link-ul de mai sus.
Daca vreti sa lucrati prin intermediul liniei de comanda, procedura este urmatoarea:
Creati in folderul principal ( cel care contine `movfuscator.py` ) un fisier denumit `in.S`. Rulati script-ul `movfuscator.py`, iar rezultatul va fi furnizat intr-un fisier nou generat, `out.py`.

In folderul `/tests/probleme movfuscate` se pot gasi toate problemele din laboratoare, prelucrate deja de script.


# Cum functioneaza
Metoda prin care movfuscator-ul obtine rezultatele instructiunilor ( aritmetice, operatii pe biti ) este prin lookup table-uri. Aceste tabele contin rezultatele operatiilor ( spre exemplu, tabelul addTable[10][11] contine rezultatul adunarii 10+11 ). Tabelele sunt incarcate in memorie pentru fiecare program movfuscat, printr-un fisier binar `tables.bin`. Pentru a pastra dimensiunea tabelelor rezonabila ( 256x256 ), operatiile movfuscate sunt calculate pe fiecare byte al valorilor, iar apoi rezultatele sunt puse impreuna ( asemenea unui circuit pentru o operatie aritmetica, tinand cont de carry acolo unde este cazul ).

| LookUpTable                     |
|:------------------------------------------:|
| ![LookUpTable](https://github.com/user-attachments/assets/0c3a5059-0768-4ae4-a33a-063d0e7043ac)         |

Metoda prin care generam aceste lookup table-uri, poate fi vazuta in fisierul `lookupTableGenerator.py`.

Pentru a trata instructiunile conditionale si buclele, MOVfuscatorul "simuleaza" codul sursa, in aceeasi maniera in care ar face-o un om, memorand starile curente ale tuturor variabilelelor si registrilor care sunt folosite in program, si executa operatiile pentru a stii la fiecare moment al programului ce se va intampla. El anticipeaza ce se va intampla in urma fiecarui calcul, bucla sau operatie de comparare. Pentru fiecare salt din program, script-ul decide daca sa "intre" pe noul branch ( ii da paste sau nu in codul output ).


# Limitari
Etichetele originale ( in afara de cea de final ) sunt sterse. Prin urmare, ele trebuie sa fie adaugate manual pentru debugging.

Programul nu stie cum sa interpreteze proceduri scrise de utilizator ( din cauza lipsei label-urilor ). Procedurile care pot fi chemate trebuie sa fie functii din C ( printf, scanf, etc. ).

Input-ul trebuie sa aiba un format specific ( nu au voie sa lipseasca liniile .data si .text ).

Avand in vedere numarul ridicat de instructiuni "mov" necesare pentru a face o simpla operatie, pentru un cod assembly cu sute de linii o sa returneze unul cu
zeci sau chiar sute de mii de linii, asa ca timpul de executie poate fi lung.

Includerea tabelelor de lookup in fiecare program presupune o dimensiune minima de aproximativ 4MB a fiecarui fisier movfuscat.

Movfuscarea instructiunilor "test" si "call" nu este implementata

# Referinte
Ideea programului ( si mai ales a ideii implementarii tabelelor de lookup ) a fost preluata de la Christopher Domas [The movfuscator](https://www.youtube.com/watch?v=hsNDLVUzYEs).

# Echipa
Mosul Tudor, 151

Nechifor Stefan-Alexandru, 151

Simzianu Teodora, 151

Teodorescu Nicolas-Alexandru, 151

