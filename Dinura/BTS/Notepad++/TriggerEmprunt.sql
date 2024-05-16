DROP TRIGGER IF EXISTS VerifEmprunt;
DELIMITER //
CREATE TRIGGER VerifEmprunt
BEFORE INSERT ON Emprunts
FOR EACH ROW
BEGIN 
	DECLARE peutemprunter, etdisponible boolean
	CALL NbrEmprunt(NEW.idMembre,peutemprunter);
	CALL DispoLivre(NEW.idLivre,peutemprunter);
	IF NOT etdisponible OR NOT peutemprunter THEN
		SIGNAL SQLSTATE '47500'
		SET MESSAGE_TEXT = 'Il ne peut pas emprumter un autre livre';
	END IF;
END;
//
DELIMITER ;