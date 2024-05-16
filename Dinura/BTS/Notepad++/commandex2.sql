drop table if exists REPRESENTANTS;
drop table if exists PRODUITS;
drop table if exists CLIENTS;
drop table if exists VENTES;

CREATE TABLE REPRESENTANTS 
(
 NR INTEGER PRIMARY KEY,
 NOMR VARCHAR(8), 
 VILLE VARCHAR(7)
)ENGINE = INNODB;
CREATE TABLE PRODUITS
(
 NP INTEGER PRIMARY KEY,
 NOMP VARCHAR(12),
 COUL VARCHAR(5),
 PDS INTEGER
)ENGINE = INNODB;
CREATE TABLE CLIENTS 
(
 NC INTEGER PRIMARY KEY,
 NOMC VARCHAR(7),
 VILLE VARCHAR(12)
)ENGINE = INNODB;
CREATE TABLE VENTES 
(
 NR INTEGER REFERENCES REPRESENTANTS(NR),
 NP INTEGER REFERENCES PRODUITS(NP),
 NC INTEGER REFERENCES CLIENTS(NC),
 QT INTEGER,
 PRIMARY KEY (NR, NP, NC)
)ENGINE = INNODB;
