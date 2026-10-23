# Sistem de Gestiune a Activității unui Service Auto

## 1. Domeniu și Utilitate Practică
Proiectul se încadrează în domeniul administrării serviciilor de întreținere și reparații auto. Sistemul urmărește organizarea informațiilor despre clienți, autovehicule, programări, lucrări, mecanici, piese și facturi într-o bază de date relațională.

## 2. Scopul Proiectului
Realizarea unei baze de date și a unei aplicații de gestiune care să permită evidența clienților și a autovehiculelor, organizarea programărilor, urmărirea reparațiilor, gestionarea pieselor utilizate și emiterea facturilor.

## 3. Obiective Funcționale
1. **Gestiunea Clienților și Autovehiculelor:** Înregistrarea datelor clienților și asocierea fiecărui autovehicul cu proprietarul său.
2. **Programări și Reparații:** Evidența programărilor, a lucrărilor efectuate și a mecanicilor responsabili.
3. **Gestiunea Pieselor:** Înregistrarea pieselor, a stocurilor și a cantităților folosite pentru fiecare lucrare.
4. **Facturare:** Calcularea costurilor pentru manoperă și piese și evidența facturilor.
5. **Raportare și Analiză:** Interogări privind istoricul reparațiilor, lucrările mecanicilor, piesele cu stoc redus și încasările.

## 4. Structura Depozitului
```text
Pop_Sebastian_ServiceAuto_BD/
├── README.md
├── CHANGELOG.md
├── .gitignore
├── docs/
│   ├── analiza_cerintelor.md
│   └── diagrams/
├── db/
│   ├── schema/
│   ├── seed/
│   ├── views/
│   ├── procedures/
│   ├── queries/
│   └── diagrams/
├── app/
└── teste/
```

Structura prezintă organizarea planificată a proiectului. Directoarele pentru etapele viitoare vor fi create pe măsură ce sunt implementate.

## 5. Tehnologii
- SQLite
- Python și Flask
- HTML și CSS
