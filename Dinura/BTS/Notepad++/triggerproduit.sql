DROP TRIGGER IF EXISTS VerifInsertionBpi;
DELIMITER //
CREATE TRIGGER VerifInsertionBpi 
BEFORE INSERT ON BonbonPiece
FOR EACH ROW
BEGIN 
	IF(
	(NEW.Id_Produit IN (SELECT Id_Produit FROM BonbonPoids)) OR 
	(NEW.Id_Produit IN (SELECT Id_Produit FROM GateauPoids)) 
	)THEN
		SIGNAL SQLSTATE '47000'
		SET MESSAGE_TEXT = 'Le produit se trouve deja dans une autre table';
	END IF;
END;
//
DELIMITER ;

DROP TRIGGER IF EXISTS VerifInsertionBpo;
DELIMITER //
CREATE TRIGGER VerifInsertionBpo 
BEFORE INSERT ON BonbonPoids
FOR EACH ROW
BEGIN 
	IF(
	(NEW.Id_Produit IN (SELECT Id_Produit FROM BonbonPiece)) OR 
	(NEW.Id_Produit IN (SELECT Id_Produit FROM GateauPoids)) 
	)THEN
		SIGNAL SQLSTATE '47000'
		SET MESSAGE_TEXT = 'Le produit se trouve deja dans une autre table';
	END IF;
END;
//
DELIMITER ;

DROP TRIGGER IF EXISTS VerifInsertionGat;
DELIMITER //
CREATE TRIGGER VerifInsertionGat 
BEFORE INSERT ON GateauPoids
FOR EACH ROW
BEGIN 
	IF(
	(NEW.Id_Produit IN (SELECT Id_Produit FROM BonbonPoids)) OR 
	(NEW.Id_Produit IN (SELECT Id_Produit FROM BonbonPiece)) 
	)THEN
		SIGNAL SQLSTATE '47000'
		SET MESSAGE_TEXT = 'Le produit se trouve deja dans une autre table';
	END IF;
END;
//
DELIMITER ;