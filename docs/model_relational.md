# Model relațional

## Tabele și chei

| Tabel | Cheie primară | Chei externe |
| --- | --- | --- |
| Client | id_client | - |
| Autovehicul | id_autovehicul | id_client → Client |
| Programare | id_programare | id_autovehicul → Autovehicul |
| Mecanic | id_mecanic | - |
| Lucrare | id_lucrare | id_programare → Programare, id_mecanic → Mecanic |
| Piesa | id_piesa | - |
| PiesaLucrare | (id_lucrare, id_piesa) | id_lucrare → Lucrare, id_piesa → Piesa |
| Factura | id_factura | id_programare → Programare |

## Cardinalități

- Client 1:N Autovehicul
- Autovehicul 1:N Programare
- Programare 1:N Lucrare
- Mecanic 1:N Lucrare
- Lucrare N:M Piesa, prin PiesaLucrare
- Programare 1:0..1 Factura (unicitatea este asigurată prin index)

## Ordinea de creare

Se rulează mai întâi `db/schema/01_tabele.sql`, apoi `db/schema/02_constrangeri_indexuri.sql`.

Datele calendaristice sunt păstrate ca text în format ISO 8601, iar identificatorii sunt numere întregi.
