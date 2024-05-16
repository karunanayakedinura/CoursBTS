drop table if exists BonbonPiece;
drop table if exists BonbonPoids;
drop table if exists GateauPoids;

CREATE TABLE BonbonPiece
	(
	Id_Produit Char(4) NOT NULL,
	Nombre_Piece Integer,
	Poids_App_Piece Decimal(5,2),
	CONSTRAINT PK_Pro PRIMARY KEY (Id_Produit)
	)ENGINE = INNODB;
	
CREATE TABLE BonbonPoids
	(
	Id_Produit Char(4) NOT NULL,
	POIDS Decimal(10,2),
	CONSTRAINT PK_Pro PRIMARY KEY (Id_Produit)
	)ENGINE = INNODB;
	
CREATE TABLE GateauPoids
	(
	Id_Produit Char(4) NOT NULL,
	Poids Decimal(5,2),
	Date_Peremption Date,
	CONSTRAINT PK_Pro PRIMARY KEY (Id_Produit)
	)ENGINE = INNODB;

