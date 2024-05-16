ALTER TABLE Louer
DROP CONSTRAINT FK_Emb_Loc;
ALTER TABLE Louer
DROP CONSTRAINT FK_Loc_Lou;
ALTER TABLE Embarcation
ADD CONSTRAINT FK_Emb_Typ FOREIGN KEY (Codetype) REFERENCES Typembarcation (Codetype);
ALTER TABLE Louer
ADD CONSTRAINT FK_Lou_Emb FOREIGN KEY (Numembarcation) REFERENCES Embarcation (Numembarcation);
ALTER TABLE Louer
ADD CONSTRAINT FK_Lou_Loc FOREIGN KEY (Numlocation) REFERENCES Location (Numlocation);
