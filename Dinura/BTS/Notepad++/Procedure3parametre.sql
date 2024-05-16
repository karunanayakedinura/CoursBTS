-- Exo 3 avec paramètre
DROP PROCEDURE IF EXISTS UpdateAdresse;
DELIMITER //
CREATE PROCEDURE UpdateAdresse(IN Code_Client Char(2),OUT NewAdresse Varchar(50))
BEGIN
	UPDATE Client
	SET Adresse = @NewAdresse
	WHERE Code_c = Code_Client;
END //
DELIMITER ;
 
CALL UpdateAdresse('57',@NewAdresse);
INSERT INTO CLIENT(Adresse) VALUES ('12 rue des champs');
