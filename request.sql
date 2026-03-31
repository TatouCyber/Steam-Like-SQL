SELECT DISTINCT U.Pseudo
FROM Utilisateur U, Biblio B1, Biblio B2, Appartient A1, Appartient A2
WHERE U.idUsr = B1.idUsr
AND U.idUsr = B2.idUsr
AND B1.idJeu = A1.idJeu
AND B2.idJeu = A2.idJeu
AND A1.NomGenre = 'RPG'
AND A2.NomGenre = 'Rogue-like';



SELECT DISTINCT U.Pseudo
FROM Utilisateur U, Biblio B, Appartient A
WHERE U.idUsr = B.idUsr
AND B.idJeu = A.idJeu
AND A.NomGenre = 'RPG'
AND B.DateAjout = '2026-03-10'
AND B.Statut = 'possede';

 
SELECT S.NomStudio
FROM Studio S
WHERE NOT EXISTS (
    SELECT *
    FROM Role R
    WHERE NOT EXISTS (
        SELECT *
        FROM Creation C
        WHERE C.NomStudio = S.NomStudio
        AND C.NomRole = R.NomRole
    )
);



SELECT COUNT(*)
FROM Biblio B, Appartient A
WHERE B.idJeu = A.idJeu
AND A.NomGenre = 'RPG';


SELECT C.NomStudio, MAX(J.Prix) AS PrixMax
FROM Creation C, Jeu J
WHERE C.idJeu = J.idJeu
AND C.NomRole = 'Developpeur'
GROUP BY C.NomStudio;