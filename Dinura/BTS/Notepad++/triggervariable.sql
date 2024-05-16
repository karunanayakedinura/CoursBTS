DELIMITER //
CREATE TRIGGER check_exclusion_before_bonbon_poids
BEFORE INSERT ON BonbonPoids 
FOR EACH ROW
BEGIN 
	DECLARE entity_count INT;
	
	SET entity_count = (
		SELECT
			COUNT(*)
		FROM
			(SELECT 1 FROM BonbonPiece WHERE Id_Produit = NEW.Id_Produit
			UNION ALL
			(SELECT 1 FROM GateauPoids WHERE Id_Produit = NEW.Id_Produit) AS combined_entities
	);
	
	IF entity_count > 0 THEN
		SIGNAL SQLSTATE '48000'
		SET MESSAGE_TEXT = 'Le produit ne peut pas appartenir à plus d une entité simultané';
	END IF;	
END;
//
DELIMITER ;