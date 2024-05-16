INSERT INTO BonbonPiece
SELECT Id_Produit,Quantite,Poids_piece 
FROM Produit 
WHERE Descriptif = 'P';

INSERT INTO BonbonPoids
SELECT Id_Produit,Quantite
FROM Produit 
WHERE Descriptif = 'G';

