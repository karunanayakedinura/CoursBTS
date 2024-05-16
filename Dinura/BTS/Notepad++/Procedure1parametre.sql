-- Exo 1 avec paramètre
DROP PROCEDURE IF EXISTS NomClient;
DELIMITER //
CREATE PROCEDURE NomClient(IN Code_Client Char(2),OUT NomComplet VARCHAR (40))
BEGIN
	SELECT Nom INTO NomComplet
	FROM Client
	WHERE Code_c = Code_Client;
END //
DELIMITER ;
 
CALL NomClient(57,@NomComplet);
SELECT @NomComplet AS NomComplet;