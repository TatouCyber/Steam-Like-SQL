CREATE TABLE Utilisateur (
    idUsr INT PRIMARY KEY,
    Pseudo VARCHAR(50),
    Mdp VARCHAR(100),
    Nationalite VARCHAR(50)
);

CREATE TABLE Jeu (
    idJeu INT PRIMARY KEY,
    Nom VARCHAR(100),
    Prix FLOAT
);

CREATE TABLE Studio (
    NomStudio VARCHAR(100) PRIMARY KEY
);

CREATE TABLE Genre (
    NomGenre VARCHAR(100) PRIMARY KEY
);

CREATE TABLE Role (
    NomRole VARCHAR(100) PRIMARY KEY
);

CREATE TABLE Session (
    idSession INT PRIMARY KEY,
    idUsr INT,
    idJeu INT,
    DateDebut DATETIME,
    DateFin DATETIME,
    FOREIGN KEY (idUsr) REFERENCES Utilisateur(idUsr),
    FOREIGN KEY (idJeu) REFERENCES Jeu(idJeu)
);

CREATE TABLE Biblio (
    idUsr INT,
    idJeu INT,
    Statut VARCHAR(20),
    DateAjout DATE,
    Note FLOAT,
    Messag VARCHAR(300),
    PRIMARY KEY (idUsr, idJeu),
    FOREIGN KEY (idUsr) REFERENCES Utilisateur(idUsr),
    FOREIGN KEY (idJeu) REFERENCES Jeu(idJeu)
);

CREATE TABLE Creation (
    idCreation INT PRIMARY KEY,
    NomStudio VARCHAR(100),
    NomRole VARCHAR(100),
    idJeu INT,
    FOREIGN KEY (NomStudio) REFERENCES Studio(NomStudio),
    FOREIGN KEY (NomRole) REFERENCES Role(NomRole),
    FOREIGN KEY (idJeu) REFERENCES Jeu(idJeu)
);

CREATE TABLE Appartient (
    idJeu INT,
    NomGenre VARCHAR(100),
    PRIMARY KEY (idJeu, NomGenre),
    FOREIGN KEY (idJeu) REFERENCES Jeu(idJeu),
    FOREIGN KEY (NomGenre) REFERENCES Genre(NomGenre)
);
