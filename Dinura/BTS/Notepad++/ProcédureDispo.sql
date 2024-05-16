-- Exo Reflexion avec paramètre
DROP PROCEDURE IF EXISTS DispoLivre;
DELIMITER //
CREATE PROCEDURE DispoLivre(IN idLembre INT,OUT disp BOOLEAN)
BEGIN
	SELECT disponible INTO disp
	FROM Livres
	WHERE idLivre = idLivre;
END //
DELIMITER ;
 
CALL DispoLivre(1,@disp);
SELECT @disp AS Dispo;