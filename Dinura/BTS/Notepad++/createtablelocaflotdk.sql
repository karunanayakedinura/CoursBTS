drop table if exists louer;
drop table if exists embarcation;
drop table if exists location;
drop table if exists typembarcation;

CREATE TABLE Embarcation
	(
	Numembarcation Char(4) NOT NULL,
	Couleur Varchar(11),
	Disponible Boolean,
	Codetype Char(2),
	CONSTRAINT PK_Emb PRIMARY KEY (Numembarcation)
	)ENGINE = INNODB;
CREATE TABLE Typembarcation
	(
	Codetype Char(2) NOT NULL,
	Nomtype Varchar(30),
	Nbplace Integer,
	Prixdemiheure Decimal(5,2),
	Prixheure Decimal(5,2),
	Prixdemijournee Decimal(5,2),
	Prixjournee Decimal(5,2),
	CONSTRAINT PK_Typ PRIMARY KEY (Codetype)
	)ENGINE = INNODB;
CREATE TABLE Location
	(
	Numlocation Integer NOT NULL,
	Dateloc Date,
	Heuredeb Time,
	Heurefin Time,
	CONSTRAINT PK_Loc PRIMARY KEY (Numlocation)
	)ENGINE = INNODB;
CREATE TABLE Louer
	(
	Numlocation Integer,
	Numembarcation Char(4),
	Nbpersonnes Integer,
	CONSTRAINT PK_Lou PRIMARY KEY (Numlocation,Numembarcation)
	)ENGINE = INNODB;

