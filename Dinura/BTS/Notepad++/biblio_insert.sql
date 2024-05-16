-- Insertion dans la table Auteurs
INSERT INTO Auteurs (nom, prenom, nationalite, anneeNaissance) VALUES
('Rowling', 'J.K.', 'Britannique', 1965),
('Tolkien', 'J.R.R.', 'Britannique', 1892),
('Hugo', 'Victor', 'Français', 1802);

-- Insertion dans la table Livres
INSERT INTO Livres (titre, idAuteur, anneePublication, genre, disponible) VALUES
('Harry Potter à l\'école des sorciers', 1, 1997, 'Fantaisie', TRUE),
('Le Seigneur des anneaux', 2, 1954, 'Fantaisie', TRUE),
('Les Misérables', 3, 1862, 'Roman', TRUE);

-- Insertion dans la table Membres
INSERT INTO Membres (nom, prenom, dateInscription, email) VALUES
('Doe', 'John', '2020-01-10', 'john.doe@example.com'),
('Smith', 'Jane', '2020-02-20', 'jane.smith@example.com');

-- Insertion dans la table Emprunts
-- Note : Assurez-vous que les dates d emprunt et de retour prevu sont logiques par rapport à la date courante
INSERT INTO Emprunts (idLivre, idMembre, dateEmprunt, dateRetourPrevu) VALUES
(1, 1, '2023-03-01', '2023-03-15'),
(2, 2, '2023-03-05', '2023-03-19');
