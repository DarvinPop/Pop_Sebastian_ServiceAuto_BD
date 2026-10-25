PRAGMA foreign_keys = ON;

CREATE UNIQUE INDEX IF NOT EXISTS ux_autovehicul_numar
    ON Autovehicul(numar_inmatriculare);

CREATE UNIQUE INDEX IF NOT EXISTS ux_autovehicul_serie
    ON Autovehicul(serie_sasiu);

CREATE UNIQUE INDEX IF NOT EXISTS ux_piesa_cod
    ON Piesa(cod_piesa);

CREATE UNIQUE INDEX IF NOT EXISTS ux_factura_programare
    ON Factura(id_programare);

CREATE INDEX IF NOT EXISTS ix_autovehicul_client
    ON Autovehicul(id_client);

CREATE INDEX IF NOT EXISTS ix_programare_autovehicul
    ON Programare(id_autovehicul);

CREATE INDEX IF NOT EXISTS ix_programare_data
    ON Programare(data_programare);

CREATE INDEX IF NOT EXISTS ix_lucrare_programare
    ON Lucrare(id_programare);

CREATE INDEX IF NOT EXISTS ix_lucrare_mecanic
    ON Lucrare(id_mecanic);

CREATE INDEX IF NOT EXISTS ix_piesalucrare_piesa
    ON PiesaLucrare(id_piesa);
