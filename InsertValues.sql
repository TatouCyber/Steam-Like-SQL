INSERT INTO Utilisateur VALUES
(1, 'alice', 'mdp1', 'France'),
(2, 'bob', 'mdp2', 'Vietnam');

INSERT INTO Jeu VALUES
(1, 'Elden Ring', 59.99),
(2, 'Hades', 24.99);

INSERT INTO Studio VALUES
('FromSoftware'),
('Supergiant Games');

INSERT INTO Genre VALUES
('RPG'),
('Rogue-like');

INSERT INTO RoleJeu VALUES
('Developpeur'),
('Editeur');

INSERT INTO SessionJeu VALUES
(1, 1, 1, '2026-03-18 10:00:00', '2026-03-18 12:00:00'),
(2, 2, 2, '2026-03-18 14:00:00', '2026-03-18 15:30:00');

INSERT INTO Biblio VALUES
(1, 1, 'possede', '2026-03-10',4,'Jai beaucoup aimé'),
(2, 2, 'wishlist', '2026-03-12',,);

INSERT INTO Creation VALUES
(1, 'FromSoftware', 'Developpeur', 1),
(2, 'Supergiant Games', 'Developpeur', 2);

INSERT INTO Appartient VALUES
(1, 'RPG'),
(2, 'Rogue-like');