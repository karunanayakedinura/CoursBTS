DELETE FROM Ligue;
INSERT INTO Ligue
VALUES 
('411007','Basket','Valerie LAHEURTE'),
('411008','Escrime','Pierre LENOIR'),
('411009','fOOT','Mohamed BOURGARD'),
('411010','Baby-Foot','Sylvain DELAHOUSE');
SELECT * FROM Ligue;

DELETE FROM Prestation;
INSERT INTO Prestation
VALUES 
('AFFRAN','Affranchissement',3.33),
('PHOTOCOULEUR','Photocopies couleur',0.24),
('PHOTON&B','Photocopies Noir et Blanc',0.055),
('Traceur','Utilisation de traceur',0.356);
SELECT * FROM Prestation;

DELETE FROM Ligne_Facture;
INSERT INTO Ligne_Facture
VALUES
('5172','AFFRAN',0),
('5172','PHOTOCOULEUR',300),
('5172','PHOTON&B',552),
('5172','Traceur',2);
SELECT * FROM Ligne_Facture;

DELETE FROM Facture;
INSERT INTO Facture
VALUES
('5172','411007','2011-04-08','2011-04-30'),
('5174','411010','2012-02-12','2012-02-29');
SELECT * FROM Facture;
