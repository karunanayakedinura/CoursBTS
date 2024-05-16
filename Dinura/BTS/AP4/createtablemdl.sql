drop table if exists Ligue;
drop table if exists Prestation;
drop table if exists Ligne_Facture;
drop table if exists Facture;

CREATE TABLE Ligue
	(
	Compte Char(6) NOT NULL,
	Intitule Varchar(20),
	Tresorier Varchar(50) ,
	CONSTRAINT PK_Lig PRIMARY KEY (Compte)
	)ENGINE = INNODB;
CREATE TABLE Prestation
	(
	Code Varchar(20) NOT NULL,
	Libelle Varchar(50),
	Pu Decimal(5,3),
	CONSTRAINT PK_Pre PRIMARY KEY (Code)
	)ENGINE = INNODB;
CREATE TABLE Ligne_Facture
	(
	NumFacture Char(4) NOT NULL,
	Code Varchar(20),
	Quantite Integer,
	CONSTRAINT PK_Lif PRIMARY KEY (Code)
	)ENGINE = INNODB;
CREATE TABLE Facture
	(
	NumFacture Char(4),
	Compte Char(6),
	Dates Date,
	Echeance Date,
	CONSTRAINT PK_Fac PRIMARY KEY (NumFacture,Compte)
	)ENGINE = INNODB;

