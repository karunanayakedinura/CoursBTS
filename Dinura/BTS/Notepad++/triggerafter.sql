DROP TRIGGER IF EXISTS MajSalaire;
DELIMITER //
CREATE TRIGGER MajSalaire
AFTER UPDATE ON Employe 
FOR EACH ROW
BEGIN 
	INSERT INTO HistoriqueSalaires (ID,Nom,AncienSalaire,NouveauSalaire,DateModif) 
	VALUES (OLD.ID,OLD.Nom,OLD.Salaire,NEW.Salaire,CURRENT_DATE());		
END;
//
DELIMITER ;