-- Creation de la table Auteurs
CREATE TABLE Auteurs (
    idAuteur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100),
    nationalite VARCHAR(50) NOT NULL,
    anneeNaissance INT
) ENGINE=InnoDB;

-- Creation de la table Livres
CREATE TABLE Livres (
    idLivre INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    idAuteur INT NOT NULL,
    anneePublication INT,
    genre VARCHAR(50) NOT NULL,
    disponible BOOLEAN NOT NULL DEFAULT TRUE,
    FOREIGN KEY (idAuteur) REFERENCES Auteurs(idAuteur)
) ENGINE=InnoDB;

-- Creation de la table Membres
CREATE TABLE Membres (
    idMembre INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100),
    dateInscription DATE NOT NULL,
    email VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

-- Creation de la table Emprunts
CREATE TABLE Emprunts (
    idEmprunt INT AUTO_INCREMENT PRIMARY KEY,
    idLivre INT NOT NULL,
    idMembre INT NOT NULL,
    dateEmprunt DATE NOT NULL,
    dateRetourPrevu DATE NOT NULL,
    dateRetourReel DATE,
    FOREIGN KEY (idLivre) REFERENCES Livres(idLivre),
    FOREIGN KEY (idMembre) REFERENCES Membres(idMembre)
) ENGINE=InnoDB;
