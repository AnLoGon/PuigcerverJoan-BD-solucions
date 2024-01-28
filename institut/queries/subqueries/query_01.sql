use institut;

SELECT dni, nia
FROM estudiant
WHERE nia IN (
    SELECT nia
    FROM cursa
    WHERE id_modul = "0487" AND nota >= 5
);
