DROP TRIGGER IF EXISTS SuppEmploye;
DELIMITER //
CREATE TRIGGER SuppEmploye
BEFORE DELETE ON Employe 
FOR EACH ROW
BEGIN 
	IF OLD.Salaire = (SELECT MAX(Salaire) FROM Employe) THEN 
		SIGNAL SQLSTATE '46000'
		SET MESSAGE_TEXT = 'Impossible de supprimer employe avec le salaire le plus haut';
	END IF;
END;
// 
DELIMITER ;