PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS Client (
    id_client INTEGER PRIMARY KEY AUTOINCREMENT,
    nume TEXT NOT NULL,
    prenume TEXT NOT NULL,
    telefon TEXT,
    email TEXT
);

CREATE TABLE IF NOT EXISTS Autovehicul (
    id_autovehicul INTEGER PRIMARY KEY AUTOINCREMENT,
    id_client INTEGER NOT NULL,
    marca TEXT NOT NULL,
    model TEXT NOT NULL,
    an_fabricatie INTEGER,
    numar_inmatriculare TEXT NOT NULL,
    serie_sasiu TEXT,
    FOREIGN KEY (id_client) REFERENCES Client(id_client)
);

CREATE TABLE IF NOT EXISTS Programare (
    id_programare INTEGER PRIMARY KEY AUTOINCREMENT,
    id_autovehicul INTEGER NOT NULL,
    data_programare TEXT NOT NULL,
    motiv TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'programata',
    FOREIGN KEY (id_autovehicul) REFERENCES Autovehicul(id_autovehicul)
);

CREATE TABLE IF NOT EXISTS Mecanic (
    id_mecanic INTEGER PRIMARY KEY AUTOINCREMENT,
    nume TEXT NOT NULL,
    prenume TEXT NOT NULL,
    specializare TEXT
);

CREATE TABLE IF NOT EXISTS Lucrare (
    id_lucrare INTEGER PRIMARY KEY AUTOINCREMENT,
    id_programare INTEGER NOT NULL,
    id_mecanic INTEGER NOT NULL,
    descriere TEXT NOT NULL,
    cost_manopera REAL NOT NULL DEFAULT 0,
    status TEXT NOT NULL DEFAULT 'in_asteptare',
    FOREIGN KEY (id_programare) REFERENCES Programare(id_programare),
    FOREIGN KEY (id_mecanic) REFERENCES Mecanic(id_mecanic)
);

CREATE TABLE IF NOT EXISTS Piesa (
    id_piesa INTEGER PRIMARY KEY AUTOINCREMENT,
    denumire TEXT NOT NULL,
    cod_piesa TEXT NOT NULL,
    pret_unitar REAL NOT NULL,
    stoc INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS PiesaLucrare (
    id_lucrare INTEGER NOT NULL,
    id_piesa INTEGER NOT NULL,
    cantitate INTEGER NOT NULL,
    pret_la_utilizare REAL NOT NULL,
    PRIMARY KEY (id_lucrare, id_piesa),
    FOREIGN KEY (id_lucrare) REFERENCES Lucrare(id_lucrare),
    FOREIGN KEY (id_piesa) REFERENCES Piesa(id_piesa)
);

CREATE TABLE IF NOT EXISTS Factura (
    id_factura INTEGER PRIMARY KEY AUTOINCREMENT,
    id_programare INTEGER NOT NULL,
    data_emitere TEXT NOT NULL,
    total REAL NOT NULL,
    status_plata TEXT NOT NULL DEFAULT 'neplatita',
    FOREIGN KEY (id_programare) REFERENCES Programare(id_programare)
);
