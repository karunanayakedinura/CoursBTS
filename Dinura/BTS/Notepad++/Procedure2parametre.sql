-- Exo 2 avec paramètre
DROP PROCEDURE IF EXISTS SuppClient;
DELIMITER //
CREATE PROCEDURE SuppClient(IN Code_Client Char(2))
BEGIN
	DELETE FROM Client
	WHERE Code_c = Code_Client;
END //
DELIMITER ;
 
CALL SuppClient(57);
