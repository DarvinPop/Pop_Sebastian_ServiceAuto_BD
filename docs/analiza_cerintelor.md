# Analiza cerințelor – Service auto

## Descrierea sistemului

Baza de date va fi folosită pentru organizarea activității unui service auto. Se vor înregistra clienții, mașinile acestora, programările, lucrările efectuate, mecanicii, piesele utilizate și facturile.

## Cerințe funcționale

1. Înregistrarea și actualizarea datelor clienților.
2. Asocierea fiecărui autovehicul cu proprietarul său.
3. Înregistrarea programărilor pentru un autovehicul, cu data și motivul vizitei.
4. Evidența lucrărilor realizate în urma unei programări.
5. Asocierea unui mecanic cu o lucrare.
6. Înregistrarea pieselor utilizate și a cantităților.
7. Calcularea costului total al lucrărilor și pieselor.
8. Evidența facturilor emise.
9. Căutarea istoricului reparațiilor pentru un autovehicul.
10. Obținerea de rapoarte privind lucrările și încasările.

## Entități identificate

- **Client**: id_client, nume, prenume, telefon, email.
- **Autovehicul**: id_autovehicul, id_client, marca, model, an_fabricatie, numar_inmatriculare, serie_sasiu.
- **Programare**: id_programare, id_autovehicul, data_programare, motiv, status.
- **Mecanic**: id_mecanic, nume, prenume, specializare.
- **Lucrare**: id_lucrare, id_programare, id_mecanic, descriere, cost_manopera, status.
- **Piesa**: id_piesa, denumire, cod_piesa, pret_unitar, stoc.
- **PiesaLucrare**: id_lucrare, id_piesa, cantitate, pret_la_utilizare.
- **Factura**: id_factura, id_programare, data_emitere, total, status_plata.

## Relații

- Un client poate deține mai multe autovehicule; fiecare autovehicul aparține unui client.
- Un autovehicul poate avea mai multe programări.
- O programare poate avea mai multe lucrări.
- Un mecanic poate efectua mai multe lucrări.
- O lucrare poate utiliza mai multe piese, iar aceeași piesă poate fi utilizată în mai multe lucrări. Relația este reprezentată prin PiesaLucrare.
- O programare poate avea cel mult o factură.

## Reguli de integritate

- Identificatorii entităților sunt unici.
- Numărul de înmatriculare și seria de șasiu nu se repetă.
- Prețurile, costurile și cantitățile nu pot fi negative.
- Stocul pieselor nu poate fi negativ.
- O lucrare trebuie să fie asociată unei programări și unui mecanic existent.
- O factură trebuie să corespundă unei programări existente.

## Operații și rapoarte

Sistemul va permite adăugarea, afișarea, modificarea și ștergerea controlată a înregistrărilor. Rapoartele vor include istoricul unui autovehicul, programările după status, lucrările unui mecanic, piesele cu stoc redus și valoarea facturilor emise într-o perioadă.
