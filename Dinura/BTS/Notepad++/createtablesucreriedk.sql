drop table if exists CLIENT;
drop table if exists COMMANDE;
drop table if exists LIGNECOMMANDE;
drop table if exists PRODUIT;
drop table if exists VENDEUR;
drop table if exists COMMISSION;

CREATE TABLE CLIENT
	(
	Code_c Char(2) NOT NULL,
	Nom Varchar(40),
	Adresse Varchar(50),
	Cp Char(5),
	Ville Varchar(20),
	Telephone Integer,
	CONSTRAINT PK_Cli PRIMARY KEY (Code_c)
	)ENGINE = INNODB;
	
CREATE TABLE COMMANDE
	(
	Numero Char(5) NOT NULL,
	Code_v Char(2) NOT NULL,
	Code_c Char(2) NOT NULL,
	Date_commande Date,
	Total_ht Decimal(5,2),
	Total_tva Decimal(5,2),
	CONSTRAINT PK_Com PRIMARY KEY (Numero)
	)ENGINE = INNODB;
CREATE TABLE LIGNECOMMANDE
	(
	Numero Char(5),
	Numero_ligne Integer,
	Reference Char(4),
	Quantite_demandee Integer,
	CONSTRAINT PK_Lig PRIMARY KEY (Numero,Numero_ligne,Reference)
	)ENGINE = INNODB;
CREATE TABLE PRODUIT
	(
	Id_Produit Char(4) NOT NULL,
	Designation Varchar(30),
	Quantite Integer,
	Descriptif Char(1),
	Prix_unitaire_ht Decimal(5,2),
	Stock Integer,
	Poids_piece Integer,
	CONSTRAINT PK_Pro PRIMARY KEY (Id_Produit)
	)ENGINE = INNODB;
	
CREATE TABLE VENDEUR
	(
	Code_v Char(2) NOT NULL,
	Nom Varchar(40),
	Adresse Varchar(50),
	Cp Char(5),
	Ville Varchar(20),
	Telephone Integer,
	Code_co Char(2),
	CONSTRAINT PK_Ven PRIMARY KEY (Code_v)
	)ENGINE = INNODB;

CREATE TABLE COMMISSION
	(
	Code_co Char(2) NOT NULL,
	Libelle Varchar(50),
	Pourcentage Integer,
	CONSTRAINT PK_Coi PRIMARY KEY (Code_co)
	)ENGINE = INNODB;
	
