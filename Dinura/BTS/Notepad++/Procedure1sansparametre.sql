-- Exo 1 sans paramètre
DROP PROCEDURE IF EXISTS MontantCommande;
DELIMITER //
CREATE PROCEDURE MontantCommande()
BEGIN
	SELECT SUM(Total_ht) FROM COMMANDE;
END //
DELIMITER ;

CALL MontantCommande();

