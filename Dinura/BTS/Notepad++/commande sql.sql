SELECT AVG(Prixheure) AS "Prix moy horaire"
FROM Typembarcation; 

SELECT COUNT(Numembarcation) AS "Nbr emb jaunes"
FROM Embarcation
WHERE Couleur = 'jaune';

UPDATE Typembarcation 
SET Prixheure = Prixheure - 0.18  
WHERE Codetype = 'J1';

UPDATE Typembarcation 
SET Prixheure = Prixheure - 0.18   
WHERE Codetype = 'J2';

UPDATE Typembarcation 
SET Prixheure = Prixheure - 0.18   
WHERE Codetype = 'M1';

INSERT INTO Typembarcation
VALUES ('K1','Kayak',1,15,20,NULL,NULL);

INSERT INTO Typembarcation(Codetype,Nomtype,Nbplace)
VALUES ('K2','Kayak',2);

INSERT INTO Embarcation
VALUES ('K101','orange',TRUE,'K1');

DELETE FROM Typembarcation
WHERE Codetype = 'K2';

SELECT codetype, count(numembarcation) AS "nbemb"
FROM EMBARCATION 
GROUP BY codetype;

SELECT couleur, count(numembarcation) AS "nbemb"
FROM EMBARCATION 
GROUP BY couleur;

SELECT Nomtype, count(numembarcation) AS "nbemb"
FROM EMBARCATION,TYPEMBARCATION 
WHERE EMBARCATION.Codetype = TYPEMBARCATION.Codetype
GROUP BY Nomtype;

SELECT Dateloc, count(Dateloc) AS "nbemb"
FROM LOUER,LOCATION 
WHERE LOCATION.Numlocation = LOUER.Numlocation
GROUP BY Dateloc;

SELECT COUNT(Numembarcation) AS "Nb emb < 100"
FROM EMBARCATION E, TYPEMBARCATION T
WHERE E.Codetype = T.Codetype
AND disponible = True
AND Prixheure < 100;

SELECT Dateloc, COUNT(Numlocation) AS "nb loc"
FROM LOCATION 
GROUP BY Dateloc;

SELECT COUNT(Numembarcation) AS "Nb emb"
FROM EMBARCATION E, TYPEMBARCATION T
WHERE E.Codetype = T.Codetype
AND Nomtype = 'jet-ski'
AND Nbplace = 1;

SELECT Nomtype,Prixdemiheure,COUNT(numembarcation) AS "nb emb"
FROM EMBARCATION E, TYPEMBARCATION T
WHERE E.Codetype = T.Codetype
AND disponible = TRUE
AND Nbplace <= 2
GROUP BY Nomtype,Prixdemiheure;

SELECT Nomtype,Nbplace,COUNT(numembarcation) AS "nb emb"
FROM EMBARCATION E, TYPEMBARCATION T
WHERE E.Codetype = T.Codetype
GROUP BY Nomtype,Nbplace
ORDER BY COUNT(numembarcation) ASC;

SELECT MIN(Prixheure) AS "Prix location - cher"
FROM Typembarcation;







