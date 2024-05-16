-- Exo 3 sans paramètre
DROP PROCEDURE IF EXISTS ChiffreAffaire;
DELIMITER //
CREATE PROCEDURE ChiffreAffaire()
BEGIN
	SELECT SUM(Prix_unitaire_ht*Quantite_demandee) 
	FROM Produit P,LigneCommande L 
	WHERE L.Reference = P.Id_Produit;
END //
DELIMITER ;
 
CALL ChiffreAffaire();