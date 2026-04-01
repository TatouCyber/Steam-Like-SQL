SELECT DISTINCT J.Nom
FROM Jeu J, Appartient A1, Appartient A2
WHERE J.idJeu = A1.idJeu
AND J.idJeu = A2.idJeu
AND A1.NomGenre = 'RPG'
AND A2.NomGenre = 'Rogue-like';
/*
SELECT DISTINCT J.Nom
FROM Jeu J, Appartient A, Biblio B
WHERE J.idJeu = A.idJeu
AND A.idJeu = B.idJeu
AND A.NomGenre = 'RPG'
AND B.DateAjout = '2026-03-10'
AND B.Statut = 'possede';

WITH R1 AS (
    SELECT S.NomStudio, R.NomRole
    FROM Studio S, Role R
),
R2 as(
    SELECT C.NomStudio, C.NomRole
    FROM Creation C
),
S2 AS (
    SELECT R1.NomStudio, R1.NomRole
    FROM R1
    WHERE (R1.NomStudio, R1.NomRole) NOT IN (
        SELECT NomStudio, NomRole FROM R2
    )
)

SELECT S.NomStudio
FROM Studio S
WHERE S.NomStudio NOT IN (
    SELECT NomStudio FROM S2
);

SELECT COUNT(*) AS nb_jeux
FROM Jeu J, Appartient A
WHERE J.idJeu = A.idJeu
AND A.NomGenre = 'strategie'
AND J.Prix < 30;

SELECT C.NomStudio, MAX(J.Prix) AS max_prix
FROM Creation C, Jeu J
WHERE C.idJeu = J.idJeu
AND C.NomRole = 'Developpeur'
GROUP BY C.NomStudio;