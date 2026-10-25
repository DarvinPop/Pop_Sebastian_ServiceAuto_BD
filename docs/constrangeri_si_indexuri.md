# Constrângeri și indexuri

Cheile primare identifică înregistrările, iar cheile externe asigură legăturile dintre tabele. În SQLite verificarea cheilor externe se activează pentru fiecare conexiune cu `PRAGMA foreign_keys = ON`.

## Unicitate

- Numărul de înmatriculare și seria de șasiu sunt unice.
- Codul piesei este unic.
- O programare poate avea cel mult o factură.

## Indexuri

Au fost adăugate indexuri pe cheile externe folosite frecvent la JOIN și pe data programării, pentru căutări și filtrări.

## Validări de completat

În versiunea actuală sunt implementate cheile, unicitatea și indexurile. Validările pentru valori negative, intervale de ani și liste de statusuri vor necesita refacerea definițiilor tabelelor cu `CHECK` sau validare suplimentară în aplicație. SQLite nu permite adăugarea directă a unei constrângeri CHECK la o coloană existentă printr-un simplu ALTER TABLE.

Costurile sunt stocate momentan ca REAL pentru simplitate; pentru facturare reală ar fi preferabilă reprezentarea în bani întregi (de exemplu bani) sau o politică explicită de rotunjire.
