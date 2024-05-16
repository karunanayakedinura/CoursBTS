-- Exo 4 avec paramètre
DROP PROCEDURE IF EXISTS UpdateTel;
DELIMITER //
CREATE PROCEDURE UpdateTel(IN Code_Client Char(2),OUT NewTel INT)
BEGIN
	UPDATE Client
	SET Telephone = @NewTel
	WHERE Code_c = Code_Client;
END //
DELIMITER ;
 
CALL UpdateTel('57',@NewTel);
INSERT INTO CLIENT(Telephone) VALUES (0102030405);
