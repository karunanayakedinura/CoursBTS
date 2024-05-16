drop table if exists Employe;
drop table if exists HistoriqueSalaires;

CREATE TABLE Employe
	(
	ID Integer NOT NULL,
	Nom Varchar(30),
	Salaire Decimal(8,2),
	CONSTRAINT PK_Emp PRIMARY KEY (ID)
	)ENGINE = INNODB;
	
CREATE TABLE HistoriqueSalaires
	(
	ID Integer NOT NULL,
	Nom Varchar(30),
	AncienSalaire Decimal(8,2),
	NouveauSalaire Decimal(8,2),
	DateModif Date, 
	CONSTRAINT PK_His PRIMARY KEY (ID,DateModif)
	)ENGINE = INNODB;


