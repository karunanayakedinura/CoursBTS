-- Exo Reflexion avec paramètre
DROP PROCEDURE IF EXISTS NbrEmprunt;
DELIMITER //
CREATE PROCEDURE NbrEmprunt(IN idMembre INT,OUT peutemprunter BOOLEAN)
BEGIN
	DECLARE nbemp
	SELECT COUNT(*) INTO nbemp
	FROM Emprunts
	WHERE idMembre = idMembre
	SET peutemprunter = nbemp>4;
	END IF 
END //
DELIMITER ;
 
CALL NbrEmprunt(1,@peutemprunter);
SELECT @peutemprunter AS peutemprunter;