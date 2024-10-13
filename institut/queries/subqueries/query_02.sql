USE institut;

SELECT e.nia, p.nom, p.cognoms, c.id_modul, c.nota
FROM estudiant e
INNER JOIN persona p ON e.dni = p.dni
INNER JOIN cursa c ON e.nia = c.nia
WHERE c.nota > 8
  AND c.curs_academic = "23/24"
  AND e.nia IN (
    SELECT nia
    FROM cursa
    WHERE nota > 8
      AND curs_academic = "22/23"
  );
