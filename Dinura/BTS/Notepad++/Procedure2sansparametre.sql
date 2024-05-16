-- Exo 2 sans paramètre
DROP PROCEDURE IF EXISTS RuptureStock;
DELIMITER //
CREATE PROCEDURE RuptureStock()
BEGIN
	SELECT * FROM PRODUIT WHERE Stock = 0;
END //
DELIMITER ;
 
CALL RuptureStock();